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
-- Table structure for table `month_reserve_table`
--

DROP TABLE IF EXISTS `month_reserve_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `month_reserve_table` (
  `reserve_date` date NOT NULL,
  `room1` varchar(20) DEFAULT NULL,
  `room2` varchar(20) DEFAULT NULL,
  `room3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reserve_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month_reserve_table`
--

LOCK TABLES `month_reserve_table` WRITE;
/*!40000 ALTER TABLE `month_reserve_table` DISABLE KEYS */;
INSERT INTO `month_reserve_table` VALUES ('2021-06-07','예약가능','예약가능','예약가능'),('2021-06-08','예약가능','예약가능','예약가능'),('2021-06-09','예약가능','나연','정연'),('2021-06-10','모모','예약가능','예약가능'),('2021-06-11','예약가능','예약가능','예약가능'),('2021-06-12','사나','예약가능','예약가능'),('2021-06-13','지효','예약가능','예약가능'),('2021-06-14','예약가능','예약가능','예약가능'),('2021-06-15','예약가능','예약가능','예약가능'),('2021-06-16','예약가능','예약가능','예약가능'),('2021-06-17','예약가능','예약가능','예약가능'),('2021-06-18','예약가능','예약가능','예약가능'),('2021-06-19','예약가능','예약가능','예약가능'),('2021-06-20','예약가능','예약가능','예약가능'),('2021-06-21','예약가능','예약가능','예약가능'),('2021-06-22','예약가능','예약가능','예약가능'),('2021-06-23','예약가능','예약가능','예약가능'),('2021-06-24','예약가능','예약가능','예약가능'),('2021-06-25','예약가능','예약가능','예약가능'),('2021-06-26','예약가능','예약가능','예약가능'),('2021-06-27','예약가능','예약가능','예약가능'),('2021-06-28','예약가능','예약가능','예약가능'),('2021-06-29','예약가능','예약가능','예약가능'),('2021-06-30','예약가능','예약가능','예약가능'),('2021-07-01','예약가능','예약가능','예약가능'),('2021-07-02','예약가능','예약가능','예약가능'),('2021-07-03','예약가능','예약가능','예약가능'),('2021-07-04','예약가능','예약가능','예약가능'),('2021-07-05','예약가능','예약가능','예약가능'),('2021-07-06','예약가능','예약가능','예약가능');
/*!40000 ALTER TABLE `month_reserve_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 11:28:24
