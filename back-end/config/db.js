const mysql = require("mysql2");
const { Sequelize } = require("sequelize");

const DBConnect = () => {
  const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Gp5k@bKpP72*",
    database: "quiz",
  });
  connection.connect(function (err) {
    if (err) throw err.message;
    console.log("Connected!");
  });
};

const sequelize = new Sequelize("quiz", "root", "Gp5k@bKpP72*", {
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
