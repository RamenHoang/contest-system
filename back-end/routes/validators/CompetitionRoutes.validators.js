const { body } = require("express-validator");
const moment = require("moment");

const createCompetitionValidation = [
  body("name").notEmpty().withMessage("Name is required"),

  body("timeStart").custom((value) => {
    if (!moment(value, "YYYY-MM-DD HH:mm:ss", true).isValid()) {
      throw new Error("Invalid timeStart");
    }
    if (moment(value).isBefore(moment())) {
      throw new Error("timeStart must be greater than now");
    }
    return true;
  }),

  body("timeEnd").custom((value, { req }) => {
    if (!moment(value, "YYYY-MM-DD HH:mm:ss", true).isValid()) {
      throw new Error("Invalid timeEnd");
    }
    if (moment(value).isBefore(moment(req.body.timeStart))) {
      throw new Error("timeEnd must be greater than timeStart");
    }
    return true;
  }),
];

module.exports = {
  createCompetitionValidation,
};
