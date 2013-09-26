SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`TB_Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TB_Cliente` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`TB_Cliente` (
  `ID_CLIENTE` INT NOT NULL AUTO_INCREMENT ,
  `NOME_CLIENTE` VARCHAR(255) NOT NULL ,
  `ENDERECO_CLIENTE` VARCHAR(255) NOT NULL ,
  `SEXO_CLIENTE` CHAR NOT NULL ,
  `IDADE_CLIENTE` INT NOT NULL ,
  PRIMARY KEY (`ID_CLIENTE`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_Fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TB_Fabricante` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`TB_Fabricante` (
  `ID_FABRICANTE` INT NOT NULL AUTO_INCREMENT ,
  `NOME_FABRICANTE` VARCHAR(255) NULL ,
  `TELEFONE_FABRICANTE` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`ID_FABRICANTE`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_LOCALIZACAO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TB_LOCALIZACAO` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`TB_LOCALIZACAO` (
  `ESTADO` VARCHAR(45) NOT NULL ,
  `MUNICIPIO` VARCHAR(255) NOT NULL ,
  `BAIRRO` VARCHAR(45) NOT NULL ,
  `RUA` VARCHAR(255) NOT NULL ,
  `LOGRADOURO` INT NOT NULL ,
  `COMPLEMENTO` VARCHAR(255) NOT NULL ,
  `LONGITUDE` DOUBLE NOT NULL ,
  `LATITUDE` DOUBLE NOT NULL ,
  PRIMARY KEY (`ESTADO`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_ESTABELECIMENTO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TB_ESTABELECIMENTO` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`TB_ESTABELECIMENTO` (
  `ID_ESTABELECIMENTO` INT NOT NULL AUTO_INCREMENT ,
  `NOME_ESTABELECIMENTOl` VARCHAR(255) NOT NULL ,
  `ENDERECO_ELETRONICO` VARCHAR(255) NOT NULL ,
  `ENDERECO_FISICO` VARCHAR(255) NOT NULL ,
  `CD_TIPO_ESTABELECIMENTO` INT NOT NULL ,
  `TB_LOCALIZACAO_ESTADO` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`ID_ESTABELECIMENTO`) ,
  INDEX `fk_TB_ESTABELECIMENTO_TB_LOCALIZACAO1_idx` (`TB_LOCALIZACAO_ESTADO` ASC) ,
  CONSTRAINT `fk_TB_ESTABELECIMENTO_TB_LOCALIZACAO1`
    FOREIGN KEY (`TB_LOCALIZACAO_ESTADO` )
    REFERENCES `mydb`.`TB_LOCALIZACAO` (`ESTADO` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TB_Produto` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`TB_Produto` (
  `ID_PRODUTO` INT NOT NULL AUTO_INCREMENT ,
  `NOME_PRODUTO` VARCHAR(255) NOT NULL ,
  `NOME_FABRICATE` VARCHAR(255) NULL ,
  `QTD_ESTOQUE` INT NOT NULL ,
  `FK_ID_FABRICANTE` INT NOT NULL ,
  `TB_ESTABELECIMENTO_ID_ESTABELECIMENTO` INT NOT NULL ,
  PRIMARY KEY (`ID_PRODUTO`, `FK_ID_FABRICANTE`) ,
  INDEX `fk_TB_Produto_TB_Fabricante1_idx` (`FK_ID_FABRICANTE` ASC) ,
  INDEX `fk_TB_Produto_TB_ESTABELECIMENTO1_idx` (`TB_ESTABELECIMENTO_ID_ESTABELECIMENTO` ASC) ,
  CONSTRAINT `fk_TB_Produto_TB_Fabricante1`
    FOREIGN KEY (`FK_ID_FABRICANTE` )
    REFERENCES `mydb`.`TB_Fabricante` (`ID_FABRICANTE` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_Produto_TB_ESTABELECIMENTO1`
    FOREIGN KEY (`TB_ESTABELECIMENTO_ID_ESTABELECIMENTO` )
    REFERENCES `mydb`.`TB_ESTABELECIMENTO` (`ID_ESTABELECIMENTO` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RL_Cliente_Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`RL_Cliente_Produto` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`RL_Cliente_Produto` (
  `Cliente_ID_CLIENTE` INT NOT NULL ,
  `Produto_ID_PRODUTO` INT NOT NULL ,
  PRIMARY KEY (`Cliente_ID_CLIENTE`, `Produto_ID_PRODUTO`) ,
  INDEX `fk_Cliente_has_Produto_Produto1_idx` (`Produto_ID_PRODUTO` ASC) ,
  INDEX `fk_Cliente_has_Produto_Cliente_idx` (`Cliente_ID_CLIENTE` ASC) ,
  CONSTRAINT `fk_Cliente_has_Produto_Cliente`
    FOREIGN KEY (`Cliente_ID_CLIENTE` )
    REFERENCES `mydb`.`TB_Cliente` (`ID_CLIENTE` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_has_Produto_Produto1`
    FOREIGN KEY (`Produto_ID_PRODUTO` )
    REFERENCES `mydb`.`TB_Produto` (`ID_PRODUTO` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
