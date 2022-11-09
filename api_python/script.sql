/* MYSQL */
CREATE DATABASE Turi;
USE Turi;

CREATE TABLE empresa (
    id int primary key auto_increment,
	nome VARCHAR(45) NOT NULL,
    cnpj CHAR(18) NOT NULL,
    rua VARCHAR(45) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    numero INT NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    codigoVerificação VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL
);

INSERT INTO empresa VALUES(null, "Riachuelo", "00.038.166/0002-88","Rua Delurdes", "Vila Sônia", 85, "São Paulo", "241eadww123aw", "1234");

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(100) NOT NULL
)AUTO_INCREMENT=100;


CREATE TABLE computador (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fk_empresa INT NOT NULL,
    FOREIGN KEY (fk_empresa) REFERENCES empresa(id),
	memoria_total FLOAT,
    disco_total FLOAT,
    sistema_operacional VARCHAR(45),
	cpu_nucleos_logicos INT,
    cpu_nucleos_fisicos INT
)AUTO_INCREMENT=200;

insert into computador values (1,1,null,null,null,null,null), (2,1,null,null,null,null,null), (3,1,null,null,null,null,null);


CREATE TABLE Leitura (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fk_computador INT NOT NULL,
    FOREIGN KEY (fk_computador) REFERENCES computador(id),
    data_hora datetime,
    cpu_porcentagem FLOAT,
	disco_usado FLOAT,
    memoria_usada FLOAT,
    memoria_disponivel FLOAT
);

select * from Leitura;