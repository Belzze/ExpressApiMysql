var express = require('express');
var router = express.Router();

var quiebreApi = require('./api/quiebre');


///ruta y el enturador
router.use('/quiebre', quiebreApi);


module.exports = router;