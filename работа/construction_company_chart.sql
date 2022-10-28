-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: construction_company
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `chart`
--

DROP TABLE IF EXISTS `chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chart` (
  `idchart` int NOT NULL AUTO_INCREMENT,
  `brigadeFK1` int DEFAULT NULL,
  `buildinfFK1` int DEFAULT NULL,
  `begging` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`idchart`),
  KEY `brigadeFK1_idx` (`brigadeFK1`),
  KEY `buildingFK1_idx` (`buildinfFK1`),
  CONSTRAINT `brigadeFK1` FOREIGN KEY (`brigadeFK1`) REFERENCES `brigade` (`idbrigade`),
  CONSTRAINT `buildingFK1` FOREIGN KEY (`buildinfFK1`) REFERENCES `building` (`idbuilding`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart`
--

LOCK TABLES `chart` WRITE;
/*!40000 ALTER TABLE `chart` DISABLE KEYS */;
INSERT INTO `chart` VALUES (1,1,1,'2021-12-09','2022-03-19'),(2,2,1,'2022-03-10','2022-06-30'),(3,3,1,'2022-07-01','2022-07-13'),(4,1,2,'2021-12-03','2022-07-13'),(5,2,2,'2022-08-15','2022-11-01'),(6,3,2,'2022-11-02','2023-03-07'),(7,1,3,'2022-09-07','2022-10-30'),(8,2,3,'2022-11-02','2022-12-27'),(9,3,3,'2023-01-09','2023-08-16');
/*!40000 ALTER TABLE `chart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-28 10:16:05
