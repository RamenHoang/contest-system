const { body, param } = require("express-validator");

const createExamValidation = [
  body("title").notEmpty().withMessage("Title is required.").trim(),

  body("totalMCQuestion")
    .isInt({ min: 0 })
    .withMessage("TotalMCQuestion must be a non-negative integer.")
    .toInt(),

  body("totalEssayQuestion")
    .isInt({ min: 0 })
    .withMessage("TotalEssayQuestion must be a non-negative integer.")
    .toInt(),

  body("questions")
    .isArray({ min: 1 })
    .withMessage("Questions must be an array with at least one question.")
    .custom((questions) => {
      questions.forEach((question, index) => {
        if (!question.title || typeof question.title !== "string") {
          throw new Error(
            `Question at index ${index} must have a valid title.`
          );
        }
        if (!["MC", "ESSAY"].includes(question.type)) {
          throw new Error(`Question at index ${index} must have a valid type.`);
        }
        if (!Array.isArray(question.answers) || question.answers.length === 0) {
          throw new Error(
            `Question at index ${index} must have at least one answer.`
          );
        }
        question.answers.forEach((answer, answerIndex) => {
          if (!answer.answerText || typeof answer.answerText !== "string") {
            throw new Error(
              `Answer at index ${answerIndex} of question ${index} must have a valid answerText.`
            );
          }
          if (typeof answer.isCorrect !== "boolean") {
            throw new Error(
              `Answer at index ${answerIndex} of question ${index} must have a valid isCorrect.`
            );
          }
        });
      });
      return true;
    }),
];

const detailExamValidation = [
  param("id").isInt({ min: 0 }).withMessage("Id must be a positive integer."),
];

module.exports = { createExamValidation, detailExamValidation };
