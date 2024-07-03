const mysql = require("mysql2");
const { Sequelize } = require("sequelize");

const DBConnect = () => {
  const connection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.PORT,
  });
  connection.connect(function (err) {
    if (err) throw err.message;
    console.log("Connected!");
  });
};

const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.HOST,
    dialect: "mysql",
    port: process.env.DB_PORT,
    logging: console.log,
    pool: {
      max: 5,
      min: 0,
      acquire: 30000,
      idle: 10000,
    },
    dialectOptions: {
      connectTimeout: 60000, //time out
    },
  }
);

module.exports = { DBConnect, sequelize };
