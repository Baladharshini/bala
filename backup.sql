-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: interns
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) DEFAULT NULL,
  `emails` varchar(50) NOT NULL,
  PRIMARY KEY (`emails`),
  KEY `id` (`id`),
  CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`id`) REFERENCES `interns` (`intern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'avadaipriya.lakshmanan@tarento.com'),(1,'avadaipriya98@gmail.com'),(2,'baladharshini.kandaswamy@tarento.com'),(2,'baladharshini98@gmail.com'),(3,'krishnakumar.alagu@tarento.com'),(3,'krishnakumar98@gmail.com'),(4,'rajavimal.gunaseelan@tarento.com'),(4,'rajavimal98@gmail.com'),(5,'ramya.sankaranarayanan@tarento.com'),(5,'ramya98@gmail.com'),(6,'vishnupriya.govinda@tarento.com'),(6,'vishnupriya98@gmail.com'),(7,'naveen.pandurangi@tarento.com'),(7,'naveen98@gmail.com');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interns`
--

DROP TABLE IF EXISTS `interns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interns` (
  `intern_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `college` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`intern_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interns`
--

LOCK TABLES `interns` WRITE;
/*!40000 ALTER TABLE `interns` DISABLE KEYS */;
INSERT INTO `interns` VALUES (1,'priya','CSE','Dr.sacoe','tiruchendur'),(2,'bala','CSE','Dr.sacoe','tiruchendur'),(3,'krishna','CSE','Dr.sacoe','tiruchendur'),(4,'vimal','CSE','Dr.sacoe','tiruchendur'),(5,'ramya','ECE','Dr.sacoe','tiruchendur'),(6,'vishnu priya','CSE','ACEM','chithur'),(7,'Naveen','CSE','VKIT','bangalore');
/*!40000 ALTER TABLE `interns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_numbers`
--

DROP TABLE IF EXISTS `phone_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_numbers` (
  `id` int(11) DEFAULT NULL,
  `phone_number` varchar(30) NOT NULL,
  PRIMARY KEY (`phone_number`),
  KEY `id` (`id`),
  CONSTRAINT `phone_numbers_ibfk_1` FOREIGN KEY (`id`) REFERENCES `interns` (`intern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_numbers`
--

LOCK TABLES `phone_numbers` WRITE;
/*!40000 ALTER TABLE `phone_numbers` DISABLE KEYS */;
INSERT INTO `phone_numbers` VALUES (1,'7339505275'),(1,'9486214645'),(2,'8608489498'),(2,'9442512264'),(3,'7200239049'),(3,'9754359766'),(4,'8606756325'),(4,'9750764161'),(5,'6380150070'),(5,'9472278828'),(6,'8074749806'),(6,'8607430787'),(7,'9447386073'),(7,'9936025795');
/*!40000 ALTER TABLE `phone_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` int(11) DEFAULT NULL,
  `socialmedia` varchar(30) DEFAULT NULL,
  `profile` varchar(50) NOT NULL,
  PRIMARY KEY (`profile`),
  KEY `id` (`id`),
  CONSTRAINT `social_accounts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `interns` (`intern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
INSERT INTO `social_accounts` VALUES (1,'facebook','www.facebook.com/avadaipriya'),(2,'facebook','www.facebook.com/baladharshini'),(3,'facebook','www.facebook.com/krishnakumar'),(7,'facebook','www.facebook.com/naveen'),(4,'facebook','www.facebook.com/rajavimal'),(5,'facebook','www.facebook.com/ramya'),(6,'facebook','www.facebook.com/vishnupriya'),(1,'instagram','www.instagram.com/avadai'),(2,'instagram','www.instagram.com/baladharshini'),(3,'instagram','www.instagram.com/krishnakumar'),(7,'instagram','www.instagram.com/naveen'),(4,'instagram','www.instagram.com/rajavimal'),(5,'instagram','www.instagram.com/ramya'),(6,'instagram','www.instagram.com/vishnupriya'),(1,'linked','www.linkedin.com/avadaipriya'),(2,'linked','www.linkedin.com/baladharshini'),(3,'linked','www.linkedin.com/krishnakumar'),(4,'linked','www.linkedin.com/rajavimal'),(5,'linked','www.linkedin.com/ramya'),(7,'twitter','www.twitter.com/naveen'),(6,'twitter','www.twitter.com/vishnupriya');
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strengths`
--

DROP TABLE IF EXISTS `strengths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strengths` (
  `sid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `strength` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`),
  CONSTRAINT `strengths_ibfk_1` FOREIGN KEY (`id`) REFERENCES `interns` (`intern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strengths`
--

LOCK TABLES `strengths` WRITE;
/*!40000 ALTER TABLE `strengths` DISABLE KEYS */;
INSERT INTO `strengths` VALUES (1,1,'believing god'),(2,1,'being friendly'),(3,2,'self confidence'),(4,2,'patience'),(5,3,'easily adapt'),(6,3,'creativity'),(7,4,'positive thinker'),(8,4,'self motivated'),(9,5,'team player'),(10,6,'workaholic');
/*!40000 ALTER TABLE `strengths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weakness`
--

DROP TABLE IF EXISTS `weakness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weakness` (
  `wid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `weakness` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`wid`),
  KEY `id` (`id`),
  CONSTRAINT `weakness_ibfk_1` FOREIGN KEY (`id`) REFERENCES `interns` (`intern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weakness`
--

LOCK TABLES `weakness` WRITE;
/*!40000 ALTER TABLE `weakness` DISABLE KEYS */;
INSERT INTO `weakness` VALUES (1,1,'panic for new things'),(2,2,'stage fear'),(3,3,'bad handwriting'),(4,4,'fear for new things'),(5,5,'not punctual'),(6,6,'tries to compromise everyone');
/*!40000 ALTER TABLE `weakness` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-10 11:18:02
