-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 192.168.61.166    Database: db_boaleitura_equipe_5
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `livro_autor`
--

DROP TABLE IF EXISTS `livro_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro_autor` (
  `livro_id` int NOT NULL,
  `autor_id` int NOT NULL,
  `autor_id_2` int DEFAULT NULL,
  PRIMARY KEY (`livro_id`,`autor_id`),
  KEY `fk_livro_has_autor_autor1_idx` (`autor_id`),
  KEY `fk_livro_has_autor_livro1_idx` (`livro_id`),
  KEY `fk_livro_autor_2_idx` (`autor_id_2`),
  CONSTRAINT `fk_livro_autor_2` FOREIGN KEY (`autor_id_2`) REFERENCES `autor` (`id_autor`),
  CONSTRAINT `fk_livro_has_autor_autor1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id_autor`),
  CONSTRAINT `fk_livro_has_autor_livro1` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro_autor`
--

LOCK TABLES `livro_autor` WRITE;
/*!40000 ALTER TABLE `livro_autor` DISABLE KEYS */;
INSERT INTO `livro_autor` VALUES (3,12,NULL),(5,9,NULL),(7,2,NULL),(9,14,NULL),(11,11,NULL),(13,17,NULL),(15,24,NULL),(17,10,NULL),(19,16,NULL),(21,13,NULL),(23,12,NULL),(25,7,NULL),(27,22,NULL),(29,19,NULL),(31,18,NULL),(33,17,NULL),(35,16,NULL),(37,25,NULL),(39,6,NULL),(14,23,2),(30,4,2),(26,20,3),(16,25,4),(20,1,5),(10,8,6),(2,3,7),(18,3,7),(38,1,7),(24,14,8),(22,6,9),(1,5,10),(34,5,11),(4,1,13),(36,8,13),(28,21,15),(6,4,18),(12,22,19),(8,15,21),(40,15,22),(32,9,24);
/*!40000 ALTER TABLE `livro_autor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 11:42:21
