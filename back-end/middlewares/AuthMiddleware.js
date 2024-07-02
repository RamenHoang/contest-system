const jwt = require("jsonwebtoken");
const AsyncHandler = require("express-async-handler");
const AuthError = require("../errors/AuthError");
const ApiResponse = require("../controllers/response/ApiResponse");

const Auth = AsyncHandler(async (request, response, next) => {
  let token;

  if (
    request.headers.authorization &&
    request.headers.authorization.startsWith("Bearer")
  ) {
    try {
      // extract token
      token = request.headers.authorization.split(" ")[1];

      // verify token
      jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
        if (err) {
          throw new ApiResponse(
            false,
            0,
            401,
            "User Not Authorized, JWT Token not valid"
          );
        }
        request.user = user;
      });
      next();
    } catch (e) {
      if (process.env.ENVIRONMENT === "development") {
        console.log(e);
      }
      throw new ApiResponse(
        false,
        0,
        401,
        "User Not Authorized, JWT Token not valid"
      );
    }
  }

  if (!token) {
    throw new ApiResponse(
      false,
      0,
      401,
      "User Not Authorized, JWT Token not valid"
    );
  }
});

module.exports = Auth;
