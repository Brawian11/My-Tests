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
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `num_pagina` int NOT NULL,
  `quantidade` int NOT NULL,
  `ano` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `idioma` varchar(15) NOT NULL,
  `tipo_capa` varchar(10) NOT NULL,
  PRIMARY KEY (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'O Segredo das Estrelas',2023,40,'','','',''),(2,'A Jornada do Herói',2024,50,'','','',''),(3,'Mistérios do Passado',2023,30,'','','',''),(4,'O Caminho da Esperança',2023,35,'','','',''),(5,'Segredos da Mente',2024,60,'','','',''),(6,'O Último Guardião',2024,45,'','','',''),(7,'O Guia do Viajante',2023,26,'','','',''),(8,'Entre Mundos',2023,55,'','','',''),(9,'O Enigma das Sombras',2023,33,'','','',''),(10,'Histórias de um Tempo Passado',2024,40,'','','',''),(11,'A Revolução dos Sentimentos',2024,47,'','','',''),(12,'A Arte da Narrativa',2024,53,'','','',''),(13,'O Código dos Antigos',2023,46,'','','',''),(14,'Entre o Real e o Imaginário',2020,40,'','','',''),(15,'As Aventuras do Destemido',2018,30,'','','',''),(16,'Mistérios da Arte',2015,50,'','','',''),(17,'A Revolução da Ciência',1998,56,'','','',''),(18,'Lendas do Novo Mundo',2007,35,'','','',''),(19,'O Despertar das Almas',2003,43,'','','',''),(20,'O Labirinto do Tempo',1985,60,'','','',''),(21,'A Jornada dos Iniciados',2014,29,'','','',''),(22,'Segredos da Floresta',1990,32,'','','',''),(23,'O Mapa das Estrelas',1970,47,'','','',''),(24,'Entre Realidades',2012,40,'','','',''),(25,'A Arte do Enigma',2008,53,'','','',''),(26,'O Poder dos Livros',1995,30,'','','',''),(27,'Crônicas do Destino',2001,49,'','','',''),(28,'A Cidade das Sombras',1965,55,'','','',''),(29,'A Arte da Guerra',2023,40,'','','',''),(30,'The Catcher in the Rye',2022,30,'','','',''),(31,'Dom Casmurro',2021,35,'','','',''),(32,'To Kill a Mockingbird',2023,26,'','','',''),(33,'O Primo Basílio',2024,33,'','','',''),(34,'1984',2022,28,'','','',''),(35,'O Alquimista',2021,45,'','','',''),(36,'Pride and Prejudice',2020,23,'','','',''),(37,'Memórias Póstumas de Brás Cubas',2023,39,'','','',''),(38,'The Great Gatsby',2024,30,'','','',''),(39,'O Morro dos Ventos Uivantes',2023,29,'','','',''),(40,'Brave New World',2022,31,'','','',''),(41,'A volta Dos Que Não Foram',369,3,'1989-06-18','Comédia','Brasileiro','Capa Dura');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
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
