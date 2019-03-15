var pool = require('./conexion/conexion');


let pruebaModel={};

pruebaModel.getPrueba = (handler) => {
    pool.getConnection(function ( err, connection ) {
        if( err ) {
            connection.release();
            throw err;
        }
        console.log('Conectado con el id:' + connection.threadId);        
        connection.query('SELECT * FROM rveloz.quiebreSucursal',
        ( err, rows ) =>{
            if(!err){
                handler(null, rows);
            }
        });
        connection.on('error', 
        ( err ) =>{
            throw err;
            return;
        })
    });
}



module.exports = pruebaModel;