const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/db");

const ExamBanking = sequelize.define(
  "ExamBanking",
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    idUser: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    description: {
      type: DataTypes.STRING,
    },
    total_mc_questions: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    total_essay_questions: {
      type: DataTypes.INTEGER,
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

module.exports = ExamBanking;
