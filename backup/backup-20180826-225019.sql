-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: nilalcom_cempakawan_dev
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL,
  `subcategory` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Asset','Cash',''),(2,'Asset','Stock',''),(3,'Asset','Fixed Asset',''),(4,'Asset','Prepayment to vendor',''),(5,'Liability','Payable Utility Bill',''),(6,'Liability','Prepayment',''),(7,'Income','Fee & book',''),(8,'Income','Other',''),(9,'Expense','Utility',''),(10,'Expense','Other',''),(11,'Asset','Receivable fee',''),(12,'Equity','Shareholders Fund',''),(13,'Equity','Retained Earning',''),(14,'Liability','Payable Tutor',''),(15,'Expense','Tutor Payroll','');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,1,'2018-05-23 19:00:00','2018-05-23 23:00:00'),(5,11,'2018-05-24 01:42:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances_tutors`
--

DROP TABLE IF EXISTS `attendances_tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances_tutors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tutor` int(11) NOT NULL,
  `timein` datetime NOT NULL,
  `timeout` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances_tutors`
--

LOCK TABLES `attendances_tutors` WRITE;
/*!40000 ALTER TABLE `attendances_tutors` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances_tutors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'Cempaka'),(2,'Salak Tinggi'),(3,'Semarak');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_accounts`
--

DROP TABLE IF EXISTS `cash_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` text NOT NULL,
  `account_no` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_accounts`
--

LOCK TABLES `cash_accounts` WRITE;
/*!40000 ALTER TABLE `cash_accounts` DISABLE KEYS */;
INSERT INTO `cash_accounts` VALUES (1,'Cash on Hand','N/A'),(2,'Maybank','');
/*!40000 ALTER TABLE `cash_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_group` tinyint(1) NOT NULL DEFAULT '1',
  `subject` text NOT NULL,
  `level` text NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT '1',
  `tutor` int(11) NOT NULL,
  `tutor_rate` int(11) NOT NULL,
  `classroom` int(11) NOT NULL,
  `day` int(1) NOT NULL,
  `start_on` time NOT NULL,
  `end_on` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,1,'Reading (Afternoon)','1',1,1,20,0,0,'00:00:00','00:00:00'),(2,1,'Reading (Night)','1',1,1,20,0,0,'00:00:00','00:00:00'),(3,1,'Reading (Saturday)','2',1,2,20,0,0,'00:00:00','00:00:00'),(4,1,'Mathematics','2',1,2,20,0,0,'00:00:00','00:00:00'),(5,1,'Science','2',1,0,20,0,0,'00:00:00','00:00:00'),(6,1,'Bahasa Melayu','2',1,0,20,0,0,'00:00:00','00:00:00'),(7,1,'English Language','2',1,0,20,0,0,'00:00:00','00:00:00'),(8,1,'Mathematics','3',1,0,20,0,0,'00:00:00','00:00:00'),(9,1,'Science','3',1,0,20,0,0,'00:00:00','00:00:00'),(10,1,'Bahasa Melayu','3',1,0,20,0,0,'00:00:00','00:00:00'),(11,1,'English Language','3',1,0,20,0,0,'00:00:00','00:00:00'),(12,1,'Mathematics','4',1,0,20,0,0,'00:00:00','00:00:00'),(13,1,'Science','4',1,0,20,0,0,'00:00:00','00:00:00'),(14,1,'Bahasa Melayu','4',1,0,20,0,0,'00:00:00','00:00:00'),(15,1,'English Language','4',1,0,20,0,0,'00:00:00','00:00:00'),(16,1,'Mathematics','5',1,0,20,0,0,'00:00:00','00:00:00'),(17,1,'Science','5',1,0,20,0,0,'00:00:00','00:00:00'),(18,1,'Bahasa Melayu','5',1,0,20,0,0,'00:00:00','00:00:00'),(19,1,'English Language','5',1,0,20,0,0,'00:00:00','00:00:00'),(20,1,'Mathematics','6',1,0,20,0,0,'00:00:00','00:00:00'),(21,1,'Science','6',1,0,20,0,0,'00:00:00','00:00:00'),(22,1,'Bahasa Melayu','6',1,0,20,0,0,'00:00:00','00:00:00'),(23,1,'English Language','6',1,0,20,0,0,'00:00:00','00:00:00'),(24,1,'Mathematics','7',1,0,20,0,0,'00:00:00','00:00:00'),(25,1,'Science','7',1,0,20,0,0,'00:00:00','00:00:00'),(26,1,'Bahasa Melayu','7',1,0,20,0,0,'00:00:00','00:00:00'),(27,1,'English Language','7',1,0,20,0,0,'00:00:00','00:00:00'),(28,1,'Mathematics','6',2,0,20,0,0,'00:00:00','00:00:00'),(29,1,'Bahasa Melayu','6',2,0,20,0,0,'00:00:00','00:00:00'),(30,1,'English Language','6',2,0,20,1,1,'20:00:00','21:00:00');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classrooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `branch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrolls`
--

DROP TABLE IF EXISTS `enrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `registered_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolls`
--

LOCK TABLES `enrolls` WRITE;
/*!40000 ALTER TABLE `enrolls` DISABLE KEYS */;
INSERT INTO `enrolls` VALUES (7,21,1,0,'active','2018-06-07 22:13:14'),(8,69,1,0,'active','2018-06-07 22:28:37'),(9,270,1,0,'active','2018-06-07 22:28:50'),(10,172,1,0,'active','2018-06-07 22:29:01'),(11,296,1,0,'active','2018-06-07 22:29:10'),(12,295,1,0,'active','2018-06-07 22:29:21'),(13,53,2,0,'active','2018-06-07 23:14:16'),(14,197,2,0,'active','2018-06-07 23:14:16'),(15,247,2,0,'active','2018-06-07 23:14:16'),(16,248,2,0,'active','2018-06-07 23:14:16'),(17,213,2,0,'active','2018-06-07 23:14:16'),(18,212,2,0,'active','2018-06-07 23:14:16'),(19,285,3,0,'active','2018-06-07 23:14:49'),(20,211,3,0,'active','2018-06-07 23:14:49'),(21,272,3,0,'active','2018-06-07 23:14:49'),(22,273,3,0,'active','2018-06-07 23:14:49'),(23,207,8,0,'active','2018-06-07 23:19:12'),(24,28,8,0,'active','2018-06-07 23:19:12'),(25,17,8,0,'active','2018-06-07 23:19:12'),(26,282,8,0,'active','2018-06-07 23:19:12'),(27,17,11,0,'active','2018-06-07 23:19:31'),(28,17,9,0,'active','2018-06-07 23:19:31'),(29,207,9,0,'active','2018-06-07 23:19:43'),(30,282,11,0,'active','2018-06-07 23:19:51'),(31,158,14,0,'active','2018-06-07 23:30:59'),(32,158,15,0,'active','2018-06-07 23:30:59'),(33,158,12,0,'active','2018-06-07 23:30:59'),(34,158,13,0,'active','2018-06-07 23:30:59'),(35,97,14,0,'active','2018-06-07 23:30:59'),(36,97,15,0,'active','2018-06-07 23:30:59'),(37,97,12,0,'active','2018-06-07 23:30:59'),(38,97,13,0,'active','2018-06-07 23:30:59'),(39,195,14,0,'active','2018-06-07 23:30:59'),(40,195,15,0,'active','2018-06-07 23:30:59'),(41,195,12,0,'active','2018-06-07 23:30:59'),(42,195,13,0,'active','2018-06-07 23:31:00'),(43,152,14,0,'active','2018-06-07 23:31:00'),(44,152,15,0,'active','2018-06-07 23:31:00'),(45,152,12,0,'active','2018-06-07 23:31:00'),(46,152,13,0,'active','2018-06-07 23:31:00'),(47,187,14,0,'active','2018-06-07 23:31:00'),(48,187,15,0,'active','2018-06-07 23:31:00'),(49,187,12,0,'active','2018-06-07 23:31:00'),(50,187,13,0,'active','2018-06-07 23:31:00'),(51,196,14,0,'active','2018-06-07 23:31:00'),(52,196,15,0,'active','2018-06-07 23:31:00'),(53,196,12,0,'active','2018-06-07 23:31:00'),(54,196,13,0,'active','2018-06-07 23:31:00'),(55,227,14,0,'active','2018-06-07 23:31:32'),(56,227,15,0,'active','2018-06-07 23:31:32'),(57,227,12,0,'active','2018-06-07 23:31:32'),(58,227,13,0,'active','2018-06-07 23:31:32'),(59,52,14,0,'active','2018-06-07 23:31:32'),(60,52,15,0,'active','2018-06-07 23:31:32'),(61,52,12,0,'active','2018-06-07 23:31:32'),(62,52,13,0,'active','2018-06-07 23:31:32'),(63,151,14,0,'active','2018-06-07 23:31:32'),(64,151,15,0,'active','2018-06-07 23:31:33'),(65,151,12,0,'active','2018-06-07 23:31:33'),(66,151,13,0,'active','2018-06-07 23:31:33'),(67,214,12,0,'active','2018-06-07 23:31:46'),(68,214,13,0,'active','2018-06-07 23:31:46'),(69,201,14,0,'active','2018-06-07 23:32:00'),(70,201,15,0,'active','2018-06-07 23:32:00'),(71,42,18,0,'active','2018-06-07 23:36:20'),(72,42,19,0,'active','2018-06-07 23:36:20'),(73,42,16,0,'active','2018-06-07 23:36:20'),(74,42,17,0,'active','2018-06-07 23:36:20'),(75,277,18,0,'active','2018-06-07 23:36:33'),(76,117,22,0,'active','2018-06-07 23:37:48'),(77,117,23,0,'active','2018-06-07 23:37:48'),(78,117,20,0,'active','2018-06-07 23:37:48'),(79,117,21,0,'active','2018-06-07 23:37:48'),(80,170,22,0,'active','2018-06-07 23:37:48'),(81,170,23,0,'active','2018-06-07 23:37:48'),(82,170,20,0,'active','2018-06-07 23:37:48'),(83,170,21,0,'active','2018-06-07 23:37:48'),(84,150,22,0,'active','2018-06-07 23:37:48'),(85,150,23,0,'active','2018-06-07 23:37:48'),(86,150,20,0,'active','2018-06-07 23:37:48'),(87,150,21,0,'active','2018-06-07 23:37:48'),(88,253,22,0,'active','2018-06-07 23:37:48'),(89,253,23,0,'active','2018-06-07 23:37:49'),(90,253,20,0,'active','2018-06-07 23:37:49'),(91,253,21,0,'active','2018-06-07 23:37:49'),(92,294,22,0,'active','2018-06-07 23:37:49'),(93,294,23,0,'active','2018-06-07 23:37:49'),(94,294,20,0,'active','2018-06-07 23:37:49'),(95,294,21,0,'active','2018-06-07 23:37:49'),(96,293,22,0,'active','2018-06-07 23:37:49'),(97,293,23,0,'active','2018-06-07 23:37:49'),(98,293,20,0,'active','2018-06-07 23:37:49'),(99,293,21,0,'active','2018-06-07 23:37:49'),(100,126,20,0,'active','2018-06-07 23:38:06'),(101,126,21,0,'active','2018-06-07 23:38:06'),(102,188,22,0,'active','2018-06-07 23:38:26'),(103,188,23,0,'active','2018-06-07 23:38:26'),(104,188,20,0,'active','2018-06-07 23:38:26'),(105,102,30,0,'active','2018-06-07 23:46:29'),(106,102,28,0,'active','2018-06-07 23:46:29'),(107,264,29,0,'active','2018-06-07 23:47:23'),(108,264,28,0,'active','2018-06-07 23:47:23'),(109,274,30,0,'active','2018-06-07 23:47:55'),(110,276,28,0,'active','2018-06-07 23:48:21'),(111,40,29,0,'active','2018-06-07 23:48:37'),(112,40,30,0,'active','2018-06-07 23:48:37');
/*!40000 ALTER TABLE `enrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `enroll_amount` text NOT NULL,
  `total` float NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `payment_status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'6-year-old'),(2,'Standard 1'),(3,'Standard 2'),(4,'Standard 3'),(5,'Standard 4'),(6,'Standard 5'),(7,'Standard 6'),(8,'Form 1'),(9,'Form 2'),(10,'Form 3'),(11,'Form 4'),(12,'Form 5'),(13,'Form 6'),(14,'Adult');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` text NOT NULL,
  `data_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `old` text NOT NULL,
  `new` text NOT NULL,
  `user` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `mykad` varchar(14) NOT NULL,
  `residential` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mykad` (`mykad`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,'Muhammad Ashraf bin Misran','911101065717','Kampung Sungai Sekah','60145102864','ashrafmisran@gmail.com'),(21,'Sar Mastura binti Abdul Rahman','910420065402','Kampung Sungai Sekah','601110602864','sarmastura91@gmail.com');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `level` int(11) NOT NULL,
  `mykad` text NOT NULL,
  `residential` text NOT NULL,
  `school_name` text NOT NULL,
  `phone_no` text NOT NULL,
  `registered_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quit_on` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1222 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Irfan Syahmi Khalid',8,'040310141375','missing form','SMK BBST','016-6974776 ibu','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(2,'Izzaidin',8,'040805160105','missing form','SMK BBST','012-2638826 ibu','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(3,'Muhammad Fawwaz',6,'060709100805','Kg Jijan','SK Jijan','019-9543473, ibu','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(4,'Maizani Md Halim',9,'030827050186','Desa Bestari, BBST','SMK BBST','019-3306663','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(5,'Aiman Nurhakimin ',9,'030822140633','Desa Cempaka','SMK Desa Cempaka','012-3773450','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(6,'Mathumita',15,'000225050210','Nilai','Adult','06-7991169, 011-33569693','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(7,'Gogileswaran',7,'050505140099','Desa Jasmin','SJ Chanwaa','012-3158078 ibu, +60123158078 whatsapp','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(8,'Muhamad Azzim',6,'061018070947','Labu Hulu','SK Labu Ulu','018-2609842, 014-2608769','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(9,'Zaid',15,'not required','Adult','Adult','010-8919698','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(10,'Danish Tan Wei Jie',6,'not required','Desa Cempaka','SJKC KuoMin','016-7115069 mak','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(11,'Sheela',15,'not required','Taman Mutiara, Mantin','Adults','017-6906651','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(12,'Tharishini ',15,'010820050150','Taman Desa Cempaka','SMK KLIA','017-6266469','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(13,'Muhd Fikri Al Hafis',8,'040427050119','Tmn Cempakapuri Fasa4','SMK Desa Cempaka','014-7391583 Ayah,011-29665208 Ibu','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(14,'Nozida Roslan',15,'not required','Nilai','Adult','017-6141516','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(15,'Sunarti',15,'not required','Taman Seroja,BBST','Adult','017-3004228','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(16,'Susan Alipara',15,'not required','Kota Warisan','Adult','012-6706676','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(17,'Muhd Ali Akim',2,'100313031069','Desa Cempaka','SK Desa Cempaka','012-3833895 dad, 012-2216624 mum','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(18,'Narmatha a/p Rawe',9,'030127050038','Desa Jasmin','SMK Dato Mohd Said','017-7222944','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(19,'Nabil Es Fahans Bin S. Hisham',8,'040319160089','Desa Cempaka 3','SM Kuarters KLIA','016-2020266 / 012-3650715','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(20,'Ahmad Ikhwan Hanif',6,'060823050493','Nilai Spring Heights','SK Kota Warisan','012-2955053','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(21,'Muhd Ammar Amsyar',0,'not required','Taman Teratai, Nilai 9','6 years old','019-7134500/011-15522256','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(22,'Nabilah',14,'not required','Desa Anggerik','Adults','013-2759335','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(23,'Muhd Haziq',14,'not required','Cyberjaya','Adults','013-2970071','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(24,'Tanaletchumy',7,'051208050454','Desa Cempaka','SJKT Nilai','012-2414601 Mom','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(25,'Tushar Singh Rakhra',6,'061210160061','Kota Warisan','SK Kota Warisan','019-2124196','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(26,'Khairun Nurzara',1,'not required','Desa Indah, Nilai','Tadika Minda Indah','019-3632645/016-6355356','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(27,'Hafiz Che Mahmud',15,'not required','BBST','Adults','019-8959349','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(28,'Izmir Hafiz',2,'101005050617','Nilai Impian','SK Desa Jasmin','012-3138004','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(29,'Muhd Hasif Bazli',6,'061018050049','Desa Melati','SK Desa Cempaka','019-2108284 Ayah','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(30,'Mohd Isma Rizal',1,'not required','Taman Desa Vista','Mandarin','016-2206205','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(31,'Nabilah Nor (BEGINNER)',14,'not required','Putrajaya','Adult','013-3154222','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(32,'Fairuz Waheeda',14,'not required','','Adult','','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(33,'Muhd Heizriq Azhad',6,'061202160125','Taman Cempaka','Sek Keb BBST','017-2837370 Ibu,019-3088587ayah','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(34,'Syahirah Azmi',15,'not required','Desa Palma Apartment, Nilai','Adults','017-2411061','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(35,'Farah Nur Amila',9,'030725080448','Taman Dahlia, BBST','SAM BBST','019-3401082, 017-6902646, 017-5116221 (self)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(36,'Iqbal',15,'not required','not required','Adults','013-3757592','2018-08-26 20:57:12','2017-12-01 00:00:00',1,1),(37,'Marani',15,'not required','Taman Mawar Sepamg','Adult','012-8960569','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(38,'Lily Raihanah',3,'090218160018','Taman Dahlia, BBST','SK Taman Seroja','016-3358252 Ibu','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(39,'Muhammad Zuhaily',5,'070115160011','Taman Dahlia, BBST','SK Taman Seroja','016-3358252 Ibu','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(40,'Ngai Yi Xuan',5,'070909020032','Desa Casuarina ','SJKC KUO MIN','012-5610678 Mom','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(41,'Ardiyna',0,'060602050342','Desa Melati','SK Desa Cempaka','012-3944153','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(42,'Airis',4,'081127050492','Desa Melati','SK Desa Cempaka','012-3944153','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(43,'Kheyrul Nissa',14,'not required','Presint16,Putrajaya','Adult','018-6651918','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(44,'Batrisya Hani',14,'021023100702','Taman Dahlia BBST','SMK Taman Dahlia','016-6373965','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(45,'Nurul Syazwani',7,'050712050512','Desa Cempaka 3','SRAI Salak Tinggi','017-3888841 mom','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(46,'Josylan',15,'not required','','Adult','010-3688816','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(47,'Masitah Najwa',11,'000613130570','Kota Seriemas','home schooling','016-2795845 Ibu,010-9079046 Self','2018-08-26 20:57:12','2017-12-01 00:00:00',1,1),(48,'Maizura Elya',4,'','Kota Seriemas','home schooling','016-2795845 Ibu,010-9079046 Self','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(49,'Nor Amiera Nasyiehin',9,'031001160068','Desa Cempaka','SMK Desa Cempaka','016-6206069, 010-2005795','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(50,'Muhammad Darien Syafiq',11,'010909141139','Taman Desa Kasia,Nilai','SMK Desa Cempaka','012-3710931 mum','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(51,'Farihin Isaac ',8,'040619140821','Kota Seriemas','SMK Bandar Enstek','012-2101421 dad, ','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(52,'Norhalwa Iman',4,'080808160078','Desa Cempaka','SK Dato Ahmad Manap','011-27226095 mum','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(53,'Afaf Hanifah',2,'100606060066','Desa Cempaka','SK Dato Ahmad Manap','011-27226095 mum','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(54,'Azilawati',13,'not required','Taman Desa Vista','Adult','016-2256425','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(55,'Evelyn Oh Mi Ran',5,'071007030172','Nilai Impian','Sek Ren Rafflesia','012-9837110','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(56,'Agilan Thillainathan',15,'not required','Planters Haven Nilai','Adults','012-6141910','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(57,'Dinend Sivalingam',15,'not required','Taman Desa Indah','Adults','014-6443434','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(58,'Amiera Abdullah',15,'not required','Taman Desa Cempaka, Nilai','Adult','013-3739576','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(59,'Nur Ain Zuhana',15,'not required','Sungai Pelek, Selangor','Adult','017-6630768','2018-08-26 20:57:12','2017-12-01 00:00:00',1,1),(60,'Ushaa A/p Ganesan',15,'not required','Taman Desa Casuarina, Nilai','Adult','017-2001556 / 016-6949291','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(61,'Rafiq',15,'not required','Vista Amani Condo, Cheras','Adult','016-2522552','2018-08-26 20:57:12','2017-12-01 00:00:00',1,1),(62,'Isaac',15,'not required','Nusari Bayu,Bandar Seri Sendayan','Adult','016-6903341','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(63,'Muhammad Harith bin Omar',15,'not required','Kg Lanjut','Adult','018-3181355','2018-08-26 20:57:12','2017-12-01 00:00:00',1,1),(64,'Avisina Es Fahans',6,'061109050351','Taman Desa Kasia,Nilai','SK Desa Cempaka','016-2020266 / 012-3650715','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(65,'Muhd Yusuf  Zakwan',8,'110802100327','Taman Bestari, Salak Tinggi','','+60 17-619 0145 dad, 017-6190145','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(66,'Maria Irdeena',4,'080623160098','Kota Warisan','SK Kota Warisan','017-6068060, 019-6360300','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(67,'Muhd Irfan Nasuha',4,'080829160181','Taman Mawar, BBST','SK Taman Seroja','017-6740600, 017-3155357','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(68,'Ya Yaresh',9,'031002050581','Salak Tinggi','SMK Seri Sepang','012-7466639 mum, 016-6395559 dad','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(69,'Sharvanesswarye (Iswari)',1,'111119101928','Salak Tinggi','SJKT BBST','010-2653996 mum','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(70,'Tengku Najya',11,'010825100348','Desa Kasia','SMK Desa Cempaka','016-2339864 daddy','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(71,'Aiman Durrah',11,'011012101006','Bandar Mahkota','SMK Bandar Seri Putra','012-6890664 mom,011-32572159 self','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(72,'Prenila A/P Sreekumar',11,'010310010896','Taman Desa Cempaka','SMK Desa Cempaka','011-16708864','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(73,'Karthiga a/p Karuppiah',11,'011213050196','Desa Cempaka','SMK Desa Cempaka','016-6189238','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(74,'Tengku Muhd Haaziq',9,'030525140047','Desa Kasia','SMK Desa Cempaka','016-2339864 daddy','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(75,'Addina Syazalya',6,'060608160112','Desa Bestari','SK Salak','019-3731224, 019-2711691','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(76,'Hanania Abu Zah',6,'060527160110','Desa Bestari','SK Salak','0199593360','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(77,'Muhd Khairul Naim',6,'060313160043','Desa Bestari, BBST','SK Salak','0193891505','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(78,'Tengku Amni',6,'060411100212','Desa Kasia','SK Desa Cempaka','016-2339864 daddy','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(79,'Muhd Khairul Hakim',11,'011002160029','Desa Bestari, BBST','SMK Seri Sepang','019-3891505','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(80,'Aezie Nur Zamharira',6,'060923050466','Kasturi Height','SK Desa Jasmin','012-2023344','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(81,'Mohanesaan',15,'090627050207','Taman Desa Cempaka, Nilai','SJKT Nilai','016-7749851','2018-08-26 20:57:12','2017-11-01 00:00:00',1,1),(82,'Nur Ainul Mardiatul',9,'030323110608','Desa Indah','SMK Desa Cempaka','017-2644663','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(83,'Karthigesan',9,'031013050165','Taman Desa Cempaka','SMK Desa Cempaka','017-6266469','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(84,'Roslan',15,'not required','Bukit Mahkota','Adult','012-3269266','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(85,'Hanan Syafea',15,'not required','Bukit Mahkota','Adult','012-3269266','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(86,'Pavithra',15,'not required','Sg Pelek','Adult','019-6275827','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(87,'Jevalagigaan',15,'not required','Sg Pelek','Adult','019-6275827','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(88,'Ferial Natasha',11,'010315070468','Taman Desa Melati','SMK Desa Cempaka','0193903880/0182625859','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(89,'Belinda Ling ',14,'not required','Desa Palma Nilai','Adult','012-2243464','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(90,'Aaron Tan Wai Kit ',15,'not required','Seremban','Adult','012-3229516','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(91,'Sushmitha',15,'000225050202','Nilai','Adult','06-7991169, 011-33569693','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(92,'Pavitra Balasubramaniam',9,'031223050462','Taman Desa Cempaka 2','SMK Desa Cempaka','0162928546','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(93,'Nazurah Saari',15,'not required','Salak Murni','Adult','019-2098488','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(94,'Neeshanti Palanisamy',15,'not required','Seremban','Adult','011-33903461','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(95,'Norhafizah Awalludin',15,'not required','Taman Cempaka, Salak Tinggi','Adult','013-7057589','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(96,'Cheong Kai Zen',14,'not required','Desa Indah','Adult','017-2676138','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(97,'Aleesya Nurani Bt Khairul Aswari',3,'090311-10-0386','Taman Acacia','STD3','012-6891043','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(98,'Cheong Kai Yin',14,'not required','Desa Indah','Adult','011-23394748','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(99,'Shaliney a/p Harichandran',9,'030524050242','Desa Jasmin','SMK Desa Cempaka','0122581800','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(100,'Irwan Danniel Masri',6,'061017060149','Taman Desa Cempaka 3','Sek Keb Desa Cempaka','0197257124/019-2637124','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(101,'Arni Marissa Masri',9,'030606060196','Taman Desa Cempaka 3','Sek Keb Desa Cempaka','0197257124/019-2637124','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(102,'Afrina Zafirah Binti Mohd Rom',5,'071126101674','Taman Dahlia','SK Taman Seroja','0133426065','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(103,'Muhammad Zarif Haziq Bin Mohd Rom',11,'100727102293','Taman Dahlia','SK Taman Seroja','0133426065','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(104,'Nur Adriana Ahmad Nazri',9,'031010141352','Desa Baiduri Harmoni','SMK Bandar Baru Salak Tinggi','0176887265','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(105,'Balqis Nur Sofea Hasnizam',9,'030903101572','Taman Dahlia','SAM BBST','013-2090978','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(106,'Eryn Izrina Bt Samsudin',15,'not required','Desa Indah','Adult','019-2378191','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(107,'Nur Farhana Athirah',4,'080613030978','Taman Dahlia','SK KLIA','019-3401082','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(108,'Wan Alisha Umaira',1,'100224100296','Taman Semarak 2','SK Taman Semarak','017-6362096/012-6113137','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(109,'Nur Aleesa Ahmad Nazri',5,'070221141362','Desa Baiduri Harmoni','SK Salak','017-6887265/0176887264','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(110,'Nur Syahira Ahmad Nazri',8,'041214141463','Desa Baiduri Harmoni','SMK Bandar Baru Salak Tinggi','017-6887265','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(111,'Nur Hazzuin Zulkifli',11,'010329040454','Desa Cempaka','SMK Desa Cempaka','019-6151349 daddy, 0142317793','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(112,'Tengku Nur Batrisyia',9,'031116110044','Desa Cempaka','SMK Desa Cempaka','019-6952547','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(113,'Marwani Bt Md Halim',6,'060330500220','Desa Bestari','SK Salak','019-3306663 (bapa)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(114,'Muhd Syazwan Bin Muhd Shah ',6,'061010050781','Cempaka 3','SK Desa Cempaka','017-3888841 mom','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(115,'Tengku Nur Najwa Humairah',6,'060415050128','Desa Cempaka','SK Desa Cempaka','019-6952547','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(116,'Nursabreena Aqilah',11,'010412050274','Desa Cempaka 2','SMK Seri Sepang','018-2771481(pelajar), 019-3088587 (parent)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(117,'Aiman Nurnaffiz',5,'','Desa Cempaka','SK Desa Cempaka','012-3773450','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(118,'Raja Nur Yasmin Balqis',11,'010402100418','Pajam','SMK Dato Mohd Said','018-9501670, 01121152148','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(119,'Raja Nur Alia Sofea',6,'060210100216','Pajam','SK Desa Jasmin','018-9501670, 01121152148','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(120,'Muhammad Danish',7,'050226110591','Desa Indah','SMK Desa Cempaka','017-2644663','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(121,'Nur Insyirah Husna Bt Mohd Norizat',11,'','Desa Cempaka','SRAI Salak Tinggi','012-6655166','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(122,'Izzudin Azman ',15,'not required','Sg Pelek','Adult','012-3511461','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(123,'Illi liyana binti Azman ',15,'not required','Nilai','Adult','019-7568565','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(124,'Yuvennesh a/l S.Mahesvaran',11,'010703101801','Desa Melati Fasa 3','SMK Desa Cempaka','01110677047','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(125,'Rakesh a/l Vijayan',9,'031219050371','Desa Cempaka','SMK Seri Sepang','012-2520426','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(126,'Razin Jayyidi Bin Ruba\'ie',5,'070620160069','Kuarters IPG Kampus Teknik','SK Bandar Enstek','019-7153073','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(127,'Ahmad Akmal',9,'030324080439','Desa Cempaka','SMK Desa Cempaka','018-3964496','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(128,'Muhammad Afif Bin Mohd Fathullah',14,'not required','Nilai Spring Heights','Adult','019-7745220','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(129,'Nurin Batrisya Bt Azmie ',6,'060621050292','Taman Murni,Batang Benar','SK Bandar Baru Salak Tinggi','018-2842928','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(130,'Nur Alya Haziqah ',11,'010925050106','Desa Cempaka 2','SMK Desa Cempaka','016-2979857 mum / 011-10729857','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(131,'Deshashini a/p Ramu',9,'030704050274','Taman Desa Cempaka','SMK Desa Cempaka','016-2865956/01126274982','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(132,'Aida Balqis Bt Mohd Nasher',9,'031011100384','Taman Ixora','SMK Bandar Baru Salak Tinggi','0183879969','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(133,'Mohd Riyaz',15,'not required','Desa Kasia','Kids','018-4693007','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(134,'Nur Hazirah Zulkifli',8,'040409040144','Desa Cempaka 2','SMK Desa Cempaka','014-2317793','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(135,'Nurul Asyiqin Binti Azahar',11,'010405050110','Desa Cempaka','SMK Desa Cempaka','019-2724160/017-2064976','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(136,'Anis Natasya Maulup',11,'011019040226','KG. Kubang','SMK Desa Cempaka','016-6074994/016-6171974','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(137,'Nurasma Ieman Bt Mohd Puza',6,'060113050130','Kota Seriemas','SRAI Salak Tinggi','0192457467','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(138,'Anis Atiqah Binti Noorossaidy',11,'not required','Nilai Perdana','Adult','0147410213','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(139,'Sudar a/p Anbalagan',15,'not required','Kampung Baru Sungai Pelek','Adult','0132067162','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(140,'Malar a/p Anbalagan',15,'not required','Kampung Baru Sungai Pelek','Adult','0132067162','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(141,'Farhan Mohd Yusof',9,'031019050123','Desa Cempaka','SMK Desa Cempaka','017-6708836','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(142,'Sofea Balqis ',11,'010911160048','Tmn Cempaka','SMK Desa Cempaka','012-36333471 / 019-6820195','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(143,'Muhammad Rafiqin Aqil',6,'','','SK Desa Cempaka','019-3311905 / 015-7527524','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(144,'Nuratiqah Asyiqin',11,'011104050146','Desa Cempaka','SMK Desa Cempaka','013-3525538','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(145,'Nurul Nabilah ',8,'040710050210','Desa Cempaka','SMK Desa Cempaka','013-3525538','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(146,'Nur Izzah Aqilah',6,'060711050456','Desa Cempaka','SK Desa Cempaka','013-3525538','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(147,'Muhammad Faiz Ikhwan',9,'030120050035','Desa Cempaka Fasa 2','SMK Desa Cempaka','018-2504676 / 017-6145314','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(148,'Kalaiyarassan ',9,'020321050219','Desa Anggerik','SMK Dato Mohd Said','012-6433410','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(149,'Nur Qhairunnisa Bt Shahruddin',9,'030402100344','Desa Cempaka','SMK Desa Cempaka','0193540074','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(150,'Muhammad Adief Adly',5,'070620-16-0069','Cempaka 3','SK Desa Cempaka','011-26244418/011-39020010','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(151,'Nur Damia Qaisara ',4,'081016050094','Desa Cempaka','SK Dato Ahmad Manaf','012-3268970','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(152,'Muhammad Aqil Iman',3,'090217160075','Cempaka 3','SK Desa Cempaka','0166473106','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(153,'Muhammad Nabhan B Mohd Puza',8,'040113050183','Kota Seriemas','SMK Desa Cempaka','0192457467','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(154,'Kanagadurga a/p Mogan',8,'040328050092','Bandar Baru Salak Tinggi','SMK Seri Sepang','0122340235','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(155,'Kheerthiga K.Kumeresan',8,'041106050278','Desa Cempaka 3','SMK Seri Sepang','0126756567','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(156,'Alia Qistina Bt Mohamed Fareed',9,'030216-14-0238','Taman Desa Bestari','SMK Seri Sepang','019-2649334/ 0186601050','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(157,'Maisarah binti Zuhairi',5,'070118140708','D\'Villa Idaman','SK Taman Midah Cheras KL','012-3865156','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(158,'Afiq Muhaimin Bin Miznizar',3,'090925050029','Labu','SK Labu Ulu','0192550172','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(159,'Eswari A/P Raman',11,'771227-05-5792','Desa Cempaka 3','Adult','016-3124347','2018-08-26 20:57:12','2018-01-01 00:00:00',1,1),(160,'Teh Shu Hui',11,'010508050236','Taman Teratai, Nilai 9','SMK seri Sepang ','017-7790411/016-9078305','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(161,'Teh Shu Ting',11,'010508050228','Taman Teratai, Nilai 9','SMK seri Sepang ','012-5270411','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(162,'Lee Jing Hua ',11,'011112050349','Taman Teratai, Nilai 9','SMK seri Sepang ','012-613 0205 /012-6062262','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(163,'Muhd Aqil Zafran bin Mohd sobri',1,'110603-08-0757','flat cempaka puri','SK Desa Cempaka','013-3824824','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(164,'Aisy Iman Bin Mazlan ',5,'070601-16-0127','Taman Seri Cempaka 3','Sek Keb Desa Cempaka','018-3826515','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(165,'Nadzirah Bt. Ridzuan ',11,'010415100484','Desa Indah ','SMK Dato Mohd Said','011-11694154/ 017-2438562','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(166,'Nur Alya Maisarah Bt Shahrizuan ',4,'080427030122','Desa Cempaka 2','Dato Ahmad Manaf ','','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(167,'Nur Iffah Hidayah Bt Mohd Samsuri ',4,'080902030026','Desa Cempaka 2','Dato Ahmad Manaf ','013-6191004','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(168,'Yong Xin Yi ',11,'010102050236','Taman Desa Cempaka ','SMK Dato Mohd Said','011-36386598/012-9234099','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(169,'Heng Swi Sze',11,'011021141050','Taman Melati ','SMK Dato Mohd Said','016-3363381/013-4889040','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(170,'Edy Izz Iskandar',5,'','Kg Salak Tinggi ','SK Salak','019-3019090','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(171,'Nur Rafieqah Aqilah Bt Raziz',1,'','Desa Bestari','SK Salak','019-3301905','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(172,'Lambert Kuleh Balan ',1,'111012131460','Jln Desa Palma Apt Desa Palam','St Paul','014-5866663 /014-2865222','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(173,'Nur Adriana Batrisya Binti Eddy Farid',8,'040306050024','Taman Pelangi Semengih','Smk dato Ahmad said','012-3682038 /0123268970','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(174,'Athirah Batrisyah ',0,'060122-04-0279','Taman Desa Indah','SJKC Kuomin Nilai ','019-3134032/011-21101911','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(175,'Elysha Irselina Zulkifli',11,'011022070100','Desa Kolej','SMK Desa Cempaka','019-6632673 mum, 013-3790978 self','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(176,'Mohd Yusof Daniel ',8,'040810030049','Desa Indah','SMK Desa Cempaka','013-2162407','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(177,'Muhammad Danish B.Muhd Anuar ',6,'060322050057','Taman Desa Cempaka  ','Sek Keb Desa Cempaka ','011-23256825 /011-27156690','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(178,'Nur Irdina Atasya',11,'011209030010','Desa Indah','SMK Desa Cempaka','013-2162407','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(179,'Hani Liyana A. Jafree',11,'011118080522','Nilai Perdana','SMK Dato Mohd Said','019-6670771 mum, 018-2586783 self','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(180,'Muhammad Aqmar Najmi ',9,'','Impiana Residence ','SMK Desa Cempaka','0192347056 /0133450099','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(181,'Amira Binti Abdul Kadir ',11,'010406141014','Bandar Baru Salak Tinggi','SMK Seri Sepang ','011-29060910 prnt, 014-3046354 self','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(182,'Nureen Natasya Binti Mat Yusoff',11,'','Taman Desa Indah ','SMK Desa Cempaka','017- 6648633','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(183,'Nor Juannah Aqilah ',9,'031007140148','Desa Cempaka','SMK Desa Cempaka','019-2725674 /019- 6738043','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(184,'Ahmad Danish Iman ',9,'031105050269','Jln Cempaka 16, Tmn Cempaka 3','SMK Desa Cempaka','019-3382951','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(185,'Dainiel Haikal Dahlan',6,'060331130761','Taman Bukit Citra ','SK Batang Benar','017- 6783011','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(186,'Raihan Kamaruzzaman',9,'','Nilai Impian','SMK King George V, seremban','012-3721575','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(187,'Muhammad Fawwaz Aniq',3,'','Taman Bunga Raya','SK Kota Warisan','012-3731441, 012-6449339','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(188,'Dannis Al Hafis',5,'070327101879','Kg Salak Tengah','SK Salak','013-6663703','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(189,'Muhammad Reza Bin Alebar Ali',8,'',' Tmn Cempaka 3','SMK Desa Cempaka','017-4262509','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(190,'Wong Yik Hong',8,'040424050121','Tmn  Desa Melati ','SMK Dato Mohd Said','019-3402901','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(191,'Nur Syahirah Zainuddin',11,'011226100180','Tmn Desa Aggerik ','SMK Desa Cempaka','012-2426120','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(192,'Nur Hafiza Aziz',6,'','Jalan Salak , KPg Chelet Nilai','SKDC,Desa Cempaka ','016-9815389','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(193,'Haiqual Nur Iman Asliyas',11,'010114101379','Kg Salak Tengah','SMK Seri Sepang','012-6028311 / 013-6981642','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(194,'Khayra Anisa',6,'061204050288','Nilai Spring Heights','SK BBST','013-6824488','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(195,'Husna Zahra BT Md Zaffaruazaman',3,'091010110112','Desa Cempaka','SK Desa Cempaka','019-2216896','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(196,'Wirdani Raudhah',3,'090221101414','Taman Bunga Raya','SK Kota Warisan','017-6619965','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(197,'Hafiq Zaquan',1,'110307101103','Desa Cempaka','SK Desa Cempaka','019-2216896','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(198,'Reena Sree Muralitharan',11,'010603-05-0568','Desa Cempaka 3 ','SMK Desa Cempaka','012-6787905','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(199,'Nur Syifa Ikma',3,'090724101934','Impiana Villa','SRAI Salak Tinggi','013-3886402/014-2819809','2018-08-26 20:57:12','2018-03-01 00:00:00',1,1),(200,'Uwais Al Qarni',5,'070609100401','Impiana Villa','SRAI Salak Tinggi','013-3886402/014-2819809','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(201,'Muhd Naqwuddin',4,'','Taman Salak Idaman','SJKC Kuo Min','013-3347260','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(202,'Norainaa Nabihah Norhisham',11,'010117140162','Desa Baiduri Aman','SMK Seri Sepang','013-3882824 mum, 018-3992824 self','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(203,'Aini Syakirah Zamany',11,'010208050082','Taman Anggerik','SMK Sepang','019-2638566 prnt 012-3526126 self','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(204,'Shivani A/p Balasubramaniam',9,'030513050116','Taman Desa Cempaka ','SMK Dato Mohd Said','016-3950747','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(205,'Amir Amsyar',6,'060823040359','Taman Desa Cempaka ','SRAI Salak Tinggi','019-3396012 dad, 019-3395991 mum','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(206,'P.Kemavarshini',1,'','Taman Semarak','SJKT Nilai','016-6569401','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(207,'Fea Iris Samarra',2,'100716050658','Taman Semarak 2','SK Desa Jasmin','010-2853128','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(208,'Careena Sree Ganesh',11,'010726140504','Desa Casurina','SMK Dato Mohd Said','012-6607297','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(209,'Muhammad Fakhrul Amin',9,'030821030205','Taman Desa Cempaka ','SMK Desa Cempaka','017-6458354','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(210,'Uma Devi Mariappan',15,'not required','Taman Ban Aik','Adult','016-205 1025','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(211,'Ainur Mardhiah',1,'111229100774','Taman Salak Indah','SK Serdang','012-2679624, 017-7028226','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(212,'Seri Zara Zulaikha',0,'','Taman Desa Cempaka ','SK Desa Cempaka','010-2641615','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(213,'Seri Ainul Batrisya',2,'','Taman Desa Cempaka ','SK Desa Cempaka','010-2641615','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(214,'Ameerul Hayqal',4,'080603160023','Taman Desa Cempaka ','SK Desa Cempaka','017-6075688','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(215,'Farra Natasya',10,'','Taman Semarak Fasa 2','SMK Dato Mohd Said','010-2853128','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(216,'Nur Irdina Adelia',1,'110810050366','Taman Cempaka','SK Desa Cempaka','019-2251619, 019-2251626','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(217,'Nurdamia Arissa',3,'090501050244','Taman Cempaka','SK Desa Cempaka','019-2251619, 019-2251626','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(218,'Farah Iliyani Bt Nasarudin',10,'020415050332','Desa Indah','SMK Dato Mohd Said','012-3684161','2018-08-26 20:57:12','2018-02-01 00:00:00',1,1),(219,'Wan Hariz Najmi',8,'040103100917','Taman Ixora','SMK BBST','019-2528526','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(220,'Nur Hidayah Aziz',9,'030315050852','Desa Cempaka','SMK Desa Cempaka','016-9815389','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(221,'Thiviya a/p Paranikumar',11,'010214050134','Desa Cempaka','SMK Desa Cempaka','012-3504301','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(222,'Muhammad Hafiz',11,'010628100197','Bandar Enstek','SMK Komplks KLIA','012-6365646','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(223,'Shalini a/p Murugan',9,'030206050394','Taman Desa Anggerik','SMK Dato Mohd Said ','018-2773217 (parent), 018-6635825 (student)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(224,'Lingam',13,'not required','Nilai Perdana','Adult','019-6606651','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(225,'Wahyu Juli',11,'bukan bumiputera','Jalan Besar Salak ','SMK Seri Sepang',' ','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(226,'Mahaletchumy',15,'not required','Taman Semarak','Adults','019-2609552','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(227,'Muhammad Aqil Adhwaa',4,'080823050109','Desa Cempaka 3','SK Desa Cempaka','013-3544842','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(228,'Farryn Dhania',8,'','','MRSM','010-2853128','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(229,'Aque Aiman',12,'060910101965','Nilai Perdana','SJKC Kuo Min','not required','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(230,'Tan Jin Yuan',13,'980414106195','','Adults','019-5709019','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(231,'Muhammad Nur Aiman B Jamaludin',11,'011008101687','Kampung Baru Lanjut','SMK Seri Sepang','012-2440907 (ibu), 017-8486829 (student)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(232,'Haderah Bt Izddy',6,'120716102253','Desa Indah Nilai','Rizq Islamic School','019-2739406','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(233,'Sri Alesya Sufia',9,'','BBST','SMK BBST','012-6886234 (parent), 014-3490970 (student)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(234,'Muhammad Faiz Naqib',8,'040613050139','Taman Desa Cempaka ','SMK Desa Cempaka','012-6304762','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(235,'Danial Iskandar Soon ',11,'010709050567','KG. Kubang','SMK Desa Cempaka','016-2238387','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(236,'Muhammad Amirul Afiq',11,'010210060559','Taman Desa Melati','SMK Seri Sepang ','011-1304984','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(237,'Muhammad Izz Zharif',9,'??','Desa Cempaka','SMK Desa Cempaka','019-2144297','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(238,'Waziratol Adilah Bt Darwis Harahap',15,'not required','','Adults','012-958 6518','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(239,'Sri Haryati Bt Yahya',15,'not required','Taman Desa Jasmin','Adults','012-9248630','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(240,'Muhd Putra Nazmie ',6,'060423101669','Pekan Salak Lama','SRAI Salak Tinggi','018-2449203','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(241,'Nagalechumy ',15,'not required','Taman Desa Casuarina, Nilai','Adult','016-3396436','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(242,'Faaris M. Zain',9,'030821101819','Taman Mulia Pajam','SM Agama Sg Merab Luar','019-4094776 mum, 019-9194776','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(243,'Yogesparan A/L Krishnan',15,'not required','Taman Gadong Putra, Labu','Adults','011-1896 8629','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(244,'Nur Ain Binti Hairuddin',15,'not required','','Adults','017-655 5128','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(245,'Nayli Irdina',0,'120109160160','Taman Akasia','Tadika Al Husna','019-2601675','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(246,'Muhd Adham Faiz Bin Mohd Jifri',9,'030117101225','Taman Desa Cempaka','SMK Desa Cempaka','017-3591724 (parent)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(247,'Iskandar Putra B Mohd Ashraf',1,'110817050051','Taman Desa Cempaka','SK Desa Cempaka','017-2699895, 011-11314389','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(248,'Mohd Syahiran B Mohd Ashraf',3,'','Taman Desa Cempaka','SK Desa Cempaka','017-2699895, 011-11314389','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(249,'Nur Nabila Syahirah Bt Mohd Asyraf',6,'061003140404','Taman Desa Cempaka','SK Desa Cempaka','017-2699895, 011-11314389','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(250,'Harzan Zikry Zairi',9,'030906140745','Taman Impiana','SMK Desa Cempaka','019-2721032(ws), 018-7928264(call)','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(251,'Nor Azirah bt Mohd Isa',13,'not required','Taman Bkt Citra','Adult','019-3862103','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(252,'Nurirdina Bt Zulkefli',9,'030719050146','Taman Desa Anggerik','SMK Dato\' Mohd Said','017-3501802, 018-2011397','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(253,'Muhd Haqimi Khan bin Anuar',5,'070827101509','Taman Salak Gemilang 2','SK Kg Baru Labu Lanjut','014-7219482 ','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(254,'Ainul Mardhiah Bt Shahidul Hakim',9,'031023141300','Taman Desa Casuarina, Nilai','SMK Seri Sepang','018-2262882, 018-2616268','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(255,'Rafhanah Adawiyah Bt Shahidul Hakim',6,'060530140858','Taman Desa Casuarina, Nilai','SK Bandar Baru Salak Tinggi','018-2262882, 018-2616268','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(256,'Arivian a/l Kumaran',11,'repeat student','Star Valley','Repeat Student','019-4369712','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(257,'Nur Suhaila Suhaimi',11,'not required','Near KLIA','Repeat Student','019-2484664','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(258,'Muhd Danish bin Mohd Azhar ',5,'071214030183','Taman Desa Cempaka','SK Desa Cempaka','013-9167400','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(259,'Fitri Aiman Jaldin',11,'011224100179','Taman Desa Cempaka','SMK Desa Cempaka','011-10735657','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(260,'Nur Wardatul Aisy Mohd Shahril ',1,'120101101430','Taman Indah Puteri Sepang','SK Putrajaya P16','013-7440924','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(261,'Amirtta A/P Rave',11,'000726050198','Taman Pekan Labu','SMK Dato Shahardin','014-9255778, 010-2008398','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(262,'Nur Ellyana Natasha Binti Yahaya',9,'031199-05-0286','Taman Desa Cempaka','SMK Desa Cempaka','019-6006974','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(263,'Ahmad Syazwan',15,'not required','','Adult','016-6099003','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(264,'Jeremy Raj',5,'070319100585','Desa Jasmin','SK Datok Ahmad Manaf','012-6616688','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(265,'Sarah Anisa Vincent (pvt class)',10,'020607870028','Desa Melati Fasa 3','SMJK Chan Wa 2','017-6051470, 017-6351470','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(266,'Farah Nabilah Binti Mohd Nizam',6,'060302050252','Warisan Villa','SK Desa Jasmin','010-2818230','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(267,'Sumithra a/p Thirupathy',1,'110915050282','Taman Desa Cempaka','SJKT Nilai','012-7745693','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(268,'Muhammad Fadlan',9,'031005140371','Impiana Residence ','SMK Desa Cempaka','019-2837565','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(269,'Ainur Najihah',15,'not required','','Adult','012-3985456','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(270,'Muhd Adam Mustaqim',0,'','Taman Desa Cempaka','Pre school','010-2706053','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(271,'Muhammad Izz Ziyad',6,'060821160111','Taman Cempaka','SK Desa Cempaka','019-2144297','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(272,'Nik Ahmad Hariz B Muhammad Hekal',1,'110511100589','Taman Desa Kolej','SK Desa Cempaka','013-2433557','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(273,'Nik Alya Sofia Bt Muhammad Hekal',0,'121022101154','Taman Desa Kolej','Tadika Hadanah','013-2433557','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(274,'Nur Afifah Aqilah',5,'072608050228','Desa Melati','SK Desa Cempaka','019-3225545','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(275,'Muhammad Amirul Haziq',10,'020606140605','Taman Desa Indah','SMK Dato Mohd Said ','013-3991025','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(276,'Muhammad Bin Izddy',5,'071201-10-1801','Desa Indah','Rizq Islamic School','019-2739406','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(277,'Aisyah Binti Rosfairwan',4,'080525050346','Kota Warisan','SK Dato Ahmad Manaf','017-3250300','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(278,'Muhd Adam Ariff b.Ariffin',6,'060818160073','Impiana Residence ','SK Desa Jasmin','013-607 6781','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(279,'Nabila Husna bt Salahuddin Safwan',6,'7896342, 061205830016','Taman Desa Kasia,Nilai','SK Desa Cempaka','019-3549954','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(280,'Jessica Previnna a/p Victor',11,'011018101648','Cempaka Puri','SMK Desa Cempaka','012-3969404','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(281,'Kavinniyaa a/p Chathershegaran',10,'021209050328','Taman Desa Melati','SMK Seri Sepang','010-2837812','2018-08-26 20:57:12','2018-04-01 00:00:00',1,1),(282,'Nor Athirah Damia (pvt class)',2,'100921050386','Taman Anggerik BBST','SK Bandar Baru Salak Tinggi','017-3222623','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(283,'Sabrina binti Kamin',13,'not required','Taman Salak Idaman 2','Adults','017-2420996','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(284,'Kishalraj A/L Sritharan',9,'031209050343','Taman Mawar','SMK Seri Sepang','014-6694721 ','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(285,'Ahmad Zharif Ahmad Zaki',1,'111204030327','Bandar Enstek','SBK Integrated school (pvt sch)','019-9940004','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(286,'Muhammad Idzz Farish',3,'not required','Kg Jerengkang, Labu','SK Dato Shah Bandar','011-23746424','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(287,'Muhammad Shaznil Izwan',15,'not required','Kota Warisan','Adult','012-4327237','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(288,'Muhammad Hamzi',15,'not required','Kota Warisan','Adult','018-3656994','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(289,'Nazri',15,'not required','','Adult','012-2142592','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(290,'Nur Adilah Bt Mohamad Raazali',15,'not required','','Adult','019-6611422','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(291,'Iryawati Md Sumairi',15,'not required','','Adult','012-6893399','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(292,'Muhd Haziq Danish B. Azli',8,'041005160101','Taman Dahlia BBST','SMK BBST','013-3489945','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(293,'Nurul Iffah Izzati Bt Azli',5,'070228100328','Taman Dahlia BBST','SK Jenderam Hilir','013-3489945','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(294,'Nurkhairullina Najwa Bt Khairol',5,'07081310046','Idalia, Enstek','SK Bandar Enstek','010-2448146','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(295,'Muhd Adam Abdul Hakim',1,'110505100603','Taman Desa Melati','Taman Desa Melati','017-2786458','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(296,'Nur Iman bt Muhd Fitriyuddin',0,'','Kg LB Johnson','SK LB Johnson','013-2503079','2018-08-26 20:57:12','0000-00-00 00:00:00',1,1),(297,'Asrar Mujahid',1,'150515106575','Kg Sg Sekah','PASTI','012301203','2018-08-26 21:06:10','2018-08-26 21:06:10',0,1),(1193,'Farzana Faizal',14,'','','','+60 19-331 2482','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1194,'Anis Azmira',14,'','','','+60 11-3972 8633','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1195,'Vimalnath A/L Segaran',14,'','','','+60 11-1098 5019','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1196,'Sathiasilan Sundaram',14,'','','','+60 12-731 3825','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1197,'Chairozila binti M. Shamsuddin',14,'','','','+60 12-940 0466','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1198,'Fariza Hani Jamaluddin',14,'','','','+60 14-515 3101','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1199,'Sarah binti Mohamad',14,'','','','+60 19-570 7885','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1200,'Norma Aida',14,'','','','+60 19-270 7200','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1201,'Norazha bin Paiman',14,'','','','+60 19-250 4366','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1202,'Balqis Batrisya',6,'','','','+60 12-375 8361','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1203,'Muhamad Mizan Arif ',4,'','','','+60 12-375 8361','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1204,'Rhitigaa Asogan',9,'','','SMK Taman Semarak','+60 13-3115489','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1205,'Nora Azira binti Mohd Ramli',14,'','','','+60 11-1180 1367','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1206,'Rohana bin Ibrahim',1,'','','','+60 14-825 6659','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1207,'Muhammad Zidane Iman ',1,'','','','+60 13-398 6338','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1208,'Asyfa Aina Syaizalah ',1,'','','','+60 12-369 5041','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1209,'Afia Aina Syaizalah ',14,'','','','+60 12-369 5041','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1210,'Nicole Gan',14,'','','','+60 12-220 8485','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1211,'Mohammad Naim bin Idris',14,'','','','+60 12-3242850','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1212,'Asy Umairah Binti Abdul Malik',14,'','','','','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1213,'Ainul Nadzifah Binti Mohd Ali',14,'','','','','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1214,'Mas Hirman Mohammad',14,'','','','','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1215,'anak Naim BI',6,'','','','','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1216,'Shuhaimi Hady',5,'','','','+60 12-911 8143','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1217,'Muhammad Faris bin Effandi (darjah 6)',7,'','','','+60 13-399 7108','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1218,'Muhammad Aliff bin Effandi',5,'','','','+60 13-399 7108','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3),(1219,'Noor Adzila Mohd',7,'','','SK Desa Jasmin','+60 13-234 4558','2018-08-26 20:57:12','0000-00-00 00:00:00',1,3);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `subaccount` int(11) NOT NULL COMMENT 'ID for students/vendor/tutors/etc.',
  `type` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `remark` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (24,1,1,'Self','Receive payment from student',280,0,0,'2018-05-24 01:58:09'),(26,6,1,'Student','Set as prepayment for next month(s)',0,280,0,'2018-05-24 01:58:09'),(27,1,1,'Self','Receive payment from student',280,0,0,'2018-05-24 01:58:43'),(29,6,1,'Student','Set as prepayment for next month(s)',0,280,0,'2018-05-24 01:58:43'),(30,11,1,'Student','Initial due fee',100,0,0,'2018-05-24 01:59:33'),(31,1,1,'Self','Receive payment from student',280,0,0,'2018-05-24 01:59:36'),(32,11,1,'Student','Settle o/s fee',0,100,0,'2018-05-24 01:59:36'),(33,6,1,'Student','Set as prepayment for next month(s)',0,180,0,'2018-05-24 01:59:36'),(34,11,1,'Student','Due receivable',200,0,0,'2018-05-24 02:01:46'),(38,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:04:21'),(39,11,1,'Student','Settle o/s fee',0,150,0,'2018-05-24 02:04:21'),(41,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:11:39'),(42,11,1,'Student','Settle o/s fee',0,50,0,'2018-05-24 02:11:39'),(43,6,1,'Student','Set as prepayment for next month(s)',0,100,0,'2018-05-24 02:11:39'),(44,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:11:50'),(46,6,1,'Student','Set as prepayment for next month(s)',0,150,0,'2018-05-24 02:11:50'),(47,7,1,'Student','Registration fee',0,60,0,'2018-05-24 02:50:55'),(48,11,1,'Student','Amount due for registration fee',60,0,0,'2018-05-24 02:50:55'),(49,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:52:42'),(50,11,1,'Student','Settle o/s fee',0,60,0,'2018-05-24 02:52:42'),(51,6,1,'Student','Set as prepayment for next month(s)',0,90,0,'2018-05-24 02:52:42'),(52,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:57:49'),(54,6,1,'Student','Set as prepayment for next month(s)',0,150,0,'2018-05-24 02:57:49'),(55,7,1,'Student','Registration fee',0,60,0,'2018-05-24 02:58:01'),(56,11,1,'Student','Amount due for registration fee',60,0,0,'2018-05-24 02:58:01'),(57,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:58:10'),(58,11,1,'Student','Settle o/s fee',0,60,0,'2018-05-24 02:58:10'),(59,6,1,'Student','Set as prepayment for next month(s)',0,90,0,'2018-05-24 02:58:10'),(60,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:58:23'),(62,6,1,'Student','Set as prepayment for next month(s)',0,150,0,'2018-05-24 02:58:23'),(63,7,17,'Student','Registration fee',0,60,0,'2018-05-24 03:06:49'),(64,11,17,'Student','Amount due for registration fee',60,0,0,'2018-05-24 03:06:49'),(65,1,1,'Self','Receive payment from student',30,0,0,'2018-05-24 03:36:12'),(66,11,17,'Student','Settle o/s fee',0,30,0,'2018-05-24 03:36:12'),(68,1,1,'Self','Receive payment from student',70,0,0,'2018-05-24 03:37:56'),(69,11,17,'Student','Settle o/s fee',0,30,0,'2018-05-24 03:37:56'),(70,6,17,'Student','Set as prepayment for next month(s)',0,40,0,'2018-05-24 03:37:56'),(71,7,18,'Student','Registration fee',0,60,0,'2018-05-24 06:37:13'),(72,11,18,'Student','Amount due for registration fee',60,0,0,'2018-05-24 06:37:13'),(73,1,2,'Self','Receive payment from student',90,0,0,'2018-05-24 06:39:44'),(74,11,18,'Student','Settle o/s fee',0,60,0,'2018-05-24 06:39:44'),(75,6,18,'Student','Set as prepayment for next month(s)',0,30,0,'2018-05-24 06:39:44'),(76,1,2,'Self','Receive payment from student',100,0,0,'2018-05-24 06:50:34'),(78,6,10,'Student','Set as prepayment for next month(s)',0,100,0,'2018-05-24 06:50:34'),(79,7,19,'Student','Registration fee',0,60,0,'2018-05-24 08:08:43'),(80,11,19,'Student','Amount due for registration fee',60,0,0,'2018-05-24 08:08:43'),(81,1,1,'Self','Receive payment from student',20,0,0,'2018-05-24 08:09:00'),(82,11,19,'Student','Settle o/s fee',0,20,0,'2018-05-24 08:09:00'),(84,1,2,'Self','Receive payment from student',500,0,0,'2018-05-24 08:34:58'),(86,6,10,'Student','Set as prepayment for next month(s)',0,500,0,'2018-05-24 08:34:58'),(87,7,20,'Student','Registration fee',0,60,0,'2018-05-29 04:50:13'),(88,11,20,'Student','Amount due for registration fee',60,0,0,'2018-05-29 04:50:13'),(89,1,1,'Self','Receive payment from student',20,0,0,'2018-05-29 04:50:35'),(90,11,20,'Student','Settle o/s fee',0,20,0,'2018-05-29 04:50:35'),(92,1,1,'Self','Receive payment from student',100,0,0,'2018-05-29 04:51:02'),(93,11,20,'Student','Settle o/s fee',0,40,0,'2018-05-29 04:51:02'),(94,6,20,'Student','Set as prepayment for next month(s)',0,60,0,'2018-05-29 04:51:02'),(95,7,297,'Student','Registration fee',0,60,0,'2018-06-02 09:45:23'),(96,11,297,'Student','Amount due for registration fee',60,0,0,'2018-06-02 09:45:23'),(97,1,1,'Self','Receive payment from student',20,0,0,'2018-06-02 09:46:01'),(98,11,297,'Student','Settle o/s fee',0,20,0,'2018-06-02 09:46:01'),(99,7,297,'Student','Registration fee',0,60,0,'2018-08-04 22:09:08'),(100,11,297,'Student','Amount due for registration fee',60,0,0,'2018-08-04 22:09:08'),(101,7,1220,'Student','Registration fee',0,60,0,'2018-08-26 13:05:26'),(102,11,1220,'Student','Amount due for registration fee',60,0,0,'2018-08-26 13:05:26'),(103,7,1221,'Student','Registration fee',0,60,0,'2018-08-26 13:11:53'),(104,11,1221,'Student','Amount due for registration fee',60,0,0,'2018-08-26 13:11:53');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutors`
--

DROP TABLE IF EXISTS `tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `mykad` text COLLATE utf8_bin NOT NULL,
  `phone` text COLLATE utf8_bin NOT NULL,
  `bank` text COLLATE utf8_bin NOT NULL,
  `acc_no` text COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active, 2=suspend, 3=inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutors`
--

LOCK TABLES `tutors` WRITE;
/*!40000 ALTER TABLE `tutors` DISABLE KEYS */;
INSERT INTO `tutors` VALUES (1,'AIFA','','','BANK ISLAM','05058023914038',3),(2,'HAFIZ','','','MAYBANK','158220767868',3),(3,'AFEQAH','','','BANK ISLAM','03018021337823',3),(4,'HAZWAN','','','CIMB','12800001958203',3),(5,'PUTERI','','','CIMB','7617819983',3),(6,'DILSYAN','','','MAYBANK','162272815942',3),(7,'RISHAN','','','MAYBANK','155108940922',3),(8,'NURHASHIKIN','','','MAYBANK','164360657272',3),(9,'KHAIRI','','','MAYBANK','162357367343',3),(10,'MAIRA','','','CIMB','7620128554',3),(11,'ATHIA','','','BIMB','16018021354717',3),(12,'YASOKTARAN','','','CIMB','7025276298',3),(13,'AINI','','','MAYBANK','162375755585',3),(14,'HAFIZ','','','MAYBANK','155015023575',3),(15,'zulaikha','','','CIMB','7604211614',3),(16,'NISHA','','','CIMB','7613648775',3),(17,'SYAZA','','','BIMB','05058020383831',3),(18,'AFDAL','','','BANK ISLAM','04015020754723',3),(19,'FAIROZA','','','','',3),(20,'SHERLYN','','','MAYBANK','111234168127',3),(21,'GAURI','','','CIMB','7058347928',3),(22,'NAGESWARY','','','BANK ISLAM','08059020304559',3),(23,'SYAKIRAH','','','MAYBANK','169954043665',3),(24,'NORHIDAYAH','','','BANK ISLAM','12038025669736',3),(25,'IZAH','','','MAYBANK','162375655747',3),(26,'UMMUL','','','CIMB','7602790268',3),(27,'IZZUDIN','','','MAYBANK','105047117103',3),(28,'GOMALA','','','PUBLIC BANK','4573956203',3),(29,'MEI CIN','','','CIMB','7058685424',3),(30,'LAVANYA','','','MAYBANK','162218708686',3),(31,'SANDRA','','','MAYBANK','161109446194',3),(32,'SHAKTINA','','','MAYBANK','155108780856',3),(33,'SHUHADA','','','CIMB','7023738742',3),(34,'DIVYA','','','CIMB','7023980505',3),(35,'GUNAVATHI','','','MAYBANK','154026113932',3),(36,'AISYAH','','','MAYBANK','114012055158',1),(37,'WONG ','','','CIMB','7055946987',1),(38,'PONMOORTHY','','','PUBLIC BANK','4572942109',1),(39,'MIMI','','','PUBLIC BANK','6877383935',1),(40,'KHADIJAH','','','CIMB','14400105747523',1),(41,'PREMA','','','MAYBANK','112447145001',1),(42,'GANESAN','','','CIMB','7613648775',1),(43,'MUNTAZ','','','CIMB','12540000686201',1),(44,'LEE PEI YEE','','','CIMB','7024872347',1),(45,'LIYANA','','','BANK RAKYAT','223861013855',1),(46,'JULIANA','','','MAYBANK','151155000184',1),(47,'JOYCE','','','CIMB','7054623838',1),(48,'MAISARAH','','','CIMB','7013312899',1),(49,'ESTER','','','RHB','10505100453046',1),(50,'CHRISTINE','','','MAYBANK','164490377640',1),(51,'MAY YEE','','','MAYBANK','105104209113',1),(52,'THAVA','','','CIMB','7023926723',1),(53,'AFEEQAH BEIJING','','','BANK ISLAM','08013023660882',1),(54,'FAKHRUL','','','MAYBANK','115121114377',1),(55,'SHAFUAN','','','MAYBANK','162188512659',1),(56,'WAFIN ','','','CIMB','7616120887',1),(57,'HAIZAL ','','','MAYBANK','157111997542',1),(58,'BALAMURALI','','','MAYBANK','102184007179',1),(59,'ADHA','','','MAYBANK','152077281538',1),(60,'EVANGELINE','','','CIMB','7619593247',1),(61,'ZAHIRAH','','','MAYBANK','162049980700',1),(62,'SUBASHINI','','','RHB','11211600472920',1),(63,'JANNAH','','','BANK ISLAM','05076020049696',1),(64,'LY','','','CIMB','7057095465',1),(65,'PUNITHAVALI','','','PUBLIC BANK','4858126612',1),(66,'ROHILMI','','','CIMB','7612558866',1),(67,'FAKHRI','','','MAYBANK','162143195915',1),(68,'SUZI','','','CIMB','7049892971',1),(69,'FARAWAHIDA','','','CIMB','7023772261',1);
/*!40000 ALTER TABLE `tutors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` text NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ashrafmisran@gmail.com','51486ac51fe8397fb49074753eebfe80','Muhammad Ashraf Misran',1),(2,'sarmastura91@gmail.com','bc8cc43418d6a82047ce5f6213b32022','Sar Mastura binti Abdul Rahman',0),(4,'syediqbal@gmail.com','59b514399bf229600d6383e2bb6774e7','Syed Iqbal Syed Jamalullai',0),(5,'muizhakimes@gmail.com','8d8c17eb952b3094e8698443e7e87885','Abdul Muiz Abdul Hakim',0),(6,'rasyadan@gmail.com','28656eea9b28cbc70f51de3db8bdc3e4','Wan Ahmad Rasyadan',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-26 22:50:26
