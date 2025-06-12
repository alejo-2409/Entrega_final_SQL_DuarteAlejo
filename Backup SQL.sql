-- Backup

-- MySQL dump 10.13  Distrib 8.4.5, for Win64 (x86_64)
--
-- Host: localhost    Database: Creditos
-- ------------------------------------------------------
-- Server version       8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auditoria_cobros_dia`
--

DROP TABLE IF EXISTS `auditoria_cobros_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_cobros_dia` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_cobro` int DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_cobros_dia`
--

LOCK TABLES `auditoria_cobros_dia` WRITE;
/*!40000 ALTER TABLE `auditoria_cobros_dia` DISABLE KEYS */;
INSERT INTO `auditoria_cobros_dia` VALUES (1,1,'2025-05-01'),(2,2,'2025-05-02'),(3,3,'2025-05-03'),(4,4,'2025-05-01'),(5,5,'2025-05-04'),(6,6,'2025-05-05'),(7,7,'2025-05-06'),(8,8,'2025-05-07'),(9,9,'2025-05-03'),(10,10,'2025-05-08'),(11,11,'2025-05-09'),(12,12,'2025-05-10'),(13,13,'2025-05-11');
/*!40000 ALTER TABLE `auditoria_cobros_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_creditos_otorgardos`
--

DROP TABLE IF EXISTS `auditoria_creditos_otorgardos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_creditos_otorgardos` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_credito` int DEFAULT NULL,
  `monto` int DEFAULT NULL,
  `fecha_otorgamiento` date DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_creditos_otorgardos`
--

LOCK TABLES `auditoria_creditos_otorgardos` WRITE;
/*!40000 ALTER TABLE `auditoria_creditos_otorgardos` DISABLE KEYS */;
INSERT INTO `auditoria_creditos_otorgardos` VALUES (1,1,10000,'2025-03-15',1,'2025-06-12 00:54:07'),(2,2,50000,'2025-02-20',2,'2025-06-12 00:54:07'),(3,3,25000,'2025-03-01',3,'2025-06-12 00:54:07'),(4,4,75000,'2025-01-10',4,'2025-06-12 00:54:07'),(5,5,15000,'2025-03-25',5,'2025-06-12 00:54:07'),(6,6,30000,'2025-02-10',6,'2025-06-12 00:54:07'),(7,7,60000,'2025-01-25',7,'2025-06-12 00:54:07'),(8,8,20000,'2025-03-05',8,'2025-06-12 00:54:07'),(9,9,40000,'2025-02-15',9,'2025-06-12 00:54:07'),(10,10,80000,'2025-01-05',10,'2025-06-12 00:54:07'),(11,11,12000,'2025-03-20',11,'2025-06-12 00:54:08'),(12,12,35000,'2025-02-05',12,'2025-06-12 00:54:08'),(13,13,55000,'2025-01-20',13,'2025-06-12 00:54:08'),(14,14,18000,'2025-03-10',14,'2025-06-12 00:54:08'),(15,15,45000,'2025-02-01',15,'2025-06-12 00:54:08');
/*!40000 ALTER TABLE `auditoria_creditos_otorgardos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campa├▒a_cobranzas`
--

DROP TABLE IF EXISTS `campa├▒a_cobranzas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campa├▒a_cobranzas` (
  `id_campa├▒a` int NOT NULL AUTO_INCREMENT,
  `nombre_campa├▒a` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_campa├▒a`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campa├▒a_cobranzas`
--

LOCK TABLES `campa├▒a_cobranzas` WRITE;
/*!40000 ALTER TABLE `campa├▒a_cobranzas` DISABLE KEYS */;
INSERT INTO `campa├▒a_cobranzas` VALUES (1,'Campa├▒a ticket alto','2025-03-01','2025-03-31','Campa├▒a intensiva de recuperaci├│n de deudas de ticket alto.'),(2,'Campa├▒a Mora tard├¡a','2025-04-01','2025-04-30','Campa├▒a para mora mayor a 90 d├¡as.'),(3,'Plan Cliente Frecuente','2025-05-01','2025-05-15','Ofrece planes de pago especiales a clientes con m├║ltiples cr├®ditos en mora.'),(4,'Campa├▒a aumento de recupero','2025-06-01','2025-06-15','Aumento de recupero.');
/*!40000 ALTER TABLE `campa├▒a_cobranzas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` int NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Sof├¡a','Mart├¡nez',25698741,'1155551234','sofia.martinez@email.com',30),(2,'Juan','P├®rez',30123456,'1166667890','juan.perez@email.com',45),(3,'Isabella','Garc├¡a',38765432,'1177772345','isabella.garcia@email.com',22),(4,'Mateo','L├│pez',28901234,'1188888901','mateo.lopez@email.com',50),(5,'Valentina','Rodr├¡guez',42345678,'1199993456','valentina.rodriguez@email.com',28),(6,'Benjam├¡n','D├¡az',33456789,'1144445678','benjamin.diaz@email.com',38),(7,'Emma','Fern├índez',40567890,'1133339012','emma.fernandez@email.com',25),(8,'Sebasti├ín','G├│mez',29678901,'1122224567','sebastian.gomez@email.com',42),(9,'Martina','Ruiz',36789012,'1111118901','martina.ruiz@email.com',31),(10,'Nicol├ís','Torres',45890123,'1100003456','nicolas.torres@email.com',27),(11,'Luc├¡a','Flores',31901234,'1154321098','lucia.flores@email.com',48),(12,'Gabriel','Vargas',27012345,'1165432109','gabriel.vargas@email.com',35),(13,'Camila','Jim├®nez',39123456,'1176543210','camila.jimenez@email.com',29),(14,'Alejandro','Castro',43234567,'1187654321','alejandro.castro@email.com',41),(15,'Antonella','Ortiz',34345678,'1198765432','antonella.ortiz@email.com',24);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientes_sin_gestionar`
--

