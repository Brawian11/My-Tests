use db_boaleitura_equipe_5;

# Populando Tabela Clientes ###################################################
select * from cliente;
insert into cliente values 
('1','Ricado Soeiro','983.658.623-59', 'Rua Dos Mundurucus 1182, Edifício Prazeres, 5º Andar, Apt 06','(91)9 9199-9999','11/02/1999'),
('2','Amanda Silva','568.515.262-84', 'Rua Roberto Camilier 155, Edifício Gonçalves, 3º Andar, Apt 09','(91)9 9299-9999','12/11/1979'),
('3','Fabio Fonseca','846.982.855-69', 'TV. Nove de Janeriro 3248, Edifício Andorinha, 4º Andar, Apt 23','(91)9 9399-9999','13/07/1997'),
('4','Maurício Costa','229.962.589-48', 'Av. João Paulo Honório 05, Edifício Serafin, 1º Andar, Apt 34','(91)9 9499-9999','14/06/1986'),
('5','Ana dos Santos','282.842.985-65', 'Tv. Apinagés 3058, Edifício Costa Rica, 2º Andar, Apt 02','(91)9 9599-9999','15/01/1990');
ALTER TABLE cliente AUTO_INCREMENT = 1;

SELECT * FROM categoria;
INSERT INTO categoria VALUES 
(null,'Romance'), 
(null, 'CyberPunk'), 
(null, 'Ficção Científica'),
(null, 'Terror'),
(null, 'Infantil'),
(null, 'Ação'),
(null, 'Auto-Ajuda'),
(null, 'Filosofia'),
(null, 'Fantasia'),
(null, 'Religião'),
(null, 'Arte'),
(null, 'Thiller'),
(null, 'Suspense'),
(null, 'Gastronimia'),
(null, 'Ciência'),
(null, 'Biografia');
ALTER TABLE categoria AUTO_INCREMENT = 1;

# Populando Tabela Editoras ###################################################
SELECT * FROM editora;
INSERT INTO editora VALUES 
(null,'LerMais','(89) 96993-4233','Rua Docelina Mattos Freitas 05, Jurunas','78.029.582/0001-26'),
(null,'Aurora','(77) 97257-8617','Avenida 2 Edifício Dourado Apt 15','74.159.673/0001-25'),
(null,'Brasil','(43) 97444-5252','Passagem Cavalcante, Paracuri (Icoaraci) 1539','89.903.910/0001-98'),
(null,'Editora Sabedoria', '(11) 98765-4321', 'Av. das Letras, 1000 - São Paulo, SP', '12.345.678/0001-99'),
(null,'Publicações Horizonte', '(21) 99876-5432', 'Rua dos Livros, 123 - Rio de Janeiro, RJ', '23.456.789/0001-88'),
(null,'Inovação', '(31) 98765-1234', 'Praça da Cultura, 45 - Belo Horizonte, MG', '34.567.890/0001-77'),
(null,'Nova Era', '(41) 99876-5431', 'Av. dos Autores, 321 - Curitiba, PR', '45.678.901/0001-66'),
(null,'Criativa', '(51) 98765-5678', 'Rua das Publicações, 789 - Porto Alegre, RS', '56.789.012/0001-55'),
(null,'Mundo Livre', '(61) 99876-8765', 'QSD 12 Bloco A - Brasília, DF', '67.890.123/0001-44'),
(null,'Página Perfeita', '(71) 98765-8765', 'Av. dos Editores, 200 - Salvador, BA', '78.901.234/0001-33'),
(null,'Letras e Cia', '(85) 99999-0000', 'Rua das Letras, 456 - Fortaleza, CE', '89.012.345/0001-22');

ALTER TABLE livro AUTO_INCREMENT = 1;

