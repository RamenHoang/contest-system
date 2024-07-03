const { sequelize } = require("../config/db");
const User = require("./User");
const ExamBanking = require("./ExamBanking");
const QuestionBanking = require("./QuestionBanking");
const AnswerBanking = require("./AnswerBanking");
const SyncDatabase = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");

    await sequelize.sync({ force: true });
    console.log("Database synchronized");
  } catch (error) {
    console.error("Error synchronizing database", error);
  } finally {
    await sequelize.close();
  }
};

module.exports = SyncDatabase;
