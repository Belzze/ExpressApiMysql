function mysqlModel(db){
    let lib={};
    let col= db;

    lib.getQuiebre = (handler)=>{
        db.query(
            'SELECT outStockPorHoraNombreSucursal as Sucursal, TRUNCATE((sum(outStockPorHoraHoraSinStock) / sum(outStockPorHoraHorasDispobibles))*100,2) AS Quiebre FROM rveloz.outstockporhora where outStockPorHoraNombreSucursal != "DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V."group by outStockPorHoraNombreSucursal',
            (err,rows)=>{
                if(err){
                    handler(err,null);
                }else{
                    handler(null,rows);
                }
            }
        )

    };//getQuiebre xD
    return lib;
}//mysql model
module.exports = mysqlModel;