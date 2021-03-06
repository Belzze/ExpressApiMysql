-- MySQL Script generated by MySQL Workbench
-- jue 31 ene 2019 15:26:09 CST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema rveloz
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema rveloz
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rveloz` DEFAULT CHARACTER SET utf8 ;
USE `rveloz` ;

-- -----------------------------------------------------
-- Table `rveloz`.`grossPrepago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rveloz`.`grossPrepago` (
  `grossPrepagoId` INT(11) NOT NULL AUTO_INCREMENT,
  `grossPrepagoParticion` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoAnomesActivacion` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoFechaActivacion` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoFechaCreacion` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoTelefono` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoAnexo` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoTipoProducto` VARCHAR(15) NULL DEFAULT NULL,
  `grossPrepagoTecnologia` VARCHAR(15) NULL DEFAULT NULL,
  `grossPrepagoCos` VARCHAR(15) NULL DEFAULT NULL,
  `grossPrepagoTelefonoPda` VARCHAR(15) NULL DEFAULT NULL,
  `grossPrepagoCodigoOtaAs400` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoCodigoOtaDms` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoIdPdv` VARCHAR(15) NULL DEFAULT NULL,
  `grossPrepagocNombrePdv` VARCHAR(250) NULL DEFAULT NULL,
  `grossPrepagoIdSucursal` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoNombreSucursal` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoIdDealer` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoNombreDealer` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoNombreTerritorioAnexo` VARCHAR(85) NULL DEFAULT NULL,
  `grossPrepagoNombreDepartamentoAnexo` VARCHAR(85) NULL DEFAULT NULL,
  `grossPrepagoNombreMunicipioAnexo` VARCHAR(85) NULL DEFAULT NULL,
  `grossPrepagoCantOta` CHAR(2) NULL DEFAULT '0',
  `grossPrepagoEstado` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoTerritorioDms` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoDepartamentoDms` VARCHAR(85) NULL DEFAULT NULL,
  `grossPrepagoMunicipioDms` VARCHAR(85) NULL DEFAULT NULL,
  `grossPrepagoNombreCircuito` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoOtasPorTerritorio` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoCanal` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoBypass` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoAnomesBypass` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoFechaBypass` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoAnexoDocumento` CHAR(2) NULL DEFAULT NULL,
  `grossPrepagoNivelPago` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoAnomesComision` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoComisiona` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoGrossConVas` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoSubCanal` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoBu` CHAR(4) NULL DEFAULT '----',
  `grossPrepagoStypeActualTel` VARCHAR(10) NULL DEFAULT 'pendiente',
  `grossPrepagoNumeroDoc` VARCHAR(25) NULL DEFAULT 'pendiente',
  `grossPrepagoGrossConTmy` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoPdvEpinActivo` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoGrossConCarga` CHAR(2) NULL DEFAULT NULL,
  `grossPrepagoValorGrsCarga` MEDIUMINT(9) NULL DEFAULT NULL,
  `grossPrepagoViejoTerr` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoAnxCmsnAdlntda` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoGrossConVasNuevo` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoGrossDeezerAscd` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoGrossDeezerAprvsn` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoTripoActivacion` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoGrossConWelcomePack` CHAR(2) NULL DEFAULT 'NO',
  `grossPrepagoTipoAparato` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoTipoUsim` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoCanalLpa` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoSubcanalLpa` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoTerritorioLpa` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoZonaLpa` VARCHAR(45) NULL DEFAULT NULL,
  `grossPrepagoZona` VARCHAR(10) NULL DEFAULT NULL,
  `grossPrepagoIcc` BIGINT(20) NULL DEFAULT '0',
  PRIMARY KEY (`grossPrepagoId`))
ENGINE = InnoDB
AUTO_INCREMENT = 51143
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `rveloz`.`outStockPorHora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rveloz`.`outStockPorHora` (
  `outStockPorHoraId` INT(11) NOT NULL AUTO_INCREMENT,
  `outStockPorHoraAnomes` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraFechaStock` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraAgentId` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraAgentMovil` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraHoraSinStock` DOUBLE NULL DEFAULT NULL,
  `outStockPorHoraTiempoSinStock` TIME(3) NULL DEFAULT NULL,
  `outStockPorHoraIdDealer` INT(11) NULL DEFAULT NULL,
  `outStockPorHoraNombreDealer` VARCHAR(85) NULL DEFAULT NULL,
  `outStockPorHoraIdSucursal` INT(11) NULL DEFAULT NULL,
  `outStockPorHoraNombreSucursal` VARCHAR(85) NULL DEFAULT NULL,
  `outStockPorHoraIdPdv` INT(11) NULL DEFAULT NULL,
  `outStockPorHoraNombrePdv` VARCHAR(85) NULL DEFAULT NULL,
  `outStockPorHoraCircuito` INT(11) NULL DEFAULT NULL,
  `outStockPorHoraNombreDelCircuito` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraTerritorio` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraDepartamento` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraMunicipio` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraCanal` VARCHAR(45) NULL DEFAULT 'pendiente',
  `outStockPorHoraVenta` DOUBLE NULL DEFAULT '0',
  `outStockPorHoraCompra` DOUBLE NULL DEFAULT '0',
  `outStockPorHoraSegmentoCompraVenta` VARCHAR(3) NULL DEFAULT NULL,
  `outStockPorHoraSegmentoGeografico` VARCHAR(3) NULL DEFAULT NULL,
  `outStockPorHoraSegmentoPdvFinal` VARCHAR(3) NULL DEFAULT NULL,
  `outStockPorHoraHorasDispobibles` MEDIUMINT(9) NULL DEFAULT NULL,
  `outStockPorHoraPerQuiebreHora` DOUBLE NULL DEFAULT NULL,
  `outStockPorHoraCayoEnQuiebre` VARCHAR(5) NULL DEFAULT NULL,
  `outStockPorHoraGoBlue` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraDia` VARCHAR(5) NULL DEFAULT NULL,
  `outStockPorHoraDmsStatus` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraTipoCircuito` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraSubCanal` VARCHAR(45) NULL DEFAULT NULL,
  `outStockPorHoraNivel` INT(11) NULL DEFAULT NULL,
  `outStockPorHoraBalance` FLOAT NULL DEFAULT NULL,
  `outStockPorHoraTotal` MEDIUMINT(9) NULL DEFAULT NULL,
  `outStockPorHoraCantidadTrans` MEDIUMINT(9) NULL DEFAULT NULL,
  `outStockPorHoraTipoMovil` MEDIUMINT(9) NULL DEFAULT NULL,
  `outStockPorHoraZona` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`outStockPorHoraId`))
