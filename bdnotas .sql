-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bdnotas
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `IdAlumno` char(5) NOT NULL,
  `ApeAlumno` varchar(30) NOT NULL,
  `NomAlumno` varchar(30) NOT NULL,
  `Idesp` char(3) NOT NULL,
  `PROCE` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('A0001','Valencia salcedo','Christian','E01','N'),('A0002','Ortiz Rodriguez','Freddy','E01','P'),('A0003','Silva Mejia','Ruth Ketty','E02','N'),('A0004','Melendez Noriega','Liliana','E03','P'),('A0005','Huerta Leon','Silvia','E04','N'),('A0006','Carranza Fuentes','Maria Elena','E02','P'),('A0007','Prado Castro','Gabriela','E01','N'),('A0008','Atuncar Mesias','Juan','E05','P'),('A0009','Aguilar Zavala','Patricia Elena','E01','P'),('A0010','Rodruigez Trujillo','Rubén Eduardo','E01','N'),('A0011','Canales Ruiz','Gino Leonel','E02','P'),('A0012','Ruiz Quispe','Edgar','E02','N'),('A0013','PanduroTerrazas','Omar','E03','P'),('A0014','Zita Padilla','Peter Wilmer','E03','N'),('A0015','Ternero Ubillós','Luis','E05','P'),('A0016','Rivera García','Raúl Joel','E04','P'),('A0017','Pomar García','Ana','E04','P'),('A0018','Palomares Venegas','Mercedes','E04','N'),('A0019','Ruiz Venegaz','Luis Alberto','E04','P'),('A0020','Tejada Bernal','Janet','E04','P'),('A0021','Sotelo Canales','Juan Carlos','E05','P'),('A0022','LLosa Montalvan','Karla','E05','P'),('A0023','Galarza Torres','Hugo','E03','P'),('A0024','Valverde Jaramillo','Saul','E05','N'),('A0025','Cipriano Avila','Roxana','E04','N'),('A0026','Rodriguez Quispe','Luis Alberto','E05','P'),('A0027','Huerta Leon','Marco Antonio','E05','N'),('A0028','Ortiz Fuentes','Ana María','E04','P'),('A0029','Rivera Jaramillo','Martha','E05','P'),('A0030','Bustamante Campos','Guino','E05','N');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `IdCurso` char(4) NOT NULL,
  `NomCurso` varchar(35) NOT NULL,
  `credito` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES ('C003','Psicologia Industrial',5),('C004','Algoritmica',4),('C005','Software de Aplicación',5),('C006','Lenguaje de Programación I',5),('C007','Lenguaje Java ',4),('C008','Matematica II',3),('C009','Inglés Técnico',5),('C010','Lenguaje de Programación III',3),('C011','Aplicaciones Cliente/Servidor',4),('C012','qwq',2),('C013','a-actu',9);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `Idesp` char(3) NOT NULL,
  `Nomesp` varchar(30) NOT NULL,
  `costo` decimal(8,1) NOT NULL,
  PRIMARY KEY (`Idesp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES ('E01','Educacion Informatica',2500.0),('E02','Administracion',1800.0),('E03','Contabilidad',2000.0),('E04','Idiomas',1800.0),('E05','Ing. de Sistemas',2800.0);
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `IdAlumno` char(5) NOT NULL,
  `IdCurso` char(4) NOT NULL,
  `ExaParcial` double DEFAULT NULL,
  `ExaFinal` double DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`,`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES ('A0001','C001',11,17),('A0001','C003',9,15),('A0001','C004',18,3),('A0002','C001',15,9),('A0002','C002',11,3),('A0002','C003',14,13),('A0003','C003',8,13),('A0003','C004',7,14),('A0003','C005',16,14),('A0003','C008',12,13),('A0004','C005',7,12),('A0004','C006',11,12),('A0004','C007',9,11),('A0005','C003',6,13),('A0005','C004',17,16),('A0005','C005',12,17),('A0006','C004',16,15),('A0006','C006',5,12),('A0006','C007',8,13),('A0007','C002',7,9),('A0007','C004',12,7),('A0007','C005',11,6),('A0008','C004',5,13),('A0008','C008',5,8),('A0008','C009',7,4),('A0009','C005',6,13),('A0009','C009',18,13),('A0009','C010',12,15),('A0010','C001',5,12),('A0010','C003',12,11),('A0010','C010',16,14),('A0011','C001',5,13),('A0011','C002',11,13),('A0011','C004',7,3),('A0012','C004',10,8),('A0012','C005',7,10),('A0012','C006',17,10),('A0013','C001',14,3),('A0013','C002',7,10),('A0013','C003',15,12),('A0013','C004',12,13),('A0014','C001',11,15),('A0014','C003',15,13),('A0014','C004',12,18),('A0015','C001',5,13),('A0015','C003',14,13),('A0015','C004',15,12),('A0016','C002',6,13),('A0016','C003',12,11),('A0016','C006',17,12),('A0021','C004',8,17),('A0021','C005',14,3),('A0021','C006',17,12),('A0022','C003',7,13),('A0022','C004',17,13),('A0022','C005',8,13),('A0023','C004',10,13),('A0023','C008',12,13),('A0023','C009',18,13),('A0024','C003',16,8),('A0024','C004',10,3),('A0024','C005',11,9),('A0024','C007',16,13),('A0025','C004',1,13),('A0025','C005',10,18),('A0028','C004',17,7),('A0028','C005',16,13),('A0029','C004',11,13);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `IdAlumno` char(5) NOT NULL,
  `CICLO` char(6) NOT NULL,
  `NCUOTA` int(11) NOT NULL,
  `MONTO` decimal(12,2) NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`,`CICLO`,`NCUOTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES ('A0001','2005-1',3,340.00,'2012-12-05 00:00:00'),('A0001','2005-2',1,300.00,'2010-10-05 00:00:00'),('A0001','2005-2',2,340.00,'2011-11-05 00:00:00'),('A0002','2006-1',1,360.00,'2012-05-06 00:00:00'),('A0002','2006-1',2,370.00,'2011-05-06 00:00:00'),('A0002','2006-2',1,300.00,'2010-05-06 00:00:00'),('A0002','2006-2',2,350.00,'2011-05-06 00:00:00'),('A0003','2005-1',1,340.00,'2011-06-05 00:00:00'),('A0003','2005-1',2,340.00,'2012-07-05 00:00:00'),('A0003','2005-2',1,340.00,'2011-05-05 00:00:00'),('A0004','2005-2',1,300.00,'2003-09-05 00:00:00'),('A0004','2005-2',2,380.00,'2001-10-05 00:00:00'),('A0004','2006-1',1,370.00,'2011-05-06 00:00:00'),('A0005','2005-2',1,350.00,'2011-10-05 00:00:00'),('A0005','2005-2',2,360.00,'2011-08-05 00:00:00'),('A0005','2006-1',1,380.00,'2009-05-06 00:00:00'),('A0006','2005-1',1,340.00,'2011-03-06 00:00:00'),('A0006','2005-1',2,390.00,'2011-05-06 00:00:00'),('A0006','2005-2',3,300.00,'2013-09-06 00:00:00'),('A0007','2005-1',1,380.00,'2011-05-06 00:00:00'),('A0007','2005-1',2,440.00,'2011-06-06 00:00:00'),('A0007','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0008','2004-1',1,370.00,'2011-02-06 00:00:00'),('A0008','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0008','2005-2',2,320.00,'2011-09-06 00:00:00'),('A0009','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0009','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0009','2005-2',2,330.00,'2011-07-06 00:00:00'),('A0010','2005-1',1,350.00,'2011-06-06 00:00:00'),('A0010','2005-2',1,340.00,'2013-07-06 00:00:00'),('A0010','2005-2',2,330.00,'2011-09-06 00:00:00'),('A0011','2005-1',2,370.00,'2011-06-06 00:00:00'),('A0011','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0011','2005-2',2,330.00,'2011-08-06 00:00:00'),('A0012','2005-1',1,390.00,'2015-08-06 00:00:00'),('A0012','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0012','2005-2',2,370.00,'2011-09-06 00:00:00'),('A0013','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0013','2005-1',2,350.00,'2011-05-06 00:00:00'),('A0013','2005-1',3,370.00,'2011-06-06 00:00:00'),('A0013','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0014','2005-1',1,350.00,'2011-05-06 00:00:00'),('A0014','2005-2',1,340.00,'2011-10-06 00:00:00'),('A0014','2005-2',2,330.00,'2011-11-06 00:00:00'),('A0016','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0016','2005-2',1,340.00,'2011-09-06 00:00:00'),('A0016','2005-2',2,360.00,'2011-10-06 00:00:00'),('A0021','2005-1',1,340.00,'2010-05-06 00:00:00'),('A0021','2005-2',1,340.00,'2011-07-06 00:00:00'),('A0021','2005-2',2,480.00,'2010-08-06 00:00:00'),('A0022','2005-1',1,350.00,'2011-03-06 00:00:00'),('A0022','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0022','2005-2',2,330.00,'2011-09-06 00:00:00'),('A0023','2005-1',1,370.00,'2011-05-06 00:00:00'),('A0023','2005-2',1,340.00,'2011-09-06 00:00:00'),('A0023','2005-2',2,370.00,'2011-10-06 00:00:00'),('A0024','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0024','2005-1',2,340.00,'2011-05-06 00:00:00'),('A0024','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0024','2005-2',2,340.00,'2011-08-06 00:00:00'),('A0025','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0025','2005-2',2,370.00,'2011-09-06 00:00:00'),('A0028','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0028','2005-1',2,390.00,'2011-06-06 00:00:00'),('A0029','2004-1',1,340.00,'2011-06-06 00:00:00');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bdnotas'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_MantActualizarCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MantActualizarCurso`(IN _idcurso CHAR(4),IN _nombrecurso VARCHAR(35), IN _creditocurso INT)
BEGIN
	UPDATE Curso SET NomCurso = _nombrecurso, credito = _creditocurso WHERE IdCurso = _idcurso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MantEliminarCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MantEliminarCurso`(IN _idcurso CHAR(4))
BEGIN
	DELETE FROM Curso WHERE IdCurso = _idcurso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MantObtenerCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MantObtenerCurso`(IN _idcurso CHAR(4))
SELECT    c.IdCurso, c.NomCurso, c.credito
    FROM        curso c WHERE c.IdCurso = _idcurso ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MantObtenerCursos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MantObtenerCursos`(IN _idcurso CHAR(4))
SELECT	c.IdCurso, c.NomCurso, c.credito
	FROM		curso c WHERE c.IdCurso = _idcurso ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MantRegistrarCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MantRegistrarCurso`(IN nombrecurso VARCHAR(35), IN creditocurso INT)
BEGIN
	SET @idcurso = (SELECT CONCAT('C',RIGHT(CONCAT('00',RIGHT(MAX(IdCurso),3) + 1),3)) FROM CURSO);
INSERT INTO Curso (IdCurso, NomCurso, credito) VALUES (@idcurso,nombrecurso,creditocurso);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-10 12:34:00
