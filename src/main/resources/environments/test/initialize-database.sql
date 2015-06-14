-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: localhost    Database: tltest
-- ------------------------------------------------------
-- Server version	5.6.23

SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;
SET @OLD_TIME_ZONE=@@TIME_ZONE;
SET TIME_ZONE='+00:00';
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0;

--
-- Current Database: `tltest`
--

USE `tltest`;

--
-- Dumping data for table `agendas`
--

LOCK TABLES `agendas` WRITE;
ALTER TABLE `agendas` DISABLE KEYS;
INSERT INTO `agendas` VALUES (1,'Dr. Ramirez',1,'P2M'),(2,'Dra. Lopez',1,'P2M');
ALTER TABLE `agendas` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `agendas_administradores`
--

LOCK TABLES `agendas_administradores` WRITE;
ALTER TABLE `agendas_administradores` DISABLE KEYS;
INSERT INTO `agendas_administradores` VALUES (1,7),(2,8);
ALTER TABLE `agendas_administradores` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `agendas_servicios`
--

LOCK TABLES `agendas_servicios` WRITE;
ALTER TABLE `agendas_servicios` DISABLE KEYS;
INSERT INTO `agendas_servicios` VALUES (1,1),(2,1);
ALTER TABLE `agendas_servicios` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `dias_no_laborales`
--

