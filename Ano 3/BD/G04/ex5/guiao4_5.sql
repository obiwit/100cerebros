--CREATE SCHEMA GEST_CONF;
--go


CREATE TABLE GEST_CONF.artigo_cientifico(
	titulo VARCHAR(100) UNIQUE NOT NULL,
	no_registo INT PRIMARY KEY NOT NULL CHECK(no_registo > 0)
);

CREATE TABLE GEST_CONF.instituicao(
	nome VARCHAR(50) PRIMARY KEY NOT NULL,
	endereco VARCHAR(50) NOT NULL
);

CREATE TABLE GEST_CONF.pessoa(
	email VARCHAR(50) PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL,
	instituicao VARCHAR(50) REFERENCES GEST_CONF.instituicao(nome) NOT NULL
);

CREATE TABLE GEST_CONF.autor_artigo(
	email_autor VARCHAR(50) REFERENCES GEST_CONF.pessoa(email) NOT NULL,
	registo_artigo INT REFERENCES GEST_CONF.artigo_cientifico(no_registo) NOT NULL,
	PRIMARY KEY(email_autor,registo_artigo)
);

CREATE TABLE GEST_CONF.participante_estudante(
	email VARCHAR(50) REFERENCES GEST_CONF.pessoa(email) NOT NULL,
	data_inscricao DATE NOT NULL,
	morada VARCHAR(50) NOT NULL,
	local_comprov VARCHAR(50) NOT NULL
);

CREATE TABLE GEST_CONF.participante_nao_estudante(
	email VARCHAR(50) REFERENCES GEST_CONF.pessoa(email) NOT NULL,
	data_inscricao DATE NOT NULL,
	morada VARCHAR(50) NOT NULL,
	ref_transferencia VARCHAR(50) NOT NULL
);