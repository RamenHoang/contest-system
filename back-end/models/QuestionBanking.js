const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/db");
const ExamBanking = require("./ExamBanking");

const QuestionBanking = sequelize.define(
  "QuestionBanking",
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    lengthLimit: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    type: {
      type: DataTypes.ENUM("MC", "ESSAY"), // Multiple choice = MC or Essay = ESSAY
      allowNull: false,
    },
    isDeleted: {
      type: DataTypes.BOOLEAN,
      defaultValue: false,
    },
  },
  {
    timestamps: true,
  }
);

QuestionBanking.belongsTo(ExamBanking, {
  foreignKey: "idExamBanking",
  onDelete: "CASCADE",
});

module.exports = QuestionBanking;
