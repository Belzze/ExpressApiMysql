const mysql = require('mysql');

connection = mysql.createConnection({
    host: 'localhost',
    user:   'root',
    password: 'monaco20',
    database: 'rveloz'
});

let userModel = {};

userModel.getUser = (callback) =>{
    if(connection){
        connection.query(
            'SELECT outStockPorHoraNombreSucursal as Sucursal, TRUNCATE((sum(outStockPorHoraHoraSinStock) / sum(outStockPorHoraHorasDispobibles))*100,2) AS Quiebre FROM rveloz.outStockPorHora where outStockPorHoraNombreSucursal != "DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V."group by outStockPorHoraNombreSucursal',
            (err,rows) => {
                if(err){
                    throw err;
                }else{
                    callback(null, rows);
                }
            }
        )
    }
};

module.exports = userModel;