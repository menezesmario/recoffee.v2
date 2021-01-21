const Sequelize = require('sequelize')

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