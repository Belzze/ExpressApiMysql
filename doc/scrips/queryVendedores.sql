SELECT u.usuarioNombre AS Usuario,
sum(case when o.outStockPorHoraFechaStockFecha = '2019-03-13' then 1 else 0 END) AS  PDV,
round((SUM(o.outStockPorHoraHoraSinStock) / SUM(o.outStockPorHoraHorasDispobibles))*100,2) AS Quiebre,
round (sum(case when o.outStockPorHoraFechaStockFecha < '2019-03-13' then o.outStockPorHoraHoraSinStock else 0 end) /
SUM(case when o.outStockPorHoraFechaStockFecha < '2019-03-13' then o.outStockPorHoraHorasDispobibles else 0 end)*100 ,2 ) AS 'DiaAnterior'
FROM outstockporhora o 
INNER JOIN pdv p ON o.outStockPorHoraIdPdv = p.pdvId
INNER JOIN usuario u ON p.pdvIdUsuario = u.usuarioID
WHERE o.outStockPorHoraNombreSucursal != 'DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V.' 
	AND o.outStockPorHoraTipoMovil = 1
	AND o.outStockPorHoraDmsStatus = 'VENDE'
	AND o.outStockPorHoraNivel >=1 
	AND o.outStockPorHoraNivel !=5
	AND o.outStockPorHoraIdSucursal IN (30,34)
GROUP BY u.usuarioNombre
ORDER BY  Quiebre 

#	Declare fecha date;
#	Select outStockPorHoraFechaStockFecha into fecha from outstockporhora order by outStockPorHoraFechaStockFecha desc limit 1;
#	SELECT IFNULL(s.sucursalNombre, 'Total') as Sucursal,
#	sum(case when o.outStockPorHoraFechaStockFecha = fecha then 1 else 0 end)as  PDV,
#	round((SUM(o.outStockPorHoraHoraSinStock) / SUM(o.outStockPorHoraHorasDispobibles))*100,2) AS Quiebre,
#	round (sum(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHoraSinStock else 0 end) /
#	SUM(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHorasDispobibles else 0 end)*100 ,2 ) AS 'DiaAnterior'
#	FROM  rveloz.outstockporhora o
#	INNER JOIN rveloz.sucursal s on o.outStockPorHoraIdSucursal = s.sucursalID
#	WHERE MONTH (o.outStockPorHoraFechaStockFecha) = MONTH(fecha)
#	AND o.outStockPorHoraNombreSucursal != 'DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V.' 
#	AND o.outStockPorHoraTipoMovil = 1
#	AND o.outStockPorHoraDmsStatus = 'VENDE'
#	AND o.outStockPorHoraNivel>=1 
#	AND o.outStockPorHoraNivel<5
#	GROUP BY s.sucursalNombre WITH ROLLUP; 