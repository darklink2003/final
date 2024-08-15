CREATE DATABASE  IF NOT EXISTS `bd_entrada_rueda_negocios_2019` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_entrada_rueda_negocios_2019`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_entrada_rueda_negocios_2019
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `tb_encuestas`
--

DROP TABLE IF EXISTS `tb_encuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_encuestas` (
  `id_encuesta` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_encuesta` varchar(100) NOT NULL,
  `descripcion_larga` varchar(500) DEFAULT NULL,
  `sn_publicar` tinyint(1) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_encuestas`
--

LOCK TABLES `tb_encuestas` WRITE;
/*!40000 ALTER TABLE `tb_encuestas` DISABLE KEYS */;
INSERT INTO `tb_encuestas` VALUES (1,'Encuesta SER 2016',NULL,0,'2015-11-04 00:00:00');
/*!40000 ALTER TABLE `tb_encuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_genero`
--

DROP TABLE IF EXISTS `tb_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_genero` (
  `cod_genero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_genero`),
  KEY `idx_cod_genero` (`cod_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_genero`
--

LOCK TABLES `tb_genero` WRITE;
/*!40000 ALTER TABLE `tb_genero` DISABLE KEYS */;
INSERT INTO `tb_genero` VALUES (14,'Masculino'),(15,'Femenino');
/*!40000 ALTER TABLE `tb_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_personas`
--

DROP TABLE IF EXISTS `tb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_personas` (
  `num_doc` varchar(15) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sn_mostrar` varchar(1) DEFAULT NULL,
  `sn_contar` varchar(2) DEFAULT NULL,
  `url_imagen` varchar(500) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `cod_rol` int(11) NOT NULL,
  `cod_tipo_doc` int(11) NOT NULL,
  `cod_genero` int(11) NOT NULL,
  `cod_programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_doc`),
  KEY `COD_TIPO_DOC` (`cod_tipo_doc`),
  KEY `ROL` (`cod_rol`),
  KEY `cod_genero` (`cod_genero`),
  CONSTRAINT `tb_personas_ibfk_1` FOREIGN KEY (`cod_tipo_doc`) REFERENCES `tb_tipo_doc` (`cod_tipo_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_personas_ibfk_2` FOREIGN KEY (`cod_rol`) REFERENCES `tb_roles` (`cod_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_personas_ibfk_3` FOREIGN KEY (`cod_genero`) REFERENCES `tb_genero` (`cod_genero`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_personas`
--

LOCK TABLES `tb_personas` WRITE;
/*!40000 ALTER TABLE `tb_personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_personas_registros`
--

DROP TABLE IF EXISTS `tb_personas_registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_personas_registros` (
  `cod_pers_reg` int(11) NOT NULL AUTO_INCREMENT,
  `identif_1` varchar(15) NOT NULL,
  `identif_2` varchar(15) NOT NULL,
  `fec_reg` datetime NOT NULL,
  PRIMARY KEY (`cod_pers_reg`),
  KEY `idx_registrador` (`identif_1`),
  KEY `idx_registrado_` (`identif_2`),
  CONSTRAINT `fk_registrado_` FOREIGN KEY (`identif_2`) REFERENCES `tb_personas` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_registrador` FOREIGN KEY (`identif_1`) REFERENCES `tb_personas` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_personas_registros`
--

LOCK TABLES `tb_personas_registros` WRITE;
/*!40000 ALTER TABLE `tb_personas_registros` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_personas_registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_personas_respuestas`
--

DROP TABLE IF EXISTS `tb_personas_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_personas_respuestas` (
  `id_persona_respuesta` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `num_doc` varchar(15) NOT NULL,
  `id_posible_respuesta` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`id_persona_respuesta`),
  KEY `idx_posible_respuesta` (`id_posible_respuesta`),
  KEY `idx_num_doc` (`num_doc`),
  CONSTRAINT `fk_num_doc` FOREIGN KEY (`num_doc`) REFERENCES `tb_personas` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_posible_respuesta` FOREIGN KEY (`id_posible_respuesta`) REFERENCES `tb_posibles_respuestas` (`id_posible_respuesta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_personas_respuestas`
--

LOCK TABLES `tb_personas_respuestas` WRITE;
/*!40000 ALTER TABLE `tb_personas_respuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_personas_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_posibles_respuestas`
--

DROP TABLE IF EXISTS `tb_posibles_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_posibles_respuestas` (
  `id_posible_respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `texto_respuesta` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  PRIMARY KEY (`id_posible_respuesta`),
  KEY `idx_pregunta` (`id_pregunta`),
  CONSTRAINT `fk_pregunta` FOREIGN KEY (`id_pregunta`) REFERENCES `tb_preguntas` (`id_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_posibles_respuestas`
--

LOCK TABLES `tb_posibles_respuestas` WRITE;
/*!40000 ALTER TABLE `tb_posibles_respuestas` DISABLE KEYS */;
INSERT INTO `tb_posibles_respuestas` VALUES (9,'Sí','0000-00-00 00:00:00',5),(10,'No','0000-00-00 00:00:00',5),(14,'Sí','0000-00-00 00:00:00',6),(15,'No','0000-00-00 00:00:00',6),(24,'Sí','0000-00-00 00:00:00',7),(25,'No','0000-00-00 00:00:00',7),(32,'Sí','0000-00-00 00:00:00',8),(34,'No','0000-00-00 00:00:00',8),(35,'Excelente','0000-00-00 00:00:00',9),(36,'Buena','0000-00-00 00:00:00',9),(37,'Regular','0000-00-00 00:00:00',9),(38,'Mala','0000-00-00 00:00:00',9),(39,'Sí','0000-00-00 00:00:00',10),(42,'No','0000-00-00 00:00:00',10),(43,'Sí','0000-00-00 00:00:00',11),(44,'No','0000-00-00 00:00:00',11),(45,'Sí','0000-00-00 00:00:00',12),(46,'No','0000-00-00 00:00:00',12);
/*!40000 ALTER TABLE `tb_posibles_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_preguntas`
--

DROP TABLE IF EXISTS `tb_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_preguntas` (
  `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `texto_pregunta` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_encuesta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`),
  KEY `idx_encuesta` (`id_encuesta`),
  CONSTRAINT `fk_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `tb_encuestas` (`id_encuesta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_preguntas`
--

LOCK TABLES `tb_preguntas` WRITE;
/*!40000 ALTER TABLE `tb_preguntas` DISABLE KEYS */;
INSERT INTO `tb_preguntas` VALUES (5,'¿Exposena cumplió sus expectativas?','0000-00-00 00:00:00',1),(6,'¿Los procesos técnicos desarrollados son pertinentes y contribuyen al desarrollo agropecuario de  la región?','0000-00-00 00:00:00',1),(7,'¿Considera que la actividad le puede beneficiar y ser aplicada  en su vida laboral?','0000-00-00 00:00:00',1),(8,'¿Le gustaría ser parte de un programa de formación del SENA? En caso de estar en uno omita la pregunta.','0000-00-00 00:00:00',1),(9,'¿Cómo califica usted la experiencia en Exposena 2016?','0000-00-00 00:00:00',1),(10,'¿Insentivaría a otras personas a ser partícipes de éste evento?','0000-00-00 00:00:00',1),(11,'¿Las instalaciones son visualmente agradables y cómodas para el desarrollo de las actividades?','0000-00-00 00:00:00',1),(12,'¿Los aprendices SENA  mostraron conocimientos suficientes para resolver las preguntas o inquietudes?','0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `tb_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_programas`
--

DROP TABLE IF EXISTS `tb_programas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_programas` (
  `cod_programa` int(11) NOT NULL AUTO_INCREMENT,
  `programa` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_programa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_programas`
--

LOCK TABLES `tb_programas` WRITE;
/*!40000 ALTER TABLE `tb_programas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_programas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_roles`
--

DROP TABLE IF EXISTS `tb_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_roles` (
  `cod_rol` int(11) NOT NULL AUTO_INCREMENT,
  `desc_rol` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_roles`
--

LOCK TABLES `tb_roles` WRITE;
/*!40000 ALTER TABLE `tb_roles` DISABLE KEYS */;
INSERT INTO `tb_roles` VALUES (1,'Productor-empresario'),(2,'Logística'),(3,'Comprador'),(4,'Visitante');
/*!40000 ALTER TABLE `tb_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_doc`
--

DROP TABLE IF EXISTS `tb_tipo_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipo_doc` (
  `cod_tipo_doc` int(11) NOT NULL AUTO_INCREMENT,
  `desc_tipo_doc` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_tipo_doc`),
  KEY `idx_cod_tipo_doc` (`cod_tipo_doc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_doc`
--

LOCK TABLES `tb_tipo_doc` WRITE;
/*!40000 ALTER TABLE `tb_tipo_doc` DISABLE KEYS */;
INSERT INTO `tb_tipo_doc` VALUES (1,'CC'),(2,'TI'),(3,'Otro');
/*!40000 ALTER TABLE `tb_tipo_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_entrada_rueda_negocios_2019'
--

--
-- Dumping routines for database 'bd_entrada_rueda_negocios_2019'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27 11:22:27