ENGINE = InnoDB
AUTO_INCREMENT = 328315
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `rveloz`.`pdv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rveloz`.`pdv` (
  `pdvId` INT(11) NOT NULL AUTO_INCREMENT,
  `pdvIdSalesforce` VARCHAR(85) NOT NULL,
  `pdvNombre` VARCHAR(200) NULL DEFAULT 'pendiente',
  `pdvTelefono` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvAccesibilidad` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvBarrio` VARCHAR(200) NULL DEFAULT 'pendiente',
  `pdvBloqueo` TINYINT(1) NULL DEFAULT '0',
  `pdvCircuitoCaracteristica` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCategoria` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCelular` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCircuito` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCiudad` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCodigoDMS` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCodigoEPIN` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvCodigoTigoMoney` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvDepartamento` VARCHAR(80) NULL DEFAULT 'pendiente',
  `pdvDireccion` VARCHAR(250) NULL DEFAULT 'pendiente',
  `pdvEstadoDMS` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvEstadoEPIN` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvEstadoPop` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvFechaCreacion` DATE NULL DEFAULT '2000-01-01',
  `pdvFechaUltimaVisita` DATE NULL DEFAULT '2000-01-01',
  `pdvHorario` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvIdEmpleadoUltimaVisita` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvLatitud` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvLongitud` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvMotivoDelBloqueo` VARCHAR(255) NULL DEFAULT 'pendiente',
  `pdvMovilesEPIN` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvMovilesTIgoMoney` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvMunicipio` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvNombreEmpleadoUltimaVisita` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvPermitePOP` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioBlackCard` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioBoomerang` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioChipDeRescate` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioComisionAdelantada` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioEPIN` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioInternet` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioPortabilidad` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioRecargaTuMismo` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioReversion` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioSimcardCRM` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioSimcardPrepConPasaporte` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioSimcardPrepTmConPasaporte` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioSimcardPrepTm` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioSimcard` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioTarjetaPrepago` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioTarjetasVas` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioTigoMoney` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioVastrix` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioVas` TINYINT(1) NULL DEFAULT '0',
  `pdvServicioVoz` TINYINT(1) NULL DEFAULT '0',
  `pdvFechaUltimaModificacion` DATE NULL DEFAULT '2000-01-01',
  `pdvSucursal` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvTipoFactura` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvTipoPunto` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvTrafico` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvIdSalesforceUsuario` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvVisibilidad` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvEstadoInicial` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvNombreDelDuenio` VARCHAR(85) NULL DEFAULT 'pendiente',
  `pdvIdDelDuenio` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvServicioSompopo` TINYINT(1) NULL DEFAULT '0',
  `pdvCodigoOtaPrepago` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvMovil` VARCHAR(45) NULL DEFAULT 'pendiente',
  `pdvSompTrx` TINYINT(1) NULL DEFAULT '0',
  PRIMARY KEY (`pdvId`),
  UNIQUE INDEX `pdvIdSalesforce_UNIQUE` (`pdvIdSalesforce` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 61418
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `rveloz`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rveloz`.`usuario` (
  `usuarioID` INT(11) NOT NULL AUTO_INCREMENT,
  `usuarioIDSalesforce` VARCHAR(45) NOT NULL,
  `usuarioCodigo` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioNombre` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioActivo` TINYINT(1) NULL DEFAULT '0',
  `usuarioApellidoMaterno` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioApellidoPaterno` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioCelular` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioCorreroElectronico` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioFuncion` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioNombreUsuario` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioObservaciones` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioSucursal` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuarioSupervisor` VARCHAR(45) NULL DEFAULT 'vacio',
  `usuariosTigoMoney` TINYINT(1) NULL DEFAULT '0',
  PRIMARY KEY (`usuarioID`),
  UNIQUE INDEX `idSalesforce_UNIQUE` (`usuarioIDSalesforce` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
