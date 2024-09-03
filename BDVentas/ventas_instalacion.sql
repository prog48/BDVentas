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
-- Table structure for table `instalacion`
--

DROP TABLE IF EXISTS `instalacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instalacion` (
  `idINSTALACION` int NOT NULL,
  `INSTALADORES_idINSTALADOR` int NOT NULL,
  `COMPRA(COCINAS_has_CLIENTE)_idCOMPRA` int NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` enum('PENDIENTE','EN PROCESO','FINALIZADO','NO ASIGNADO') NOT NULL,
  `FECHAINSTALACION/ENTREGA` date DEFAULT NULL,
  `DIRECCION` text NOT NULL,
  `HORARIO` enum('MAÑANA','TARDE') NOT NULL,
  PRIMARY KEY (`idINSTALACION`),
  KEY `fk_INSTALADORES_has_COMPRA(COCINAS_has_CLIENTE)_COMPRA(COCI_idx` (`COMPRA(COCINAS_has_CLIENTE)_idCOMPRA`),
  KEY `fk_INSTALADORES_has_COMPRA(COCINAS_has_CLIENTE)_INSTALADORE_idx` (`INSTALADORES_idINSTALADOR`),
  CONSTRAINT `fk_INSTALADORES_has_COMPRA(COCINAS_has_CLIENTE)_COMPRA(COCINA1` FOREIGN KEY (`COMPRA(COCINAS_has_CLIENTE)_idCOMPRA`) REFERENCES `compra(cocinas_has_cliente)` (`idCOMPRA`),
  CONSTRAINT `fk_INSTALADORES_has_COMPRA(COCINAS_has_CLIENTE)_INSTALADORES1` FOREIGN KEY (`INSTALADORES_idINSTALADOR`) REFERENCES `instaladores` (`idINSTALADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instalacion`
--

LOCK TABLES `instalacion` WRITE;
/*!40000 ALTER TABLE `instalacion` DISABLE KEYS */;
INSERT INTO `instalacion` VALUES (1,1,1,'2024-07-02','PENDIENTE','2024-07-05','Calle Lope de Vega nº 3 Arona','MAÑANA'),(2,2,1,'2024-07-02','PENDIENTE','2024-07-05','Calle Roberto verino Nº 7 santa Cruz de Tenerife','MAÑANA'),(3,0,3,'2024-07-09','NO ASIGNADO',NULL,'Calle Teide, edificio Nieve Nº 8 S/C','TARDE');
/*!40000 ALTER TABLE `instalacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 19:40:16
