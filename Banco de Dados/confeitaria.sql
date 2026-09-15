CREATE DATABASE db_confeitaria

USE db_confeitaria;

CREATE TABLE tbl_cliente (
	codigo_cliente INT,
	nome VARCHAR(100),
	endereco  VARCHAR(100),
	PRIMARY KEY (codigo_cliente)
);

INSERT INTO tbl_cliente(codigo_cliente, nome, endereco) VALUES
	(99534, 'Mariana Alves Monteiro', 'Rua das Acácias, 123, Jardim Primavera, São Paulo - SP'),
	(72539, 'Gabriel Henrique Duarte', 'Avenida dos Ipês, 456, Vila Horizonte, Campinas - SP'),
	(98532, 'Beatriz Fernanda Oliveira', 'Rua do Sol Nascente, 789, Parque das Flores, Curitiba - PR'),
	(55432, 'Lucas Rafael Martins', 'Alameda das Palmeiras, 321, Bosque Azul, Belo Horizonte - MG'),
	(18276, 'Kléber João Souza', 'Alameda dos Corinthians, 758, Campo Verde, Porto Velho - RS');



CREATE TABLE tbl_pedido (
	codigo_pedido INT,
	data_pedido VARCHAR(10),
	valor_total VARCHAR(10),
	PRIMARY KEY (codigo_pedido)
);

INSERT INTO tbl_pedido (codigo_pedido, data_pedido, valor_total) VALUES
	(48317, '14/03/2027', 'R$569,55'),
	(72604, '22/05/2027', 'R$634,45'),
	(19582, '07/08/2027', 'R$612,87'),
	(63149, '19/11/2027', 'R$587,34'),
	(72145, '22/03/2027', 'R$114,33');


CREATE TABLE tbl_telefone_cliente (
	codigo_cliente INT,
	telefone VARCHAR(14),
	PRIMARY KEY (codigo_cliente)
);

INSERT INTO tbl_telefone_cliente (codigo_cliente, telefone) VALUES
	(123456, '(11)92763-6553'),
	(234567, '(11)92390-8878'),
	(345678, '(11)91122-4344'),
	(456789, '(11)97655-6543'),
	(278193, '(11)92265-6426');



CREATE TABLE tbl_produto (
	codigo_produto INT,
	valor_kg VARCHAR(10),
	descricao VARCHAR(100),
	PRIMARY KEY (codigo_produto)
);

INSERT INTO tbl_produto (codigo_produto, valor_kg, descricao) VALUES
	(76333, 'R$65,53', 'Lindo demais.'),
	(93887, 'R$12,32', 'Muito grande.'),
	(32097, 'R$90,10', 'Muito Gostoso.'),
	(45285, 'R$20,21', 'Sensível demais.'),
	(22826, 'R$30,90', 'Raro e difícil de encontrar');



CREATE TABLE tbl_item_pedido (
	codigo_produto INT,
	codigo_pedido INT,
	quantidade INT,
	PRIMARY KEY (codigo_produto)
);

INSERT INTO tbl_item_pedido (codigo_produto, codigo_pedido, quantidade) VALUES
	(1256, 010, 5),
	(4567, 003, 2),
	(3478, 040, 10),
	(4789, 102, 6),
	(2193, 087, 3);


--Excluir tabelas
	DROP TABLE tbl_cliente
	DROP TABLE tbl_pedido
	DROP TABLE tbl_telefone_cliente
	DROP TABLE tbl_produto
	DROP TABLE tbl_item_pedido


--Realizar consultas nas tabelas
	SELECT * FROM tbl_cliente;
	SELECT * FROM tbl_telefone_cliente;
	SELECT * FROM tbl_produto;
	SELECT * FROM tbl_telefone_cliente;
	SELECT * FROM tbl_item_pedido;