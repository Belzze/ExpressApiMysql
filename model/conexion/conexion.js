var mysql = require('mysql');

var pool  = mysql.createPool({
  connectionLimit : 10,
  host  : 'localhost',
  user  : 'root',
  password  : 'monaco20',
  database  : 'rveloz',
  debug : false,
})

module.exports = pool;
