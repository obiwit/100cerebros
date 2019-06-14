CREATE TABLE BRANCH_BUILDING(
	id DECIMAL(5,0) IDENTITY (1,1) NOT NULL,
	city VARCHAR(20) NOT NULL,
	country VARCHAR(20) NOT NULL,
	num_offices DECIMAL(3,0),
	"address" VARCHAR(150),
	PRIMARY KEY(id)
);

CREATE TABLE EMPLOYEE (
	employee_num DECIMAL(10,0) NOT NULL IDENTITY (1,1),
	cc_id DECIMAL(9,0) UNIQUE CHECK(cc_id > 0),  
	email VARCHAR(30) UNIQUE NOT NULL, 
	"name" VARCHAR(100) NOT NULL,
	salary DECIMAL(10,2), 
	date_of_birth DATE, 
	health_care VARCHAR(30),
	office DECIMAL(3,0), 
	supervisor DECIMAL(10,0), 
	branch_id DECIMAL(5,0) NOT NULL,
	PRIMARY KEY(employee_num),
	FOREIGN KEY(supervisor) REFERENCES EMPLOYEE(employee_num),
	FOREIGN KEY(branch_id) REFERENCES BRANCH_BUILDING(id)
);

CREATE TABLE CLIENT(
	cc_id DECIMAL(9,0) NOT NULL CHECK(cc_id > 0),
	NIF DECIMAL(9,0) UNIQUE CHECK(NIF > 0), 
	email VARCHAR(30) UNIQUE, 
	nationality VARCHAR(25), 
	"address" VARCHAR(150), 
	"name" VARCHAR(100), 
	date_of_birth DATE, 
	manager_id DECIMAL(10,0) NOT NULL,
	PRIMARY KEY(cc_id),
	FOREIGN KEY(manager_id) REFERENCES EMPLOYEE(employee_num)
);

CREATE TABLE ACCOUNT_PLAN(
	"name" CHAR(3) NOT NULL,
	benefits_description VARCHAR(80) NOT NULL,
	PRIMARY KEY([name])
);

CREATE TABLE ACCOUNT (
	id DECIMAL(14,0) NOT NULL IDENTITY (1,1),
	IBAN CHAR(25) UNIQUE, 
	avail_balance DECIMAL(15,2), 
	BIC_SWIFT CHAR(11) NOT NULL, 
	account_plan CHAR(3),
	PRIMARY KEY(id),
	FOREIGN KEY(account_plan) REFERENCES ACCOUNT_PLAN([name])
);

CREATE TABLE ACCOUNT_HOLDER(
	client_id DECIMAL(9,0) NOT NULL,
	account_id DECIMAL(14,0) NOT NULL,
	PRIMARY KEY(client_id, account_id),
	FOREIGN KEY(client_id) REFERENCES CLIENT(cc_id),
	FOREIGN KEY(account_id) REFERENCES ACCOUNT(id)
);

CREATE TABLE "CARD"(
	card_number DECIMAL(16,0) NOT NULL CHECK(card_number > 0),
	name_on_card VARCHAR(20) NOT NULL,
	cvv DECIMAL(3,0) NOT NULL CHECK(cvv > 0),
	validity DATE NOT NULL,
	account_id DECIMAL(14,0) NOT NULL,
	PRIMARY KEY(card_number),
	FOREIGN KEY(account_id) REFERENCES ACCOUNT(id)
);

CREATE TABLE CREDIT(
	account_id DECIMAL(14,0) NOT NULL,
	commission DECIMAL(5,2) NOT NULL CHECK(commission > 0),
	plafond DECIMAL(8,2) NOT NULL,
	PRIMARY KEY(account_id),
	FOREIGN KEY(account_id) REFERENCES ACCOUNT(id)
);

CREATE TABLE DEBIT(
	account_id DECIMAL(14,0) NOT NULL,
	unavail_balance DECIMAL(15,2), 
	PRIMARY KEY(account_id),
	FOREIGN KEY(account_id) REFERENCES ACCOUNT(id)
);

CREATE TABLE LOAN(
	id DECIMAL(14,0) NOT NULL IDENTITY (1,1),
	paid_amount DECIMAL(9,2) DEFAULT 0,
	total_amount DECIMAL(9,2) NOT NULL CHECK(total_amount > 0),
	interest_rate DECIMAL(5,2) NOT NULL CHECK(interest_rate > 0),
	client_id DECIMAL(9,0) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(client_id) REFERENCES CLIENT(cc_id)
);

CREATE TABLE INVESTMENT(
	id DECIMAL(14,0) NOT NULL IDENTITY (1,1),
	balance DECIMAL(15,2) NOT NULL,
	profit_rate DECIMAL(5,2) NOT NULL CHECK(profit_rate > 0),
	client_id DECIMAL(9,0) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(client_id) REFERENCES CLIENT(cc_id)
);

CREATE TABLE DEPOSIT(
	id DECIMAL(14,0) NOT NULL,
	payout_frequency DECIMAL(3,0) NOT NULL CHECK(payout_frequency > 0),
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES INVESTMENT(id)
);

CREATE TABLE STOCK_PORTFOLIO(
	id DECIMAL(14,0) NOT NULL,
	risk DECIMAL(5,2) NOT NULL CHECK(risk > 0),
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES INVESTMENT(id)
);