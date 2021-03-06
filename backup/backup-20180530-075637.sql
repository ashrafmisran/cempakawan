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
  `tutor` int(11) NOT NULL,
  `tutor_rate` int(11) NOT NULL,
  `day` date NOT NULL,
  `start_on` time NOT NULL,
  `end_on` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,1,'Mathematics','Form 5',1,0,'2018-05-21','20:00:00','22:00:00'),(2,1,'Tahfiz','Form 3',2,40,'0000-00-00','00:00:00','00:00:00'),(3,1,'Physics','Form 5',1,50,'0000-00-00','00:00:00','00:00:00'),(4,1,'Econometrics','Adults',3,65,'0000-00-00','00:00:00','00:00:00'),(5,1,'History','Standard 1',1,45,'0000-00-00','00:00:00','00:00:00'),(6,1,'ICT','Adults',1,70,'0000-00-00','00:00:00','00:00:00'),(7,0,'Coaching Science','Standard 5',0,50,'0000-00-00','00:00:00','00:00:00'),(8,0,'Coaching Science','Standard 5',1,50,'0000-00-00','00:00:00','00:00:00'),(9,1,'English Language','Standard 1',1,75,'0000-00-00','00:00:00','00:00:00'),(10,0,'English Language','Standard 1',1,90,'0000-00-00','00:00:00','00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolls`
--

LOCK TABLES `enrolls` WRITE;
/*!40000 ALTER TABLE `enrolls` DISABLE KEYS */;
INSERT INTO `enrolls` VALUES (1,1,1,0,'active','2018-05-23 11:21:15'),(2,10,6,0,'active','2018-05-23 14:06:13'),(3,12,6,0,'active','2018-05-23 14:44:39'),(4,1,6,0,'active','2018-05-24 07:22:04'),(5,11,1,0,'active','2018-05-24 09:06:53');
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
  `mykad` varchar(12) NOT NULL,
  `residential` text NOT NULL,
  `school_name` text NOT NULL,
  `phone_no` text NOT NULL,
  `remark` text NOT NULL,
  `registered_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quit_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mykad` (`mykad`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Asrar Mujahid Muhammad Ashraf',9,'150515106459','','SRITI','0145102864','','2018-05-23 09:08:59','0000-00-00 00:00:00'),(4,'Asrar Annisa Muhammad Ashraf',8,'160828104658','','SRIDU','0136609070','','2018-05-23 09:09:02','0000-00-00 00:00:00'),(5,'Asrar Mukmin Muhammad Ashraf',5,'200220014321','','SRIDU','01110602864','','2018-05-23 09:09:18','0000-00-00 00:00:00'),(6,'Asrar Annajwa',4,'221110102244','','PASTI','01111561192','','2018-05-23 09:09:21','0000-00-00 00:00:00'),(7,'Asrar Muhammad bin Muhammad Ashraf',2,'230111042233','','SK Batang Benar','01110632864','Phone ibu','2018-05-23 09:23:28','0000-00-00 00:00:00'),(8,'Sar Mastura binti Abdul Rahman',14,'910420065402','Kampung Sungai Sekah','SMA Nilai','0136609070','','2018-05-23 10:34:29','0000-00-00 00:00:00'),(10,'Abdul Muiz Abdul Hakim',14,'930707066005','Kampung Sungai Sekah','SMKDMS','0135543392','','2018-05-23 12:49:26','0000-00-00 00:00:00'),(11,'Muhammad Ashraf bin Misran',14,'911101065717','Kampung Sungai Sekah','SMKA TAHAP','0145102864','','2018-05-23 12:55:55','0000-00-00 00:00:00'),(12,'Ikhwan',9,'140029123912','Desa Cempaka','SMK Desa Cempaka','014012300128','Fon sendiri','2018-05-23 14:41:22','0000-00-00 00:00:00'),(13,'Saiful Afraz',14,'930930105523','Puchong','SMK Puchong Perdana','0152203662','Fon sendiri','2018-05-24 02:15:39','0000-00-00 00:00:00'),(14,'Nurussadah',14,'920522102264','Petaling Jaya','Jordan','0125632223','Fon sendiri','2018-05-24 02:16:51','0000-00-00 00:00:00'),(15,'Farah Fathiah',14,'89110566656','Rawang','SMK Rawang','0156546','','2018-05-24 03:03:03','0000-00-00 00:00:00'),(17,'Sofiah Chong',14,'454654646','Senawang','SMK Senawang','5665135','','2018-05-24 03:06:49','0000-00-00 00:00:00'),(18,'Rashid Ismail',14,'56421654','Gombak','SMK Gombak','2351615','\r\n','2018-05-24 06:37:13','0000-00-00 00:00:00'),(19,'Hatman',14,'9502220222','Kelantan','MML','01665565','','2018-05-24 08:08:43','0000-00-00 00:00:00'),(20,'Najwan bin Abu Zarim',10,'1231320','Desa Indah','SMA Nilai','123123','','2018-05-29 04:50:13','0000-00-00 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (24,1,1,'Self','Receive payment from student',280,0,0,'2018-05-24 01:58:09'),(26,6,1,'Student','Set as prepayment for next month(s)',0,280,0,'2018-05-24 01:58:09'),(27,1,1,'Self','Receive payment from student',280,0,0,'2018-05-24 01:58:43'),(29,6,1,'Student','Set as prepayment for next month(s)',0,280,0,'2018-05-24 01:58:43'),(30,11,1,'Student','Initial due fee',100,0,0,'2018-05-24 01:59:33'),(31,1,1,'Self','Receive payment from student',280,0,0,'2018-05-24 01:59:36'),(32,11,1,'Student','Settle o/s fee',0,100,0,'2018-05-24 01:59:36'),(33,6,1,'Student','Set as prepayment for next month(s)',0,180,0,'2018-05-24 01:59:36'),(34,11,1,'Student','Due receivable',200,0,0,'2018-05-24 02:01:46'),(38,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:04:21'),(39,11,1,'Student','Settle o/s fee',0,150,0,'2018-05-24 02:04:21'),(41,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:11:39'),(42,11,1,'Student','Settle o/s fee',0,50,0,'2018-05-24 02:11:39'),(43,6,1,'Student','Set as prepayment for next month(s)',0,100,0,'2018-05-24 02:11:39'),(44,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:11:50'),(46,6,1,'Student','Set as prepayment for next month(s)',0,150,0,'2018-05-24 02:11:50'),(47,7,1,'Student','Registration fee',0,60,0,'2018-05-24 02:50:55'),(48,11,1,'Student','Amount due for registration fee',60,0,0,'2018-05-24 02:50:55'),(49,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:52:42'),(50,11,1,'Student','Settle o/s fee',0,60,0,'2018-05-24 02:52:42'),(51,6,1,'Student','Set as prepayment for next month(s)',0,90,0,'2018-05-24 02:52:42'),(52,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:57:49'),(54,6,1,'Student','Set as prepayment for next month(s)',0,150,0,'2018-05-24 02:57:49'),(55,7,1,'Student','Registration fee',0,60,0,'2018-05-24 02:58:01'),(56,11,1,'Student','Amount due for registration fee',60,0,0,'2018-05-24 02:58:01'),(57,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:58:10'),(58,11,1,'Student','Settle o/s fee',0,60,0,'2018-05-24 02:58:10'),(59,6,1,'Student','Set as prepayment for next month(s)',0,90,0,'2018-05-24 02:58:10'),(60,1,1,'Self','Receive payment from student',150,0,0,'2018-05-24 02:58:23'),(62,6,1,'Student','Set as prepayment for next month(s)',0,150,0,'2018-05-24 02:58:23'),(63,7,17,'Student','Registration fee',0,60,0,'2018-05-24 03:06:49'),(64,11,17,'Student','Amount due for registration fee',60,0,0,'2018-05-24 03:06:49'),(65,1,1,'Self','Receive payment from student',30,0,0,'2018-05-24 03:36:12'),(66,11,17,'Student','Settle o/s fee',0,30,0,'2018-05-24 03:36:12'),(68,1,1,'Self','Receive payment from student',70,0,0,'2018-05-24 03:37:56'),(69,11,17,'Student','Settle o/s fee',0,30,0,'2018-05-24 03:37:56'),(70,6,17,'Student','Set as prepayment for next month(s)',0,40,0,'2018-05-24 03:37:56'),(71,7,18,'Student','Registration fee',0,60,0,'2018-05-24 06:37:13'),(72,11,18,'Student','Amount due for registration fee',60,0,0,'2018-05-24 06:37:13'),(73,1,2,'Self','Receive payment from student',90,0,0,'2018-05-24 06:39:44'),(74,11,18,'Student','Settle o/s fee',0,60,0,'2018-05-24 06:39:44'),(75,6,18,'Student','Set as prepayment for next month(s)',0,30,0,'2018-05-24 06:39:44'),(76,1,2,'Self','Receive payment from student',100,0,0,'2018-05-24 06:50:34'),(78,6,10,'Student','Set as prepayment for next month(s)',0,100,0,'2018-05-24 06:50:34'),(79,7,19,'Student','Registration fee',0,60,0,'2018-05-24 08:08:43'),(80,11,19,'Student','Amount due for registration fee',60,0,0,'2018-05-24 08:08:43'),(81,1,1,'Self','Receive payment from student',20,0,0,'2018-05-24 08:09:00'),(82,11,19,'Student','Settle o/s fee',0,20,0,'2018-05-24 08:09:00'),(84,1,2,'Self','Receive payment from student',500,0,0,'2018-05-24 08:34:58'),(86,6,10,'Student','Set as prepayment for next month(s)',0,500,0,'2018-05-24 08:34:58'),(87,7,20,'Student','Registration fee',0,60,0,'2018-05-29 04:50:13'),(88,11,20,'Student','Amount due for registration fee',60,0,0,'2018-05-29 04:50:13'),(89,1,1,'Self','Receive payment from student',20,0,0,'2018-05-29 04:50:35'),(90,11,20,'Student','Settle o/s fee',0,20,0,'2018-05-29 04:50:35'),(92,1,1,'Self','Receive payment from student',100,0,0,'2018-05-29 04:51:02'),(93,11,20,'Student','Settle o/s fee',0,40,0,'2018-05-29 04:51:02'),(94,6,20,'Student','Set as prepayment for next month(s)',0,60,0,'2018-05-29 04:51:02');
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

-- Dump completed on 2018-05-30  7:56:41
