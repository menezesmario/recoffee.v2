const express = require("express")

const app = express();

const connect = require("./database/connect")

app.get("/", (req, res) => {
    connect.query("SELECT * FROM cafes", (error, result) => {
        res.json(result)
    });
});

app.listen(3333)