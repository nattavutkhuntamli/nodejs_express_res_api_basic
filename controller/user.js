const register = (req, res) => {
    const { username , password,fullname,sex} = req.body
    // check request
    if(!(username && password && fullname && sex)) {
        return res.status(400).json({
            message:"All input is required"
        })
    }
    
    return res.json({
         message:'create succes',
         req_inpu : {
             username:username,
             password:password,
             fullname:fullname,
             sex:sex
         }
    }).status(200)
    // const Promise = new Promise((resolve,reject) => {
    //      let check = this.d(username,password,fullname,sex)
    //     setTimeout(() => {
    //         resolve(check)
    //     }, 3000);
    // }) 
}

module. exports = {
    register
}