const mongoose = require("mongoose");
const _ = require("lodash")

const Product = require("../../Model/Products")

exports.add_product = async (req, res) => {
    try {
        const product = new Product({
            _id: new mongoose.Types.ObjectId(),
            user_id: req.body.userId,
            title: req.body.title,
            brand: req.body.brnad,
            sku_number: req.body.skuNumber,
            condition: req.body.condition,
            material: req.body.material,
            category: req.body.category,
            for: req.body.for,
            fitting: req.body.fitting,
            available_size: req.body.availableSize,
            type: req.body.type,
        })
        const response = await product.save();
        if (_.isEmpty(response)) {
            return res.send({ status: "ERROR", message: "Sometihng went wrong" });
        }
    } catch (error) {
        return res.send({ status: "ERROR", message: error.message })
    }
}