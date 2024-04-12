const mongoose = require("mongoose");

const productsSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    title: { type: String, required: true },
    brand: { type: String, default: null },
    sku_number: { type: String, default: null, required: true },
    condition: { type: String, required: true },
    material: { type: Boolean, default: false },
    category: { type: Boolean, default: false },
    for: { type: String, default: null },
    fitting: { type: String, default: null },
    available_size: [{ type: String, ref: "Sizes" }],
    type: { type: String, default: null },
    created_at: { type: Date, default: Date.now },
    updated_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model("Product", productsSchema);
