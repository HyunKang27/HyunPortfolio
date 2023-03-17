CREATE DATABASE  IF NOT EXISTS `shopping` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `shopping`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_num` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) NOT NULL,
  PRIMARY KEY (`cart_num`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'admin@email.com');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_detail` (
  `cart_detail_num` int(11) NOT NULL AUTO_INCREMENT,
  `cart_num` int(11) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_detail_num`),
  KEY `cart_num_idx` (`cart_num`),
  KEY `product_name_idx` (`product_name`),
  CONSTRAINT `cart_num` FOREIGN KEY (`cart_num`) REFERENCES `cart` (`cart_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
INSERT INTO `cart_detail` VALUES (11,1,'미소 깨끗한 피모를 위한 프리미엄 건강식 2kg',1,30000),(12,1,'미소 깨끗한 피모를 위한 프리미엄 건강식 2kg',1,30000),(13,1,'미소 깨끗한 피모를 위한 프리미엄 건강식 2kg',1,30000),(14,1,'미소 깨끗한 피모를 위한 프리미엄 건강식 2kg',1,30000),(15,1,'크린세이프 기저귀',2,14700),(16,1,'크린세이프 기저귀',2,14700);
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_num` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `day_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `order_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_detail_num`),
  KEY `order_num_idx` (`order_num`),
  KEY `product_name_idx` (`product_name`),
  CONSTRAINT `order_num` FOREIGN KEY (`order_num`) REFERENCES `orders` (`order_num`),
  CONSTRAINT `product_name` FOREIGN KEY (`product_name`) REFERENCES `product` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,1,'맛있는사료',1,100,'2023-01-11 16:31:52','주문취소'),(6,8,'강아지 덴디케어 치약',0,24000,'2023-01-17 18:41:09','주문취소'),(7,9,'강아지 덴디케어 치약',0,24000,'2023-01-17 18:42:01','주문취소'),(8,10,'보헤리 바삭64 멍멍이 간식 닭 가슴살',0,39000,'2023-01-17 18:58:18','주문취소'),(9,11,'로얄캐닌 독 미니 인도어 퍼피 1.5kg',1,50000,'2023-01-19 11:58:56','결제완료'),(10,12,'맛있는사료',1,100,'2023-01-19 14:34:42','결제완료'),(11,13,'맛있는사료',1,100,'2023-01-19 14:46:53','결제완료'),(12,14,'맛있는사료',1,100,'2023-01-19 14:47:36','결제완료'),(14,16,'강아지 덴디케어 치약',1,24000,'2023-01-19 15:16:41','결제완료'),(15,17,'강아지 덴디케어 치약',1,24000,'2023-01-19 15:17:39','주문취소'),(16,18,'마리앙 코트킹 브러쉬',1,38000,'2023-01-19 15:19:40','결제완료'),(17,19,'맛있는사료 연어 화태사료 참좋은',2,31000,'2023-01-19 16:08:39','결제완료'),(18,20,'맛있는사료 연어 화태사료 참좋은',2,31000,'2023-01-19 16:09:23','주문취소'),(19,21,'큐밸리 노브랜드 츄잉스틱 딸기 요거트',3,21000,'2023-01-19 17:27:42','결제완료'),(20,22,'진수성찬 어덜트 스페셜 5kg',1,33000,'2023-01-19 18:35:12','결제완료'),(21,23,'보헤리 바삭64 멍멍이 간식 한우스틱',7,21000,'2023-01-20 13:58:06','주문취소'),(22,24,'맛있는사료',27,100,'2023-01-20 13:59:09','주문취소'),(23,25,'맛있는사료',6,100,'2023-01-20 14:27:24','주문취소'),(24,26,'맛있는사료',10,100,'2023-01-20 14:27:33','주문취소'),(25,27,'맛있는사료',7,100,'2023-01-20 14:43:39','주문취소'),(26,28,'맛있는사료',30,100,'2023-01-20 15:05:18','주문취소'),(27,29,'맛있는사료',40,100,'2023-01-20 15:17:42','주문취소'),(28,30,'맛있는사료',40,100,'2023-01-20 15:26:53','주문취소'),(29,31,'맛있는사료',2,100,'2023-01-20 15:32:40','주문취소'),(30,32,'진수성찬 어덜트 스페셜 5kg',3,33000,'2023-01-20 15:53:06','결제완료'),(31,33,'진수성찬 어덜트 스페셜 5kg',3,33000,'2023-01-20 15:53:40','결제완료'),(32,34,'진수성찬 어덜트 스페셜 5kg',5,33000,'2023-01-20 15:53:45','결제완료'),(33,35,'진수성찬 어덜트 스페셜 5kg',5,33000,'2023-01-20 15:55:06','결제완료'),(34,36,'진수성찬 어덜트 스페셜 5kg',5,33000,'2023-01-20 15:55:37','결제완료'),(35,37,'진수성찬 어덜트 스페셜 5kg',7,33000,'2023-01-20 15:56:00','결제완료'),(36,38,'맛있는사료',5,100,'2023-01-20 16:35:51','주문취소'),(37,39,'맛있는사료',1,100,'2023-01-20 16:41:23','주문취소'),(38,40,'미소 깨끗한 피모를 위한 프리미엄 건강식 2kg',10,30000,'2023-01-20 16:48:28','주문취소'),(39,41,'맛있는사료',20,100,'2023-01-20 16:51:06','주문취소'),(40,42,'맛있는사료',20,100,'2023-01-20 16:53:01','주문취소'),(41,43,'맛있는사료',20,100,'2023-01-20 16:54:09','주문취소'),(42,44,'맛있는사료',20,100,'2023-01-20 16:57:04','결제완료'),(43,45,'맛있는사료',1,100,'2023-01-20 16:59:08','주문취소'),(44,46,'맛있는사료',1,100,'2023-01-20 17:00:39','주문취소'),(45,47,'진수성찬 어덜트 스페셜 5kg',6,33000,'2023-01-20 17:03:14','주문취소'),(46,48,'보헤리 바삭64 멍멍이 간식 한우스틱',3,21000,'2023-01-22 20:30:52','결제완료'),(47,49,'보헤리 바삭64 멍멍이 간식 한우스틱',3,21000,'2023-01-22 20:31:36','결제완료'),(48,50,'맛있는사료',3,100,'2023-01-25 15:24:16','결제완료'),(49,51,'헬로도그 캔디홀릭 고기막대사탕',3,8700,NULL,'주문취소'),(50,52,'보헤리 바삭64 멍멍이 간식 한우스틱',11,21000,'2023-01-25 18:36:11','주문취소'),(51,53,'크린세이프 기저귀',2,14700,'2023-01-25 18:36:31','주문취소'),(52,54,'보헤리 바삭64 멍멍이 간식 한우스틱',500,21000,'2023-01-26 18:30:26','주문취소'),(53,55,'보헤리 바삭64 멍멍이 간식 한우스틱',10,21000,NULL,'주문취소'),(54,57,'홈앤독 애견사료 소고기와 채소 5kg',3,34000,'2023-01-26 18:35:45','결제완료'),(55,58,'브라이트 마인 어덜트 스몰미니 2.5kg',1,57000,'2023-01-26 18:41:33','결제완료'),(56,59,'브라이트 마인 어덜트 스몰미니 2.5kg',1,57000,'2023-01-26 18:58:32','결제완료'),(57,60,'강아지 건강관리 귀세정제',1,14500,'2023-01-27 11:37:13','결제완료'),(58,61,'보헤리 바삭64 멍멍이 간식 닭 가슴살',1,39000,'2023-01-27 11:48:17','결제완료');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_num` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `day_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_num`),
  KEY `user_email_idx` (`email`),
  CONSTRAINT `user_email` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'admin@email.com','2023-01-11 16:30:53'),(7,'admin@email.com','2023-01-17 18:38:00'),(8,'admin@email.com','2023-01-17 18:41:09'),(9,'admin@email.com','2023-01-17 18:42:01'),(10,'admin@email.com','2023-01-17 18:58:17'),(11,'admin@email.com','2023-01-19 11:58:56'),(12,'admin@email.com','2023-01-19 14:34:42'),(13,'admin@email.com','2023-01-19 14:46:53'),(14,'admin@email.com','2023-01-19 14:47:36'),(15,'admin@email.com','2023-01-19 14:52:18'),(16,'sss@ssss.com','2023-01-19 15:16:41'),(17,'sss@ssss.com','2023-01-19 15:17:39'),(18,'sss@ssss.com','2023-01-19 15:19:40'),(19,'sss@ssss.com','2023-01-19 16:08:39'),(20,'sss@ssss.com','2023-01-19 16:09:23'),(21,'admin@email.com','2023-01-19 17:27:42'),(22,'admin@email.com','2023-01-19 18:35:12'),(23,'admin@email.com','2023-01-20 13:58:06'),(24,'admin@email.com','2023-01-20 13:59:08'),(25,'admin@email.com','2023-01-20 14:27:23'),(26,'admin@email.com','2023-01-20 14:27:33'),(27,'admin@email.com','2023-01-20 14:43:39'),(28,'admin@email.com','2023-01-20 15:05:18'),(29,'admin@email.com','2023-01-20 15:17:42'),(30,'admin@email.com','2023-01-20 15:26:53'),(31,'admin@email.com','2023-01-20 15:32:39'),(32,'admin@email.com','2023-01-20 15:53:05'),(33,'admin@email.com','2023-01-20 15:53:40'),(34,'admin@email.com','2023-01-20 15:53:45'),(35,'admin@email.com','2023-01-20 15:55:06'),(36,'admin@email.com','2023-01-20 15:55:37'),(37,'admin@email.com','2023-01-20 15:55:59'),(38,'admin@email.com','2023-01-20 16:35:51'),(39,'admin@email.com','2023-01-20 16:41:23'),(40,'admin@email.com','2023-01-20 16:48:28'),(41,'admin@email.com','2023-01-20 16:51:06'),(42,'admin@email.com','2023-01-20 16:53:00'),(43,'admin@email.com','2023-01-20 16:54:09'),(44,'admin@email.com','2023-01-20 16:57:04'),(45,'admin@email.com','2023-01-20 16:59:08'),(46,'admin@email.com','2023-01-20 17:00:39'),(47,'admin@email.com','2023-01-20 17:03:14'),(48,'admin@email.com','2023-01-22 20:30:52'),(49,'admin@email.com','2023-01-22 20:31:36'),(50,'admin@email.com','2023-01-25 15:24:16'),(51,'admin@email.com','2023-01-25 16:27:22'),(52,'admin@email.com','2023-01-25 18:36:11'),(53,'admin@email.com','2023-01-25 18:36:31'),(54,'admin@email.com','2023-01-26 18:30:26'),(55,'admin@email.com','2023-01-26 18:32:35'),(56,'admin@email.com','2023-01-26 18:35:19'),(57,'admin@email.com','2023-01-26 18:35:45'),(58,'admin@email.com','2023-01-26 18:41:33'),(59,'admin@email.com','2023-01-26 18:58:32'),(60,'admin@email.com','2023-01-27 11:37:13'),(61,'admin@email.com','2023-01-27 11:48:17');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_num` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_stock` int(11) DEFAULT NULL,
  `product_desc` text,
  `product_img_path` varchar(45) DEFAULT NULL,
  `product_score` decimal(2,1) DEFAULT NULL,
  `product_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `product_discount` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`product_num`),
  KEY `category_idx` (`product_name`),
  KEY `category_idx1` (`category`),
  CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `product_category` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'사료','맛있는사료',100,247,'수입사료',NULL,3.7,'2023-01-11 16:30:09',1.0),(3,'사료','진수성찬 어덜트 스페셜 5kg',33000,272,'성견용 고급사료','/a9038b5e44c009b04881644c37263a95.jpg',0.0,'2023-01-12 13:21:47',0.3),(4,'사료','미소 깨끗한 피모를 위한 프리미엄 건강식 2kg',30000,290,'기능성 프리미엄 건강식','/7ad24a7a3d79f3533405e681ce633d4c.jpg',4.0,'2023-01-12 13:24:26',1.0),(5,'사료','프로플랜 센서티브 스킨 앤스토막 어덜트 12kg',125000,200,'식이민감성 피부용','/375ccded6a40628193c4019fc6da3046.jpg',NULL,'2023-01-12 13:28:07',0.4),(6,'사료','반려견사료세이버 엑시전트 2kg',97000,200,'요로기건강 유지','/4d890c967101648c224fb4b0ef202bd0.jpg',NULL,'2023-01-12 13:28:07',1.0),(7,'사료','건사료 강아지 사료 강아지밥 4kg',132000,100,'유기농 인증제품','/2f76cfc507a826e9b55e3f76e1bd6633.jpg',NULL,'2023-01-12 13:28:07',1.0),(8,'사료','건강한사료 어덜트 개사료 1.5kg',79000,250,'관절과 뼈 건강 전용사료','/bf12403adc96f1631c57b1237223045c.jpg',NULL,'2023-01-12 13:34:26',1.0),(9,'사료','맛있는사료 연어 화태사료 참좋은',31000,200,'소프트 타입','/3f54bb0f14042c81671cf7c2a787f9f0.jpg',NULL,'2023-01-12 13:34:26',0.4),(10,'사료','홈앤독 애견사료 소고기와 채소 5kg',34000,298,'최적의 영양설계','/34f3fa239a6d68dcfac69f4b8aee195c.jpg',NULL,'2023-01-12 13:34:26',1.0),(11,'사료','원더독스 진도 10kg',45000,200,'복합 비타민','/f3f028de372313a1be1ea6a9aff01f56.jpg',NULL,'2023-01-12 13:34:26',1.0),(12,'사료','브라이트 마인 어덜트 스몰미니 2.5kg',57000,248,'건강한 노화와 인지능력 개선','/e27a3f2bf19aa93a01854ba13f37cfc4.jpg',NULL,'2023-01-12 13:38:52',1.0),(13,'사료','애견사료 슈슈 프리미엄 어덜트 1.5kg',13000,200,'필수영양소','/8e9e3672b5b99ddce3c1b23f4d18d546.jpg',NULL,'2023-01-12 13:38:52',1.0),(14,'사료','로얄캐닌 독 미니 인도어 퍼피 1.5kg',50000,300,'어린 강아지 맞춤 사료','/af0319ef8f0ccd5416cbb75a0b54b1bb.jpg',NULL,'2023-01-12 13:38:52',1.0),(15,'간식','보헤리 바삭64 멍멍이 간식 닭 가슴살',39000,199,'차원이 다른 바삭함','/71eca8bb7ff5c69c64c6e7a1a0ce0cc0.jpg',NULL,'2023-01-12 13:42:20',0.4),(16,'간식','보헤리 바삭64 멍멍이 간식 한우스틱',21000,647,'차원이 다른 바삭함','/d668c55a17cb70ba1355875bef0850e1.jpg',3.0,'2023-01-12 13:42:20',1.0),(17,'간식','큐밸리 노브랜드 츄잉스틱 딸기 요거트',21000,200,'그릭요거트가 들어있는 맛있는 츄잉껌','/84cc30fb1f84e6cc0140a4c6782085c7.jpg',NULL,'2023-01-12 13:42:20',1.0),(18,'간식','풀무원 아미오 연어 고구마말이',29000,300,'피부와 피모 건강에 좋은 기능성 간식','/1235528c91df7c46e0265aa2ae15dec7.jpg',NULL,'2023-01-12 13:48:37',1.0),(19,'간식','홍삼 영양 닭죽',5800,250,'건강 보양식','/e1cf7ef061e295264d5d72c7a3e61f0b.jpg',NULL,'2023-01-12 13:48:37',0.4),(20,'간식','참좋은 영양간식 소울대 닭고기',8700,500,'소울대에 고기를 감은 간식','/84a08677c89f84e9683bd64f8827f0cc.jpg',NULL,'2023-01-12 13:48:37',1.0),(21,'간식','헬로도그 캔디홀릭 고기막대사탕',8700,400,'맛도 영양도 홀릭홀릭','/56169c734146f0065878c37ed2908a35.jpg',NULL,'2023-01-12 13:48:37',0.3),(22,'간식','굿프랜드 칼라먼치껌 치석제거',7000,300,'치아를 위한 껌','/e5d87a5a8b0a4e5bc88acba3d0d155b2.jpg',NULL,'2023-01-12 13:48:37',1.0),(23,'간식','시저 연어와 감자캔',4700,500,'균형 잡힌 건강식','/6b8546fdc2a7ec4364fc3bb92d64f3e7.jpg',NULL,'2023-01-12 13:48:37',1.0),(24,'간식','한그득 댕이네맛집 오리큐브',13000,300,'홈메이드 방식','/de50fd7460c5c3e11977b7c611bfe989.jpg',NULL,'2023-01-12 13:51:07',1.0),(25,'배변/위생','강아지 덴디케어 치약',24000,200,'구강위생용품','/9e23c0f554db94ee6707dff496ace475.jpg',0.0,'2023-01-12 13:56:59',0.3),(26,'배변/위생','크린세이프 기저귀',14700,297,'기저귀','/93c54fc66c61ddeb693693c8a3808546.jpg',0.0,'2023-01-12 13:56:59',1.0),(27,'배변/위생','와우 배변수거 처리 봉투',25000,200,'배변봉투','/4aa5ebfd173faadb19d82c4d1592f14e.jpg',NULL,'2023-01-12 13:56:59',1.0),(28,'배변/위생','애견토일렛 강아지 배변판',81000,100,'배변판','/0e3c69f2c774338246bee0714f24b24a.jpg',NULL,'2023-01-12 13:56:59',1.0),(29,'배변/위생','넌슬립 배변패드',40000,200,'배변패드','/cbd09904f9989ef04ce6d5d355076389.jpg',NULL,'2023-01-12 13:56:59',0.4),(30,'배변/위생','리리펫 강아지탈취제',64700,200,'탈취제','/955d06a70dc0e13a56e0c5c015787294.jpg',NULL,'2023-01-12 13:56:59',1.0),(31,'배변/위생','MC 티어 스테인 리무버',31900,200,'눈물 자국제거','/76d2bd8b539a191c316ed29d693dbdcd.jpg',NULL,'2023-01-12 13:59:31',1.0),(32,'배변/위생','강아지 건강관리 귀세정제',14500,299,'귀세정제','/cc12aaa83337381a68bcbc5bebdc7565.jpg',NULL,'2023-01-12 13:59:31',1.0),(33,'의류/악세서리','켈리몰 강아지우비',24000,100,'강아지우비','/30c68723f4249e8c7780ceddeb8e99ae.jpg',NULL,'2023-01-12 14:18:48',1.0),(34,'의류/악세서리','플라워 엠보싱 강아지 슈즈',55000,100,'강아지슈즈','/9894b654a7d944fa21f28795fac1f54a.jpg',NULL,'2023-01-12 14:18:48',0.4),(35,'의류/악세서리','패리스독 쁘띠도트 패딩',32000,100,'강아지패딩','/5bc680676c7283eaa735400095c34188.jpg',NULL,'2023-01-12 14:18:48',1.0),(36,'의류/악세서리','플라워브로치',51000,100,'강아지원피스','/886b52169da97d0055a18012b46ff0cd.jpg',NULL,'2023-01-12 14:18:48',1.0),(37,'의류/악세서리','해피파티 할로윈 모자',10000,100,'강아지코스튬','/b826c4495972dcb5c298f2f806cd1c4a.jpg',NULL,'2023-01-12 14:18:48',1.0),(38,'의류/악세서리','체크 반려견 잠옷',50000,100,'강아지잠옷','/79f661fa36ce6d4af8dc69352baac83b.jpg',NULL,'2023-01-12 14:18:48',1.0),(39,'의류/악세서리','알파벳 버건디 티셔츠',32000,100,'강아지티셔츠','/89a4ce7297a880e117f5c8d1a1b72fde.jpg',NULL,'2023-01-12 14:18:48',0.4),(40,'의류/악세서리','패리스독 캐릭터 후드점퍼',24200,100,'강아지후드','/ea3a6621f34cc4ae04fe6704900450d0.jpg',NULL,'2023-01-12 14:18:48',1.0),(41,'의류/악세서리','더블 소프트 애견 리드줄',44000,100,'강아지리드줄','/c93c175fe81fde651415c876a64f02e0.jpg',NULL,'2023-01-12 14:18:48',0.3),(42,'의류/악세서리','문펫 체크 삼각 스카프',66800,100,'강아지스카프','/eda5641aa3b7d1975b1f6f00c99bc560.jpg',NULL,'2023-01-12 14:18:48',1.0),(43,'장난감','콩 스포츠볼 강아지장난감',37000,100,'공 장난감','/d1e4f5c5ffbe817606bd0e8f16ba4ac1.jpg',NULL,'2023-01-12 14:26:34',1.0),(44,'장난감','운동자극 삑삑이 봉제인형',14300,200,'인형 장난감','/1f8a6c06f64c8bfde6db2af3748bf697.jpg',NULL,'2023-01-12 14:26:34',0.3),(45,'장난감','스크림 치킨 애견장난감',3000,500,'훈련용 장난감','/b5fe09c0bb2fbde49b2cdf40b7051ac1.jpg',NULL,'2023-01-12 14:26:34',1.0),(46,'장난감','오뚝이 간식볼',16700,200,'훈련용 장난감','/775e3222dddc411aae3d484be6362cb1.jpg',NULL,'2023-01-12 14:26:34',0.4),(47,'장난감','푸찌 강아지 츄잉볼',11000,300,'훈련용 장난감','/7b92b8e7d0920a22d1106a60cae99252.jpg',NULL,'2023-01-12 14:26:34',1.0),(48,'장난감','아이큐 토이 강아지노즈워크',23000,200,'훈련용 장난감','/9f73a6e5b7c08e4f44d6a451644e18b2.jpg',NULL,'2023-01-12 14:29:45',1.0),(49,'장난감','치석제거 덴탈 로프토이',30000,200,'치아건강 장난감','/c6d1dd21b8c3e02ad57cbd81993ebe76.jpg',NULL,'2023-01-12 14:29:45',1.0),(50,'장난감','강아지 바베큐 장난감',54000,200,'인형 장난감','/516b1902ac5d17a2b354a6a89355ec80.jpg',NULL,'2023-01-12 14:29:45',1.0),(51,'목욕/미용','에이플러스 테이블 이동형 드라이기',960000,100,'드라이기','/9076b68965ff1cbfbdcbe77285e7053b.jpg',NULL,'2023-01-12 14:37:51',1.0),(52,'목욕/미용','손톡 깎기 커터 손질가위',930000,100,'발톱관리 용품','/0f564786a772d177b2eb5256e1e66a60.jpg',NULL,'2023-01-12 14:37:51',1.0),(53,'목욕/미용','마리앙 코트킹 브러쉬',38000,200,'브러시','/82583faff973d723ecf70289d178c2e7.jpg',NULL,'2023-01-12 14:37:51',1.0),(54,'목욕/미용','강아지욕조 애견 스파',39000,200,'미니욕조','/53e9fb597115cc8d85e5a10e66fcfa55.jpg',NULL,'2023-01-12 14:37:51',0.4),(55,'목욕/미용','고급 목욕 타올',51000,200,'강아지타올','/003eb3101850cd3ce13bbf3d524ed713.jpg',NULL,'2023-01-12 14:37:51',1.0),(56,'목욕/미용','벨버드 샴푸앤린스',65000,200,'샴푸앤리스','/2934629bda0c5ace6836d986f4e43155.jpg',NULL,'2023-01-12 14:37:51',0.3),(57,'목욕/미용','탑컷 클리퍼 YD 프로 이발기',259000,200,'강아지이발기','/84776f679660232a78610d75ef9e4529.jpg',NULL,'2023-01-12 14:37:51',1.0),(58,'목욕/미용','리케이 미용가위',102000,200,'강아지숱가위','/30d86cad7291fa971453909afd6aefdd.jpg',NULL,'2023-01-12 14:37:51',1.0),(59,'목욕/미용','리케이 텐더 테일 콤',98000,200,'강아지빗','/7d1949a8638da351616ca3fab818bd56.jpg',NULL,'2023-01-12 14:37:51',1.0),(60,'하우스','강아지 계단 버블팝',60000,200,'강아지계단','/edcfdce31aa87ad30f1fa6fe7269abb4.jpg',NULL,'2023-01-12 14:47:24',1.0),(61,'하우스','헤링본 미끄럼방지매트',350000,100,'강아지매트','/4f810e1f5f1fdfc44cc17362f8115642.jpg',NULL,'2023-01-12 14:47:24',1.0),(62,'하우스','심플 원목 안전문 화이트',364000,150,'강아지안전문','/11da8a4ea30e0a7e7b2702593fed2786.jpg',NULL,'2023-01-12 14:47:24',1.0),(63,'하우스','푸르미 강아지 울타리',58000,150,'강아지울타리','/a1a417108683637ac445ff40682d9516.jpg',NULL,'2023-01-12 14:47:24',0.4),(64,'하우스','킁킁 강아지 노즈워크 담요',48500,100,'강아지담요','/0a3b01838ca6f1369fee35bf7b64f010.jpg',NULL,'2023-01-12 14:47:24',1.0),(65,'하우스','강아지 무중력 방석',43000,150,'강아지방석','/6a1b1ad3bc4f0a63bcf4d0fff19be7e3.jpg',NULL,'2023-01-12 14:47:24',0.3),(66,'하우스','사계절 원터치 하우스',42000,200,'강아지하우스','/901ec645d8c9c7754db4eb59c957701d.jpg',NULL,'2023-01-12 14:47:24',1.0),(67,'하우스','알베로스 캐슬하우스',220000,100,'강아지하우스','/721a0b7268e56a14e79ba0b020bdc5d0.jpg',NULL,'2023-01-12 14:47:24',1.0),(68,'하우스','OH 탁펫 원형 해먹',47000,200,'강아지해먹','/5308710e398a45b2d88a6adf0d77f6be.jpg',NULL,'2023-01-12 14:47:24',1.0),(69,'식기/급수기','브리더 강아지 밧그릇',26000,300,'강아지식기','/31224a1aea3c8ef108ddd0a8eaf13a03.jpg',NULL,'2023-01-12 14:55:01',1.0),(70,'식기/급수기','푸르미 강아지 물그릇',35000,300,'강아지급수기','/43343c5a59e52b6b3af3eb25383a7b0c.jpg',NULL,'2023-01-12 14:55:01',0.4),(71,'식기/급수기','마이펫 반자동 급식기',33000,200,'강아지식기','/ef939cba9d0c6c5176b66d92f7a93535.jpg',NULL,'2023-01-12 14:55:01',1.0),(72,'식기/급수기','애구애구 반자동 구슬식기',28000,300,'강아지식기','/b811ba8a1081a8a34001da5482a0b768.jpg',NULL,'2023-01-12 14:55:01',1.0),(73,'식기/급수기','슈퍼펫 물그릇 급수기',25000,200,'강아지급수기','/41cb46f17fe8f786dacc7be3349ec0a1.jpg',NULL,'2023-01-12 14:55:01',1.0),(74,'식기/급수기','애완용 원터치 물병',26000,200,'휴대용물병','/abc65884c9458f7179f0f39532178e93.jpg',NULL,'2023-01-12 14:55:01',0.3),(75,'식기/급수기','동물나라 도자기 식기',27100,300,'강아지식기','/4c6137ca66e4e8077fbccf64fbf0a353.jpg',NULL,'2023-01-12 14:55:01',1.0),(76,'식기/급수기','계량저울 사료스쿱',28000,200,'강아지사료스쿱','/14ae39b4af0e29c1c069ba84d7fbf3bf.jpg',NULL,'2023-01-12 14:55:01',1.0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `category_num` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_num`),
  UNIQUE KEY `category_name_UNIQUE` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (2,'간식'),(6,'목욕/미용'),(3,'배변/위생'),(1,'사료'),(8,'식기/급수기'),(4,'의류/악세서리'),(5,'장난감'),(7,'하우스');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_num` int(11) NOT NULL AUTO_INCREMENT,
  `product_num` int(11) NOT NULL,
  `coment` text,
  `username` varchar(16) DEFAULT NULL,
  `coment_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `product_score` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`review_num`),
  KEY `user_name_idx` (`username`),
  KEY `product_num_idx` (`product_num`),
  CONSTRAINT `product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`),
  CONSTRAINT `user_name` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,2,'맛있네요','admin44','2023-01-11 16:33:09',4.0),(2,2,'sh','admin44','2023-01-19 11:51:34',3.0),(3,2,'에벱ㅂ','admin44','2023-01-19 08:56:47',4.0),(4,2,'','admin44','2023-01-20 04:30:37',3.0),(5,2,'re','admin44','2023-01-20 07:25:19',3.0),(6,2,'dddd','admin44','2023-01-20 07:26:22',4.0),(7,16,'내가 먹어봤는데 맛있어','admin44','2023-01-22 11:30:40',3.0),(8,2,'test','hyun','2023-01-26 09:18:23',5.0),(9,4,'잘먹어요!!','admin44','2023-01-27 06:38:29',4.0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT '일반',
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin@email.com','{noop}123','admin44',1033,'home33','ROLE_ADMIN'),('asd@naver.com','{noop}3','1',4,'5','ROLE_VIP'),('hyun@email.com','{noop}123','hyun',1012345678,'home','ROLE_일반'),('ssb70499@gmail.com','{noop}0227','subin',88977049,'Korea','ROLE_VIP'),('sss@ssss.com','{noop}1111','ììë¹',12345678,'b','ROLE_일반'),('yong@email.com','{noop}123','yong',10,'home','ROLE_VIP');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 17:45:53
