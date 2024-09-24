# Criação e especificação dos tipos de dados que serão trabalhados nesse banco de dados.-------------------------
# create database rick_ltda_db
# character set utf8mb4 default collate utf8mb4_general_ci;

# Comando para usar o banco de dados criado.
# use rick_ltda_db;

# Comando para criar uma tabela e seus tipos de dados.------------------------------------------------------------
create table cliente (
id_cliente int not null primary key auto_increment,
nome_cliente varchar(50) not null,
data_nascimento date not null
);

create table produto (
id_produto int not null primary key auto_increment,
nome_produto varchar(50) not null,
valor_produto decimal(6,2) not null
);

create table venda (
id_venda int not null primary key auto_increment,
valor_venda decimal (7,2) not null,
data_venda date not null,
cliente_id int not null,
constraint fk_cliente foreign key (cliente_id) references cliente (id_cliente)
);

# Criar uma tabela auxiliar quando ouver relações muitos-muitos. ------------------------------------------
create table vend_produto(
venda_id int not null,
produto_id int not null,
constraint fk_venda foreign key (venda_id) references venda (id_venda),
constraint fk_produto foreign key (produto_id) references produto (id_produto)
);

# Comando para inserir dados dentros das colunas
insert into cliente (nome_cliente, data_nascimento) values ('Andrey Ricardo','2000-11-27-'),('Andre Ricardo','1973-12-22-'),('Rosileide','1974-06-13')
,('Antonio Silva','1999-05-25'),('Natan Alves','1990-02-15');

select * from cliente;

#1º Froma de inserir dados
insert into produto (nome_produto, valor_produto) values ('HD 2 TB Seagate', 765.34),('Placa Mãe Asus B550 DDR4', 874.00),
('Placa de Video RTX 4090 TI', 3560.65),('PLaca de Som Logitech', 187.00),('PLaca de Rede Realteck', 135.67),
('Cabo HDMI 4K 120FPS', 75.50),('Cabo HDMI 4K 120FPS', 75.50),('Processador I9 12700K',3950.99);
#2º Forma de inserir dados

insert into produto values (null, 'HD 2 TB Seagate', 765.34);
insert into produto values (null, 'Placa Mãe Asus B550 DDR4', 874.00);
insert into produto values (null, 'Placa de Video RTX 4090 TI', 3560.65);
insert into produto values (null, 'PLaca de Som Logitech', 187.00);
insert into produto values (null, 'PLaca de Rede Realteck', 135.67);
insert into produto values (null, 'Cabo HDMI 4K 120FPS', 75.50);
insert into produto values (null, 'Processador I9 12700K',3950,99);
insert into produto values (null, 'SSD NVME 1TB',360.90);

select * from produto;
ALTER TABLE produto AUTO_INCREMENT = 8;