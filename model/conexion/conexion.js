var mysql = require('mysql');
connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'monaco20'
});

module.exports = connection;