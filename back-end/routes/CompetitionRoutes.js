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

//#region Step 3
router.post(
  "/add-units/:id",
  AuthMiddleware,
  CompetitionController.addUnitsForCompetitions
);

router.get(
  "/get-units/:id",
  AuthMiddleware,
  CompetitionController.getUnitsOfCompetition
);

router.put(
  "/update-unit/:id",
  AuthMiddleware,
  CompetitionController.updateSubUnit
);

router.delete(
  "/delete-unit/:id",
  AuthMiddleware,
  CompetitionController.deleteSubUnit
);
//#endregion

//#region Step 4
router.get(
  "/get-info-organizer/:competitionId",
  AuthMiddleware,
  CompetitionController.getOrganizerByCompetition
);

router.post(
  "/info-organizer/:competitionId",
  AuthMiddleware,
  CompetitionRoutesValidations.infoOrganizerValidation,
  HandleBadRequest,
  CompetitionController.infoOrganizer
);
//#endregion

//#region step 5
router.get(
  "/publish-competition/:id",
  AuthMiddleware,
  CompetitionController.publishCompetition
);
//#endregion

module.exports = router;
