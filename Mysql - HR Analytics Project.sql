-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: healthcare_analysis
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `AppointmentID` int NOT NULL,
  `PatientID` int DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (4,2,'2021-02-16','Orthopedics',6,'Cancelled'),(5,102,'2022-11-19','Cardiology',16,'Missed'),(7,98,'2023-10-22','Neurology',19,'Completed'),(8,30,'2023-07-28','Pediatrics',5,'Completed'),(9,116,'2023-02-25','Pediatrics',17,'Completed'),(10,8,'2023-06-06','Dermatology',1,'Completed'),(11,150,'2023-02-08','Pediatrics',10,'Completed'),(12,44,'2020-05-15','Pediatrics',15,'Completed'),(14,77,'2023-04-24','Neurology',13,'Completed'),(16,47,'2023-07-08','Orthopedics',1,'Completed'),(18,106,'2021-03-24','Orthopedics',11,'Completed'),(19,121,'2023-02-01','Dermatology',17,'Missed'),(20,55,'2024-02-15','Dermatology',4,'Completed'),(22,12,'2022-05-23','Neurology',9,'Completed'),(23,145,'2024-02-23','Neurology',20,'Cancelled'),(25,140,'2022-10-30','Orthopedics',19,'Completed'),(26,136,'2023-11-29','Orthopedics',12,'Completed'),(27,3,'2020-10-28','Neurology',5,'Completed'),(30,23,'2022-12-25','Pediatrics',5,'Cancelled'),(31,92,'2022-07-25','Pediatrics',16,'Completed'),(33,104,'2022-11-02','Pediatrics',9,'Missed'),(34,118,'2023-11-17','Cardiology',3,'Completed'),(36,104,'2022-07-20','Cardiology',16,'Completed'),(39,121,'2021-08-24','Pediatrics',3,'Completed'),(41,149,'2021-07-19','Orthopedics',9,'Completed'),(42,84,'2022-11-01','Pediatrics',7,'Completed'),(44,32,'2022-11-03','Orthopedics',13,'Completed'),(45,16,'2023-12-12','Pediatrics',18,'Completed'),(46,38,'2023-12-31','Cardiology',5,'Completed'),(47,142,'2023-11-01','Dermatology',13,'Completed'),(48,36,'2022-11-09','Dermatology',4,'Missed'),(52,85,'2023-05-19','Orthopedics',9,'Completed'),(53,2,'2023-01-29','Orthopedics',6,'Completed'),(56,55,'2023-11-05','Pediatrics',4,'Missed'),(57,6,'2023-03-01','Dermatology',13,'Completed'),(58,150,'2022-11-09','Cardiology',13,'Missed'),(60,86,'2022-10-10','Cardiology',2,'Missed'),(63,12,'2024-02-01','Orthopedics',7,'Completed'),(64,49,'2022-04-01','Neurology',4,'Completed'),(65,42,'2022-05-20','Neurology',18,'Completed'),(69,67,'2022-07-30','Orthopedics',12,'Completed'),(72,14,'2022-07-29','Orthopedics',4,'Completed'),(73,73,'2022-11-09','Neurology',11,'Missed'),(75,149,'2023-02-16','Orthopedics',13,'Completed'),(78,130,'2023-05-29','Pediatrics',12,'Completed'),(79,20,'2021-06-09','Neurology',15,'Completed'),(80,10,'2024-03-18','Orthopedics',10,'Completed'),(83,54,'2022-12-14','Dermatology',5,'Completed'),(84,33,'2021-05-14','Neurology',6,'Completed'),(85,95,'2022-06-18','Pediatrics',2,'Completed'),(86,14,'2022-02-04','Orthopedics',17,'Completed'),(88,110,'2020-06-10','Neurology',14,'Completed'),(91,125,'2023-04-26','Neurology',3,'Completed'),(93,134,'2022-07-03','Dermatology',6,'Completed'),(95,141,'2020-07-29','Orthopedics',12,'Completed'),(97,136,'2021-10-25','Cardiology',11,'Completed'),(98,149,'2023-02-06','Pediatrics',4,'Completed'),(100,79,'2021-06-25','Neurology',1,'Completed'),(101,68,'2023-08-30','Pediatrics',20,'Missed'),(102,12,'2022-09-24','Cardiology',16,'Completed'),(103,32,'2023-02-14','Cardiology',15,'Completed'),(104,128,'2022-07-15','Dermatology',17,'Cancelled'),(105,96,'2022-05-17','Orthopedics',8,'Completed'),(107,141,'2021-03-07','Pediatrics',10,'Completed'),(108,31,'2022-01-09','Pediatrics',15,'Missed'),(109,78,'2023-10-05','Cardiology',9,'Completed'),(110,20,'2020-07-01','Orthopedics',2,'Missed'),(111,146,'2020-04-22','Dermatology',5,'Cancelled'),(112,60,'2023-04-21','Neurology',6,'Completed'),(113,134,'2021-04-25','Neurology',7,'Cancelled'),(114,93,'2023-03-15','Pediatrics',1,'Completed'),(115,43,'2022-04-10','Orthopedics',7,'Completed'),(116,130,'2023-02-10','Cardiology',20,'Completed'),(117,60,'2022-02-01','Orthopedics',12,'Completed'),(118,31,'2021-04-20','Orthopedics',16,'Completed'),(120,10,'2023-08-19','Pediatrics',11,'Completed'),(121,89,'2022-08-28','Orthopedics',4,'Missed'),(122,130,'2022-10-16','Neurology',13,'Missed'),(123,126,'2023-02-15','Cardiology',7,'Completed'),(125,56,'2021-02-04','Pediatrics',15,'Completed'),(126,83,'2020-07-16','Cardiology',19,'Completed'),(127,137,'2023-07-07','Dermatology',9,'Completed'),(129,149,'2022-12-06','Orthopedics',8,'Completed'),(130,73,'2021-02-02','Orthopedics',1,'Cancelled'),(136,4,'2023-11-24','Dermatology',9,'Completed'),(137,4,'2022-04-16','Neurology',2,'Completed'),(138,103,'2024-03-08','Pediatrics',2,'Completed'),(139,40,'2021-05-14','Cardiology',13,'Cancelled'),(140,17,'2020-05-17','Pediatrics',15,'Missed'),(142,103,'2022-08-30','Pediatrics',4,'Completed'),(147,63,'2023-12-20','Pediatrics',18,'Completed'),(148,116,'2021-06-30','Pediatrics',11,'Completed'),(149,62,'2023-08-18','Pediatrics',15,'Completed'),(151,92,'2021-08-03','Cardiology',17,'Cancelled'),(152,14,'2023-10-04','Cardiology',12,'Missed'),(154,133,'2022-07-05','Cardiology',10,'Missed'),(155,130,'2023-01-02','Pediatrics',10,'Completed'),(157,149,'2020-09-17','Pediatrics',19,'Completed'),(158,79,'2020-12-21','Neurology',11,'Missed'),(159,149,'2023-07-07','Pediatrics',13,'Completed'),(160,138,'2021-09-29','Cardiology',8,'Missed'),(161,58,'2022-01-12','Orthopedics',8,'Cancelled'),(162,120,'2023-08-11','Orthopedics',4,'Completed'),(163,133,'2022-10-06','Dermatology',15,'Completed'),(164,65,'2022-07-19','Cardiology',11,'Cancelled'),(165,13,'2021-10-02','Pediatrics',11,'Completed'),(167,139,'2023-08-29','Cardiology',17,'Completed'),(168,149,'2021-09-03','Orthopedics',15,'Completed'),(170,117,'2023-04-20','Orthopedics',6,'Completed'),(172,34,'2023-10-19','Dermatology',9,'Completed'),(176,42,'2021-12-25','Cardiology',18,'Missed'),(177,21,'2022-07-14','Orthopedics',5,'Cancelled'),(178,42,'2023-12-02','Cardiology',20,'Completed'),(179,141,'2022-05-25','Pediatrics',20,'Missed'),(182,17,'2023-09-27','Cardiology',1,'Cancelled'),(183,120,'2023-05-28','Pediatrics',18,'Completed'),(184,137,'2022-06-21','Cardiology',6,'Completed'),(185,129,'2020-06-11','Orthopedics',2,'Missed'),(186,130,'2023-05-28','Pediatrics',15,'Completed'),(188,48,'2021-09-23','Orthopedics',5,'Missed'),(190,97,'2023-11-24','Cardiology',6,'Missed'),(191,10,'2023-04-20','Dermatology',18,'Completed'),(192,58,'2020-07-23','Cardiology',14,'Completed'),(195,34,'2023-06-05','Orthopedics',13,'Completed'),(199,87,'2024-01-04','Dermatology',12,'Completed'),(201,69,'2021-11-20','Dermatology',11,'Completed'),(202,87,'2024-03-22','Orthopedics',12,'Completed'),(205,77,'2023-11-23','Orthopedics',16,'Completed'),(207,43,'2023-05-11','Dermatology',13,'Completed'),(208,129,'2023-03-17','Dermatology',18,'Cancelled'),(209,109,'2024-02-04','Cardiology',11,'Completed'),(210,17,'2022-08-01','Dermatology',12,'Missed'),(211,133,'2020-07-17','Cardiology',6,'Completed'),(212,148,'2023-12-20','Orthopedics',9,'Completed'),(214,58,'2022-06-14','Cardiology',4,'Missed'),(215,110,'2020-05-21','Neurology',3,'Missed'),(216,139,'2023-08-29','Cardiology',16,'Completed'),(220,51,'2023-01-10','Cardiology',18,'Missed'),(221,5,'2023-02-28','Pediatrics',19,'Missed'),(226,64,'2021-01-18','Pediatrics',12,'Completed'),(227,138,'2021-03-20','Orthopedics',19,'Completed'),(231,81,'2021-09-20','Orthopedics',11,'Missed'),(232,136,'2022-06-13','Orthopedics',16,'Cancelled'),(234,73,'2022-10-13','Orthopedics',2,'Cancelled'),(235,49,'2020-11-22','Orthopedics',8,'Completed'),(237,126,'2022-10-11','Pediatrics',10,'Completed'),(239,78,'2021-08-15','Neurology',4,'Missed'),(243,114,'2022-08-11','Cardiology',7,'Completed'),(245,149,'2021-02-26','Neurology',20,'Completed'),(246,140,'2020-06-25','Cardiology',18,'Completed'),(248,2,'2022-08-23','Orthopedics',9,'Cancelled'),(249,118,'2024-02-26','Neurology',5,'Completed'),(251,95,'2021-09-01','Pediatrics',4,'Completed'),(253,32,'2022-05-02','Neurology',10,'Completed'),(254,32,'2024-03-20','Cardiology',11,'Completed'),(255,124,'2024-03-17','Cardiology',10,'Cancelled'),(257,10,'2023-02-09','Dermatology',2,'Completed'),(259,17,'2022-12-25','Pediatrics',16,'Completed'),(260,146,'2022-04-21','Pediatrics',5,'Missed'),(262,78,'2023-03-13','Orthopedics',12,'Completed'),(265,22,'2023-01-14','Dermatology',10,'Completed'),(266,32,'2021-08-10','Cardiology',4,'Completed'),(268,120,'2023-08-10','Pediatrics',2,'Missed'),(269,149,'2021-07-24','Orthopedics',19,'Missed'),(273,39,'2022-08-17','Dermatology',3,'Completed'),(276,149,'2020-10-03','Neurology',3,'Completed'),(277,141,'2021-06-15','Pediatrics',3,'Completed'),(278,149,'2023-03-23','Cardiology',17,'Completed'),(279,126,'2021-01-17','Cardiology',7,'Completed'),(280,136,'2022-12-27','Dermatology',14,'Completed'),(287,22,'2021-09-19','Cardiology',4,'Missed'),(288,92,'2021-08-26','Dermatology',1,'Completed'),(290,13,'2023-11-05','Pediatrics',1,'Completed'),(291,2,'2022-09-27','Pediatrics',13,'Completed'),(294,50,'2022-11-15','Cardiology',10,'Completed'),(295,95,'2022-05-30','Orthopedics',11,'Completed'),(296,88,'2021-03-22','Pediatrics',9,'Completed'),(297,44,'2020-03-06','Orthopedics',9,'Missed'),(298,22,'2023-07-01','Dermatology',5,'Completed'),(299,97,'2022-12-03','Dermatology',1,'Missed'),(300,3,'2023-01-25','Dermatology',17,'Missed');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Employee_Id` int NOT NULL,
  `Employee_Name` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Salary` int NOT NULL,
  `City` varchar(100) NOT NULL,
  `Joining_date` date NOT NULL,
  PRIMARY KEY (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientID` int NOT NULL,
  `PatientName` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Patient_1','Other',60,'2019-01-02'),(2,'Patient_2','Female',18,'2020-08-11'),(3,'Patient_3','Female',74,'2020-10-05'),(4,'Patient_4','Female',81,'2019-03-31'),(5,'Patient_5','Male',45,'2022-09-30'),(6,'Patient_6','Male',54,'2019-12-16'),(7,'Patient_7','Female',64,'2023-01-22'),(8,'Patient_8','Male',54,'2022-07-10'),(9,'Patient_9','Male',66,'2022-10-06'),(10,'Patient_10','Female',61,'2022-02-05'),(11,'Patient_11','Male',73,'2023-05-29'),(12,'Patient_12','Female',45,'2021-11-28'),(13,'Patient_13','Male',23,'2021-06-27'),(14,'Patient_14','Female',78,'2019-06-08'),(15,'Patient_15','Male',37,'2023-05-26'),(16,'Patient_16','Female',19,'2021-08-16'),(17,'Patient_17','Male',54,'2019-11-08'),(18,'Patient_18','Male',37,'2022-06-18'),(19,'Patient_19','Male',43,'2020-03-20'),(20,'Patient_20','Female',46,'2019-10-25'),(21,'Patient_21','Female',18,'2021-08-09'),(22,'Patient_22','Male',52,'2019-02-05'),(23,'Patient_23','Female',87,'2022-01-12'),(24,'Patient_24','Female',76,'2023-01-15'),(25,'Patient_25','Female',86,'2023-12-04'),(26,'Patient_26','Male',50,'2022-11-09'),(27,'Patient_27','Female',68,'2022-04-10'),(28,'Patient_28','Male',29,'2022-10-31'),(29,'Patient_29','Male',37,'2023-09-05'),(30,'Patient_30','Other',70,'2022-10-17'),(31,'Patient_31','Male',60,'2020-07-12'),(32,'Patient_32','Female',67,'2021-06-09'),(33,'Patient_33','Female',46,'2019-05-21'),(34,'Patient_34','Female',74,'2021-06-05'),(35,'Patient_35','Female',56,'2022-02-15'),(36,'Patient_36','Male',73,'2022-07-24'),(37,'Patient_37','Male',60,'2020-12-26'),(38,'Patient_38','Female',67,'2022-05-28'),(39,'Patient_39','Male',40,'2021-11-15'),(40,'Patient_40','Male',61,'2020-06-04'),(41,'Patient_41','Male',55,'2023-12-12'),(42,'Patient_42','Male',40,'2019-01-10'),(43,'Patient_43','Male',62,'2021-09-10'),(44,'Patient_44','Male',69,'2020-01-13'),(45,'Patient_45','Female',67,'2023-07-15'),(46,'Patient_46','Female',25,'2023-07-19'),(47,'Patient_47','Female',18,'2020-11-12'),(48,'Patient_48','Male',25,'2020-08-06'),(49,'Patient_49','Male',46,'2019-06-01'),(50,'Patient_50','Male',22,'2020-12-20'),(51,'Patient_51','Female',64,'2021-12-08'),(52,'Patient_52','Female',51,'2022-03-23'),(53,'Patient_53','Male',82,'2021-05-08'),(54,'Patient_54','Other',72,'2022-08-09'),(55,'Patient_55','Male',60,'2023-05-23'),(56,'Patient_56','Female',47,'2019-02-19'),(57,'Patient_57','Female',34,'2020-10-25'),(58,'Patient_58','Female',43,'2020-06-14'),(59,'Patient_59','Female',25,'2023-06-24'),(60,'Patient_60','Female',64,'2021-12-19'),(61,'Patient_61','Male',89,'2022-04-05'),(62,'Patient_62','Female',63,'2022-05-10'),(63,'Patient_63','Male',85,'2021-05-06'),(64,'Patient_64','Female',50,'2019-05-26'),(65,'Patient_65','Female',18,'2021-07-03'),(66,'Patient_66','Female',36,'2023-08-27'),(67,'Patient_67','Female',48,'2021-09-19'),(68,'Patient_68','Female',31,'2023-01-02'),(69,'Patient_69','Female',70,'2019-08-30'),(70,'Patient_70','Female',65,'2020-08-03'),(71,'Patient_71','Male',86,'2020-11-17'),(72,'Patient_72','Male',79,'2023-05-04'),(73,'Patient_73','Male',83,'2020-04-27'),(74,'Patient_74','Male',81,'2022-02-05'),(75,'Patient_75','Female',87,'2022-06-03'),(76,'Patient_76','Male',80,'2020-11-03'),(77,'Patient_77','Other',50,'2020-09-22'),(78,'Patient_78','Male',58,'2020-10-22'),(79,'Patient_79','Male',65,'2020-10-23'),(80,'Patient_80','Female',30,'2022-12-26'),(81,'Patient_81','Female',48,'2021-03-15'),(82,'Patient_82','Female',85,'2023-08-06'),(83,'Patient_83','Female',21,'2020-02-23'),(84,'Patient_84','Female',36,'2021-09-14'),(85,'Patient_85','Male',87,'2023-01-18'),(86,'Patient_86','Other',30,'2022-03-29'),(87,'Patient_87','Other',40,'2023-03-27'),(88,'Patient_88','Female',18,'2020-10-11'),(89,'Patient_89','Male',71,'2021-08-26'),(90,'Patient_90','Female',88,'2020-08-12'),(91,'Patient_91','Male',32,'2022-01-05'),(92,'Patient_92','Male',82,'2020-05-23'),(93,'Patient_93','Male',88,'2020-03-16'),(94,'Patient_94','Female',32,'2022-07-01'),(95,'Patient_95','Female',38,'2021-07-09'),(96,'Patient_96','Female',36,'2021-02-08'),(97,'Patient_97','Female',77,'2022-09-05'),(98,'Patient_98','Male',50,'2019-09-20'),(99,'Patient_99','Male',66,'2023-06-09'),(100,'Patient_100','Male',52,'2023-08-09'),(101,'Patient_101','Other',61,'2023-04-27'),(102,'Patient_102','Male',28,'2022-10-29'),(103,'Patient_103','Female',89,'2020-09-28'),(104,'Patient_104','Female',83,'2022-04-05'),(105,'Patient_105','Male',63,'2023-11-12'),(106,'Patient_106','Female',26,'2020-04-03'),(107,'Patient_107','Female',20,'2021-09-25'),(108,'Patient_108','Female',43,'2022-07-27'),(109,'Patient_109','Other',89,'2020-11-30'),(110,'Patient_110','Male',65,'2019-10-29'),(111,'Patient_111','Male',83,'2023-04-04'),(112,'Patient_112','Female',87,'2023-05-23'),(113,'Patient_113','Other',45,'2022-05-26'),(114,'Patient_114','Male',43,'2022-01-30'),(115,'Patient_115','Female',42,'2020-07-07'),(116,'Patient_116','Female',29,'2019-10-15'),(117,'Patient_117','Female',22,'2022-04-05'),(118,'Patient_118','Male',65,'2020-09-12'),(119,'Patient_119','Female',54,'2021-10-02'),(120,'Patient_120','Other',61,'2019-02-05'),(121,'Patient_121','Male',32,'2021-01-13'),(122,'Patient_122','Male',60,'2023-10-31'),(123,'Patient_123','Other',65,'2019-12-19'),(124,'Patient_124','Male',87,'2023-08-27'),(125,'Patient_125','Female',63,'2019-03-14'),(126,'Patient_126','Female',60,'2020-10-09'),(127,'Patient_127','Male',38,'2022-10-08'),(128,'Patient_128','Female',40,'2021-12-29'),(129,'Patient_129','Male',64,'2020-02-29'),(130,'Patient_130','Female',32,'2021-09-25'),(131,'Patient_131','Male',42,'2020-12-08'),(132,'Patient_132','Female',53,'2023-12-10'),(133,'Patient_133','Male',68,'2020-07-14'),(134,'Patient_134','Male',32,'2021-04-07'),(135,'Patient_135','Other',85,'2023-07-24'),(136,'Patient_136','Male',38,'2021-08-13'),(137,'Patient_137','Female',30,'2020-05-31'),(138,'Patient_138','Male',36,'2020-03-03'),(139,'Patient_139','Female',51,'2023-04-12'),(140,'Patient_140','Male',85,'2019-06-09'),(141,'Patient_141','Other',69,'2019-05-29'),(142,'Patient_142','Female',44,'2021-02-14'),(143,'Patient_143','Male',46,'2022-06-07'),(144,'Patient_144','Male',45,'2023-10-02'),(145,'Patient_145','Male',52,'2023-05-05'),(146,'Patient_146','Female',25,'2019-03-08'),(147,'Patient_147','Male',33,'2021-10-10'),(148,'Patient_148','Female',53,'2020-01-16'),(149,'Patient_149','Male',47,'2019-02-27'),(150,'Patient_150','Male',35,'2022-07-06');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `Sale_Id` int NOT NULL,
  `Employee_Id` int NOT NULL,
  `Sale_Date` date NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Amount` int NOT NULL,
  PRIMARY KEY (`Sale_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-11 19:39:02
