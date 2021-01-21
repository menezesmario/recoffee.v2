const express = require("express");
const app = express();
const handlebars = require('express-handlebars')
const bodyParser = require('body-parser')
const Sequelize = require('sequelize');

//Config
    //Template Engine
app.engine('handlebars', handlebars({defaultLayout: 'main'}))
app.set('view engine', 'handlebars')

//Body Parser
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

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
    res.send("Nome: "+req.body.nome+" Descrição: "+req.body.descricao)
})


app.listen(8080, function(){
    console.log("Servidor Rodando na url http://localhost:8080");
})