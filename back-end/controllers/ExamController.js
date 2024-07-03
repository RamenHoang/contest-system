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
    //create exam
    const exam = await ExamBanking.create({
      idUser: req.user.id,
      title,
      total_mc_questions: totalMCQuestion,
      total_essay_questions: totalEssayQuestion,
    });
    await exam.save();

    //create questions and answers
    const answerBankings = [];
    for (const question of questions) {
      const { title, lengthLimit, type, answers } = question;
      console.log(title, lengthLimit, type, answers);

      const questionBanking = await QuestionBanking.create({
        idExamBanking: exam.id,
        title,
        lengthLimit,
        type,
      });
      await questionBanking.save();

      for (const answer of answers) {
        const { answerText, isCorrect } = answer;

        answerBankings.push(
          AnswerBanking.create({
            idQuestionBanking: questionBanking.id,
            answer: answerText,
            isCorrect,
          }).then((answerBanking) => answerBanking.save())
        );
      }
    }

    await Promise.all(answerBankings);

    res
      .status(StatusCodes.CREATED)
      .json(
        ApiResponse(true, 1, StatusCodes.CREATED, "Create exam successfully.")
      );
  } catch (error) {
    console.log("Error:" + error);
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

const getExamsByCurrentUser = async (req, res) => {
  try {
    const { pageIndex = 1, pageSize = 50, keyword } = req.query;

    //find exams by current user, keyword contains in title
    const exams = await ExamBanking.findAll({
      where: {
        idUser: req.user.id,
        title: {
          [Op.like]: `%${keyword}%`,
        },
      },
      include: [
        {
          model: QuestionBanking,
          include: [AnswerBanking],
        },
      ],
      limit: pageSize,
      offset: (pageIndex - 1) * pageSize,
    });

    res
      .status(StatusCodes.OK)
      .json(ApiResponse(true, exams.length, StatusCodes.OK, exams));
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
};
