const express = require("express");
const multer = require("multer");
const router = express.Router();

const ExamController = require("../controllers/ExamController");
const ExamRoutesValidations = require("./validators/ExamRoutes.validators");
const HandleBadRequest = require("../middlewares/HandleBadRequestMiddleware");
const AuthMiddleware = require("../middlewares/AuthMiddleware");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "public/");
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + "-" + file.originalname);
  },
});

const upload = multer({ storage: storage });

router.get(
  "/get-exams-by-current-user",
  AuthMiddleware,
  ExamController.getExamsByCurrentUser
);

router.post(
  "/create-exam",
  AuthMiddleware,
  ExamRoutesValidations.createExamValidation,
  HandleBadRequest,
  ExamController.createExam
);

router.get(
  "/get-exam-detail/:id",
  AuthMiddleware,
  ExamRoutesValidations.detailExamValidation,
  HandleBadRequest,
  ExamController.getExamById
);

router.post(
  "/import-exam-from-docx",
  upload.single("docx"),
  ExamController.importExamFromDocx
);

module.exports = router;
