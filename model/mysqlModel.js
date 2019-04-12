
const pool = require('./conexion/conexion');



let mysqlModel={};

mysqlModel.getQuiebre = (handler) => {
    pool.getConnection(function ( err, connection ) {
        if( err ) {
            connection.release();
            throw err;
        }
        console.log('Conectado con el id:' + connection.threadId);        
        connection.query('CALL quiebrePorSucursal()',
        ( err, rows ) =>{
            if(!err){
			handler(null, rows[0]);
            }
        });
        connection.on('error', 
        ( err ) =>{
            throw err;
            return;
        })
    });
}
mysqlModel.getQuiebrePorDepartamento = (handler) => {
    pool.getConnection( function ( err, connection ) {
        if ( err ) {
            connection.release();
            throw err;
        }
        console.log('Conectado con el id:' + connection.threadId);
        connection.query('CALL quiebrePorDepartamento()',
        ( err, rows ) =>{
            if(!err){
			handler(null, rows[0]);
            }
        });
        connection.on('error', 
        ( err ) =>{
            throw err;
            return;
        }) 
    });
}

mysqlModel.getQuiebrePorMunicipio = (handler) => {
    pool.getConnection( function ( err, connection ) {
        if ( err ) {
            connection.release();
            throw err;
        }
        console.log('Conectado con el id:' + connection.threadId);
        connection.query('CALL quiebrePorMunicipio()',
        ( err, rows ) =>{
            if(!err){
			handler(null, rows[0]);
            }
        });
        connection.on('error', 
        ( err ) =>{
            throw err;
            return;
        }) 
    });
}
module.exports = mysqlModel;