const express = require("express");
const router = express.Router();

const AuthMiddleware = require("../middlewares/AuthMiddleware");
const HandleBadRequest = require("../middlewares/HandleBadRequestMiddleware");
const CompetitionRoutesValidations = require("./validators/CompetitionRoutes.validators");
const CompetitionController = require("../controllers/CompetitionController");
const upload = require("../config/multer.config");

router.get("/list-info-required", CompetitionController.listInfoRequired);

router.post(
  "/create-competitions",
  AuthMiddleware,
  CompetitionRoutesValidations.createCompetitionValidation,
  HandleBadRequest,
  CompetitionController.createCompetition
);

router.post(
  "/upload-image",
  upload.single("file"),
  AuthMiddleware,
  HandleBadRequest,
  CompetitionController.uploadImage
);

router.post(
  "/set-up-exam/:id",
  AuthMiddleware,
  CompetitionController.chooseExamForCompetition
);

router.get("/list-competition", CompetitionController.getListCompetition);

module.exports = router;
