CREATE DATABASE  IF NOT EXISTS `db_migracionasc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_migracionasc`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: db_migracionasc
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int NOT NULL AUTO_INCREMENT,
  `fk_id_modulo` int NOT NULL,
  `nombre_aplicacion` varchar(40) NOT NULL,
  `descripcion_aplicacion` varchar(45) NOT NULL,
  `estado_aplicacion` int NOT NULL,
  PRIMARY KEY (`pk_id_aplicacion`),
  KEY `pk_id_aplicacion` (`pk_id_aplicacion`),
  KEY `fk_aplicacion_modulo` (`fk_id_modulo`),
  CONSTRAINT `fk_aplicacion_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=3309 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion`
--

LOCK TABLES `aplicacion` WRITE;
/*!40000 ALTER TABLE `aplicacion` DISABLE KEYS */;
INSERT INTO `aplicacion` VALUES (1,1,'Login','Ventana de Ingreso',1),(2,1,'Mantenimiento Usuario','Mantenimientos de usuario',1),(3,1,'Mantenimiento Aplicacion','ABC de las Aplicaciones',1),(4,1,'Mantenimiento Perfil','ABC de perfiles',1),(5,1,'Asignacion de Aplicaciones a Perfil','Asignacion Aplicacion y perfil',1),(6,1,'Asignacaion de Aplicaciones','Asignacion especificas a un usuario',1),(7,1,'Consulta Aplicacion','Mantenimiento de Aplicaciones',1),(8,1,'Agregar Modulo','Mantenimientos de Modulos',1),(9,1,'Consultar Perfil','Consultas de perfiles disponibles',1),(10,1,'Permisos','Asignar permisos a perfiles y aplicaciones',1),(11,1,'Cambio de Contraseña','Cambia las contraseñas',1),(12,1,'Reporte De Bitacora','Reporte de bitacora',1),(301,4,'Mantenimiento Centros','Mantenimientos de Centros de pasaporte',1),(302,4,'Mantenimiento Tipo Pasaporte','Mantenimiento Tipos de pasaportes',1),(303,4,'Mantenimiento Motivo','Mantenimiento tipo de motivo de gestion',1),(304,4,'Proceso Citas','Proceso para la emision de citas',1),(305,4,'Nueva cita','Proceso para una nueva cita',1),(306,4,'Verificar Cita','Proceso para la verifiacacion de Citas',1),(307,4,'Modificar Cita','Proceso para la modificacion de citas',1),(308,4,'Proceso Verificacion de datos','Para nuevos y renovacion de pasaporte',1),(309,4,'Proceso Primer pasaporte','Proceso para renovar o nuevo pasaporte',1),(310,4,'Impresion de pasaporte','Impresion de pasaporte',1),(311,4,'Reporte De Citas','Reporte De Citas',1),(312,4,'Reporte De Pasaportes','Reporte De Pasaportes',1);
/*!40000 ALTER TABLE `aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicacion_perfil`
--

DROP TABLE IF EXISTS `aplicacion_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion_perfil` (
  `pk_id_aplicacion_perfil` int NOT NULL AUTO_INCREMENT,
  `fk_idaplicacion_aplicacion_perfil` int DEFAULT NULL,
  `fk_idperfil_aplicacion_perfil` int DEFAULT NULL,
  `fk_idpermiso_aplicacion_perfil` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_aplicacion_perfil`),
  KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacion_perfil`),
  KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacion_perfil`),
  KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacion_perfil`),
  CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_perfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacion_perfil`) REFERENCES `perfil` (`pk_id_perfil`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_perfil`) REFERENCES `permiso` (`pk_id_permiso`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion_perfil`
--

LOCK TABLES `aplicacion_perfil` WRITE;
/*!40000 ALTER TABLE `aplicacion_perfil` DISABLE KEYS */;
INSERT INTO `aplicacion_perfil` VALUES (1,1,1,1),(2,4,1,2),(3,5,1,3),(4,2,1,4),(5,3,1,5),(6,6,1,6),(7,8,1,7),(8,2,3,8),(9,3,3,9),(10,4,3,11),(11,2,4,12),(12,8,4,13),(13,8,5,15),(14,8,7,21),(15,301,8,33),(16,302,8,34),(17,303,8,35),(18,304,8,36),(19,305,8,37),(20,306,8,38),(21,307,8,39),(22,308,8,40),(23,309,8,41),(24,310,8,42),(25,311,8,45),(26,312,8,46);
/*!40000 ALTER TABLE `aplicacion_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicacion_usuario`
--

DROP TABLE IF EXISTS `aplicacion_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion_usuario` (
  `pk_id_aplicacion_usuario` int NOT NULL AUTO_INCREMENT,
  `fk_idlogin_aplicacion_usuario` int DEFAULT NULL,
  `fk_idaplicacion_aplicacion_usuario` int DEFAULT NULL,
  `fk_idpermiso_aplicacion_usuario` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_aplicacion_usuario`),
  KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacion_usuario`),
  KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacion_usuario`),
  KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacion_usuario`),
  CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_usuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacion_usuario`) REFERENCES `login` (`pk_id_login`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_usuario`) REFERENCES `permiso` (`pk_id_permiso`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion_usuario`
--

LOCK TABLES `aplicacion_usuario` WRITE;
/*!40000 ALTER TABLE `aplicacion_usuario` DISABLE KEYS */;
INSERT INTO `aplicacion_usuario` VALUES (13,1,302,24),(14,1,303,25),(15,1,304,26),(16,1,305,27),(17,1,306,28),(18,1,307,29),(19,1,308,30),(20,1,309,31),(21,1,310,32),(22,1,301,43),(24,1,311,47),(25,1,312,48),(26,1,12,49),(27,7,1,50),(28,7,2,51),(29,7,3,52),(30,7,4,53),(31,7,5,54),(32,7,6,55),(33,7,7,56),(34,7,8,57),(35,7,9,58),(36,7,10,59),(37,7,11,60),(38,7,12,61),(39,7,301,62),(40,7,302,63),(41,7,303,64),(42,7,304,65),(43,7,305,66),(44,7,306,67),(45,7,307,68),(46,7,308,69),(47,7,309,70),(48,7,310,71),(49,7,311,72),(50,7,312,73),(52,1,1,75),(53,1,2,76),(54,1,3,77),(55,1,4,78),(56,1,5,79),(57,1,6,80),(58,1,7,81),(59,1,8,82),(60,1,9,83),(61,1,10,84),(62,1,11,85);
/*!40000 ALTER TABLE `aplicacion_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `pk_id_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_idusuario_bitacora` int DEFAULT NULL,
  `fk_idaplicacion_bitacora` int DEFAULT NULL,
  `fechahora_bitacora` varchar(50) DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) DEFAULT NULL,
  `accion_bitacora` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`),
  CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=947 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (92,1,1,'18/02/2021 14:10:34','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(96,1,1,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(97,1,308,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Trato de ingresar a Proceso Emision Pasaporte (verificacion datos)'),(98,1,6,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(99,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Perfil'),(100,1,6,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(101,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Perfil'),(102,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Refrescar Datos'),(103,1,5,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(104,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(105,1,5,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(106,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(107,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Modificación de Aplicacion a perfil'),(108,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Perfil'),(109,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Perfil'),(110,1,5,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(111,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(112,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(113,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Mantenimiento Aplicaciones'),(114,1,6,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(115,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Perfil'),(116,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Eliminacion de Datos'),(117,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','UPDATE perfil SET estado_perfil=0 WHERE pk_id_perfil= 3 '),(118,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Eliminacion de Datos'),(119,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','UPDATE perfil SET estado_perfil=0 WHERE pk_id_perfil= 4 '),(120,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Eliminacion de Datos'),(121,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','UPDATE perfil SET estado_perfil=0 WHERE pk_id_perfil= 6 '),(122,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Eliminacion de Datos'),(123,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','UPDATE perfil SET estado_perfil=0 WHERE pk_id_perfil= 7 '),(124,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Refrescar Datos'),(125,1,4,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV',' INSERT INTO perfil VALUES ( 8,  Digitador,  Creador de Citas y Pasaportes,  1) '),(126,1,5,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(127,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(128,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(129,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(130,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(131,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(132,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(133,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(134,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(135,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(136,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(137,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(138,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(139,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(140,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(141,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(142,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(143,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(144,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(145,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(146,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(147,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(148,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(149,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(150,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(151,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Mantenimiento Aplicaciones'),(152,1,6,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(153,1,5,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(154,1,3,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Consulta Perfiles'),(155,1,301,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Trato de Ingresar a Mantenimiento Centros'),(156,1,301,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Trato de Ingresar a Mantenimiento Centros'),(157,1,6,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(158,1,301,'18/02/2021 20:25:39','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(159,1,1,'18/02/2021 20:45:58','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(160,1,301,'18/02/2021 20:45:58','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(161,1,6,'18/02/2021 20:45:58','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(162,1,302,'18/02/2021 20:45:58','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(163,1,303,'18/02/2021 20:45:58','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(164,1,301,'18/02/2021 20:45:58','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(165,1,1,'18/02/2021 20:48:49','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(166,1,301,'18/02/2021 20:48:49','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(167,1,302,'18/02/2021 20:48:49','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(168,1,303,'18/02/2021 20:48:49','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(169,1,304,'18/02/2021 20:48:49','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(170,1,307,'18/02/2021 20:48:49','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(171,1,1,'18/02/2021 20:51:19','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(172,1,301,'18/02/2021 20:51:19','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(173,1,1,'18/02/2021 20:58:50','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(174,1,304,'18/02/2021 20:58:50','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(175,1,307,'18/02/2021 20:58:50','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(176,1,1,'18/02/2021 20:59:55','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(177,1,304,'18/02/2021 20:59:55','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(178,1,307,'18/02/2021 20:59:55','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(179,1,1,'18/02/2021 21:03:28','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(180,1,304,'18/02/2021 21:03:28','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(181,1,307,'18/02/2021 21:03:28','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(182,1,1,'18/02/2021 21:11:28','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(183,1,304,'18/02/2021 21:11:28','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(184,1,307,'18/02/2021 21:11:28','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(185,1,1,'18/02/2021 21:18:40','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(186,1,301,'18/02/2021 21:18:40','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(187,1,304,'18/02/2021 21:18:40','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(188,1,307,'18/02/2021 21:18:40','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(189,1,1,'18/02/2021 21:25:46','192.168.0.19','DESKTOP-MQ0UNFV','Logeo Exitoso'),(190,1,304,'18/02/2021 21:25:46','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(191,1,307,'18/02/2021 21:25:46','192.168.0.19','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(192,1,1,'19/02/2021 18:02:03','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(193,1,308,'19/02/2021 18:02:03','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(194,1,308,'19/02/2021 18:02:03','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(195,1,308,'19/02/2021 18:02:03','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(196,1,308,'19/02/2021 18:02:03','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(197,1,308,'19/02/2021 18:02:03','192.168.0.20','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(198,1,1,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(199,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(200,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(201,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(202,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(203,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(204,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(205,1,6,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(206,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(207,1,308,'19/02/2021 18:06:41','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(208,1,1,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(209,1,308,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(210,1,308,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(211,1,308,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(212,1,308,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(213,1,308,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(214,1,308,'19/02/2021 18:15:18','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(215,1,1,'19/02/2021 18:19:15','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(216,1,308,'19/02/2021 18:19:15','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(217,1,308,'19/02/2021 18:19:15','192.168.0.20','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(218,1,1,'19/02/2021 18:20:20','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(219,1,308,'19/02/2021 18:20:20','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(220,1,308,'19/02/2021 18:20:20','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(221,1,1,'19/02/2021 18:25:05','192.168.0.20','DESKTOP-MQ0UNFV','Logeo erroneo'),(222,1,1,'19/02/2021 18:25:05','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(223,1,308,'19/02/2021 18:25:05','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(224,1,308,'19/02/2021 18:25:05','192.168.0.20','DESKTOP-MQ0UNFV','Trato de Ingresar a Verificacion de Datos'),(225,1,1,'19/02/2021 18:25:58','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(226,1,308,'19/02/2021 18:25:58','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(227,1,308,'19/02/2021 18:25:58','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(228,1,308,'19/02/2021 18:25:58','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(229,1,308,'19/02/2021 18:25:58','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(230,1,310,'19/02/2021 18:25:58','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Impresion de Pasaporte'),(231,1,1,'19/02/2021 18:47:33','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(232,1,308,'19/02/2021 18:47:33','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(233,1,308,'19/02/2021 18:47:33','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(234,1,308,'19/02/2021 18:47:33','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(235,1,308,'19/02/2021 18:47:33','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(236,1,310,'19/02/2021 18:47:33','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Impresion de Pasaporte'),(237,1,1,'19/02/2021 18:51:27','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(238,1,308,'19/02/2021 18:51:27','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(239,1,308,'19/02/2021 18:51:27','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(240,1,308,'19/02/2021 18:51:27','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(241,1,308,'19/02/2021 18:51:27','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(242,1,310,'19/02/2021 18:51:27','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Impresion de Pasaporte'),(243,1,1,'19/02/2021 18:56:05','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(244,1,308,'19/02/2021 18:56:05','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(245,1,308,'19/02/2021 18:56:05','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(246,1,308,'19/02/2021 18:56:05','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(247,1,308,'19/02/2021 18:56:05','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(248,1,1,'19/02/2021 18:58:56','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(249,1,308,'19/02/2021 18:58:56','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(250,1,308,'19/02/2021 18:58:56','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(251,1,308,'19/02/2021 18:58:56','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(252,1,308,'19/02/2021 18:58:56','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(253,1,1,'19/02/2021 19:06:43','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(254,1,308,'19/02/2021 19:06:43','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(255,1,308,'19/02/2021 19:06:43','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(256,1,308,'19/02/2021 19:06:43','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(257,1,308,'19/02/2021 19:06:43','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(258,1,1,'19/02/2021 19:08:08','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(259,1,308,'19/02/2021 19:08:08','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(260,1,308,'19/02/2021 19:08:08','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(261,1,308,'19/02/2021 19:08:08','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(262,1,308,'19/02/2021 19:08:08','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(263,1,1,'19/02/2021 19:10:14','192.168.0.20','DESKTOP-MQ0UNFV','Logeo Exitoso'),(264,1,308,'19/02/2021 19:10:14','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(265,1,308,'19/02/2021 19:10:14','192.168.0.20','DESKTOP-MQ0UNFV','Verifico CUI'),(266,1,308,'19/02/2021 19:10:14','192.168.0.20','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(267,1,308,'19/02/2021 19:10:14','192.168.0.20','DESKTOP-MQ0UNFV','Ingreso a Verificacion de Datos'),(268,1,1,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(269,1,301,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Centros'),(270,1,308,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(271,1,301,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Centros'),(272,1,301,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(273,1,301,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(274,1,301,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Salir de la aplicacion'),(275,1,304,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(276,1,307,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(277,1,302,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Tipo Pasaporte'),(278,1,308,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(279,1,301,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Centros'),(280,1,303,'20/02/2021 12:30:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Motivo de Gestion'),(281,1,1,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(282,1,301,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Centros'),(283,1,302,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Tipo Pasaporte'),(284,1,302,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Salir de la aplicacion'),(285,1,303,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Motivo de Gestion'),(286,1,308,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(287,1,308,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Ingreso a Verificacion de Datos'),(288,1,310,'21/02/2021 15:31:38','25.120.255.155','MoratayaAlienware','Ingreso a Impresion de Pasaporte'),(289,1,1,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(290,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(291,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Verifico CUI'),(292,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Verifico CUI'),(293,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(294,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(295,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(296,1,308,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Ingreso a Verificacion de Datos'),(297,1,310,'21/02/2021 15:35:01','25.120.255.155','MoratayaAlienware','Ingreso a Impresion de Pasaporte'),(298,1,1,'21/02/2021 16:08:47','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(299,1,308,'21/02/2021 16:08:47','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(300,1,308,'21/02/2021 16:08:47','25.120.255.155','MoratayaAlienware','Verifico CUI'),(301,1,308,'21/02/2021 16:08:47','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(302,1,308,'21/02/2021 16:08:47','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(303,1,308,'21/02/2021 16:08:47','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(304,1,1,'21/02/2021 16:30:47','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(305,1,308,'21/02/2021 16:30:47','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(306,1,308,'21/02/2021 16:30:47','25.120.255.155','MoratayaAlienware','Verifico CUI'),(307,1,1,'21/02/2021 16:32:02','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(308,1,308,'21/02/2021 16:32:02','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(309,1,308,'21/02/2021 16:32:02','25.120.255.155','MoratayaAlienware','Verifico CUI'),(310,1,308,'21/02/2021 16:32:02','25.120.255.155','MoratayaAlienware','Verifico CUI'),(311,1,308,'21/02/2021 16:32:02','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(312,1,308,'21/02/2021 16:32:02','25.120.255.155','MoratayaAlienware','Verifico CUI'),(313,1,1,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(314,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(315,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Verifico CUI'),(316,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Verifico CUI'),(317,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Verifico CUI'),(318,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(319,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Boleto No.2 VALIDO para 2'),(320,1,308,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# System.Windows.Forms.TextBox, Text: 123456789'),(321,1,310,'21/02/2021 16:37:26','25.120.255.155','MoratayaAlienware','Imprimio pasaporte No.123456789'),(322,1,1,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(323,1,308,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(324,1,308,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Verifico CUI'),(325,1,308,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(326,1,308,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(327,1,308,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# 123456789'),(328,1,310,'21/02/2021 17:06:28','25.120.255.155','MoratayaAlienware','Imprimio pasaporte No.123456789'),(329,1,1,'21/02/2021 17:26:48','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(330,1,308,'21/02/2021 17:26:48','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(331,1,308,'21/02/2021 17:26:48','25.120.255.155','MoratayaAlienware','Verifico CUI'),(332,1,308,'21/02/2021 17:26:48','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(333,1,308,'21/02/2021 17:26:48','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(334,1,308,'21/02/2021 17:26:48','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# 123456789'),(335,1,1,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(336,1,308,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(337,1,308,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Verifico CUI'),(338,1,308,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(339,1,308,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(340,1,308,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(341,1,308,'21/02/2021 17:34:38','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# 123456789'),(342,1,1,'21/02/2021 17:45:32','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(343,1,308,'21/02/2021 17:45:32','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(344,1,308,'21/02/2021 17:45:32','25.120.255.155','MoratayaAlienware','Verifico CUI'),(345,1,308,'21/02/2021 17:45:32','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(346,1,308,'21/02/2021 17:45:32','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(347,1,308,'21/02/2021 17:45:32','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# 123456789'),(348,1,1,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(349,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(350,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(351,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(352,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(353,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(354,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(355,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(356,1,310,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Imprimio pasaporte No.300594437'),(357,1,308,'21/02/2021 17:47:26','25.120.252.110','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(358,1,1,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(359,1,308,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(360,1,308,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(361,1,308,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(362,1,308,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(363,1,308,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(364,1,308,'21/02/2021 18:00:48','25.120.252.110','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(365,1,1,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(366,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(367,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(368,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(369,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(370,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(371,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(372,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(373,1,308,'21/02/2021 18:03:00','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(374,1,1,'21/02/2021 18:19:48','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(375,1,308,'21/02/2021 18:19:48','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(376,1,308,'21/02/2021 18:19:48','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(377,1,308,'21/02/2021 18:19:48','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(378,1,308,'21/02/2021 18:19:48','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(379,1,308,'21/02/2021 18:19:48','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(380,1,1,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(381,1,308,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(382,1,308,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(383,1,308,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(384,1,308,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(385,1,308,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 123456789'),(386,1,310,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Imprimio pasaporte No.123456789'),(387,1,308,'21/02/2021 18:22:07','25.120.252.110','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(388,1,1,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(389,1,6,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(390,1,4,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Perfil'),(391,1,5,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(392,1,3,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Consulta Perfiles'),(393,1,3,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(394,1,3,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(395,1,3,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Consulta Aplicaciones'),(396,1,3,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Insercion de Aplicacion a perfil'),(397,1,12,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(398,1,311,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ver Reporte de Citas'),(399,1,312,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ver Reporte de Pasaportes'),(400,1,5,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(401,1,6,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(402,1,311,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Citas'),(403,1,312,'21/02/2021 18:30:30','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Pasaportes'),(404,1,1,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(405,1,301,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(406,1,302,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(407,1,303,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(408,1,304,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(409,1,305,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Nuevo Cita'),(410,1,306,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Verificar Cita'),(411,1,307,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(412,1,308,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(413,1,308,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(414,1,308,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(415,1,308,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(416,1,308,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(417,1,310,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Imprimio pasaporte No.300594437'),(418,1,12,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(419,1,12,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(420,1,3,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Mantenimiento Aplicaciones'),(421,1,6,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(422,1,12,'22/02/2021 09:01:21','192.168.0.17','DESKTOP-MQ0UNFV','Trato de Ver Reporte Bitacora'),(423,1,1,'22/02/2021 11:47:29','25.120.255.155','MoratayaAlienware','Logeo erroneo'),(424,1,1,'22/02/2021 11:47:29','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(425,1,12,'22/02/2021 11:47:29','25.120.255.155','MoratayaAlienware','Trato de Ver Reporte Bitacora'),(426,1,6,'22/02/2021 11:47:29','25.120.255.155','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(427,1,12,'22/02/2021 11:47:29','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(428,1,1,'22/02/2021 11:53:03','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(429,1,12,'22/02/2021 11:53:03','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(430,1,1,'22/02/2021 11:58:21','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(431,1,12,'22/02/2021 11:58:21','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(432,1,1,'22/02/2021 12:02:21','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(433,1,12,'22/02/2021 12:02:21','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(434,1,1,'22/02/2021 12:07:06','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(435,1,12,'22/02/2021 12:07:06','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(436,1,1,'22/02/2021 12:18:28','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(437,1,12,'22/02/2021 12:18:28','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(438,1,1,'22/02/2021 12:20:53','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(439,1,12,'22/02/2021 12:20:53','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(440,1,1,'22/02/2021 12:28:05','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(441,1,12,'22/02/2021 12:28:05','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(442,1,12,'22/02/2021 12:28:05','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(443,1,1,'22/02/2021 12:44:33','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(444,1,12,'22/02/2021 12:44:33','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(445,1,1,'22/02/2021 12:49:03','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(446,1,12,'22/02/2021 12:49:03','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(447,1,1,'22/02/2021 13:55:48','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(448,1,12,'22/02/2021 13:55:48','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(449,1,1,'22/02/2021 13:58:01','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(450,1,308,'22/02/2021 13:58:01','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(451,1,12,'22/02/2021 13:58:01','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(452,1,1,'22/02/2021 14:16:56','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(453,1,12,'22/02/2021 14:16:56','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(454,1,1,'22/02/2021 14:20:16','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(455,1,12,'22/02/2021 14:20:16','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(456,1,12,'22/02/2021 14:20:16','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(457,1,1,'22/02/2021 13:35:27','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(458,1,12,'22/02/2021 13:35:27','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(459,1,1,'22/02/2021 15:50:14','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(460,1,12,'22/02/2021 15:50:14','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(461,1,12,'22/02/2021 15:50:14','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(462,1,1,'22/02/2021 17:05:27','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(463,1,12,'22/02/2021 17:05:27','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(464,1,12,'22/02/2021 17:05:27','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(465,1,1,'22/02/2021 16:13:39','25.121.152.253','DESKTOP-CS0DPTN','Logeo Exitoso'),(466,1,12,'22/02/2021 16:13:39','25.121.152.253','DESKTOP-CS0DPTN','Ingreso a Ver Reporte de Bitacora'),(467,1,1,'22/02/2021 16:16:28','25.121.152.253','DESKTOP-CS0DPTN','Logeo Exitoso'),(468,1,1,'22/02/2021 17:16:44','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(469,1,12,'22/02/2021 17:16:44','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(470,1,12,'22/02/2021 16:16:28','25.121.152.253','DESKTOP-CS0DPTN','Ingreso a Ver Reporte de Bitacora'),(471,1,1,'22/02/2021 16:17:11','25.121.152.253','DESKTOP-CS0DPTN','Logeo Exitoso'),(472,1,12,'22/02/2021 16:17:11','25.121.152.253','DESKTOP-CS0DPTN','Ingreso a Ver Reporte de Bitacora'),(473,1,1,'22/02/2021 17:23:40','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(474,1,12,'22/02/2021 17:23:40','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(475,1,1,'22/02/2021 17:25:52','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(476,1,12,'22/02/2021 17:25:52','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(477,1,1,'22/02/2021 17:38:51','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(478,1,12,'22/02/2021 17:38:51','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(479,1,1,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(480,1,304,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(481,1,305,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(482,1,307,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(483,1,305,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(484,1,1,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(485,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(486,1,2,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso A Mantenimiento Usuario'),(487,1,302,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Tipo Pasaporte'),(488,1,2,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware',' INSERT INTO login VALUES ( 7,  morataya,  5g2jpUc7tYd0Q0iop9+lfA==,  Julio Morataya,  1) '),(489,1,304,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(490,1,307,'22/02/2021 16:58:08','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(491,1,6,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(492,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(493,7,1,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(494,7,301,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Centros'),(495,7,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(496,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Verifico CUI'),(497,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(498,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Boleto No.3 VALIDO para 3'),(499,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# 123456789'),(500,1,310,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Imprimio pasaporte No.123456789'),(501,7,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(502,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Verifico CUI'),(503,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(504,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(505,1,308,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Verifico datos de Datos CUI# 987654321'),(506,1,310,'22/02/2021 18:39:07','25.120.255.155','MoratayaAlienware','Imprimio pasaporte No.987654321'),(507,1,1,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(508,1,301,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Centros'),(509,1,301,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(510,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Motivo de Gestion'),(511,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(512,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(513,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(514,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(515,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(516,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(517,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(518,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(519,1,303,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Formulario de ayuda'),(520,1,304,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(521,1,305,'22/02/2021 18:11:25','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(522,1,1,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(523,1,304,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(524,1,307,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(525,1,304,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(526,1,305,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(527,1,307,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(528,1,305,'22/02/2021 18:15:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(529,1,1,'22/02/2021 19:30:46','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(530,1,308,'22/02/2021 19:30:46','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(531,1,308,'22/02/2021 19:30:46','25.120.255.155','MoratayaAlienware','Verifico CUI'),(532,1,308,'22/02/2021 19:30:46','25.120.255.155','MoratayaAlienware','Verifico CUI'),(533,1,1,'22/02/2021 19:35:35','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(534,1,308,'22/02/2021 19:35:35','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(535,1,308,'22/02/2021 19:35:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(536,1,308,'22/02/2021 19:35:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(537,1,308,'22/02/2021 19:35:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(538,1,308,'22/02/2021 19:35:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(539,1,1,'22/02/2021 19:38:05','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(540,1,308,'22/02/2021 19:38:05','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(541,1,308,'22/02/2021 19:38:05','25.120.255.155','MoratayaAlienware','Verifico CUI'),(542,1,308,'22/02/2021 19:38:05','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(543,1,308,'22/02/2021 19:38:05','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(544,7,1,'22/02/2021 19:41:00','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(545,7,308,'22/02/2021 19:41:00','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(546,7,308,'22/02/2021 19:41:00','25.120.255.155','MoratayaAlienware','Verifico CUI'),(547,7,308,'22/02/2021 19:41:00','25.120.255.155','MoratayaAlienware','Verifico CUI'),(548,7,308,'22/02/2021 19:41:00','25.120.255.155','MoratayaAlienware','Verifico CUI'),(549,7,1,'22/02/2021 19:43:58','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(550,7,308,'22/02/2021 19:43:58','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(551,7,308,'22/02/2021 19:43:58','25.120.255.155','MoratayaAlienware','Verifico CUI'),(552,7,308,'22/02/2021 19:43:58','25.120.255.155','MoratayaAlienware','Verifico CUI'),(553,7,308,'22/02/2021 19:43:58','25.120.255.155','MoratayaAlienware','Verifico CUI'),(554,1,1,'22/02/2021 19:46:35','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(555,1,308,'22/02/2021 19:46:35','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(556,1,308,'22/02/2021 19:46:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(557,1,308,'22/02/2021 19:46:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(558,1,308,'22/02/2021 19:46:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(559,1,308,'22/02/2021 19:46:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(560,1,1,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(561,1,308,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(562,1,308,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(563,1,308,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(564,1,308,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(565,1,308,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(566,1,308,'22/02/2021 19:50:35','25.120.255.155','MoratayaAlienware','Verifico CUI'),(567,1,1,'22/02/2021 19:52:39','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(568,1,308,'22/02/2021 19:52:39','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(569,1,308,'22/02/2021 19:52:39','25.120.255.155','MoratayaAlienware','Verifico CUI'),(570,1,308,'22/02/2021 19:52:39','25.120.255.155','MoratayaAlienware','Verifico CUI'),(571,1,308,'22/02/2021 19:52:39','25.120.255.155','MoratayaAlienware','Verifico CUI'),(572,1,12,'22/02/2021 19:52:39','25.120.255.155','MoratayaAlienware','Ingreso a Ver Reporte de Bitacora'),(573,1,1,'22/02/2021 19:00:23','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(574,1,304,'22/02/2021 19:00:23','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(575,1,307,'22/02/2021 19:00:23','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(576,1,1,'22/02/2021 20:08:46','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(577,1,308,'22/02/2021 20:08:46','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(578,1,308,'22/02/2021 20:08:46','25.120.255.155','MoratayaAlienware','Verifico CUI'),(579,1,308,'22/02/2021 20:08:46','25.120.255.155','MoratayaAlienware','Verifico CUI'),(580,1,308,'22/02/2021 20:08:46','25.120.255.155','MoratayaAlienware','Verifico Boleto de ornato'),(581,1,308,'22/02/2021 20:08:46','25.120.255.155','MoratayaAlienware','Boleto No.1 VALIDO para 1'),(582,1,1,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(583,1,308,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(584,1,308,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Verifico CUI'),(585,1,308,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Salio de Verificacion De Datos.'),(586,1,304,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Citas'),(587,1,306,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Ingreso a Verificar Cita'),(588,1,307,'22/02/2021 20:12:30','25.120.255.155','MoratayaAlienware','Ingreso a Modificar Cita'),(589,1,1,'22/02/2021 19:49:27','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(590,1,12,'22/02/2021 19:49:27','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(591,1,1,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(592,1,308,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(593,1,308,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(594,1,308,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(595,1,308,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(596,1,308,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(597,1,310,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Imprimio pasaporte No.300594437'),(598,1,308,'22/02/2021 19:50:32','25.120.252.110','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(599,1,1,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(600,1,308,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(601,1,308,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(602,1,308,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(603,1,308,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(604,1,308,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(605,1,310,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Imprimio pasaporte No.300594437'),(606,1,302,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(607,1,301,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(608,1,303,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(609,1,302,'22/02/2021 20:24:13','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(610,1,1,'22/02/2021 20:54:15','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(611,1,301,'22/02/2021 20:54:15','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(612,1,301,'22/02/2021 20:54:15','192.168.0.17','DESKTOP-MQ0UNFV','Cancelar'),(613,1,301,'22/02/2021 20:54:15','192.168.0.17','DESKTOP-MQ0UNFV','Cancelar'),(614,1,301,'22/02/2021 20:54:15','192.168.0.17','DESKTOP-MQ0UNFV',' INSERT INTO tbl_centro VALUES ( 4,  Naranjo,  Condado el Naranjo,  1) '),(615,1,301,'22/02/2021 20:54:15','192.168.0.17','DESKTOP-MQ0UNFV','Cancelar'),(616,1,1,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(617,1,301,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(618,1,301,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV',' INSERT INTO tbl_centro VALUES ( 5,  Villa Nueva,  Linda Vista ,  1) '),(619,1,301,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','UPDATE tbl_centro SET   nombre_centro =  Villa Nueva,  direccion_centro =  Linda Vista Villa Nueva,  estado =  1  WHERE pk_id_centro = 5; '),(620,1,301,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Eliminacion de Datos'),(621,1,301,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','UPDATE tbl_centro SET estado=0 WHERE pk_id_centro= 5 '),(622,1,308,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(623,1,308,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(624,1,308,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(625,1,308,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(626,1,308,'22/02/2021 21:08:59','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(627,1,1,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(628,1,308,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(629,1,308,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(630,1,308,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(631,1,308,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(632,1,308,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(633,1,308,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(634,1,310,'23/02/2021 08:41:29','192.168.0.17','DESKTOP-MQ0UNFV','Imprimio pasaporte No.300594437'),(635,1,1,'23/02/2021 11:29:57','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(636,1,308,'23/02/2021 11:29:57','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(637,1,308,'23/02/2021 11:29:57','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(638,1,308,'23/02/2021 11:29:57','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(639,1,308,'23/02/2021 11:29:57','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(640,1,308,'23/02/2021 11:29:57','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(641,1,1,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(642,1,308,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(643,1,308,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(644,1,308,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(645,1,308,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(646,1,308,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(647,1,308,'23/02/2021 11:33:06','192.168.0.17','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(649,1,1,'23/02/2021 11:35:14','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(650,1,308,'23/02/2021 11:35:14','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(651,1,308,'23/02/2021 11:35:14','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(652,1,308,'23/02/2021 11:35:14','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(653,1,308,'23/02/2021 11:35:14','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(654,1,308,'23/02/2021 11:35:14','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(655,1,1,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(656,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(657,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(658,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(659,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(660,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(661,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(662,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(663,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(664,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(665,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(666,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(667,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(668,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(669,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(670,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(671,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 987654321'),(672,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(673,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 123456789'),(674,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(675,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(676,1,308,'23/02/2021 11:37:48','192.168.0.17','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(677,1,1,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Logeo Exitoso'),(678,1,308,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(679,1,308,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Verifico CUI'),(680,1,308,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(681,1,308,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(682,1,308,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(683,1,12,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(684,1,12,'23/02/2021 13:15:17','192.168.0.17','DESKTOP-MQ0UNFV','Ingreso a Ver Reporte de Bitacora'),(685,1,1,'23/02/2021 15:44:25','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(686,1,304,'23/02/2021 15:44:25','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Citas'),(687,1,305,'23/02/2021 15:44:25','25.120.255.155','MoratayaAlienware','Ingreso a Nuevo Cita'),(688,1,306,'23/02/2021 15:44:25','25.120.255.155','MoratayaAlienware','Ingreso a Verificar Cita'),(689,7,1,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(690,7,304,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Citas'),(691,7,307,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Ingreso a Modificar Cita'),(692,7,301,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Centros'),(693,7,302,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Tipo Pasaporte'),(694,7,303,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Motivo de Gestion'),(695,7,301,'23/02/2021 15:51:02','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Centros'),(696,1,302,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(697,1,1,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(698,1,2,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Mantenimiento Usuario'),(699,1,2,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC','Cancelar'),(700,1,2,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC',' INSERT INTO login VALUES ( 8,  gcoyoyz,  kVU41twDyttUL/SM7IO0vQ==,  Gabriel Coyoy,  1) '),(701,1,2,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC','Salir de la aplicacion'),(702,1,6,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Asignacion de Perfil y Aplicaciones'),(703,1,6,'23/02/2021 15:10:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Asignacion de Perfil y Aplicaciones'),(704,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(705,7,1,'23/02/2021 16:17:41','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(706,7,6,'23/02/2021 16:17:41','25.120.255.155','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(707,1,3,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Mantenimiento Aplicaciones'),(708,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(709,7,6,'23/02/2021 16:17:41','25.120.255.155','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(710,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(711,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(712,1,8,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ingresar A Mantenimiento Modulo'),(713,1,11,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Cambio de Contraseña'),(714,1,2,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de ingresar a Mantenimiento Usuario'),(715,1,1,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(716,1,1,'23/02/2021 16:20:14','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(717,1,304,'23/02/2021 16:20:14','25.120.255.155','MoratayaAlienware','Ingreso A Proceso Citas'),(718,1,302,'23/02/2021 16:20:14','25.120.255.155','MoratayaAlienware','Ingreso a Mantenimiento Tipo Pasaporte'),(719,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(720,1,4,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ingresar A Mantenimiento Modulo'),(721,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(722,1,8,'23/02/2021 16:20:14','25.120.255.155','MoratayaAlienware','Trato de Ingresar A Mantenimiento Modulo'),(723,1,2,'23/02/2021 16:20:14','25.120.255.155','MoratayaAlienware','Trato de ingresar a Mantenimiento Usuario'),(724,7,1,'23/02/2021 16:21:25','25.120.255.155','MoratayaAlienware','Logeo Exitoso'),(725,7,6,'23/02/2021 16:21:25','25.120.255.155','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(726,1,3,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Mantenimiento Aplicaciones'),(727,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(728,8,1,'23/02/2021 15:23:37','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(729,8,304,'23/02/2021 15:23:37','25.3.19.5','LAPTOP-NHHGIBVC','Trato de ingresar a Proceso Citas'),(730,8,6,'23/02/2021 15:23:37','25.3.19.5','LAPTOP-NHHGIBVC','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(731,1,6,'23/02/2021 13:15:17','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(732,8,1,'23/02/2021 15:25:03','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(733,8,6,'23/02/2021 15:25:03','25.3.19.5','LAPTOP-NHHGIBVC','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(734,8,304,'23/02/2021 15:25:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(735,8,307,'23/02/2021 15:25:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(736,8,305,'23/02/2021 15:25:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(737,8,306,'23/02/2021 15:25:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(738,8,1,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(739,8,301,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Centros'),(740,8,302,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Tipo Pasaporte'),(741,8,303,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Motivo de Gestion'),(742,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(743,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Verifico CUI'),(744,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Verifico CUI'),(745,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Verifico CUI'),(746,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Verifico CUI'),(747,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Verifico Boleto de ornato'),(748,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.1 VALIDO para 1'),(749,8,308,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Verifico datos de Datos CUI# 987654321'),(750,8,310,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Imprimio pasaporte No.987654321'),(751,8,2,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Mantenimiento Usuario'),(752,8,3,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Trato de Ingresar A Mantenimiento Aplicaciones'),(753,1,1,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(754,8,12,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Trato de Ver Reporte Bitacora'),(755,8,12,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Trato de Ver Reporte Bitacora'),(756,1,3,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Mantenimiento Aplicaciones'),(757,1,5,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Aplicaciones a Perfil'),(758,8,5,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Trato de Ingresar A Asignacion de Aplicaciones a perfil'),(759,1,3,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Consulta Perfiles'),(760,8,312,'23/02/2021 15:31:04','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Ver Reporte de Pasaportes'),(761,1,6,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Asignacion de Perfil y Aplicaciones'),(762,8,1,'23/02/2021 15:44:58','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(763,8,311,'23/02/2021 15:44:58','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Ver Reporte de Citas'),(764,8,1,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(765,8,304,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(766,8,305,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(767,8,305,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(768,8,304,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(769,8,305,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(770,8,305,'23/02/2021 15:50:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(771,8,1,'23/02/2021 15:59:41','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(772,8,304,'23/02/2021 15:59:41','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(773,8,306,'23/02/2021 15:59:41','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(774,8,1,'23/02/2021 16:03:33','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(775,8,304,'23/02/2021 16:03:33','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(776,8,306,'23/02/2021 16:03:33','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(777,1,304,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(778,1,306,'23/02/2021 15:43:22','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Verificar Cita'),(779,8,1,'23/02/2021 16:12:36','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(780,8,304,'23/02/2021 16:12:36','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(781,8,307,'23/02/2021 16:12:36','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(782,8,1,'23/02/2021 16:15:02','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(783,8,304,'23/02/2021 16:15:02','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(784,8,307,'23/02/2021 16:15:02','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(785,8,307,'23/02/2021 16:15:02','25.3.19.5','LAPTOP-NHHGIBVC','Cancelar'),(786,8,307,'23/02/2021 16:15:02','25.3.19.5','LAPTOP-NHHGIBVC','Cancelar'),(787,8,307,'23/02/2021 16:15:02','25.3.19.5','LAPTOP-NHHGIBVC','UPDATE tbl_cita SET   nombre_solicitante =  José,  apellido_solicitante =  Fernandez,  fk_numero_boleta =  789,  fk_id_centro =  3,  fecha_cita =  2021-02-25,  hora_cita =  15:00,  fk_id_motivo_cita =  3,  estado_cita =  1  WHERE pk_cita = 9; '),(788,1,1,'23/02/2021 16:20:50','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(789,1,304,'23/02/2021 16:20:50','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(790,1,306,'23/02/2021 16:20:50','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Verificar Cita'),(791,8,1,'23/02/2021 16:27:01','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(792,8,304,'23/02/2021 16:27:01','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(793,8,305,'23/02/2021 16:27:01','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(794,8,1,'23/02/2021 16:29:26','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(795,8,304,'23/02/2021 16:29:26','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(796,8,305,'23/02/2021 16:29:26','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(797,8,1,'23/02/2021 16:41:02','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(798,8,304,'23/02/2021 16:41:02','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(799,8,306,'23/02/2021 16:41:02','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(800,8,1,'23/02/2021 16:42:38','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(801,8,304,'23/02/2021 16:42:38','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(802,8,306,'23/02/2021 16:42:38','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(803,8,1,'23/02/2021 16:47:24','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(804,8,304,'23/02/2021 16:47:24','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(805,8,306,'23/02/2021 16:47:24','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(806,8,308,'23/02/2021 16:47:24','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.8 VALIDO para 8'),(807,8,308,'23/02/2021 16:47:24','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.9 VALIDO para 9'),(808,8,306,'23/02/2021 16:47:24','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(809,8,1,'23/02/2021 16:50:22','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(810,8,304,'23/02/2021 16:50:22','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(811,8,306,'23/02/2021 16:50:22','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(812,8,308,'23/02/2021 16:50:22','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.9 VALIDO para 9'),(813,8,306,'23/02/2021 16:50:22','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(815,8,1,'23/02/2021 16:52:44','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(816,8,304,'23/02/2021 16:52:44','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(817,8,306,'23/02/2021 16:52:44','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(818,8,308,'23/02/2021 16:52:44','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.9 VALIDO para 9'),(819,8,1,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(820,8,304,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(821,8,306,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(822,8,308,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.9 VALIDO para 9'),(823,8,308,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.8 VALIDO para 8'),(824,8,308,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.7 VALIDO para 7'),(825,8,308,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.2 VALIDO para 2'),(826,8,308,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.4 VALIDO para 4'),(827,8,307,'23/02/2021 16:54:46','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(828,8,1,'23/02/2021 17:49:33','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(829,8,304,'23/02/2021 17:49:33','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(830,8,305,'23/02/2021 17:49:33','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(831,8,1,'23/02/2021 17:53:24','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(832,8,304,'23/02/2021 17:53:24','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(833,8,305,'23/02/2021 17:53:24','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(834,8,1,'23/02/2021 17:59:21','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(835,8,304,'23/02/2021 17:59:21','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(836,8,305,'23/02/2021 17:59:21','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(837,8,1,'23/02/2021 18:07:51','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(838,8,304,'23/02/2021 18:07:51','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(839,8,305,'23/02/2021 18:07:51','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(840,8,1,'23/02/2021 18:13:03','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(841,8,304,'23/02/2021 18:13:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(842,8,305,'23/02/2021 18:13:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(843,8,305,'23/02/2021 18:13:03','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(844,8,1,'23/02/2021 18:20:29','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(845,8,304,'23/02/2021 18:20:29','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(846,8,305,'23/02/2021 18:20:29','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(847,8,1,'23/02/2021 18:22:51','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(848,8,304,'23/02/2021 18:22:51','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(849,8,305,'23/02/2021 18:22:51','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(850,8,1,'23/02/2021 18:35:57','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(851,8,304,'23/02/2021 18:35:57','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(852,8,305,'23/02/2021 18:35:57','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(853,8,304,'23/02/2021 18:35:57','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(854,8,306,'23/02/2021 18:35:57','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Verificar Cita'),(855,8,308,'23/02/2021 18:35:57','25.3.19.5','LAPTOP-NHHGIBVC','Boleto No.11 VALIDO para 11'),(856,8,1,'23/02/2021 18:46:30','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(857,8,304,'23/02/2021 18:46:30','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(858,8,305,'23/02/2021 18:46:30','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(859,8,1,'23/02/2021 18:53:09','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(860,8,304,'23/02/2021 18:53:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(861,8,305,'23/02/2021 18:53:09','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(862,8,1,'23/02/2021 18:55:49','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(863,8,304,'23/02/2021 18:55:49','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(864,8,305,'23/02/2021 18:55:49','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(865,8,1,'23/02/2021 18:59:20','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(866,8,304,'23/02/2021 18:59:20','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(867,8,305,'23/02/2021 18:59:20','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(868,8,1,'23/02/2021 19:02:50','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(869,8,304,'23/02/2021 19:02:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(870,8,305,'23/02/2021 19:02:50','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(871,8,1,'23/02/2021 19:06:36','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(872,8,304,'23/02/2021 19:06:36','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(873,8,305,'23/02/2021 19:06:36','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(874,8,1,'23/02/2021 19:25:38','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(875,8,304,'23/02/2021 19:25:38','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(876,8,305,'23/02/2021 19:25:38','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(877,8,304,'23/02/2021 19:25:38','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(878,8,305,'23/02/2021 19:25:38','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(879,8,1,'23/02/2021 19:32:13','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(880,8,304,'23/02/2021 19:32:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(881,8,305,'23/02/2021 19:32:13','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(882,8,1,'23/02/2021 19:51:47','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(883,8,304,'23/02/2021 19:51:47','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(884,8,305,'23/02/2021 19:51:47','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(885,8,1,'23/02/2021 19:56:27','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(886,8,304,'23/02/2021 19:56:27','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(887,8,307,'23/02/2021 19:56:27','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(888,8,1,'23/02/2021 20:26:05','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(889,8,304,'23/02/2021 20:26:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(890,8,305,'23/02/2021 20:26:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(891,8,312,'23/02/2021 20:26:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Ver Reporte de Pasaportes'),(892,8,1,'23/02/2021 20:42:47','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(893,8,302,'23/02/2021 20:42:47','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Mantenimiento Tipo Pasaporte'),(894,8,304,'23/02/2021 20:42:47','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(895,8,305,'23/02/2021 20:42:47','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(896,8,304,'23/02/2021 20:42:47','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(897,8,1,'23/02/2021 21:03:05','25.3.19.5','LAPTOP-NHHGIBVC','Logeo Exitoso'),(898,8,304,'23/02/2021 21:03:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso A Proceso Citas'),(899,8,307,'23/02/2021 21:03:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Modificar Cita'),(900,8,305,'23/02/2021 21:03:05','25.3.19.5','LAPTOP-NHHGIBVC','Ingreso a Nuevo Cita'),(901,1,1,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(902,1,301,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(903,1,301,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(904,1,302,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(905,1,302,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(906,1,303,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(907,1,303,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(908,1,304,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(909,1,305,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Nuevo Cita'),(910,1,306,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Verificar Cita'),(911,1,307,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(912,1,307,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(913,1,308,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(914,1,308,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(915,1,308,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(916,1,308,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(917,1,308,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437'),(918,1,308,'23/02/2021 21:53:45','25.120.252.110','DESKTOP-MQ0UNFV','Salio de Verificacion De Datos.'),(919,1,1,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(920,1,301,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(921,1,301,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(922,1,301,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(923,1,302,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(924,1,302,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(925,1,302,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(926,1,302,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(927,1,302,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(928,1,303,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(929,1,303,'23/02/2021 21:58:45','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(930,1,1,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Logeo Exitoso'),(931,1,301,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Centros'),(932,1,301,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(933,1,302,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Tipo Pasaporte'),(934,1,302,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(935,1,303,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Mantenimiento Motivo de Gestion'),(936,1,303,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(937,1,304,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Citas'),(938,1,305,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Nuevo Cita'),(939,1,306,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Verificar Cita'),(940,1,307,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso a Modificar Cita'),(941,1,307,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Formulario de ayuda'),(942,1,308,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)'),(943,1,308,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Verifico CUI'),(944,1,308,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Verifico Boleto de ornato'),(945,1,308,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Boleto No.1 VALIDO para 1'),(946,1,308,'23/02/2021 22:20:34','25.120.252.110','DESKTOP-MQ0UNFV','Verifico datos de Datos CUI# 300594437');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_bitacora`
--

DROP TABLE IF EXISTS `detalle_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_bitacora` (
  `pk_id_detalle_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_idbitacora_detalle_bitacora` int DEFAULT NULL,
  `querryantigua_detalle_bitacora` varchar(50) DEFAULT NULL,
  `querrynueva_detalle_bitacora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_detalle_bitacora`),
  KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detalle_bitacora`),
  CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detalle_bitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_bitacora`
--

LOCK TABLES `detalle_bitacora` WRITE;
/*!40000 ALTER TABLE `detalle_bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `pk_id_login` int NOT NULL AUTO_INCREMENT,
  `usuario_login` varchar(45) DEFAULT NULL,
  `contraseña_login` varchar(45) DEFAULT NULL,
  `nombreCompleto_login` varchar(100) DEFAULT NULL,
  `estado_login` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'sistema','bi0PL96rbxVRPKJQsLJJAg==','Usuario de prueba',1),(2,'bjsican','0FOYy5u5h0djKjzCYqfvkg==','Billy Sican',1),(3,'bmaza','xTfsC3/XR/CVyDvNr1Fs+g==','Bryan Mazariegos',1),(4,'jsican','jsican','Jeshua Sican',0),(5,'jmorataya','123','Julio Morataya',0),(6,'admin','T+4Ai6O3CR0kJYxCgXy2jA==','Administrador',1),(7,'morataya','5g2jpUc7tYd0Q0iop9+lfA==','Julio Morataya',1),(8,'gcoyoyz','kVU41twDyttUL/SM7IO0vQ==','Gabriel Coyoy',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `pk_id_modulo` int NOT NULL AUTO_INCREMENT,
  `nombre_modulo` varchar(30) NOT NULL,
  `descripcion_modulo` varchar(50) NOT NULL,
  `estado_modulo` int NOT NULL,
  PRIMARY KEY (`pk_id_modulo`),
  KEY `pk_id_modulo` (`pk_id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Seguridad','Aplicaciones de seguridad',1),(2,'Consultas','Consultas Inteligentes',1),(3,'Reporteador','Aplicaciones de Reporteador',1),(4,'SGP','Sistema de Gestion de Citas y Pasaporte',1);
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `pk_id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) DEFAULT NULL,
  `descripcion_perfil` varchar(100) DEFAULT NULL,
  `estado_perfil` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Admin','Administracion del programa',1),(2,'Sistema','Administrador del sistema',1),(3,'Digitador','Digitador para Cuentas',0),(4,'Consultor','Unicamente consultas ',0),(5,'Reportes','Ingreso y consultas de reportes',1),(6,'Pruebas','pruebas',0),(7,'Administrador','Administrador del MRP',0),(8,'Digitador Pasaporte','Creador de Citas y Pasaportes',1);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_usuario`
--

DROP TABLE IF EXISTS `perfil_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_usuario` (
  `pk_id_perfil_usuario` int NOT NULL AUTO_INCREMENT,
  `fk_idusuario_perfil_usuario` int DEFAULT NULL,
  `fk_idperfil_perfil_usuario` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_perfil_usuario`),
  KEY `fk_perfil_usuario_login` (`fk_idusuario_perfil_usuario`),
  KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfil_usuario`),
  CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfil_usuario`) REFERENCES `login` (`pk_id_login`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfil_usuario`) REFERENCES `perfil` (`pk_id_perfil`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_usuario`
--

LOCK TABLES `perfil_usuario` WRITE;
/*!40000 ALTER TABLE `perfil_usuario` DISABLE KEYS */;
INSERT INTO `perfil_usuario` VALUES (1,1,1),(2,3,3),(4,4,1),(5,5,5),(6,7,2),(7,7,1),(8,7,5),(9,1,2),(10,7,3),(11,1,5),(12,1,8),(13,8,8);
/*!40000 ALTER TABLE `perfil_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `pk_id_permiso` int NOT NULL AUTO_INCREMENT,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,1,1,1,1,1),(2,1,1,1,1,1),(3,1,1,1,0,0),(4,1,1,1,1,1),(5,1,1,1,1,1),(6,1,1,1,1,1),(7,1,1,1,1,1),(8,1,0,1,0,0),(9,1,1,0,0,0),(10,1,1,0,0,0),(11,1,1,1,1,1),(12,0,0,0,1,0),(13,0,0,0,1,0),(14,0,0,0,0,0),(15,1,0,0,1,0),(16,0,0,0,0,0),(17,1,1,0,0,0),(18,1,1,1,1,1),(19,0,1,0,0,0),(20,1,1,0,0,0),(21,1,1,1,0,0),(22,1,1,1,1,1),(23,1,1,1,1,1),(24,1,1,1,1,1),(25,1,1,1,1,1),(26,1,1,1,1,1),(27,0,0,0,0,0),(28,0,0,0,0,0),(29,0,0,0,0,0),(30,0,0,0,0,0),(31,1,1,1,1,1),(32,1,1,1,1,1),(33,1,1,1,1,1),(34,1,1,1,1,1),(35,1,1,1,1,1),(36,1,1,1,1,1),(37,1,1,1,1,1),(38,1,1,1,1,1),(39,1,1,1,1,1),(40,1,1,1,1,1),(41,1,1,1,1,1),(42,1,1,1,1,1),(43,1,1,1,1,1),(44,0,0,0,0,0),(45,1,1,1,1,1),(46,1,1,1,1,1),(47,0,0,0,0,0),(48,0,0,0,0,0),(49,0,0,0,0,0),(50,0,0,0,0,0),(51,1,1,1,1,1),(52,1,1,1,1,1),(53,1,1,1,1,1),(54,1,1,1,1,1),(55,0,0,0,0,0),(56,0,0,0,0,0),(57,0,0,0,0,0),(58,0,0,0,0,0),(59,0,0,0,0,0),(60,0,0,0,0,0),(61,0,0,0,0,0),(62,0,0,0,0,0),(63,0,0,0,0,0),(64,0,0,0,0,0),(65,0,0,0,0,0),(66,0,0,0,0,0),(67,0,0,0,0,0),(68,0,0,0,0,0),(69,0,0,0,0,0),(70,0,0,0,0,0),(71,0,0,0,0,0),(72,0,0,0,0,0),(73,0,0,0,0,0),(74,0,0,0,0,0),(75,0,0,0,0,0),(76,0,0,0,0,0),(77,0,0,0,0,0),(78,0,0,0,0,0),(79,0,0,0,0,0),(80,0,0,0,0,0),(81,0,0,0,0,0),(82,0,0,0,0,0),(83,0,0,0,0,0),(84,0,0,0,0,0),(85,0,0,0,0,0);
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_banco`
--

DROP TABLE IF EXISTS `tbl_banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_banco` (
  `pk_numero_boleta` int NOT NULL,
  `estado_boleta` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_numero_boleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banco`
--

LOCK TABLES `tbl_banco` WRITE;
/*!40000 ALTER TABLE `tbl_banco` DISABLE KEYS */;
INSERT INTO `tbl_banco` VALUES (123,1),(456,1),(741,0),(789,1),(852,0),(987,1);
/*!40000 ALTER TABLE `tbl_banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_centro`
--

DROP TABLE IF EXISTS `tbl_centro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_centro` (
  `pk_id_centro` int NOT NULL,
  `nombre_centro` varchar(50) DEFAULT NULL,
  `direccion_centro` varchar(50) DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_centro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_centro`
--

LOCK TABLES `tbl_centro` WRITE;
/*!40000 ALTER TABLE `tbl_centro` DISABLE KEYS */;
INSERT INTO `tbl_centro` VALUES (1,'Zona 1','Calle A',1),(2,'Petapa','Calle P',1),(3,'Bolivar','Calle B',1),(4,'Naranjo','Condado el Naranjo',1),(5,'Villa Nueva','Linda Vista Villa Nueva',0);
/*!40000 ALTER TABLE `tbl_centro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cita`
--

DROP TABLE IF EXISTS `tbl_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cita` (
  `pk_cita` int NOT NULL AUTO_INCREMENT,
  `nombre_solicitante` varchar(50) DEFAULT NULL,
  `apellido_solicitante` varchar(50) DEFAULT NULL,
  `fk_numero_boleta` int DEFAULT NULL,
  `fk_id_centro` int DEFAULT NULL,
  `fecha_cita` varchar(20) DEFAULT NULL,
  `hora_cita` varchar(15) DEFAULT NULL,
  `fk_id_motivo_cita` int DEFAULT NULL,
  `estado_cita` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_cita`),
  KEY `fk_id_centro` (`fk_id_centro`),
  KEY `fk_id_motivo_cita` (`fk_id_motivo_cita`),
  CONSTRAINT `tbl_cita_ibfk_1` FOREIGN KEY (`fk_id_centro`) REFERENCES `tbl_centro` (`pk_id_centro`),
  CONSTRAINT `tbl_cita_ibfk_2` FOREIGN KEY (`fk_id_motivo_cita`) REFERENCES `tbl_motivo` (`pk_id_motivo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cita`
--

LOCK TABLES `tbl_cita` WRITE;
/*!40000 ALTER TABLE `tbl_cita` DISABLE KEYS */;
INSERT INTO `tbl_cita` VALUES (1,'nombre1','apellido1',123,1,'2000','08:00:00',1,1),(2,'nombre1','apellido1',123,3,'2000','1',1,1),(3,'nombre1','apellido1',123,1,'2000','08:00:00',1,1),(4,'billy','sican',123,1,'2021-02-15','6:00',1,1),(5,'Brian','Santizo',123,2,'2021-02-15','7',1,1),(6,'Brian','Santizo',123,2,'2021-02-18','1',1,1),(7,'Julio','Morataya',123,3,'2021-02-23','18;30',1,1),(8,'Gabriel','Coyoy',123,1,'2021-02-24','8:00',2,1),(9,'José','Fernandez',789,3,'2021-02-25','15:00',3,1),(10,'Saul','Chavez',123,1,'2021-02-24','10:00',2,1),(11,'gresdfa','fasdf',123,1,'2021-02-24','10:00',1,1),(12,'Brian','Santizo',123,2,'','10:00',1,1),(13,'Brian','Santizo',123,2,'2021-02-24','10:00',1,1),(14,'Hugo','Coyoy',123,3,'2021-02-24','10:00',2,1),(15,'fdsafwe','cbad',123,2,'2021-02-24','10:00',1,1),(16,'sfgadsg','adgsdgh',789,1,'2021-02-24','8:00',2,1),(17,'aewras','bzbzdfgz',789,2,'2021-02-24','14:00',3,1),(18,'aewrawfds','bsdfbdcs',789,4,'2021-02-24','12:00',1,1),(19,'resfs','qwesaf',789,1,'2021-02-24','10:00',1,1);
/*!40000 ALTER TABLE `tbl_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_motivo`
--

DROP TABLE IF EXISTS `tbl_motivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_motivo` (
  `pk_id_motivo` int NOT NULL AUTO_INCREMENT,
  `motivo` varchar(50) DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_motivo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_motivo`
--

LOCK TABLES `tbl_motivo` WRITE;
/*!40000 ALTER TABLE `tbl_motivo` DISABLE KEYS */;
INSERT INTO `tbl_motivo` VALUES (1,'Renovacion',1),(2,'Nuevo Pasaporte',1),(3,'Reposicion de pasaporte',1),(4,'Tramite Pasaporte Infantil',1);
/*!40000 ALTER TABLE `tbl_motivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_municipalidad`
--

DROP TABLE IF EXISTS `tbl_municipalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_municipalidad` (
  `pk_numero_boleto` int NOT NULL,
  `estado_boleto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_numero_boleto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_municipalidad`
--

LOCK TABLES `tbl_municipalidad` WRITE;
/*!40000 ALTER TABLE `tbl_municipalidad` DISABLE KEYS */;
INSERT INTO `tbl_municipalidad` VALUES (1,1),(2,1),(3,1),(4,1),(5,0),(6,0),(7,1),(8,1),(9,0);
/*!40000 ALTER TABLE `tbl_municipalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pasaporte`
--

DROP TABLE IF EXISTS `tbl_pasaporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pasaporte` (
  `pk_id_pasaporte` int NOT NULL,
  `fk_id_tipo_pasaporte` int DEFAULT NULL,
  `fk_id_usuario_pasaporte` int DEFAULT NULL,
  `fecha_emision` varchar(50) DEFAULT NULL,
  `fecha_vencimiento` varchar(50) DEFAULT NULL,
  `numero_libreta` int DEFAULT NULL,
  `link_foto` varchar(100) DEFAULT NULL,
  `link_cod_barras` varchar(100) DEFAULT NULL,
  `link_cod_ocr` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_pasaporte`),
  KEY `fk_id_tipo_pasaporte` (`fk_id_tipo_pasaporte`),
  KEY `fk_id_usuario_pasaporte` (`fk_id_usuario_pasaporte`),
  CONSTRAINT `tbl_pasaporte_ibfk_1` FOREIGN KEY (`fk_id_tipo_pasaporte`) REFERENCES `tbl_tipo_pasaporte` (`pk_id_tipo_pasaporte`),
  CONSTRAINT `tbl_pasaporte_ibfk_2` FOREIGN KEY (`fk_id_usuario_pasaporte`) REFERENCES `tbl_usuario_pasaporte` (`pk_id_usuario_pasaporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pasaporte`
--

LOCK TABLES `tbl_pasaporte` WRITE;
/*!40000 ALTER TABLE `tbl_pasaporte` DISABLE KEYS */;
INSERT INTO `tbl_pasaporte` VALUES (123456789,2,123456789,'2021-03-03','2025-02-22',123,'D:ImágenesCarátula Unidos Permanecemos..jpg','D:ImágenesCarátula Unidos Permanecemos..jpg','D:ImágenesCarátula Unidos Permanecemos..jpg',1),(987654321,1,987654321,'2021-02-23','2021-03-30',123,'C:UsersaleczDesktopdescarga.jpg','C:UsersaleczDesktopdescarga.jpg','C:UsersaleczDesktopdescarga.jpg',1);
/*!40000 ALTER TABLE `tbl_pasaporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_persona_cita`
--

DROP TABLE IF EXISTS `tbl_persona_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_persona_cita` (
  `pk_id_persona_cita` int NOT NULL AUTO_INCREMENT,
  `fk_id_usuario_pasaporte` int DEFAULT NULL,
  `fk_id_cita` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_persona_cita`),
  KEY `fk_id_usuario_pasaporte` (`fk_id_usuario_pasaporte`),
  KEY `fk_id_cita` (`fk_id_cita`),
  CONSTRAINT `tbl_persona_cita_ibfk_1` FOREIGN KEY (`fk_id_usuario_pasaporte`) REFERENCES `tbl_usuario_pasaporte` (`pk_id_usuario_pasaporte`),
  CONSTRAINT `tbl_persona_cita_ibfk_2` FOREIGN KEY (`fk_id_cita`) REFERENCES `tbl_cita` (`pk_cita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_persona_cita`
--

LOCK TABLES `tbl_persona_cita` WRITE;
/*!40000 ALTER TABLE `tbl_persona_cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_persona_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_renap`
--

DROP TABLE IF EXISTS `tbl_renap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_renap` (
  `pk_cui` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `fecha_nacimiento` varchar(11) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `dpi_padre` int DEFAULT NULL,
  `nombre_padre` varchar(50) DEFAULT NULL,
  `apellido_padre` varchar(50) DEFAULT NULL,
  `dpi_madre` int DEFAULT NULL,
  `nombre_madre` varchar(50) DEFAULT NULL,
  `apellido_madre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_cui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_renap`
--

LOCK TABLES `tbl_renap` WRITE;
/*!40000 ALTER TABLE `tbl_renap` DISABLE KEYS */;
INSERT INTO `tbl_renap` VALUES (300594437,'Billy Jeshua','Sican Matias','H','02/03/1999','Soltero','Guatemala',200594437,'Rodolfo Leonardo','Sican Rojas',100594437,'Elvia Elizabeth','Matias Thomas');
/*!40000 ALTER TABLE `tbl_renap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_pasaporte`
--

DROP TABLE IF EXISTS `tbl_tipo_pasaporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_pasaporte` (
  `pk_id_tipo_pasaporte` int NOT NULL,
  `nombre_pasaporte` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_pasaporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_pasaporte`
--

LOCK TABLES `tbl_tipo_pasaporte` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_pasaporte` DISABLE KEYS */;
INSERT INTO `tbl_tipo_pasaporte` VALUES (1,'Ordinario',1),(2,'Oficial',1),(3,'Especial',1);
/*!40000 ALTER TABLE `tbl_tipo_pasaporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_pasaporte`
--

DROP TABLE IF EXISTS `tbl_usuario_pasaporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_pasaporte` (
  `pk_id_usuario_pasaporte` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `fecha_nacimiento` varchar(11) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `dpi_padre` int DEFAULT NULL,
  `nombre_padre` varchar(50) DEFAULT NULL,
  `apellido_padre` varchar(50) DEFAULT NULL,
  `dpi_madre` int DEFAULT NULL,
  `nombre_madre` varchar(50) DEFAULT NULL,
  `apellido_madre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_usuario_pasaporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_pasaporte`
--

LOCK TABLES `tbl_usuario_pasaporte` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_pasaporte` DISABLE KEYS */;
INSERT INTO `tbl_usuario_pasaporte` VALUES (123456789,'nombre1','apellido1','M','1990-10-10','Casado','Guatemalteca',987654321,'padre1','apellidopadre1',963852741,'madre1','apellidomadre1'),(300594437,'Billy','Sican','H','1999-03-02','Soltero','Guatemalteca',987456123,'Rodolfo','Sican',874569123,'Elvia ','Matias'),(987654321,'Zeus','Morataya','H','2017-11-05','Soltero','Guatemalteca',753951741,'Julio','Morataya',951753123,'Fatima','Jovel');
/*!40000 ALTER TABLE `tbl_usuario_pasaporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_migracionasc'
--

--
-- Dumping routines for database 'db_migracionasc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 22:22:48
