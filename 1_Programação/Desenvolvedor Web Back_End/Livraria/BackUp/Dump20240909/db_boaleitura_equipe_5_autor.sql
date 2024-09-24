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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nacionalidade` varchar(45) NOT NULL,
  `data_nascimento` varchar(10) NOT NULL,
  `editora_id_editora` int NOT NULL,
  PRIMARY KEY (`id_autor`),
  KEY `fk_autor_editora1_idx` (`editora_id_editora`),
  CONSTRAINT `fk_autor_editora1` FOREIGN KEY (`editora_id_editora`) REFERENCES `editora` (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'João Silva','Brasileira','1975-03-15',3),(2,'Maria Oliveira','Portuguesa','1980-07-22',1),(3,'Carlos Mendes','Angolana','1968-11-09',5),(4,'Ana Costa','Moçambicana','1990-02-13',2),(5,'Pedro Ferreira','Brasileira','1985-06-30',4),(6,'Luísa Souza','Portuguesa','1972-10-05',7),(7,'Rui Santos','Brasileira','1965-12-18',8),(8,'Catarina Lima','Portuguesa','1992-09-25',6),(9,'Miguel Almeida','Angolana','1978-04-14',9),(10,'Paula Martins','Moçambicana','1983-01-27',10),(11,'Ricardo Gonçalves','Brasileira','1995-05-20',3),(12,'Helena Teixeira','Portuguesa','1969-08-07',4),(13,'Felipe Pinto','Angolana','1977-11-30',2),(14,'Isabel Nunes','Moçambicana','1982-12-22',11),(15,'Fernando Rocha','Brasileira','1974-03-03',7),(16,'Mariana Ribeiro','Portuguesa','1988-09-11',5),(17,'André Lopes','Angolana','1981-02-28',1),(18,'Patrícia Gomes','Moçambicana','1993-06-06',6),(19,'Eduardo Barbosa','Brasileira','1971-04-19',8),(20,'Sofia Dias','Portuguesa','1996-11-16',9),(21,'Beatriz Cardoso','Brasileira','1979-02-21',2),(22,'Thiago Pires','Portuguesa','1984-03-14',5),(23,'Joana Figueiredo','Moçambicana','1991-07-19',1),(24,'Gustavo Vieira','Angolana','1986-10-12',10),(25,'Lara Fonseca','Portuguesa','1973-08-08',11);
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 11:42:22
