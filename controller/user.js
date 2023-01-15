const db = require('../config/database')

const register = async (req, res) => {

    const { username , password,fullname,sex} = req.body
    // check request
    if(!(username && password && fullname && sex)) {
        return res.status(400).json({
            message:"All input is required"
        })
    }

    const promise = new Promise((resolve,reject) => {
        let query = db.query('INSERT INTO tbl_user SET ?', 
          {username:username,password:password,fullname:fullname,sex:sex},
          ((err,res) => {
             if(!err){
                setTimeout(() => {
                    resolve(true)
                }, 3000);
             }else{
                setTimeout(() => {
                    reject(false)
                }, 3000);
             }
          })
        )
    }) 

    let result = await promise

    if(result == true){
        return res.json({
            message:"create success"
        }).status(201)
    }else{
        return res.json({
            message:"create false"
        }).status(500)
    }
    
}

module. exports = {
    register
}