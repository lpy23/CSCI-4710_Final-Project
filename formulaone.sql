-- MySQL dump 10.19  Distrib 10.3.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: formulaone
-- ------------------------------------------------------
-- Server version	10.3.37-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Calendar`
--

DROP TABLE IF EXISTS `Calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendar` (
  `round` int(11) DEFAULT NULL,
  `gp_name` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `circuit_name` varchar(50) DEFAULT NULL,
  `race_date` date DEFAULT NULL,
  `first_gp` int(11) DEFAULT NULL,
  `number_of_laps` int(11) DEFAULT NULL,
  `circuit_length_km` float DEFAULT NULL,
  `race_distance_km` float DEFAULT NULL,
  `turns` int(11) DEFAULT NULL,
  `drs_zones` int(11) DEFAULT NULL,
  PRIMARY KEY (`gp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
INSERT INTO `Calendar` VALUES (22,'Abu Dhabi','Abu Dhabi','Yas Island','Yas Marina Circuit','2021-12-12',2009,58,5.281,306.183,16,2),(9,'Austria','Austria','Spielberg','Red Bull Ring','2021-07-18',1970,71,4.318,306.452,10,3),(6,'Azerbaijan','Azerbaijan','Baku','Baku City Circuit','2021-06-06',2016,51,6.003,306.049,20,2),(1,'Bahrain','Bahrain','Sakhir','Bahrain International Circuit','2021-03-28',2004,57,5.412,308.238,15,3),(12,'Belgium','Belgium','Spa-Francorchamps','Circuit de Spa-Francorchamps','2021-08-29',1950,44,7.004,308.052,19,2),(13,'Dutch','Netherlands','Zandvoort','Circuit Zandvoort','2021-09-05',1952,72,4.259,306.587,14,2),(2,'Emilia Romagna','Italy','Imola','Autodromo Enzo e Dino Ferrari','2021-04-18',1980,63,4.909,309.049,19,1),(7,'France','France','Le Castellet','Circuit Paul Ricard','2021-06-20',1971,53,5.842,309.69,15,2),(10,'Great Britain','Great Britain','Siverstone','Silverstone Circuit','2021-07-18',1950,52,5.891,306.198,18,2),(11,'Hungary','Hungary','Budapest','Hungaroring','2021-08-01',1986,70,4.381,306.63,14,1),(14,'Italy','Italy','Monza','Autodromo Nazionale Monza','2021-09-12',1950,53,5.793,306.72,11,2),(18,'Mexico','Mexico','Mexico City','Autodromo Hermanos Rodriguez','2021-11-07',1963,71,4.304,305.354,17,3),(5,'Monaco','Monaco','Monte Carlo','Circuit de Monaco','2021-05-23',1950,78,3.337,260.286,19,1),(3,'Portugal','Portugal','Portimao','Autodromo Internacional do Algarve','2021-05-02',2020,66,4.675,306.826,15,1),(20,'Qatar','Qatar','Losail','Losail International Circuit','2021-11-21',2021,57,5.38,306.66,16,1),(15,'Russia','Russia','Sochi','Sochi Autodrom','2021-09-26',2014,53,5.848,309.745,18,2),(19,'Sao Paulo','Brazil','Sao Paulo','Autodromo José Carlos Pace','2021-11-14',1973,71,4.309,305.879,15,2),(21,'Saudi Arabia','Saudi Arabia','Jeddah','Jeddah Corniche Circuit','2021-12-05',2021,50,6.174,308.45,27,3),(4,'Spain','Spain','Catalunya','Circuit de Barcelona-Catalunya','2021-05-09',1991,66,4.675,308.424,16,2),(8,'Styria','Austria','Spielberg','Red Bull Ring','2021-07-04',1970,71,4.318,306.452,10,3),(16,'Turkey','Turkey','Istanbul','Intercity Istanbul Park','2021-10-10',2005,58,5.338,309.396,14,2),(17,'United States','United States','Austin','Circuit of the Americas','2021-10-24',2012,56,5.513,308.405,20,2);
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drivers`
--

DROP TABLE IF EXISTS `Drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drivers` (
  `name` varchar(50) NOT NULL,
  `abbreviation` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `podiums` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `world_championships` int(11) DEFAULT NULL,
  `highest_grid_positions` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drivers`
--

