const db = require('../config/database')
const bcryptjs  = require('bcryptjs')


const create = (req_input) =>{
    db.query('INSERT INTO tbl_user SET ?', 
        {username:req_input.username,password:req_input.password,fullname:req_input.fullname,sex:req_input.sex},
        (err, res) => { 
            if(!err){
                return true
            }else{
                return  false
            }
        }
    );
}

module.exports = {
    create
}