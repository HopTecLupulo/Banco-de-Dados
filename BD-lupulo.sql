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
    (null, 'Amarillo', 15);

CREATE TABLE Cadastro (
id_cliente int primary key auto_increment,
cnpj char(14),
cpf char(11),
razao_nome varchar(100) NOT NULL,
email varchar(100) NOT NULL,
telefone varchar(50) NOT NULL,
cep char(9),
endereco varchar(80),
UF varchar(2)
);

ALTER TABLE Cadastro MODIFY COLUMN cnpj VARCHAR(20);

INSERT INTO Cadastro VALUES
	(null, '12.345.678/0001-00', 'AFGC Produtores de Lúpulo Ltda.', 'afgc@produtores.com', '1234-0001', '12345-000', 'Av. Xampons Xamps, 123', 'SP'),
    (null, '12.345.678/0001-01', 'Sayajins Lúpulos Inc.', 'sayalupulos@dbzinc.com', '1234-0002', '12345-001', 'Av. Sayajins, 456', 'MG'),
    (null, '12.345.678-0001-02', 'Obiwan Kenobi Lúpulos e Produção Ltda.', 'obiwan@lupuloprod.com', '1234-0003', '12345-002','Av. Baby Yoda, 789', 'SP');

CREATE TABLE Sensor (
id_sensor int primary key auto_increment,
serial_number int,
status_sensor varchar(10) constraint chkstatus_sensor check(status_sensor IN ('Ativo', 'Inativo'))
);

INSERT INTO Sensor VALUES 
	(null, '001', 'Ativo'),
    (null, '002', 'Inativo'),
    (null, '003', 'Ativo');

CREATE TABLE Dados (
id_dados int primary key auto_increment,
dia datetime,
qtd_lumens float
)auto_increment=10000;

INSERT INTO Dados VALUE
	(null, '2023-03-03 12:30:00', '500'),
    (null, '2023-03-03 12:45:00', '550'),
    (null, '2023-03-03 13:00:00', '600');

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







    



