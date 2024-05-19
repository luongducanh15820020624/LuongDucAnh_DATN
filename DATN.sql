CREATE DATABASE  IF NOT EXISTS `javaweb16` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `javaweb16`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: javaweb16
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `seo` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6l2kfyw1kbyobvyqiwsrkc2g6` (`parent_id`),
  CONSTRAINT `FK6l2kfyw1kbyobvyqiwsrkc2g6` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES 
(1,'Hoodie Basic',1,'2021-11-23 00:00:00',NULL,NULL,NULL,NULL,'Hoodie Basic','Hoodie Basic'),
(2,'Sweater',1,'2021-11-22 00:00:00',NULL,NULL,NULL,1,'Sweater','Sweater'),
(3,'Jacket',1,'2021-11-30 20:34:50','2021-12-18 23:07:05',NULL,NULL,NULL,'Jacket','Jacket'),
(4,'Paints',NULL,NULL,NULL,NULL,NULL,NULL,'Paints','Paints'),
(5,'T-shirt',NULL,NULL,NULL,NULL,NULL,NULL,'T-shirt','T-shirt');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `massage` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES 
(37,'Ronaldo','ronaldo@gmail.com','welcom!!',1,'2023-06-07 01:39:41',NULL,NULL,NULL),
(38,'Ta Chu Ling','tachuling0624@gmail.com','Shop cố gắng nhập thêm sản phẩm nhé!',1,'2023-06-09 09:13:12',NULL,NULL,NULL),
(41,'Luong Duc Anh','ducanh3344@gmail.com','Sản phẩm tuyệt vời chưa từng có !',1,'2023-07-28 09:35:44',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_1tbl_category_Ntbl_products_idx` (`category_id`),
  CONSTRAINT `fk_1tbl_category_Ntbl_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=689 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES 
(58,'Hoodie Basic','Hoodie Basic','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Áo hoodie Basic - một lựa chọn hoàn hảo cho những ngày thời tiết se lạnh. Được làm từ chất liệu vải nỉ mềm mại, thoáng khí, giúp giữ ấm cơ thể mà vẫn tạo cảm giác thoải mái. Thiết kế đơn giản với màu sắc trung tính dễ dàng phối hợp với nhiều loại trang phục khác nhau.;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu cao cấp: Chống nhăn, chống xù lông;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">Túi trước tiện lợi: Đựng điện thoại, ví tiền;</span><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font><br><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Mũ trùm đầu: Bảo vệ khỏi gió lạnh;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><br><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đường may chắc chắn: Tăng độ bền, sử dụng lâu dài;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><br><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Dễ chăm sóc: Giặt máy an toàn, không phai màu.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><br></p>',790000.00,1,NULL,NULL,NULL,NULL,1,'product/avatar/ZS10 - 790000.jpg','casio-zs10',NULL),
(79,'Áo Hoodie Zip Basic nỉ bông local brand ','Áo Hoodie Zip Basic nỉ bông local brand ','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Áo hoodie Basic - một lựa chọn hoàn hảo cho những ngày thời tiết se lạnh. Được làm từ chất liệu vải nỉ mềm mại, thoáng khí, giúp giữ ấm cơ thể mà vẫn tạo cảm giác thoải mái. Thiết kế đơn giản với màu sắc trung tính dễ dàng phối hợp với nhiều loại trang phục khác nhau.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu cao cấp: Chống nhăn, chống xù lông</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Túi trước tiện lợi: Đựng điện thoại, ví tiền</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Mũ trùm đầu: Bảo vệ khỏi gió lạnh</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đường may chắc chắn: Tăng độ bền, sử dụng lâu dài</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Dễ chăm sóc: Giặt máy an toàn, không phai màu.</span></font></p>',490000.00,1,NULL,NULL,NULL,NULL,1,'product/avatar/Z500.png','casio-z500',NULL),
(80,'Áo Hoodie Basic Label','Áo Hoodie Basic Label','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Thiết kế đơn giản nhưng không kém phần thời trang, dễ dàng phối với nhiều trang phục khác nhau.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu cao cấp: Chống nhăn, chống xù lông</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Túi trước tiện lợi: Đựng điện thoại, ví tiền</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Mũ trùm đầu: Bảo vệ khỏi gió lạnh</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đường may chắc chắn: Tăng độ bền, sử dụng lâu dài</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Dễ chăm sóc: Giặt máy an toàn, không phai màu.</span></font></p>',590000.00,1,NULL,NULL,NULL,NULL,1,'product/avatar/EX V7 - 590000.jpg','casio-ex-v7',NULL),
(81,'Black Dust Jacket','Black Dust Jacket','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Áo Jacket - sự lựa chọn hoàn hảo cho những ai yêu thích phong cách lịch lãm, trang nhã. Được làm từ chất liệu len cao cấp, mềm mại, giữ ấm tốt mà vẫn đảm bảo sự thoải mái.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu len mềm: Mang lại cảm giác ấm áp, dễ chịu</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Kiểu dáng cardigan cổ điển: Phù hợp với nhiều phong cách thời trang</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Nút cài chắc chắn: Tiện lợi, dễ dàng mặc và tháo</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Màu sắc thanh lịch: Đa dạng lựa chọn, dễ phối đồ</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đường may tỉ mỉ: Tăng độ bền, vẻ ngoài tinh tế.</span></font></p>',390000.00,1,NULL,NULL,NULL,NULL,3,'product/avatar/COOLPIX 2100 - 390000.jpg','nikon-coolpix-2100',NULL),
(82,'DKMV Stripe Jacket','DKMV Stripe Jacket','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Được làm từ chất liệu len cao cấp, mềm mại, giữ ấm tốt mà vẫn đảm bảo sự thoải mái.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu len mềm: Mang lại cảm giác ấm áp, dễ chịu</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Kiểu dáng cardigan cổ điển: Phù hợp với nhiều phong cách thời trang</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Nút cài chắc chắn: Tiện lợi, dễ dàng mặc và tháo</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Màu sắc thanh lịch: Đa dạng lựa chọn, dễ phối đồ</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đường may tỉ mỉ: Tăng độ bền, vẻ ngoài tinh tế.</span></font></p>',290000.00,1,NULL,NULL,NULL,NULL,3,'product/avatar/COOLPIX S620.png','nikon-coolpix-s620',NULL),
(83,'Áo sweater nữ HY KOREA','Áo sweater nữ HY KOREA','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Áo Sweater Cardigan - sự lựa chọn hoàn hảo cho những ai yêu thích phong cách lịch lãm, trang nhã.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu len mềm: Mang lại cảm giác ấm áp, dễ chịu</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Kiểu dáng cardigan cổ điển: Phù hợp với nhiều phong cách thời trang</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Nút cài chắc chắn: Tiện lợi, dễ dàng mặc và tháo</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Màu sắc thanh lịch: Đa dạng lựa chọn, dễ phối đồ</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đường may tỉ mỉ: Tăng độ bền, vẻ ngoài tinh tế.</span></font></p>',390000.00,1,NULL,NULL,NULL,NULL,3,'product/avatar/COOLPIX S3300 - 390000.jpg','nikon-coolpix-s3300',NULL),
(125,'Áo Sweater Cardigan','Áo Sweater Cardigan','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Áo Sweater Cardigan - món đồ không thể thiếu trong tủ quần áo của bạn, phù hợp cho cả nam và nữ. Chất liệu bền bỉ, khả năng chống gió và giữ ấm tốt, lý tưởng cho những ngày thời tiết lạnh.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Đa dạng màu sắc: Dễ dàng lựa chọn theo phong cách cá nhân</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu chống thấm: Bảo vệ khỏi mưa nhẹ, sương mù.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Thiết kế năng động: Phù hợp cho cả hoạt động ngoài trời và đi làm.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Nhiều túi: Tiện lợi đựng điện thoại, chìa khóa.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Lớp lót ấm áp: Giữ nhiệt tốt, thoải mái cả ngày.</span></font></p><div><br></div>',790000.00,1,NULL,NULL,NULL,NULL,2,'product/avatar/F30.png','fujifilm-f30',NULL),
(126,'Sweater Pull-over','Sweater Pull-over','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\"> Chất liệu bền bỉ, khả năng chống gió và giữ ấm tốt, lý tưởng cho những ngày thời tiết lạnh.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu chống thấm</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Thiết kế năng động: Phù hợp cho cả hoạt động ngoài trời và đi làm</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Nhiều túi: Tiện lợi đựng điện thoại, chìa khóa.&nbsp;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Lớp lót ấm áp: Giữ nhiệt tốt, thoải mái cả ngày.&nbsp;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Lớp lót ấm áp: Giữ nhiệt tốt, thoải mái cả ngày.</span></font></p>',690000.00,1,NULL,NULL,NULL,NULL,2,'product/avatar/FINEPIX Z700EXR - 690000.jpg','fujifilm-finepix-z700exr',NULL),
(127,'DSS JACKET 90S - WHITE','DSS JACKET 90S - WHITE','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu bền bỉ, khả năng chống gió và giữ ấm tốt, lý tưởng cho những ngày thời tiết lạnh.</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu chống thấm: Bảo vệ khỏi mưa nhẹ, sương mù</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Ngoại hình: 94%&nbsp;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Thiết kế năng động: Phù hợp cho cả hoạt động ngoài trời và đi làm</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Nhiều túi: Tiện lợi đựng điện thoại, chìa khóa</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Lớp lót ấm áp: Giữ nhiệt tốt, thoải mái cả ngày.</span></font></p>',390000.00,1,NULL,NULL,NULL,NULL,4,'product/avatar/S2 - 390000.jpg','panasonic-s2',NULL),
(608,'Áo Khoác Spray Paint','PANASONIC DMC LS1','<p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Với thiết kế phun sơn độc đáo</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Họa tiết phun sơn: Tạo phong cách cá nhân, độc đáo</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu cotton pha: Thoáng khí, thoải mái</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Khóa kéo chắc chắn: Dễ dàng mặc và tháo.&nbsp;</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Thiết kế oversize: Phù hợp với nhiều dáng người</span></font></p><p style=\"margin-bottom: 10px; line-height: 21px; max-width: 100%;\"><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Bảo quản dễ dàng: Giặt máy an toàn, không phai màu.</span></font></p>',290000.00,1,NULL,NULL,NULL,NULL,4,'product/avatar/DMC LS1.png','panasonic-dmc-ls1',NULL),
(609,'Áo thun PAINT | Homies SG','PANASONIC DMC TZ3','<p><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Áo Khoác Spray Paint - một sự kết hợp độc đáo giữa nghệ thuật và thời trang. Với thiết kế phun sơn độc đáo, sản phẩm này sẽ giúp bạn nổi bật trong đám đông.</span></font></p><p><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Họa tiết phun sơn: Tạo phong cách cá nhân, độc đáo</span></font></p><p><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Chất liệu cotton pha: Thoáng khí, thoải mái.</span></font></p><p><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Khóa kéo chắc chắn: Dễ dàng mặc và tháo</span></font></p><p><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Thiết kế oversize</span></font></p><p><font color=\"#252a2b\" face=\"Quicksand, sans-serif\"><span style=\"font-size: 14px;\">Bảo quản dễ dàng.</span></font></p><p><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">&nbsp;</span><br></p>',690000.00,1,NULL,NULL,NULL,NULL,4,'product/avatar/DMC TZ3 - 690000.jpg','panasonic-dmc-tz3',NULL),
(681,'Áo Thun Local Brand T-Shirt','Áo Thun Local Brand T-Shirt','<p>Áo thun hàn quốc T-shirt Freesize - một lựa chọn thời trang và tiện dụng cho những ai yêu thích phong cách Hàn Quốc.</p><p>In hình sắc nét: Không phai màu sau nhiều lần giặt</p><p>Chất liệu cotton cao cấp</p><p>Thiết kế freesize: Phù hợp với mọi dáng người</p><p>Kiểu dáng trẻ trung</p><p>Đường may chắc chắn: Tăng độ bền, tránh bung chỉ.</p>',390000.00,1,NULL,NULL,NULL,NULL,5,'product/avatar/CYBERSHOT T11 - 390000.jpg','sony-cybershot-t11',NULL),
(685,'Áo thun hàn quốc t-shirt freesize','Áo thun hàn quốc t-shirt freesize','<p>Áo thun hàn quốc T-shirt Freesize - một lựa chọn thời trang và tiện dụng cho những ai yêu thích phong cách Hàn Quốc. Thiết kế freesize phù hợp với mọi dáng người, chất liệu cotton mềm mại.</p><p>Chất liệu cotton cao cấp: Thoáng mát, thấm hút mồ hôi</p><p>Thiết kế freesize: Phù hợp với mọi dáng người</p><p>Kiểu dáng trẻ trung: Đa dạng màu sắc, dễ phối đồ</p><p>Đường may chắc chắn: Tăng độ bền, tránh bung chỉ</p><p>In hình sắc nét: Không phai màu sau nhiều lần giặt.</p>',390000.00,1,NULL,NULL,NULL,NULL,5,'product/avatar/CYBERSHOT T100 .png','sony-cybershot-t100',NULL),
(686,'Unisex Richky Luxury Vietnamese Royal T Shirt','Unisex Richky Luxury Vietnamese Royal T Shirt','<p> Thiết kế freesize phù hợp với mọi dáng người, chất liệu cotton mềm mại.</p><p>Chất liệu cotton cao cấp: Thoáng mát, thấm hút mồ hôi</p><p>Thiết kế freesize: Phù hợp với mọi dáng người</p><p>Kiểu dáng trẻ trung: Đa dạng màu sắc, dễ phối đồ</p><p>Đường may chắc chắn: Tăng độ bền, tránh bung chỉ</p><p>In hình sắc nét: Không phai màu sau nhiều lần giặt.</p>',490000.00,1,NULL,NULL,NULL,NULL,5,'product/avatar/CYBERSHOT TX9 - 490000.jpg','sony-cybershot-tx9',NULL);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_1tbl_products_Ntbl_products_images_idx` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES 
(18,'the.jpg','product/pictures/the.jpg',670,1,NULL,NULL,NULL,NULL,NULL),
(56,'ZS10 - 790000.jpg','product/pictures/ZS10 - 790000.jpg',58,1,NULL,NULL,NULL,NULL,NULL),
(57,'Z500.png','product/pictures/Z500.png',79,1,NULL,NULL,NULL,NULL,NULL),
(58,'EX V7 - 590000.jpg','product/pictures/EX V7 - 590000.jpg',80,1,NULL,NULL,NULL,NULL,NULL),
(59,'COOLPIX 2100 - 390000.jpg','product/pictures/COOLPIX 2100 - 390000.jpg',81,1,NULL,NULL,NULL,NULL,NULL),
(60,'COOLPIX S620.png','product/pictures/COOLPIX S620.png',82,1,NULL,NULL,NULL,NULL,NULL),
(61,'COOLPIX S3300 - 390000.jpg','product/pictures/COOLPIX S3300 - 390000.jpg',83,1,NULL,NULL,NULL,NULL,NULL),
(63,'F30.png','product/pictures/F30.png',125,1,NULL,NULL,NULL,NULL,NULL),
(64,'FINEPIX Z700EXR - 690000.jpg','product/pictures/FINEPIX Z700EXR - 690000.jpg',126,1,NULL,NULL,NULL,NULL,NULL),
(65,'S2 - 390000.jpg','product/pictures/S2 - 390000.jpg',127,1,NULL,NULL,NULL,NULL,NULL),
(66,'DMC LS1.png','product/pictures/DMC LS1.png',608,1,NULL,NULL,NULL,NULL,NULL),
(67,'DMC TZ3 - 690000.jpg','product/pictures/DMC TZ3 - 690000.jpg',609,1,NULL,NULL,NULL,NULL,NULL),
(68,'CYBERSHOT T11 - 390000.jpg','product/pictures/CYBERSHOT T11 - 390000.jpg',681,1,NULL,NULL,NULL,NULL,NULL),
(69,'CYBERSHOT T100 .png','product/pictures/CYBERSHOT T100 .png',685,1,NULL,NULL,NULL,NULL,NULL),
(70,'CYBERSHOT TX9 - 490000.jpg','product/pictures/CYBERSHOT TX9 - 490000.jpg',686,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `description` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (3,'ADMIN',NULL,NULL,NULL,NULL,NULL,'ADMIN'),(4,'GUEST',NULL,NULL,NULL,NULL,NULL,'GUEST');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `user_id` int DEFAULT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_address` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_1tbl_users_Ntbl_saleorder` (`user_id`),
  CONSTRAINT `FKbiu8ui4krw8j3gtn97w3rdq7v` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES 
(34,'1696322328276',NULL,'Nguyen Minh Triet','Tan Binh - TP Ho Chi Minh','0955663321','minhtriet@gmail.com',NULL,1,'2023-10-03 15:38:48',NULL,NULL,NULL,NULL),
(35,'1696322381446',NULL,'Minh Triet','Tan Binh - TP Ho Chi Minh','0356213489','minhtriet123@gmail.com',NULL,1,'2023-10-03 15:39:41',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnyfdau9vc46jkiwvrgj1ns85v` (`product_id`),
  KEY `FKnpyir3q973iv4wq49ltw0kcrd` (`saleorder_id`),
  CONSTRAINT `FKnpyir3q973iv4wq49ltw0kcrd` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`),
  CONSTRAINT `FKnyfdau9vc46jkiwvrgj1ns85v` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES 
(48,34,80,1,1,NULL,NULL,NULL,NULL),
(49,34,79,2,1,NULL,NULL,NULL,NULL),
(50,34,81,1,1,NULL,NULL,NULL,NULL),
(51,35,125,2,1,NULL,NULL,NULL,NULL),
(52,35,608,2,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subcribe`
--

DROP TABLE IF EXISTS `tbl_subcribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subcribe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subcribe`
--

LOCK TABLES `tbl_subcribe` WRITE;
/*!40000 ALTER TABLE `tbl_subcribe` DISABLE KEYS */;
INSERT INTO `tbl_subcribe` VALUES 
(79,'hihi@gmail.com',1,'2023-03-06 14:43:32',NULL,NULL,NULL),
(93,'Messi333@gmail.com',1,'2023-06-07 01:41:13',NULL,NULL,NULL),
(94,'hai2244@gmail.com',1,'2023-06-09 09:10:24',NULL,NULL,NULL),
(95,'trieuanh137@gmail.com',1,'2023-06-19 08:01:26',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_subcribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `UKj562wwmipqt96rkoqbo0jc34` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES 
(30,'admin',1,'2023-10-30 11:02:42',NULL,NULL,NULL,'$2a$04$DjcHdBp4E6qi/a5h94FbQ.FGYqIUPKp1nDxIw1nBFOCF7dDMp14Nq','admin123@gmail.com','Hà Nội','0123654789'),
(31,'user',1,'2023-10-30 11:03:13',NULL,NULL,NULL,'$2a$04$SoUOcXW1nfOAxuyOjL1eC.YHIXcelB8Sp6SbJIQZfepE5PZfS.cXK','user123@gmai.com','Thành phố Hồ Chí Minh','0123556889'),
(32,'ducanh',1,'2023-11-29 15:00:05',NULL,NULL,NULL,'$2a$04$6278L6du7mYSCrCeeUTOJ.Ke57ZcScwrZ9EHsQM9r2YHz0CoOaWY.','ducanh3344@gmail.com','Số 2, Ngõ 50, Ngách 142/4, Mễ Trì Thượng','0367533485');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_1tbl_roles_Ntbl_users_roles_idx` (`role_id`),
  CONSTRAINT `fk_1tbl_roles_Ntbl_users_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1tbl_users_Ntbl_users_roles` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (30,3),(31,4),(32,4);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 16:36:35
