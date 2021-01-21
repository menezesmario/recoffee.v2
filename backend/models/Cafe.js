const db = require('./db')

const Cafe = db.sequelize.define('cafes', {
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

module.exports = Cafe;