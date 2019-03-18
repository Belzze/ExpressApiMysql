-- --------------------------------------------------------
-- Host:                         192.168.236.131
-- Server version:               5.7.25-0ubuntu0.18.04.2 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for rveloz
DROP DATABASE IF EXISTS `rveloz`;
CREATE DATABASE IF NOT EXISTS `rveloz` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rveloz`;

-- Dumping structure for table rveloz.grossprepago
DROP TABLE IF EXISTS `grossprepago`;
CREATE TABLE IF NOT EXISTS `grossprepago` (
  `grossPrepagoParticion` varchar(45) DEFAULT NULL,
  `grossPrepagoAnomesActivacion` varchar(45) DEFAULT NULL,
  `grossPrepagoFechaActivacion` varchar(45) DEFAULT NULL,
  `grossPrepagoFechaCreacion` varchar(45) DEFAULT NULL,
  `grossPrepagoTelefono` varchar(45) DEFAULT NULL,
  `grossPrepagoAnexo` varchar(45) NOT NULL,
  `grossPrepagoTipoProducto` varchar(15) DEFAULT NULL,
  `grossPrepagoTecnologia` varchar(15) DEFAULT NULL,
  `grossPrepagoCos` varchar(15) DEFAULT NULL,
  `grossPrepagoTelefonoPda` varchar(15) DEFAULT NULL,
  `grossPrepagoCodigoOtaAs400` varchar(45) DEFAULT NULL,
  `grossPrepagoCodigoOtaDms` varchar(45) DEFAULT NULL,
  `grossPrepagoIdPdv` varchar(15) DEFAULT NULL,
  `grossPrepagocNombrePdv` varchar(250) DEFAULT NULL,
  `grossPrepagoIdSucursal` varchar(45) DEFAULT NULL,
  `grossPrepagoNombreSucursal` varchar(45) DEFAULT NULL,
  `grossPrepagoIdDealer` varchar(45) DEFAULT NULL,
  `grossPrepagoNombreDealer` varchar(45) DEFAULT NULL,
  `grossPrepagoNombreTerritorioAnexo` varchar(85) DEFAULT NULL,
  `grossPrepagoNombreDepartamentoAnexo` varchar(85) DEFAULT NULL,
  `grossPrepagoNombreMunicipioAnexo` varchar(85) DEFAULT NULL,
  `grossPrepagoCantOta` char(2) DEFAULT '0',
  `grossPrepagoEstado` varchar(45) DEFAULT NULL,
  `grossPrepagoTerritorioDms` varchar(45) DEFAULT NULL,
  `grossPrepagoDepartamentoDms` varchar(85) DEFAULT NULL,
  `grossPrepagoMunicipioDms` varchar(85) DEFAULT NULL,
  `grossPrepagoNombreCircuito` varchar(45) DEFAULT NULL,
  `grossPrepagoOtasPorTerritorio` varchar(45) DEFAULT NULL,
  `grossPrepagoCanal` varchar(45) DEFAULT NULL,
  `grossPrepagoBypass` char(2) DEFAULT 'NO',
  `grossPrepagoAnomesBypass` varchar(45) DEFAULT NULL,
  `grossPrepagoFechaBypass` varchar(45) DEFAULT NULL,
  `grossPrepagoAnexoDocumento` char(2) DEFAULT NULL,
  `grossPrepagoNivelPago` varchar(45) DEFAULT NULL,
  `grossPrepagoAnomesComision` varchar(45) DEFAULT NULL,
  `grossPrepagoComisiona` char(2) DEFAULT 'NO',
  `grossPrepagoGrossConVas` char(2) DEFAULT 'NO',
  `grossPrepagoSubCanal` varchar(45) DEFAULT NULL,
  `grossPrepagoBu` char(4) DEFAULT '----',
  `grossPrepagoStypeActualTel` varchar(10) DEFAULT 'pendiente',
  `grossPrepagoNumeroDoc` varchar(25) DEFAULT 'pendiente',
  `grossPrepagoGrossConTmy` char(2) DEFAULT 'NO',
  `grossPrepagoPdvEpinActivo` varchar(45) DEFAULT NULL,
  `grossPrepagoGrossConCarga` char(2) DEFAULT NULL,
  `grossPrepagoValorGrsCarga` mediumint(9) DEFAULT NULL,
  `grossPrepagoViejoTerr` varchar(45) DEFAULT NULL,
  `grossPrepagoAnxCmsnAdlntda` char(2) DEFAULT 'NO',
  `grossPrepagoGrossConVasNuevo` char(2) DEFAULT 'NO',
  `grossPrepagoGrossDeezerAscd` char(2) DEFAULT 'NO',
  `grossPrepagoGrossDeezerAprvsn` char(2) DEFAULT 'NO',
  `grossPrepagoTripoActivacion` varchar(45) DEFAULT NULL,
  `grossPrepagoGrossConWelcomePack` char(2) DEFAULT 'NO',
  `grossPrepagoTipoAparato` varchar(45) DEFAULT NULL,
  `grossPrepagoTipoUsim` varchar(45) DEFAULT NULL,
  `grossPrepagoCanalLpa` varchar(45) DEFAULT NULL,
  `grossPrepagoSubcanalLpa` varchar(45) DEFAULT NULL,
  `grossPrepagoTerritorioLpa` varchar(45) DEFAULT NULL,
  `grossPrepagoZonaLpa` varchar(45) DEFAULT NULL,
  `grossPrepagoZona` varchar(10) DEFAULT NULL,
  `grossPrepagoIcc` bigint(20) DEFAULT '0',
  PRIMARY KEY (`grossPrepagoAnexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rveloz.outstockporhora
