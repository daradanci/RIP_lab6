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
-- Table structure for table `l5_bag`
--

DROP TABLE IF EXISTS `l5_bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `l5_bag` (
  `bagid` int NOT NULL AUTO_INCREMENT,
  `sum` int DEFAULT NULL,
  `bagstate_id` bigint NOT NULL,
  `idclient_id` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`bagid`),
  KEY `l5_bag_bagstate_id_c6c59836_fk_l5_state_id` (`bagstate_id`),
  KEY `l5_bag_idclient_id_fe295c99_fk_l5_client_clientid` (`idclient_id`),
  CONSTRAINT `l5_bag_bagstate_id_c6c59836_fk_l5_state_id` FOREIGN KEY (`bagstate_id`) REFERENCES `l5_state` (`id`),
  CONSTRAINT `l5_bag_idclient_id_fe295c99_fk_l5_client_clientid` FOREIGN KEY (`idclient_id`) REFERENCES `l5_client` (`clientid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l5_bag`
--

LOCK TABLES `l5_bag` WRITE;
/*!40000 ALTER TABLE `l5_bag` DISABLE KEYS */;
INSERT INTO `l5_bag` VALUES (1,36000,2,1,'2022-11-02'),(2,5000,2,1,'2022-11-02'),(3,36000,2,1,'2022-11-03'),(5,50000,2,1,'2022-11-03'),(7,12000,2,1,'2022-11-03'),(8,50000,2,1,'2022-11-03'),(9,204000,2,1,'2022-11-03'),(10,74000,2,1,'2022-11-03'),(11,25000,2,1,'2022-11-03'),(12,25000,2,1,'2022-11-03'),(13,NULL,1,1,'2022-11-03');
/*!40000 ALTER TABLE `l5_bag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 21:36:29
