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
-- Table structure for table `boarditem`
--

DROP TABLE IF EXISTS `boarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boarditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `content` text,
  `parentid` int DEFAULT NULL,
  `boardid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boarditem`
--

LOCK TABLES `boarditem` WRITE;
/*!40000 ALTER TABLE `boarditem` DISABLE KEYS */;
INSERT INTO `boarditem` VALUES (18,'1번게시판의 2번게시글','2021-06-23','이하동문',NULL,1),(19,'1번게시판 3번게시글','2021-06-23','ㅇㅎㄷㅁ',NULL,1),(22,'','2021-06-23','zzz',18,1),(23,'','2021-06-23','bsdfsf',18,1),(24,'','2021-06-23','aaa',18,1),(25,'','2021-06-23','4',18,1),(26,'','2021-06-23','5',18,1),(27,'','2021-06-23','6',18,1),(28,'','2021-06-23','123',19,1),(29,'','2021-06-23','456',19,1),(46,'n번게시글','2021-06-23','test',NULL,1),(47,'n번게시글','2021-06-23','test',NULL,1),(48,'n번게시글','2021-06-23','test',NULL,1),(49,'n번게시글','2021-06-23','test',NULL,1),(50,'n번게시글','2021-06-23','test',NULL,1),(51,'n번게시글','2021-06-23','test',NULL,1),(52,'n번게시글','2021-06-23','test',NULL,1),(53,'n번게시글','2021-06-23','test',NULL,1),(54,'n번게시글','2021-06-23','test',NULL,1),(55,'n번게시글','2021-06-23','test',NULL,1),(56,'n번게시글','2021-06-23','test',NULL,1),(57,'n번게시글','2021-06-23','test',NULL,1),(58,'n번게시글','2021-06-23','test',NULL,1),(59,'','2021-06-24','1',46,1),(60,'','2021-06-24','2',46,1);
/*!40000 ALTER TABLE `boarditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 11:28:23
