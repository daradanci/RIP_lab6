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
-- Table structure for table `l5_purchase`
--

DROP TABLE IF EXISTS `l5_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `l5_purchase` (
  `purchaseid` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `idbag_id` int NOT NULL,
  `idstock_id` int NOT NULL,
  PRIMARY KEY (`purchaseid`),
  KEY `l5_purchase_idbag_id_6ea53712_fk_l5_bag_bagid` (`idbag_id`),
  KEY `l5_purchase_idstock_id_1361cc17_fk_l5_stock_itemid` (`idstock_id`),
  CONSTRAINT `l5_purchase_idbag_id_6ea53712_fk_l5_bag_bagid` FOREIGN KEY (`idbag_id`) REFERENCES `l5_bag` (`bagid`),
  CONSTRAINT `l5_purchase_idstock_id_1361cc17_fk_l5_stock_itemid` FOREIGN KEY (`idstock_id`) REFERENCES `l5_stock` (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l5_purchase`
--

LOCK TABLES `l5_purchase` WRITE;
/*!40000 ALTER TABLE `l5_purchase` DISABLE KEYS */;
INSERT INTO `l5_purchase` VALUES (25,1,1,7),(26,1,1,4),(27,1,2,8),(28,1,2,9),(29,1,3,7),(31,1,3,4),(32,1,3,7),(33,1,3,7),(34,1,5,5),(35,1,5,5),(36,1,5,4),(37,1,5,4),(38,1,5,4),(39,1,7,7),(40,1,7,5),(42,1,8,1),(43,1,8,1),(45,1,9,7),(46,1,9,7),(47,1,9,6),(48,1,9,7),(49,1,9,7),(50,1,9,7),(51,1,9,7),(52,1,9,7),(53,1,9,7),(54,1,9,7),(55,1,9,7),(56,1,9,6),(57,1,9,6),(58,1,9,6),(59,1,9,6),(60,1,9,6),(66,1,10,5),(67,1,10,5),(70,1,11,5),(73,1,12,5);
/*!40000 ALTER TABLE `l5_purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 21:36:28
