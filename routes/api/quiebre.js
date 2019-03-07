var express = require('express');
var router = express.Router();
//obtener quiebre
//replica set
//sharring 
//function quiebreInit(db) {

    var mysqlModel = require('../../model/mysqlModel');

    // router.get('/', function (req, res, next) {
    //     res.json({
    //         "mng": "ok"
    //     });
    // }); //get//

    router.get('/', function (req, res, next) {
        mysqlModel.getQuiebre((err,data)=>{
            if(err){
                console.log(err);                
                return res.status(500).json({error:"Algo paso"});
            }
            res.status(200).json(data);
        });
    }); //get//

    router.post('/new', function (req, res, next) {
        var _thingsData = req.body;
        console.log(_thingsData);
        res.json({
            "mng": "ok"
        });

    });

//     return router;

// } // quiebre 

module.exports = router;