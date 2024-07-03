const ApiResponse = require("../controllers/response/ApiResponse");
const { StatusCodes } = require("http-status-codes");

const ApiErrorMiddleware = (e, req, res, next) => {
  const statusCode = e.statusCode || StatusCodes.INTERNAL_SERVER_ERROR;
  const message = e.message || "Internal Server Error";
  const errorObject = e.data || null;

  console.log(e);
  return res
    .status(statusCode)
    .json(ApiResponse(errorObject, 0, statusCode, message));
};

module.exports = ApiErrorMiddleware;
