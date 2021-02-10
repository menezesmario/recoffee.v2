// const mongoose = require('mongoose') 

// function connect(){
//     mongoose
//     .connect("mongodb+srv://mario:Goprohero5@cluster0.6dafq.mongodb.net/fullcommerce?retryWrites=true&w=majority", {
//         useNewUrlParser: true,
//         useCreateIndex: true,
//         useUnifiedTopology: true
//     })
//     .then(() => {
//         console.log("Conectado com o Banco 'Migration'");
//     })
//     .catch((error) => {
//         console.log(`Erro ao tentar a conexão com Banco Migration. Erro: ${error}`);
//     });
// }

// module.exports = connect()

//db.js

const mongoose = require('mongoose')

const url = `mongodb+srv://mario:Goprohero5@cluster0.6dafq.mongodb.net/fullcommerce?retryWrites=true&w=majority`;

const connectionParams={
    useNewUrlParser: true,
    useCreateIndex: true,
    useUnifiedTopology: true 
}
mongoose.connect(url,connectionParams)
    .then( () => {
        console.log('Connected to database ')
    })
    .catch( (err) => {
        console.error(`Error connecting to the database. \n${err}`);
    })

    // module.exports = connect()