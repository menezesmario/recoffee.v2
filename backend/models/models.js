const Sequelize = require('sequelize');
const sequelize = new Sequelize('recoffee', 'marioone', '123456', {
    host: "localhost",
    dialect: 'mysql'
})

const Post = sequelize.define('posts', {
    title: {
        type: Sequelize.STRING
    },
    subtitle: {
        type: Sequelize.TEXT
    },
    content: {
        type: Sequelize.TEXT
    }

})



const User = sequelize.define('users', {
    name: {
        type: Sequelize.STRING
    },
    email: {
        type: Sequelize.STRING
    },
    password: {
        type: Sequelize.STRING
    }
})

User.create({
    name: "Mário",
    email: "mario082@gmail.com",
    password: "123456"
})

//User.sync({force: true})