LOCK TABLES `dias_no_laborales` WRITE;
ALTER TABLE `dias_no_laborales` DISABLE KEYS;
INSERT INTO `dias_no_laborales` VALUES (1,2,'2012-01-20','Dia del invento'),(2,2,'2012-07-09','Dia de la independencia'),(3,2,'2012-05-01','Dia del trabajador');
ALTER TABLE `dias_no_laborales` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
ALTER TABLE `horarios` DISABLE KEYS;
INSERT INTO `horarios` VALUES (1,1,'2012-01-16 10:00:00','2012-01-16 11:00:00',NULL),(2,1,'2012-01-16 11:00:00','2012-01-16 12:00:00',NULL),(3,1,'2012-01-16 12:00:00','2012-01-16 13:00:00',NULL),(4,1,'2012-01-16 13:00:00','2012-01-16 14:00:00',NULL),(5,1,'2012-01-16 14:00:00','2012-01-16 15:00:00',NULL),(6,1,'2012-01-16 15:00:00','2012-01-16 16:00:00',NULL),(7,1,'2012-01-16 16:00:00','2012-01-16 17:00:00',NULL),(8,1,'2012-01-16 17:00:00','2012-01-16 18:00:00',NULL),(9,1,'2012-01-23 10:00:00','2012-01-23 11:00:00',NULL),(10,1,'2012-01-23 11:00:00','2012-01-23 12:00:00',NULL),(11,1,'2012-01-23 12:00:00','2012-01-23 13:00:00',NULL),(12,1,'2012-01-23 13:00:00','2012-01-23 14:00:00',NULL),(13,1,'2012-01-23 14:00:00','2012-01-23 15:00:00',NULL),(14,1,'2012-01-23 15:00:00','2012-01-23 16:00:00',NULL),(15,1,'2012-01-23 16:00:00','2012-01-23 17:00:00',NULL),(16,1,'2012-01-23 17:00:00','2012-01-23 18:00:00',NULL),(17,1,'2012-01-30 10:00:00','2012-01-30 11:00:00',NULL),(18,1,'2012-01-30 11:00:00','2012-01-30 12:00:00',NULL),(19,1,'2012-01-30 12:00:00','2012-01-30 13:00:00',NULL),(20,1,'2012-01-30 13:00:00','2012-01-30 14:00:00',NULL),(21,1,'2012-01-30 14:00:00','2012-01-30 15:00:00',NULL),(22,1,'2012-01-30 15:00:00','2012-01-30 16:00:00',NULL),(23,1,'2012-01-30 16:00:00','2012-01-30 17:00:00',NULL),(24,1,'2012-01-30 17:00:00','2012-01-30 18:00:00',NULL),(25,1,'2012-02-06 10:00:00','2012-02-06 11:00:00',NULL),(26,1,'2012-02-06 11:00:00','2012-02-06 12:00:00',NULL),(27,1,'2012-02-06 12:00:00','2012-02-06 13:00:00',NULL),(28,1,'2012-02-06 13:00:00','2012-02-06 14:00:00',NULL),(29,1,'2012-02-06 14:00:00','2012-02-06 15:00:00',NULL),(30,1,'2012-02-06 15:00:00','2012-02-06 16:00:00',NULL),(31,1,'2012-02-06 16:00:00','2012-02-06 17:00:00',NULL),(32,1,'2012-02-06 17:00:00','2012-02-06 18:00:00',NULL),(33,1,'2012-02-13 10:00:00','2012-02-13 11:00:00',NULL),(34,1,'2012-02-13 11:00:00','2012-02-13 12:00:00',NULL),(35,1,'2012-02-13 12:00:00','2012-02-13 13:00:00',NULL),(36,1,'2012-02-13 13:00:00','2012-02-13 14:00:00',NULL),(37,1,'2012-02-13 14:00:00','2012-02-13 15:00:00',NULL),(38,1,'2012-02-13 15:00:00','2012-02-13 16:00:00',NULL),(39,1,'2012-02-13 16:00:00','2012-02-13 17:00:00',NULL),(40,1,'2012-02-13 17:00:00','2012-02-13 18:00:00',NULL),(41,1,'2012-02-20 10:00:00','2012-02-20 11:00:00',NULL),(42,1,'2012-02-20 11:00:00','2012-02-20 12:00:00',NULL),(43,1,'2012-02-20 12:00:00','2012-02-20 13:00:00',NULL),(44,1,'2012-02-20 13:00:00','2012-02-20 14:00:00',NULL),(45,1,'2012-02-20 14:00:00','2012-02-20 15:00:00',NULL),(46,1,'2012-02-20 15:00:00','2012-02-20 16:00:00',NULL),(47,1,'2012-02-20 16:00:00','2012-02-20 17:00:00',NULL),(48,1,'2012-02-20 17:00:00','2012-02-20 18:00:00',NULL),(49,1,'2012-02-27 10:00:00','2012-02-27 11:00:00',NULL),(50,1,'2012-02-27 11:00:00','2012-02-27 12:00:00',NULL),(51,1,'2012-02-27 12:00:00','2012-02-27 13:00:00',NULL),(52,1,'2012-02-27 13:00:00','2012-02-27 14:00:00',NULL),(53,1,'2012-02-27 14:00:00','2012-02-27 15:00:00',NULL),(54,1,'2012-02-27 15:00:00','2012-02-27 16:00:00',NULL),(55,1,'2012-02-27 16:00:00','2012-02-27 17:00:00',NULL),(56,1,'2012-02-27 17:00:00','2012-02-27 18:00:00',NULL),(57,1,'2012-03-05 10:00:00','2012-03-05 11:00:00',NULL),(58,1,'2012-03-05 11:00:00','2012-03-05 12:00:00',NULL),(59,1,'2012-03-05 12:00:00','2012-03-05 13:00:00',NULL),(60,1,'2012-03-05 13:00:00','2012-03-05 14:00:00',NULL),(61,1,'2012-03-05 14:00:00','2012-03-05 15:00:00',NULL),(62,1,'2012-03-05 15:00:00','2012-03-05 16:00:00',NULL),(63,1,'2012-03-05 16:00:00','2012-03-05 17:00:00',NULL),(64,1,'2012-03-05 17:00:00','2012-03-05 18:00:00',NULL),(65,2,'2012-01-16 10:00:00','2012-01-16 11:00:00',NULL),(66,2,'2012-01-16 11:00:00','2012-01-16 12:00:00',NULL),(67,2,'2012-01-16 12:00:00','2012-01-16 13:00:00',NULL),(68,2,'2012-01-16 13:00:00','2012-01-16 14:00:00',NULL),(69,2,'2012-01-16 14:00:00','2012-01-16 15:00:00',NULL),(70,2,'2012-01-16 15:00:00','2012-01-16 16:00:00',NULL),(71,2,'2012-01-16 16:00:00','2012-01-16 17:00:00',NULL),(72,2,'2012-01-16 17:00:00','2012-01-16 18:00:00',NULL),(73,2,'2012-01-23 10:00:00','2012-01-23 11:00:00',NULL),(74,2,'2012-01-23 11:00:00','2012-01-23 12:00:00',NULL),(75,2,'2012-01-23 12:00:00','2012-01-23 13:00:00',NULL),(76,2,'2012-01-23 13:00:00','2012-01-23 14:00:00',NULL),(77,2,'2012-01-23 14:00:00','2012-01-23 15:00:00',NULL),(78,2,'2012-01-23 15:00:00','2012-01-23 16:00:00',NULL),(79,2,'2012-01-23 16:00:00','2012-01-23 17:00:00',NULL),(80,2,'2012-01-23 17:00:00','2012-01-23 18:00:00',NULL),(81,2,'2012-01-30 10:00:00','2012-01-30 11:00:00',NULL),(82,2,'2012-01-30 11:00:00','2012-01-30 12:00:00',NULL),(83,2,'2012-01-30 12:00:00','2012-01-30 13:00:00',NULL),(84,2,'2012-01-30 13:00:00','2012-01-30 14:00:00',NULL),(85,2,'2012-01-30 14:00:00','2012-01-30 15:00:00',NULL),(86,2,'2012-01-30 15:00:00','2012-01-30 16:00:00',NULL),(87,2,'2012-01-30 16:00:00','2012-01-30 17:00:00',NULL),(88,2,'2012-01-30 17:00:00','2012-01-30 18:00:00',NULL),(89,2,'2012-02-06 10:00:00','2012-02-06 11:00:00',NULL),(90,2,'2012-02-06 11:00:00','2012-02-06 12:00:00',NULL),(91,2,'2012-02-06 12:00:00','2012-02-06 13:00:00',NULL),(92,2,'2012-02-06 13:00:00','2012-02-06 14:00:00',NULL),(93,2,'2012-02-06 14:00:00','2012-02-06 15:00:00',NULL),(94,2,'2012-02-06 15:00:00','2012-02-06 16:00:00',NULL),(95,2,'2012-02-06 16:00:00','2012-02-06 17:00:00',NULL),(96,2,'2012-02-06 17:00:00','2012-02-06 18:00:00',NULL),(97,2,'2012-02-13 10:00:00','2012-02-13 11:00:00',NULL),(98,2,'2012-02-13 11:00:00','2012-02-13 12:00:00',NULL),(99,2,'2012-02-13 12:00:00','2012-02-13 13:00:00',NULL),(100,2,'2012-02-13 13:00:00','2012-02-13 14:00:00',NULL),(101,2,'2012-02-13 14:00:00','2012-02-13 15:00:00',NULL),(102,2,'2012-02-13 15:00:00','2012-02-13 16:00:00',NULL),(103,2,'2012-02-13 16:00:00','2012-02-13 17:00:00',NULL),(104,2,'2012-02-13 17:00:00','2012-02-13 18:00:00',NULL),(105,2,'2012-02-20 10:00:00','2012-02-20 11:00:00',NULL),(106,2,'2012-02-20 11:00:00','2012-02-20 12:00:00',NULL),(107,2,'2012-02-20 12:00:00','2012-02-20 13:00:00',NULL),(108,2,'2012-02-20 13:00:00','2012-02-20 14:00:00',NULL),(109,2,'2012-02-20 14:00:00','2012-02-20 15:00:00',NULL),(110,2,'2012-02-20 15:00:00','2012-02-20 16:00:00',NULL),(111,2,'2012-02-20 16:00:00','2012-02-20 17:00:00',NULL),(112,2,'2012-02-20 17:00:00','2012-02-20 18:00:00',NULL),(113,2,'2012-02-27 10:00:00','2012-02-27 11:00:00',NULL),(114,2,'2012-02-27 11:00:00','2012-02-27 12:00:00',NULL),(115,2,'2012-02-27 12:00:00','2012-02-27 13:00:00',NULL),(116,2,'2012-02-27 13:00:00','2012-02-27 14:00:00',NULL),(117,2,'2012-02-27 14:00:00','2012-02-27 15:00:00',NULL),(118,2,'2012-02-27 15:00:00','2012-02-27 16:00:00',NULL),(119,2,'2012-02-27 16:00:00','2012-02-27 17:00:00',NULL),(120,2,'2012-02-27 17:00:00','2012-02-27 18:00:00',NULL),(121,2,'2012-03-05 10:00:00','2012-03-05 11:00:00',NULL),(122,2,'2012-03-05 11:00:00','2012-03-05 12:00:00',NULL),(123,2,'2012-03-05 12:00:00','2012-03-05 13:00:00',NULL),(124,2,'2012-03-05 13:00:00','2012-03-05 14:00:00',NULL),(125,2,'2012-03-05 14:00:00','2012-03-05 15:00:00',NULL),(126,2,'2012-03-05 15:00:00','2012-03-05 16:00:00',NULL),(127,2,'2012-03-05 16:00:00','2012-03-05 17:00:00',NULL),(128,2,'2012-03-05 17:00:00','2012-03-05 18:00:00',NULL),(129,2,'2012-03-18 10:00:00','2012-03-18 11:00:00',NULL),(130,2,'2012-03-18 11:00:00','2012-03-18 12:00:00',NULL),(131,2,'2012-03-18 12:00:00','2012-03-18 13:00:00',NULL),(132,2,'2012-03-18 13:00:00','2012-03-18 14:00:00',NULL),(133,2,'2012-03-18 14:00:00','2012-03-18 15:00:00',NULL),(134,2,'2012-03-18 15:00:00','2012-03-18 16:00:00',NULL),(135,2,'2012-03-18 16:00:00','2012-03-18 17:00:00',NULL);
ALTER TABLE `horarios` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `jornadas_habituales`
--

