-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ventas
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_c` varchar(60) NOT NULL,
  `apellido1` varchar(60) NOT NULL,
  `apellido2` varchar(60) DEFAULT NULL,
  `ciudad` varchar(60) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tlf_c` int DEFAULT NULL,
  `provincia` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `my_restriccion` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Aarón','Rivero','Gómez','Almería','aaronrivero@gmail.com',922531020,NULL),(2,'Adela','Salas','Díaz','Granada','adelasalasdiaz@yahoo.com',922584700,NULL),(3,'Adolfo','Rubio','Flores','Sevilla','adolfito@gmail.com',NULL,NULL),(4,'Adrián','Suárez',NULL,'Jaén','adrisuarez@yahoo.es',928526300,NULL),(5,'Marcos','Loyola','Méndez','Tenerife','marcosloyo@cipcampus.com',92822200,NULL),(6,'María','Santana','Moreno','Las palmas',NULL,NULL,NULL),(7,'Pilar','Ruiz',NULL,'Las palmas',NULL,9227853,NULL),(8,'Pepe','Ruiz','Santana','Tenerife','pepe@hotmail.com',NULL,NULL),(9,'Guillermo','López','Gómez','Granada','guille@hotmail.com',92222225,NULL),(10,'Daniel','Santana','Loyola','Sevilla','danielsantana@gmail.com',9282125,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 19:40:17
