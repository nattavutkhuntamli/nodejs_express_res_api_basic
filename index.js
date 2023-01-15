const express = require('express')
const dotenv = require('dotenv')
const app = express()

const Usersrouter  = require('./router/user')
const Server = () => {

    dotenv.config( { path:"./.env"})
    app.set('x-powered-by', false)
    app.use(express.urlencoded({extended:true }))
    app.use(express.json())

    app.get('/', (req, res) => {
        return res.status(200).json({
            message:"Welcome to nodejs"
        })
    })
    app.use('/api/user',Usersrouter)
    
    const PORT = process.env.SERVER_PORT || 5050;
    try {
        app.listen(PORT , () => {
            console.log(`Start server is http://localhost:${PORT}`);
        })
    } catch (error) {
        console.log(`run server is false ${error.message}`);
    }

}

Server()