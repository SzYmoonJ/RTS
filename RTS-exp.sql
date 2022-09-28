-- MySQL Script generated by MySQL Workbench
-- Wed Sep 28 15:12:13 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`players` (
  `id` INT NOT NULL,
  `nick` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`villages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`villages` (
  `ids` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `x` INT NOT NULL,
  `y` INT NOT NULL,
  `players_id` INT NOT NULL,
  PRIMARY KEY (`ids`, `players_id`),
  CONSTRAINT `fk_villages_players`
    FOREIGN KEY (`players_id`)
    REFERENCES `mydb`.`players` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`buildings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`buildings` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`resources`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`resources` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`troops`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`troops` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `damage` INT NOT NULL,
  `distance_damage` INT NOT NULL,
  `defense` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`villages_has_resources`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`villages_has_resources` (
  `id` INT NOT NULL,
  `villages_ids` INT NOT NULL,
  `resources_id` INT NOT NULL,
  `value` INT NOT NULL,
  PRIMARY KEY (`id`, `villages_ids`, `resources_id`),
  CONSTRAINT `fk_villages_has_resources_villages1`
    FOREIGN KEY (`villages_ids`)
    REFERENCES `mydb`.`villages` (`ids`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_villages_has_resources_resources1`
    FOREIGN KEY (`resources_id`)
    REFERENCES `mydb`.`resources` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`villages_has_troops`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`villages_has_troops` (
  `villages_ids` INT NOT NULL,
  `troops_id` INT NOT NULL,
  PRIMARY KEY (`villages_ids`, `troops_id`),
  CONSTRAINT `fk_villages_has_troops_villages1`
    FOREIGN KEY (`villages_ids`)
    REFERENCES `mydb`.`villages` (`ids`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_villages_has_troops_troops1`
    FOREIGN KEY (`troops_id`)
    REFERENCES `mydb`.`troops` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`villages_has_buildings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`villages_has_buildings` (
  `villages_ids` INT NOT NULL,
  `buildings_id` INT NOT NULL,
  PRIMARY KEY (`villages_ids`, `buildings_id`),
  CONSTRAINT `fk_villages_has_buildings_villages1`
    FOREIGN KEY (`villages_ids`)
    REFERENCES `mydb`.`villages` (`ids`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_villages_has_buildings_buildings1`
    FOREIGN KEY (`buildings_id`)
    REFERENCES `mydb`.`buildings` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
