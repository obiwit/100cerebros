CREATE SCHEMA UNIVERSITY;

CREATE TABLE UNIVERSITY.departamento(
	nome VARCHAR(50) PRIMARY KEY NOT NULL,
	localizacao VARCHAR(50) NOT NULL
	-- dirige_nmec had to be removed from here because of conflict between departamento and professor's tables
	-- Was added later on this query
);

CREATE TABLE UNIVERSITY.professor(
	nome VARCHAR(50) NOT NULL,
	categoria_profissional VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL,
	area_cientifica VARCHAR(50) NOT NULL,
	nmec INT PRIMARY KEY NOT NULL,
	trabalha_nome VARCHAR(50) REFERENCES UNIVERSITY.departamento(nome) NOT NULL,
	trabalha_percentagem SMALLINT NOT NULL
);

ALTER TABLE UNIVERSITY.departamento ADD dirige_nmec INT REFERENCES UNIVERSITY.professor(nmec) NOT NULL;
	
CREATE TABLE UNIVERSITY.projeto_investigacao(
	orcamento INT NOT NULL,
	referencia VARCHAR(50) PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL,
	entidade_financiadora VARCHAR(50) NOT NULL,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	gere_nmec INT REFERENCES UNIVERSITY.professor(nmec) NOT NULL
);

CREATE TABLE UNIVERSITY.estudante_graduado(
	nmec INT PRIMARY KEY NOT NULL,
	data_nascimento DATE NOT NULL,
	nome VARCHAR(50) NOT NULL,
	grau_formacao VARCHAR(50) NOT NULL,
	aconselha_nmec INT REFERENCES UNIVERSITY.estudante_graduado(nmec),
	associado_nome VARCHAR(50) REFERENCES UNIVERSITY.departamento(nome)
);

CREATE TABLE UNIVERSITY.dirige(
	nome VARCHAR(50) PRIMARY KEY NOT NULL,
	localizacao VARCHAR(50) NOT NULL
);

CREATE TABLE UNIVERSITY.supervisiona(
	prof_nmec INT REFERENCES UNIVERSITY.professor(nmec) NOT NULL,
	estudante_nmec INT REFERENCES UNIVERSITY.estudante_graduado(nmec) NOT NULL,
	PRIMARY KEY(prof_nmec, estudante_nmec)
);

CREATE TABLE UNIVERSITY.participa(
	nmec INT REFERENCES UNIVERSITY.estudante_graduado(nmec) NOT NULL,
	referencia VARCHAR(50) REFERENCES UNIVERSITY.projeto_investigacao(referencia) NOT NULL,
	PRIMARY KEY(nmec, referencia)
);