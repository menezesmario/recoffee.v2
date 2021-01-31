-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema recoffee
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema recoffee
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `recoffee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `recoffee` ;

-- -----------------------------------------------------
-- Table `recoffee`.`acessorios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `recoffee`.`acessorios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NULL DEFAULT NULL,
  `descricao` LONGTEXT NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `fabricante` VARCHAR(45) NULL DEFAULT NULL,
  `preco` VARCHAR(45) NULL DEFAULT NULL,
  `peso_prod` VARCHAR(45) NULL DEFAULT NULL,
  `img1` VARCHAR(45) NULL DEFAULT NULL,
  `img2` VARCHAR(45) NULL DEFAULT NULL,
  `avaliacao` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `recoffee`.`cafes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `recoffee`.`cafes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  `descricao` LONGTEXT NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `preco` FLOAT NULL DEFAULT NULL,
  `peso_pct` VARCHAR(45) NULL DEFAULT NULL,
  `produtor` VARCHAR(45) NULL DEFAULT NULL,
  `torra` VARCHAR(45) NULL DEFAULT NULL,
  `classificacao` VARCHAR(45) NULL DEFAULT NULL,
  `origem` VARCHAR(45) NULL DEFAULT NULL,
  `img` VARCHAR(45) NULL DEFAULT NULL,
  `avaliacao` FLOAT NULL DEFAULT NULL,
  `peso_prod` VARCHAR(45) NULL DEFAULT NULL,
  `createdAt` DATETIME NULL DEFAULT NULL,
  `updatedAt` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `recoffee`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `recoffee`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `celular` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `logradouro` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `uf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `recoffee`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `recoffee`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL DEFAULT NULL,
  `subtitle` TEXT NULL DEFAULT NULL,
  `content` TEXT NULL DEFAULT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `recoffee`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `recoffee`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
