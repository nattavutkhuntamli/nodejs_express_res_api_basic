const router = require('express').Router()
const Usercontroller = require('../controller/user')

router.get('/', (req, res) => {
    res.json({
        message:"userall"
    })
})

router.post('', Usercontroller.register)


module.exports = router