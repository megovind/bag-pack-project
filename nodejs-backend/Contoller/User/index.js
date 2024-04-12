const crypto = require('crypto')
const jwt = require("jsonwebtoken");
const mongoose = require('mongoose');
const _ = require('lodash')

const User = require('../../Model/User')

exports.sign_up = async (req, res) => {
    try {
        const passwordData = sha512(req.body.password, genRandomString(62))
        const exists = await User.findOne({ $and: [{ phone: req.body.phone }, { email: req.body.email }, { type: req.body.type }] }).exec();

        if (!_.isEmpty(exists)) {
            return res.send({ status: "EXISTS", message: "User already axists" });
        }
        const user = new User({
            _id: new mongoose.Types.ObjectId(),
            name: req.body.name,
            phone: req.body.phone,
            aadhar_number: req.body.aadhar,
            email: req.body.email,
            type: req.body.type,
            password: passwordData.passwordHash,
            salt: passwordData.salt
        });
        const respo = await user.save();
        const token = jwt.sign({ phone: user.phone, email: user.email, user_id: user._id }, process.env.SECRET_KEY)
        let response = JSON.parse(JSON.stringify(respo))
        response.access_token = token;
        return res.send({ status: "SUCCESS", message: "User registered successfull", response });
    } catch (error) {
        return res.send({ status: "ERROR", message: error.message });
    }
}


exports.sign_in = async (req, res) => {
    try {
        const user = await User.findOne({ $or: [{ phone: req.body.phone }, { email: req.body.email }] }).exec();
        if (_.isEmpty(user)) {
            return res.send({ status: "NOT_FOUND", message: "User not registered" })
        }
        const checkPassword = sha512(req.body.password, user.salt)

        if (!_.isEqual(checkPassword.passwordHash, user.password)) {
            return res.send({ status: "ERROR", message: "Please enter correct password" })
        }
        const access_token = jwt.sign({ phone: user.phone, email: user.email, user_id: user._id }, process.env.SECRET_KEY)
        return res.send({ status: "SUCCESS", response: { name: user.name, phone: user.phone, email: user.email, access_token: access_token } });
    } catch (error) {
        return res.send({ status: "ERROR", message: error.message });
    }
}

const genRandomString = (length) => {
    return crypto.randomBytes(Math.ceil(length / 2))
        .toString('hex') /** convert to hexadecimal format */
        .slice(0, length);   /** return required number of characters */
};


const sha512 = (password, salt) => {
    let hash = crypto.createHmac('sha512', salt); /** Hashing algorithm sha512 */
    hash.update(password);
    const value = hash.digest('hex');
    return {
        salt: salt,
        passwordHash: value
    };
};