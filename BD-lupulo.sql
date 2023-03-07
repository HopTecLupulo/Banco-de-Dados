CREATE DATABASE lupulo;
USE lupulo;
CREATE TABLE Lupulo (
idLupulo int primary key auto_increment,
tipo varchar(80),
horas_luz_dia int
);

INSERT INTO Lupulo VALUES
	(null, 'Citra', 12),
    (null, 'Cascade', 13),
    (null, 'Galaxy', 14),
    (null, 'Amarillo', 15),
	(null, 'Alberto', 14),
    (null, 'Supinpa', 12),
    (null, 'Josoares', 14);

CREATE TABLE Cadastro (
id_cliente int primary key auto_increment,
cnpj char(20),
cpf char(11),
razao_nome varchar(100) NOT NULL,
email varchar(100) NOT NULL,
telefone varchar(50) NOT NULL,
cep char(9),
endereco varchar(80),
UF varchar(2)
);

DROP TABLE Cadastro;

INSERT INTO Cadastro VALUES
	(null, '12.345.678/0001-00',null , 'AFGC Produtores de Lúpulo Ltda.', 'afgc@produtores.com', '1234-0001', '12345-000', 'Av. Xampons Xamps, 123', 'SP'),
    (null, '12.345.678/0001-01',null , 'Sayajins Lúpulos Inc.', 'sayalupulos@dbzinc.com', '1234-0002', '12345-001', 'Av. Sayajins, 456', 'MG'),
    (null, '12.345.678-0001-02',null , 'Obiwan Kenobi Lúpulos e Produção Ltda.', 'obiwan@lupuloprod.com', '1234-0003', '12345-002','Av. Baby Yoda, 789', 'SP'),
    (null, '15.848.984-0001-01',null , 'Robertinho', 'robertinho@gmail.com', '1354-4772', '5143-5576', 'AV pamonha', 'MT'), 
    (null, '12.098.984-0001-01',null , 'Larinsinha123', 'larisinha123@gmail.com', '8187-7821', '8756-9856', 'Av Rodrigues', 'SP'),
    (null, '65.568.984-0001-01',null , 'Devolve meus filhos Ana	', 'ana@gmail.com', '8752-9875', '9813-1249', 'Av Nostalgia', 'PA'),
    (null, '41.848.124-0001-01',null , 'Só vapo enterprises', 'vapo@gmail.com', '5786-2158', '8753-6524', 'Av beirut', 'AM'),
    (null, '12.541.984-0001-01',null , 'Lorenzeti', 'lorenzeti@gmail.com', '5887-6371', '8754-9875', 'Av Gonzaga', 'PI');
    
CREATE TABLE Sensor (
id_sensor int primary key auto_increment,
serial_number int,
status_sensor varchar(10) constraint chkstatus_sensor check(status_sensor IN ('Ativo', 'Inativo'))
);

INSERT INTO Sensor VALUES 
	(null, '001', 'Ativo'),
    (null, '002', 'Inativo'),
    (null, '003', 'Ativo'),
	(null, '004', 'Ativo'),
    (null, '005', 'Inativo'),
    (null,'006', 'Ativo'),
    (null,'007','Ativo');
    
CREATE TABLE Dados (
id_dados int primary key auto_increment,
dia datetime,
qtd_lumens float
)auto_increment=10000;

INSERT INTO Dados VALUE
	(null, '2023-03-03 12:30:00', 500),
    (null, '2023-03-03 12:45:00', 550),
    (null, '2023-03-03 13:00:00', 600),
    (null, '2010-12-05 12:00:00', 19),
    (null, '2021-13-04 14:08:30', 30),
    (null, '2005-08-04 13:09:45', 49),
    (null, '2009-09-08 09:08:48', 12),
    (null, '2023-03-03 14:00:00', 500);

ALTER TABLE Lupulo ADD CONSTRAINT chk_horas_luz_dia 
	CHECK (horas_luz_dia >= 0 and horas_luz_dia <=24);
    
INSERT INTO Lupulo values
	(null, 'casacade', 16),
	(null, 'citra', 15),
	(null, 'tropical', 12),
	(null, 'dragon', 14),
	(null, 'galaxy', 16);

INSERT INTO Lupulo VALUES
	(null, 'centennial', 20);

INSERT INTO Lupulo VALUES
	(null, 'amarillo', 15),
    (null, 'mosaic', 14);

SELECT * FROM Lupulo;
SELECT * FROM Cadastro;
SELECT * FROM Sensor;
SELECT * FROM Dados;
