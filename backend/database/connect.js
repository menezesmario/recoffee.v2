const mysql = require('mysql');
const connnect = mysql.createConnection({
    host: "localhost",
    user: "marioone",
    password: "123456",
    database: "recoffee"
})

module.exports = connnect