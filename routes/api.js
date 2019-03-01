var express = require('express');
var router = express.Router();

//function apiInit(db){

var quiebreApi = require('./api/quiebre');

///ruta y el enturador
router.use('/quiebre', quiebreApi);

// return router;
// }
module.exports = router;