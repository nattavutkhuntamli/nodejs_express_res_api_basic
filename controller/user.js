const usermodel = require('../model/user')
const register = async (req, res) => {

    const { username , password,fullname,sex} = req.body
    // check request
    if(!(username && password && fullname && sex)) {
        return res.status(400).json({
            message:"All input is required"
        })
    }
    const promise = new Promise((resolve,reject) => {
       let check = usermodel.create(req.body)
        setTimeout(() => {
            resolve(check)
        }, 3000);
    }) 
    let result = await promise
    console.log(result);
    // if(result){
    //      return res.json({
    //         message:"create success"
    //      }).status(201)
    // }else{
    //     return res.json({
    //         message:"false create"
    //     }).status(500)
    // }
}

module. exports = {
    register
}