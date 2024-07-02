const { sequelize } = require("../config/db");
const User = require("./User");
const SyncDatabase = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");

    await sequelize.sync({ alter: true });
    console.log("Database synchronized");

    const newUser = await User.create({
      username: "john_doesss",
      password: "password1233",
      email: "john.doddde@example.com",
    });

    console.log("New user created:", newUser.toJSON());
  } catch (error) {
    console.error("Error synchronizing database", error);
  } finally {
    await sequelize.close();
  }
};

module.exports = SyncDatabase;
