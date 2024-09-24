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
-- Table structure for table `livro_categoria`
--

DROP TABLE IF EXISTS `livro_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro_categoria` (
  `livro_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  `categoria_id_2` int DEFAULT NULL,
  PRIMARY KEY (`livro_id`,`categoria_id`),
  KEY `fk_livro_has_categoria_categoria1_idx` (`categoria_id`),
  KEY `fk_livro_has_categoria_livro1_idx` (`livro_id`),
  KEY `fk_livro_categoria_2_idx` (`categoria_id_2`),
  CONSTRAINT `fk_livro_categoria_2` FOREIGN KEY (`categoria_id_2`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `fk_livro_has_categoria_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `fk_livro_has_categoria_livro1` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro_categoria`
--

LOCK TABLES `livro_categoria` WRITE;
/*!40000 ALTER TABLE `livro_categoria` DISABLE KEYS */;
INSERT INTO `livro_categoria` VALUES (2,7,NULL),(4,1,NULL),(6,9,NULL),(8,11,NULL),(10,13,NULL),(13,1,NULL),(15,9,NULL),(17,12,NULL),(19,11,NULL),(21,15,NULL),(23,3,NULL),(25,7,NULL),(27,12,NULL),(29,13,NULL),(31,2,NULL),(33,15,NULL),(35,4,NULL),(37,11,NULL),(39,7,NULL),(28,8,1),(16,10,2),(12,8,3),(40,8,3),(22,16,4),(1,3,5),(32,16,5),(24,5,6),(11,2,7),(20,14,7),(7,4,8),(30,14,9),(3,2,10),(34,6,10),(26,10,11),(9,5,12),(18,4,13),(5,6,14),(36,9,14),(14,6,15),(38,13,16);
/*!40000 ALTER TABLE `livro_categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 11:29:46
