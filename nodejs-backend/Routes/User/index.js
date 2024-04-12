const express = require('express');
const router = express.Router()

const userController = require("../../Contoller/User");

router.post("/user-sign-up", userController.sign_up);

router.post("/user-sign-in", userController.sign_in);

module.exports = router;