LOCK TABLES `jornadas_habituales` WRITE;
ALTER TABLE `jornadas_habituales` DISABLE KEYS;
INSERT INTO `jornadas_habituales` VALUES (1,1,'PT3600S',2,1,'10:00',1,'18:00'),(2,2,'PT3600S',3,1,'10:00',1,'18:00');
ALTER TABLE `jornadas_habituales` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `jornadas_ocasionales`
--

LOCK TABLES `jornadas_ocasionales` WRITE;
ALTER TABLE `jornadas_ocasionales` DISABLE KEYS;
INSERT INTO `jornadas_ocasionales` VALUES (1,2,'PT3600S',2,'2012-03-18 10:00:00','2012-03-18 17:00:00');
ALTER TABLE `jornadas_ocasionales` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
ALTER TABLE `noticias` DISABLE KEYS;
ALTER TABLE `noticias` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
ALTER TABLE `notificaciones` DISABLE KEYS;
ALTER TABLE `notificaciones` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `prestadores_de_servicios`
--

LOCK TABLES `prestadores_de_servicios` WRITE;
ALTER TABLE `prestadores_de_servicios` DISABLE KEYS;
INSERT INTO `prestadores_de_servicios` VALUES (1,1,'Consultorio medico sur','/images/prestadores/prestador1.jpg','Buenos Aires','Av Cabildo 1501, Buenos Aires, Argentina',-34.5668907,-58.4507691,'47850055',NULL);
ALTER TABLE `prestadores_de_servicios` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
ALTER TABLE `roles` DISABLE KEYS;
INSERT INTO `roles` VALUES (7,'adm-agenda',5),(8,'adm-agenda',6),(1,'cliente',1),(2,'cliente',2),(3,'cliente',3),(4,'cliente',4),(5,'cliente',5),(6,'cliente',6);
ALTER TABLE `roles` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `rubros`
--

