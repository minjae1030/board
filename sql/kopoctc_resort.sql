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
-- Table structure for table `resort`
--

DROP TABLE IF EXISTS `resort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resort` (
  `name` varchar(20) DEFAULT NULL,
  `resv_date` date NOT NULL,
  `room` int NOT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `telnum` varchar(20) DEFAULT NULL,
  `in_name` varchar(20) DEFAULT NULL,
  `comment` text,
  `write_date` date DEFAULT NULL,
  `processing` int DEFAULT NULL,
  PRIMARY KEY (`resv_date`,`room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resort`
--

LOCK TABLES `resort` WRITE;
/*!40000 ALTER TABLE `resort` DISABLE KEYS */;
INSERT INTO `resort` VALUES ('김민재','2021-06-24',1,'서울','010-2371-0256','김민재','할인','2021-06-24',NULL),('김은비','2021-06-24',3,'서현','01000000000','김은비','작은방','2021-06-24',NULL),('강세영','2021-06-26',1,'정자','01068762027','김민재','레이트체크아웃 15시','2021-06-25',NULL),('김범주','2021-06-26',2,'이매','01023710000','김범주','놀러왔어요','2021-06-24',NULL),('류민수','2021-06-27',1,'서울시','01012345678','류민수','감사합니다','2021-06-25',NULL),('김민재','2021-06-30',1,'d','01000000000','김은비','놀러왔어요','2021-06-27',NULL),('김민재','2021-07-09',1,'서울 강동구','01023710256','김민재','할인해주세요','2021-06-29',NULL);
/*!40000 ALTER TABLE `resort` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 11:28:26
