const express = require("express");
const app = express();
const handlebars = require('express-handlebars')
const Sequelize = require('sequelize');

//Config
    //Template Engine
app.engine('handlebars', handlebars({defaultLayout: 'main'}))
app.set('view engine', 'handlebars')

//Conexão com MYSQL    
const sequelize = new Sequelize('recoffee', 'marioone', '123456', {
host: "localhost",
dialect: 'mysql'
})

//Rotas
app.get('/cad', function(req, res){
    res.render('form')
})

app.post('/add_prod', function(req, res){
    res.send("FORMULÁRIO RECEBIDO")
})


app.listen(8080, function(){
    console.log("Servidor Rodando na url http://localhost:8080");
})