# Populando Tabela Livros ###################################################
select * from livro;
INSERT INTO livro VALUES
(1,'O Segredo das Estrelas', 39.90, '2023-05-10', 1),
(2,'A Jornada do Herói', 49.90, '2024-01-22', 2),
(3,'Mistérios do Passado', 29.90, '2023-11-05', 3),
(4,'O Caminho da Esperança', 34.90, '2023-07-30', 4),
(5,'Segredos da Mente', 59.90, '2024-03-15', 5),
(6,'O Último Guardião', 44.90, '2024-02-12', 6),
(7,'O Guia do Viajante', 25.90, '2023-12-01', 7),
(8,'Entre Mundos', 54.90, '2023-09-25', 8),
(9,'O Enigma das Sombras', 32.90, '2023-08-14', 9),
(10,'Histórias de um Tempo Passado', 39.90, '2024-04-18', 10),
(11,'A Revolução dos Sentimentos', 46.90, '2024-06-20', 11),
(12,'A Arte da Narrativa', 52.90, '2024-07-08', 2),
(13,'O Código dos Antigos', 45.90, '2023-01-10', 1),
(14,'Entre o Real e o Imaginário', 39.90, '2020-11-22', 2),
(15,'As Aventuras do Destemido', 29.90, '2018-03-05', 3),
(16,'Mistérios da Arte', 49.90, '2015-04-10', 4),
(17,'A Revolução da Ciência', 55.90, '1998-02-28', 5),
(18,'Lendas do Novo Mundo', 34.90, '2007-12-15', 6),
(19,'O Despertar das Almas', 42.90, '2003-03-25', 7),
(20,'O Labirinto do Tempo', 59.90, '1985-05-07', 8),
(21,'A Jornada dos Iniciados', 28.90, '2014-02-14', 9),
(22,'Segredos da Floresta', 31.90, '1990-10-10', 10),
(23,'O Mapa das Estrelas', 46.90, '1970-11-01', 11),
(24,'Entre Realidades', 39.90, '2012-01-17', 11),
(25,'A Arte do Enigma', 52.90, '2008-06-12', 1),
(26,'O Poder dos Livros', 29.90, '1995-03-20', 2),
(27,'Crônicas do Destino', 48.90, '2001-05-25', 3),
(28,'A Cidade das Sombras', 54.90, '1965-09-30', 4),
(29, 'A Arte da Guerra', 39.90, '2023-03-15', 4),
(30, 'The Catcher in the Rye', 29.90, '2022-07-22', 5),
(31, 'Dom Casmurro', 34.90, '2021-11-09', 2),
(32, 'To Kill a Mockingbird', 25.90, '2023-02-13', 7),
(33, 'O Primo Basílio', 32.50, '2024-06-30', 3),
(34, '1984', 27.90, '2022-08-14', 6),
(35, 'O Alquimista', 45.00, '2021-09-01', 1),
(36, 'Pride and Prejudice', 22.90, '2020-05-20', 8),
(37, 'Memórias Póstumas de Brás Cubas', 38.90, '2023-12-25', 11),
(38, 'The Great Gatsby', 30.00, '2024-01-10', 9),
(39, 'O Morro dos Ventos Uivantes', 28.50, '2023-11-05', 10),
(40, 'Brave New World', 31.00, '2022-04-15', 5);
ALTER TABLE livro AUTO_INCREMENT = 1;
TRUNCATE TABLE livro;

# Populando Tabela Estoque ###################################################
INSERT INTO estoque VALUES
(NULL, 10, 1),
(NULL, 15, 2),
(NULL, 8, 3),
(NULL, 20, 4),
(NULL, 7, 5),
(NULL, 12, 6),
(NULL, 18, 7),
(NULL, 14, 8),
(NULL, 5, 9),
(NULL, 11, 10),
(NULL, 9, 11),
(NULL, 6, 12),
(NULL, 13, 13),
(NULL, 4, 14),
(NULL, 17, 15),
(NULL, 19, 16),
(NULL, 3, 17),
(NULL, 16, 18),
(NULL, 2, 19),
(NULL, 22, 20),
(NULL, 1, 21),
(NULL, 24, 22),
(NULL, 21, 23),
(NULL, 0, 24),
(NULL, 25, 25),
(NULL, 23, 26),
(NULL, 30, 27),
(NULL, 29, 28);

