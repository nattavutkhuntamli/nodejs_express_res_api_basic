const mysql  = require('mysql')
const dotenv = require('dotenv').config()
const db = mysql.createConnection({
    host:process.env.DB_HOST,
    user:process.env.DB_USER,
    password:process.env.DB_PASSWORD,
    database:process.env.DB_DATABASE,
    charset:"utf8"
})

db.connect((err) => {
    if(err){
        console.error('error connecting: ' + err.stack);
        return;
    }
})

module.exports = db