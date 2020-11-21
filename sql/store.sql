CREATE SCHEMA `store` ;


CREATE TABLE `store`.`customers` (
  `idcustomers` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NULL,
  `email` VARCHAR(100) NOT NULL,
  `address_line1` VARCHAR(100) NULL,
  `address_line2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zipcode` VARCHAR(45) NULL,
  PRIMARY KEY (`idcustomers`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);


  ALTER TABLE `store`.`customers` 
ADD COLUMN `country` VARCHAR(45) NULL AFTER `zipcode`,
ADD COLUMN `phone` VARCHAR(45) NULL AFTER `country`,
ADD COLUMN `credit_card_type` VARCHAR(45) NULL AFTER `phone`,
ADD COLUMN `credit_card_nickname` VARCHAR(45) NULL AFTER `credit_card_type`,
ADD COLUMN `credit_card_number` VARCHAR(45) NULL AFTER `credit_card_nickname`,
ADD COLUMN `credit_card_exp_mo` VARCHAR(45) NULL AFTER `credit_card_number`,
ADD COLUMN `credit_card_exp_yr` VARCHAR(45) NULL AFTER `credit_card_exp_mo`,
ADD COLUMN `credit_card_security` VARCHAR(45) NULL AFTER `credit_card_exp_yr`,
ADD COLUMN `ship_address_line1` VARCHAR(45) NULL AFTER `credit_card_security`,
ADD COLUMN `ship_address_line2` VARCHAR(45) NULL AFTER `ship_address_line1`,
ADD COLUMN `ship_city` VARCHAR(45) NULL AFTER `ship_address_line2`,
ADD COLUMN `ship_state` VARCHAR(45) NULL AFTER `ship_city`,
ADD COLUMN `ship_country` VARCHAR(45) NULL AFTER `ship_state`,
ADD COLUMN `ship_zipcode` VARCHAR(45) NULL AFTER `ship_country`;



CREATE TABLE `store`.`category` (
  `idcategory` INT NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(75) NULL,
  `picture` BLOB NULL,
  `active` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategory`));


CREATE TABLE `store`.`products` (
  `idproducts` INT NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  `price` INT NULL,
  `status` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`idproducts`),
  UNIQUE INDEX `product_name_UNIQUE` (`product_name` ASC) VISIBLE);


CREATE TABLE `store`.`order_details` (
  `idorder_details` INT NOT NULL,
  `idproduct` INT NULL,
  `order_number` INT NULL,
  `price` INT NULL,
  `quantity` INT NULL,
  `total` INT NULL,
  `fulfilled` VARCHAR(45) NULL,
  `ship_date` DATETIME NULL,
  `bill_date` DATETIME NULL,
  `idorder` INT NULL,
  PRIMARY KEY (`idorder_details`));


CREATE TABLE `store`.`payment` (
  `idpayment` INT NOT NULL AUTO_INCREMENT,
  `payment_type` VARCHAR(45) NULL,
  `completed` VARCHAR(45) NULL,
  PRIMARY KEY (`idpayment`));


CREATE TABLE `store`.`orders` (
  `idorders` INT NOT NULL,
  `idcustomer` VARCHAR(45) NULL,
  `order_number` VARCHAR(45) NULL,
  `idpayment` VARCHAR(45) NULL,
  `ship_date` VARCHAR(45) NULL,
  `sales_tax` VARCHAR(45) NULL,
  `timestamp` DATETIME NULL,
  `transact_status` VARCHAR(45) NULL,
  PRIMARY KEY (`idorders`));