LOCK TABLES `Drivers` WRITE;
/*!40000 ALTER TABLE `Drivers` DISABLE KEYS */;
INSERT INTO `Drivers` VALUES ('Antonio Giovinazzi','GIO',99,'Italy',0,21,0,7,'1993-12-14','Martina France, Italy'),('Carlos Sainz','SAI',55,'Spain',6,537,0,2,'1994-09-01','Madrid, Spain'),('Charles Leclerc','LEC',16,'Monaco',13,560,0,1,'1997-10-16','Monte Carlo, Monaco'),('Daniel Ricciardo','RIC',3,'Australia',32,1274,0,1,'1989-07-01','Perth, Australia'),('Esteban Ocon','OCO',31,'France',2,272,0,3,'1996-09-17','Evreux, Normandy'),('Fernando Alonso','ALO',14,'Spain',98,1980,2,1,'1981-07-29','Oviedo, Spain'),('George Russell','RUS',63,'United Kingdom',1,19,0,2,'1998-02-15','King\'s Lynn, England'),('Kimi Raikkönen','RAI',7,'Finland',103,1873,1,1,'1979-10-17','Espoo, Finland'),('Lance Stroll','STR',18,'Canada',3,176,0,1,'1998-10-29','Montreal, Canada'),('Lando Norris','NOR',4,'United Kingdom',5,306,0,1,'1999-11-13','Bristol, England'),('Lewis Hamilton','HAM',44,'United Kingdom',182,4266,7,1,'1985-01-07','Stevenage, England'),('Max Verstappen','VER',33,'Netherlands',60,1558,1,1,'1997-09-30','Hasselt, Belgium'),('Mick Schumacher','MSC',47,'Germany',0,0,0,14,'1999-03-22','Vufflens-le-Chateau, Switzerland'),('Nicholas Latifi','LAT',6,'Canada',0,7,0,10,'1995-06-29','Montreal, Canada'),('Nikita Mazepin','MAZ',9,'RAF',0,0,0,15,'1999-03-02','Moscow, Russia'),('Pierre Gasly','GAS',10,'France',3,309,0,2,'1996-02-07','Rouen, France'),('Robert Kubica','KUB',88,'Poland',12,274,0,1,'1984-12-07','Krakow, Poland'),('Sebastian Vettel','VET',5,'Germany',122,3061,4,1,'1987-07-03','Heppenheim, Germany'),('Sergio Perez','PER',11,'Mexico',15,896,0,2,'1990-01-26','Guadalajara, Mexico'),('Valtteri Bottas','BOT',77,'Finland',67,1738,0,1,'1989-08-28','Nastola, Finland'),('Yuki Tsunoda','TSU',22,'Japan',0,32,0,7,'2000-05-11','Sagamihara, Japan');
/*!40000 ALTER TABLE `Drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DrivesFor`
--

DROP TABLE IF EXISTS `DrivesFor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DrivesFor` (
  `driver` varchar(50) DEFAULT NULL,
  `team` varchar(50) DEFAULT NULL,
  KEY `driver` (`driver`),
  KEY `team` (`team`),
  CONSTRAINT `DrivesFor_ibfk_1` FOREIGN KEY (`driver`) REFERENCES `Drivers` (`name`),
  CONSTRAINT `DrivesFor_ibfk_2` FOREIGN KEY (`team`) REFERENCES `Teams` (`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DrivesFor`
--

LOCK TABLES `DrivesFor` WRITE;
/*!40000 ALTER TABLE `DrivesFor` DISABLE KEYS */;
INSERT INTO `DrivesFor` VALUES ('Lewis Hamilton','Mercedes'),('Valtteri Bottas','Mercedes'),('Max Verstappen','Red Bull'),('Sergio Perez','Red Bull'),('Charles Leclerc','Ferrari'),('Carlos Sainz','Ferrari'),('Lando Norris','McLaren'),('Daniel Ricciardo','McLaren'),('Esteban Ocon','Alpine'),('Fernando Alonso','Alpine'),('Pierre Gasly','AlphaTauri'),('Yuki Tsunoda','AlphaTauri'),('Lance Stroll','Aston Martin'),('Sebastian Vettel','Aston Martin'),('George Russell','Williams'),('Nicholas Latifi','Williams'),('Kimi Raikkönen','Alfa Romeo'),('Antonio Giovinazzi','Alfa Romeo'),('Mick Schumacher','Haas'),('Nikita Mazepin','Haas'),('Robert Kubica','Alfa Romeo');
/*!40000 ALTER TABLE `DrivesFor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Podiums`
--

DROP TABLE IF EXISTS `Podiums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Podiums` (
  `track` varchar(50) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  KEY `track` (`track`),
  KEY `driver` (`driver`),
  CONSTRAINT `Podiums_ibfk_1` FOREIGN KEY (`track`) REFERENCES `Calendar` (`gp_name`),
  CONSTRAINT `Podiums_ibfk_2` FOREIGN KEY (`driver`) REFERENCES `Drivers` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Podiums`
--

LOCK TABLES `Podiums` WRITE;
/*!40000 ALTER TABLE `Podiums` DISABLE KEYS */;
INSERT INTO `Podiums` VALUES ('Bahrain','Lewis Hamilton',1),('Bahrain','Max Verstappen',2),('Bahrain','Valtteri Bottas',3),('Emilia Romagna','Max Verstappen',1),('Emilia Romagna','Lewis Hamilton',2),('Emilia Romagna','Lando Norris',3),('Portugal','Lewis Hamilton',1),('Portugal','Max Verstappen',2),('Portugal','Valtteri Bottas',3),('Spain','Lewis Hamilton',1),('Spain','Max Verstappen',2),('Spain','Valtteri Bottas',3),('Monaco','Max Verstappen',1),('Monaco','Carlos Sainz',2),('Monaco','Lando Norris',3),('Azerbaijan','Sergio Perez',1),('Azerbaijan','Sebastian Vettel',2),('Azerbaijan','Pierre Gasly',3),('France','Max Verstappen',1),('France','Lewis Hamilton',2),('France','Sergio Perez',3),('Styria','Max Verstappen',1),('Styria','Lewis Hamilton',2),('Styria','Valtteri Bottas',3),('Austria','Max Verstappen',1),('Austria','Valtteri Bottas',2),('Austria','Lando Norris',3),('Great Britain','Lewis Hamilton',1),('Great Britain','Charles Leclerc',2),('Great Britain','Valtteri Bottas',3),('Hungary','Esteban Ocon',1),('Hungary','Lewis Hamilton',2),('Hungary','Carlos Sainz',3),('Belgium','Max Verstappen',1),('Belgium','George Russell',2),('Belgium','Lewis Hamilton',3),('Dutch','Max Verstappen',1),('Dutch','Lewis Hamilton',2),('Dutch','Valtteri Bottas',3),('Italy','Daniel Ricciardo',1),('Italy','Lando Norris',2),('Italy','Valtteri Bottas',3),('Russia','Lewis Hamilton',1),('Russia','Max Verstappen',2),('Russia','Carlos Sainz',3),('Turkey','Valtteri Bottas',1),('Turkey','Max Verstappen',2),('Turkey','Sergio Perez',3),('United States','Max Verstappen',1),('United States','Lewis Hamilton',2),('United States','Sergio Perez',3),('Mexico','Max Verstappen',1),('Mexico','Lewis Hamilton',2),('Mexico','Sergio Perez',3),('Sao Paulo','Lewis Hamilton',1),('Sao Paulo','Max Verstappen',2),('Sao Paulo','Valtteri Bottas',3),('Qatar','Lewis Hamilton',1),('Qatar','Max Verstappen',2),('Qatar','Fernando Alonso',3),('Saudi Arabia','Lewis Hamilton',1),('Saudi Arabia','Max Verstappen',2),('Saudi Arabia','Valtteri Bottas',3),('Abu Dhabi','Max Verstappen',1),('Abu Dhabi','Lewis Hamilton',2),('Abu Dhabi','Carlos Sainz',3);
/*!40000 ALTER TABLE `Podiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `team` varchar(50) NOT NULL,
  `full_team_name` varchar(50) DEFAULT NULL,
  `base` varchar(50) DEFAULT NULL,
  `team_chief` varchar(50) DEFAULT NULL,
  `technical_chief` varchar(50) DEFAULT NULL,
  `chassis` varchar(50) DEFAULT NULL,
  `power_unit` varchar(50) DEFAULT NULL,
  `first_team_entry` int(11) DEFAULT NULL,
  `world_championships` int(11) DEFAULT NULL,
  PRIMARY KEY (`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES ('Alfa Romeo','Alfa Romeo F1 Team ORLEN','Hinwil, Switzerland','Frédéric Vasseur','Jan Monchaux','C41','Ferrari',1993,0),('AlphaTauri','Scuderia AlphaTauri','Faenza, Italy','Franz Tost','Jody Egginton','AT02','Honda',1985,0),('Alpine','Alpine F1 Teams','Enstone, United Kingdom','Davide Brivio','Pat Fry / Remi Taffin','A521','Renault',1986,2),('Aston Martin','Aston Martin Cognizant Formula One Teams','Silverstone, United Kingdom','Otmar Szafnauer','Andrew Green','AMR21','Mercedes',2018,0),('Ferrari','Scuderia Ferrari','Maranello, Italy','Mattia Binotto','Enrico Cardile / Enrico Gualteri','SF21','Ferrari',1950,16),('Haas','Uralkali Haas F1 Teams','Kannapolis, United States','Guenther Steiner','Simone Resta','VF-21','Ferrari',2016,0),('McLaren','McLaren F1 Teams','Woking, United Kingdom','Andreas Seidl','James Key','MCL35M','Mercedes',1966,8),('Mercedes','Mercedes-AMG Petronas Formula One Teams','Brackley, United Kingdom','Toto Wolff','Mike Elliott','W12','Mercedes',1970,8),('Red Bull','Red Bull Racing','Milton Keynes, United Kingdom','Christian Horner','Pierre Waché','RB16B','Honda',1997,4),('Williams','Williams Racing','Grove, United Kingdom','Jost Capito','François-Xavier Demaison','FW43B','Mercedes',1978,9);
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 19:04:06
