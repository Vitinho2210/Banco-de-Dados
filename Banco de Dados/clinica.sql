CREATE DATABASE db_clinica

USE db_clinica;

CREATE TABLE tbl_paciente (
	rg_paciente VARCHAR(20),
	nome VARCHAR(100),
	endereco  VARCHAR(100),
	convenio VARCHAR(100),
	PRIMARY KEY (RG_paciente)
);

INSERT INTO tbl_paciente (rg_paciente, nome, endereco, convenio) VALUES
	('99.999.654-0', 'Mariana Alves Monteiro', 'Rua das Acácias, 123, Jardim Primavera, São Paulo - SP', 'SaúdeViva Assistência Médica'),
	('88.888.888-1', 'Gabriel Henrique Duarte', 'Avenida dos Ipês, 456, Vila Horizonte, Campinas - SP', 'BemEstar Saúde Integral'),
	('77.777.777-2', 'Beatriz Fernanda Oliveira', 'Rua do Sol Nascente, 789, Parque das Flores, Curitiba - PR', 'VidaPlena Benefícios Médicos'),
	('66.666.666-3', 'Lucas Rafael Martins', 'Alameda das Palmeiras, 321, Bosque Azul, Belo Horizonte - MG', 'CuidarMais Saúde'),
	('32.967.697-5', 'Kléber João Souza', 'Alameda dos Corinthians, 758, Campo Verde, Porto Velho - RS', 'CuidarMenos Saúde');



CREATE TABLE tbl_consulta (
	codigo_consulta INT,
	data_consulta VARCHAR(10),
	hora_consulta VARCHAR(5),
	rg_paciente VARCHAR(20),
	crm_medico INT,
	PRIMARY KEY (codigo_consulta),
);

INSERT INTO tbl_consulta (codigo_consulta, data_consulta, hora_consulta) VALUES
	(48317, '14/03/2027', '08:45'),
	(72604, '22/05/2027', '10:30'),
	(19582, '07/08/2027', '14:15'),
	(63149, '19/11/2027', '16:50'),
	(63654, '22/03/2027', '11:30');

SELECT * FROM tbl_consulta;

CREATE TABLE tbl_medico (
	crm_medico INT,
	nome VARCHAR(100),
	rg_medico VARCHAR(20),
	PRIMARY KEY (crm_medico)
);

INSERT INTO tbl_medico (crm_medico, nome, rg_medico) VALUES
	(123456, 'Dr. Rafael Monteiro Alves', '98.765.432-1'),
	(234567, 'Dra. Camila Ferreira Duarte', '87.654.321-0'),
	(345678, 'Dr. Bruno Henrique Martins', '76.543.210-9'),
	(456789, 'Dra. Juliana Ribeiro Costa', '65.432.109-8'),
	(278193, 'Dr. Cláudio Juliano Souza', '64.876.234-6');

DROP TABLE tbl_paciente
DROP TABLE tbl_medico
DROP TABLE tbl_consulta


--Realizar consultas na tabela
	SELECT * FROM tbl_paciente;
	SELECT * FROM tbl_medico;
	SELECT * FROM tbl_consulta;