CREATE DATABASE  IF NOT EXISTS `landmarksdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `landmarksdb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: landmarksdb
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `CountryID` int NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(255) NOT NULL,
  `Continent` varchar(100) DEFAULT NULL,
  `Population` int DEFAULT NULL,
  `OfficialLanguage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','Europe',67081000,'French'),(2,'USA','North America',331893745,'English'),(3,'China','Asia',1444216107,'Mandarin'),(4,'Egypt','Africa',104258327,'Arabic'),(5,'Brazil','South America',213993437,'Portuguese'),(6,'Italy','Europe',59554023,'Italian'),(7,'Australia','Australia',25687041,'English'),(8,'India','Asia',1393409038,'Hindi'),(9,'Mexico','North America',130262216,'Spanish'),(10,'Japan','Asia',126050804,'Japanese'),(11,'Germany','Europe',83166711,'German'),(12,'Canada','North America',38008005,'English/French'),(13,'Russia','Europe/Asia',145912025,'Russian'),(14,'South Korea','Asia',51780579,'Korean'),(15,'Argentina','South America',45195774,'Spanish'),(16,'Spain','Europe',47351567,'Spanish'),(17,'Turkey','Asia/Europe',84339067,'Turkish'),(18,'South Africa','Africa',59308690,'Zulu'),(19,'United Kingdom','Europe',67886004,'English'),(20,'Indonesia','Asia',273523621,'Indonesian'),(21,'Jordan','Asia',10203140,'Arabic'),(22,'Greece','Europe',10724599,'Greek'),(23,'Chile','South America',19107216,'Spanish'),(24,'Peru','South America',33050325,'Spanish'),(25,'Cambodia','Asia',16718971,'Khmer'),(26,'Tanzania','Africa',59734213,'Swahili'),(27,'Zambia','Africa',18927715,'English'),(28,'United Arab Emirates','Asia',9890400,'Arabic'),(29,'Syria','Asia',17500657,'Arabic'),(30,'Malta','Europe',514564,'Maltese'),(31,'Thailand','Asia',69799978,'Thai'),(32,'Ireland','Europe',5000000,'English/Irish');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heritage_status`
--

