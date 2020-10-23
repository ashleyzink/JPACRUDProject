-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema boardgamedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `boardgamedb` ;

-- -----------------------------------------------------
-- Schema boardgamedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `boardgamedb` DEFAULT CHARACTER SET utf8 ;
USE `boardgamedb` ;

-- -----------------------------------------------------
-- Table `boardgame`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `boardgame` ;

CREATE TABLE IF NOT EXISTS `boardgame` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS boardgameuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'boardgameuser'@'localhost' IDENTIFIED BY 'boardgameuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'boardgameuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `boardgame`
-- -----------------------------------------------------
START TRANSACTION;
USE `boardgamedb`;
INSERT INTO `boardgame` (`id`, `name`) VALUES (1, 'Seasons');

COMMIT;

