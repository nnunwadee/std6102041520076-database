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
-- -----------------------------------------------------
-- Schema std6102041520076
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema std6102041520076
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `std6102041520076` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`branch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`branch` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `branch_no` VARCHAR(5) NOT NULL,
  `street` TEXT NULL DEFAULT NULL,
  `city` VARCHAR(50) NOT NULL,
  `postcode` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`client` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `f_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `l_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `tel_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `pref_type` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `max_rent` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`private_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`private_owner` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `owner_no` VARCHAR(50) NOT NULL,
  `f_name` VARCHAR(50) NOT NULL,
  `l_name` VARCHAR(50) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `tel_no` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`property_for_rent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`property_for_rent` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `street` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `city` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `post_code` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `type` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `rooms` INT(11) NOT NULL,
  `rent` INT(11) NOT NULL,
  `owner_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `staff_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `branch_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`registration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`registration` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `branch_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `staff_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `date_joined` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`staff` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `staff_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `f_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `l_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `position` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `sex` VARCHAR(10) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `dob` DATE NOT NULL,
  `salary` INT(11) NOT NULL,
  `branch_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`viewing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`viewing` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `property_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `view_date` DATE NOT NULL,
  `comment` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `id` VARCHAR(45) NULL,
  `usercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`usercol`));

USE `std6102041520076` ;

-- -----------------------------------------------------
-- Table `std6102041520076`.`branch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`branch` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `branch_no` VARCHAR(5) NOT NULL,
  `street` TEXT NULL DEFAULT NULL,
  `city` VARCHAR(50) NOT NULL,
  `postcode` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `std6102041520076`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`client` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `f_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `l_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `tel_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `pref_type` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `max_rent` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `std6102041520076`.`private_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`private_owner` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `owner_no` VARCHAR(50) NOT NULL,
  `f_name` VARCHAR(50) NOT NULL,
  `l_name` VARCHAR(50) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `tel_no` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `std6102041520076`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`staff` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `staff_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `f_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `l_name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `position` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `sex` VARCHAR(10) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `dob` DATE NOT NULL,
  `salary` INT(11) NOT NULL,
  `branch_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `branch_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_staff_branch1_idx` (`branch_id` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `std6102041520076`.`property_for_rent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`property_for_rent` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `street` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `city` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `post_code` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `type` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `rooms` INT(11) NOT NULL,
  `rent` INT(11) NOT NULL,
  `owner_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `staff_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `branch_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `private_owner_id` INT(11) NOT NULL,
  `staff_id` INT(11) NOT NULL,
  `branch_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_property_for_rent_private_owner_idx` (`private_owner_id` ASC) VISIBLE,
  INDEX `fk_property_for_rent_staff1_idx` (`staff_id` ASC) VISIBLE,
  INDEX `fk_property_for_rent_branch1_idx` (`branch_id` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `std6102041520076`.`registration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`registration` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `branch_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `staff_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `date_joined` DATE NOT NULL,
  `branch_id` INT(11) NOT NULL,
  `staff_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_registration_branch1_idx` (`branch_id` ASC) VISIBLE,
  INDEX `fk_registration_staff1_idx` (`staff_id` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `std6102041520076`.`viewing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `std6102041520076`.`viewing` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `property_no` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `view_date` DATE NOT NULL,
  `comment` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `client_id` INT(11) NOT NULL,
  `property_for_rent_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_viewing_client1_idx` (`client_id` ASC) VISIBLE,
  INDEX `fk_viewing_property_for_rent1_idx` (`property_for_rent_id` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
