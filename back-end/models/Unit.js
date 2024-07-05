const { DataTypes, Model } = require("sequelize");
const { sequelize } = require("../config/db");
const Competitions = require("./Competitions");

class Unit extends Model {}

Unit.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING(100),
      allowNull: false,
    },
    competitionId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Competitions,
        key: "id",
      },
    },
    isDeleted: {
      type: DataTypes.BOOLEAN,
      defaultValue: false,
    },
  },
  {
    sequelize,
    modelName: "Unit",
    timestamps: true,
  }
);

module.exports = Unit;
