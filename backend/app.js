//MONGODB
// const express = require('express')
// const app = express()
// const mongoose = require('mongoose')

// //conexão db Mongo
// require('./src/db/connect')


// app.listen(3333)

//MYSQL

const express = require("express");
const app = express();

const cors = require("cors");

app.use(cors());
app.use(express.json());

const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    user: "marioone",
    password: "123456",
    database: "recoffee"
})

app.get()