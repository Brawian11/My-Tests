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
  `valor` decimal(6,2) NOT NULL,
  `ano_edição` date NOT NULL,
  `id_editora` int NOT NULL,
  PRIMARY KEY (`id_livro`),
  KEY `fk_livro_editora1_idx` (`id_editora`),
  CONSTRAINT `fk_livro_editora1` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'O Segredo das Estrelas',39.90,'2023-05-10',1),(2,'A Jornada do Herói',49.90,'2024-01-22',2),(3,'Mistérios do Passado',29.90,'2023-11-05',3),(4,'O Caminho da Esperança',34.90,'2023-07-30',4),(5,'Segredos da Mente',59.90,'2024-03-15',5),(6,'O Último Guardião',44.90,'2024-02-12',6),(7,'O Guia do Viajante',25.90,'2023-12-01',7),(8,'Entre Mundos',54.90,'2023-09-25',8),(9,'O Enigma das Sombras',32.90,'2023-08-14',9),(10,'Histórias de um Tempo Passado',39.90,'2024-04-18',10),(11,'A Revolução dos Sentimentos',46.90,'2024-06-20',11),(12,'A Arte da Narrativa',52.90,'2024-07-08',2),(13,'O Código dos Antigos',45.90,'2023-01-10',1),(14,'Entre o Real e o Imaginário',39.90,'2020-11-22',2),(15,'As Aventuras do Destemido',29.90,'2018-03-05',3),(16,'Mistérios da Arte',49.90,'2015-04-10',4),(17,'A Revolução da Ciência',55.90,'1998-02-28',5),(18,'Lendas do Novo Mundo',34.90,'2007-12-15',6),(19,'O Despertar das Almas',42.90,'2003-03-25',7),(20,'O Labirinto do Tempo',59.90,'1985-05-07',8),(21,'A Jornada dos Iniciados',28.90,'2014-02-14',9),(22,'Segredos da Floresta',31.90,'1990-10-10',10),(23,'O Mapa das Estrelas',46.90,'1970-11-01',11),(24,'Entre Realidades',39.90,'2012-01-17',11),(25,'A Arte do Enigma',52.90,'2008-06-12',1),(26,'O Poder dos Livros',29.90,'1995-03-20',2),(27,'Crônicas do Destino',48.90,'2001-05-25',3),(28,'A Cidade das Sombras',54.90,'1965-09-30',4),(29,'A Arte da Guerra',39.90,'2023-03-15',4),(30,'The Catcher in the Rye',29.90,'2022-07-22',5),(31,'Dom Casmurro',34.90,'2021-11-09',2),(32,'To Kill a Mockingbird',25.90,'2023-02-13',7),(33,'O Primo Basílio',32.50,'2024-06-30',3),(34,'1984',27.90,'2022-08-14',6),(35,'O Alquimista',45.00,'2021-09-01',1),(36,'Pride and Prejudice',22.90,'2020-05-20',8),(37,'Memórias Póstumas de Brás Cubas',38.90,'2023-12-25',11),(38,'The Great Gatsby',30.00,'2024-01-10',9),(39,'O Morro dos Ventos Uivantes',28.50,'2023-11-05',10),(40,'Brave New World',31.00,'2022-04-15',5);
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

-- Dump completed on 2024-09-09 11:42:21
