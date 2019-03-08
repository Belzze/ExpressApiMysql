var mysql = require('mysql');

var pool  = mysql.createPool({
  connectionLimit : 10,
  host  : 'sompopobi.mysql.database.azure.com',
  user  : 'rveloz@sompopobi',
  password  : 'DoNOzI',
  database  : 'rveloz',
  debug : false,
})

module.exports = pool;