DROP TABLE IF EXISTS `heritage_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heritage_status` (
  `HeritageStatusID` int NOT NULL AUTO_INCREMENT,
  `StatusName` varchar(255) NOT NULL,
  `Description` text,
  PRIMARY KEY (`HeritageStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heritage_status`
--

LOCK TABLES `heritage_status` WRITE;
/*!40000 ALTER TABLE `heritage_status` DISABLE KEYS */;
INSERT INTO `heritage_status` VALUES (1,'UNESCO World Heritage','A landmark recognized as a UNESCO World Heritage site'),(2,'National Heritage','A landmark of national cultural or historical importance'),(3,'Protected Area','A region protected for environmental or historical significance'),(4,'Archaeological Site','A site of archaeological significance'),(5,'Cultural Monument','A site representing cultural heritage'),(6,'Natural Landmark','A landmark of natural significance'),(7,'Historical Monument','A historically important monument'),(8,'Architectural Wonder','A significant architectural structure'),(9,'Museum Site','A landmark functioning as a museum or cultural display'),(10,'Religious Monument','A religiously significant landmark'),(11,'Ancient Ruins','Remains of an ancient civilization or city'),(12,'Modern Monument','A modern or contemporary site of importance'),(13,'War Memorial','A site built to commemorate war heroes'),(14,'Industrial Heritage','A site representing industrial history'),(15,'Palace or Castle','A royal palace or ancient castle site'),(16,'Sacred Site','A location of religious or spiritual importance'),(17,'Landmark of Discovery','A site related to significant discoveries'),(18,'Military Fortification','A site with historical military use'),(19,'Botanical Garden','A garden or natural reserve'),(20,'Pioneering Monument','A monument to pioneers or explorers'),(21,'UNESCO World Heritage','A landmark recognized as a UNESCO World Heritage site'),(22,'National Heritage','A landmark of national cultural or historical importance'),(23,'Protected Area','A region protected for environmental or historical significance'),(24,'Archaeological Site','A site of archaeological significance'),(25,'Cultural Monument','A site representing cultural heritage'),(26,'Natural Landmark','A landmark of natural significance'),(27,'Historical Monument','A historically important monument'),(28,'Architectural Wonder','A significant architectural structure'),(29,'Museum Site','A landmark functioning as a museum or cultural display'),(30,'Religious Monument','A religiously significant landmark'),(31,'Ancient Ruins','Remains of an ancient civilization or city'),(32,'Modern Monument','A modern or contemporary site of importance'),(33,'War Memorial','A site built to commemorate war heroes'),(34,'Industrial Heritage','A site representing industrial history'),(35,'Palace or Castle','A royal palace or ancient castle site'),(36,'Sacred Site','A location of religious or spiritual importance'),(37,'Landmark of Discovery','A site related to significant discoveries'),(38,'Military Fortification','A site with historical military use'),(39,'Botanical Garden','A garden or natural reserve'),(40,'Pioneering Monument','A monument to pioneers or explorers');
/*!40000 ALTER TABLE `heritage_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmark_group_visits`
--

DROP TABLE IF EXISTS `landmark_group_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landmark_group_visits` (
  `GroupVisitID` int NOT NULL AUTO_INCREMENT,
  `LandmarkID` int NOT NULL,
  `GroupID` int NOT NULL,
  `VisitDate` date NOT NULL,
  `GroupFeedback` text,
  PRIMARY KEY (`GroupVisitID`,`LandmarkID`,`GroupID`),
  KEY `LandmarkID` (`LandmarkID`),
  KEY `GroupID` (`GroupID`),
  CONSTRAINT `GroupID` FOREIGN KEY (`GroupID`) REFERENCES `visitor_groups` (`GroupID`),
  CONSTRAINT `LandmarkID` FOREIGN KEY (`LandmarkID`) REFERENCES `landmarks` (`LandmarkID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmark_group_visits`
--

LOCK TABLES `landmark_group_visits` WRITE;
/*!40000 ALTER TABLE `landmark_group_visits` DISABLE KEYS */;
INSERT INTO `landmark_group_visits` VALUES (1,1,1,'2023-07-15','The Eiffel Tower was an incredible experience for the whole group.'),(2,2,2,'2023-08-20','Educational visit to the Great Wall of China was insightful.'),(3,3,3,'2023-06-10','Cultural exchange program in Egypt, visiting the Pyramids was enlightening.'),(4,4,4,'2023-09-05','The Statue of Liberty visit was the highlight of the tour.'),(5,5,5,'2023-07-25','The research team found Christ the Redeemer inspiring for their studies.'),(6,7,6,'2023-09-12','Corporate group enjoyed networking at the Sydney Opera House.'),(7,8,7,'2023-10-15','Religious pilgrimage to the Taj Mahal was very spiritual.'),(8,6,8,'2023-11-02','The government delegation found the Colosseum fascinating.'),(9,13,9,'2023-07-18','Art enthusiasts loved the Red Square in Moscow.'),(10,10,10,'2023-08-25','Family enjoyed the view from Mount Fuji.'),(11,15,11,'2023-09-07','Nature lovers were impressed by Iguazu Falls.'),(12,17,12,'2023-06-14','Researchers explored the Sagrada Familia for architectural insights.'),(13,20,13,'2023-07-20','Historical society explored the ancient ruins of Borobudur.'),(14,12,14,'2023-09-01','Architectural group marveled at the Brandenburg Gate.'),(15,19,15,'2023-10-10','Music students performed at the Grand Palace.'),(16,16,16,'2023-11-08','Sports enthusiasts visited Big Ben during a marathon event.'),(17,14,17,'2023-07-30','Environmentalists were amazed by Table Mountain’s biodiversity.'),(18,11,18,'2023-09-25','Film crew captured the CN Tower for a documentary.'),(19,6,19,'2023-08-05','Culinary tourists explored the markets near the Colosseum.'),(20,9,20,'2023-11-15','Festival goers had a fantastic time at the Festival near Chichen Itza.');
/*!40000 ALTER TABLE `landmark_group_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmarks`
--

DROP TABLE IF EXISTS `landmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landmarks` (
  `LandmarkID` int NOT NULL AUTO_INCREMENT,
  `LandmarkName` varchar(255) NOT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `YearEstablished` int DEFAULT NULL,
  `Description` text,
  `CountryID` int NOT NULL,
  `HeritageStatusID` int DEFAULT NULL,
  PRIMARY KEY (`LandmarkID`),
  KEY `CountryID2` (`CountryID`),
  KEY `HeritageStatusID` (`HeritageStatusID`),
  CONSTRAINT `CountryID2` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`CountryID`),
  CONSTRAINT `HeritageStatusID` FOREIGN KEY (`HeritageStatusID`) REFERENCES `heritage_status` (`HeritageStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmarks`
--

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` VALUES (1,'Eiffel Tower','Paris',1889,'A wrought-iron lattice tower in Paris.',1,1),(2,'Great Wall of China','Beijing',-220,'A series of fortifications built to protect China.',3,1),(3,'Pyramids of Giza','Giza',-2580,'Ancient pyramid structures in Egypt.',4,1),(4,'Statue of Liberty','New York',1886,'A colossal statue symbolizing freedom in the USA.',2,1),(5,'Christ the Redeemer','Rio de Janeiro',1931,'A large statue of Jesus Christ in Brazil.',5,1),(6,'Colosseum','Rome',80,'An ancient amphitheater in Rome.',6,1),(7,'Sydney Opera House','Sydney',1973,'A multi-venue performing arts center in Australia.',7,1),(8,'Taj Mahal','Agra',1643,'A white marble mausoleum in India.',8,1),(9,'Chichen Itza','Yucatan',600,'A large pre-Columbian archaeological site.',9,1),(10,'Mount Fuji','Honshu',1707,'An active stratovolcano in Japan.',10,1),(11,'CN Tower','Toronto',1976,'A communications and observation tower in Canada.',12,1),(12,'Brandenburg Gate','Berlin',1791,'A neoclassical monument in Berlin.',11,1),(13,'Red Square','Moscow',1493,'A city square in Moscow.',13,1),(14,'Table Mountain','Cape Town',NULL,'A flat-topped mountain in South Africa.',18,6),(15,'Iguazu Falls','Misiones',NULL,'A large waterfall system in Argentina.',15,6),(16,'Big Ben','London',1859,'A clock tower in London.',19,1),(17,'Sagrada Familia','Barcelona',1882,'A large unfinished church in Barcelona.',16,1),(18,'Hagia Sophia','Istanbul',537,'A former Greek Orthodox Christian cathedral.',17,1),(19,'Grand Palace','Bangkok',1782,'A complex of buildings in Bangkok.',31,1),(20,'Borobudur','Magelang',800,'A 9th-century Mahayana Buddhist temple in Indonesia.',20,1),(41,'Louvre Museum','Paris',1793,'The world\'s largest art museum and a historic monument in Paris.',1,1),(42,'Notre-Dame Cathedral','Paris',1345,'A medieval Catholic cathedral in Paris.',1,1),(43,'Palace of Versailles','Versailles',1682,'A former royal residence located in Versailles.',1,1),(44,'Tiananmen Square','Beijing',1651,'A large city square in the center of Beijing, China.',3,1),(45,'Temple of Heaven','Beijing',1420,'A complex of religious buildings situated in the southeastern part of central Beijing.',3,1),(46,'Summer Palace','Beijing',1750,'A vast ensemble of lakes, gardens, and palaces in Beijing.',3,1),(47,'Brooklyn Bridge','New York',1883,'A hybrid cable-stayed/suspension bridge in New York City.',2,1),(48,'Empire State Building','New York',1931,'A 102-story Art Deco skyscraper in Midtown Manhattan, New York City.',2,1),(49,'Central Park','New York',1858,'An urban park in New York City.',2,1),(50,'Pantheon','Rome',-27,'A former Roman temple, now a church, in Rome.',6,1),(51,'Trevi Fountain','Rome',1762,'A famous Baroque fountain in Rome.',6,1),(52,'Piazza Navona','Rome',NULL,'A public space in Rome, built on the site of the Stadium of Domitian.',6,1),(53,'Christ Church Cathedral','Dublin',1030,'A cathedral in Dublin, Ireland, and the elder of the city\'s two medieval cathedrals.',32,1),(54,'Trinity College Library','Dublin',1592,'The library of Trinity College Dublin, the largest library in Ireland.',32,1),(55,'Cliffs of Moher','Liscannor',NULL,'Sea cliffs located in the southwestern edge of the Burren region in County Clare, Ireland.',32,6),(56,'Kiyomizu-dera','Kyoto',778,'An independent Buddhist temple in eastern Kyoto.',10,1),(57,'Fushimi Inari Shrine','Kyoto',711,'An important Shinto shrine in southern Kyoto.',10,1),(58,'Golden Pavilion (Kinkaku-ji)','Kyoto',1397,'A Zen Buddhist temple in Kyoto, Japan.',10,1),(59,'Moulin Rouge','Paris',1889,'A cabaret in Paris, known as the birthplace of the modern form of the can-can dance.',1,1),(60,'Arc de Triomphe','Paris',1836,'One of the most famous monuments in Paris.',1,1),(67,'Citadel of Aleppo','Aleppo',-3000,'A large medieval citadel located in Aleppo, Syria.',29,1),(68,'Edinburgh Castle','Edinburgh',1103,'A historic fortress which dominates the skyline of Edinburgh, Scotland.',19,1),(69,'Fort Sumter','Charleston',1829,'A sea fort in Charleston, South Carolina, known for two battles of the American Civil War.',2,1),(70,'Citadel of Cairo','Cairo',1176,'A medieval Islamic-era fortification in Cairo, Egypt.',4,1),(71,'Fort Saint Elmo','Valletta',1552,'A star fort in Valletta, Malta, built by the Knights Hospitaller.',30,1),(72,'Citadel of Quebec','Quebec City',1693,'An active military installation and a historic fortress in Quebec City, Canada.',12,1),(73,'Tower of London','London',1066,'A historic castle located on the north bank of the River Thames in central London.',19,1),(74,'Dover Castle','Dover',1068,'A medieval castle in Dover, Kent, known as the \"Key to England\".',19,1),(75,'Windsor Castle','Windsor',1070,'A royal residence in Berkshire, the oldest and largest occupied castle in the world.',19,1),(76,'Fortress of Xiangyang','Xiangyang',NULL,'A fortress city famous for its defense during the Yuan Dynasty.',3,1),(77,'Nanjing City Wall','Nanjing',1366,'A city fortification built to protect Nanjing, the capital of the early Ming dynasty.',3,1),(78,'Pingyao Ancient City','Pingyao',1370,'A well-preserved ancient walled city in China.',3,1),(79,'Leshan Giant Buddha Fort','Leshan',713,'A fortification overlooking the world\'s largest stone Buddha.',3,1),(80,'Fort Qaitbey','Alexandria',1477,'A 15th-century fortress located on the Mediterranean Sea coast in Alexandria, Egypt.',4,1);
/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_groups`
--

DROP TABLE IF EXISTS `visitor_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_groups` (
  `GroupID` int NOT NULL AUTO_INCREMENT,
  `CountryID` int NOT NULL,
  `GroupType` varchar(255) NOT NULL,
  `ApproximateGroupSize` int NOT NULL,
  `VisitPurpose` varchar(255) NOT NULL,
  PRIMARY KEY (`GroupID`),
  KEY `CountryID` (`CountryID`),
  CONSTRAINT `CountryID` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_groups`
--

LOCK TABLES `visitor_groups` WRITE;
/*!40000 ALTER TABLE `visitor_groups` DISABLE KEYS */;
INSERT INTO `visitor_groups` VALUES (1,1,'Tourist Group',50,'Leisure'),(2,2,'Student Group',30,'Educational'),(3,3,'Cultural Delegation',10,'Cultural Exchange'),(4,4,'Tourist Group',40,'Leisure'),(5,5,'Research Team',15,'Research'),(6,6,'Corporate Group',25,'Business'),(7,7,'Religious Pilgrimage',100,'Religious Pilgrimage'),(8,8,'Government Delegation',20,'Official Visit'),(9,9,'Art Enthusiasts',12,'Art and Culture'),(10,10,'Family Group',8,'Leisure'),(11,11,'Nature Lovers',30,'Environmental Awareness'),(12,12,'Scientific Researchers',10,'Research'),(13,13,'Historical Society',22,'Heritage Exploration'),(14,14,'Architectural Group',15,'Architectural Study'),(15,15,'Music Students',18,'Cultural Exchange'),(16,16,'Sports Enthusiasts',60,'Sports Event'),(17,17,'Environmentalists',35,'Ecological Awareness'),(18,18,'Film Crew',12,'Documentary Shooting'),(19,19,'Culinary Tourists',14,'Gastronomic Tour'),(20,20,'Festival Goers',50,'Cultural Festival');
/*!40000 ALTER TABLE `visitor_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 17:44:53
