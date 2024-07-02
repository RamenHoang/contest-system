const ApiResponse = (
  data,
  totalRecord = 0,
  statusCode = 200,
  message = "Successfully"
) => {
  return {
    message,
    data,
    statusCode,
    totalRecord,
  };
};

module.exports = ApiResponse;
