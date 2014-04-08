SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `casestudy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `casestudy` ;

-- -----------------------------------------------------
-- Table `casestudy`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `casestudy`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(100) NOT NULL,
  `customer_address` VARCHAR(250) NOT NULL,
  `customer_phone` VARCHAR(50) NOT NULL,
  `customer_fax` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `casestudy`.`contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `casestudy`.`contact` (
  `contact_id` INT NOT NULL AUTO_INCREMENT,
  `contact_name` VARCHAR(100) NOT NULL,
  `contact_phone` VARCHAR(50) NOT NULL,
  `contact_email` VARCHAR(50) NOT NULL,
  `contact_job_title` VARCHAR(100) NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `contact_is_main` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`contact_id`),
  INDEX `fk_contact_customer_idx` (`customer_customer_id` ASC),
  CONSTRAINT `fk_contact_customer`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `casestudy`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `casestudy`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `casestudy`.`product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `product_manufacturer` VARCHAR(100) NOT NULL,
  `product_model` VARCHAR(45) NOT NULL,
  `product_year` YEAR NOT NULL,
  `product_description` TEXT NOT NULL,
  `product_price` DOUBLE NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `casestudy`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `casestudy`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `order_creation_date` DATE NOT NULL,
  `order_updated_date` DATE NOT NULL,
  `contact_contact_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_order_contact1_idx` (`contact_contact_id` ASC),
  CONSTRAINT `fk_order_contact1`
    FOREIGN KEY (`contact_contact_id`)
    REFERENCES `casestudy`.`contact` (`contact_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `casestudy`.`order_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `casestudy`.`order_detail` (
  `product_product_id` INT NOT NULL,
  `order_order_id` INT NOT NULL,
  `quantityOrdered` INT NOT NULL,
  INDEX `fk_product_has_order_order1_idx` (`order_order_id` ASC),
  INDEX `fk_product_has_order_product1_idx` (`product_product_id` ASC),
  PRIMARY KEY (`product_product_id`, `order_order_id`),
  CONSTRAINT `fk_product_has_order_product1`
    FOREIGN KEY (`product_product_id`)
    REFERENCES `casestudy`.`product` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_product_has_order_order1`
    FOREIGN KEY (`order_order_id`)
    REFERENCES `casestudy`.`order` (`order_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `casestudy`.`equipment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `casestudy`.`equipment` (
  `customer_customer_id` INT NOT NULL,
  `product_product_id` INT NOT NULL,
  `equipment_id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`equipment_id`),
  INDEX `fk_customer_has_product_product1_idx` (`product_product_id` ASC),
  INDEX `fk_customer_has_product_customer1_idx` (`customer_customer_id` ASC),
  CONSTRAINT `fk_customer_has_product_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `casestudy`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_has_product_product1`
    FOREIGN KEY (`product_product_id`)
    REFERENCES `casestudy`.`product` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
