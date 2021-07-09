-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.23.99    Database: kopoctc
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `twice`
--

DROP TABLE IF EXISTS `twice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twice` (
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twice`
--

LOCK TABLES `twice` WRITE;
/*!40000 ALTER TABLE `twice` DISABLE KEYS */;
INSERT INTO `twice` VALUES ('정연',9),('미나',9),('모모',3),('지효',6),('미나',5),('미나',6),('정연',6),('정연',5),('나연',7),('지효',5),('쯔위',4),('나연',8),('사나',2),('미나',8),('지효',9),('모모',5),('지효',1),('다현',7),('미나',5),('채영',2),('지효',5),('정연',8),('채영',8),('미나',7),('다현',6),('미나',2),('채영',7),('사나',6),('정연',6),('지효',7),('지효',3),('다현',7),('사나',9),('미나',4),('다현',7),('모모',3),('다현',6),('다현',2),('지효',2),('정연',3),('정연',5),('정연',3),('미나',5),('지효',8),('쯔위',3),('모모',5),('채영',6),('다현',8),('쯔위',3),('미나',2),('쯔위',4),('채영',4),('정연',7),('지효',1),('다현',7),('지효',9),('지효',7),('나연',1),('나연',1),('나연',2),('지효',3),('채영',7),('다현',7),('미나',5),('미나',8),('미나',3),('미나',3),('정연',3),('다현',9),('지효',6),('다현',6),('쯔위',8),('미나',6),('모모',2),('다현',6),('채영',6),('사나',1),('나연',2),('사나',7),('모모',2),('채영',1),('사나',1),('쯔위',7),('쯔위',4),('정연',4),('사나',1),('쯔위',6),('모모',3),('지효',9),('모모',6),('채영',8),('채영',5),('정연',3),('미나',5),('미나',8),('정연',3),('나연',2),('미나',8),('미나',2),('쯔위',3);
/*!40000 ALTER TABLE `twice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 11:28:27
