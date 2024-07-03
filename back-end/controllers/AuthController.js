const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const axios = require("axios");

const AsyncHandler = require("express-async-handler");
const { StatusCodes } = require("http-status-codes");

const Jwt = require("../config/jwt");
const User = require("../models/User");
const ApiError = require("./error/ApiError");
const ApiResponse = require("./response/ApiResponse");

const loginGoogle = AsyncHandler(async (req, res) => {
  const { token } = req.body;
  //auth o2 google
  if (!token) {
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.BAD_REQUEST, "Invalid token.")
    );
  }

  const userGoogle = await axios.get(
    "https://www.googleapis.com/oauth2/v3/userinfo",
    {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    }
  );

  const { email, name, picture } = userGoogle.data;
  let userExist = await User.findOne({
    email: email,
    isDeleted: false,
  });

  if (!userExist) {
    userExist = await User.create({
      email: email,
      username: name,
      avatar: picture,
      isDeleted: false,
    });
  }

  const accessToken = Jwt.generateAccessToken(userExist);
  const refreshToken = Jwt.generateRefreshToken(userExist);

  userExist.refreshToken = refreshToken;
  await userExist.save();

  const responseData = {
    id: userExist.id,
    email: userExist.email,
    username: userExist.username,
    accessToken: accessToken,
    avatar: userExist.avatar,
  };

  res.status(StatusCodes.OK).json(ApiResponse(responseData));
});

/**
 * @desc authenticate user (login)
 * @route GET /api/users/login
 * @access public
 */
const login = AsyncHandler(async (req, res) => {
  const { username, password } = req.body;

  // find user from database
  const user = await User.findOne({
    where: { username: username, isDeleted: false },
  });
  const authenticate = user && (await bcrypt.compare(password, user.password));

  if (!authenticate) {
    throw new ApiError(
      ApiResponse(
        { credentials: { username, password } },
        0,
        StatusCodes.UNAUTHORIZED,
        "Invalid credentials provided."
      )
    );
  }

  const responseData = {
    id: user.id,
    username: user.username,
    email: user.email,
    accessToken: Jwt.generateAccessToken(user),
    refreshToken: Jwt.generateRefreshToken(user),
    role: user.role,
  };

  res.status(StatusCodes.OK).json(ApiResponse(responseData));
});

/**
 * @desc get currently authenticated user (login)
 * @route GET /api/users/me
 * @access private
 */
const getCurrentUser = AsyncHandler(async (req, res) => {
  const responseData = req.user;

  res
    .status(StatusCodes.OK)
    .json(ApiResponse("Current user data.", { user: responseData }));
});

module.exports = {
  loginGoogle,
  login,
  getCurrentUser,
};
