const mongoose = require("mongoose");
const _ = require("lodash");

const Size = require("../../../Model/Products/Sizes")

exports.add_size = async (req, res) => {
    try {
        const size = new Size({
            _id: new mongoose.Types.ObjectId(),
            type: req.body.type,
            size_cm: req.body.sizeInCm,
            size_inches: req.body.sizeInInches,
            size_m: req.body.sizeInM
        })
        const response = await size.save();
        if (_.isEmpty(response)) {
            return res.send({ status: "ERROR", message: "Something went wrong" })
        }
        return res.send({ status: "SUCCESS", response })
    } catch (error) {
        return res.send({ status: "ERROR", message: error.message })
    }
}