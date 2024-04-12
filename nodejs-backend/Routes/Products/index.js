const passport = require("passport")
const express = require('express');
const router = express.Router()

const productController = require("../../Contoller/Products");

router.post(
    "/add-product",
    passport.authenticate("jwt", { session: false }),
    productController.add_product
);

module.exports = router;