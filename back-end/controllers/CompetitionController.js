const { StatusCodes } = require("http-status-codes");
const { Op } = require("sequelize");

const Competitions = require("../models/Competitions");
const ApiError = require("../controllers/error/ApiError");
const ApiResponse = require("../controllers/response/ApiResponse");
const ExamsOfCompetition = require("../models/ExamsOfCompetition");

const uploadImage = async (req, res) => {
  const filePath = req.file.path;
  res.status(StatusCodes.OK).json(ApiResponse(filePath, 1));
};

const getListCompetition = async (req, res) => {
  try {
    const { pageIndex = 1, pageSize = 50, keyword = "" } = req.query;
    const currentTime = new Date();

    // Construct the where clause
    let whereClause = {
      timeStart: {
        [Op.lte]: currentTime,
      },
      timeEnd: {
        [Op.gte]: currentTime,
      },
      name: {
        [Op.like]: `%${keyword}%`,
      },
      isPublic: true,
    };

    // Calculate offset
    const offset = (+pageIndex - 1) * +pageSize;

    // Find competitions with pagination
    const { count, rows: competitions } = await Competitions.findAndCountAll({
      where: whereClause,
      attributes: [
        "id",
        "bannerUrl",
        "name",
        "timeStart",
        "unitGroupName",
        "timeEnd",
      ],
      order: [["timeStart", "ASC"]],
      limit: +pageSize,
      offset: offset,
    });

    // Respond with paginated data
    return res.status(StatusCodes.OK).json(ApiResponse(competitions, count));
  } catch (error) {
    console.error("Error fetching competitions:", error);
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

const createCompetition = async (req, res) => {
  try {
    const {
      bannerUrl,
      name,
      rules,
      password,
      themeColor,
      timeStart,
      timeEnd,
      infoRequire,
    } = req.body;

    const competition = await Competitions.create({
      bannerUrl,
      name,
      rules,
      password,
      themeColor,
      timeStart,
      timeEnd,
      infoRequire,
      creatorId: req.user.id,
    });

    await competition.save();

    res.status(StatusCodes.CREATED).json(ApiResponse(competition.id, 1));
  } catch (error) {
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

const listInfoRequired = (req, res) => {
  //create array object {id, label}
  const listInfo = [
    { id: 1, label: "Họ tên thí sinh" },
    { id: 2, label: "Email" },
    { id: 3, label: "Ngày sinh" },
    { id: 4, label: "Số điện thoại" },
    { id: 5, label: "CCCD/CMND" },
    { id: 6, label: "Nghề nghiệp" },
    { id: 7, label: "Giới tính" },
    { id: 8, label: "Lớp, MSSV,Nơi công tác" },
  ];

  res.status(StatusCodes.OK).json(ApiResponse(listInfo, listInfo.length));
};

const chooseExamForCompetition = async (req, res) => {
  try {
    const { id } = req.params;
    const { testDuration = 0, testAttempts = 0, examIds } = req.body;

    const competition = await Competitions.findByPk(id);
    if (!competition) {
      throw new ApiError(
        ApiResponse(false, 0, StatusCodes.NOT_FOUND, "Competition not found")
      );
    }
    //add test duration, test attempts to competition
    competition.testDuration = testDuration;
    competition.testAttempts = testAttempts;

    const examsCompetition = [];
    for (const examId of examIds) {
      const exam = {
        competitionId: id,
        examBankingId: +examId, //convert string to number
      };
      examsCompetition.push(exam);
    }

    //save changes competition and exams of competition
    await competition.save();
    const createdExams = await ExamsOfCompetition.bulkCreate(examsCompetition);
    const resData = createdExams.map((item) => item.id);
    res.status(StatusCodes.OK).json(ApiResponse(resData, 1));
  } catch (error) {
    throw new ApiError(
      ApiResponse(false, 0, StatusCodes.INTERNAL_SERVER_ERROR, error.message)
    );
  }
};

module.exports = {
  createCompetition,
  listInfoRequired,
  chooseExamForCompetition,
  uploadImage,
  getListCompetition,
};
