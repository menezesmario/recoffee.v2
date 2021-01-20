const express = require("express");
const app = express();

app.get("/", function(req, res){
    res.send("Servidor ok")
})

app.get("/html", function(req, res){
    res.sendFile(__dirname)
})

app.listen(8080, function(){
    console.log("Servidor Rodando na url http://localhost:8080")
});