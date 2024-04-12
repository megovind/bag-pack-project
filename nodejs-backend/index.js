const express = require('express');
const app = express();
const mongoose = require('mongoose')
const morgan = require('morgan');
const passport = require('passport')
const bodyParser = require('body-parser');
const dotenv = require('dotenv');

//user routes
const userRoute = require("./Routes/User");

//products routes
const productRoute = require("./Routes/Products")

dotenv.config();
mongoose.Promise = global.Promise;

const options = {
    useNewUrlParser: true,
    useUnifiedTopology: true
}

mongoose.connect(process.env.DB_URL, options).catch(error => {
    console.log('MongoDB connection rejected', error);
})

app.use(morgan('dev'));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(passport.initialize());

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header(
        "Access-Control-Allow-Headers",
        "Origin, X-Requested-With, Content-Type, Accept,  Authorization"
    );
    if (req.method === "OPTIONS") {
        res.header("Access-Control-Allow-Methods", "PUT, POST, PATCH, DELETE, GET");
        return res.status(200).json({});
    }
    next();
})

// routes which should handle requests
app.get("/", (req, res) => {
    res.sendFile("/index.html", { root: __dirname });
});

app.use("/user", userRoute)

app.use("/products", productRoute)


app.use((req, res, next) => {
    const error = new Error("API Not Found");
    error.status = 404;
    next(error);
})

app.use((error, req, res, next) => {
    res.status(error.status || 500);
    res.json({ error: { message: error.message } })
})

module.exports = app;