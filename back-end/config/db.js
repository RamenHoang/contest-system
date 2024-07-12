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

const sequelize = new Sequelize("quiz", "root", "", {
  host: "localhost",
  dialect: "mysql",
  port: 3306,
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
});

module.exports = { DBConnect, sequelize };
