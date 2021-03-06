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
                return res.status(500).jsonp({error:"Algo paso"});
            }
            res.status(200).jsonp(data);
        });
    }); //get//

    router.get('/departamento', function (req, res, next) {
        mysqlModel.getQuiebrePorDepartamento((err,data)=>{
            if(err){
                console.log(err);                
                return res.status(500).jsonp({error:"Algo paso"});
            }
            res.status(200).jsonp(data);
        });
    });

    router.get('/municipio', function (req, res, next) {
        mysqlModel.getQuiebrePorMunicipio((err,data)=>{
            if(err){
                console.log(err);                
                return res.status(500).jsonp({error:"Algo paso"});
            }
            res.status(200).jsonp(data);
        });
    });

//     return router;

// } // quiebre 

module.exports = router;