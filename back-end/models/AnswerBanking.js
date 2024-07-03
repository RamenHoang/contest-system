const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/db");
const QuestionBanking = require("./QuestionBanking");

const AnswerBanking = sequelize.define(
  "AnswerBanking",
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    answer: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    isCorrect: {
      type: DataTypes.BOOLEAN,
      defaultValue: false,
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

AnswerBanking.belongsTo(QuestionBanking, {
  foreignKey: "idQuestionBanking",
  onDelete: "CASCADE",
});

module.exports = AnswerBanking;
