-- MySQL Script generated by MySQL Workbench
-- Mon Mar 11 18:29:26 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pharmacy
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pharmacy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pharmacy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pharmacy` ;

-- -----------------------------------------------------
-- Table `pharmacy`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone_number` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  UNIQUE INDEX `phone_number_UNIQUE` (`phone_number` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`delivery` (
  `delivery_id` INT NOT NULL AUTO_INCREMENT,
  `supplier_id` VARCHAR(45) NULL DEFAULT NULL,
  `medication_id` VARCHAR(45) NULL DEFAULT NULL,
  `quantity_received` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`delivery_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`inventory` (
  `inventory_id` INT NOT NULL AUTO_INCREMENT,
  `medication_id` VARCHAR(45) NULL DEFAULT NULL,
  `quantity_in_stock` VARCHAR(45) NOT NULL,
  `last_restock_month` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`inventory_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 60
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`medication`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`medication` (
  `medication_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `price` VARCHAR(45) NULL DEFAULT NULL,
  `quantity in stock` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`medication_id`),
  UNIQUE INDEX `medication_id_UNIQUE` (`medication_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 50
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `medication_id` VARCHAR(45) NOT NULL,
  `pharmacist_id` VARCHAR(45) NOT NULL,
  `quantity ordered` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 40
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`pharmacists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`pharmacists` (
  `pharmacist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `shift` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`pharmacist_id`),
  UNIQUE INDEX `pharmacist_id_UNIQUE` (`pharmacist_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 38
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`prescription` (
  `prescription_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `doctor_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`prescription_id`),
  UNIQUE INDEX `prescription_id_UNIQUE` (`prescription_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`sales` (
  `sales_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` VARCHAR(45) NOT NULL,
  `medication_id` VARCHAR(45) NOT NULL,
  `total_amount` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`sales_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  UNIQUE INDEX `medication_id_UNIQUE` (`medication_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`supplier` (
  `supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone_number` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pharmacy`.`transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pharmacy`.`transaction` (
  `transaction_id` INT NOT NULL AUTO_INCREMENT,
  `transaction_type` VARCHAR(45) NOT NULL,
  `amount` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`transaction_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
