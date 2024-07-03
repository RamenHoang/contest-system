const { sequelize } = require("../config/db");
const User = require("./User");
const Exam = require("./Exam");
const SyncDatabase = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");

    await sequelize.sync({ alter: true });
    console.log("Database synchronized");
  } catch (error) {
    console.error("Error synchronizing database", error);
  } finally {
    await sequelize.close();
  }
};

module.exports = SyncDatabase;
