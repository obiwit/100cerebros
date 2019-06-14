CREATE SCHEMA stock_orders;
GO

CREATE TABLE stock_orders.produto(
	Codigo		INT PRIMARY KEY NOT NULL,
	Preco		DECIMAL(10,2) CHECK(Preco > 0),
	Nome		VARCHAR(50) NOT NULL,
	Taxa_IVA	INT CHECK(Taxa_IVA >= 0 AND Taxa_IVA <= 100),
	No_unidades	INT CHECK(No_unidades >= 0)
);

--DROP TABLE stock_orders.tipo_fornecedor;
CREATE TABLE stock_orders.tipo_fornecedor(
	Codigo		INT PRIMARY KEY NOT NULL,
	Designacao	VARCHAR(50)
);

--DROP TABLE stock_orders.fornecedor;
CREATE TABLE stock_orders.fornecedor(
	NIF						BIGINT PRIMARY KEY NOT NULL CHECK(NIF > 0),
	Nome					VARCHAR(50) NOT NULL,
	No_FAX					BIGINT NOT NULL CHECK(No_FAX > 0),
	Endereco				VARCHAR(100),
	Condicoes_pagamento		VARCHAR(100),
	Tipo					INT REFERENCES stock_orders.tipo_fornecedor(Codigo) NOT NULL
);

CREATE TABLE stock_orders.encomenda(
	No_encomenda	INT PRIMARY KEY NOT NULL,
	Data			DATE NOT NULL,
	Fornecedor		BIGINT REFERENCES stock_orders.fornecedor(NIF) NOT NULL
);

CREATE TABLE stock_orders.contem(
	Codigo_produto			INT REFERENCES stock_orders.produto(Codigo) NOT NULL,
	No_encomenda			INT REFERENCES stock_orders.encomenda(No_encomenda) NOT NULL,
	No_itens_encomendados	INT NOT NULL CHECK(No_itens_encomendados > 0),
	PRIMARY KEY(Codigo_produto, No_encomenda)
);