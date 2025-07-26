-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: licsystem
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `customerpolicy`
--

DROP TABLE IF EXISTS `customerpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpolicy` (
  `CustomerPolicyID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `PolicyID` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerPolicyID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `PolicyID` (`PolicyID`),
  CONSTRAINT `customerpolicy_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `customerpolicy_ibfk_2` FOREIGN KEY (`PolicyID`) REFERENCES `policy` (`PolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpolicy`
--

LOCK TABLES `customerpolicy` WRITE;
/*!40000 ALTER TABLE `customerpolicy` DISABLE KEYS */;
INSERT INTO `customerpolicy` VALUES (1,1,1,'2022-01-01','2032-01-01','Active'),(2,2,2,'2022-01-01','2027-01-01','Active'),(3,3,3,'2023-02-01','2026-02-01','Active'),(4,4,4,'2024-03-01','2025-03-01','Active'),(5,5,5,'2023-04-01','2024-04-01','Active'),(6,6,6,'2021-05-01','2031-05-01','Active'),(7,7,7,'2022-06-01','2042-06-01','Active'),(8,8,8,'2024-07-01','2039-07-01','Active'),(9,9,9,'2022-08-01','2027-08-01','Active'),(10,10,10,'2023-09-01','2028-09-01','Active');
/*!40000 ALTER TABLE `customerpolicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 11:58:50
