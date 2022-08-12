-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: travelplanner
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `writer` varchar(30) NOT NULL,
  `viewCnt` int DEFAULT '0',
  `content` longtext NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime DEFAULT NULL,
  `originalFileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `yCode` decimal(18,15) NOT NULL,
  `xCode` decimal(17,15) NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (32,'admin','연돈','제주특별자치도 서귀포시 색달동 2156-2','0507-1386-7060',126.407158146319360,33.258895288625645),(33,'admin','원앤온리','제주특별자치도 서귀포시 안덕면 사계리 86','064-794-0117',126.319192490757000,33.239222348615500),(34,'admin','델문도','제주특별자치도 제주시 조천읍 함덕리 1008-1','064-702-0007',126.668723957376000,33.543709335826800),(35,'admin','제주도','제주특별자치도 제주시 오등동 산 182','',126.545873556300360,33.379777816446165),(36,'admin','숙성도 노형점','제주특별자치도 제주시 노형동 941-2','064-711-5212',126.485027961325950,33.485031982549930),(37,'admin','올래국수 본점','제주특별자치도 제주시 연동 301-19','064-742-7355',126.497267165013280,33.491528621788270),(38,'admin','랜디스도넛 제주애월점','제주특별자치도 제주시 애월읍 애월리 2471','064-799-0610',126.311428237285570,33.461171624242170),(39,'admin','색달식당 중문본점','제주특별자치도 서귀포시 하예동 350','064-738-1741',126.386244413537170,33.241811809849760);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `pw` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `originalImgName` varchar(255) DEFAULT NULL,
  `proImgName` varchar(255) DEFAULT NULL,
  `proImgSize` int DEFAULT NULL,
  `signupDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'admin','1234','관리자','poohharry@naver.com','01042403631',NULL,NULL,NULL,'2022-08-06 14:35:56'),(2,'test','1234','테스터','pooh123@naver','01042403631',NULL,'C://upload/9209a205-cb47-4bbd-b638-48f42d0e4667.jpg',17407,'2022-08-08 14:19:11'),(3,'test2','1234','테스터2','pooh123@naver','01042403631','KakaoTalk_20210216_143203571.jpg','C://upload/fefb63c8-930a-428a-9553-ef1cc52ef6fb.jpg',6899,'2022-08-08 14:37:01');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `viewCnt` int DEFAULT '0',
  `content` text,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime DEFAULT NULL,
  `originalFileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(30) NOT NULL,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `day1` text,
  `day2` text,
  `day3` text,
  `day4` text,
  `day5` text,
  `day6` text,
  `day7` text,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (4,'admin','2022-08-18','2022-08-20','해운대해수욕장','델문도,제주도','연돈,원앤온리','test','test','test','test'),(5,'admin','2022-08-18','2022-08-19','연돈,델문도','원앤온리',NULL,NULL,NULL,NULL,NULL),(6,'admin','2022-08-16','2022-08-18','색달식당 중문본점,랜디스도넛 제주애월점,올래국수 본점','숙성도 노형점,제주도,델문도','원앤온리,연돈',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'travelplanner'
--

--
-- Dumping routines for database 'travelplanner'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 11:12:42
