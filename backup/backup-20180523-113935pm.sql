-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: cempakawan_v2
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
-- Table structure for table `attendance_student`
--

DROP TABLE IF EXISTS `attendance_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `in` datetime NOT NULL,
  `out` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_student`
--

LOCK TABLES `attendance_student` WRITE;
/*!40000 ALTER TABLE `attendance_student` DISABLE KEYS */;
INSERT INTO `attendance_student` VALUES (1,1,'2018-05-23 19:00:00','2018-05-23 23:00:00');
/*!40000 ALTER TABLE `attendance_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `level` text NOT NULL,
  `tutor` int(11) NOT NULL,
  `tutor_charge` int(11) NOT NULL,
  `day` date NOT NULL,
  `start_on` time NOT NULL,
  `end_on` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Mathematics','Form 5',1,0,'2018-05-21','20:00:00','22:00:00'),(2,'Tahfiz','Form 3',2,40,'0000-00-00','00:00:00','00:00:00'),(3,'Physics','Form 5',1,50,'0000-00-00','00:00:00','00:00:00'),(4,'Econometrics','Adults',3,65,'0000-00-00','00:00:00','00:00:00'),(5,'History','Standard 1',1,45,'0000-00-00','00:00:00','00:00:00'),(6,'ICT','Adults',1,70,'0000-00-00','00:00:00','00:00:00'),(7,'Coaching Science','Standard 5',0,50,'0000-00-00','00:00:00','00:00:00'),(8,'Coaching Science','Standard 5',1,50,'0000-00-00','00:00:00','00:00:00');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolls`
--

LOCK TABLES `enrolls` WRITE;
/*!40000 ALTER TABLE `enrolls` DISABLE KEYS */;
INSERT INTO `enrolls` VALUES (1,1,1,0,'active','2018-05-23 11:21:15'),(2,10,6,0,'active','2018-05-23 14:06:13'),(3,12,6,0,'active','2018-05-23 14:44:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `amount` float NOT NULL,
  `datetime` datetime NOT NULL,
  `payment_by` int(11) NOT NULL,
  `payment_to` int(11) NOT NULL,
  `payee_cat` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `receipt_serial_no` int(11) NOT NULL,
  `amount` float NOT NULL,
  `datetime` datetime NOT NULL,
  `receipt_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
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
  `mykad` varchar(12) NOT NULL,
  `residential` text NOT NULL,
  `school_name` text NOT NULL,
  `phone_no` text NOT NULL,
  `remark` text NOT NULL,
  `registered_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quit_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mykad` (`mykad`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Asrar Mujahid Muhammad Ashraf',9,'150515106459','','SRITI','0145102864','','2018-05-23 09:08:59','0000-00-00 00:00:00'),(4,'Asrar Annisa Muhammad Ashraf',8,'160828104658','','SRIDU','0136609070','','2018-05-23 09:09:02','0000-00-00 00:00:00'),(5,'Asrar Mukmin Muhammad Ashraf',5,'200220014321','','SRIDU','01110602864','','2018-05-23 09:09:18','0000-00-00 00:00:00'),(6,'Asrar Annajwa',4,'221110102244','','PASTI','01111561192','','2018-05-23 09:09:21','0000-00-00 00:00:00'),(7,'Asrar Muhammad bin Muhammad Ashraf',2,'230111042233','','SK Batang Benar','01110632864','Phone ibu','2018-05-23 09:23:28','0000-00-00 00:00:00'),(8,'Sar Mastura binti Abdul Rahman',14,'910420065402','Kampung Sungai Sekah','SMA Nilai','0136609070','','2018-05-23 10:34:29','0000-00-00 00:00:00'),(10,'Abdul Muiz Abdul Hakim',14,'930707066005','Kampung Sungai Sekah','SMKDMS','0135543392','','2018-05-23 12:49:26','0000-00-00 00:00:00'),(11,'Muhammad Ashraf bin Misran',14,'911101065717','Kampung Sungai Sekah','SMKA TAHAP','0145102864','','2018-05-23 12:55:55','0000-00-00 00:00:00'),(12,'Ikhwan',9,'140029123912','Desa Cempaka','SMK Desa Cempaka','014012300128','Fon sendiri','2018-05-23 14:41:22','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutors`
--

LOCK TABLES `tutors` WRITE;
/*!40000 ALTER TABLE `tutors` DISABLE KEYS */;
INSERT INTO `tutors` VALUES (1,'Muhammad Ashraf Misran','911101065717','0145102864'),(2,'Sar Mastura binti Abdul Rahman','910420065402','0136609070'),(3,'Afiq Farhan Mazlan','930607065343','0195674433'),(4,'Akmal','1231239180','01231238');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ashrafmisran@gmail.com','51486ac51fe8397fb49074753eebfe80','Muhammad Ashraf Misran'),(2,'sarmastura91@gmail.com','bc8cc43418d6a82047ce5f6213b32022','Sar Mastura binti Abdul Rahman'),(4,'syediqbal@gmail.com','59b514399bf229600d6383e2bb6774e7','Syed Iqbal Syed Jamalullai'),(5,'muizhakimes@gmail.com','8d8c17eb952b3094e8698443e7e87885','Abdul Muiz Abdul Hakim'),(6,'rasyadan@gmail.com','28656eea9b28cbc70f51de3db8bdc3e4','Wan Ahmad Rasyadan');
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

-- Dump completed on 2018-05-23 23:39:37
