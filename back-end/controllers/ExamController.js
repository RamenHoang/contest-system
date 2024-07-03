const { StatusCodes } = require("http-status-codes");

const ExamBanking = require("../models/ExamBanking");
const QuestionBanking = require("../models/QuestionBanking");
const AnswerBanking = require("../models/AnswerBanking");
const ApiError = require("../controllers/error/ApiError");
const ApiResponse = require("../controllers/response/ApiResponse");
const { Op } = require("sequelize");

const createExam = async (req, res) => {
  try {
    const { title, totalMCQuestion, totalEssayQuestion, questions } = req.body;

    // Create exam
    const exam = await ExamBanking.create({
      idUser: req.user.id,
      title,
      total_mc_questions: totalMCQuestion,
      total_essay_questions: totalEssayQuestion,
    });

    // Create questions and answers
    for (const question of questions) {
      const { title, lengthLimit, type, answers } = question;
      // Create question
      const questionBanking = await QuestionBanking.create({
        idExamBanking: exam.id,
        title,
        lengthLimit,
        type,
      });

      // Create answers
      for (const answer of answers) {
        const { answerText, isCorrect } = answer;

        await AnswerBanking.create({
          idQuestionBanking: questionBanking.id,
          answer: answerText,
          isCorrect,
        });
      }
    }

    res
      .status(StatusCodes.CREATED)
      .json(
        ApiResponse(true, 1, StatusCodes.CREATED, "Exam created successfully.")
      );
  } catch (error) {
    console.error("Error:", error);
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

const getExamsByCurrentUser = async (req, res) => {
  try {
    const { pageIndex = 1, pageSize = 50, keyword } = req.query;
    const pageIndexInt = parseInt(pageIndex, 10);
    const pageSizeInt = parseInt(pageSize, 10);
    //find exams by current user, keyword contains in title
    let whereClause = {
      idUser: req.user.id,
    };

    if (keyword && keyword.trim()) {
      whereClause.title = {
        [Op.like]: `%${keyword}%`,
      };
    }
    const exams = await ExamBanking.findAll({
      where: whereClause,
      attributes: [
        "id",
        "title",
        "total_mc_questions",
        "total_essay_questions",
        "createdAt",
      ],
      limit: pageSizeInt,
      offset: (pageIndexInt - 1) * pageSizeInt,
      order: [["createdAt", "DESC"]],
    });
    console.log(exams);

    res.status(StatusCodes.OK).json(ApiResponse(exams, exams.length));
  } catch (error) {
    console.log("Error:" + error);
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

const getExamById = async (req, res) => {
  try {
    const { id } = req.params;
    //find exam by id
    const idParams = parseInt(id, 10);
    const exam = await ExamBanking.findOne({
      where: {
        id: idParams,
      },
    });

    if (!exam) {
      throw new ApiError(
        ApiResponse(false, 0, StatusCodes.NOT_FOUND, "Exam not found.")
      );
    }

    const questions = await QuestionBanking.findAll({
      where: {
        idExamBanking: exam.id,
      },
      attributes: ["id", "title", "lengthLimit", "type", "createdAt"],
    });

    const questionsWithAnswers = await Promise.all(
      questions.map(async (question) => {
        const answers = await AnswerBanking.findAll({
          where: {
            idQuestionBanking: question.id,
          },
          attributes: ["id", "answer", "isCorrect", "createdAt"],
        });

        return {
          ...question.toJSON(),
          answers: answers.map((answer) => answer.toJSON()),
        };
      })
    );

    const responseData = {
      ...exam.toJSON(),
      questions: questionsWithAnswers,
    };

    res.status(StatusCodes.OK).json(ApiResponse(responseData));
  } catch (error) {
    console.log("Error:" + error);
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

module.exports = {
  getExamsByCurrentUser,
  createExam,
  getExamById,
};
