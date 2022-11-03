-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop102_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `l5_stock`
--

DROP TABLE IF EXISTS `l5_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `l5_stock` (
  `itemid` int NOT NULL AUTO_INCREMENT,
  `size` varchar(4) NOT NULL,
  `amount` int DEFAULT NULL,
  `idmodel_id` int NOT NULL,
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `l5_stock_idmodel_id_size_a05314a6_uniq` (`idmodel_id`,`size`),
  CONSTRAINT `l5_stock_idmodel_id_372a2d67_fk_l5_models_modelid` FOREIGN KEY (`idmodel_id`) REFERENCES `l5_models` (`modelid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l5_stock`
--

LOCK TABLES `l5_stock` WRITE;
/*!40000 ALTER TABLE `l5_stock` DISABLE KEYS */;
INSERT INTO `l5_stock` VALUES (1,'S',11,1),(2,'M',11,1),(3,'L',18,1),(4,'M',6,2),(5,'XL',13,1),(6,'S',2,3),(7,'M',0,3),(8,'M',3,4),(9,'XL',12,4),(10,'M',20,5),(11,'L',20,5),(12,'L',24,7),(13,'XL',18,7),(14,'XXL',19,7),(15,'M',16,8),(16,'XL',8,8),(17,'S',14,9),(18,'M',15,9);
/*!40000 ALTER TABLE `l5_stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 21:36:30
