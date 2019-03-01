const User = require('../model/user');

module.exports = function (app) {
    app.get('/quiebreepin',(req, res) =>{
        User.getUser((err, data) =>{
            res.status(200).json(data);
        });
        //res.json([]);
    });


    app.post('/quiebreepin', (req,res) =>{
        const userData = {
            id:null,
            username: req.body.username,
            password: req.body.password,
            email: req.body.email
        };
        User.insertUser(userData,(err,data)=>{
            if(data && data.insertId){
                res.json({
                    success:true,
                    mensaje:'Usuario insertado',
                    data:data
                })
            }else{
                res.status(500).json({
                    success:false,
                    mensaje:'error'
                })
            }
        })     
    });
}
/*
const express = require('express');
const router = express.Router();

router.get('/',(req, res) =>{
    res.json([]);
});

module.exports = router;
*/