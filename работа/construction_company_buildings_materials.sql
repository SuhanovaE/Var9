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
-- Table structure for table `buildings_materials`
--

DROP TABLE IF EXISTS `buildings_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings_materials` (
  `idbuildings_materials` int NOT NULL AUTO_INCREMENT,
  `building_FK` int DEFAULT NULL,
  `material_FK` int DEFAULT NULL,
  `brigade_fk` int DEFAULT NULL,
  PRIMARY KEY (`idbuildings_materials`),
  KEY `building_FK_idx` (`building_FK`),
  KEY `material_FK_idx` (`material_FK`),
  KEY `brigade_fk_idx` (`brigade_fk`),
  CONSTRAINT `brigade_fk` FOREIGN KEY (`brigade_fk`) REFERENCES `brigade` (`idbrigade`),
  CONSTRAINT `building_FK` FOREIGN KEY (`building_FK`) REFERENCES `building` (`idbuilding`),
  CONSTRAINT `material_FK` FOREIGN KEY (`material_FK`) REFERENCES `material` (`idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings_materials`
--

LOCK TABLES `buildings_materials` WRITE;
/*!40000 ALTER TABLE `buildings_materials` DISABLE KEYS */;
INSERT INTO `buildings_materials` VALUES (1,1,1,1),(2,1,2,2),(3,2,3,3),(4,2,5,1),(5,2,4,2),(6,3,7,3),(7,3,8,1),(8,3,1,2);
/*!40000 ALTER TABLE `buildings_materials` ENABLE KEYS */;
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
