const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    name: { type: String, required: true },
    username: { type: String, default: null },
    email: { type: String, default: null, required: true },
    phone: { type: Number, required: true },
    aadhar_number: { type: Number, default: null },
    verified: { type: Boolean, default: false },
    logged_in: { type: Boolean, default: false },
    type: { type: String, required: true },
    password: { type: String, default: null, required: true },
    salt: { type: String, default: null },
    accept_terms: { type: Boolean, default: false },
    created_at: { type: Date, default: Date.now },
    updated_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model("User", userSchema);
