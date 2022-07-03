-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: jobfair
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
-- Table structure for table `applycom`
--

DROP TABLE IF EXISTS `applycom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applycom` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `userNum` int NOT NULL,
  `employNum` int NOT NULL,
  `resumeNum` int NOT NULL,
  `progress` varchar(10) NOT NULL,
  `regiDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applycom`
--

LOCK TABLES `applycom` WRITE;
/*!40000 ALTER TABLE `applycom` DISABLE KEYS */;
INSERT INTO `applycom` VALUES (1,1,1,1,'서류심사','2022-06-27 16:17:02'),(2,1,3,1,'1차 면접 합격','2022-06-28 10:40:29');
/*!40000 ALTER TABLE `applycom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals`
--

DROP TABLE IF EXISTS `generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals` (
  `comNum` int NOT NULL AUTO_INCREMENT,
  `comName` varchar(255) NOT NULL,
  `ceoName` varchar(45) NOT NULL,
  `foundedDate` varchar(45) NOT NULL,
  `comAddress` text NOT NULL,
  `comUrl` varchar(255) DEFAULT '-',
  `comTel` varchar(255) NOT NULL,
  `sectors` varchar(40) NOT NULL,
  `businessInfo` varchar(255) NOT NULL,
  `comSize` varchar(30) NOT NULL,
  `logoName` varchar(255) NOT NULL,
  `logoSize` int NOT NULL,
  `userType` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `pw` varchar(45) NOT NULL,
  PRIMARY KEY (`comNum`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generals`
--

LOCK TABLES `generals` WRITE;
/*!40000 ALTER TABLE `generals` DISABLE KEYS */;
INSERT INTO `generals` VALUES (1,'㈜엠제이티','진종호','2012년 7월 3일','부산 사상구 새벽로 77번길 74, 82','-','01012345678','제조업','기계부품','50~299인','MJT_logo.png',4055,'biz','test1','1234'),(2,'㈜청담아이앤씨','최용우','2020년 1월 21일','부산 남구 황령대로 319번나길 57, 1층(대연동)','-','01012345678','서비스','청소, 경비, 방역','1~4인','청담아이앤씨_logo.png',8462,'biz','test2','1234'),(3,'에스지씨앤씨 주식회사','최준완','	2016년 8월 30일','부산 수영구 민락로 19번길 21, 3층(민락동)','	http://sgcnc.kr','01012345678','정보통신업','소프트웨어 개발','5~49인','에스지씨앤씨 주식회사.png',8589,'biz','test3','1234'),(4,'코리아모빌리티 주식회사	','이호준','2019년 5월 28일	','부산 강서구 경전철로 188번길 125-7(대저동)','	http://korea-mobility.com','01012345678','제조업, 도소매','자동차용 부품, 장애인용 차량 부품 제조','5~49인','코리아모빌리티_logo.png',8476,'biz','test4','1234'),(5,'부산커피협동조합','이성록','2014년 10월 16일','부산 남구 황령대로 319번가길 53, 1층(대연동)','	http://www.busancoffee.com','01012345678','도소매, 제조업','원두커피, 커피가공','5~49인','부산커피협동조합_logo.png',11608,'biz','test5','1234'),(6,'영일신소재','김명수','2021년 10월 1일','부산 사상구 낙동대로 1338번길 60(삼락동)','-','01012345678','제조업, 신발부품창','신발창 제조','5~49인','영일신소재_logo.png',1626,'biz','test6','1234'),(7,'주식회사 아델라7','서홍원','2019년 3월 1일','부산 남구 황령대로 319번나길 30(대연동)','	http://blog.naver.com/adelady1','01012345678','제조업','제과제빵','5~49인','아델라7_logo.png',6049,'biz','test7','1234'),(8,'미래부동산','신선자','2017년 3월 6일','부산 부산진구 서면문화로 14, 3층','-','01012345678','부동산 중개','중개업, 컨설팅','5~49인','미래부동산_logo.png',1714,'biz','test8','1234'),(9,'오스템임플란트㈜','엄태관','2002년 8월 20일','부산 해운대구 반송로 513번길 66-16(석대동)','http://www.osstem.com','01012345678','치과 의료기기 제조업','치아 임플란트 등 제조','300인 이상','오스템임플란트_logo.png',8020,'biz','test9','1234'),(10,'㈜동아위드','이경숙, 이경희','2016년 11월 16일','부산 사하구 낙동대로 542, 지하층 301호(하단동, 대우에덴프라자)','http://www.dongawith.com','01012345678','제조업','인쇄, 출력','50~299인','동아위드_logo.png',2649,'biz','test10','1234'),(11,'페이퍼컴퍼니','강지우','1997-03-14','부산광역시 부산진구 전포동892-21','-','01042403631','서비스','	소프트웨어개발','max50','92377d200ef4204b2a7a76f96cb2169e3.jpg',103104,'biz','test11','1234'),(12,'동아','강지우','2021년 05월 23일','부산광역시 부산진구 전포동892-21','-','01042403631','서비스','병원','101 ~ 300인','92377d200ef4204b2a7a76f96cb2169e.jpg',103104,'biz','test12','1234'),(13,'페이퍼컴퍼니','강지우','1997년 03월 14일','부산광역시 부산진구 전포동892-21','-','01042403631','보건업','병원','301 ~ 600인','1627383422.jpg',16102,'biz','test13','1234');
/*!40000 ALTER TABLE `generals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercom`
--

DROP TABLE IF EXISTS `intercom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercom` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `userNum` int NOT NULL,
  `employNum` int NOT NULL,
  `regiDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercom`
--

LOCK TABLES `intercom` WRITE;
/*!40000 ALTER TABLE `intercom` DISABLE KEYS */;
INSERT INTO `intercom` VALUES (1,1,1,'2022-06-27 12:59:23'),(2,1,2,'2022-06-27 12:59:44'),(3,2,6,'2022-06-27 13:05:38'),(6,4,10,'2022-07-01 17:12:51'),(14,4,8,'2022-07-01 19:15:33'),(15,4,4,'2022-07-01 19:15:38');
/*!40000 ALTER TABLE `intercom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobopening`
--

DROP TABLE IF EXISTS `jobopening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobopening` (
  `employNum` int NOT NULL AUTO_INCREMENT,
  `comNum` int NOT NULL,
  `title` varchar(40) NOT NULL,
  `position` varchar(40) NOT NULL,
  `people` int NOT NULL,
  `task` text NOT NULL,
  `workArea` varchar(40) NOT NULL,
  `education` varchar(30) NOT NULL,
  `career` varchar(30) NOT NULL,
  `employType` varchar(30) NOT NULL,
  `workType` varchar(40) NOT NULL,
  `pay` varchar(30) NOT NULL,
  `insurance` varchar(50) NOT NULL,
  `officeHours` varchar(40) NOT NULL,
  `etc` varchar(255) DEFAULT '-',
  `major` varchar(30) DEFAULT '-',
  `certificate` varchar(50) DEFAULT '-',
  `computerLevel` varchar(30) DEFAULT '-',
  `facilities` varchar(255) DEFAULT '-',
  `welfare` varchar(255) DEFAULT '-',
  `preferred` varchar(255) DEFAULT '-',
  `openingDate` varchar(255) NOT NULL,
  `overtime` varchar(128) DEFAULT '-',
  `bonus` varchar(128) DEFAULT '-',
  `severancePay` varchar(128) DEFAULT '-',
  PRIMARY KEY (`employNum`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobopening`
--

LOCK TABLES `jobopening` WRITE;
/*!40000 ALTER TABLE `jobopening` DISABLE KEYS */;
INSERT INTO `jobopening` VALUES (1,1,'test','CNC제조 가공 및 가공후처리',6,'CNC, MCT. 가공후처리(버핑)','사상구','무관','무관','기간의 정함이 없는 근로계약(수습 3개월 있음)','주5일','시급','국민연금, 건강보험, 고용보험, 산재보험','08:30~17:30','-','-','-','-','-','-','-','2022.09.12 ~ 2022.09.23','-','-','-'),(2,2,'test1','청소원, 청소관리자',3,'청소방역 업무 및 현장총괄	','부산전체','무관','무관','기간의 정함이 있는 근로계약	','주5~6일','월급(180~300만원)','국민연금, 건강보험, 고용보험, 산재보험','시간협의','각 현장 및 역할에 따라 근무시간 및 조건 상이','-','-','-','-','-','-','2022.09.12 ~ 2022.09.23','-','-','-'),(3,3,'test2','소프트웨어 개발자 및 웹디자이너',5,'웹 프로그램 개발 및 웹 디자인 업무	','수영구, 재택근무','무관','무관','기간의 정함이 없는 근로계약	','주5일','월급(사규에 따름)	','국민연금, 건강보험, 고용보험, 산재보험','09:00~18:00	','면접 후 본사/재택근무 결정, 재택근무 시 업무에 필요한 기자재(컴퓨터 및 전화기) 제공','컴퓨터공학, 웹디자인','정보처리산업기사','문서작성, 표계산, 프리젠테이션','-','-','-','2022.09.12 ~ 2022.09.23','-','-','-'),(4,4,'test3','사무 및 생산보조',2,'문서작업 및 정리, 조립보조	','강서구','고졸','무관','기간의 정함이 있는 근로계약	','주5일','시급','국민연금, 건강보험, 고용보험, 산재보험','08:30~17:30	','-','이공계 학사','자동차 정비기능사','문서작성, 표계산, 회계프로그램','주차장, 화장실','-','운전가능자','2022.09.19 ~ 2022.09.23','-','-','-'),(5,5,'test4','바리스타, 머신 관리',1,'카페 바리스타, 머신 관리','남구','무관','무관','기간의 정함이 있는 근로계약	','주5일','월급','국민연금, 건강보험, 고용보험, 산재보험','09:00~18:00','식사 미제공','-','-','문서작성, 표계산, 프레젠테이션','주차장, 화장실','-','운전가능자','2022.09.12 ~ 2022.09.23','-','-','-'),(6,3,'test5','프론트엔드 개발자',2,'프론트엔드 개발자','수영구, 재택근무','무관','무관','기간의 정함이 없는 근로계약	','주5일','월급(사규에 따름)	','국민연금, 건강보험, 고용보험, 산재보험','09:00~18:00	','면접 후 본사/재택근무 결정, 재택근무 시 업무에 필요한 기자재(컴퓨터 및 전화기) 제공','컴퓨터공학, 웹디자인','정보처리산업기사','문서작성, 표계산, 프리젠테이션','주차장, 화장실','-','운전가능자','2022.09.19 ~ 2022.09.23','-','-','-'),(7,6,'test6','고무제품 프레스 조작 생산직	',2,'프레스','사상구','무관','무관','기간의 정함이 없는 근로계약	','주5일','시급(290만원이상)	','국민연금, 건강보험, 고용보험, 산재보험','08:00~17:00(주간), 17:00~04:00(야간)','1식 제공','-','-','-','-','-','인근거주자','2022.09.19 ~ 2022.09.23','-','-','-'),(8,7,'test7','생산직',4,'제과제빵 보조','남구','무관','무관','기간의 정함이 있는 근로계약	','주5일','월급(100만원 이상)	','국민연금, 건강보험, 고용보험, 산재보험','시간협의','식사 미제공','-','-','-','-','-','인근거주자, 운전가능자','2022.09.12 ~ 2022.09.23','-','-','-'),(9,8,'test8','인터넷 광고',1,'인터넷 광고','재택근무','무관','무관','시간제','주5일','시급(80~100만원)','국민연금, 건강보험, 고용보험, 산재보험','시간협의(주 20시간)','-','-','-','-','-','-','-','2022.09.19 ~ 2022.09.23','-','-','-'),(10,9,'test9','제조직',8,'조립, 포장, 검사 등	','해운대구','무관','무관','기간의 정함이 있는 근로계약	','주5일','시급','국민연금, 건강보험, 고용보험, 산재보험','08:30~17:30','2식 제공, 야간 근로시 식대 지급','-','-','-','주차장, 승강기, 화장실, 경사로','-','-','2022.09.12 ~ 2022.09.23','-','-','-'),(11,10,'test10','단순 생산직',5,'인쇄 후 가공, 작업복 미싱','사하구','무관','무관','기간의 정함이 있는 근로계약	','주5일','월급(915,600원 이상)','국민연금, 건강보험, 고용보험, 산재보험','시간협의','1식 제공','-','-','-','주차장, 승강기, 화장실, 경사로','-','청년층, 장년(고령자), 여성','2022.09.19 ~ 2022.09.23','-','-','-');
/*!40000 ALTER TABLE `jobopening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume` (
  `resumeNum` int NOT NULL AUTO_INCREMENT,
  `userNum` int NOT NULL,
  `militaryService` varchar(10) NOT NULL,
  `assistive` varchar(20) NOT NULL,
  `assistiveDevice` varchar(30) DEFAULT '-',
  `schoolName` varchar(20) NOT NULL,
  `education` varchar(10) NOT NULL,
  `major` varchar(30) DEFAULT '-',
  `institutionName1` varchar(255) DEFAULT '-',
  `period1` varchar(255) DEFAULT '-',
  `content1` varchar(255) DEFAULT '-',
  `note1` varchar(255) DEFAULT '-',
  `institutionName2` varchar(255) DEFAULT '-',
  `period2` varchar(255) DEFAULT '-',
  `content2` varchar(255) DEFAULT '-',
  `note2` varchar(255) DEFAULT '-',
  `institutionName3` varchar(255) DEFAULT '-',
  `period3` varchar(255) DEFAULT '-',
  `content3` varchar(255) DEFAULT '-',
  `note3` varchar(255) DEFAULT '-',
  `certificate1` varchar(255) DEFAULT '-',
  `certificateNum1` varchar(255) DEFAULT '-',
  `registration1` varchar(255) DEFAULT '-',
  `issuer1` varchar(255) DEFAULT '-',
  `issueDate1` varchar(255) DEFAULT '-',
  `certificate2` varchar(255) DEFAULT '-',
  `certificateNum2` varchar(255) DEFAULT '-',
  `registration2` varchar(255) DEFAULT '-',
  `issuer2` varchar(255) DEFAULT '-',
  `issueDate2` varchar(255) DEFAULT '-',
  `certificate3` varchar(255) DEFAULT '-',
  `certificateNum3` varchar(255) DEFAULT '-',
  `registration3` varchar(255) DEFAULT '-',
  `issuer3` varchar(255) DEFAULT '-',
  `issueDate3` varchar(255) DEFAULT '-',
  PRIMARY KEY (`resumeNum`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` VALUES (1,1,'finished','nonexistence','-','서울대학교','graduate','의예과','예일직업전문학교','2022.01.12 ~ 2022.07.26','웹 개발','-','-','-','-','-','-','-','-','-','JLPT','N1','123-123','일본국제교류기금','2021.01.19','-','-','-','-','-','-','-','-','-','-');
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userNum` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `prefixNum` varchar(8) NOT NULL,
  `suffixNum` varchar(7) NOT NULL,
  `livingArea` varchar(50) NOT NULL,
  `phoneNum` varchar(11) NOT NULL,
  `disType` varchar(30) NOT NULL,
  `disLevel` varchar(10) NOT NULL,
  `userType` varchar(45) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userNum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'관리자','11111111','1111111','부산진구','01012345678','없음','0','dis','남'),(2,'관리자2','22222222','2222222','해운대구','01012345678','없음','0','dis','여'),(4,'tom','19970314','1234567','해운대구','01042403631','청각장애','2등급','dis','남'),(5,'테스트1','19970314','1234567','영도구','01042403631','언어장애','3등급','dis','남'),(6,'테스트1','19970314','1234567','영도구','01042403631','언어장애','3등급','dis','여'),(7,'테스트1','19970314','1234567','영도구','01042403631','언어장애','3등급','dis','여'),(8,'테스트1','19970314','1234567','영도구','01042403631','언어장애','3등급','dis','여'),(9,'테스트1','19970314','1234567','해운대구','01042403631','청각장애','3등급','dis','남');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jobfair'
--

--
-- Dumping routines for database 'jobfair'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-03 17:21:46
