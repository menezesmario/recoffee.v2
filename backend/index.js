const express = require("express");
const app = express();
const handlebars = require('express-handlebars')
const bodyParser = require('body-parser')
const Post = require('./models/Post');
const Cafe = require("./models/Cafe");
const User = require("./models/User");
const { resourceUsage } = require("process");

//Config
    //Template Engine
app.engine('handlebars', handlebars({defaultLayout: 'main'}))
app.set('view engine', 'handlebars')

//Body Parser
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

//Rotas
app.get('/', function(req, res){
    Cafe.findAll().then(function(cafes){
        res.render('home', {cafes:cafes})
    })   
})

app.get('/form_cafe', function(req, res){
    res.render('form_cafe')
})

app.get('/form_post', function(req, res){
    res.render('form_post')
})

app.get('/form_user', function(req, res){
    res.render('form_user')
})



app.post('/add_post', function(req, res){
    Post.create({
        title: req.body.title,
        subtitle: req.body.subtitle,
        content: req.body.content
    }).then(function(){
        res.send("Post criado com sucesso!")
    }).catch(function(erro){
        res.send("Houve um erro ao postar " + erro)
    })
})

app.post('/add_cafe', function(req, res){
    Cafe.create({
        nome: req.body.nome,
        descricao: req.body.descricao,
        preco: req.body.preco
    }).then(function(){
        res.redirect("/")
    }).catch(function(erro){
        res.send("Houve um erro ao enviar o produto " + erro)
    })
})

app.post('/add_user', function(req, res){
    User.create({
        name: req.body.name,
        email: req.body.email,
        password: req.body.password
    }).then(function(){
        res.send("Usuário Cadastrado com sucesso")
    }).catch(function(erro){
        res.send("Erro ao cadastrar usuário! " + erro)
    })
})

app.listen(8080, function(){
    console.log("Servidor Rodando na url http://localhost:8080");
})