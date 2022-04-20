CREATE DATABASE  IF NOT EXISTS `Hogwarts School of Magic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `Hogwarts School of Magic`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: Hogwarts School of Magic
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Class`
--

DROP TABLE IF EXISTS `Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Class` (
  `classID` varchar(15) NOT NULL,
  `className` varchar(50) DEFAULT NULL,
  `subjectID` varchar(10) DEFAULT NULL,
  `classLevelID` int(11) DEFAULT NULL,
  `professorID` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `scheduledDay` varchar(20) DEFAULT NULL,
  `classTime` time DEFAULT NULL,
  PRIMARY KEY (`classID`),
  KEY `classLevelID` (`classLevelID`),
  KEY `subjectID` (`subjectID`),
  KEY `professorID` (`professorID`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`classLevelID`) REFERENCES `classlevel` (`classlevelid`),
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`subjectID`) REFERENCES `subjects` (`subjectid`),
  CONSTRAINT `class_ibfk_3` FOREIGN KEY (`professorID`) REFERENCES `employee` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class`
--

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;
INSERT INTO `Class` VALUES ('ALCH-201','Alchemy I','ALCH',2,20,1,'Classroom 99','Monday','08:00:00'),('ALCH-301','Alchemy III','ALCH',3,20,1,'Classroom 99','Tuesday','09:00:00'),('ALCH-401','Alchemy III','ALCH',4,20,2,'Classroom 101','Wednesday','10:00:00'),('ALCH-501','Alchemy IV','ALCH',5,20,2,'Classroom 101','Thursday','13:00:00'),('ALCH-601','Alchemy V','ALCH',6,20,1,'Classroom 101','Friday','10:00:00'),('ANCR-201','Study of Ancient Runes I','ANCR',2,10,3,'Classroom 6A','Saturday','09:00:00'),('ANCR-301','Study of Ancient Runes II','ANCR',3,10,2,'Classroom 6A','Tuesday','08:00:00'),('ANCR-401','Study of Ancient Runes III','ANCR',4,10,2,'Classroom 6A','Thurday','11:00:00'),('ANCR-501','Study of Ancient Runes IV','ANCR',5,10,2,'Room of Runes','Friday','10:00:00'),('ANCR-601','Study of Ancient Runes V','ANCR',6,10,3,'Room of Runes','Monday','18:00:00'),('ANCR-701','Study of Ancient Runes VI','ANCR',7,10,3,'Room of Runes','Monday','08:00:00'),('ANST-401','Ancient Studies I','ANST',4,13,3,'Classroom 6A','Friday','08:00:00'),('ANST-501','Ancient Studies II','ANST',5,13,1,'Classroom 6A','Tuesday','08:00:00'),('ANST-601','Ancient Studies III','ANST',6,13,2,'Classroom 6A','Monday','11:00:00'),('ANST-701','Ancient Studies IV','ANST',7,13,1,'Classroom 6A','Saturday','01:00:00'),('ARTH-301','Arithmancy I','ARTH',3,29,2,'Classroom 7A','Tuesday','19:00:00'),('ASTR-101','Astronomy I','ASTR',1,8,3,'Astronomy Tower','Wednesday','00:00:00'),('ASTR-201','Astronomy II','ASTR',2,8,1,'Astronomy Tower','Monday','00:00:00'),('ASTR-301','Astronomy III','ASTR',3,8,3,'Astronomy Tower','Thursday','00:00:00'),('ASTR-401','Astronomy IV','ASTR',4,8,1,'Astronomy Tower','Friday','00:00:00'),('CHRM-101','Charms I','CHRM',1,16,2,'Classroom 2E','Tuesday','13:00:00'),('CHRM-201','Charms II','CHRM',2,16,2,'Classroom 2E','Friday','15:00:00'),('CHRM-301','Charms III','CHRM',3,16,1,'Classroom 2E','Monday','15:00:00'),('CHRM-401','Charms IV','CHRM',4,16,2,'Classroom 2E','Thursday','15:00:00'),('CHRM-501','Charms V','CHRM',5,16,3,'Classroom 2E','Saturday','12:00:00'),('CHRM-601','Charms VI','CHRM',6,16,1,'Classroom 2E','Monday','14:00:00'),('CHRM-701','Charms VII','CHRM',7,16,3,'Classroom 2E','Wednesday','09:00:00'),('COMC-201','Care of Magical Creatures I','COMC',2,28,3,'Classroom 8C','Thursday','14:00:00'),('COMC-301','Care of Magical Creatures II','COMC',3,28,2,'Classroom 8C','Saturday','14:00:00'),('COMC-401','Care of Magical Creatures III','COMC',4,28,2,'Castle Grounds','Friday','13:00:00'),('COMC-501','Care of Magical Creatures IV','COMC',5,28,3,'Castle Grounds','Wednesday','09:00:00'),('COMC-601','Care of Magical Creatures V','COMC',6,28,3,'Castle Grounds','Thursday','13:00:00'),('COMC-701','Care of Magical Creatures VI','COMC',7,28,2,'Castle Grounds','Tuesday','10:00:00'),('DADA-101','Defence Against the Dark Arts I','DADA',1,28,2,'Classroom 1A','Saturday','15:00:00'),('DADA-201','Defence Against the Dark Arts II','DADA',2,19,1,'Classroom 1A','Monday','16:00:00'),('DADA-301','Defence Against the Dark Arts III','DADA',3,27,1,'Classroom 1A','Wednesday','16:00:00'),('DADA-401','Defence Against the Dark Arts IV','DADA',4,5,1,'Classroom 1A','Tuesday','16:00:00'),('DADA-601','Defence Against the Dark Arts V','DADA',6,5,1,'Classroom 1A','Thursday','17:00:00'),('DADA-701','Defence Against the Dark Arts VI','DADA',7,14,2,'Classroom 1A','Friday','13:00:00'),('DIV-201','Divination I','DIV',2,32,3,'Divination Classroom','Thurday','10:00:00'),('DIV-301','Divination II','DIV',3,17,1,'Classroom 11','Monday','11:00:00'),('DIV-401','Divination III','DIV',4,32,2,'Divination Classroom','Wednesday','14:00:00'),('DIV-601','Divination IV','DIV',6,17,1,'Classroom 11','Friday','08:00:00'),('FLY-101','Flying I','FLY',1,45,2,'Training Grounds','Friday','11:00:00'),('HERB-101','Herbology I','HERB',1,25,2,'Classroom 102','Monday','08:00:00'),('HERB-201','Herbology II','HERB',2,25,3,'Herbology greenhouses','Friday','11:00:00'),('HERB-301','Herbology III','HERB',3,25,1,'Herbology greenhouses','Wednesday','13:00:00'),('HOM-101','History of Magic I','HOM',1,13,1,'Classroom 72','Tuesday','09:00:00'),('HOM-601','History of Magic II','HOM',6,14,1,'Classroom 4F','Saturday','15:00:00'),('MYTH-701','Mythology I','MYTH',7,13,3,'Classroom 10F','Thursday','14:00:00'),('PTNS-101','Potions I','PTNS',1,33,2,'Dungeons','Friday','10:00:00'),('PTNS-201','Potions II','PTNS',2,33,2,'Dungeons','Saturday','17:00:00'),('PTNS-301','Potions III','PTNS',3,33,2,'Dungeons','Monday','17:00:00'),('PTNS-401','Potions IV','PTNS',4,33,2,'Dungeons','Thursday','17:00:00'),('PTNS-501','Potions V','PTNS',5,33,2,'Dungeons','Wednesday','11:00:00'),('TNFG-101','Transfiguration I','TNFG',1,22,3,'Classroom 34','Tuesday','16:00:00'),('TNFG-201','Transfiguration II','TNFG',2,22,3,'Classroom 34','Friday','18:00:00'),('TNFG-301','Transfiguration III','TNFG',3,22,3,'Classroom 5F','Monday','18:00:00'),('TNFG-401','Transfiguration IV','TNFG',4,22,3,'Classroom 5F','Saturday','18:00:00'),('TNFG-501','Transfiguration V','TNFG',5,22,3,'Classroom 1B','Tuesday','14:00:00'),('TNFG-601','Transfiguration V','TNFG',6,22,3,'Classroom 1B','Thursday','16:00:00'),('TNFG-701','Transfiguration VI','TNFG',7,22,3,'Classroom 1B','Monday','15:00:00');
/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classLevel`
--

