// const Sequelize = require('sequelize')

//Conexão com Mongo
// const mongoose = require('mongoose') 

// function connect() {
//     mongoose
//     .connect("mongodb://localhost/migration", {
//         userNewUrlParser: true, 
//         useUnifiedTopology: true})
//     .then(() => {
//         console.log("Conectado com o Banco 'Migration'")
//     }).catch((error) => {
//         console.log(`Erro ao tentar a conexão dom Banco Migration. Erro: ${error}`)
//     })
// }

// module.exports = connect()

//Conexão com MYSQL    
const sequelize = new Sequelize('recoffee', 'marioone', '123456', {
    host: "localhost",
    dialect: 'mysql'
    })

    sequelize.authenticate().then(function(){
        console.log("Conectado ao banco de dados com sucesso!")
      }).catch(function(erro){
          console.log("Falha ao conectar ao banco de dados: " +erro)
      })

    module.exports = {
        Sequelize: Sequelize,
        sequelize: sequelize
    }

