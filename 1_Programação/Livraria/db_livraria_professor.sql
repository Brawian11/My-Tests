-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20-Ago-2024 às 13:04
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nacionalidade` varchar(45) NOT NULL,
  `ano_nascimento` year NOT NULL,
  `editora_id` int NOT NULL,
  PRIMARY KEY (`id_autor`),
  KEY `fk_autor_editora1_idx` (`editora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome`, `nacionalidade`, `ano_nascimento`, `editora_id`) VALUES
(1, 'Marcel Solto Maior', 'Brasileiro', 1965, 1),
(2, 'Walter Galvani', 'Brasileiro', 1934, 1),
(3, 'Érico Veríssimo', 'Brasileiro', 1905, 1),
(4, 'Henrique Carneiro', 'Brasileiro', 1959, 2),
(5, 'Luiz Felipe Pondé', 'Brasileiro', 1959, 2),
(6, 'Tati Bernardi', 'Brasileira', 1979, 2),
(7, 'Roberto Pompeu de Toledo', 'Brasileiro', 1944, 2),
(8, 'Lourentino Gomes', 'Brasileiro', 1956, 2),
(9, 'Mario Sergio Cortela', 'Brasileiro', 1954, 22),
(10, 'Leandro Karnal', 'Brasileiro', 1963, 3),
(11, 'Eros Grau', 'Brasileiro', 1940, 4),
(12, 'Mary Del Priore', 'Brasileira', 1952, 22),
(13, 'Victor Hugo', 'Frances', 1945, 4),
(14, 'Jane Austen', 'Ingles', 1933, 4),
(15, 'Carlos Fuentes', 'Mexicano', 1928, 4),
(16, 'Gabriel', 'colonbia', 1927, 5),
(17, 'wiliam', 'inglaterra', 1951, 5),
(18, 'carlos', ' brasil', 1902, 5),
(19, 'edigar', 'estados unidos', 1922, 5),
(20, 'clarice', 'ucrania', 1920, 6),
(21, 'miguel', 'espanha', 1925, 6),
(22, 'Gabriel', 'colonbia', 1927, 6),
(23, 'wiliam', 'inglaterra', 1910, 7),
(24, 'carlos', ' brasil', 1902, 7),
(25, 'edigar', 'estados unidos', 1915, 7),
(26, 'clarice', 'ucrania', 1920, 7),
(27, 'clarice lispector', 'ucrania', 1920, 25),
(28, 'edigar allan poe', 'estados unidos', 1930, 8),
(29, 'carlos drummond de andrade', ' brasil', 1902, 8),
(30, 'wiliam shakespeare', 'inglaterra', 1935, 8),
(31, 'Gabriel garcia marquez', 'colonbia', 1927, 6),
(32, 'silva', 'Brasileiro', 1954, 9),
(33, 'Leandro Karnal', 'Brasileiro', 1963, 19),
(34, 'Eros Grau', 'Brasileiro', 1940, 26),
(35, 'Mary Del Priore', 'Brasileira', 1952, 9),
(36, 'Victor Hugo', 'Frances', 1936, 9),
(37, 'Jane Austen', 'Ingles', 1947, 9),
(38, 'Carlos Fuentes', 'Mexicano', 1928, 25),
(39, 'Victor Hugo', 'Frances', 1944, 10),
(40, 'Jane Austen', 'Ingles', 1959, 10),
(41, 'Carlos Fuentes', 'Mexicano', 1928, 25),
(42, 'paulo coelho', 'brasil', 1947, 10),
(43, 'jorge luis borges', 'argentina', 1920, 10),
(44, 'fiodor dostoievski', 'russia', 1960, 11),
(45, 'liev tolstoi1', 'russia', 1977, 11),
(46, 'stephe king', 'estados unidos', 1947, 11),
(47, 'machado de assis', 'brasil', 1901, 12),
(48, 'miguel de cervantes', 'espanha', 1932, 12),
(49, 'Romeu', 'Brasileiro', 1954, 12),
(50, 'Leandro Karnal', 'Brasileiro', 1963, 13),
(51, 'Eros Grau', 'Brasileiro', 1940, 13),
(52, 'Mary Del Priore', 'Brasileira', 1952, 14),
(53, 'Victor Hugo', 'Frances', 1911, 14),
(54, 'Jane Austen', 'Ingles', 1911, 15),
(55, 'Carlos Fuentes', 'Mexicano', 1928, 15),
(56, 'jorge leal amado', 'brasil', 1912, 15),
(57, 'cecilia meireles', 'brasil', 1901, 17),
(58, 'Edgar Allan Poe', 'Estados Unidos', 1975, 21),
(59, 'Leo Tolstoy ', 'Russia', 1988, 21),
(60, 'Charles Dickens', 'Inglaterra', 1989, 21),
(61, 'Ernest Hemingway', 'Estados Unidos', 1901, 22),
(62, 'Fyodor Dostoevsky', 'Russia', 1913, 17),
(63, 'Jorge Luis Borges', 'Argentina', 1910, 18),
(64, 'William Shakespeare', 'Inglaterra', 1944, 18),
(65, 'Carlos Heitor Cony', 'Brasileiro', 1926, 19),
(66, 'Lygia Bojunga Nunes', 'Brasileira', 1932, 19),
(67, 'Adonias Filho', 'Brasileiro', 1915, 20),
(68, 'Hilda Hilst', 'Brasileira', 1930, 21),
(69, 'Ignácio de Loyola Brandão', 'Brasileiro', 1936, 13),
(70, 'Guimarães Rosa', 'Brasileiro', 1908, 23),
(71, 'Lygia Fagundes Telles', 'Brasileira', 1923, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `pref_leitura` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `conf_senha` varchar(45) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `pref_leitura`, `email`, `login`, `senha`, `conf_senha`, `data_nascimento`) VALUES
(1, 'kailane tavares', 'Suspense', 'kailane@gmail.com', 'kaila', '123456', '123456', '1989-06-12'),
(2, 'Paulo Roberto', 'Aventura', 'robert@gmail.com', 'pool', '123456', '123456', '1980-03-23'),
(3, 'Ana Maria', 'infantil', 'anamaria@hotmail.com', 'ana', '654321', '654321', '1999-06-20'),
(4, 'Barbara Lima', 'emprendedorismo', 'lima@hotmail.com', 'lima', '654321', '654321', '1975-02-14'),
(5, 'carlos Alberto', 'documentaria', 'carlosalberto@yahoo.com', 'albert', '123456', '123456', '1960-12-23'),
(6, 'Daniel alcantara', 'romance', 'alcantara@gmail.com', 'dani', '456321', '456321', '2001-09-12'),
(7, 'elias silva', 'sucesso', 'silvaelias@hotmail.com', 'silva', '123456', '123456', '2002-10-08'),
(8, 'João Gomes', 'comedia', 'gomes@gmail.com', 'gomes', '123456', '123456', '2012-09-11'),
(9, 'Francisco de Assis', 'romance', '', '', '', '', NULL),
(10, 'maria isabel', 'religioso', '', '', '', '', NULL),
(11, 'agenor oliveira', 'romance', '', '', '', '', NULL),
(12, 'gabriel raiol', 'religioso', '', '', '', '', NULL),
(13, '123', 'contos', 'arthur brasil', 'brasil@gmail.com', 'brasil', '123', '0000-00-00'),
(14, '123', 'tecnologia', 'romulo oliveira', 'romulo@gmail.com', 'romulo', '123', '2024-06-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

DROP TABLE IF EXISTS `editora`;
CREATE TABLE IF NOT EXISTS `editora` (
  `id_editora` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome`) VALUES
