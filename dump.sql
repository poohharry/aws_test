-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
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
-- Table structure for table `blackmember`
--

DROP TABLE IF EXISTS `blackmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blackmember` (
  `mNum` int NOT NULL,
  `id` varchar(30) NOT NULL,
  `appointDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `freeDate` datetime DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackmember`
--

LOCK TABLES `blackmember` WRITE;
/*!40000 ALTER TABLE `blackmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `postNum` int NOT NULL,
  `writter` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `comNum` int NOT NULL AUTO_INCREMENT,
  `writeDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`comNum`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (16,'test','첫번째 댓글 테스트',8,'2022-06-14 16:38:52',NULL,'test(test)'),(17,'admin','@admin',9,'2022-06-14 16:52:05',NULL,'terst(admin)'),(17,'test','test로 재로그인',10,'2022-06-14 16:52:28',NULL,'terst(admin)'),(17,'test','test 계정으로 댓글 작성',11,'2022-06-14 16:56:47',NULL,'terst(admin)'),(17,'test','찐 test계정으로 댓글 작성중',12,'2022-06-14 17:00:55',NULL,'test'),(17,'test','첫번째 댓글 테스트',13,'2022-06-14 17:01:10',NULL,'test'),(6,'test','ㄹㄴㄴㅇㄹ',14,'2022-06-14 17:01:47',NULL,'test'),(4,'admin','첫번째 댓글 테스트',15,'2022-06-14 17:02:16',NULL,'terst'),(3,'ASDASD','댓글 닉네임 테스트',16,'2022-06-14 17:16:52',NULL,'test12323(ASDASD)'),(3,'admin','admin',17,'2022-06-14 17:17:53',NULL,'terst(admin)'),(3,'test','test',18,'2022-06-14 17:18:16',NULL,'test(test)'),(25,'admin','첫번째 댓글',19,'2022-06-15 12:51:38',NULL,'terst(admin)'),(31,'admin','ㅇㅁㄴㅇ',20,'2022-06-15 12:53:22',NULL,'terst(admin)'),(28,'admin','첫번째 댓글 테스트',21,'2022-06-15 12:55:05',NULL,'terst(admin)'),(28,'admin','ㅇㅁㄴㅇ',22,'2022-06-15 12:57:37',NULL,'terst(admin)'),(32,'admin','ㅇㅎㄴㅇㅎ',23,'2022-06-15 14:58:19',NULL,'terst(admin)'),(34,'RGEGRG','asdasd',24,'2022-06-18 14:39:59',NULL,'test(RGEGRG)'),(34,'RGEGRG','werwer',25,'2022-06-18 14:40:24',NULL,'test(RGEGRG)'),(64,'admin','asdasd',26,'2022-06-19 17:35:38',NULL,'terst(admin)'),(25,'RGEGRG','asdasdasd',30,'2022-06-21 11:27:13',NULL,'nickname(RGEGRG)'),(57,'test','sdfsdfsdf',31,'2022-06-21 16:18:10',NULL,'nickname(test)'),(57,'test','qwerqwfasdf',32,'2022-06-21 16:18:12',NULL,'nickname(test)');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delete_member`
--

DROP TABLE IF EXISTS `delete_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delete_member` (
  `mNum` int NOT NULL,
  `id` varchar(30) NOT NULL,
  `pw` varchar(30) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `pNum` text NOT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `signUpDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lgnFailCnt` int DEFAULT '0',
  `changePwDate` date DEFAULT NULL,
  `lastLoginDate` date DEFAULT NULL,
  `isBiz` varchar(4) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `deleteDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delete_member`
--

LOCK TABLES `delete_member` WRITE;
/*!40000 ALTER TABLE `delete_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `delete_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `pNum` int NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `writter` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `tag` text,
  `wrDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `corDate` datetime DEFAULT NULL,
  `postPw` varchar(30) DEFAULT NULL,
  `viewCnt` int NOT NULL DEFAULT '0',
  `nickname` varchar(45) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  PRIMARY KEY (`pNum`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (24,'Free_board','자유게시판 테스트','admin','<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>',NULL,'2022-06-15 10:26:29',NULL,NULL,7,'terst(admin)',NULL,NULL),(25,'Free_board','사진 업로드 테스트','admin','<p>uploadFiles 폴더에 들어가 있으면 성공</p>',NULL,'2022-06-15 10:44:55',NULL,NULL,36,'terst(admin)','11.jpg',19707),(26,'Q&A_Board','사진 업로드 테스트 프로젝트폴더','admin','<p>프로젝트안의 폴더로 저장돼야함</p>',NULL,'2022-06-15 10:50:15',NULL,NULL,4,'terst(admin)',NULL,0),(27,'Q&A_Board','ㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ','admin','<p>ㅁㄴㅇㄻㄴㄻㄴ</p>',NULL,'2022-06-15 11:21:13',NULL,NULL,4,'terst(admin)','png.png',13692),(28,'Q&A_Board','ㅁㅇㄴㅇㅁㄴㅇㅁㄴ','admin','<p>ㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>',NULL,'2022-06-15 11:37:17',NULL,NULL,7,'terst(admin)','1.jpg',19707),(29,'Q&A_Board','테스트','admin','<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>',NULL,'2022-06-15 11:54:10',NULL,NULL,4,'terst(admin)','animation.png',4990),(30,'Notice_Board','공지사항 테스트','admin','<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>',NULL,'2022-06-15 11:54:48',NULL,NULL,5,'terst(admin)','3.jpg',26874),(31,'Notice_Board','ㅇㄻㄴㄻㄴㅇㄻㄴㅇ','admin','<p>ㄻㄴㄻㄴㄻㄴㄻㄴㄹ</p>',NULL,'2022-06-15 12:06:29',NULL,NULL,8,'terst(admin)','2.jpg',25413),(32,'Notice_Board','ㅇ롱','admin','<p>롱롱로</p>',NULL,'2022-06-15 14:58:15',NULL,NULL,7,'terst(admin)','31.jpg',26874),(33,'Free_board','이미지 및 에디터 속성 테스트','admin','<p>돋움 9포인트 기본 텍스트</p><p><br></p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\">﻿굴림 18포인트</span>&nbsp;</p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><br></span></p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><br></span></p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><b>​굴림 18포인트 볼드</b>&nbsp;</span></p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><b><br></b></span></p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><b><span style=\"color: rgb(255, 0, 0);\">굴림 18포인트 볼드 레드</span></b></span></p><p><span style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><b><span style=\"color: rgb(255, 0, 0);\"><br></span></b></span></p><p><b style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><span style=\"color: rgb(255, 0, 0);\"><br></span></b></p><p style=\"text-align: center; \" align=\"center\"><b style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><span style=\"color: rgb(255, 0, 0);\">굴림 18포인트 볼드 레드 중앙배치﻿</span></b></p><p style=\"text-align: center; \" align=\"center\"><b style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><span style=\"color: rgb(255, 0, 0);\"><br></span></b></p><p style=\"text-align: center; \" align=\"center\"><b style=\"font-family: 굴림, Gulim; font-size: 18pt;\"><span style=\"color: rgb(255, 0, 0);\"><a href=\"https://naver.com\" target=\"_self\">https://naver.com</a>&nbsp;링크 테스트<br></span></b></p>',NULL,'2022-06-16 09:58:39',NULL,NULL,26,'terst(admin)','galaxy.jpg',20250),(34,'Free_board','글쓰기 리스트 테스트','test','<p>qweqweqwe</p>',NULL,'2022-06-18 14:35:34',NULL,NULL,20,'test(test)','92377d200ef4204b2a7a76f96cb2169e.jpg',103104),(35,'Q&A_Board','글쓰기 리스트 테스트','test','<p>afasfasfasf</p>',NULL,'2022-06-18 16:55:21',NULL,NULL,39,'test(test)',NULL,0),(36,'Q&A_Board','fasfasfas','test','<p>fasfasfasf</p>',NULL,'2022-06-18 16:55:26',NULL,NULL,12,'test(test)',NULL,0),(37,'Free_board','gsddg','test','<p>gwegsdgs</p>',NULL,'2022-06-18 16:57:39',NULL,NULL,12,'test(test)',NULL,0),(38,'Free_board','gw2342y4y','test','<p>sry34rhsher</p>',NULL,'2022-06-18 16:57:46',NULL,NULL,42,'test(test)',NULL,0),(39,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,12,'test(test)',NULL,0),(40,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,14,'test(test)',NULL,0),(41,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,1,'test(test)',NULL,0),(42,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,4,'test(test)',NULL,0),(43,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,92,'test(test)',NULL,0),(44,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(45,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(46,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(47,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,57,'test(test)',NULL,0),(48,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(49,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(50,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(51,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(52,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(53,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,92,'test(test)',NULL,0),(54,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(55,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(56,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,2,'test(test)',NULL,0),(57,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,138,'test(test)',NULL,0),(58,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,2,'test(test)',NULL,0),(59,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,5,'test(test)',NULL,0),(60,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,1,'test(test)',NULL,0),(61,'Free_board','글쓰기 리스트 테스트','test','<p>123123</p>',NULL,'2022-06-18 16:57:52',NULL,NULL,0,'test(test)',NULL,0),(62,'Free_board','글쓰기 리스트 테스트','admin','<p>ㅇㅎㄴㅇㅎㄴㅇㅎ</p>',NULL,'2022-06-19 17:29:34',NULL,NULL,0,'terst(admin)','C언어 메모.txt',863),(63,'Free_board','파일 업로드 형식 테스트','admin','<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>',NULL,'2022-06-19 17:32:21',NULL,NULL,3,'terst(admin)','C언어 메모1.txt',863),(64,'Free_board','파일 업로드 형식 테스트','admin','<p>ㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ</p>',NULL,'2022-06-19 17:35:18',NULL,NULL,33,'terst(admin)',NULL,0),(66,'Free_board','asfasfasfaef','test','<p>sdfwefsdf</p>',NULL,'2022-06-21 15:45:53',NULL,NULL,6,'nickname(test)','1616387550.jpg',18333);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `mNum` int NOT NULL,
  `id` varchar(30) NOT NULL,
  `pw` varchar(30) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `pNum` text NOT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `signUpDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lgnFailCnt` int DEFAULT '0',
  `changePwDate` date DEFAULT NULL,
  `lastLoginDate` date DEFAULT NULL,
  `isBiz` varchar(4) DEFAULT NULL,
  `nickname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1234','admin','poohharry@naver.com','123123','2123-12-12','2022-06-03 12:54:59',0,NULL,NULL,'NULL','terst'),(3,'asd','1234','강지우','poohharry@naver.com','01042403631','null-2-null','2022-06-10 12:08:25',0,NULL,NULL,'NULL','test123'),(8,'asd123','1234','change','asdasd@naver.com','01012341234','null-3-null','2022-06-21 13:10:04',0,NULL,NULL,'NULL','master'),(5,'ASDASD','1234','강지우','poohharry@naver.com','01042403631','1969-month-30','2022-06-10 12:41:27',0,NULL,NULL,'NULL','test12323'),(4,'asdf','123123123','tester','poohharry@naver.com','123123','1997-2-30','2022-06-10 12:39:42',0,NULL,NULL,'NULL','test'),(10,'asdf123','1234','tom','poohharry12@naver.com','01042403631','1997-3-14','2022-06-21 16:33:17',0,NULL,NULL,'NULL','master'),(2,'test','1234','강지우','poohharry1@naver.com','01042403631','1997-3-14','2022-06-09 14:50:06',0,NULL,NULL,'NULL','nickname'),(6,'test123','1234','tom','123@naver.com','01012341234','null-3-null','2022-06-21 12:58:55',0,NULL,NULL,'NULL','master'),(9,'test1231','1234','tom','poohharry123@naver.com','01012312312','null-9-null','2022-06-21 14:32:20',0,NULL,NULL,'NULL','master'),(7,'test1234','1234','tom','asd@naver.com','01012312312','null-2-null','2022-06-21 12:59:59',0,NULL,NULL,'NULL','master');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteTrg` AFTER DELETE ON `users` FOR EACH ROW begin
	insert into delete_member values(old.mNum, old.id, old.pw, old.name, old.email, old.pNum, old.birth, old.signUpDate, old.lgnFailCnt, old.changePwDate, old.lastLoginDate, old.isBiz, old.nickname, now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'project1'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `autoDelete` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `autoDelete` ON SCHEDULE EVERY 10 SECOND STARTS '2022-06-08 14:14:20' ON COMPLETION NOT PRESERVE ENABLE DO CALL realDelete() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `autoFreeBlack` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `autoFreeBlack` ON SCHEDULE EVERY 10 SECOND STARTS '2022-06-18 10:52:18' ON COMPLETION NOT PRESERVE ENABLE DO CALL freeBlackList() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'project1'
--
/*!50003 DROP PROCEDURE IF EXISTS `freeBlackList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `freeBlackList`()
begin
	delete from blackmember where freeDate < now();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `realDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `realDelete`()
begin
	delete from delete_member where deleteDate < DATE_ADD(now(), INTERVAL -1 MINUTE);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 13:05:43
