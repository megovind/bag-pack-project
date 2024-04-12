const mongoose = require("mongoose");

const sizesSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    type: { type: String, default: null },
    size_cm: { type: Number, default: 0 },
    size_inches: { type: Number, default: 0 },
    size_m: { type: Number, default: 0 }
});

module.exports = mongoose.model("Sizes", sizesSchema);
