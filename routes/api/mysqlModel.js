
var mysql = require('mysql');
connection = mysql.createConnection({
  host: '192.168.236.131',
  user: 'rvuser3',
  password: 'Monaco20!!'
});
connection.connect(function(err){
    if(err){
        console.error('error al conectarce: '+ err.stack);
        return;
    }

    console.log('conectado con el id:' + connection.threadId);
    
});

let mysqlModel={};

mysqlModel.getQuiebre = (handler) =>{
    
    connection.query('SELECT outStockPorHoraNombreSucursal as Sucursal, TRUNCATE((sum(outStockPorHoraHoraSinStock) / sum(outStockPorHoraHorasDispobibles))*100,2) AS Quiebre FROM rveloz.outstockporhora where outStockPorHoraNombreSucursal != "DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V."group by outStockPorHoraNombreSucursal',
        (err,rows)=>{
            if(err){
                handler(err,null);
            }else{
                handler(null,rows);
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