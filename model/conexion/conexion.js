var mysql = require('mysql');
var pool = mysql.createPool({
        connectionLimit: 10,
        host: localhost,
        user: root,
        password: 'monaco20',
        database: 'rveloz'
    })
    // connection = mysql.createConnection({
    //   host: 'localhost',
    //   user: 'root',
    //   password: 'monaco20'
    // });


module.exports = pool;