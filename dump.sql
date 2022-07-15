-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `userId` varchar(50) NOT NULL,
  `subjectcode1` varchar(50) NOT NULL,
  `grade1` varchar(10) NOT NULL,
  `subjectcode2` varchar(50) NOT NULL,
  `grade2` varchar(10) NOT NULL,
  `subjectcode3` varchar(50) NOT NULL,
  `grade3` varchar(10) NOT NULL,
  `subjectcode4` varchar(50) NOT NULL,
  `grade4` varchar(10) NOT NULL,
  `subjectcode5` varchar(50) NOT NULL,
  `grade5` varchar(10) NOT NULL,
  `subjectcode6` varchar(50) NOT NULL,
  `grade6` varchar(10) NOT NULL,
  `subjectcode7` varchar(50) NOT NULL,
  `grade7` varchar(10) NOT NULL,
  `subjectcode8` varchar(50) NOT NULL,
  `grade8` varchar(10) NOT NULL,
  `subjectcode9` varchar(50) NOT NULL,
  `grade9` varchar(10) NOT NULL,
  `subjectcode10` varchar(50) NOT NULL,
  `grade10` varchar(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessonplan`
--

DROP TABLE IF EXISTS `lessonplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessonplan` (
  `lessonname` varchar(50) DEFAULT NULL,
  `professor` varchar(30) NOT NULL,
  `ratetestscore1` varchar(20) NOT NULL,
  `ratetestscore2` varchar(20) NOT NULL,
  `rateattendence` varchar(20) NOT NULL,
  `rateassignment` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `schedule` varchar(20) NOT NULL,
  `lessoncontent` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessonplan`
--

LOCK TABLES `lessonplan` WRITE;
/*!40000 ALTER TABLE `lessonplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessonplan` ENABLE KEYS */;
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
  `content` text,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime DEFAULT NULL,
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
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `professor` varchar(20) NOT NULL,
  `lessonname` varchar(70) NOT NULL,
  `subjectcode` varchar(45) NOT NULL,
  `grades` varchar(45) NOT NULL DEFAULT '3',
  `people` int NOT NULL,
  `location` varchar(30) NOT NULL,
  `schedule` varchar(45) NOT NULL,
  PRIMARY KEY (`subjectcode`),
  UNIQUE KEY `subjectcode_UNIQUE` (`subjectcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('6','부산과세계','BU1A01','2',150,'국제관201호','수5~8'),('2','일본어기본','J1A01','3',50,'인문학관 508호','금3~6'),('3','일본역사','J1B01','3',50,'인문학관 303호','금1~4'),('4','유통학개론','L1A01','3',80,'국제관 502호, 802호','월3~4, 목2~4'),('1','물류학개론','L1B01','3',100,'국제관 404호, 504호','월1~2, 화5~7'),('5','사회봉사의이해','SA001','1',30,'온라인','-');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectgrade`
--

DROP TABLE IF EXISTS `subjectgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjectgrade` (
  `subjectcode` varchar(50) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `attendence` int NOT NULL DEFAULT '0',
  `testscore1` varchar(10) NOT NULL DEFAULT '-',
  `testscore2` varchar(10) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectgrade`
--

LOCK TABLES `subjectgrade` WRITE;
/*!40000 ALTER TABLE `subjectgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjectgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectuser`
--

DROP TABLE IF EXISTS `subjectuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjectuser` (
  `usercode` int NOT NULL,
  `select1code` varchar(50) DEFAULT NULL,
  `select2code` varchar(50) DEFAULT NULL,
  `select3code` varchar(50) DEFAULT NULL,
  `select4code` varchar(50) DEFAULT NULL,
  `select5code` varchar(50) DEFAULT NULL,
  `select6code` varchar(50) DEFAULT NULL,
  `select7code` varchar(50) DEFAULT NULL,
  `select8code` varchar(50) DEFAULT NULL,
  `select9code` varchar(50) DEFAULT NULL,
  `select10code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectuser`
--

LOCK TABLES `subjectuser` WRITE;
/*!40000 ALTER TABLE `subjectuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjectuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `auth` varchar(3) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `major` varchar(50) NOT NULL,
  `major2` varchar(50) DEFAULT NULL,
  `subMajor` varchar(50) DEFAULT NULL,
  `zipCode` int NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `level` int NOT NULL DEFAULT '0',
  `enroll` varchar(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=202200002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'교수','0000','0000','0000','777','0000',NULL,NULL,7777,'7777','7777',0,'재직'),(2,'교수','1111','1111','1111','1111','1111',NULL,NULL,1111,'1111','1111',0,'휴직'),(3,'학생','5555','5555','5555','5555','5555',NULL,NULL,5555,'5555','5555',1,'재학'),(4,'학생','6666','6666','6666','6666','6666',NULL,NULL,6666,'6666','6666',4,'휴학'),(202200000,'학생','6666','6666','6666','6666','6666',NULL,NULL,6666,'6666','6666',2,'재학'),(202200001,'학생','9999','9999','9999','9999','9999',NULL,NULL,9999,'9999','9999',3,'휴학');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UserTbl_beforeInsertTrg` BEFORE INSERT ON `users` FOR EACH ROW begin
	declare id int;
    declare nowyear int;
    set nowyear = year(curdate());
	select substr(max(userId),1,4) into id from users;
	if id < nowyear then
		set new.userId = nowyear*100000;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `v_auth`
--

DROP TABLE IF EXISTS `v_auth`;
/*!50001 DROP VIEW IF EXISTS `v_auth`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_auth` AS SELECT 
 1 AS `userId`,
 1 AS `auth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_professors`
--

DROP TABLE IF EXISTS `v_professors`;
/*!50001 DROP VIEW IF EXISTS `v_professors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_professors` AS SELECT 
 1 AS `userId`,
 1 AS `auth`,
 1 AS `pw`,
 1 AS `name`,
 1 AS `mobile`,
 1 AS `email`,
 1 AS `major`,
 1 AS `major2`,
 1 AS `subMajor`,
 1 AS `zipCode`,
 1 AS `address1`,
 1 AS `address2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_students`
--

DROP TABLE IF EXISTS `v_students`;
/*!50001 DROP VIEW IF EXISTS `v_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_students` AS SELECT 
 1 AS `userId`,
 1 AS `auth`,
 1 AS `pw`,
 1 AS `name`,
 1 AS `mobile`,
 1 AS `email`,
 1 AS `major`,
 1 AS `major2`,
 1 AS `subMajor`,
 1 AS `zipCode`,
 1 AS `address1`,
 1 AS `address2`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'lms'
--

--
-- Dumping routines for database 'lms'
--

--
-- Final view structure for view `v_auth`
--

/*!50001 DROP VIEW IF EXISTS `v_auth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_auth` AS select `users`.`userId` AS `userId`,`users`.`auth` AS `auth` from `users` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_professors`
--

/*!50001 DROP VIEW IF EXISTS `v_professors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_professors` AS select `users`.`userId` AS `userId`,`users`.`auth` AS `auth`,`users`.`pw` AS `pw`,`users`.`name` AS `name`,`users`.`mobile` AS `mobile`,`users`.`email` AS `email`,`users`.`major` AS `major`,`users`.`major2` AS `major2`,`users`.`subMajor` AS `subMajor`,`users`.`zipCode` AS `zipCode`,`users`.`address1` AS `address1`,`users`.`address2` AS `address2` from `users` where (`users`.`auth` = '교수') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_students`
--

/*!50001 DROP VIEW IF EXISTS `v_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_students` AS select `users`.`userId` AS `userId`,`users`.`auth` AS `auth`,`users`.`pw` AS `pw`,`users`.`name` AS `name`,`users`.`mobile` AS `mobile`,`users`.`email` AS `email`,`users`.`major` AS `major`,`users`.`major2` AS `major2`,`users`.`subMajor` AS `subMajor`,`users`.`zipCode` AS `zipCode`,`users`.`address1` AS `address1`,`users`.`address2` AS `address2` from `users` where (`users`.`auth` = '학생') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15 11:36:15
