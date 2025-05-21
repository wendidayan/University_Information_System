CREATE DATABASE  IF NOT EXISTS `univ_information_sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `univ_information_sys`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: univ_information_sys
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `archive_logs`
--

DROP TABLE IF EXISTS `archive_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_logs`
--

LOCK TABLES `archive_logs` WRITE;
/*!40000 ALTER TABLE `archive_logs` DISABLE KEYS */;
INSERT INTO `archive_logs` VALUES (1,'New class added: 22','2025-03-17 22:13:13','2025-04-01 16:18:28'),(2,'Class 11 schedule changed from MWF 3:00-6:00 to TTH 2:30-4:00','2025-03-17 22:23:17','2025-04-01 16:18:28'),(3,'Class 11 schedule changed from TTH 2:30-4:00 to TTH 2:30-4:00','2025-03-17 22:24:26','2025-04-01 16:18:28'),(4,'New class added: 23','2025-03-17 22:25:21','2025-04-01 16:18:28'),(5,'Class 11 schedule changed from TTH 2:30-4:00 to TTH 3:00-6:00','2025-03-17 22:26:17','2025-04-01 16:18:28'),(6,'New class added: 24','2025-03-17 23:30:21','2025-04-01 16:18:28'),(7,'New class added: 25','2025-03-17 23:31:26','2025-04-01 16:18:28'),(8,'Class 25 was deleted','2025-03-17 23:31:58','2025-04-01 16:18:28'),(9,'New class added: 26','2025-03-17 23:32:38','2025-04-01 16:18:28'),(10,'New class added: 27','2025-03-18 00:12:25','2025-04-01 16:18:28'),(11,'New class added: 28','2025-03-18 00:17:04','2025-04-01 16:18:28'),(12,'Class 14 schedule changed from TTH 8:00-9:30 to MWF 1:00 - 2:00','2025-03-18 00:21:29','2025-04-01 16:18:28'),(13,'Class 11 schedule changed from TTH 3:00-6:00 to MWF 3:00 - 6:00','2025-03-18 00:26:02','2025-04-01 16:18:28'),(14,'Class 27 was deleted','2025-03-18 00:31:28','2025-04-01 16:18:28'),(16,'New class added: 29','2025-04-01 15:38:42','2025-04-08 21:09:50'),(17,'New class added: 30','2025-04-01 15:41:03','2025-04-08 21:09:50');
/*!40000 ALTER TABLE `archive_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `professor_id` int NOT NULL,
  `schedule` varchar(255) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `course_id` (`course_id`),
  KEY `professor_id` (`professor_id`),
  CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professors` (`professor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (11,4,11,'MWF 3:00 PM-6:00 PM'),(12,2,12,'TTH 3:00 PM-5:00 PM'),(13,3,13,'TTH 1:00 PM-2:00 PM'),(14,4,14,'MWF 1:00 PM-2:00 PM'),(15,5,15,'TTH 11:00 AM-1:00 PM'),(16,6,16,'TTH 1:30 PM-3:00 PM'),(17,7,17,'MWF 2:00 PM-3:30 PM'),(18,8,18,'TTH 3:30 PM-5:00 PM'),(19,9,19,'TTH 1:30 PM-3:00 PM'),(20,10,20,'MWF 2:30 PM-3:30 PM'),(21,1,11,'MWF 8:00 AM-9:30 AM'),(23,4,11,'MWF 9:00 AM-9:30 AM'),(24,1,20,'MWF 3:00 PM-6:00 PM'),(28,4,11,'TTH 1:00 PM-5:00 PM'),(29,3,16,'MWF 7:00 AM-8:00 AM'),(32,4,11,'MWF 10:00 AM-1:00 PM'),(33,3,11,'MWF 8:00 PM-9:30 PM'),(34,6,11,'MWF 7:00 AM-8:30 AM'),(35,2,11,'MWF 8:00 AM-9:00 AM');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_class` BEFORE INSERT ON `classes` FOR EACH ROW BEGIN
    IF EXISTS (
        SELECT 1 FROM classes
        WHERE professor_id = NEW.professor_id AND schedule = NEW.schedule
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Professor is already assigned at this schedule';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_class` AFTER INSERT ON `classes` FOR EACH ROW BEGIN
    INSERT INTO logs (message, created_at)
    VALUES (CONCAT('New class added: ', NEW.class_id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_class` BEFORE UPDATE ON `classes` FOR EACH ROW BEGIN
    IF EXISTS (
        SELECT 1 FROM classes
        WHERE professor_id = NEW.professor_id 
        AND schedule = NEW.schedule 
        AND class_id <> OLD.class_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Professor is already assigned at this schedule';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_class` AFTER UPDATE ON `classes` FOR EACH ROW BEGIN
    INSERT INTO logs (message, created_at)
    VALUES (CONCAT('Class ', OLD.class_id, ' schedule changed from ', OLD.schedule, ' to ', NEW.schedule), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_class` BEFORE DELETE ON `classes` FOR EACH ROW BEGIN
    IF EXISTS (
        SELECT 1 FROM enrollments
        WHERE enrollments.program_id = (SELECT program_id FROM courses WHERE course_id = OLD.course_id)
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete class with enrolled students';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_delete_class` AFTER DELETE ON `classes` FOR EACH ROW BEGIN
    INSERT INTO logs (message, created_at)
    VALUES (CONCAT('Class ', OLD.class_id, ' was deleted'), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(100) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `program_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_code` (`course_code`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'CS101','Introduction to Computer Science',1),(2,'CS102','Data Structures',1),(3,'CS201','Algorithms',2),(4,'MATH101','Calculus I',3),(5,'MATH102','Linear Algebra',3),(6,'PHYS101','General Physics I',4),(7,'PHYS102','Electromagnetism',4),(8,'ENGG101','Electrical Circuits',5),(9,'BUS101','Principles of Management',6),(10,'NURS101','Nursing Fundamentals',7);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `department_program_professor_count`
--

DROP TABLE IF EXISTS `department_program_professor_count`;
/*!50001 DROP VIEW IF EXISTS `department_program_professor_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `department_program_professor_count` AS SELECT 
 1 AS `department_name`,
 1 AS `program_name`,
 1 AS `num_professors`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Computer Science'),(2,'Mathematics'),(3,'Physics'),(4,'Engineering'),(5,'Business Administration'),(6,'Nursing'),(7,'Chemistry'),(8,'Environmental Science'),(9,'Psychology'),(10,'Arts and Humanities'),(15,'Industrial Technology'),(22,'Electrical Technology');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `program_id` int NOT NULL,
  `enrollment_date` date NOT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (2,2,1,'2021-09-01'),(3,3,5,'2021-08-15'),(6,6,6,'2021-05-10'),(7,7,7,'2021-03-15'),(9,9,6,'2021-11-12'),(12,14,1,'2022-05-09'),(13,15,3,'2022-05-09'),(14,16,4,'2022-05-09'),(15,17,3,'2022-05-09'),(16,18,1,'2022-05-09');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments_archive`
--

DROP TABLE IF EXISTS `enrollments_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments_archive` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `program_id` int NOT NULL,
  `enrollment_date` date NOT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `program_id` (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments_archive`
--

LOCK TABLES `enrollments_archive` WRITE;
/*!40000 ALTER TABLE `enrollments_archive` DISABLE KEYS */;
INSERT INTO `enrollments_archive` VALUES (1,1,1,'2020-08-10'),(4,4,5,'2020-06-25'),(5,5,5,'2019-07-01'),(8,8,8,'2020-09-01');
/*!40000 ALTER TABLE `enrollments_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (17,'New class added: 32','2025-05-15 14:47:28'),(18,'Class 32 schedule changed from MWF 10:00-1:00 PM to MWF 10:00-1:00 PM','2025-05-15 14:53:00'),(19,'New class added: 33','2025-05-16 19:39:42'),(20,'Class 11 schedule changed from MWF 3:00 - 6:00 to MWF 8:00 - 9:30','2025-05-16 19:42:46'),(21,'New class added: 34','2025-05-16 19:57:46'),(22,'Class 11 schedule changed from MWF 8:00 - 9:30 to MWF 3:00 - 6:00','2025-05-16 20:00:06'),(23,'Class 21 schedule changed from MWF 8:00-9:30 to MWF 8:00-9:30 AM','2025-05-16 20:05:05'),(24,'Class 11 schedule changed from MWF 3:00 - 6:00 to MWF 3:00-6:00 PM','2025-05-16 20:07:51'),(25,'Class 12 schedule changed from TTH 3:00-5:00 to TTH 3:00-5:00 PM','2025-05-16 20:21:40'),(26,'Class 13 schedule changed from TTH 1:00-2:00 to TTH 1:00-2:00 PM','2025-05-16 20:22:40'),(27,'Class 14 schedule changed from MWF 1:00 - 2:00 to MWF 1:00-2:00 PM','2025-05-16 20:23:14'),(28,'Class 14 schedule changed from MWF 1:00-2:00 PM to MWF 1:00 PM-2:00 PM','2025-05-16 20:24:36'),(29,'Class 11 schedule changed from MWF 3:00-6:00 PM to MWF 3:00 PM-6:00 PM','2025-05-16 20:25:29'),(30,'Class 12 schedule changed from TTH 3:00-5:00 PM to TTH 3:00 PM-5:00 PM','2025-05-16 20:26:01'),(31,'Class 13 schedule changed from TTH 1:00-2:00 PM to TTH 1:00 PM-2:00 PM','2025-05-16 20:26:32'),(32,'Class 15 schedule changed from MWF 11:30-1:00 to TTH 11:00 AM-1:00 PM','2025-05-16 20:27:05'),(33,'Class 16 schedule changed from TTH 1:30-3:00 to TTH 1:30 PM-3:00 PM','2025-05-16 20:27:45'),(34,'Class 17 schedule changed from MWF 2:00-3:30 to MWF 2:00 PM-3:30 PM','2025-05-16 20:28:32'),(35,'Class 18 schedule changed from TTH 3:30-5:00 to TTH 3:30 PM-5:00 PM','2025-05-16 20:29:25'),(36,'Class 19 schedule changed from MWF 1:30-3:00 to TTH 1:30 PM-3:00 PM','2025-05-16 20:29:57'),(37,'Class 20 schedule changed from TTH 2:00-3:30 to MWF 2:30 PM-3:30 PM','2025-05-16 20:30:43'),(38,'Class 21 schedule changed from MWF 8:00-9:30 AM to MWF 8:00 AM-9:30 AM','2025-05-16 20:31:41'),(39,'Class 30 was deleted','2025-05-16 20:33:06'),(40,'Class 26 was deleted','2025-05-16 20:33:38'),(41,'Class 22 was deleted','2025-05-16 20:34:31'),(42,'Class 24 schedule changed from MWF 3:00-6:00 to MWF 3:00 PM-6:00 PM','2025-05-16 20:36:01'),(43,'Class 29 schedule changed from MWF 7:00-8:00 to MWF 7:00 AM-8:00 AM','2025-05-16 20:37:21'),(44,'Class 34 schedule changed from MWF 7:00-8:00 to MWF 7:00 AM-8:30 AM','2025-05-16 20:38:20'),(45,'Class 23 schedule changed from MWF 3:00-6:00 to MWF 1:00 PM-2:30 PM','2025-05-16 20:41:03'),(46,'Class 33 schedule changed from MWF 8:00-9:30 to MWF 8:00 PM-9:30 PM','2025-05-16 20:42:09'),(47,'Class 28 schedule changed from TTH 1:00-5:00 to TTH 1:00 PM-5:00 PM','2025-05-16 20:42:46'),(48,'Class 23 schedule changed from MWF 1:00 PM-2:30 PM to MWF 8:00 AM-9:30 PM','2025-05-16 20:44:27'),(49,'Class 23 schedule changed from MWF 8:00 AM-9:30 PM to MWF 8:00 AM-9:30 PM','2025-05-16 20:45:23'),(50,'Class 23 schedule changed from MWF 8:00 AM-9:30 PM to MWF 6:00 AM-7:30 AM','2025-05-16 20:47:03'),(51,'Class 24 schedule changed from MWF 3:00 PM-6:00 PM to MWF 3:00 PM-6:00 PM','2025-05-16 21:00:26'),(52,'Class 32 schedule changed from MWF 10:00-1:00 PM to MWF 10:00 AM-1:00 PM','2025-05-16 21:01:10'),(53,'Class 32 schedule changed from MWF 10:00 AM-1:00 PM to MWF 10:00 AM-1:00 PM','2025-05-16 21:01:25'),(54,'New class added: 35','2025-05-19 09:24:53'),(55,'Class 23 schedule changed from MWF 6:00 AM-7:30 AM to MWF 9:00 AM-9:30 AM','2025-05-19 09:26:57');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `modified_professor_schedule`
--

DROP TABLE IF EXISTS `modified_professor_schedule`;
/*!50001 DROP VIEW IF EXISTS `modified_professor_schedule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `modified_professor_schedule` AS SELECT 
 1 AS `professor_id`,
 1 AS `professor_first_name`,
 1 AS `professor_last_name`,
 1 AS `program_name`,
 1 AS `course_code`,
 1 AS `course_name`,
 1 AS `schedule`,
 1 AS `total_class_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `professor_schedule`
--

DROP TABLE IF EXISTS `professor_schedule`;
/*!50001 DROP VIEW IF EXISTS `professor_schedule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `professor_schedule` AS SELECT 
 1 AS `professor_id`,
 1 AS `professor_first_name`,
 1 AS `professor_last_name`,
 1 AS `program_name`,
 1 AS `course_code`,
 1 AS `course_name`,
 1 AS `schedule`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `professor_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `department_id` int NOT NULL,
  `hire_date` date NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  PRIMARY KEY (`professor_id`),
  KEY `user_id` (`user_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `professors_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (11,11,3,'2019-05-10','Wendee','Llona'),(12,12,4,'2020-06-11','Diane','Flores'),(13,13,5,'2014-02-01','Ana','Latigay'),(14,14,6,'2013-11-05','Janarie','Pautan'),(15,15,7,'2017-03-22','Honey','Reyes'),(16,16,8,'2016-12-12','Baby','Cruz'),(17,17,9,'2021-01-17','Lovey','Miranda'),(18,24,1,'2015-08-01','Jane','Smith'),(19,4,2,'2016-07-15','Bob','Jones'),(20,7,1,'2018-01-20','Eve','Martin');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `program_course_count`
--

DROP TABLE IF EXISTS `program_course_count`;
/*!50001 DROP VIEW IF EXISTS `program_course_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `program_course_count` AS SELECT 
 1 AS `program_name`,
 1 AS `num_courses`,
 1 AS `courses_offered`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `program_enrollment_count`
--

DROP TABLE IF EXISTS `program_enrollment_count`;
/*!50001 DROP VIEW IF EXISTS `program_enrollment_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `program_enrollment_count` AS SELECT 
 1 AS `program_name`,
 1 AS `num_enrolled_students`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `program_id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `program_name` varchar(255) NOT NULL,
  PRIMARY KEY (`program_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (1,1,'BSIT'),(2,1,'BSCS'),(3,2,'BS Mathematics'),(4,3,'BS Physics'),(5,4,'BS Electrical Engineering'),(6,5,'BSBA'),(7,6,'BS Nursing'),(8,7,'BS Chemistry'),(9,8,'BS Environmental Science'),(10,9,'BS Psychology');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(5,'Department Head'),(2,'Professor'),(4,'Registrar'),(3,'Student');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_enrollment`
--

DROP TABLE IF EXISTS `student_enrollment`;
/*!50001 DROP VIEW IF EXISTS `student_enrollment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_enrollment` AS SELECT 
 1 AS `student_id`,
 1 AS `student_first_name`,
 1 AS `student_last_name`,
 1 AS `program_id`,
 1 AS `course_name`,
 1 AS `enrollment_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `program_id` int NOT NULL,
  `enrollment_date` date NOT NULL,
  `graduation_date` date DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `user_id` (`user_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `students_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,3,1,'2020-08-10','2024-05-15','Alice','Black'),(2,5,2,'2021-09-01','2025-05-15','Bob ','Jones'),(3,6,3,'2021-08-15','2025-05-25','Dave','Clark'),(4,8,4,'2020-06-25','2024-04-20','Frank','Lee'),(5,18,5,'2019-07-01','2023-05-10','Drake','Fred'),(6,19,6,'2021-05-10','2025-04-15','Missy','Gray'),(7,20,7,'2021-03-15','2025-06-20','Serene','Black'),(8,21,8,'2020-09-01','2024-05-30','Frank ','Lee'),(9,22,9,'2021-11-12','2025-05-15','Serenity','Blue'),(11,23,10,'2020-10-05',NULL,'Bill','Gates'),(12,25,7,'2021-05-05',NULL,'Wendee','Llona'),(13,11,1,'2020-06-01','2025-05-13','Anyaa','Green'),(14,29,1,'2022-05-19','2025-05-11','Jasmin','Lark'),(15,31,3,'2022-05-19','2025-05-11','Jay','Levi'),(16,30,4,'2022-05-19','2025-05-11','Kai','Sy'),(17,28,3,'2022-05-19','2025-05-11','Winilin','Uy'),(18,32,1,'2022-05-19','2025-05-19','Jaze','Maze'),(19,34,8,'2022-06-01','2025-05-19','Jerick','Sales'),(21,35,6,'2022-06-01','2025-05-19','Shane','Lizzy');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john_doe','john143',1,'jd@gmail.com'),(3,'alice_brown','password123',3,'al@gmail.com'),(4,'bob_jones','password123',2,'bj@gmail.com'),(5,'carol_white','password123',3,'cw@gmail.com'),(6,'dave_clark','password123',3,'dc@gmail.com'),(7,'eve_martin','password123',2,'em@gmail.com'),(8,'frank_lee','password123',3,'fl@gmail.com'),(9,'grace_taylor','password123',3,'gt@gmail.com'),(10,'helen_kim','password123',4,'hk@gmail.com'),(11,'wendee','password123',2,'wl@gmail.com'),(12,'diane','password123',2,'diane@gmail.com'),(13,'ana','password123',2,'ana@gmail.com'),(14,'janarie','password123',2,'jan@gmail.com'),(15,'honey','password123',2,'hon@gmail.com'),(16,'baby','password123',2,'bab@gmail.com'),(17,'lovey','password123',2,'lov@gmail.com'),(18,'drake','password123',3,'drake@gmail.com'),(19,'missy','password123',3,'miss@gmail.com'),(20,'heaven','password123',3,'heav@gmail.com'),(21,'havoc','password123',3,'hav@gmail.com'),(22,'serenity','password123',3,'ser@gmail.com'),(23,'bill','password123',3,'bill@gmail.com'),(24,'jane_smith','password123',2,'js@gmail.com'),(25,'windilin','wd123',3,'wd@gmail.com'),(27,'lengleng','leng123',2,'leng@gmail.com'),(28,'winilin','wininlin123',3,'winilin@gmail.com'),(29,'jas','jas123',3,'jas@gmail.com'),(30,'kai','kai123',3,'kai@gmail.com'),(31,'jay','jay123',3,'jay@gmail.com'),(32,'jason','jason123',3,'jason@gmail.com'),(34,'Jerick','jk123',3,'jk@gmail.com'),(35,'Shanyy','sh123',3,'sh@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'univ_information_sys'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `archive_old_enrollments` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `archive_old_enrollments` ON SCHEDULE EVERY 1 MONTH STARTS '2025-05-17 08:03:33' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
  -- Move old enrollments (before Jan 1, 2021) to archive
  INSERT INTO enrollments_archive
    SELECT * FROM enrollments
    WHERE enrollment_date < '2021-01-01';

  -- Delete them from the live table
  DELETE FROM enrollments
    WHERE enrollment_date < '2021-01-01';
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `archive_old_logs` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `archive_old_logs` ON SCHEDULE AT '2025-04-01 16:18:28' ON COMPLETION PRESERVE DISABLE DO BEGIN 
    INSERT INTO archive_logs (message, created_at)
    SELECT message, created_at FROM logs 
    WHERE created_at < NOW() - INTERVAL 5 DAY; -- this part here will move the logs older than 5 days to the archive table

    DELETE FROM logs WHERE created_at < NOW() - INTERVAL 5 DAY; -- then this will delete those entries in the logs table
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `archive_old_logs_recurring` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `archive_old_logs_recurring` ON SCHEDULE EVERY 1 DAY STARTS '2025-04-02 16:33:46' ON COMPLETION PRESERVE ENABLE DO BEGIN 
    INSERT INTO archive_logs (message, created_at)
    SELECT message, created_at FROM logs 
    WHERE created_at < NOW() - INTERVAL 5 DAY; -- this part here will move the logs older than 5 days to the archive table

    DELETE FROM logs WHERE created_at < NOW() - INTERVAL 5 DAY; -- then this will delete those entries in the logs table
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `one_time_class_event` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `one_time_class_event` ON SCHEDULE AT '2025-04-01 15:38:42' ON COMPLETION PRESERVE DISABLE DO INSERT INTO classes (course_id, professor_id, schedule) -- this part will be inserted in my classes table
VALUES (3, 16, 'MWF 7:00-8:00') */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `one_time_class_event2` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `one_time_class_event2` ON SCHEDULE AT '2025-04-01 15:41:03' ON COMPLETION PRESERVE DISABLE DO INSERT INTO classes (course_id, professor_id, schedule) -- this part will be inserted in my classes table
VALUES (4, 17, 'TTH 5:00-6:00') */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `recurring_departments_event` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `recurring_departments_event` ON SCHEDULE EVERY 3 SECOND STARTS '2025-04-01 15:52:20' ENDS '2025-04-01 15:52:35' ON COMPLETION PRESERVE DISABLE DO INSERT INTO departments (department_name) -- will be insert in the departments table 5 times....
VALUES ('Industrial Technology') */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `recurring_departments_event2` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `recurring_departments_event2` ON SCHEDULE EVERY 3 SECOND STARTS '2025-04-01 15:54:45' ENDS '2025-04-01 15:55:00' ON COMPLETION PRESERVE DISABLE DO INSERT INTO departments (department_name) -- will be insert in the departments table 5 times....
VALUES ('Electrical Technology') */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'univ_information_sys'
--
/*!50003 DROP FUNCTION IF EXISTS `GetClassHoursForView` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetClassHoursForView`(schedule VARCHAR(50)) RETURNS decimal(5,2)
    DETERMINISTIC
BEGIN
    DECLARE time_range VARCHAR(20);
    DECLARE start_time TIME;
    DECLARE end_time TIME;
    DECLARE total_hours DECIMAL(5,2);

    -- Extract only the time range (ignore MWF, TTh, etc.)
    SET time_range = SUBSTRING_INDEX(schedule, ' ', -1);

    -- Extract Start and End Times properly
    SET start_time = STR_TO_DATE(SUBSTRING_INDEX(time_range, '-', 1), '%l:%i');
    SET end_time = STR_TO_DATE(SUBSTRING_INDEX(time_range, '-', -1), '%l:%i');

    -- Handle PM conversions (assume any end time less than start time is in PM)
    IF end_time < start_time THEN
        SET end_time = ADDTIME(end_time, '12:00:00');
    END IF;

    -- Compute total class hours correctly
    SET total_hours = TIME_TO_SEC(TIMEDIFF(end_time, start_time)) / 3600;

    RETURN total_hours;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetDepartmentByProgramForStoredProcedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetDepartmentByProgramForStoredProcedure`(program_id INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE department_name VARCHAR(255);

    -- Retrieve department name based on program_id
    SELECT d.department_name INTO department_name
    FROM departments d
    JOIN programs p ON d.department_id = p.department_id
    WHERE p.program_id = program_id;

    RETURN department_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetEnrollmentStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetEnrollmentStatus`(studentID INT) RETURNS char(15) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE status CHAR(15);

    -- Check if student is in the enrollments table
    IF EXISTS (SELECT 1 FROM enrollments WHERE student_id = studentID) THEN
        SET status = 'Enrolled';
    ELSE
        SET status = 'Not Enrolled';
    END IF;

    RETURN status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetStudentFullNamesByProgramForStoredProcedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetStudentFullNamesByProgramForStoredProcedure`(program_id_param INT) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE student_names TEXT;

    -- Get a comma-separated list of student full names (First Name Last Name)
    SELECT GROUP_CONCAT(CONCAT(s.fname, ' ', s.lname) ORDER BY s.student_id SEPARATOR ', ') 
    INTO student_names
    FROM students s
    JOIN enrollments e ON s.student_id = e.student_id
    WHERE e.program_id = program_id_param;

    -- If no students are enrolled, return "No Enrolled Students"
    IF student_names IS NULL THEN
        SET student_names = 'No Enrolled Students';
    END IF;

    RETURN student_names;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetYearsToGraduate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetYearsToGraduate`(studentID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE years INT;
    
    -- Check if the student has a graduation date
    IF EXISTS (SELECT 1 FROM students WHERE student_id = studentID AND graduation_date IS NOT NULL) THEN
        -- Calculate difference in years
        SELECT TIMESTAMPDIFF(YEAR, enrollment_date, graduation_date) 
        INTO years
        FROM students
        WHERE student_id = studentID;
    ELSE
        SET years = NULL; -- If no graduation date, return NULL
    END IF;

    RETURN years;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddClass`(
    IN p_course_id INT,
    IN p_professor_id INT,
    IN p_schedule VARCHAR(255)
)
BEGIN
    INSERT INTO classes (course_id, professor_id, schedule)
    VALUES (p_course_id, p_professor_id, p_schedule);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteClass`(
    IN p_class_id INT
)
BEGIN
    DELETE FROM classes
    WHERE class_id = p_class_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCourseListPerProgramWithoutCursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCourseListPerProgramWithoutCursor`(IN program_filter INT)
BEGIN
         -- retrieve courses in specific program
			SELECT p.program_name AS "Program Name",
				COUNT(c.course_id) AS "Total Courses",
                GROUP_CONCAT(c.course_name SEPARATOR ',') AS "Course List"
			FROM programs p
            JOIN courses c ON 
				p.program_id=c.program_id
			WHERE(program_filter IS NULL OR p.program_id = program_filter)
            GROUP BY p.program_id
            ORDER BY p.program_name;
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProfessorsWithClasses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProfessorsWithClasses`()
BEGIN
    SELECT 
        p.professor_id AS `Professor ID`,
        CONCAT(p.fname, ' ', p.lname) AS `Professor Name`,
        c.schedule AS `Class Schedule`
    FROM professors p
    JOIN classes c ON p.professor_id = c.professor_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProfessorsWithClassesWithCursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProfessorsWithClassesWithCursor`()
BEGIN 
         -- let's declare the control variables for the cursor
         DECLARE done INT 
         DEFAULT FALSE;
         DECLARE prof_id INT;
         DECLARE prof_name VARCHAR(255);
         DECLARE class_schedule VARCHAR(255);
         
         -- let's define the cursor
         
         DECLARE cur CURSOR FOR
		 SELECT p.professor_id,
            CONCAT(p.fname,' ',p.lname),
            c.schedule
		
		 FROM professors p
		 JOIN classes c ON
				p.professor_id=c.professor_id;
                
			-- handle case when no more rows are fiund
		 DECLARE CONTINUE 
		 HANDLER FOR NOT FOUND 
            SET done=TRUE;
            
            -- open cursor and loop throught results
            
            OPEN cur;
				read_loop:LOOP
                FETCH cur INTO prof_id,
                prof_name, class_schedule;
					IF done THEN
						LEAVE read_loop;
					END IF;
			
            -- display details
            SELECT prof_id AS 
            "Professor ID", prof_name AS
            "Professor Name", class_schedule AS
            "Class Schedule";
            
		END LOOP;
            
		CLOSE cur;
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStudentCountByProgramWithoutCursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudentCountByProgramWithoutCursor`()
BEGIN
			-- count number of students per program
            SELECT p.program_name AS "Program",
				COUNT(e.student_id) AS "Total Enrolled Students"
			FROM programs p
            LEFT JOIN enrollments e ON
				p.program_id=e.program_id
			GROUP BY p.program_id,
					program_name
			ORDER BY COUNT(e.student_id) DESC;
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStudentsByProgramWithCursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudentsByProgramWithCursor`()
BEGIN 
        -- declare the control variables
        DECLARE done INT
        DEFAULT FALSE;
        DECLARE student_name VARCHAR(255);
        DECLARE program_name VARCHAR(255);
        
        -- cursor to retrieve students and their programs
        
        DECLARE student_cursor CURSOR FOR
			SELECT 
				CONCAT(s.fname,' ', s.lname),
                p.program_name
                
			FROM students s
				JOIN enrollments e ON
					s.student_id=e.student_id
				JOIN programs p ON
					e.program_id=p.program_id;
			
            -- when no more rows are found
		DECLARE CONTINUE HANDLER FOR NOT FOUND
			SET done=TRUE;
            
            -- open cursor and loop results
            OPEN student_cursor;
            read_loop:LOOP
				FETCH student_cursor INTO student_name,
                program_name;
                
                IF done THEN LEAVE read_loop;
                END IF;
                
				-- display student details
				SELECT student_name AS "Student Name",
				program_name AS "Program";
            END LOOP;
		CLOSE student_cursor;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifiedGetStudentCountByProgramWithoutCursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifiedGetStudentCountByProgramWithoutCursor`()
BEGIN
    -- Count number of students per program and get all student names using the function
    SELECT 
        p.program_name AS "Program",
        COUNT(e.student_id) AS "Total Enrolled Students",
        GetStudentFullNamesByProgramForStoredProcedure(p.program_id) AS "Enrolled Students"
    FROM programs p
    LEFT JOIN enrollments e ON p.program_id = e.program_id
    GROUP BY p.program_id, p.program_name
    ORDER BY COUNT(e.student_id) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifiedGetStudentsByProgramWithCursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifiedGetStudentsByProgramWithCursor`()
BEGIN 
    -- Declare control variables
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_name VARCHAR(255);
    DECLARE program_name VARCHAR(255);
    DECLARE program_id INT;
    DECLARE department_name VARCHAR(255);

    -- Cursor to retrieve students, their programs, and program_id
    DECLARE student_cursor CURSOR FOR
        SELECT CONCAT(s.fname, ' ', s.lname), p.program_name, p.program_id
        FROM students s
        JOIN enrollments e ON s.student_id = e.student_id
        JOIN programs p ON e.program_id = p.program_id
        ORDER BY p.program_id, s.student_id;

    -- When no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Open cursor and loop through results
    OPEN student_cursor;
    
    read_loop: LOOP
        FETCH student_cursor INTO student_name, program_name, program_id;

        IF done THEN 
            LEAVE read_loop; 
        END IF;

        -- Call function to get department name for this program
        SET department_name = GetDepartmentByProgramForStoredProcedure(program_id);

        -- Display student details with department name
        SELECT student_name AS "Student Name",
               program_name AS "Program",
               department_name AS "Department";
    END LOOP;
    
    CLOSE student_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateClass`(
    IN p_class_id INT,
    IN p_course_id INT,
    IN p_professor_id INT,
    IN p_schedule VARCHAR(255)
)
BEGIN
    UPDATE classes
    SET course_id = p_course_id,
        professor_id = p_professor_id,
        schedule = p_schedule
    WHERE class_id = p_class_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `department_program_professor_count`
--

/*!50001 DROP VIEW IF EXISTS `department_program_professor_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `department_program_professor_count` AS select `d`.`department_name` AS `department_name`,`p`.`program_name` AS `program_name`,count(distinct `cl`.`professor_id`) AS `num_professors` from (((`departments` `d` join `programs` `p` on((`d`.`department_id` = `p`.`department_id`))) join `courses` `c` on((`p`.`program_id` = `c`.`program_id`))) join `classes` `cl` on((`c`.`course_id` = `cl`.`course_id`))) group by `d`.`department_name`,`p`.`program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `modified_professor_schedule`
--

/*!50001 DROP VIEW IF EXISTS `modified_professor_schedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `modified_professor_schedule` AS select `p`.`professor_id` AS `professor_id`,`p`.`fname` AS `professor_first_name`,`p`.`lname` AS `professor_last_name`,`pr`.`program_name` AS `program_name`,`c`.`course_code` AS `course_code`,`c`.`course_name` AS `course_name`,`cl`.`schedule` AS `schedule`,`GetClassHoursForView`(`cl`.`schedule`) AS `total_class_hours` from (((`professors` `p` join `classes` `cl` on((`p`.`professor_id` = `cl`.`professor_id`))) join `courses` `c` on((`cl`.`course_id` = `c`.`course_id`))) join `programs` `pr` on((`c`.`program_id` = `pr`.`program_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `professor_schedule`
--

/*!50001 DROP VIEW IF EXISTS `professor_schedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `professor_schedule` AS select `p`.`professor_id` AS `professor_id`,`p`.`fname` AS `professor_first_name`,`p`.`lname` AS `professor_last_name`,`pr`.`program_name` AS `program_name`,`c`.`course_code` AS `course_code`,`c`.`course_name` AS `course_name`,`cl`.`schedule` AS `schedule` from (((`professors` `p` join `classes` `cl` on((`p`.`professor_id` = `cl`.`professor_id`))) join `courses` `c` on((`cl`.`course_id` = `c`.`course_id`))) join `programs` `pr` on((`c`.`program_id` = `pr`.`program_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `program_course_count`
--

/*!50001 DROP VIEW IF EXISTS `program_course_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `program_course_count` AS select `p`.`program_name` AS `program_name`,count(`c`.`course_id`) AS `num_courses`,group_concat(`c`.`course_name` separator ',') AS `courses_offered` from (`programs` `p` join `courses` `c` on((`p`.`program_id` = `c`.`program_id`))) group by `p`.`program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `program_enrollment_count`
--

/*!50001 DROP VIEW IF EXISTS `program_enrollment_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `program_enrollment_count` AS select `p`.`program_name` AS `program_name`,count(`e`.`student_id`) AS `num_enrolled_students` from (`programs` `p` left join `enrollments` `e` on((`p`.`program_id` = `e`.`program_id`))) group by `p`.`program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_enrollment`
--

/*!50001 DROP VIEW IF EXISTS `student_enrollment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_enrollment` AS select `s`.`student_id` AS `student_id`,`s`.`fname` AS `student_first_name`,`s`.`lname` AS `student_last_name`,`p`.`program_id` AS `program_id`,`c`.`course_name` AS `course_name`,`e`.`enrollment_date` AS `enrollment_date` from (((`students` `s` join `enrollments` `e` on((`s`.`student_id` = `e`.`student_id`))) join `programs` `p` on((`e`.`program_id` = `p`.`program_id`))) join `courses` `c` on((`c`.`program_id` = `p`.`program_id`))) */;
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

-- Dump completed on 2025-05-21 19:21:17