(1, 'charlote'),
(2, 'brasil'),
(3, 'blivros'),
(4, 'saraiva'),
(5, 'aquarela'),
(6, 'nova vida'),
(7, 'vida nova'),
(8, 'pegassus'),
(9, 'aleph'),
(10, 'suma'),
(11, 'editora intrinseca'),
(12, 'grupo editorial record'),
(13, 'globo livros'),
(14, 'harper collins'),
(15, 'editora arqueiro'),
(16, 'leya'),
(17, 'FTD'),
(18, 'SEXTANTE'),
(19, 'GENTE'),
(20, 'VOO'),
(21, 'PRINCIPIS'),
(22, 'editora sextante'),
(23, 'ediouro'),
(24, 'panda books'),
(25, 'ftd'),
(26, 'ubu'),
(27, 'alta books'),
(28, 'aleph'),
(29, 'chiado grupo editoral'),
(30, 'edicoes loyola'),
(31, 'editora record'),
(32, 'draco'),
(33, 'gente'),
(34, 'martin claret'),
(35, 'escala'),
(36, 'moderna'),
(37, 'melhoramentos'),
(38, 'grupo pensamento'),
(39, 'companhia das letras'),
(40, 'editora rocco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `confirma_senha` varchar(45) NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2348 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `email`, `telefone`, `cpf`, `login`, `senha`, `confirma_senha`, `data_nascimento`) VALUES
(3, 'Antonio Queiroz', 'queiroz@gmail.com', '98823-3456', '234.546.123-67', 'queiroz', '123456', '123456', '1980-06-23'),
(4, 'Carlos Monteiro', 'monteiro@hotmail.com', '98114-4567', '123.435.678-45', 'caca', '456321', '456321', '1978-02-12'),
(5, 'Jose Vieira', 'vieira@gomail.com', '98874-5625', '789.325.456-47', 'jovi', '123456', '123456', '1980-04-07'),
(6, 'tharcisio', 'tharcisioaugusto@gmail.com', '988537238', '12345678945', 'tharcisio', '123456', '123456', '2025-03-31'),
(7, 'rildo', 'rildo@gmail.com', '988443623', '123456789011', 'spok', '123456', '123456', '2024-05-15'),
(8, 'thayssa nascimento', 'thayssa@gmail.com', '91988881478', '22233355513', 'thay', '2910', '2910', '0000-00-00'),
(9, '', '', '', '', '', '', '', '2024-06-13'),
(2345, 'Jose Antonio', 'antonio@gmail.com', '91991483850', '123.456.789-12', 'jose', '123456789', '123456789', '1977-06-20'),
(2346, 'wellingto mello', 'wellingto@gmail.com', '91 988877123', '11133344467', 'well', '123456789', '123456789', '2017-12-18'),
(2347, 'patrick nascimento', 'patrick@gmail.com', '91 988882222', '11122266678', 'trick', '6789', '6789', '2024-06-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

DROP TABLE IF EXISTS `livro`;
CREATE TABLE IF NOT EXISTS `livro` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `edicao` varchar(45) NOT NULL,
  `ano` date NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `categoria` varchar(60) NOT NULL,
  `idioma` varchar(45) NOT NULL,
  `isbn` varchar(45) NOT NULL,
  PRIMARY KEY (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `nome`, `edicao`, `ano`, `quantidade`, `categoria`, `idioma`, `isbn`) VALUES
(1, 'aladim', 'especial', '1950-02-03', '21', 'infantil', '', ''),
(2, 'codigo', 'dois', '1899-03-22', '22', 'aleatorio', '', ''),
(3, 'perpeto', 'tres', '1894-03-12', '16', 'aleatorio', '', ''),
(4, 'biblia', 'quatro', '1892-04-09', '36', 'Religioso', '', ''),
(5, 'lapona', 'especial', '1892-04-02', '27', 'leitura', '', ''),
(6, 'gimg', 'especial', '1892-06-08', '44', 'leitura', '', ''),
(7, 'A arte da Guerra', 'especial', '1895-06-07', '89', 'estrategia', '', ''),
(8, 'O colecionador', 'Colecionador', '1995-06-06', '33', 'Suspense', '', ''),
(9, 'Um defeito de Cor', 'edicao especial', '1995-07-10', '44', 'Romance', '', ''),
(10, 'Dracula', 'edicao Portugues', '1994-07-08', '35', 'Terror', '', ''),
(11, 'O milagre do Amanha', 'Diario', '1997-10-08', '46', 'Coportamental', '', ''),
(12, 'O Diario de Anne frank', 'edição Oficial', '1998-10-09', '27', 'Biografia', '', ''),
(13, 'O cavaleiro dos sete Reinos', 'edição Oficial', '1999-09-09', '37', 'Guerra', '', ''),
(14, 'Mas esperto que o diabo', 'edição Oficial', '2002-09-02', '23', 'Coportamental', '', ''),
(15, 'A Arte da Guerra', 'Audiobook', '2003-09-02', '35', 'estrategia', '', ''),
(16, 'As cronicas de Narnias', 'Coleção luxo', '2003-09-06', '22', 'Ficçâo', '', ''),
(17, 'star war', 'colecionador', '2003-08-06', '35', 'Ficção', '', ''),
(18, 'Fahrenheit 451', 'Coleção luxo', '2004-08-06', '68', 'Ficção', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro_autor`
--

DROP TABLE IF EXISTS `livro_autor`;
CREATE TABLE IF NOT EXISTS `livro_autor` (
  `livro_id` int NOT NULL,
  `autor_id` int NOT NULL,
  PRIMARY KEY (`livro_id`,`autor_id`),
  KEY `fk_livro_has_autor_autor1_idx` (`autor_id`),
  KEY `fk_livro_has_autor_livro_idx` (`livro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro_autor`
--

INSERT INTO `livro_autor` (`livro_id`, `autor_id`) VALUES
(3, 1),
(4, 1),
(5, 1),
(8, 1),
(12, 1),
(2, 2),
(3, 2),
(5, 2),
(8, 2),
(2, 3),
(3, 3),
(8, 3),
(11, 3),
(2, 4),
(3, 4),
(4, 4),
(6, 4),
(10, 4),
(14, 4),
(17, 4),
(2, 5),
(4, 5),
(6, 5),
(11, 5),
(12, 5),
(7, 6),
(8, 6),
(16, 6),
(3, 7),
(5, 7),
(6, 7),
(8, 7),
(10, 7),
(14, 7),
(6, 8),
(11, 8),
(18, 8),
(4, 9),
(18, 9),
(3, 10),
(4, 10),
(10, 10),
(16, 10),
(8, 11),
(15, 11),
(4, 12),
(11, 12),
(2, 13),
(3, 13),
(5, 13),
(9, 13),
(3, 14),
(10, 14),
(11, 14),
(16, 14),
(18, 14),
(8, 15),
(15, 15),
(4, 16),
(5, 16),
(6, 16),
(11, 16),
(4, 17),
(15, 17),
(3, 18),
(5, 18),
(11, 18),
(3, 19),
(4, 19),
(5, 19),
(5, 20),
(8, 20),
(15, 20),
(2, 21),
(5, 21),
(1, 22),
(13, 22),
(16, 22),
(7, 23),
(8, 23),
(2, 24),
(17, 24),
(3, 25),
(5, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro_pedido`
--

DROP TABLE IF EXISTS `livro_pedido`;
CREATE TABLE IF NOT EXISTS `livro_pedido` (
  `livro_id` int NOT NULL,
  `pedido_id` int NOT NULL,
  `data_pedido` date DEFAULT NULL,
  PRIMARY KEY (`livro_id`,`pedido_id`),
  KEY `fk_livro_has_pedido_pedido1_idx` (`pedido_id`),
  KEY `fk_livro_has_pedido_livro1_idx` (`livro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro_pedido`
--

INSERT INTO `livro_pedido` (`livro_id`, `pedido_id`, `data_pedido`) VALUES
(1, 2, '2024-02-12'),
(1, 3, '2024-02-09'),
(1, 8, '2024-01-11'),
(2, 2, '2024-02-12'),
(2, 7, '2024-01-11'),
(2, 9, '2024-01-13'),
(3, 5, '2024-01-10'),
(3, 9, '2024-01-13'),
(3, 22, '2024-03-14'),
(4, 2, '2024-03-21'),
(4, 4, '2024-02-07'),
(5, 3, '2024-02-07'),
(5, 7, '2024-03-11'),
(5, 14, '2024-02-15'),
(7, 5, '2024-03-16'),
(9, 4, '2024-03-20'),
(9, 8, '2024-02-24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_cliente1_idx` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `cliente_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 5),
(13, 5),
(14, 6),
(15, 7),
(16, 7),
(17, 8),
(18, 9),
(19, 9),
(20, 9),
(21, 9),
(22, 9),
(23, 10),
(24, 10),
(25, 11),
(26, 11),
(27, 11),
(28, 11),
(29, 11),
(30, 12),
(31, 12),
(32, 12);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `fk_editora` FOREIGN KEY (`editora_id`) REFERENCES `editora` (`id_editora`);

--
-- Limitadores para a tabela `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD CONSTRAINT `fk_autor` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `livro_autor_ibfk_1` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id_livro`);

--
-- Limitadores para a tabela `livro_pedido`
--
ALTER TABLE `livro_pedido`
  ADD CONSTRAINT `fk_livro` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id_livro`),
  ADD CONSTRAINT `fk_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id_pedido`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_cliente_pedido` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
