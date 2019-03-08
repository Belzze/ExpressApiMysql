// const connection = require('./conexion/conexion');

// connection.connect(function(err){
//     if(err){
//         console.error('error al conectarce: '+ err.stack);
//         return;
//     }

//     console.log('conectado con el id:' + connection.threadId);

// });
const pool = require('./conexion/conexion');

pool.getConnection(function(err) {
    if (err) {
        console.error('error al conectarce: ' + err.stack);
        return;
    }

    console.log('conectado con el id:' + connection.threadId);

});

let mysqlModel = {};

mysqlModel.getQuiebre = (handler) => {

    pool.getConnection.connection.query('select * from quiebresucursal',
        (err, rows) => {
            if (err) {
                handler(err, null);
            } else {
                handler(null, rows);
                // connection.end(function(err){
                //     console.log('se termino la coneccion');                    
                // })
            }
        }
    )
}

// function mysqlModel(){
//     let lib={};

//     lib.getQuiebre = (handler)=>{
//         connection.query(
//             'SELECT outStockPorHoraNombreSucursal as Sucursal, TRUNCATE((sum(outStockPorHoraHoraSinStock) / sum(outStockPorHoraHorasDispobibles))*100,2) AS Quiebre FROM rveloz.outstockporhora where outStockPorHoraNombreSucursal != "DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V."group by outStockPorHoraNombreSucursal',
//             (err,rows)=>{
//                 if(err){
//                     handler(err,null);
//                 }else{
//                     handler(null,rows);
//                 }
//             }
//         )

//     };//getQuiebre xD
//     return lib;
// }//mysql model
module.exports = mysqlModel;