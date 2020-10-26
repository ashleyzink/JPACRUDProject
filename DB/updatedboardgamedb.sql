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
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(5000) NULL,
  `min_players` INT NOT NULL,
  `max_players` INT NULL,
  `play_time` INT NULL,
  `category` VARCHAR(127) NULL,
  `house_rules` VARCHAR(1000) NULL,
  `cost` DECIMAL(12,2) NULL,
  `release_year` YEAR(4) NULL,
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
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (1, 'Seasons', 'Mages compete in tournament of the 12 seasons to become the new archmage', 2, 4, 60, 'Drafting', NULL, 32.21, 2012);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (2, 'Carcassonne', 'Shape the medieval landscape of France, claiming cities, monasteries and farms', 2, 5, 45, 'Eurogame', NULL, 45.08, 2000);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (3, 'Ticket To Ride', 'Build your railroad across North America to connect cities and collect tickets!', 2, 5, 60, 'Area Control', NULL, 12.21, 2004);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (4, 'Castles of Mad King Ludwig', 'Choose and play tiles to satisfy the king\'s whims and build the best fantasy castle', 1, 4, 90, 'Eurogame', NULL, 54.95, 2014);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (5, 'Small World', 'Control one fantasy race after another to expand quickly throughout the land', 2, 5, 80, 'Area Control', NULL, 49.99, 2009);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (6, 'Skyjo', 'A game of luck and strategy', 2, 8, 30, 'Card Game', NULL, 15.99, 2015);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (7, 'Merchants and Marauders', 'Live the life of an influential merchant or a dreaded pirate in the Caribbean', 2, 4, 180, 'Strategy', NULL, 49.97, 2010);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (8, 'Runebound', 'Adventure and gain life experience until you can beat the Dragon!', 2, 6, 240, 'Campaign', NULL, 64.59, 2005);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (9, 'Settlers of Catan', 'Collect and trade resources to build up the island of Catan in this modern classic', 3, 4, 120, 'Eurogame', NULL, 43.97, 1995);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (10, 'Clank', 'Claim your treasures but don\'t attract the dragon in this deck-building dungeon race', 2, 4, 60, 'Deckbuilder', NULL, 60.22, 2016);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (11, 'Pandemic', 'Your team of experts must prevent the world from succumbing to a viral pandemic', 2, 4, 45, 'Strategy', NULL, 42.07, 2008);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (12, 'Raiders of the North Sea', 'Assemble and prepare a formidable crew of vikings to pillage towns and gain glory', 2, 4, 80, 'Worker Placement', NULL, 38.44, 2015);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (13, 'Splendor', 'Renaissance merchants race to grab gems, acquire property, and please nobility', 2, 4, 30, 'Deckbuilder', NULL, 35.99, 2014);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (14, 'Sheriff of Nottingham', 'This is a game of deceit and bribery and it\'s great with the right group of players.', 3, 5, 60, 'Drafting', NULL, 45.99, 2014);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (15, 'Pathfinder Adventure Card Game', 'Level up your party in this card-and-dice fantasy campaign set in the land of Varisa', 1, 4, 90, 'Campaign', NULL, 95.99, 2013);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (16, 'Thurn and Taxis', 'Seek help from postal officials to build your delivery routes across Bavaria', 2, 4, 60, 'Worker Placement', NULL, 65.08, 2006);
INSERT INTO `boardgame` (`id`, `name`, `description`, `min_players`, `max_players`, `play_time`, `category`, `house_rules`, `cost`, `release_year`) VALUES (17, 'Bohnanza', 'Farm beans, harvest crops and trade your way to fortune in this card game classic', 2, 7, 45, 'Deckbuilder', NULL, 17.99, 1997);

COMMIT;

