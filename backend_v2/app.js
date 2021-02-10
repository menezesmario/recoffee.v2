const express = require('express')
const app = express()
const mongoose = require('mongoose')
//models
require('./src/models/User')
const User = mongoose.model('users')

//conexão db Mongo
require('./src/db/connect')

app.get('/users', async(req, res) => {
    const usersResponse = await User.find()
    const usersJson = await usersResponse

    return res.json(usersJson)
})


app.listen(4000)