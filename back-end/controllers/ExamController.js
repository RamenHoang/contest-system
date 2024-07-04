const { StatusCodes } = require("http-status-codes");
const { Op } = require("sequelize");
const fs = require("fs");
const mammoth = require("mammoth");

const ExamBanking = require("../models/ExamBanking");
const QuestionBanking = require("../models/QuestionBanking");
const AnswerBanking = require("../models/AnswerBanking");
const ApiError = require("../controllers/error/ApiError");
const ApiResponse = require("../controllers/response/ApiResponse");
const { sequelize } = require("../config/db");

const createExam = async (req, res) => {
  const transaction = await sequelize.transaction(); // Start a transaction

  try {
    const { title, totalMCQuestion, totalEssayQuestion, questions } = req.body;

    // Create exam
    const exam = await ExamBanking.create(
      {
        idUser: req.user.id,
        title,
        total_mc_questions: totalMCQuestion,
        total_essay_questions: totalEssayQuestion,
      },
      { transaction }
    );

    const questionBankingData = []; //save question data to db
    const answerBankingData = []; //save answer data to db
    const answerBanking = [];

    // Prepare data for bulk create of questions
    questions.forEach((question) => {
      const { title, lengthLimit = null, type, answers } = question;
      questionBankingData.push({
        idExamBanking: exam.id,
        title,
        lengthLimit,
        type,
        createdAt: new Date(),
        updatedAt: new Date(),
      });

      // Prepare data for bulk create of answers
      const answerTemp = [];
      answers.forEach((answer) => {
        const { answerText, isCorrect } = answer;
        answerTemp.push({
          idQuestionBanking: null, // Placeholder for the actual ID during creation
          answer: answerText,
          isCorrect,
          createdAt: new Date(),
          updatedAt: new Date(),
        });
      });
      answerBanking.push(answerTemp);
    });

    // Bulk create questions
    const createdQuestions = await QuestionBanking.bulkCreate(
      questionBankingData,
      { transaction }
    );

    // Assign question IDs to answers and bulk create answers
    createdQuestions.forEach((question, index) => {
      answerBanking[index].map((answer) => {
        answer.idQuestionBanking = question.id;
        answerBankingData.push(answer);
      });
    });
    await AnswerBanking.bulkCreate(answerBankingData, { transaction });

    // Commit the transaction if all operations are successful
    await transaction.commit();

    res
      .status(StatusCodes.CREATED)
      .json(
        ApiResponse(
          exam.id,
          1,
          StatusCodes.CREATED,
          "Exam created successfully."
        )
      );
  } catch (error) {
    console.error("Error:", error);
    // Rollback the transaction if there's any error
    await transaction.rollback();
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

const importExamFromDocx = async (req, res) => {
  try {
    const acceptedExtensions = ["doc", "docx"];
    //get extension of file
    const fileExtension = req.file.originalname.split(".").pop();
    //check if file extension is valid
    if (!acceptedExtensions.includes(fileExtension)) {
      throw new ApiError(
        ApiResponse(false, 0, StatusCodes.BAD_REQUEST, "Invalid file format.")
      );
    }

    let content = "";
    const pTagRegex = /<p(.*?)>(.*?)<\/p>/g;
    let isCorrectRegex = /font-weight:\s?bold/;

    if (fileExtension === "docx") {
      const result = await mammoth.convertToHtml({ path: req.file.path });
      content = result.value;
      isCorrectRegex = /<strong>(.*?)<\/strong>/g;
    } else if (fileExtension === "doc") {
      content = fs.readFileSync(req.file.path, "utf-8");
    }

    const questions = content.match(/<h3>(.*?)<\/h3>([\s\S]*?)(?=<h3>|$)/g);
    const examData = [];

    if (questions) {
      questions.forEach((questionHtml) => {
        const questionMatch = questionHtml.match(/<h3>(.*?)<\/h3>/);
        const title = questionMatch ? questionMatch[1] : "";

        const answers = [];
        let match;

        while ((match = pTagRegex.exec(questionHtml)) !== null) {
          const [, styleAttribute, text] = match;

          //when file docx
          if (fileExtension === "docx") {
            let isCorrect = new RegExp(isCorrectRegex).test(text);
            let answerText = text.replace(/<strong>|<\/strong>/g, "");
            answers.push({ answerText, isCorrect });
          } else if (fileExtension === "doc") {
            let answerText = text.trim();
            let isCorrect = isCorrectRegex.test(styleAttribute);
            answers.push({ answerText, isCorrect });
          }
        }
        examData.push({ title, type: "MC", answers });
      });
    }

    // Remove the file after reading
    fs.unlink(req.file.path, () => {});

    res.status(StatusCodes.OK).json(ApiResponse(examData, examData.length));
  } catch (error) {
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

module.exports = {
  getExamsByCurrentUser,
  createExam,
  getExamById,
  importExamFromDocx,
};