DROP TABLE IF EXISTS `clientes_sin_gestionar`;
/*!50001 DROP VIEW IF EXISTS `clientes_sin_gestionar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_sin_gestionar` AS SELECT
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cobros`
--

DROP TABLE IF EXISTS `cobros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobros` (
  `id_cobro` int NOT NULL AUTO_INCREMENT,
  `monto_cobro` int DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `metodo_de_pago` varchar(50) DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `id_credito` int NOT NULL,
  `id_cuota` int NOT NULL,
  PRIMARY KEY (`id_cobro`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_credito` (`id_credito`),
  KEY `fk_id_cuota` (`id_cuota`),
  CONSTRAINT `cobros_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `cobros_ibfk_2` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id_credito`),
  CONSTRAINT `fk_id_cuota` FOREIGN KEY (`id_cuota`) REFERENCES `cuota_credito` (`id_cuota`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobros`
--

LOCK TABLES `cobros` WRITE;
/*!40000 ALTER TABLE `cobros` DISABLE KEYS */;
INSERT INTO `cobros` VALUES (1,500,'2025-05-01','Transferencia Bancaria',NULL,2,1),(2,200,'2025-05-02','Transferencia Bancaria',NULL,2,1),(3,100,'2025-05-03','Efectivo',1,2,1),(4,100,'2025-05-01','Transferencia Bancaria',2,3,1),(5,100,'2025-05-04','Debito Automatico',NULL,3,1),(6,50,'2025-05-05','Pago en L├¡nea',NULL,4,1),(7,500,'2025-05-06','Transferencia Bancaria',3,5,1),(8,200,'2025-05-07','D├®bito Autom├ítico',NULL,4,1),(9,230,'2025-05-03','D├®bito Autom├ítico',1,5,1),(10,150,'2025-05-08','Pago en L├¡nea',NULL,5,1),(11,120,'2025-05-09','Transferencia Bancaria',2,5,1),(12,30,'2025-05-10','Transferencia Bancaria',NULL,6,1),(13,320,'2025-05-11','D├®bito Autom├ítico',3,6,1);
/*!40000 ALTER TABLE `cobros` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `set_fecha_pago` BEFORE INSERT ON `cobros` FOR EACH ROW BEGIN
  IF NEW.fecha_pago IS NULL THEN
    SET NEW.fecha_pago = CURDATE();
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_cobros` AFTER INSERT ON `cobros` FOR EACH ROW BEGIN
                INSERT INTO auditoria_cobros_dia (id_cobro, fecha_pago)
        VALUES (NEW.id_cobro, NEW.fecha_pago);
        END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `creditos`
--

DROP TABLE IF EXISTS `creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditos` (
  `id_credito` int NOT NULL AUTO_INCREMENT,
  `monto` int DEFAULT NULL,
  `interes` int DEFAULT NULL,
  `gastos` int DEFAULT NULL,
  `plazo` int DEFAULT NULL,
  `fecha_otorgamiento` date NOT NULL,
  `saldo_pendiente` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_credito`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `creditos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditos`
--

LOCK TABLES `creditos` WRITE;
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT INTO `creditos` VALUES (1,10000,15,50,12,'2025-03-15',10065,1),(2,50000,12,100,24,'2025-02-20',50112,2),(3,25000,18,75,18,'2025-03-01',25093,3),(4,75000,10,150,36,'2025-01-10',75160,4),(5,15000,20,60,6,'2025-03-25',15080,5),(6,30000,14,80,24,'2025-02-10',30094,6),(7,60000,11,120,18,'2025-01-25',60131,7),(8,20000,16,70,15,'2025-03-05',20086,8),(9,40000,13,90,14,'2025-02-15',40103,9),(10,80000,9,160,20,'2025-01-05',80169,10),(11,12000,19,55,9,'2025-03-20',12074,11),(12,35000,13,85,14,'2025-02-05',35098,12),(13,55000,12,110,8,'2025-01-20',55122,13),(14,18000,17,65,12,'2025-03-10',18082,14),(15,45000,14,95,6,'2025-02-01',45109,15);
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_creditos` AFTER INSERT ON `creditos` FOR EACH ROW BEGIN
                INSERT INTO auditoria_creditos_otorgardos(id_credito, monto,
        fecha_otorgamiento, id_cliente)
                VALUES (NEW.id_credito,NEW.monto, NEW.fecha_otorgamiento, NEW.id_cliente);
        END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuota_credito`
--

DROP TABLE IF EXISTS `cuota_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuota_credito` (
  `id_cuota` int NOT NULL AUTO_INCREMENT,
  `id_credito` int DEFAULT NULL,
  `numero_cuota` int NOT NULL,
  `monto_cuota` int NOT NULL,
  `interes_cuota` int NOT NULL,
  `gastos_cuota` int NOT NULL,
  `total_cuota` int NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_cuota`),
  KEY `id_credito` (`id_credito`),
  CONSTRAINT `cuota_credito_ibfk_1` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id_credito`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuota_credito`
--

LOCK TABLES `cuota_credito` WRITE;
/*!40000 ALTER TABLE `cuota_credito` DISABLE KEYS */;
INSERT INTO `cuota_credito` VALUES (1,1,1,833,1,4,838,'2025-04-15'),(2,1,2,833,1,4,838,'2025-05-15'),(3,1,3,833,1,4,838,'2025-06-15'),(4,1,4,833,1,4,838,'2025-07-15'),(5,1,5,833,1,4,838,'2025-08-15'),(6,1,6,833,1,4,838,'2025-09-15'),(7,1,7,833,1,4,838,'2025-10-15'),(8,1,8,833,1,4,838,'2025-11-15'),(9,1,9,833,1,4,838,'2025-12-15'),(10,1,10,833,1,4,838,'2026-01-15'),(11,1,11,833,1,4,838,'2026-02-15'),(12,1,12,833,1,4,838,'2026-03-15'),(13,2,1,2083,0,4,2087,'2025-03-20'),(14,2,2,2083,0,4,2087,'2025-04-20'),(15,2,3,2083,0,4,2087,'2025-05-20'),(16,2,4,2083,0,4,2087,'2025-06-20'),(17,2,5,2083,0,4,2087,'2025-07-20'),(18,2,6,2083,0,4,2087,'2025-08-20'),(19,2,7,2083,0,4,2087,'2025-09-20'),(20,2,8,2083,0,4,2087,'2025-10-20'),(21,2,9,2083,0,4,2087,'2025-11-20'),(22,2,10,2083,0,4,2087,'2025-12-20'),(23,2,11,2083,0,4,2087,'2026-01-20'),(24,2,12,2083,0,4,2087,'2026-02-20'),(25,2,13,2083,0,4,2087,'2026-03-20'),(26,2,14,2083,0,4,2087,'2026-04-20'),(27,2,15,2083,0,4,2087,'2026-05-20'),(28,2,16,2083,0,4,2087,'2026-06-20'),(29,2,17,2083,0,4,2087,'2026-07-20'),(30,2,18,2083,0,4,2087,'2026-08-20'),(31,2,19,2083,0,4,2087,'2026-09-20'),(32,2,20,2083,0,4,2087,'2026-10-20'),(33,2,21,2083,0,4,2087,'2026-11-20'),(34,2,22,2083,0,4,2087,'2026-12-20'),(35,2,23,2083,0,4,2087,'2027-01-20'),(36,2,24,2083,0,4,2087,'2027-02-20'),(37,3,1,1388,1,4,1393,'2025-04-01'),(38,3,2,1388,1,4,1393,'2025-05-01'),(39,3,3,1388,1,4,1393,'2025-06-01'),(40,3,4,1388,1,4,1393,'2025-07-01'),(41,3,5,1388,1,4,1393,'2025-08-01'),(42,3,6,1388,1,4,1393,'2025-09-01'),(43,3,7,1388,1,4,1393,'2025-10-01'),(44,3,8,1388,1,4,1393,'2025-11-01'),(45,3,9,1388,1,4,1393,'2025-12-01'),(46,3,10,1388,1,4,1393,'2026-01-01'),(47,3,11,1388,1,4,1393,'2026-02-01'),(48,3,12,1388,1,4,1393,'2026-03-01'),(49,3,13,1388,1,4,1393,'2026-04-01'),(50,3,14,1388,1,4,1393,'2026-05-01'),(51,3,15,1388,1,4,1393,'2026-06-01'),(52,3,16,1388,1,4,1393,'2026-07-01'),(53,3,17,1388,1,4,1393,'2026-08-01'),(54,3,18,1388,1,4,1393,'2026-09-01'),(55,4,1,2083,0,4,2087,'2025-02-10'),(56,4,2,2083,0,4,2087,'2025-03-10'),(57,4,3,2083,0,4,2087,'2025-04-10'),(58,4,4,2083,0,4,2087,'2025-05-10'),(59,4,5,2083,0,4,2087,'2025-06-10'),(60,4,6,2083,0,4,2087,'2025-07-10'),(61,4,7,2083,0,4,2087,'2025-08-10'),(62,4,8,2083,0,4,2087,'2025-09-10'),(63,4,9,2083,0,4,2087,'2025-10-10'),(64,4,10,2083,0,4,2087,'2025-11-10'),(65,4,11,2083,0,4,2087,'2025-12-10'),(66,4,12,2083,0,4,2087,'2026-01-10'),(67,4,13,2083,0,4,2087,'2026-02-10'),(68,4,14,2083,0,4,2087,'2026-03-10'),(69,4,15,2083,0,4,2087,'2026-04-10'),(70,4,16,2083,0,4,2087,'2026-05-10'),(71,4,17,2083,0,4,2087,'2026-06-10'),(72,4,18,2083,0,4,2087,'2026-07-10'),(73,4,19,2083,0,4,2087,'2026-08-10'),(74,4,20,2083,0,4,2087,'2026-09-10'),(75,4,21,2083,0,4,2087,'2026-10-10'),(76,4,22,2083,0,4,2087,'2026-11-10'),(77,4,23,2083,0,4,2087,'2026-12-10'),(78,4,24,2083,0,4,2087,'2027-01-10'),(79,4,25,2083,0,4,2087,'2027-02-10'),(80,4,26,2083,0,4,2087,'2027-03-10'),(81,4,27,2083,0,4,2087,'2027-04-10'),(82,4,28,2083,0,4,2087,'2027-05-10'),(83,4,29,2083,0,4,2087,'2027-06-10'),(84,4,30,2083,0,4,2087,'2027-07-10'),(85,4,31,2083,0,4,2087,'2027-08-10'),(86,4,32,2083,0,4,2087,'2027-09-10'),(87,4,33,2083,0,4,2087,'2027-10-10'),(88,4,34,2083,0,4,2087,'2027-11-10'),(89,4,35,2083,0,4,2087,'2027-12-10'),(90,4,36,2083,0,4,2087,'2028-01-10'),(91,5,1,2500,3,10,2513,'2025-04-25'),(92,5,2,2500,3,10,2513,'2025-05-25'),(93,5,3,2500,3,10,2513,'2025-06-25'),(94,5,4,2500,3,10,2513,'2025-07-25'),(95,5,5,2500,3,10,2513,'2025-08-25'),(96,5,6,2500,3,10,2513,'2025-09-25'),(97,6,1,1250,0,3,1253,'2025-03-10'),(98,6,2,1250,0,3,1253,'2025-04-10'),(99,6,3,1250,0,3,1253,'2025-05-10'),(100,6,4,1250,0,3,1253,'2025-06-10'),(101,6,5,1250,0,3,1253,'2025-07-10'),(102,6,6,1250,0,3,1253,'2025-08-10'),(103,6,7,1250,0,3,1253,'2025-09-10'),(104,6,8,1250,0,3,1253,'2025-10-10'),(105,6,9,1250,0,3,1253,'2025-11-10'),(106,6,10,1250,0,3,1253,'2025-12-10'),(107,6,11,1250,0,3,1253,'2026-01-10'),(108,6,12,1250,0,3,1253,'2026-02-10'),(109,6,13,1250,0,3,1253,'2026-03-10'),(110,6,14,1250,0,3,1253,'2026-04-10'),(111,6,15,1250,0,3,1253,'2026-05-10'),(112,6,16,1250,0,3,1253,'2026-06-10'),(113,6,17,1250,0,3,1253,'2026-07-10'),(114,6,18,1250,0,3,1253,'2026-08-10'),(115,6,19,1250,0,3,1253,'2026-09-10'),(116,6,20,1250,0,3,1253,'2026-10-10'),(117,6,21,1250,0,3,1253,'2026-11-10'),(118,6,22,1250,0,3,1253,'2026-12-10'),(119,6,23,1250,0,3,1253,'2027-01-10'),(120,6,24,1250,0,3,1253,'2027-02-10'),(121,7,1,3333,0,6,3339,'2025-02-25'),(122,7,2,3333,0,6,3339,'2025-03-25'),(123,7,3,3333,0,6,3339,'2025-04-25'),(124,7,4,3333,0,6,3339,'2025-05-25'),(125,7,5,3333,0,6,3339,'2025-06-25'),(126,7,6,3333,0,6,3339,'2025-07-25'),(127,7,7,3333,0,6,3339,'2025-08-25'),(128,7,8,3333,0,6,3339,'2025-09-25'),(129,7,9,3333,0,6,3339,'2025-10-25'),(130,7,10,3333,0,6,3339,'2025-11-25'),(131,7,11,3333,0,6,3339,'2025-12-25'),(132,7,12,3333,0,6,3339,'2026-01-25'),(133,7,13,3333,0,6,3339,'2026-02-25'),(134,7,14,3333,0,6,3339,'2026-03-25'),(135,7,15,3333,0,6,3339,'2026-04-25'),(136,7,16,3333,0,6,3339,'2026-05-25'),(137,7,17,3333,0,6,3339,'2026-06-25'),(138,7,18,3333,0,6,3339,'2026-07-25'),(139,8,1,1333,1,4,1338,'2025-04-05'),(140,8,2,1333,1,4,1338,'2025-05-05'),(141,8,3,1333,1,4,1338,'2025-06-05'),(142,8,4,1333,1,4,1338,'2025-07-05'),(143,8,5,1333,1,4,1338,'2025-08-05'),(144,8,6,1333,1,4,1338,'2025-09-05'),(145,8,7,1333,1,4,1338,'2025-10-05'),(146,8,8,1333,1,4,1338,'2025-11-05'),(147,8,9,1333,1,4,1338,'2025-12-05'),(148,8,10,1333,1,4,1338,'2026-01-05'),(149,8,11,1333,1,4,1338,'2026-02-05'),(150,8,12,1333,1,4,1338,'2026-03-05'),(151,8,13,1333,1,4,1338,'2026-04-05'),(152,8,14,1333,1,4,1338,'2026-05-05'),(153,8,15,1333,1,4,1338,'2026-06-05'),(154,9,1,2857,0,6,2863,'2025-03-15'),(155,9,2,2857,0,6,2863,'2025-04-15'),(156,9,3,2857,0,6,2863,'2025-05-15'),(157,9,4,2857,0,6,2863,'2025-06-15'),(158,9,5,2857,0,6,2863,'2025-07-15'),(159,9,6,2857,0,6,2863,'2025-08-15'),(160,9,7,2857,0,6,2863,'2025-09-15'),(161,9,8,2857,0,6,2863,'2025-10-15'),(162,9,9,2857,0,6,2863,'2025-11-15'),(163,9,10,2857,0,6,2863,'2025-12-15'),(164,9,11,2857,0,6,2863,'2026-01-15'),(165,9,12,2857,0,6,2863,'2026-02-15'),(166,9,13,2857,0,6,2863,'2026-03-15'),(167,9,14,2857,0,6,2863,'2026-04-15'),(168,10,1,4000,0,8,4008,'2025-02-05'),(169,10,2,4000,0,8,4008,'2025-03-05'),(170,10,3,4000,0,8,4008,'2025-04-05'),(171,10,4,4000,0,8,4008,'2025-05-05'),(172,10,5,4000,0,8,4008,'2025-06-05'),(173,10,6,4000,0,8,4008,'2025-07-05'),(174,10,7,4000,0,8,4008,'2025-08-05'),(175,10,8,4000,0,8,4008,'2025-09-05'),(176,10,9,4000,0,8,4008,'2025-10-05'),(177,10,10,4000,0,8,4008,'2025-11-05'),(178,10,11,4000,0,8,4008,'2025-12-05'),(179,10,12,4000,0,8,4008,'2026-01-05'),(180,10,13,4000,0,8,4008,'2026-02-05'),(181,10,14,4000,0,8,4008,'2026-03-05'),(182,10,15,4000,0,8,4008,'2026-04-05'),(183,10,16,4000,0,8,4008,'2026-05-05'),(184,10,17,4000,0,8,4008,'2026-06-05'),(185,10,18,4000,0,8,4008,'2026-07-05'),(186,10,19,4000,0,8,4008,'2026-08-05'),(187,10,20,4000,0,8,4008,'2026-09-05'),(188,11,1,1333,2,6,1341,'2025-04-20'),(189,11,2,1333,2,6,1341,'2025-05-20'),(190,11,3,1333,2,6,1341,'2025-06-20'),(191,11,4,1333,2,6,1341,'2025-07-20'),(192,11,5,1333,2,6,1341,'2025-08-20'),(193,11,6,1333,2,6,1341,'2025-09-20'),(194,11,7,1333,2,6,1341,'2025-10-20'),(195,11,8,1333,2,6,1341,'2025-11-20'),(196,11,9,1333,2,6,1341,'2025-12-20'),(197,12,1,2500,0,6,2506,'2025-03-05'),(198,12,2,2500,0,6,2506,'2025-04-05'),(199,12,3,2500,0,6,2506,'2025-05-05'),(200,12,4,2500,0,6,2506,'2025-06-05'),(201,12,5,2500,0,6,2506,'2025-07-05'),(202,12,6,2500,0,6,2506,'2025-08-05'),(203,12,7,2500,0,6,2506,'2025-09-05'),(204,12,8,2500,0,6,2506,'2025-10-05'),(205,12,9,2500,0,6,2506,'2025-11-05'),(206,12,10,2500,0,6,2506,'2025-12-05'),(207,12,11,2500,0,6,2506,'2026-01-05'),(208,12,12,2500,0,6,2506,'2026-02-05'),(209,12,13,2500,0,6,2506,'2026-03-05'),(210,12,14,2500,0,6,2506,'2026-04-05'),(211,13,1,6875,1,13,6889,'2025-02-20'),(212,13,2,6875,1,13,6889,'2025-03-20'),(213,13,3,6875,1,13,6889,'2025-04-20'),(214,13,4,6875,1,13,6889,'2025-05-20'),(215,13,5,6875,1,13,6889,'2025-06-20'),(216,13,6,6875,1,13,6889,'2025-07-20'),(217,13,7,6875,1,13,6889,'2025-08-20'),(218,13,8,6875,1,13,6889,'2025-09-20'),(219,14,1,1500,1,5,1506,'2025-04-10'),(220,14,2,1500,1,5,1506,'2025-05-10'),(221,14,3,1500,1,5,1506,'2025-06-10'),(222,14,4,1500,1,5,1506,'2025-07-10'),(223,14,5,1500,1,5,1506,'2025-08-10'),(224,14,6,1500,1,5,1506,'2025-09-10'),(225,14,7,1500,1,5,1506,'2025-10-10'),(226,14,8,1500,1,5,1506,'2025-11-10'),(227,14,9,1500,1,5,1506,'2025-12-10'),(228,14,10,1500,1,5,1506,'2026-01-10'),(229,14,11,1500,1,5,1506,'2026-02-10'),(230,14,12,1500,1,5,1506,'2026-03-10'),(231,15,1,7500,2,15,7517,'2025-03-01'),(232,15,2,7500,2,15,7517,'2025-04-01'),(233,15,3,7500,2,15,7517,'2025-05-01'),(234,15,4,7500,2,15,7517,'2025-06-01'),(235,15,5,7500,2,15,7517,'2025-07-01'),(236,15,6,7500,2,15,7517,'2025-08-01');
/*!40000 ALTER TABLE `cuota_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `deudas_vencidas`
--

DROP TABLE IF EXISTS `deudas_vencidas`;
/*!50001 DROP VIEW IF EXISTS `deudas_vencidas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `deudas_vencidas` AS SELECT
 1 AS `id_credito`,
 1 AS `monto`,
 1 AS `plazo`,
 1 AS `cliente`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(100) DEFAULT NULL,
  `apellido_empleado` varchar(100) DEFAULT NULL,
  `email_empleado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `email_empleado` (`email_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Laura','G├│mez','laura.gomez@empresa.com'),(2,'Carlos','Rodr├¡guez','carlos.rodriguez@empresa.com'),(3,'Ana','P├®rez','ana.perez@empresa.com'),(4,'Javier','L├│pez','javier.lopez@empresa.com'),(5,'Mariana','D├¡az','mariana.diaz@empresa.com'),(6,'Sebasti├ín','Fern├índez','sebastian.fernandez@empresa.com'),(7,'Valentina','Ruiz','valentina.ruiz@empresa.com'),(8,'Mart├¡n','Torres','martin.torres@empresa.com'),(9,'Luc├¡a','Flores','lucia.flores@empresa.com'),(10,'Andr├®s','Vargas','andres.vargas@empresa.com'),(11,'Camila','Jim├®nez','camila.jimenez@empresa.com'),(12,'Federico','Castro','federico.castro@empresa.com'),(13,'Daniela','Ortiz','daniela.ortiz@empresa.com'),(14,'Gustavo','Su├írez','gustavo.suarez@empresa.com'),(15,'Silvina','Romero','silvina.romero@empresa.com');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_credito`
--

DROP TABLE IF EXISTS `estado_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_credito` (
  `id_credito` int NOT NULL,
  `id_cuota` int NOT NULL,
  `id_cliente` int NOT NULL,
  `estado` varchar(50) DEFAULT 'Activo',
  PRIMARY KEY (`id_credito`,`id_cuota`,`id_cliente`),
  KEY `id_cuota` (`id_cuota`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `estado_credito_ibfk_1` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id_credito`),
  CONSTRAINT `estado_credito_ibfk_2` FOREIGN KEY (`id_cuota`) REFERENCES `cuota_credito` (`id_cuota`),
  CONSTRAINT `estado_credito_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_credito`
--

LOCK TABLES `estado_credito` WRITE;
/*!40000 ALTER TABLE `estado_credito` DISABLE KEYS */;
INSERT INTO `estado_credito` VALUES (1,1,1,'Activo'),(2,13,2,'Activo'),(3,37,3,'Activo'),(4,55,4,'Activo'),(5,91,5,'Activo'),(6,97,6,'Activo'),(7,121,7,'Activo'),(8,139,8,'Activo'),(9,154,9,'Activo'),(10,168,10,'Activo'),(11,188,11,'Activo'),(12,197,12,'Activo'),(13,211,13,'Activo'),(14,219,14,'Activo'),(15,231,15,'Activo');
/*!40000 ALTER TABLE `estado_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestiones_empleados`
--

DROP TABLE IF EXISTS `gestiones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestiones_empleados` (
  `id_gestion` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `resultado_gestion` varchar(100) DEFAULT NULL,
  `fecha_gestion` date DEFAULT NULL,
  `id_tipo` int DEFAULT NULL,
  PRIMARY KEY (`id_gestion`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_cliente` (`id_cliente`),
  KEY `fk_id_tipo` (`id_tipo`),
  CONSTRAINT `fk_id_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_gestion` (`id_tipo`),
  CONSTRAINT `gestiones_empleados_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `gestiones_empleados_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestiones_empleados`
--

LOCK TABLES `gestiones_empleados` WRITE;
/*!40000 ALTER TABLE `gestiones_empleados` DISABLE KEYS */;
INSERT INTO `gestiones_empleados` VALUES (1,1,1,'Cliente informa imposibilidad de pago.','2025-04-01',1),(2,2,3,'Notificaci├│n de deuda.','2025-04-03',2),(3,1,9,'Intimaci├│n de pago.','2025-04-05',3),(4,3,4,'Cliente desconoce deuda.','2025-05-01',1),(5,2,6,'Env├¡o plan de pagos.','2025-04-30',2),(6,1,8,'Promesa de pago.','2025-05-02',1),(7,3,10,'Promesa de pago.','2025-05-03',4),(8,1,11,'Promesa de pago.','2025-04-02',1),(9,2,13,'Env├¡o de correo electr├│nico con descuento por pago total.','2025-06-06',2),(10,3,15,'Promesa de pago.','2025-05-14',1),(11,1,12,'Notificaci├│n de inicio de acciones legales.','2025-05-06',3),(12,2,14,'Promesa de pago.','2025-04-25',4);
/*!40000 ALTER TABLE `gestiones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_empleados`
--

DROP TABLE IF EXISTS `log_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_empleados` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int DEFAULT NULL,
  `fecha_acceso` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `log_empleados_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_empleados`
--

LOCK TABLES `log_empleados` WRITE;
/*!40000 ALTER TABLE `log_empleados` DISABLE KEYS */;
INSERT INTO `log_empleados` VALUES (1,1,'2025-06-12 00:00:00'),(2,2,'2025-06-12 00:00:00'),(3,3,'2025-06-12 00:00:00'),(4,4,'2025-06-12 00:00:00'),(5,5,'2025-06-12 00:00:00'),(6,6,'2025-06-12 00:00:00'),(7,7,'2025-06-12 00:00:00'),(8,8,'2025-06-12 00:00:00'),(9,9,'2025-06-12 00:00:00'),(10,10,'2025-06-12 00:00:00'),(11,11,'2025-06-12 00:00:00'),(12,12,'2025-06-12 00:00:00');
/*!40000 ALTER TABLE `log_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metricas_empleados`
--

DROP TABLE IF EXISTS `metricas_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metricas_empleados` (
  `id_empleado` int NOT NULL,
  `periodo` date NOT NULL,
  `cantidad_gestiones` int DEFAULT '0',
  `cantidad_promesas` int DEFAULT '0',
  `promesas_cumplidas` int DEFAULT '0',
  `monto_cobrado` int DEFAULT '0',
  PRIMARY KEY (`id_empleado`,`periodo`),
  CONSTRAINT `metricas_empleados_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metricas_empleados`
--

LOCK TABLES `metricas_empleados` WRITE;
/*!40000 ALTER TABLE `metricas_empleados` DISABLE KEYS */;
INSERT INTO `metricas_empleados` VALUES (1,'2025-04-01',300,120,90,150000),(2,'2025-04-01',320,130,95,160000),(3,'2025-04-01',280,100,70,140000),(4,'2025-04-01',290,110,80,145000),(5,'2025-04-01',310,125,100,170000),(6,'2025-04-01',330,140,110,190000),(7,'2025-04-01',309,115,90,155000),(8,'2025-04-01',231,101,41,100200),(9,'2025-04-01',285,108,77,140000),(10,'2025-04-01',290,110,80,145000),(11,'2025-04-01',340,135,100,173000),(12,'2025-04-01',30,140,110,180000),(13,'2025-04-01',400,220,120,400000),(14,'2025-04-01',322,139,96,170000),(15,'2025-04-01',284,106,72,190000);
/*!40000 ALTER TABLE `metricas_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promesas_pago`
--

DROP TABLE IF EXISTS `promesas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promesas_pago` (
  `id_promesa` int NOT NULL AUTO_INCREMENT,
  `monto_promesa` int DEFAULT NULL,
  `estado_promesa` varchar(30) DEFAULT 'En curso',
  `fecha_promesa` date DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `id_gestion` int DEFAULT NULL,
  PRIMARY KEY (`id_promesa`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_gestion` (`id_gestion`),
  CONSTRAINT `promesas_pago_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `promesas_pago_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `promesas_pago_ibfk_3` FOREIGN KEY (`id_gestion`) REFERENCES `gestiones_empleados` (`id_gestion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promesas_pago`
--

LOCK TABLES `promesas_pago` WRITE;
/*!40000 ALTER TABLE `promesas_pago` DISABLE KEYS */;
INSERT INTO `promesas_pago` VALUES (1,3500,'Pendiente','2025-06-12',11,1,11),(2,8000,'Pendiente','2025-04-25',5,1,3),(3,1200,'Pendiente','2025-05-03',7,2,5),(4,5000,'Pendiente','2025-05-02',15,3,11),(5,2200,'Pendiente','2025-04-02',9,1,6),(6,10000,'Cumplida','2025-05-06',3,2,2),(7,6000,'Pendiente','2025-06-12',1,1,1),(8,9500,'Pendiente','2025-06-06',13,2,12),(9,1800,'Pendiente','2025-06-07',10,3,10),(10,4200,'Pendiente','2025-05-06',14,2,10),(11,7800,'Vencida','2025-04-06',2,3,4),(12,1500,'Pendiente','2025-05-06',6,2,8),(13,11500,'Cumplida','2025-04-06',8,1,9),(14,2800,'Pendiente','2025-05-06',4,3,7),(15,6700,'Pendiente','2025-05-07',12,1,9);
/*!40000 ALTER TABLE `promesas_pago` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `promesas` BEFORE INSERT ON `promesas_pago` FOR EACH ROW BEGIN

        IF
    NEW.fecha_promesa > CURDATE() + INTERVAL 7 DAY  THEN
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se permiten generar promesas mayores a 7 d├¡as';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ranking_empleados`
--

DROP TABLE IF EXISTS `ranking_empleados`;
/*!50001 DROP VIEW IF EXISTS `ranking_empleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ranking_empleados` AS SELECT
 1 AS `empleado`,
 1 AS `periodo`,
 1 AS `puntaje`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resultado_campa├▒a`
--

DROP TABLE IF EXISTS `resultado_campa├▒a`;
/*!50001 DROP VIEW IF EXISTS `resultado_campa├▒a`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resultado_campa├▒a` AS SELECT
 1 AS `nombre_campa├▒a`,
 1 AS `periodo`,
 1 AS `cantidad_cobros`,
 1 AS `total_cobrado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `score_clientes`
--

DROP TABLE IF EXISTS `score_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score_clientes` (
  `id_cliente` int NOT NULL,
  `cantidad_creditos` int DEFAULT NULL,
  `deuda_historica_total` int DEFAULT NULL,
  `estado_creditos_actuales` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `score_clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_clientes`
--

LOCK TABLES `score_clientes` WRITE;
/*!40000 ALTER TABLE `score_clientes` DISABLE KEYS */;
INSERT INTO `score_clientes` VALUES (1,3,45000,'Activo'),(2,2,30000,'Finalizado'),(3,5,120000,'Vencido'),(4,1,15000,'Activo'),(5,4,80000,'Activo'),(6,2,25000,'Finalizado'),(7,3,60000,'Vencido'),(8,1,20000,'Activo'),(9,2,40000,'Finalizado'),(10,4,90000,'Vencido');
/*!40000 ALTER TABLE `score_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_gestion`
--

DROP TABLE IF EXISTS `tipo_gestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_gestion` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_gestion`
--

LOCK TABLES `tipo_gestion` WRITE;
/*!40000 ALTER TABLE `tipo_gestion` DISABLE KEYS */;
INSERT INTO `tipo_gestion` VALUES (1,'LLamada telef├│nica'),(2,'Correo electr├│nico'),(3,'Carta documento'),(4,'Mensaje de texto');
/*!40000 ALTER TABLE `tipo_gestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_empleado`
--

DROP TABLE IF EXISTS `top_empleado`;
/*!50001 DROP VIEW IF EXISTS `top_empleado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_empleado` AS SELECT
 1 AS `empleado`,
 1 AS `periodo`,
 1 AS `puntaje`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clientes_sin_gestionar`
--

/*!50001 DROP VIEW IF EXISTS `clientes_sin_gestionar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_sin_gestionar` AS select `cl`.`id_cliente` AS `id_cliente`,`cl`.`nombre` AS `nombre`,`cl`.`apellido` AS `apellido` from `clientes` `cl` where `cl`.`id_cliente` in (select distinct `g`.`id_cliente` from `gestiones_empleados` `g`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `deudas_vencidas`
--

/*!50001 DROP VIEW IF EXISTS `deudas_vencidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `deudas_vencidas` AS select `c`.`id_credito` AS `id_credito`,`c`.`monto` AS `monto`,`c`.`plazo` AS `plazo`,concat(`cl`.`nombre`,' ',`cl`.`apellido`) AS `cliente`,`e`.`estado` AS `estado` from ((`creditos` `c` join `clientes` `cl` on((`cl`.`id_cliente` = `c`.`id_cliente`))) join `estado_credito` `e` on((`c`.`id_credito` = `e`.`id_credito`))) where (`e`.`estado` = 'Vencido') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ranking_empleados`
--

/*!50001 DROP VIEW IF EXISTS `ranking_empleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ranking_empleados` AS select concat(`e`.`nombre_empleado`,' ',`e`.`apellido_empleado`) AS `empleado`,`m`.`periodo` AS `periodo`,`calcular_performance`(`m`.`cantidad_gestiones`,`m`.`promesas_cumplidas`,`m`.`monto_cobrado`) AS `puntaje` from (`empleados` `e` join `metricas_empleados` `m` on((`e`.`id_empleado` = `m`.`id_empleado`))) order by `calcular_performance`(`m`.`cantidad_gestiones`,`m`.`promesas_cumplidas`,`m`.`monto_cobrado`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resultado_campa├▒a`
--

/*!50001 DROP VIEW IF EXISTS `resultado_campa├▒a`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resultado_campa├▒a` AS select `c`.`nombre_campa├▒a` AS `nombre_campa├▒a`,concat('Entre',`c`.`fecha_inicio`,'y',`c`.`fecha_fin`) AS `periodo`,count(`co`.`id_cobro`) AS `cantidad_cobros`,sum(`co`.`monto_cobro`) AS `total_cobrado` from (`campa├▒a_cobranzas` `c` left join `cobros` `co` on((`co`.`fecha_pago` between `c`.`fecha_inicio` and `c`.`fecha_fin`))) group by `c`.`id_campa├▒a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_empleado`
--

/*!50001 DROP VIEW IF EXISTS `top_empleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_empleado` AS select `ranking_empleados`.`empleado` AS `empleado`,`ranking_empleados`.`periodo` AS `periodo`,`ranking_empleados`.`puntaje` AS `puntaje` from `ranking_empleados` limit 1 */;
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

-- Dump completed on 2025-06-12  1:08:49