# Populando Tabela Autor ###################################################
SELECT * FROM autor;
INSERT INTO autor VALUES
(1, 'João Silva', 'Brasileira', '1975-03-15', 3),
(2, 'Maria Oliveira', 'Portuguesa', '1980-07-22', 1),
(3, 'Carlos Mendes', 'Angolana', '1968-11-09', 5),
(4, 'Ana Costa', 'Moçambicana', '1990-02-13', 2),
(5, 'Pedro Ferreira', 'Brasileira', '1985-06-30', 4),
(6, 'Luísa Souza', 'Portuguesa', '1972-10-05', 7),
(7, 'Rui Santos', 'Brasileira', '1965-12-18', 8),
(8, 'Catarina Lima', 'Portuguesa', '1992-09-25', 6),
(9, 'Miguel Almeida', 'Angolana', '1978-04-14', 9),
(10, 'Paula Martins', 'Moçambicana', '1983-01-27', 10),
(11, 'Ricardo Gonçalves', 'Brasileira', '1995-05-20', 3),
(12, 'Helena Teixeira', 'Portuguesa', '1969-08-07', 4),
(13, 'Felipe Pinto', 'Angolana', '1977-11-30', 2),
(14, 'Isabel Nunes', 'Moçambicana', '1982-12-22', 11),
(15, 'Fernando Rocha', 'Brasileira', '1974-03-03', 7),
(16, 'Mariana Ribeiro', 'Portuguesa', '1988-09-11', 5),
(17, 'André Lopes', 'Angolana', '1981-02-28', 1),
(18, 'Patrícia Gomes', 'Moçambicana', '1993-06-06', 6),
(19, 'Eduardo Barbosa', 'Brasileira', '1971-04-19', 8),
(20, 'Sofia Dias', 'Portuguesa', '1996-11-16', 9),
(21, 'Beatriz Cardoso', 'Brasileira', '1979-02-21', 2),
(22, 'Thiago Pires', 'Portuguesa', '1984-03-14', 5),
(23, 'Joana Figueiredo', 'Moçambicana', '1991-07-19', 1),
(24, 'Gustavo Vieira', 'Angolana', '1986-10-12', 10),
(25, 'Lara Fonseca', 'Portuguesa', '1973-08-08', 11);

# Populando Tabela Funcionario ###################################################
select * from funcionario;
INSERT INTO funcionario VALUES
(null, 'Andrey Soeiro', 'ricardosoeiro2711@gmail.com','(91)99814-5313', '049.337.332-28', 'rickwin27','132127','132127','2000-11-27');
ALTER TABLE cliente AUTO_INCREMENT = 1;

select * from livro_autor;
insert into  livro_autor values
(1, 5, 10),
(2, 3, 7),
(3, 12, NULL),
(4, 1, 13),
(5, 9, NULL),
(6, 4, 18),
(7, 2, NULL),
(8, 15, 21),
(9, 14, NULL),
(10, 8, 6),
(11, 11, NULL),
(12, 22, 19),
(13, 17, NULL),
(14, 23, 2),
(15, 24, NULL),
(16, 25, 4),
(17, 10, NULL),
(18, 3, 7),
(19, 16, NULL),
(20, 1, 5),
(21, 13, NULL),
(22, 6, 9),
(23, 12, NULL),
(24, 14, 8),
(25, 7, NULL),
(26, 20, 3),
(27, 22, NULL),
(28, 21, 15),
(29, 19, NULL),
(30, 4, 2),
(31, 18, NULL),
(32, 9, 24),
(33, 17, NULL),
(34, 5, 11),
(35, 16, NULL),
(36, 8, 13),
(37, 25, NULL),
(38, 1, 7),
(39, 6, NULL),
(40, 15, 22);


select * from livro_categoria;
insert into livro_categoria values
(1, 3, 5),
(2, 7, NULL),
(3, 2, 10),
(4, 1, NULL),
(5, 6, 14),
(6, 9, NULL),
(7, 4, 8),
(8, 11, NULL),
(9, 5, 12),
(10, 13, NULL),
(11, 2, 7),
(12, 8, 3),
(13, 1, NULL),
(14, 6, 15),
(15, 9, NULL),
(16, 10, 2),
(17, 12, NULL),
(18, 4, 13),
(19, 11, NULL),
(20, 14, 7),
(21, 15, NULL),
(22, 16, 4),
(23, 3, NULL),
(24, 5, 6),
(25, 7, NULL),
(26, 10, 11),
(27, 12, NULL),
(28, 8, 1),
(29, 13, NULL),
(30, 14, 9),
(31, 2, NULL),
(32, 16, 5),
(33, 15, NULL),
(34, 6, 10),
(35, 4, NULL),
(36, 9, 14),
(37, 11, NULL),
(38, 13, 16),
(39, 7, NULL),
(40, 8, 3);
ALTER TABLE livro_categoria AUTO_INCREMENT = 1;