DROP TABLE IF EXISTS `classLevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classLevel` (
  `classLevelID` int(11) NOT NULL,
  `levelName` varchar(30) DEFAULT NULL,
  `levelDescription` text,
  PRIMARY KEY (`classLevelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classLevel`
--

LOCK TABLES `classLevel` WRITE;
/*!40000 ALTER TABLE `classLevel` DISABLE KEYS */;
INSERT INTO `classLevel` VALUES (1,'First Year','Core subjects are studied'),(2,'Second Year','Two additional subjects are taken in addition to the core subjects'),(3,'Third Year','Two additional subjects are taken in addition to the second year subjects'),(4,'Fourth Year','Preparation for O.W.L.S begins and continue taking same subjects as third year with option to drop an elective'),(5,'Fifth Year','Students give their O.W.L.S and determine what subjects to study in their sixth and seventh years'),(6,'Sixth Year','During sixth year, students advanced to N.E.W.T.-level classes'),(7,'Seventh Year','Concentrate on taking N.E.W.T. classes in chosen fields and continue same subjects from sixth year');
/*!40000 ALTER TABLE `classLevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Club`
--

DROP TABLE IF EXISTS `Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Club` (
  `ClubID` int(11) NOT NULL AUTO_INCREMENT,
  `ClubName` varchar(100) NOT NULL,
  `Room` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Club`
--

LOCK TABLES `Club` WRITE;
/*!40000 ALTER TABLE `Club` DISABLE KEYS */;
INSERT INTO `Club` VALUES (1,'Art Club for Gryffindor','Lower Art Room'),(2,'Astronomy Club','Astronomy Tower'),(3,'Castelobruxo Hippogriff Club','Hagrid\'s cabin'),(4,'Celestina Warbeck Fan Club','Slytherin commons'),(5,'Charms Club','Charms Classroom'),(6,'Chudley Cannons Fan Club','East tower'),(7,'Diagon Alley Arts Club','Diagon Alley arts room'),(8,'Divination homework meeting','Trelawney\'s office'),(9,'Dragon Club','Dungeons'),(10,'Duelling Clubs','Lockhart\'s office'),(11,'Dumbledore\'s army','Secret room'),(12,'Flavius Belby\'s local Gobstones club','hufflepuff commons'),(13,'Hans Fan Club','South tower'),(14,'Hippogriff Club','Forest area'),(15,'Hogwarts Ancient Runes Club','Historic hall'),(16,'Knitting Club','House Common rooms'),(17,'Magical Creatures (club)','Forest area'),(18,'Official Gobstones Club','Training Grounds'),(19,'Potions Club','Snape\'s office'),(20,'Rat Race Club','Gryffindor commons'),(21,'Slug Club','Slughorn\'s Office'),(22,'Slugs and Bugs Club','Slughorn\'s Office'),(23,'Sphinx Club','Northeast Tower'),(24,'Society for the Promotion of Elfish Welfare (S.P.E.W.) ','Kitchen'),(25,'Wizard Card Collectors\' Club','The Great hall'),(26,'Inquisitorial Squad','Norman library'),(27,'Quidditch Team','Quidditch fields'),(28,'Chess Club','Chess commons');
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Employee` (
  `employeeID` int(11) NOT NULL,
  `employeeFirstName` varchar(30) DEFAULT NULL,
  `employeeLastName` varchar(40) DEFAULT NULL,
  `gender` set('Male','Female') NOT NULL,
  `employeeType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Godric','Gryffindor','Male','Founder'),(2,'Rowena','Ravenclaw','Female','Founder'),(3,'Helga','Hufflepuff','Female','Founder'),(4,'Salazar','Slytherin','Male','Founder'),(5,'Albus','Dumbledore','Male','Headmaster'),(6,'Alecto','Carrow','Male','Professor'),(7,'Amycus','Carrow','Male','Professor'),(8,'Aurora','Sinistra','Female','Professor'),(9,'Professor','Bartholomew','Male','Professor'),(10,'Bathsheda','Babbling','Female','Professor'),(11,'Bartemius','Crouch','Male','Professor'),(12,'Charity','Burbage','Male','Professor'),(13,'Cuthbert','Binns','Male','Professor'),(14,'Dolores','Umbridge','Female','Professor'),(15,'Professor','Fortinbras','Male','Professor'),(16,'Filius','Flitwick','Male','Professor'),(17,'Professor','Firenze','Male','Professor'),(18,'Galatea','Merrythought','Female','Professor'),(19,'Gilderoy','Lockhart','Male','Professor'),(20,'Herbert','Beery','Male','Professor'),(21,'Horace','Slughorn','Male','Professor'),(22,'Minerva','McGonagall','Female','Professor'),(23,'Neville','Longbottom','Male','Professor'),(24,'Patricia','Rakepick','Female','Professor'),(25,'Pomona','Sprout','Female','Professor'),(26,'Quirinus','Quirrell','Male','Professor'),(27,'Remus','Lupin','Male','Professor'),(28,'Rubeus','Hagrid','Male','Professor'),(29,'Septima','Vector','Female','Professor'),(30,'Severus','Snape','Male','Professor'),(31,'Silvanus','Kettleburn','Male','Professor'),(32,'Sybill','Trelawney','Female','Professor'),(33,'Mulch','Higgins','Male','Professor'),(34,'Vindictus','Viridian','Male','Professor'),(35,'Wilhelmina','Grubbly-Plank','Female','Professor'),(36,'Professor','Swoopstikes','Male','Professor'),(37,'Arif','Sikander','Male','Professor'),(38,'Argus','Filch','Male','Caretaker'),(39,'Apollyon','Pringle','Male','Caretaker'),(40,'Poppy','Pomfrey','Female','Healer '),(41,'Nurse','Wainscott','Female','Healer'),(42,'Rubeus','Hagrid','Male','Gamekeeper '),(43,'Gamekeeper','Ogg','Male','Gamekeeper'),(44,'Lucinda','Thomsonicle-Pocus','Female','Chief Attendant of Witchcraft Provisions'),(45,'Rolanda','Hooch','Female','Referee and Flight Instructor'),(46,'Irma','Pince','Female','Librarian');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grade`
--

DROP TABLE IF EXISTS `Grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Grade` (
  `GradeID` int(11) NOT NULL AUTO_INCREMENT,
  `GradeLetter` varchar(2) NOT NULL,
  `GradeName` varchar(50) NOT NULL,
  `PassOrFail` varchar(5) NOT NULL,
  PRIMARY KEY (`GradeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grade`
--

LOCK TABLES `Grade` WRITE;
/*!40000 ALTER TABLE `Grade` DISABLE KEYS */;
INSERT INTO `Grade` VALUES (1,'O','Outstanding ','Pass'),(2,'E','Exceeds Expectations ','Pass'),(3,'A','Acceptable ','Pass'),(4,'P','Poor','Fail'),(5,'D','Dreadful ','Fail'),(6,'T','Troll','Fail');
/*!40000 ALTER TABLE `Grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `House`
--

DROP TABLE IF EXISTS `House`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `House` (
  `HouseID` int(11) NOT NULL AUTO_INCREMENT,
  `HouseName` varchar(15) NOT NULL,
  `Element` varchar(20) NOT NULL,
  `Matter` varchar(20) NOT NULL,
  `Colors` varchar(50) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `PatronGhost` varchar(50) DEFAULT NULL,
  `HeadOfHouse` varchar(50) NOT NULL,
  `CommonRoomLocation` varchar(100) NOT NULL,
  `Founder` varchar(50) NOT NULL,
  `ExpectedQualities` varchar(200) NOT NULL,
  PRIMARY KEY (`HouseID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House`
--

LOCK TABLES `House` WRITE;
/*!40000 ALTER TABLE `House` DISABLE KEYS */;
INSERT INTO `House` VALUES (1,'Gryffindor','Fire','Plasma','Scarlet\\Gold','Lion','Nearly Headless Nick','Minerva McGonagall','East Tower','Godric Gryffindor','bravery, daring, nerve, and chivalry'),(2,'Hufflepuff','Earth','Solid','Yellow\\Black','Badger','Fat Friar','Pomona Sprout','Basement','Helga Hufflepuff','hard work, dedication, patience, loyalty, and fair play'),(3,'Ravenclaw','Air','Gas','Blue\\Bronze','Eagle','Grey Lady','Filius Flitwick','West Tower','Rowena Ravenclaw','intelligence, knowledge, curiosity, creativity and wit'),(4,'Slytherin','Water','Liquid','Green\\Silver','Serpent','Bloody Baron','Severus Snape','Dungeons','Salazar Slytherin','ambition, leadership, self-preservation, cunning and resourcefulness');
/*!40000 ALTER TABLE `House` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pet`
--

DROP TABLE IF EXISTS `Pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Pet` (
  `petID` int(11) NOT NULL,
  `petname` varchar(30) DEFAULT NULL,
  `animalGroup` varchar(25) DEFAULT NULL,
  `breed` varchar(30) DEFAULT NULL,
  `ownerFirstName` varchar(50) DEFAULT NULL,
  `ownerMiddleName` varchar(50) DEFAULT NULL,
  `ownerLastName` varchar(50) DEFAULT NULL,
  `petCost` int(11) DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pet`
--

LOCK TABLES `Pet` WRITE;
/*!40000 ALTER TABLE `Pet` DISABLE KEYS */;
INSERT INTO `Pet` VALUES (1,'Fawkes','Bird','Phoenix','Albus','','Dumbledore',2000),(2,'Hedwig','Bird','Snowy owl','Harry','','Potter',600),(3,'Buckbeak','Bird(half)','Hippogriff','Rubeus','','Hagrid',900),(4,'Fang','Dog','Boarhound dog','Rubeus','','Hagrid',1200),(5,'Crookshanks','Cat','Ginger Himalayan cat','Hermione','','Granger',20),(6,'Pigwidgeon','Bird','Owl','Ronald','','Weasley',10),(7,'Arnold','Puff','Pygmy Puff','Ginny','','Weasley',5),(8,'Norbert','Dragon','Norwegian ridgeback ','Rubeus','','Hagrid',5000),(9,'Errol','Bird','Great gray owl','Weasley','','family',100),(10,'Fluffy','Dog','Three-headed','Rubeus','','Hagrid',30),(11,'Hermes','Bird','Screech Owl','Percy','','Weasley',35),(12,'Francis','Fish','Goldfish','Horace','','Slughorn',5),(13,'Mrs. Norris','Cat','Maine Coon','Argus','','Filch',25),(14,'Nagini','Snake','Burmese Python','Tom','Marvolo','Riddle',300),(15,'Trevor','Toad','Smooth Sided toad','Neville','','Longbottom',15),(16,'Blinky','Rabbit','Rhinelander ','Lavender','','Brown',20),(17,'Aragog','Spider','Acromantula','Rubeus','','Hagrid',40),(18,'Scabbers','Rat','Manx','Ronald','','Weasley',10);
/*!40000 ALTER TABLE `Pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Potion`
--

DROP TABLE IF EXISTS `Potion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Potion` (
  `PotionID` int(11) NOT NULL AUTO_INCREMENT,
  `PotionName` varchar(50) DEFAULT NULL,
  `PotionEffect` varchar(200) DEFAULT NULL,
  `ClassID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PotionID`),
  KEY `fk_Spell_Class_Id` (`ClassID`),
  CONSTRAINT `fk_Spell_Class_Id` FOREIGN KEY (`ClassID`) REFERENCES `class` (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Potion`
--

LOCK TABLES `Potion` WRITE;
/*!40000 ALTER TABLE `Potion` DISABLE KEYS */;
INSERT INTO `Potion` VALUES (1,'Ageing Potion','Potion that causes aging','PTNS-401'),(2,'Amortentia','Love Potion that causes a powerful infatuation or obsession in the drinker','PTNS-301'),(3,'Antidote to Veritaserum','Counters the effect of Veritaserum','PTNS-201'),(4,'Babbling Beverage','Allows the drinker to continuously speak for a short time','PTNS-401'),(5,'Baruffio\'s Brain Elixir','Improves the retntion capacity of the drinker\'s brain','PTNS-101'),(6,'Befuddlement Draught','Causes confusion','PTNS-401'),(7,'First Love Beguiling Bubbles','Causes the drinker to become infatuated with the giver of the potion','PTNS-101'),(8,'Fire Protection Potion','Helps to protect against dragon\'s fire','PTNS-301'),(9,'Tolipan Blemish Blitzer','Treats acne','PTNS-101'),(10,'Blood-Replenishing Potion','Replenishes lost blood','PTNS-201'),(11,'Bruise removal paste','Heals bruises in an hour','PTNS-401'),(12,'Bundimun Secretion','Doxycide','PTNS-101'),(13,'Burn-healing paste','Heals burns','PTNS-201'),(14,'Calming Draught','Calms the drinker','PTNS-401'),(15,'Caxambu Style Borborygmus Potion','Provokes stomach growling','PTNS-101'),(16,'Chelidonium Miniscula','Shrinks the drinker to the level of mouse','PTNS-201'),(17,'Confusing Concoction','Causes confusion','PTNS-401'),(18,'Cough potion','Cures coughing','PTNS-101'),(19,'Cupid Crystals','Causes the drinker to become infatuated with the giver of the potion','PTNS-301'),(20,'Cure for Boils','Heals boils','PTNS-401'),(21,'Death potion','Highly corrosive','PTNS-101'),(22,'Deflating Draught','Deflates the target','PTNS-401'),(23,'Developing solution','Develops moving photographs','PTNS-101'),(24,'Doxycide','Help breathe toxic fumes','PTNS-501'),(25,'Dr Ubbly\'s Oblivious Unction','Heals wounds left by thoughts','PTNS-201'),(26,'Draught of Living Death','Sends the drinker into a deathlike slumber','PTNS-401'),(27,'Draught of Peace','Relieves anxiety and agitation','PTNS-101'),(28,'Potion for Dreamless Sleep','Drowsiness','PTNS-501'),(29,'Emerald Potion','Induces fear, delirium, and extreme thirst','PTNS-301'),(30,'Elixir of Life','Immortality','PTNS-101'),(31,'Elixir to Euphoria','Induces a sense of inexplicable, irrational happiness upon the drinker','PTNS-401'),(32,'Everlasting Elixirs','Causes halucinations','PTNS-101'),(33,'Essence of Insanity','Induces insanity','PTNS-301'),(34,'Fake protective potions','Prank potions which do nothing','PTNS-401'),(35,'Felix Felicis','Makes the drinker lucky for a period of time','PTNS-101'),(36,'Fergus Fungal Budge','Creates a small mushroom that composts everything','PTNS-301'),(37,'Flesh-Eating Slug Repellent','Helps keep slugs away','PTNS-401'),(38,'Forgetfulness Potion','Causes forgetfulnes for a period of time','PTNS-101'),(39,'Garrotting Gas','Causes choking','PTNS-201'),(40,'Hair-Raising Potion','Causes hair to stand straight','PTNS-401'),(41,'Heartbreak Teardrops','Causes the drinker to become infatuated with the giver of the potion','PTNS-201'),(42,'Herbicide Potion','Kills weeds and pests','PTNS-301'),(43,'Hiccoughing Solution','Presumably causes hiccoughs','PTNS-101'),(44,'Invigoration Draught','boosts the drinker\'s energy','PTNS-501'),(45,'Honeywater','Simply honey mixed with water','PTNS-201'),(46,'Kissing Concoction','Causes the drinker to become infatuated with the giver of the potion','PTNS-101'),(47,'Laxative Potion','Will empty and cleanse the colon of the consumer ','PTNS-501'),(48,'Love Potion Antidote','Removes the effects of any love potion','PTNS-101'),(49,'Madame Glossy\'s Silver Polish','Polishes silver objects','PTNS-501'),(50,'Mandrake Restorative Draught','Returns transfigured or cursed individuals to their original state','PTNS-301'),(51,'Mouth Itching Antidote','Cures mouth itching','PTNS-501'),(52,'Mrs Skower\'s All-Purpose Magical Mess Remover','Cleans stains','PTNS-101'),(53,'Murtlap Essence','Soothes and heals cuts and abrasions','PTNS-501'),(54,'Pepperup Potion','Cured the common cold and warmed up the recipient','PTNS-201'),(55,'Polyjuice Potion','After addition of final ingredient: Taste and colour vary depending on the person being turned into\"\"','PTNS-501'),(56,'Tortinus Tonic','Cause immense pain','PTNS-101'),(57,'Rat tonic','Healing potion for rats','PTNS-501'),(58,'Regeneration potion','Helps heals burns','PTNS-101'),(59,'Rudimentary body potion','Helps to return an disformed or old body to its prime','PTNS-201'),(60,'Shrinking Solution','Causes the drinker to shrink','PTNS-501'),(61,'Skele-Gro','Able to mend broken bones or even regrow entire bones','PTNS-201'),(62,'Sleekeazy\'s Hair Potion','Hair care potion and scalp treatment','PTNS-301'),(63,'Sleeping Draught','Causes the drinker to fall into a deathlike slumber','PTNS-501'),(64,'Strengthening Solution','Allows the drinker to gain the strength of a giant','PTNS-101'),(65,'Swelling Solution','Causes swelling of entire body','PTNS-301'),(66,'Ten-Second Pimple Vanisher','Treats boils','PTNS-101'),(67,'Thick golden potion','Healing','PTNS-501'),(68,'Truth serum','Drinker tells the truth','PTNS-301'),(69,'Veritaserum','Forces drinker to speak the truth','PTNS-501'),(70,'Weedosoros','Highly poisonous','PTNS-101'),(71,'Wideye Potion','Prevents the drinker from falling asleep and can also be used to awaken someone from drugging or concussion','PTNS-301'),(72,'Wit-Sharpening Potion','Helps improve smartness','PTNS-201'),(73,'Wolfsbane Potion','Eases the symptoms of lycanthropy; prevents werewolves from losing their minds post-transformation.','PTNS-301'),(74,'Wound-cleaning potion','Antiseptic','PTNS-101');
/*!40000 ALTER TABLE `Potion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spell`
--

DROP TABLE IF EXISTS `Spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Spell` (
  `SpellID` int(11) NOT NULL AUTO_INCREMENT,
  `SpellName` varchar(100) DEFAULT NULL,
  `Incantation` varchar(100) DEFAULT NULL,
  `SpellType` varchar(50) DEFAULT NULL,
  `SpellEffect` varchar(200) DEFAULT NULL,
  `CastingLight` varchar(50) DEFAULT NULL,
  `ClassID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SpellID`),
  KEY `fk_Class_Id` (`ClassID`),
  CONSTRAINT `fk_Class_Id` FOREIGN KEY (`ClassID`) REFERENCES `class` (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spell`
--

LOCK TABLES `Spell` WRITE;
/*!40000 ALTER TABLE `Spell` DISABLE KEYS */;
INSERT INTO `Spell` VALUES (1,'Summoning Charm','Accio','Charm','Summons an object','Invisible','CHRM-301'),(2,'Age Line','','Charm','Prevents people above or below a certain age from access to a target','Blue','CHRM-401'),(3,'Water-Making Spell','Aguamenti','Charm','','Invisible','CHRM-501'),(4,'Launch an object up into the air','Alarte Ascendare','Charm','Rockets target upward','Red','CHRM-401'),(5,'Albus Dumbledore\'s Forceful Spell','','Spell','Great Force','Invisible','DADA-401'),(6,'Unlocking Charm','Alohomora','Charm','Unlocks target','Invisible','CHRM-501'),(7,'Healing Spell','Anapneo','Healing spell','','Invisible','HERB-201'),(8,'Hex that grows antlers on the head','Anteoculatia','Hex','Grows antlers on head','Red','DADA-201'),(9,'Anti-Cheating Spell','','Charm','Prevents cheating','Purple','CHRM-701'),(10,'Anti-Disapparition Jinx','','Jinx','Prevents Disapparition within a certain area','Invisible','DADA-201'),(11,'Anti-intruder jinx','','Jinx','Repels intruders','Invisible','DADA-401'),(12,'Antonin Dolohov\'s curse','','Curse','Injuries capable of killing','Purple','DADA-401'),(13,'Revealing Charm','Aparecium','Charm','Reveals hidden writing','Invisible','CHRM-301'),(14,'Tracking spell','Appare Vestigium','Charm','Reveals traces of magic','Invisible','CHRM-701'),(15,'Apparition','','Transportation','Magically transports the caster','Invisible','TNFG-401'),(16,'Aqua Eructo Charm','Aqua Eructo','Charm','Jet of water','Ice Blue','CHRM-601'),(17,'Spider repelling spell','Arania Exumai','Spell','Repels spiders','Blue','DADA-701'),(18,'Slowing Charm','Arresto Momentum','Charm','Slows or stops target\'s velocity','Invisible','CHRM-401'),(19,'Arrow-shooting spell','','Conjuration','Fires arrows from the caster\'s wand','Invisible','DADA-601'),(20,'Ascendio','Ascendio','Charm','Lifts caster','Invisible','CHRM-301'),(21,'Killing Curse','Avada Kedavra','Curse','Instantaneous death','Green','DADA-701'),(22,'Avifors Spell','Avifors','Transfiguration','Transforms the target into a bird.','Blue','TNFG-401'),(23,'Avenseguim','Avenseguim','Charm','Turns object into tracking device','Orange','CHRM-401'),(24,'Bird-Conjuring Charm','Avis','Conjuration','','Invisible','DADA-101'),(25,'Babbling Curse','','Curse','Uncontrollable babbling','Invisible','DADA-201'),(26,'Badgering','','Transfiguration','Turns target human into a badger','Invisible','TNFG-401'),(27,'Bat-Bogey Hex','','Hex','Transforms target\'s bogeys into bats','Invisible','DADA-201'),(28,'Baubillious','Baubillious','Charm','Jet of white sparks','White','CHRM-501'),(29,'Bedazzling Hex','','Hex','Disguises things','Invisible','DADA-201'),(30,'Bewitched Snowballs','','Charm','Charms snowballs to follow and harass a designated target','Invisible','CHRM-201'),(31,'Bluebell Flames','','Charm','Conjures bluebell flames','Bright blue','CHRM-201'),(32,'Blue sparks','','Charm','Jet of blue sparks','Blue','CHRM-701'),(33,'Exploding Charm','Bombarda','Charm','Small explosion','Invisible','CHRM-301'),(34,'Exploding Charm 2','Bombarda Maxima','Charm','Powerful explosion','White','CHRM-501'),(35,'Brackium Emendo','Brackium Emendo','Healing spell','','Invisible','HERB-101'),(36,'Bravery Charm','','Charm','Enhances teammates against foes','Invisible','CHRM-701'),(37,'Bridge-conjuring spell','','Conjuration','Conjures bridges','Invisible','DADA-301'),(38,'Broom jinx','','Jinx','Makes a broomstick attempt to buck its rider off','Invisible','DADA-201'),(39,'Bubble-Head Charm','','Charm','Creates bubble protecting the head','Invisible','CHRM-401'),(40,'Bubble-producing spell','','Conjuration','Creates a stream of non-bursting bubbles','Invisible','DADA-301'),(41,'Hair Loss Curse','Calvorio','Curse','Removes victim\'s hair','Red or Purple','DADA-401'),(42,'Cantis','Cantis','Jinx','Makes target sing','Pink','DADA-701'),(43,'Extension Charm','Capacious extremis','Charm','Increases interior space','Invisible','CHRM-601'),(44,'Seize and Pull Charm','Carpe Retractum','Charm','Pull caster towards object','Invisible','CHRM-301'),(45,'Cascading Jinx','','Jinx','Attacks multiple enemies','Blue','DADA-701'),(46,'Caterwauling Charm','','Charm','Sets off a high-pitched shriek if entered','Invisible','CHRM-201'),(47,'Cauldron to Sieve','','Transfiguration','Turns a cauldron into a sieve','Invisible','TNFG-101'),(48,'Cauldron to badger','','Transformation','Transforms a cauldron into a badger.','Invisible','TNFG-101'),(49,'Cave inimicum','Cave inimicum','Charm','Concealment','Invisible','CHRM-401'),(50,'Cheering Charm','','Charm','Creates joy','Invisible','CHRM-701'),(51,'Circumrota','Circumrota','Charm','Rotates an object','Invisible','CHRM-501'),(52,'Cistem Aperio','Cistem Aperio','Charm','Opens chests','White','CHRM-401'),(53,'Locking Spell','Colloportus','Charm','Locks doors','Invisible','CHRM-601'),(54,'Stickfast Hex','Colloshoo','Hex','Sticks shoes to floor','Invisible','DADA-201'),(55,'Colour Change Charm','Colovaria','Charm','Changes colour','Red','CHRM-201'),(56,'Blasting Curse','Confringo','Curse','Explosion','Fiery Orange','DADA-601'),(57,'Confundus Charm','Confundo','Charm','Confuses the target','Pink','CHRM-301'),(58,'Conjunctivitis Curse','','Curse','Irritates eyes','Invisible','DADA-701'),(59,'Cornflake skin spell','','Dark charm','Makes skin appear like cornflakes','Invisible','CHRM-701'),(60,'Cracker Jinx','','Jinx','Conjures exploding Wizard Crackers','Invisible','DADA-201'),(61,'Cribbing Spell','','Spell','Assists the caster in cheating on written papers.','Invisible','DADA-301'),(62,'Crinus Muto','Crinus Muto','Transfiguration','Transforms hair','White','TNFG-101'),(63,'Cruciatus Curse','Crucio','Curse','Excruciating pain','Red or None','DADA-101'),(64,'Gouging Spell','Defodio','Charm','Carves through material','Invisible','CHRM-401'),(65,'Eradication Spell','Deletrius','Charm','','Invisible','CHRM-201'),(66,'Densaugeo','Densaugeo','Hex','Elongates teeth','Violet','DADA-301'),(67,'Deprimo','Deprimo','Charm','Blasts holes in ground','Green','CHRM-501'),(68,'Banishing Charm','Depulso','Charm','Sends target away','White or Red','CHRM-301'),(69,'Descendo','Descendo','Charm','Lowers target','Blue','CHRM-601'),(70,'Desk Into Pig','','Transfiguration','Transfigures desks into pigs','Invisible','TNFG-101'),(71,'Deterioration Hex','','Hex','Impairs foes','Invisible','DADA-301'),(72,'Severing Charm','Diffindo','Charm','Cuts objects','Light green','CHRM-701'),(73,'Diminuendo','Diminuendo','Charm','Shrinks objects','White','CHRM-401'),(74,'Dissendium','Dissendium','Charm','Reveals secret passages','Invisible','CHRM-201'),(75,'Disillusionment Charm','','Charm','Disguises target as surroundings','White','CHRM-301'),(76,'Draconifors Spell','Draconifors','Transfiguration','Turns object into dragon','Fiery orange','TNFG-501'),(77,'Drought Charm','','Charm','Dries up small bodies of water','Invisible','CHRM-501'),(78,'Ducklifors Jinx','Ducklifors','Transfiguration','','Invisible','TNFG-301'),(79,'Hardening Charm','Duro','Charm','Turns object to stone','Invisible','CHRM-201'),(80,'Ears to kumquats','','Transfiguration','Transfigures target\'s ears into kumquats','Invisible','TNFG-501'),(81,'Ear-shrivelling Curse','','Curse','Causes ears to wither','Invisible','DADA-201'),(82,'Ebublio Jinx','Ebublio','Jinx','Traps target in giant bubble','Blue','DADA-301'),(83,'Engorgement Charm','Engorgio','Charm','Causes swelling','Icy blue','CHRM-401'),(84,'Engorgio Skullus','Engorgio Skullus','Hex','Swells head','Red or Purple','DADA-301'),(85,'Insect Jinx','Entomorphis','Transfiguration Jinx','Turns into insect','Red or Purple','TNFG-301'),(86,'Entrail-Expelling Curse','','Curse','Expels entrails','Invisible','DADA-301'),(87,'Epoximise','Epoximise','Transfiguration spell','Bonds two objects','Invisible','TNFG-501'),(88,'Erecto','Erecto','Charm','Erects a structure','Invisible','CHRM-201'),(89,'Evanesce','Evanesce','Transfiguration','Vanishes objects','Blueish white','TNFG-501'),(90,'Vanishing Spell','Evanesco','Transfiguration','Vanishes things','Invisible','TNFG-301'),(91,'Everte Statum','Everte Statum','Charm','Makes opponent stumble','Invisible','CHRM-301'),(92,'Patronus Charm','Expecto Patronum','Charm','Conjures a spirit guardian','Silver','CHRM-501'),(93,'Disarming Charm','Expelliarmus','Charm','Disarms an opponent','Scarlet','CHRM-401'),(94,'Expulso Curse','Expulso','Curse','Blows things up','Blue','DADA-301'),(95,'Extinguishing Spell','','Charm','Extinguishes fires','Invisible','CHRM-601'),(96,'False memory charm','','Charm','Implants a false memory in the victim','Invisible','CHRM-701'),(97,'Feather-light charm','','Charm','Minimises object\'s weight','Invisible','CHRM-201'),(98,'Ferret to human','','Transfiguration','Changes ferrets into humans','Invisible','TNFG-501'),(99,'Bandaging Charm','Ferula','Healing Spell','','Invisible','HERB-101'),(100,'Fianto Duri','Fianto Duri','Charm','Most likely hardens magical shields','Blueish white','CHRM-301'),(101,'Fidelius Charm','','Charm','Conceals a secret','Invisible','CHRM-501'),(102,'Fiendfyre','','Curse','Unleashes cursed fire','Fire','DADA-101'),(103,'Finestra spell','Finestra','Charm','Shatters glass','Blue','CHRM-601'),(104,'General Counter-Spell','Finite','Counter-spell','Terminates all spell effects','Red','DADA-201'),(105,'Finger-removing jinx','','Jinx','Removes a person\'s fingers','Invisible','DADA-301'),(106,'Firestorm','','Charm','Ring of fire','Crimson and gold','CHRM-201'),(107,'Flagrante Curse','Flagrante','Curse','Causes objects to burn on contact','Invisible','DADA-401'),(108,'Flagrate','Flagrate','Charm','Writes in midair','Fiery scarlet','CHRM-301'),(109,'Flame-Freezing Charm','','Charm','Makes fire harmless','White','CHRM-401'),(110,'Flask-conjuring spell','','Conjuration','Conjures flask','Invisible','DADA-601'),(111,'Flintifors','Flintifors','Transfiguration','Turns target into matchboxes','Invisible','TNFG-501'),(112,'Knockback Jinx','Flipendo','Jinx','Knocks target back','Blue','DADA-301'),(113,'Knockback Jinx Duo','Flipendo','Jinx','Knocks target back','Red','TNFG-601'),(114,'Flipendo Tria','Flipendo Tria','Jinx','More powerful version of Flipendo','Blue','DADA-601'),(115,'Flying Charm','','Charm','Allows an object to fly','Invisible','CHRM-501'),(116,'Smokescreen Spell','Fumos','Charm','Defensive smokescreen','Grey','CHRM-601'),(117,'Fumos Duo','Fumos Duo','Charm','Multiple concealing smokescreens','Dark Red','CHRM-401'),(118,'Pimple Jinx','Furnunculus','Jinx','Causes pimples to erupt','Gold','DADA-301'),(119,'Fur spell','','Charm','Causes fur to grow on someone','Invisible','CHRM-201'),(120,'Doubling Charm','Geminio','Charm','Duplicates an object','Invisible','CHRM-301'),(121,'Freezing Spell','Glacius','Charm','Freezes target','Blue','CHRM-101'),(122,'Glacius Duo','Glacius Duo','Charm','Freezes the target','Blue','CHRM-501'),(123,'Glacius Tria','Glacius Tria','Charm','Freezes target enemy','Blue','CHRM-101'),(124,'Glisseo','Glisseo','Charm','Turns stairs into a slide','Invisible','CHRM-301'),(125,'Green Sparks','','Charm','Jet of green sparks','Green','CHRM-101'),(126,'Gripping Charm','','Charm','Makes holding easier','Invisible','CHRM-401'),(127,'Hair-thickening Charm','','Charm','Causes hair to grow longer and thicker','Invisible','CHRM-601'),(128,'Harmonia Nectere Passus','Harmonia Nectere Passus','Charm','Repairs Vanishing Cabinets','Invisible','CHRM-301'),(129,'Herbifors Spell','Herbifors','Transfiguration','Transforms target into flowers','Red or Purple','TNFG-601'),(130,'Herbivicus Charm','Herbivicus','Charm','Rapidly grows plants','Green','CHRM-101'),(131,'Dumbledore\'s Army parchment jinx','','Jinx','Causes boils to spell \"SNEAK\"\" on the face of a traitor\"','Invisible','DADA-601'),(132,'Homing spell','','Dark Arts','Offensive spells; will follow their target','Orange or Green','DADA-701'),(133,'Human Presence Revealing Spell','Homenum Revelio','Charm','Reveals human presence','Invisible','CHRM-401'),(134,'Homonculous Charm','','Charm','When cast onto a map','Invisible','CHRM-501'),(135,'Homorphus Charm','','Charm','May temporarily change a transformed werewolf back into their human form','Invisible','CHRM-301'),(136,'Horn tongue hex','','Hex','Transforms target\'s tongue into a horn','Invisible','DADA-401'),(137,'Horton-Keitch Braking Charm','','Charm','Allow broomsticks to brake more easily','Invisible','CHRM-201'),(138,'Horcrux-making spell','','Dark Arts','Prepared a receptacle to become a Horcrux','Invisible','DADA-301'),(139,'Hot-Air Charm','','Charm','Jet of hot air','Invisible','CHRM-501'),(140,'Hour-Reversal Charm','','Charm','Reverses time','Blue','CHRM-101'),(141,'Hover Charm','','Charm','Makes objects hover','Pink','CHRM-401'),(142,'Hurling Hex','','Hex','Unclear','Invisible','DADA-401'),(143,'Illegibilus','Illegibilus','Charm','Makes text illegible','Invisible','CHRM-601'),(144,'Freezing Charm','Immobulus','Charm','Stops movement and actions of the target','Blue','CHRM-101'),(145,'Impediment Jinx','Impedimenta','Jinx','Hinders movement','Turquoise','DADA-401'),(146,'Imperius Curse','Imperio','Curse','Total control over the victim','Invisible','DADA-301'),(147,'Imperturbable Charm','','Charm','Invisible barrier','Invisible','CHRM-501'),(148,'Impervius Charm','Impervius','Charm','Waterproofs an object','Invisible','CHRM-101'),(149,'Inanimatus Conjurus Spell','','Transfiguration','Presumably conjuresinanimate objects','Invisible','TNFG-601'),(150,'Incarcerous Spell','Incarcerous','Conjuration','Binds target in ropes','Invisible','DADA-401'),(151,'Fire-Making Spell','Incendio','Charm','Conjures flames','Orange and Red','CHRM-301'),(152,'Incendio Duo Spell','Incendio','Charm','Conjures flames','Green','CHRM-401'),(153,'Incendio Tria','Incendio Tria','Charm','Conjures blue flames','Blue','CHRM-101'),(154,'Inflating Charm','Inflatus','Charm','Inflates target','Blue','CHRM-701'),(155,'Informous Spell','Informous','Charm','Adds to the Folio Bruti','Blue','CHRM-101'),(156,'Instant Scalping Hex','','Hex','Instantly scalps hair','Invisible','DADA-401'),(157,'Intruder Charm','','Charm','Detects intruders and sounds an alarm','Invisible','CHRM-501'),(158,'Jelly-Legs Curse','Locomotor Wibbly','Curse','','Invisible','DADA-301'),(159,'Jelly-Brain Jinx','','Jinx','Dulls mental abilities','Invisible','DADA-401'),(160,'Jelly-Fingers Curse','','Curse','Fingers become wobbly','Invisible','DADA-301'),(161,'Knee-reversal hex','','Hex','Puts knees on backward','Invisible','DADA-401'),(162,'Lacarnum Inflamari','Lacarnum Inflamari','Charm','Ignites cloaks','Orange','CHRM-101'),(163,'Langlock','Langlock','Jinx','Sticks tongue to roof of the mouth','Invisible','DADA-401'),(164,'Lapifors Spell','Lapifors','Transfiguration','Turns target into rabbit','Green','TNFG-601'),(165,'Leek jinx','','Jinx','Leeks sprout from ears','Invisible','DADA-401'),(166,'Legilimency Spell','Legilimens','Charm','Lets caster see into the mind of another person','Psychadelic transparent wave','CHRM-101'),(167,'Levicorpus','Levicorpus','Jinx','Suspends people by the ankles','Green','DADA-401'),(168,'Liberacorpus','Liberacorpus','Counter-jinx','Counteracts Levicorpus','Invisible','DADA-401'),(169,'Locomotion Charm','Locomotor','Charm','Moves objects in midair','Invisible','CHRM-101'),(170,'Leg-Locker Curse','Locomotor Mortis','Curse','Sticks legs together','Purple','DADA-101'),(171,'Wand-Lighting Charm','Lumos','Charm','Illuminates the wand tip','White','CHRM-301'),(172,'Wand-Lighting Charm Duo','Lumos Duo','Charm','Focused beam of light','White','CHRM-601'),(173,'Lumos Maxima','Lumos Maxima','Charm','Produces bright light','White','CHRM-401'),(174,'Lumos Solem Spell','Lumos Solem','Charm','Produces sunlight','Bright yellow','CHRM-101'),(175,'Magicus Extremos','Magicus Extremos','Charm','Temporarily increases casters\' spell power','Pink','CHRM-101'),(176,'Melofors Jinx','Melofors','Conjuration','','Invisible','DADA-201'),(177,'Meteolojinx Recanto','Meteolojinx Recanto','Counter-charm','Causes weather effects caused by incantations to cease','Invisible','DADA-401'),(178,'Tongue-Tying Curse','Mimblewimble','Curse','Ties tongue in knot','Blue','DADA-301'),(179,'Ministry of Magic Fog','','Patented Charm','Produces special fog (for concealment of certain locations)','Invisible','CHRM-701'),(180,'Mobiliarbus','Mobiliarbus','Charm','Levitates wooden things','Blue','CHRM-101'),(181,'Mobilicorpus','Mobilicorpus','Charm','Moves bodies','Invisible','CHRM-501'),(182,'Cushioning Charm','Molliare','Charm','Invisible cushion','Invisible','CHRM-101'),(183,'Dark Mark','Morsmordre','Curse','Conjures Dark Mark','Green','DADA-401'),(184,'Curse of the Bogies','Mucus ad Nauseam','Curse','Nasty cold & runny nose','Green','DADA-601'),(185,'Muffliato Charm','Muffliato','Charm','Conceals sound','Invisible','CHRM-301'),(186,'Multicorfors Spell','Multicorfors','Transfiguration','Changes clothes','Red','TNFG-701'),(187,'Mutatio Skullus','Mutatio Skullus','Hex','Grows extra heads','Invisible','DADA-401'),(188,'Wand-Extinguishing Charm','Nox','Charm','Extinguishes wandlight','Invisible','CHRM-401'),(189,'Nebulus','Nebulus','Charm','Conjures fog','Grey','CHRM-601'),(190,'Oculus Reparo','Oculus Reparo','Charm','Repairs glasses','Invisible','CHRM-101'),(191,'Obliteration Charm','','Charm','Removes footprints','Invisible','CHRM-301'),(192,'Memory Charm','Obliviate','Charm','Erases memories','Green','CHRM-101'),(193,'Obscuro','Obscuro','Conjuration','Blindfolds target','Invisible','DADA-701'),(194,'Oppugno Jinx','Oppugno','Jinx','Assaults target with directed object(s)','Invisible','DADA-401'),(195,'Orbis Jinx','Orbis','Jinx','Sucks the target into the ground','Blue','DADA-401'),(196,'Orchideous','Orchideous','Conjuration','Conjures flowers','Pink','DADA-301'),(197,'Oscausi','Oscausi','Dark charm','Seals mouth','White','CHRM-701'),(198,'Pack','Pack','Charm','Packs luggage','Invisible','CHRM-401'),(199,'Papyrus Reparo','Papyrus Reparo','Charm','Mends torn paper','Invisible','CHRM-101'),(200,'Patented Daydream Charm','','Charm','Makes the user daydream for 30 minutes','Invisible','CHRM-501'),(201,'Partis Temporus','Partis Temporus','Charm','Parts the target','Invisible','CHRM-101'),(202,'Pepper breath hex','','Hex','Inflicts fiery hot breath','Invisible','DADA-401'),(203,'Periculum','Periculum','Charm','Burst of red sparks','Red','CHRM-301'),(204,'Permanent Sticking Charm','','Charm','Sticks object permanently in place','Invisible','CHRM-601'),(205,'Peskipiksi Pesternomi','Peskipiksi Pesternomi','Charm','Nothing (supposedly captures pixies)','Invisible','CHRM-101'),(206,'Full Body-Bind Curse','Petrificus Totalus','Curse','Temporary Paralysis','White','DADA-301'),(207,'Piertotum Locomotor','Piertotum Locomotor','Charm','Animates target','None or Green','CHRM-301'),(208,'Piscifors','Piscifors','Transfiguration','Turns target into fish','Blue','TNFG-701'),(209,'Placement Charm','','Charm','Places object on target','Invisible','CHRM-101'),(210,'Four-Point Spell','Point Me','Spell','Wand points due north','Invisible','DADA-401'),(211,'Portus','Portus','Charm','Turns object into Portkey','Blue','CHRM-401'),(212,'Reverse Spell','Prior Incantato','Charm','Shows the previous spells cast by a wand','Gold','CHRM-101'),(213,'Protean Charm','','Charm','Links objects','Invisible','CHRM-301'),(214,'Shield Charm','Protego','Charm','Reflects spells and blocks physical forces','Invisible on its own','CHRM-101'),(215,'Protego Diabolica','Protego Diabolica','Dark Arts','Ring of protective black fire that only burns the caster\'s enemies whilst leaving their allies unharmed','Invisible','DADA-301'),(216,'Protego horribilis','Protego horribilis','Charm','Summons a powerful protective barrier','Invisible','CHRM-601'),(217,'Protego Maxima','Protego Maxima','Charm','Summons a large protective barrier','White','CHRM-301'),(218,'Protego totalum','Protego totalum','Charm','Shields an area','Invisible','CHRM-501'),(219,'Purple Firecrackers','','Charm','Exploding firecrackers','Invisible','CHRM-401'),(220,'Pus-squirting hex','','Hex','Causes yellowish goo to squirt from one\'s nose','None (bang)','DADA-401'),(221,'Quietening Charm','Quietus','Charm','Quietens target','Invisible','CHRM-101'),(222,'Head Shrink Spell','Redactum Skullus','Hex','','Invisible','DADA-401'),(223,'Shrinking Charm','Reducio','Charm','Shrinks target','Purple','CHRM-701'),(224,'Reductor Curse','Reducto','Curse','Destroys solid objects','Blue','DADA-401'),(225,'Refilling Charm','','Charm','Refills beverage containers','Invisible','CHRM-301'),(226,'Reparifors','Reparifors','Healing spell','','Invisible','DADA-401'),(227,'Reverte','Reverte','Charm','Returns objects to their original positions or states','Invisible','CHRM-101'),(228,'Revulsion Jinx','Relashio','Jinx','Forces target to let go','Purple','DADA-701'),(229,'Reviving Spell','Rennervate','Charm','Awakens victim','Red','CHRM-401'),(230,'Reparifarge','Reparifarge','Untransfiguration','Reverses the effects of an incomplete Transformation spell','White','DADA-701'),(231,'Mending Charm','Reparo','Charm','Fixes broken objects','Invisible','CHRM-601'),(232,'Muggle-Repelling Charm','Repello Muggletum','Charm','Repels Muggles','None (haze)','CHRM-101'),(233,'Repello Inimicum','Repello Inimicum','Charm','Repels enemies. If used with Protego Maxima and Fianto Duri','Invisible','CHRM-101'),(234,'Revelio Charm','Revelio','Charm','Reveals secrets about a person or object','Blue','CHRM-501'),(235,'Tickling Charm','Rictusempra','Charm','Tickles and weakens','Silver','CHRM-101'),(236,'Boggart-Banishing Spell','Riddikulus','Charm','Turns a Boggart into something amusing','None','CHRM-301'),(237,'Rose Growth','','Charm','','Invisible','CHRM-201'),(238,'Rowboat spell','','Charm','Causes a rowboat to propel itself.','Invisible','CHRM-601'),(239,'Salvio hexia','Salvio hexia','Charm','Hex deflection','None (haze)','CHRM-401'),(240,'Sardine hex','','Hex','Victim sneezes sardines','Invisible','DADA-701'),(241,'Sauce-making spell','','Conjuration','Conjures sauce','Invisible','DADA-601'),(242,'Minerva McGonagall\'s fire-creating spell','','Spell','Creates fire','Orange','DADA-701'),(243,'Scouring Charm','Scourgify','Charm','Cleans objects','Invisible','CHRM-701'),(244,'Sealant Charm','','Charm','Seals envelopes','Invisible','CHRM-301'),(245,'Sea urchin jinx','','Transfiguration jinx','Makes tiny spikes erupt all over the victim','Invisible','TNFG-701'),(246,'Sectumsempra','Sectumsempra','Curse','Lacerates target','White','DADA-701'),(247,'Shield penetration spell','','Spell','Used to break down magical shields','Blueish white','DADA-601'),(248,'Shooting spell','','Spell','Small explosion with a gunshot-sound','Invisible','DADA-401'),(249,'Smashing spell','','Curse','Explosive','Blue','DADA-101'),(250,'Snake Summons Spell','Serpensortia','Conjuration','Conjures snake','White','DADA-201'),(251,'Silencing Charm','Silencio','Charm','Silences target','Invisible','CHRM-201'),(252,'Skurge Charm','Skurge','Charm','Cleans ectoplasm','Invisible','CHRM-401'),(253,'Slippery Jinx','','Jinx','Makes object slippery','Invisible','DADA-701'),(254,'Slug-vomiting Charm','Slugulus Eructo','Curse','Victim vomits slugs','Green','DADA-301'),(255,'Sonorous Charm','','Charm','Emits a magnified roar from the tip of the wand','Orange','CHRM-201'),(256,'Amplifying Charm','Sonorus','Charm','Loudens target','Invisible','CHRM-501'),(257,'Specialis Revelio','Specialis Revelio','Charm','Reveals spells cast on objects or potions','Invisible','CHRM-301'),(258,'Sponge-Knees Curse','','Curse','Causes the target\'s legs to become spongy','Invisible','DADA-401'),(259,'Softening Charm','Spongify','Charm','Softens objects','Purple or Orange','CHRM-601'),(260,'Squiggle Quill','','Transfiguration','Transfigures writing quills into worms','Invisible','TNFG-201'),(261,'Stealth Sensoring Spell','','Spell','Detects those under magicaldisguise.','Invisible','DADA-601'),(262,'Steleus','Steleus','Hex','Causes target to sneeze','Green','DADA-601'),(263,'Stinging Jinx','','Jinx','','Invisible','DADA-401'),(264,'Stretching Jinx','','Jinx','Expands the target','Invisible','DADA-601'),(265,'Stunning Spell','Stupefy','Charm','Knocks out target','Red','CHRM-201'),(266,'Supersensory Charm','','Charm','Superior perception','Invisible','CHRM-301'),(267,'Surgito','Surgito','Counter-charm','Removes enchantments','Invisible','DADA-601'),(268,'Switching Spell','','Transfiguration','Switches two objects','White','TNFG-201'),(269,'Taboo','','Curse','When a word is spoken','Invisible','DADA-601'),(270,'Tail-growing hex','','Hex','Gives the victim a tail','Invisible','DADA-601'),(271,'Dancing Feet Spell','Tarantallegra','Jinx','Sends legs out of control','Invisible','DADA-601'),(272,'Teacup to tortoise','','Transfiguration','Transforms a teacup into a tortoise','Blue','TNFG-201'),(273,'Teapot to tortoise','','Transfiguration','Transforms a teapot into a tortoise','Orange','TNFG-201'),(274,'Teeth-straightening spell','','Charm','Straightens teeth','Invisible','CHRM-601'),(275,'Teleportation spell','','Spell','Makes objects teleport elsewhere','Invisible','DADA-601'),(276,'Tentaclifors','Tentaclifors','Transfiguration Jinx','Turns victim\'s head into tentacle','Purple','TNFG-301'),(277,'Tergeo','Tergeo','Charm','Cleans up objects','Invisible','CHRM-501'),(278,'Tickling Hex','Titillando','Hex','Tickles and weakens','Purple','DADA-601'),(279,'Toenail-growing hex','','Hex','Causes its victim\'s toenails to grow alarmingly fast','Invisible','DADA-601'),(280,'Transmogrifian Torture','','Curse','Tortures','Invisible','DADA-701'),(281,'Trip Jinx','','Jinx','Trips victim','Invisible','DADA-401'),(282,'Twitchy-Ears Hex','','Hex','Makes victim\'s ears twitch','Invisible','DADA-601'),(283,'Unbreakable Charm','','Charm','Makes object unbreakable','Invisible','CHRM-301'),(284,'Unbreakable Vow','','Spell','Magical vow that is fatal if broken','Red','DADA-601'),(285,'Unsupported flight','','Spell','Allows a witch or wizard to fly unaided','Invisible','DADA-401'),(286,'Vacuum cleaner spell','','Charm','Cleans an object like a vacuum cleaner','Invisible','CHRM-401'),(287,'Ventus Jinx','Ventus','Jinx','Jet of spiralling wind','Grey','DADA-601'),(288,'Ventus Duo','Ventus Duo','Jinx','Creates a stronger jet of wind compared to Ventus','Invisible','DADA-601'),(289,'Vera Verto','Vera Verto','Transfiguration','Transforms animals into water goblets','Crystal clear','TNFG-701'),(290,'Verdillious','Verdillious','Charm','Causes the wand tip to burn like a sparkler whilst damaging the foe.','Green','CHRM-701'),(291,'Verdimillious Charm','Verdimillious','Charm','Emits green sparks from the wand that can: Do damage to opponents','Invisible','CHRM-301'),(292,'Verdimillious Duo Spell','Verdimillious','Charm','Emits green sparks from the wand that can: Do damage to opponents','Invisible','CHRM-301'),(293,'Vermiculus Jinx','Vermiculus','Jinx','Turns things into worms','Yellow','DADA-401'),(294,'Red Sparks','Vermillious','Charm','Jet of red sparks','Red','CHRM-601'),(295,'Snake-Vanishing Spell','Vipera Evanesca','Vanishment','Vanishes snakes','Black smoke','DADA-401'),(296,'Vulnera Sanentur','Vulnera Sanentur','Healing spell','','Invisible','HERB-301'),(297,'Waddiwasi','Waddiwasi','Jinx','Propels wad at the target','Invisible','DADA-601'),(298,'Washing up spell','','Charm','Cleans dishes','Invisible','CHRM-301'),(299,'Levitation Charm','Wingardium Leviosa','Charm','Makes objects fly','Invisible','CHRM-501'),(300,'White sparks','','Charm','Jet of white sparks','White','CHRM-401'),(301,'Episkey','Episkey','Healing spell','','Invisible','HERB-301');
/*!40000 ALTER TABLE `Spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Student` (
  `studentID` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `middleName` varchar(20) DEFAULT NULL,
  `lastName` varchar(40) DEFAULT NULL,
  `gender` set('Male','Female') NOT NULL,
  `bloodStatus` varchar(30) DEFAULT NULL,
  `hairColor` varchar(20) DEFAULT NULL,
  `eyeColor` varchar(20) DEFAULT NULL,
  `houseID` int(11) DEFAULT NULL,
  `classLevelID` int(11) DEFAULT NULL,
  `gradeID` int(11) DEFAULT NULL,
  `clubID` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  KEY `classLevelID` (`classLevelID`),
  KEY `houseID` (`houseID`),
  KEY `gradeID` (`gradeID`),
  KEY `clubID` (`clubID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classLevelID`) REFERENCES `classlevel` (`classlevelid`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`houseID`) REFERENCES `house` (`houseid`),
  CONSTRAINT `student_ibfk_3` FOREIGN KEY (`gradeID`) REFERENCES `grade` (`gradeid`),
  CONSTRAINT `student_ibfk_4` FOREIGN KEY (`clubID`) REFERENCES `club` (`clubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,'Harry','James','Potter','Male','Half-blood','Black','Bright green',1,1,4,18),(2,'Ronald','Bilius','Weasley','Male','Pure-blood','Red','Blue',1,1,1,28),(3,'Hermione','Jean','Granger','Female','Muggle-born','Brown','Brown',1,1,6,8),(4,'Neville','','Longbottom','Male','Pure-blood','Blond','Black',1,6,4,28),(5,'Fred','','Weasley','Male','Pure-blood','Red','Brown',1,3,5,4),(6,'George','','Weasley','Male','Pure-blood','Red','Brown',1,5,5,23),(7,'Ginevra','Molly','Weasley','Female','Pure-blood','Red','Bright brown',1,4,1,1),(8,'Dean','','Thomas','Male','Muggle-born','Black','Brown',1,2,4,18),(9,'Seamus','','Finnigan','Male','Half-blood','Sandy','Gray',1,3,4,13),(10,'Lee','','Jordan','Male','Pure-blood','Black','Brown',1,1,3,27),(11,'Oliver','','Wood','Male','Pure-blood','Black','Brown',1,2,1,28),(12,'Angelina','','Johnson','Female','Pure-blood','Brown','Brown',1,1,3,7),(13,'Katie','','Bell','Female','Half-blood','Brown','Brown',1,3,4,17),(14,'Alicia','','Spinnet','Female','Half-blood','Brown','Brown',1,4,3,17),(15,'Lavender','','Brown','Female','Pure-blood','Blond','Blue',1,7,1,23),(16,'Parvati','','Patil','Female','Half-blood','Dark','Dark',1,5,5,3),(17,'Romilda','','Vane','Female','Pure-blood ','Black','Dark',1,6,4,26),(18,'Colin','','Creevey','Male','Muggle-born','Sandy','Blue',1,1,4,28),(19,'Cormac','','McLaggen','Male','Half-blood','Blond','Hazel',1,2,6,3),(20,'Cho','','Chang','Female','Pure-blood','Black','Dark',3,1,2,5),(21,'Luna','','Lovegood','Female','Half-blood','Dirty-blonde','Pale silvery',3,4,3,16),(22,'Myrtle','Elizabeth','Warren','Female','Muggle-born','Blonde','Gray',3,3,1,15),(23,'Padma','','Patil','Female','Half-blood','Dark','Dark',3,4,2,9),(24,'Michael','','Corner','Male','Half-blood','Black','Brown',3,2,1,13),(25,'Marietta','','Edgecombe','Female','Pure-blood ','Reddish-blonde','Grey',3,1,1,22),(26,'Terry','','Boot','Male','half-blood','Sandy','Amber',3,6,1,15),(27,'Anthony','','Goldstein','Male','Half-blood','Blonde','Grey',3,3,4,25),(28,'Draco','','Malfoy','Male','Pure-blood','White-blond','Grey',4,4,2,1),(29,'Vincent','','Crabbe','Male','Pure-blood','Black','Black',4,2,1,21),(30,'Gregory','','Goyle','Male','Pure-blood','Brown','Gray',4,6,3,23),(31,'Pansy','','Parkinson','Female','Half-blood','Black','Hazel',4,3,6,27),(32,'Blaise','','Zabini','Male','Half-blood','Black','Brown',4,2,4,6),(33,'Tom','Marvolo','Riddle','Male','Half-blood','Bald','Scarlet',4,1,3,11),(34,'Theodore','','Nott','Male','Pure-blood','Brown','Brown',4,3,5,28),(35,'Millicent','','Bulstrode','Female','Half-blood','Black','Brown',4,6,2,21),(36,'Graham','','Montague','Male','half-blood','Brown','Brown',4,1,2,23),(37,'Marcus','','Flint','Male','Pure-blood','Black','Amber',4,4,3,3),(38,'Penelope','','Clearwater','Female','Muggle-born ','Blonde','Amber',3,2,5,8),(39,'Roger','','Davies','Male','Pure-blood','Dark','Dark',3,4,1,15),(40,'Marcus','','Belby','Male','Pure-blood ','Brown','Dark',3,7,5,19),(41,'Cedric','','Diggory','Male','Half-blood','Blonde','Hazel',2,2,6,27),(42,'Justin','','Finch-Fletchley','Male','Muggle-born','Red','Amber',2,3,2,18),(43,'Zacharias','','Smith','Male','half-blood','Blonde','Black',2,1,5,21),(44,'Hannah','','Abbott','Female','Half-blood','Blonde','Brown',2,6,4,15),(45,'Ernest','','Macmillan','Male','Pure-blood','Blond','Blue',2,7,2,27),(46,'Susan','','Bones','Female','Half-blood','Red','Gray',2,3,2,26),(47,'Dennis','','Creevey','Male','Muggle-born','Brown','Blue',1,2,6,21),(48,'Albus','Severus','Potter','Male','Half-blood','Jet-black','Bright green',4,3,6,16),(49,'Scorpius','Hyperion','Malfoy','Male','Pure-blood','White blond','Gray',4,2,1,14),(50,'Edward','Remus','Lupin','Male','Half-blood','Brown','Brown',2,4,4,3),(51,'James','Sirius','Potter','Male','Half-blood','Black','Black',1,6,1,20),(52,'Rose','','Granger-Weasley','Female','Half-blood','Red','Blue',1,1,2,20);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subjects`
--

DROP TABLE IF EXISTS `Subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Subjects` (
  `subjectID` varchar(10) NOT NULL,
  `subjectName` varchar(30) DEFAULT NULL,
  `subjectType` varchar(30) DEFAULT NULL,
  `RequiredTextbook` text,
  `requiredEquipment` text,
  `subjectDescription` text,
  PRIMARY KEY (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subjects`
--

LOCK TABLES `Subjects` WRITE;
/*!40000 ALTER TABLE `Subjects` DISABLE KEYS */;
INSERT INTO `Subjects` VALUES ('AAS','Advanced Arithmancy Studies','Elective','Numerology and Grammatica','Books, Parchment, Quill','Method of predicting the future using numbers, \"with \"\"bit of numerology\"\" as well\"'),('ALCH','Alchemy','Elective','Alchemy and its Secrets','Cauldron, Wand, Books','Study of nature\'s four basic elements (fire, earth, air, and water), as well as the transmutation of substances (such as base metals into gold)'),('ANCR','Study of Ancient Runes','Elective','Rune Dictionary','Books, Parchment, Quill','Studys the ancient runic scripts of magic'),('ANST','Ancient Studies','Extra-curricular','History of Magic','Books, Parchment, Quill','Focused study of ancient magic, such as the ancient Egyptians\' spells'),('APP','Apparition','Elective','','Wand','Study of magical method of transportation and is basically the magical action of travelling by having the user focus on a desired location in their mind'),('ART','Art','Extra-curricular','Morgle\'s Guide to Painting','Parchment, Quill','Learn how to create magic paintings'),('ARTH','Arithmancy','Elective','Numerology and Grammatica','Books, Parchment, Quill','Method of predicting the future using numbers, \"with \"\"bit of numerology\"\" as well\"'),('ASTR','Astronomy','Core','Introduction of Astronomy','Telescope, Star chart, Books, Parchment, Quill','Branch of magic and science that studied stars and the movement of planets'),('CHRM','Charms','Core','Chadwick\'s Charms','Wand, Books, Parchment, Quill','Mastering the science of charm-work'),('COMC','Care of Magical Creatures','Elective','The Monster Book of Monsters','Books, Parchment, Quill','Study about feeding, maintaining, breeding, and proper treatment of wide range of magical creatures'),('DADA','Defence Against the Dark Arts','Core','','Wand','Teaches defensive techniques to defend against the Dark Arts and dark creatures.'),('DIV','Divination','Elective','Unfogging the Future','Books, Parchment, Quill, Crystal balls, Teacups, Tea Leaves, Burning materials','Study of various methods of divining the future, or gathering insights into future events, through various rituals and tools'),('FLY','Flying','Core','','Broomstick','Teaches the art of flying on broomsticks'),('GHST','Ghoul Studies','Extra-curricular','','Books, Parchment, Quill','Learn the history of ghouls'),('HERB','Herbology','Core','One Thousand Magical Herbs and Fungi','Dragon-hide gloves, Earmuffs, Wand, Growth Potions, Textbooks, Parchment, Quill','Study about different varieties of magical plants that exist'),('HOM','History of Magic','Core','A History of Magic','Books, Parchment, Quill','Study of magical history'),('MATH','Magical Theory','Extra-curricular','Why Magic','Books, Parchment, Quill','Research the how and why of magic'),('MUAR','Muggle Art','Extra-curricular','','Parchment, Quill','Learn muggle painting skills'),('MUMU','Muggle Music','Extra-curricular','','Musical instruments','Learn music notes, tempo, etc. of muggle music'),('MUS','Music','Extra-curricular','','Musical instruments','Learn music notes, tempo, etc.'),('MUST','Muggle Studies','Elective','Home Life and Social Habits of British Muggles','Books, Parchment, Quill','Study of the history and daily lives of Muggles, and how they were able to live without magic, but instead used electricity, technology and science'),('MYTH','Mythology','Elective','Myth or Not','Books, Parchment, Quill','Study of the orgins of popular myths'),('PTNS','Potions','Core','Magical Drafts and Potions','Cauldron, Brass scales, Phials, Mortar and pestle, Ingredients, Wand, Textbooks, Parchment, Quill','Mastering the art of brewing magical potions'),('TNFG','Transfiguration','Core','A Guide to Advanced Transfiguration','Wand, Books, Parchment, Quill','Teaches the art of changing the form and appearance of an object or a person'),('XYL','Xylomancy','Extra-curricular','Life in the Stars','Crystal balls, Teacups, Tea Leaves, Burning materials','Study of a method of divination which replied upon twigs');
/*!40000 ALTER TABLE `Subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 19:50:26
