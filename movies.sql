-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET latin1 ;
USE `movies` ;

-- -----------------------------------------------------
-- Table `movies`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`actor` (
  `actor_id` INT(11) NOT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`category` (
  `category_id` INT(11) NOT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`language` (
  `language_id` INT(11) NOT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`film` (
  `film_id` INT(11) NOT NULL,
  `title` VARCHAR(50) NULL DEFAULT NULL,
  `description` VARCHAR(200) NULL DEFAULT NULL,
  `release_year` INT(11) NULL DEFAULT NULL,
  `language_id` INT(11) NULL DEFAULT NULL,
  `rental_duration` INT(11) NULL DEFAULT NULL,
  `rental_rate` FLOAT NULL DEFAULT NULL,
  `length` INT(11) NULL DEFAULT NULL,
  `replacement_cost` FLOAT NULL DEFAULT NULL,
  `rating` VARCHAR(50) NULL DEFAULT NULL,
  `special_features` VARCHAR(200) NULL DEFAULT NULL,
  `language_language_id` INT(11) NOT NULL,
  PRIMARY KEY (`film_id`, `language_language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`hdd` (
  `hdd_id` INT(11) NOT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `title` VARCHAR(50) NULL DEFAULT NULL,
  `release_year` INT(11) NULL DEFAULT NULL,
  `category_id` INT(11) NULL DEFAULT NULL,
  `category_category_id` INT(11) NOT NULL,
  `film_film_id` INT(11) NOT NULL,
  `film_language_language_id` INT(11) NOT NULL,
  PRIMARY KEY (`hdd_id`, `category_category_id`, `film_film_id`, `film_language_language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`inventory` (
  `inventory_id` INT(11) NOT NULL,
  `film_id` INT(11) NULL DEFAULT NULL,
  `store_id` INT(11) NULL DEFAULT NULL,
  `film_film_id` INT(11) NOT NULL,
  PRIMARY KEY (`inventory_id`, `film_film_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`rental` (
  `rental_id` INT(11) NOT NULL,
  `rental_date` VARCHAR(50) NULL DEFAULT NULL,
  `inventory_id` INT(11) NULL DEFAULT NULL,
  `customer_id` INT(11) NULL DEFAULT NULL,
  `return_date` VARCHAR(50) NULL DEFAULT NULL,
  `staff_id` INT(11) NULL DEFAULT NULL,
  `inventory_inventory_id` INT(11) NOT NULL,
  PRIMARY KEY (`rental_id`, `inventory_inventory_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `movies`.`hdd_has_actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`hdd_has_actor` (
  `hdd_hdd_id` INT(11) NOT NULL,
  `hdd_category_category_id` INT(11) NOT NULL,
  `hdd_film_film_id` INT(11) NOT NULL,
  `hdd_film_language_language_id` INT(11) NOT NULL,
  `actor_actor_id` INT(11) NOT NULL,
  PRIMARY KEY (`hdd_hdd_id`, `hdd_category_category_id`, `hdd_film_film_id`, `hdd_film_language_language_id`, `actor_actor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