DROP TABLE IF EXISTS `outstockporhora`;
CREATE TABLE IF NOT EXISTS `outstockporhora` (
  `outStockPorHoraAnomes` varchar(45) DEFAULT NULL,
  `outStockPorHoraFechaStock` varchar(45) NOT NULL,
  `outStockPorHoraAgentId` varchar(45) DEFAULT NULL,
  `outStockPorHoraAgentMovil` varchar(45) DEFAULT NULL,
  `outStockPorHoraHoraSinStock` double DEFAULT NULL,
  `outStockPorHoraTiempoSinStock` time(3) DEFAULT NULL,
  `outStockPorHoraIdDealer` varchar(20) DEFAULT NULL,
  `outStockPorHoraNombreDealer` varchar(85) DEFAULT NULL,
  `outStockPorHoraIdSucursal` int(11) DEFAULT NULL,
  `outStockPorHoraNombreSucursal` varchar(85) DEFAULT NULL,
  `outStockPorHoraIdPdv` mediumint(9) NOT NULL,
  `outStockPorHoraNombrePdv` varchar(85) DEFAULT 'pendiente',
  `outStockPorHoraCircuito` int(11) DEFAULT NULL,
  `outStockPorHoraNombreDelCircuito` varchar(45) DEFAULT 'pendiente',
  `outStockPorHoraTerritorio` varchar(45) DEFAULT 'pendiente',
  `outStockPorHoraDepartamento` varchar(45) DEFAULT 'pendiente',
  `outStockPorHoraMunicipio` varchar(45) DEFAULT 'pendiente',
  `outStockPorHoraCanal` varchar(45) DEFAULT 'pendiente',
  `outStockPorHoraVenta` float DEFAULT '0',
  `outStockPorHoraCompra` float DEFAULT '0',
  `outStockPorHoraSegmentoCompraVenta` varchar(3) DEFAULT NULL,
  `outStockPorHoraSegmentoGeografico` varchar(3) DEFAULT NULL,
  `outStockPorHoraSegmentoPdvFinal` varchar(3) DEFAULT NULL,
  `outStockPorHoraHorasDispobibles` mediumint(9) DEFAULT NULL,
  `outStockPorHoraPerQuiebreHora` double DEFAULT NULL,
  `outStockPorHoraCayoEnQuiebre` varchar(5) DEFAULT NULL,
  `outStockPorHoraGoBlue` varchar(45) DEFAULT NULL,
  `outStockPorHoraDia` varchar(5) DEFAULT NULL,
  `outStockPorHoraDmsStatus` varchar(45) DEFAULT NULL,
  `outStockPorHoraTipoCircuito` varchar(45) DEFAULT NULL,
  `outStockPorHoraSubCanal` varchar(45) DEFAULT NULL,
  `outStockPorHoraNivel` int(11) DEFAULT NULL,
  `outStockPorHoraBalance` float DEFAULT NULL,
  `outStockPorHoraVas` mediumint(9) DEFAULT NULL,
  `outStockPorHoraEpin` mediumint(9) DEFAULT NULL,
  `outStockPorHoraTotal` mediumint(9) DEFAULT NULL,
  `outStockPorHoraCantidadTrans` mediumint(9) DEFAULT NULL,
  `outStockPorHoraTipoMovil` mediumint(9) DEFAULT NULL,
  `outStockPorHoraZona` varchar(45) DEFAULT NULL,
  `outStockPorHoraFechaStockFecha` date DEFAULT '1900-01-01',
  PRIMARY KEY (`outStockPorHoraFechaStock`,`outStockPorHoraIdPdv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rveloz.pdv
DROP TABLE IF EXISTS `pdv`;
CREATE TABLE IF NOT EXISTS `pdv` (
  `pdvId` mediumint(9) NOT NULL,
  `pdvIdSalesforce` char(18) DEFAULT 'pendiente',
  `pdvDueno` varchar(85) DEFAULT 'pendiente',
  `pdvIdentidadDueno` varchar(85) DEFAULT 'pendiente',
  `pdvNombre` varchar(85) DEFAULT 'pendiente',
  `pdvIdUsuario` char(18) DEFAULT 'pendiente',
  PRIMARY KEY (`pdvId`),
  UNIQUE KEY `pdvIdSalesforce_UNIQUE` (`pdvIdSalesforce`,`pdvIdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for procedure rveloz.quiebrePorCircuitoFiltroSucursal
DROP PROCEDURE IF EXISTS `quiebrePorCircuitoFiltroSucursal`;
DELIMITER //
CREATE DEFINER=`rvuser3`@`%` PROCEDURE `quiebrePorCircuitoFiltroSucursal`(
	IN `varSucursal` TEXT
)
BEGIN
Declare fecha date;
Select outStockPorHoraFechaStockFecha into fecha from outstockporhora order by outStockPorHoraFechaStockFecha desc limit 1;
SET @LIST = varSucursal;
SELECT o.outStockPorHoraNombreDelCircuito AS Circuito,
sum(case when o.outStockPorHoraFechaStockFecha = fecha then 1 else 0 END) AS  PDV,
round((SUM(o.outStockPorHoraHoraSinStock) / SUM(o.outStockPorHoraHorasDispobibles))*100,2) AS Quiebre,
round (sum(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHoraSinStock else 0 end) /
SUM(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHorasDispobibles else 0 end)*100 ,2 ) AS 'DiaAnterior'
FROM outstockporhora o 
INNER JOIN pdv p ON o.outStockPorHoraIdPdv = p.pdvId
INNER JOIN usuario u ON p.pdvIdUsuario = u.usuarioID
WHERE MONTH (o.outStockPorHoraFechaStockFecha) = MONTH(fecha) 
	AND o.outStockPorHoraNombreSucursal != 'DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V.' 
	AND o.outStockPorHoraTipoMovil = 1
	AND o.outStockPorHoraDmsStatus = 'VENDE'
	AND o.outStockPorHoraNivel >=1 
	AND o.outStockPorHoraNivel !=5
	AND FIND_IN_SET(o.outStockPorHoraIdSucursal,@LIST)
GROUP BY Circuito
ORDER BY  Quiebre;
END//
DELIMITER ;

-- Dumping structure for procedure rveloz.quiebrePorSucursal
DROP PROCEDURE IF EXISTS `quiebrePorSucursal`;
DELIMITER //
CREATE DEFINER=`rvuser3`@`%` PROCEDURE `quiebrePorSucursal`()
BEGIN
	Declare fecha date;
	Select outStockPorHoraFechaStockFecha into fecha from outstockporhora order by outStockPorHoraFechaStockFecha desc limit 1;
	SELECT IFNULL(s.sucursalNombre, 'Total') as Sucursal,
	sum(case when o.outStockPorHoraFechaStockFecha = fecha then 1 else 0 end)as  PDV,
	round((SUM(o.outStockPorHoraHoraSinStock) / SUM(o.outStockPorHoraHorasDispobibles))*100,2) AS Quiebre,
	round (sum(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHoraSinStock else 0 end) /
	SUM(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHorasDispobibles else 0 end)*100 ,2 ) AS 'DiaAnterior'
	FROM  rveloz.outstockporhora o
	INNER JOIN rveloz.sucursal s on o.outStockPorHoraIdSucursal = s.sucursalID
	WHERE MONTH (o.outStockPorHoraFechaStockFecha) = MONTH(fecha)
	AND o.outStockPorHoraNombreSucursal != 'DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V.' 
	AND o.outStockPorHoraTipoMovil = 1
	AND o.outStockPorHoraDmsStatus = 'VENDE'
	AND o.outStockPorHoraNivel>=1 
	AND o.outStockPorHoraNivel<5
	GROUP BY s.sucursalNombre WITH ROLLUP;  
END//
DELIMITER ;

-- Dumping structure for procedure rveloz.quiebrePorVendedorFintroSucursal
DROP PROCEDURE IF EXISTS `quiebrePorVendedorFintroSucursal`;
DELIMITER //
CREATE DEFINER=`rvuser3`@`%` PROCEDURE `quiebrePorVendedorFintroSucursal`(
	IN `varSucursal` TEXT


)
BEGIN
Declare fecha date;
Select outStockPorHoraFechaStockFecha into fecha from outstockporhora order by outStockPorHoraFechaStockFecha desc limit 1;
SET @LIST = varSucursal;
SELECT u.usuarioNombre AS Usuario,
sum(case when o.outStockPorHoraFechaStockFecha = fecha then 1 else 0 END) AS  PDV,
round((SUM(o.outStockPorHoraHoraSinStock) / SUM(o.outStockPorHoraHorasDispobibles))*100,2) AS Quiebre,
round (sum(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHoraSinStock else 0 end) /
SUM(case when o.outStockPorHoraFechaStockFecha < fecha then o.outStockPorHoraHorasDispobibles else 0 end)*100 ,2 ) AS 'DiaAnterior'
FROM outstockporhora o 
INNER JOIN pdv p ON o.outStockPorHoraIdPdv = p.pdvId
INNER JOIN usuario u ON p.pdvIdUsuario = u.usuarioID
WHERE MONTH (o.outStockPorHoraFechaStockFecha) = MONTH(fecha) 
	AND o.outStockPorHoraNombreSucursal != 'DSF DEALER - T1 - RECARGA VELOZ S.A. DE C.V.' 
	AND o.outStockPorHoraTipoMovil = 1
	AND o.outStockPorHoraDmsStatus = 'VENDE'
	AND o.outStockPorHoraNivel >=1 
	AND o.outStockPorHoraNivel !=5
	AND FIND_IN_SET(o.outStockPorHoraIdSucursal,@LIST)
GROUP BY u.usuarioNombre
ORDER BY  Quiebre;
END//
DELIMITER ;

-- Dumping structure for table rveloz.sucursal
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `sucursalID` int(11) NOT NULL,
  `sucursalNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`sucursalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rveloz.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuarioID` char(18) NOT NULL,
  `usuarioActivo` tinyint(1) DEFAULT '0',
  `usuarioApellidoMaterno` varchar(45) DEFAULT 'vacio',
  `usuarioApellidoPaterno` varchar(45) DEFAULT 'vacio',
  `usuarioCelular` varchar(45) DEFAULT 'vacio',
  `usuarioCodigo` varchar(45) DEFAULT 'vacio',
  `usuarioCorreoElectronico` varchar(45) DEFAULT 'vacio',
  `usuarioFechaCreacion` date DEFAULT '1900-01-01',
  `usuarioFuncion` varchar(45) DEFAULT 'vacio',
  `usuarioNombre` varchar(45) DEFAULT 'vacio',
  `usuarioNombreUsuario` varchar(45) DEFAULT 'vacio',
  `usuarioSucursal` varchar(45) DEFAULT 'vacio',
  `usuarioSupervisor` char(18) DEFAULT 'no tiene',
  PRIMARY KEY (`usuarioID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for trigger rveloz.quiebrefecha
DROP TRIGGER IF EXISTS `quiebrefecha`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `quiebrefecha` BEFORE INSERT ON `outstockporhora` FOR EACH ROW BEGIN
	SET NEW.outStockPorHoraFechaStockFecha = STR_TO_DATE(NEW.outStockPorHoraFechaStock, "%d-%b-%y");
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
