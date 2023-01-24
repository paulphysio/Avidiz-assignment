-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Schema pollution_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pollution_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pollution_db ` ;




-- -----------------------------------------------------
-- Table `pollution_db `.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pollution_db `.`category` (
  `category_id` INT NULL DEFAULT NULL,
  `category_name` VARCHAR(255) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pollution_db `.`SCHEMAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pollution_db `.`SCHEMAS` (
  `MEASURE` VARCHAR(32) NULL DEFAULT NULL,
  `DESCRIPTION` VARCHAR(64) NULL DEFAULT NULL,
  `UNIT` VARCHAR(24) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pollution_db `.`STATIONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pollution_db `.`STATIONS` (
  `STATION_ID` INT NOT NULL,
  `LOCATION` VARCHAR(48) NULL DEFAULT NULL,
  `GEO_POINT_2D` INT NULL DEFAULT NULL,
  PRIMARY KEY (`STATION_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pollution_db `.`reading`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pollution_db `.`reading` (
  `reading_id` INT NOT NULL,
  `datetime` DATETIME NULL DEFAULT NULL,
  `NOx` FLOAT NULL DEFAULT NULL,
  `NO2` FLOAT NULL DEFAULT NULL,
  `NO` FLOAT NULL DEFAULT NULL,
  `PM10` FLOAT NULL DEFAULT NULL,
  `NVPM10` FLOAT NULL DEFAULT NULL,
  `VPM10` FLOAT NULL DEFAULT NULL,
  `MVPM2.5` FLOAT NULL DEFAULT NULL,
  `PM2.5` FLOAT NULL,
  `VPM2.5` FLOAT NULL,
  `CO` FLOAT NULL,
  `O3` FLOAT NULL,
  `SO2` FLOAT NULL,
  `TEMP` REAL NULL,
  `RH` INT NULL,
  `AIRPRESSURE` INT NULL,
  `DATESTART` DATETIME NULL,
  `DATEEND` DATETIME NULL,
  `CURRENT` TEXT(5) NULL,
  `INSTRUMENT TYPE` VARCHAR(32) NULL,
  `STATIONS_STATION_ID` INT NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_reading_STATIONS_idx` (`STATIONS_STATION_ID` ASC) VISIBLE,
  CONSTRAINT `fk_reading_STATIONS`
    FOREIGN KEY (`STATIONS_STATION_ID`)
    REFERENCES `exam`.`STATIONS` (`STATION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
