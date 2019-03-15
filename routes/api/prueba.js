var express = require('express');
var router = express.Router();


var pruebaModel = require('../../model/pruebaModel');

router.get('/', function ( req, res, next) {
    pruebaModel.getPrueba( ( err, data ) => {
        if( err ) {
            console.log(err);
            return res.status(500).jsonp({error:"Algo paso"});
        }
        res.status(200).jsonp(data);
    });
});

module.exports = router;