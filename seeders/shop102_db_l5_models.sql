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
-- Table structure for table `l5_models`
--

DROP TABLE IF EXISTS `l5_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `l5_models` (
  `modelid` int NOT NULL AUTO_INCREMENT,
  `modelname` varchar(30) NOT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `idproducer_id` int NOT NULL,
  `idrange_id` int NOT NULL,
  PRIMARY KEY (`modelid`),
  UNIQUE KEY `modelname` (`modelname`),
  KEY `l5_models_idproducer_id_45e5969f_fk_l5_producer_producerid` (`idproducer_id`),
  KEY `l5_models_idrange_id_b001d1d0_fk_l5_range_rangeid` (`idrange_id`),
  CONSTRAINT `l5_models_idproducer_id_45e5969f_fk_l5_producer_producerid` FOREIGN KEY (`idproducer_id`) REFERENCES `l5_producer` (`producerid`),
  CONSTRAINT `l5_models_idrange_id_b001d1d0_fk_l5_range_rangeid` FOREIGN KEY (`idrange_id`) REFERENCES `l5_range` (`rangeid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l5_models`
--

LOCK TABLES `l5_models` WRITE;
/*!40000 ALTER TABLE `l5_models` DISABLE KEYS */;
INSERT INTO `l5_models` VALUES (1,'Светлая шуба',25000,'coat2.webp',1,1),(2,'Тёмная шуба',24000,'coat2.png',1,1),(3,'Плащ индиго',12000,'cape1.jpg',1,3),(4,'Сумеречный плащ',14700,'cape2.jpg',1,3),(5,'Модная шуба',17600,'coat3.jpg',1,1),(6,'Нежный плащ',13900,'cape3.webp',1,3),(7,'Васильковое платье',17000,'dress3.jpg',2,2),(8,'Нежное платье',9000,'dress1.jpg',2,2),(9,'Тёмное платье',7000,'dress4.jpg',3,2);
/*!40000 ALTER TABLE `l5_models` ENABLE KEYS */;
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
