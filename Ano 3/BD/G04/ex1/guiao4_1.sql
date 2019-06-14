CREATE SCHEMA RENT_A_CAR;
GO

CREATE TABLE RENT_A_CAR.cliente(
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	num_carta DECIMAL(9,0) UNIQUE NOT NULL CHECK(num_carta > 0),
	nif DECIMAL(9,0) PRIMARY KEY NOT NULL CHECK(nif > 0)
);

CREATE TABLE RENT_A_CAR.balcao(
	nome VARCHAR(50) NOT NULL,
	numero INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	endereco VARCHAR(50) NOT NULL
);

CREATE TABLE RENT_A_CAR.aluguer(
	numero INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	duracao INT NOT NULL,
	data_field DATE NOT NULL,
	titular DECIMAL(9,0) REFERENCES RENT_A_CAR.cliente(nif) NOT NULL,
	local_field INT REFERENCES RENT_A_CAR.balcao(numero) NOT NULL,
	objeto VARCHAR(8) REFERENCES RENT_A_CAR.veiculo(matricula) NOT NULL
);

CREATE TABLE RENT_A_CAR.tipo_veiculo(
	codigo INT PRIMARY KEY NOT NULL,
	designacao VARCHAR(50) NOT NULL,
	arcondicionado BIT NOT NULL
);

CREATE TABLE RENT_A_CAR.similaridade(
	codigo_a INT REFERENCES RENT_A_CAR.tipo_veiculo(codigo) NOT NULL,
	codigo_b INT REFERENCES RENT_A_CAR.tipo_veiculo(codigo) NOT NULL,
	PRIMARY KEY(codigo_a,codigo_b)
);

CREATE TABLE RENT_A_CAR.veiculo(
	matricula VARCHAR(8) PRIMARY KEY NOT NULL,
	marca VARCHAR(20) NOT NULL,
	ano INT NOT NULL,
	tipo INT REFERENCES RENT_A_CAR.tipo_veiculo(codigo) NOT NULL	
);

CREATE TABLE RENT_A_CAR.ligeiro(
	codigo INT REFERENCES RENT_A_CAR.tipo_veiculo(codigo) NOT NULL,
	numlugares INT NOT NULL,
	portas INT NOT NULL,
	combustivel VARCHAR(20)
);

CREATE TABLE RENT_A_CAR.pesado(
	codigo INT REFERENCES RENT_A_CAR.tipo_veiculo(codigo) NOT NULL,
	peso INT NOT NULL,
	passageiros INT NOT NULL
);
