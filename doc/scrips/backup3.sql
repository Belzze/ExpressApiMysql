-- --------------------------------------------------------
-- Host:                         sompopobi.mysql.database.azure.com
-- Server version:               5.7.21 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
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
  `outStockPorHoraIdPdv` varchar(20) NOT NULL,
  `outStockPorHoraNombrePdv` varchar(85) DEFAULT NULL,
  `outStockPorHoraCircuito` int(11) DEFAULT NULL,
  `outStockPorHoraNombreDelCircuito` varchar(45) DEFAULT NULL,
  `outStockPorHoraTerritorio` varchar(45) DEFAULT NULL,
  `outStockPorHoraDepartamento` varchar(45) DEFAULT NULL,
  `outStockPorHoraMunicipio` varchar(45) DEFAULT NULL,
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
  `pdvId` int(11) NOT NULL AUTO_INCREMENT,
  `pdvIdSalesforce` varchar(85) NOT NULL,
  `pdvNombre` varchar(200) DEFAULT 'pendiente',
  `pdvTelefono` varchar(85) DEFAULT 'pendiente',
  `pdvAccesibilidad` varchar(85) DEFAULT 'pendiente',
  `pdvBarrio` varchar(200) DEFAULT 'pendiente',
  `pdvBloqueo` tinyint(1) DEFAULT '0',
  `pdvCircuitoCaracteristica` varchar(85) DEFAULT 'pendiente',
  `pdvCategoria` varchar(85) DEFAULT 'pendiente',
  `pdvCelular` varchar(85) DEFAULT 'pendiente',
  `pdvCircuito` varchar(85) DEFAULT 'pendiente',
  `pdvCiudad` varchar(85) DEFAULT 'pendiente',
  `pdvCodigoDMS` varchar(85) DEFAULT 'pendiente',
  `pdvCodigoEPIN` varchar(85) DEFAULT 'pendiente',
  `pdvCodigoTigoMoney` varchar(85) DEFAULT 'pendiente',
  `pdvDepartamento` varchar(80) DEFAULT 'pendiente',
  `pdvDireccion` varchar(250) DEFAULT 'pendiente',
  `pdvEstadoDMS` varchar(45) DEFAULT 'pendiente',
  `pdvEstadoEPIN` varchar(45) DEFAULT 'pendiente',
  `pdvEstadoPop` varchar(45) DEFAULT 'pendiente',
  `pdvFechaCreacion` date DEFAULT '2000-01-01',
  `pdvFechaUltimaVisita` date DEFAULT '2000-01-01',
  `pdvHorario` varchar(45) DEFAULT 'pendiente',
  `pdvIdEmpleadoUltimaVisita` varchar(85) DEFAULT 'pendiente',
  `pdvLatitud` varchar(45) DEFAULT 'pendiente',
  `pdvLongitud` varchar(45) DEFAULT 'pendiente',
  `pdvMotivoDelBloqueo` varchar(255) DEFAULT 'pendiente',
  `pdvMovilesEPIN` varchar(45) DEFAULT 'pendiente',
  `pdvMovilesTIgoMoney` varchar(45) DEFAULT 'pendiente',
  `pdvMunicipio` varchar(45) DEFAULT 'pendiente',
  `pdvNombreEmpleadoUltimaVisita` varchar(85) DEFAULT 'pendiente',
  `pdvPermitePOP` tinyint(1) DEFAULT '0',
  `pdvServicioBlackCard` tinyint(1) DEFAULT '0',
  `pdvServicioBoomerang` tinyint(1) DEFAULT '0',
  `pdvServicioChipDeRescate` tinyint(1) DEFAULT '0',
  `pdvServicioComisionAdelantada` tinyint(1) DEFAULT '0',
  `pdvServicioEPIN` tinyint(1) DEFAULT '0',
  `pdvServicioInternet` tinyint(1) DEFAULT '0',
  `pdvServicioPortabilidad` tinyint(1) DEFAULT '0',
  `pdvServicioRecargaTuMismo` tinyint(1) DEFAULT '0',
  `pdvServicioReversion` tinyint(1) DEFAULT '0',
  `pdvServicioSimcardCRM` tinyint(1) DEFAULT '0',
  `pdvServicioSimcardPrepConPasaporte` tinyint(1) DEFAULT '0',
  `pdvServicioSimcardPrepTmConPasaporte` tinyint(1) DEFAULT '0',
  `pdvServicioSimcardPrepTm` tinyint(1) DEFAULT '0',
  `pdvServicioSimcard` tinyint(1) DEFAULT '0',
  `pdvServicioTarjetaPrepago` tinyint(1) DEFAULT '0',
  `pdvServicioTarjetasVas` tinyint(1) DEFAULT '0',
  `pdvServicioTigoMoney` tinyint(1) DEFAULT '0',
  `pdvServicioVastrix` tinyint(1) DEFAULT '0',
  `pdvServicioVas` tinyint(1) DEFAULT '0',
  `pdvServicioVoz` tinyint(1) DEFAULT '0',
  `pdvFechaUltimaModificacion` date DEFAULT '2000-01-01',
  `pdvSucursal` varchar(45) DEFAULT 'pendiente',
  `pdvTipoFactura` varchar(45) DEFAULT 'pendiente',
  `pdvTipoPunto` varchar(45) DEFAULT 'pendiente',
  `pdvTrafico` varchar(45) DEFAULT 'pendiente',
  `pdvIdSalesforceUsuario` varchar(45) DEFAULT 'pendiente',
  `pdvVisibilidad` varchar(45) DEFAULT 'pendiente',
  `pdvEstadoInicial` varchar(45) DEFAULT 'pendiente',
  `pdvNombreDelDuenio` varchar(85) DEFAULT 'pendiente',
  `pdvIdDelDuenio` varchar(45) DEFAULT 'pendiente',
  `pdvServicioSompopo` tinyint(1) DEFAULT '0',
  `pdvCodigoOtaPrepago` varchar(45) DEFAULT 'pendiente',
  `pdvMovil` varchar(45) DEFAULT 'pendiente',
  `pdvSompTrx` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pdvId`),
  UNIQUE KEY `pdvIdSalesforce_UNIQUE` (`pdvIdSalesforce`)
) ENGINE=InnoDB AUTO_INCREMENT=61418 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rveloz.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuarioID` int(11) NOT NULL AUTO_INCREMENT,
  `usuarioIDSalesforce` varchar(45) NOT NULL,
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
  `usuarioSupervisor` varchar(45) DEFAULT 'vacio',
  `usuarioCorreroElectronico` varchar(45) DEFAULT 'vacio',
  `usuarioTigoMoney` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`usuarioID`),
  UNIQUE KEY `idSalesforce_UNIQUE` (`usuarioIDSalesforce`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `sucursalID` int(11) NOT NULL,
  `sucursalNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`sucursalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
