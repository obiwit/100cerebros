-- DROP SCHEMA  flight_reservations;
-- GO

CREATE SCHEMA flight_reservations;
GO

CREATE TABLE flight_reservations.airport(
	Name			VARCHAR(50) NOT NULL,
	City			VARCHAR(20) NOT NULL,
	State			VARCHAR(10) NOT NULL,
	Airport_code	INT PRIMARY KEY NOT NULL CHECK(Airport_code >= 0)
);

CREATE TABLE flight_reservations.airplane_type(
	Company			VARCHAR(50) NOT NULL,
	Max_seats		INT NOT NULL CHECK(Max_seats > 0),
	Type_name		VARCHAR(20) PRIMARY KEY NOT NULL
);

CREATE TABLE flight_reservations.can_land(
	Airport			INT REFERENCES flight_reservations.airport(Airport_code) NOT NULL,
	Airplane_type	VARCHAR(20) REFERENCES flight_reservations.airplane_type(Type_name) NOT NULL,
	PRIMARY KEY(Airport, Airplane_type)
);

CREATE TABLE flight_reservations.airplane(
	Airplane_id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Total_no_seats INT NOT NULL CHECK(Total_no_seats > 0),
	Type VARCHAR(20) REFERENCES flight_reservations.airplane_type(Type_name) NOT NULL
);

CREATE TABLE flight_reservations.flight(
	Number INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Airline VARCHAR(20) NOT NULL,
	Weekdays CHAR(7)
);

CREATE TABLE flight_reservations.fare(
	Flight			INT REFERENCES flight_reservations.flight(Number) NOT NULL,
	Restrictions	VARCHAR(100),
	Amount			INT NOT NULL ,
	Code			INT NOT NULL CHECK(Code >= 0),
	PRIMARY KEY(Flight, Code)
);

CREATE TABLE flight_reservations.flight_leg(
	Flight				INT REFERENCES flight_reservations.flight(Number) NOT NULL,
	Leg_no				INT NOT NULL CHECK(Leg_no >= 0),
	Dep_airport			INT REFERENCES flight_reservations.airport(Airport_code) NOT NULL,
	Scheduled_dep_time	DATE,
	Arr_airport			INT REFERENCES flight_reservations.airport(Airport_code) NOT NULL,
	Scheduled_arr_time	DATE,
	PRIMARY KEY(Flight, Leg_no)
);

CREATE TABLE flight_reservations.leg_instance(
	No_available_seats	INT NOT NULL, 
	Date				DATE NOT NULL,
	Flight				INT NOT NULL,
	Flight_legs_no		INT  NOT NULL,
	Assigned_airplane	INT REFERENCES flight_reservations.airplane(Airplane_id) NOT NULL,
	Dep_airport			INT REFERENCES flight_reservations.airport(Airport_code) NOT NULL,
	Dep_time			DATE,
	Arr_aiport			INT REFERENCES flight_reservations.airport(Airport_code) NOT NULL,
	Arr_time			DATE,
	FOREIGN KEY (Flight, Flight_legs_no) REFERENCES flight_reservations.flight_leg(Flight, Leg_no),
	PRIMARY KEY(Date, Flight, Flight_legs_no)
);

CREATE TABLE flight_reservations.seat(
	No_available_seats	INT NOT NULL, 
	Leg_date			DATE NOT NULL,
	Flight				INT NOT NULL,
	Flight_legs_no		INT NOT NULL,
	Assigned_airplane	INT REFERENCES flight_reservations.airplane(Airplane_id) NOT NULL,
	FOREIGN KEY (Leg_date, Flight, Flight_legs_no) REFERENCES flight_reservations.leg_instance(Date, Flight, Flight_legs_no),
	PRIMARY KEY(Leg_date, Flight, Flight_legs_no)
);