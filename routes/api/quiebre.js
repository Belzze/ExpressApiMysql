var express = require('express');
var router = express.Router();
//obtener quiebre
router.get('/',function( req, res, next){
    res.json({"mng":"ok"});
});//get//

router.post('/new', function( req,res,next){
    var _thingsData = req.body;
    console.log(_thingsData);
    res.json({"mng":"ok"});
    
});

module.exports = router;