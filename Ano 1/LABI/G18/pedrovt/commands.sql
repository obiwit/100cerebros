CREATE TABLE contacts(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	address TEXT,
	email TEXT
);

INSERT INTO contacts(name, address)
VALUES(
	"Beatriz", "Portugal"
	);

INSERT INTO contacts(name, address)
VALUES(
	"João", "Lisboa"
	);

INSERT INTO contacts(name, address, email)
VALUES(
	"Pedro", "--", "--"
	);

INSERT INTO contacts(name, address, email)
VALUES(
	"Margarida", "Não definido", ""
	);

INSERT INTO contacts(name, address, email)
VALUES(
	"Luis", "N/A", ""
	);

SELECT * FROM contacts;
SELECT email FROM contacts WHERE name="Beatriz";

INSERT INTO contacts(name, address, email)
VALUES(
	"Luis", "Lisboa", "luis@ua.pt"
	);

SELECT name, email FROM contacts where address="Lisboa";
UPDATE contacts SET email="Emails were deleted";
SELECT * FROM contacts ORDER BY name ASC;


------
CREATE TABLE companies(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	address TEXT,
	vatnumber INTEGER
);

INSERT INTO companies(name, address, vatnumber)
VALUES(
	"MaxiPlano", "Aveiro", 123123123123
	);

INSERT INTO companies(name, address, vatnumber)
VALUES(
	"Luís Manuel & filhos", "Águeda", 54534343435
	);

INSERT INTO companies(name, address, vatnumber)
VALUES(
	"ProDesign", "Porto", 54534343435
	);

ALTER TABLE contacts
  ADD COLUMN comp INTEGER;

UPDATE contacts SET 
