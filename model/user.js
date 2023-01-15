const db = require('../config/database')

const create = (req_input) =>{
    const query = db.query('INSERT INTO tbl_user SET ?', 
        {username:req_input.username,password:req_input.password,fullname:req_input.fullname,sex:req_input.sex},
        (error, results) => {
            if(!error){
                console.log('success');
                return true
            }else{
                console.log('false');
                return false
            }
        }
    );
    
}

module.exports = {
    create
}