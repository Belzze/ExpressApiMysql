const User = require('../model/user');

module.exports = function (app) {
    app.get('/',(req, res) =>{
        User.getUser((err, data) =>{
            res.status(200).json(data);
        });
        //res.json([]);
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