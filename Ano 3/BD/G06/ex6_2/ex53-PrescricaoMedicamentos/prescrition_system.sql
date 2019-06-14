CREATE SCHEMA prescrition_system;
GO

CREATE TABLE prescrition_system.Medico(
	No_identificacao	INT PRIMARY KEY NOT NULL,
	Especialidade		VARCHAR(30),
	Nome				VARCHAR(50)
);

CREATE TABLE prescrition_system.Paciente(
	No_utente			INT PRIMARY KEY NOT NULL,
	Endereco			VARCHAR(100),
	Nome				VARCHAR(50) NOT NULL,
	Data_nascimento		DATE
);

CREATE TABLE prescrition_system.Farmacia(
	Telefone			DECIMAL(9,0) PRIMARY KEY NOT NULL CHECK(Telefone > 0),
	Endereco			VARCHAR(100),
	Nome				VARCHAR(50) NOT NULL
);

CREATE TABLE prescrition_system.Prescricao(
	No_prescricao		INT PRIMARY KEY NOT NULL,
	Med_id				INT REFERENCES prescrition_system.Medico(No_identificacao) NOT NULL,
	Pac_id				INT REFERENCES prescrition_system.Paciente(No_utente) NOT NULL,
	Farmacia_process	DECIMAL(9,0) REFERENCES prescrition_system.Farmacia(Telefone),
	Data_process		DATE
);

CREATE TABLE prescrition_system.Farmaceutica(
	Registo_farmaceutica	INT PRIMARY KEY NOT NULL,
	Telefone				DECIMAL(9,0) CHECK(Telefone > 0),
	Nome					VARCHAR(50) NOT NULL,
	Endereco				VARCHAR(100)
);

CREATE TABLE prescrition_system.Farmaco(
	Formula					VARCHAR(100),
	Nome_comercial			VARCHAR(30) NOT NULL,
	Registo_farmaceutica	INT REFERENCES prescrition_system.Farmaceutica(Registo_farmaceutica) NOT NULL,
	PRIMARY KEY(Nome_comercial, Registo_farmaceutica)
);

CREATE TABLE prescrition_system.Vende(
	Tel_farmacia			DECIMAL(9,0) REFERENCES prescrition_system.Farmacia(Telefone) NOT NULL,
	Nome_farmaco			VARCHAR(30) NOT NULL,
	Registo_farmaceutica	INT NOT NULL,
	FOREIGN KEY(Nome_farmaco, Registo_farmaceutica) REFERENCES prescrition_system.Farmaco(Nome_comercial, Registo_farmaceutica),
	PRIMARY KEY(Tel_farmacia, Nome_farmaco, Registo_farmaceutica)
);

CREATE TABLE prescrition_system.PrescricoesEnvolvemFarmacos(
	No_prescricao			INT REFERENCES prescrition_system.Prescricao(No_prescricao) NOT NULL,
	Nome_farmaco			VARCHAR(30) NOT NULL,
	Registo_farmaceutica	INT NOT NULL,
	FOREIGN KEY(Nome_farmaco, Registo_farmaceutica) REFERENCES prescrition_system.Farmaco(Nome_comercial, Registo_farmaceutica),
	PRIMARY KEY(No_prescricao, Nome_farmaco, Registo_farmaceutica)
);