const db = require('./db')

const Acessorios = db.sequelize.define('acessorios', {
    nome: {
        type: db.Sequelize.STRING
    },
    descricao: {
        type: db.Sequelize.STRING
    },
    preco: {
        type: db.Sequelize.TEXT
    }

})

//Post.sync({force: true})

module.exports = Acessorios;