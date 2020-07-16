-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: optica
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `nom` varchar(64) DEFAULT NULL,
  `adreça` varchar(64) DEFAULT NULL,
  `telefon` int(9) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `data_registre` date DEFAULT NULL,
  `recomanacio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleat`
--

DROP TABLE IF EXISTS `empleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleat` (
  `idempleat` int(16) NOT NULL AUTO_INCREMENT,
  `nom` varchar(12) DEFAULT NULL,
  `cognoms` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idempleat`),
  CONSTRAINT `empleat_ibfk_1` FOREIGN KEY (`idempleat`) REFERENCES `ulleres` (`idulleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proveidor`
--

DROP TABLE IF EXISTS `proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveidor` (
  `idproveidor` int(16) NOT NULL AUTO_INCREMENT,
  `carrer` varchar(64) DEFAULT NULL,
  `numero` int(4) DEFAULT NULL,
  `pis` int(2) DEFAULT NULL,
  `porta` int(2) DEFAULT NULL,
  `ciutat` varchar(64) DEFAULT NULL,
  `codi_postal` int(8) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `telefon` int(10) DEFAULT NULL,
  `fax` int(10) DEFAULT NULL,
  `nif` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idproveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `idulleres` int(16) NOT NULL AUTO_INCREMENT,
  `marca` varchar(64) DEFAULT NULL,
  `graduacio_vidre_izq` varchar(3) DEFAULT NULL,
  `graduacio_vidre_dere` varchar(3) DEFAULT NULL,
  `tipus_montura` varchar(15) DEFAULT NULL,
  `color_montura` varchar(10) DEFAULT NULL,
  `color_vidre_izq` varchar(10) DEFAULT NULL,
  `color_vidre_dere` varchar(10) DEFAULT NULL,
  `preu` float DEFAULT NULL,
  PRIMARY KEY (`idulleres`),
  CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`idulleres`) REFERENCES `proveidor` (`idproveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 16:58:59
