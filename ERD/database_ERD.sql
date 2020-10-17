-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for erd_elections
CREATE DATABASE IF NOT EXISTS `erd_elections` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `erd_elections`;

-- Dumping structure for table erd_elections.2016_results_by_county
CREATE TABLE IF NOT EXISTS `2016_results_by_county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `CountyFips` int(11) DEFAULT NULL,
  `CountyName` varchar(255) DEFAULT NULL,
  `CountyTotalVote` int(11) DEFAULT NULL,
  `Candidate_id` int(11) DEFAULT NULL,
  `VoteCount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2016_results_by_county_states` (`state_id`),
  KEY `FK_2016_results_by_county_candidates` (`Candidate_id`),
  CONSTRAINT `FK_2016_results_by_county_candidates` FOREIGN KEY (`Candidate_id`) REFERENCES `candidates` (`candidate_id`),
  CONSTRAINT `FK_2016_results_by_county_states` FOREIGN KEY (`state_id`) REFERENCES `states` (`State_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15566 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.candidates
CREATE TABLE IF NOT EXISTS `candidates` (
  `candidate_id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.electoral_popular_vote_2016
CREATE TABLE IF NOT EXISTS `electoral_popular_vote_2016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `ELECTORAL_VOTE_R` varchar(255) DEFAULT NULL,
  `ELECTORAL_VOTE_D` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_electoral_popular_vote_2016_states` (`state_id`),
  CONSTRAINT `FK_electoral_popular_vote_2016_states` FOREIGN KEY (`state_id`) REFERENCES `states` (`State_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.parties
CREATE TABLE IF NOT EXISTS `parties` (
  `party_id` int(11) NOT NULL AUTO_INCREMENT,
  `party_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.parties_candidates
CREATE TABLE IF NOT EXISTS `parties_candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_parties_candidates_parties` (`party_id`),
  KEY `FK_parties_candidates_candidates` (`candidate_id`),
  CONSTRAINT `FK_parties_candidates_candidates` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`),
  CONSTRAINT `FK_parties_candidates_parties` FOREIGN KEY (`party_id`) REFERENCES `parties` (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.popularvotebystate_rep_dem
CREATE TABLE IF NOT EXISTS `popularvotebystate_rep_dem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `D_2016` varchar(255) DEFAULT NULL,
  `R_2016` varchar(255) DEFAULT NULL,
  `D_2012` varchar(255) DEFAULT NULL,
  `R_2012` varchar(255) DEFAULT NULL,
  `D_2008` varchar(255) DEFAULT NULL,
  `R_2008` varchar(255) DEFAULT NULL,
  `D_2004` varchar(255) DEFAULT NULL,
  `R_2004` varchar(255) DEFAULT NULL,
  `D_2000` varchar(255) DEFAULT NULL,
  `R_2000` varchar(255) DEFAULT NULL,
  `D_1996` varchar(255) DEFAULT NULL,
  `R_1996` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_popularvotebystate_rep_dem_states` (`state_id`),
  CONSTRAINT `FK_popularvotebystate_rep_dem_states` FOREIGN KEY (`state_id`) REFERENCES `states` (`State_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.registered_voters
CREATE TABLE IF NOT EXISTS `registered_voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `Total_Population` varchar(255) DEFAULT NULL,
  `Total_Citizen_Population` varchar(255) DEFAULT NULL,
  `Total_registered` varchar(255) DEFAULT NULL,
  `Total_voted` varchar(255) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_registered_voters_2016_state_id_code` (`state_id`),
  CONSTRAINT `FK_registered_voters_2016_state_id_code` FOREIGN KEY (`state_id`) REFERENCES `states` (`State_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table erd_elections.states
CREATE TABLE IF NOT EXISTS `states` (
  `State_id` int(11) NOT NULL AUTO_INCREMENT,
  `STATE` varchar(255) DEFAULT NULL,
  `StateCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`State_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
