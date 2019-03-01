const mysql = require('mysql');

connection = mysql.createConnection({
    host: '192.168.236.131',
    user:   'rvuser3',
    password: 'Monaco20!!',
    database: 'rveloz'
});

let userModel = {};

userModel.getUser = (callback) =>{
    if(connection){
        connection.query(
            'SELECT outStockPorHoraNombreSucursal as Sucursal, TRUNCATE((sum(outStockPorHoraHoraSinStock) / sum(outStockPorHoraHorasDispobibles))*100,2) AS Quiebre FROM rveloz.outstockporhora where outStockPorHoraNombreSucursal != "DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V."group by outStockPorHoraNombreSucursal',
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

userModel.insertUser = (userData, callback)=>{
    if(connection){
        connection.query(
            'INSERT INTO user SET ?',userData,
            (err, result) =>{
                if(err){
                    throw err;
                }else{
                    callback(null,{
                        'insertId': result.insertId
                    })
                }
            }
        )
    }
}
module.exports = userModel;