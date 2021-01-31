const express = require("express");
const app = express();
const handlebars = require('express-handlebars')
const bodyParser = require('body-parser')
const moment = require('moment');
const Post = require('./models/Post');
const Cafe = require("./models/Cafe");
const User = require("./models/User");
const Acessorios = require("./models/Acessorios");

// app.use(express.json());

//const { resourceUsage } = require("process");
//const { where } = require("sequelize/types");

//Config
    //Template Engine
app.engine('handlebars', handlebars({
    defaultLayout: 'main',
    helpers: {
        formatDate: (date) => {
            return moment(date).format(("DD/MM/YYYY > hh:mm:ss"))
        }
    }
}))
app.set('view engine', 'handlebars')

//Body Parser
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

//Rotas

// app.get("/", (req, res) => {
//     Cafe.findAll({order: [['id', 'DESC']]}).then(function(cafes){
//         res.json('cafes', {cafes:cafes})
//     })   
// });

// const connect = require("./database/connect")

app.get('/', function(req, res){
    res.render('form_cafe')
})

app.get('/cafes', function(req, res){
    Cafe.findAll({order: [['id', 'DESC']]}).then(function(cafes){
        res.render('cafes', {cafes:cafes})
    })   
})

app.get('/acessorios', function(req, res){
    Cafe.findAll({order: [['id', 'DESC']]}).then(function(acessorios){
        res.render('acessorios', {acessorios: acessorios})
    })   
})

app.get('/form_cafe', function(req, res){
    res.render('form_cafe')
})

app.get('/form_acessorios', function(req, res){
    res.render('form_acessorios')
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
        res.redirect("/cafes")
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

app.get('/del_cafe/:id', function(req, res) {
    Cafe.destroy({where: {'id': req.params.id}}).then(function(){
        res.send("Ítem excluído com sucesso")
    }).catch(function(erro){
        res.send("Erro ao excluir ítem")
    })
})

app.get('/del_acessorio/:id', function(req, res) {
    Acessorios.destroy({where: {'id': req.params.id}}).then(function(){
        res.send("Ítem excluído com sucesso")
    }).catch(function(erro){
        res.send("Erro ao excluir ítem")
    })
})

app.listen(8080, function(){
    console.log("Servidor Rodando na url http://localhost:8080");
})