LOCK TABLES `rubros` WRITE;
ALTER TABLE `rubros` DISABLE KEYS;
INSERT INTO `rubros` VALUES (1,'Consultorios medicos');
ALTER TABLE `rubros` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
ALTER TABLE `servicios` DISABLE KEYS;
INSERT INTO `servicios` VALUES (1,'Oftalmología');
ALTER TABLE `servicios` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `servicios_prestadores`
--

LOCK TABLES `servicios_prestadores` WRITE;
ALTER TABLE `servicios_prestadores` DISABLE KEYS;
INSERT INTO `servicios_prestadores` VALUES (1,1);
ALTER TABLE `servicios_prestadores` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
ALTER TABLE `turnos` DISABLE KEYS;
INSERT INTO `turnos` VALUES (1,1,1,0,NULL,NULL),(2,1,2,0,NULL,NULL),(3,2,1,0,NULL,NULL),(4,2,2,0,NULL,NULL),(5,3,1,0,NULL,NULL),(6,3,2,0,NULL,NULL),(7,4,1,0,NULL,NULL),(8,4,2,0,NULL,NULL),(9,5,1,0,NULL,NULL),(10,5,2,0,NULL,NULL),(11,6,1,0,NULL,NULL),(12,6,2,0,NULL,NULL),(13,7,1,0,NULL,NULL),(14,7,2,0,NULL,NULL),(15,8,1,0,NULL,NULL),(16,8,2,0,NULL,NULL),(17,9,1,0,NULL,NULL),(18,9,2,0,NULL,NULL),(19,10,1,0,NULL,NULL),(20,10,2,0,NULL,NULL),(21,11,1,0,NULL,NULL),(22,11,2,0,NULL,NULL),(23,12,1,0,NULL,NULL),(24,12,2,0,NULL,NULL),(25,13,1,0,NULL,NULL),(26,13,2,0,NULL,NULL),(27,14,1,0,NULL,NULL),(28,14,2,0,NULL,NULL),(29,15,1,0,NULL,NULL),(30,15,2,0,NULL,NULL),(31,16,1,0,NULL,NULL),(32,16,2,0,NULL,NULL),(33,17,1,0,NULL,NULL),(34,17,2,0,NULL,NULL),(35,18,1,0,NULL,NULL),(36,18,2,0,NULL,NULL),(37,19,1,0,NULL,NULL),(38,19,2,0,NULL,NULL),(39,20,1,0,NULL,NULL),(40,20,2,0,NULL,NULL),(41,21,1,0,NULL,NULL),(42,21,2,0,NULL,NULL),(43,22,1,0,NULL,NULL),(44,22,2,0,NULL,NULL),(45,23,1,0,NULL,NULL),(46,23,2,0,NULL,NULL),(47,24,1,0,NULL,NULL),(48,24,2,0,NULL,NULL),(49,25,1,0,NULL,NULL),(50,25,2,0,NULL,NULL),(51,26,1,0,NULL,NULL),(52,26,2,0,NULL,NULL),(53,27,1,0,NULL,NULL),(54,27,2,0,NULL,NULL),(55,28,1,0,NULL,NULL),(56,28,2,0,NULL,NULL),(57,29,1,0,NULL,NULL),(58,29,2,0,NULL,NULL),(59,30,1,0,NULL,NULL),(60,30,2,0,NULL,NULL),(61,31,1,0,NULL,NULL),(62,31,2,0,NULL,NULL),(63,32,1,0,NULL,NULL),(64,32,2,0,NULL,NULL),(65,33,1,0,NULL,NULL),(66,33,2,0,NULL,NULL),(67,34,1,0,NULL,NULL),(68,34,2,0,NULL,NULL),(69,35,1,0,NULL,NULL),(70,35,2,0,NULL,NULL),(71,36,1,0,NULL,NULL),(72,36,2,0,NULL,NULL),(73,37,1,0,NULL,NULL),(74,37,2,0,NULL,NULL),(75,38,1,0,NULL,NULL),(76,38,2,0,NULL,NULL),(77,39,1,0,NULL,NULL),(78,39,2,0,NULL,NULL),(79,40,1,0,NULL,NULL),(80,40,2,0,NULL,NULL),(81,41,1,0,NULL,NULL),(82,41,2,0,NULL,NULL),(83,42,1,0,NULL,NULL),(84,42,2,0,NULL,NULL),(85,43,1,0,NULL,NULL),(86,43,2,0,NULL,NULL),(87,44,1,0,NULL,NULL),(88,44,2,0,NULL,NULL),(89,45,1,0,NULL,NULL),(90,45,2,0,NULL,NULL),(91,46,1,0,NULL,NULL),(92,46,2,0,NULL,NULL),(93,47,1,0,NULL,NULL),(94,47,2,0,NULL,NULL),(95,48,1,0,NULL,NULL),(96,48,2,0,NULL,NULL),(97,49,1,0,NULL,NULL),(98,49,2,0,NULL,NULL),(99,50,1,0,NULL,NULL),(100,50,2,0,NULL,NULL),(101,51,1,0,NULL,NULL),(102,51,2,0,NULL,NULL),(103,52,1,0,NULL,NULL),(104,52,2,0,NULL,NULL),(105,53,1,0,NULL,NULL),(106,53,2,0,NULL,NULL),(107,54,1,0,NULL,NULL),(108,54,2,0,NULL,NULL),(109,55,1,0,NULL,NULL),(110,55,2,0,NULL,NULL),(111,56,1,0,NULL,NULL),(112,56,2,0,NULL,NULL),(113,57,1,0,NULL,NULL),(114,57,2,0,NULL,NULL),(115,58,1,0,NULL,NULL),(116,58,2,0,NULL,NULL),(117,59,1,0,NULL,NULL),(118,59,2,0,NULL,NULL),(119,60,1,0,NULL,NULL),(120,60,2,0,NULL,NULL),(121,61,1,0,NULL,NULL),(122,61,2,0,NULL,NULL),(123,62,1,0,NULL,NULL),(124,62,2,0,NULL,NULL),(125,63,1,0,NULL,NULL),(126,63,2,0,NULL,NULL),(127,64,1,0,NULL,NULL),(128,64,2,0,NULL,NULL),(129,65,1,0,NULL,NULL),(130,65,2,0,NULL,NULL),(131,65,3,0,NULL,NULL),(132,66,1,0,NULL,NULL),(133,66,2,0,NULL,NULL),(134,66,3,0,NULL,NULL),(135,67,1,0,NULL,NULL),(136,67,2,0,NULL,NULL),(137,67,3,0,NULL,NULL),(138,68,1,0,NULL,NULL),(139,68,2,0,NULL,NULL),(140,68,3,0,NULL,NULL),(141,69,1,0,NULL,NULL),(142,69,2,0,NULL,NULL),(143,69,3,0,NULL,NULL),(144,70,1,0,NULL,NULL),(145,70,2,0,NULL,NULL),(146,70,3,0,NULL,NULL),(147,71,1,0,NULL,NULL),(148,71,2,0,NULL,NULL),(149,71,3,0,NULL,NULL),(150,72,1,0,NULL,NULL),(151,72,2,0,NULL,NULL),(152,72,3,0,NULL,NULL),(153,73,1,1,NULL,1),(154,73,2,1,NULL,2),(155,73,3,0,NULL,NULL),(156,74,1,0,NULL,NULL),(157,74,2,0,NULL,NULL),(158,74,3,0,NULL,NULL),(159,75,1,0,NULL,NULL),(160,75,2,0,NULL,NULL),(161,75,3,0,NULL,NULL),(162,76,1,0,NULL,NULL),(163,76,2,0,NULL,NULL),(164,76,3,0,NULL,NULL),(165,77,1,0,NULL,NULL),(166,77,2,0,NULL,NULL),(167,77,3,0,NULL,NULL),(168,78,1,0,NULL,NULL),(169,78,2,0,NULL,NULL),(170,78,3,0,NULL,NULL),(171,79,1,0,NULL,NULL),(172,79,2,0,NULL,NULL),(173,79,3,0,NULL,NULL),(174,80,1,0,NULL,NULL),(175,80,2,0,NULL,NULL),(176,80,3,0,NULL,NULL),(177,81,1,0,NULL,NULL),(178,81,2,0,NULL,NULL),(179,81,3,0,NULL,NULL),(180,82,1,0,NULL,NULL),(181,82,2,0,NULL,NULL),(182,82,3,0,NULL,NULL),(183,83,1,0,NULL,NULL),(184,83,2,0,NULL,NULL),(185,83,3,0,NULL,NULL),(186,84,1,0,NULL,NULL),(187,84,2,0,NULL,NULL),(188,84,3,0,NULL,NULL),(189,85,1,0,NULL,NULL),(190,85,2,0,NULL,NULL),(191,85,3,0,NULL,NULL),(192,86,1,0,NULL,NULL),(193,86,2,0,NULL,NULL),(194,86,3,0,NULL,NULL),(195,87,1,0,NULL,NULL),(196,87,2,0,NULL,NULL),(197,87,3,0,NULL,NULL),(198,88,1,0,NULL,NULL),(199,88,2,0,NULL,NULL),(200,88,3,0,NULL,NULL),(201,89,1,0,NULL,NULL),(202,89,2,0,NULL,NULL),(203,89,3,0,NULL,NULL),(204,90,1,0,NULL,NULL),(205,90,2,0,NULL,NULL),(206,90,3,0,NULL,NULL),(207,91,1,0,NULL,NULL),(208,91,2,0,NULL,NULL),(209,91,3,0,NULL,NULL),(210,92,1,0,NULL,NULL),(211,92,2,0,NULL,NULL),(212,92,3,0,NULL,NULL),(213,93,1,0,NULL,NULL),(214,93,2,0,NULL,NULL),(215,93,3,0,NULL,NULL),(216,94,1,0,NULL,NULL),(217,94,2,0,NULL,NULL),(218,94,3,0,NULL,NULL),(219,95,1,0,NULL,NULL),(220,95,2,0,NULL,NULL),(221,95,3,0,NULL,NULL),(222,96,1,0,NULL,NULL),(223,96,2,0,NULL,NULL),(224,96,3,0,NULL,NULL),(225,97,1,0,NULL,NULL),(226,97,2,0,NULL,NULL),(227,97,3,0,NULL,NULL),(228,98,1,0,NULL,NULL),(229,98,2,0,NULL,NULL),(230,98,3,0,NULL,NULL),(231,99,1,0,NULL,NULL),(232,99,2,0,NULL,NULL),(233,99,3,0,NULL,NULL),(234,100,1,0,NULL,NULL),(235,100,2,0,NULL,NULL),(236,100,3,0,NULL,NULL),(237,101,1,0,NULL,NULL),(238,101,2,0,NULL,NULL),(239,101,3,0,NULL,NULL),(240,102,1,0,NULL,NULL),(241,102,2,0,NULL,NULL),(242,102,3,0,NULL,NULL),(243,103,1,0,NULL,NULL),(244,103,2,0,NULL,NULL),(245,103,3,0,NULL,NULL),(246,104,1,0,NULL,NULL),(247,104,2,0,NULL,NULL),(248,104,3,0,NULL,NULL),(249,105,1,0,NULL,NULL),(250,105,2,0,NULL,NULL),(251,105,3,0,NULL,NULL),(252,106,1,0,NULL,NULL),(253,106,2,0,NULL,NULL),(254,106,3,0,NULL,NULL),(255,107,1,0,NULL,NULL),(256,107,2,0,NULL,NULL),(257,107,3,0,NULL,NULL),(258,108,1,0,NULL,NULL),(259,108,2,0,NULL,NULL),(260,108,3,0,NULL,NULL),(261,109,1,0,NULL,NULL),(262,109,2,0,NULL,NULL),(263,109,3,0,NULL,NULL),(264,110,1,0,NULL,NULL),(265,110,2,0,NULL,NULL),(266,110,3,0,NULL,NULL),(267,111,1,0,NULL,NULL),(268,111,2,0,NULL,NULL),(269,111,3,0,NULL,NULL),(270,112,1,0,NULL,NULL),(271,112,2,0,NULL,NULL),(272,112,3,0,NULL,NULL),(273,113,1,0,NULL,NULL),(274,113,2,0,NULL,NULL),(275,113,3,0,NULL,NULL),(276,114,1,0,NULL,NULL),(277,114,2,0,NULL,NULL),(278,114,3,0,NULL,NULL),(279,115,1,0,NULL,NULL),(280,115,2,0,NULL,NULL),(281,115,3,0,NULL,NULL),(282,116,1,0,NULL,NULL),(283,116,2,0,NULL,NULL),(284,116,3,0,NULL,NULL),(285,117,1,0,NULL,NULL),(286,117,2,0,NULL,NULL),(287,117,3,0,NULL,NULL),(288,118,1,0,NULL,NULL),(289,118,2,0,NULL,NULL),(290,118,3,0,NULL,NULL),(291,119,1,0,NULL,NULL),(292,119,2,0,NULL,NULL),(293,119,3,0,NULL,NULL),(294,120,1,0,NULL,NULL),(295,120,2,0,NULL,NULL),(296,120,3,0,NULL,NULL),(297,121,1,0,NULL,NULL),(298,121,2,0,NULL,NULL),(299,121,3,0,NULL,NULL),(300,122,1,0,NULL,NULL),(301,122,2,0,NULL,NULL),(302,122,3,0,NULL,NULL),(303,123,1,0,NULL,NULL),(304,123,2,0,NULL,NULL),(305,123,3,0,NULL,NULL),(306,124,1,0,NULL,NULL),(307,124,2,0,NULL,NULL),(308,124,3,0,NULL,NULL),(309,125,1,0,NULL,NULL),(310,125,2,0,NULL,NULL),(311,125,3,0,NULL,NULL),(312,126,1,0,NULL,NULL),(313,126,2,0,NULL,NULL),(314,126,3,0,NULL,NULL),(315,127,1,0,NULL,NULL),(316,127,2,0,NULL,NULL),(317,127,3,0,NULL,NULL),(318,128,1,0,NULL,NULL),(319,128,2,0,NULL,NULL),(320,128,3,0,NULL,NULL),(321,129,1,0,NULL,NULL),(322,129,2,0,NULL,NULL),(323,130,1,0,NULL,NULL),(324,130,2,0,NULL,NULL),(325,131,1,0,NULL,NULL),(326,131,2,0,NULL,NULL),(327,132,1,0,NULL,NULL),(328,132,2,0,NULL,NULL),(329,133,1,0,NULL,NULL),(330,133,2,0,NULL,NULL),(331,134,1,0,NULL,NULL),(332,134,2,0,NULL,NULL),(333,135,1,0,NULL,NULL),(334,135,2,0,NULL,NULL);
ALTER TABLE `turnos` ENABLE KEYS;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
ALTER TABLE `usuarios` DISABLE KEYS;
INSERT INTO `usuarios` VALUES (1,'Victor Del Rio','victor@gmail.com','6285b91f53d5c6c2a53fea78d6cfd0acaf021157736f07c9cd13941752b07e0dd6664b111839218e','Aguilar 2547, Buenos Aires, Argentina',NULL,1,NULL),(2,'Manuel Rodriguez','manuel@gmail.com','17d2666fc4f241b4f385be328f15718f643a09c468af5582d5da2cf9e4964f43ac3dfbc9f93c960b','Aguilar 2547, Buenos Aires, Argentina',NULL,1,NULL),(3,'Juan Sanchez','juan@gmail.com','d15c990f29cdececbb654a0927bba930e47779ec515ed05d09479f57f9425c1e3b90398d672b3087','Aguilar 2547, Buenos Aires, Argentina',NULL,1,NULL),(4,'Carlos Del Rio','carlos@gmail.com','e40fdefde22b92c340ac0593394961e036fb07043d5e21341a628a43ecd6b20870e39f1d79d2978d','Aguilar 2547, Buenos Aires, Argentina',NULL,1,NULL),(5,'Admin Agenda1','admin1@gmail.com','991cd509a22ccddd7fa4e8606af037a177dc3cd9adff7ea8ebc03496375497ae0ab1240c3952e3d8','Calle 61 3476, Necochea, Buenos Aires, Argentina',NULL,1,NULL),(6,'Admin Agenda2','admin2@gmail.com','f62ac91133584e3e53755aa857a02e0eafcdf2eb26ed8292cc5ccddbefc303649985a6f30d234386','Calle 61 3476, Necochea, Buenos Aires, Argentina',NULL,1,NULL);
ALTER TABLE `usuarios` ENABLE KEYS;
UNLOCK TABLES;
SET TIME_ZONE=@OLD_TIME_ZONE;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
SET SQL_NOTES=@OLD_SQL_NOTES;

-- Dump completed on 2015-06-14 12:56:47
