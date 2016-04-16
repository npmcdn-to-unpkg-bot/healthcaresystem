USE medicrib;

DROP TABLE IF EXISTS SystemUsers;
CREATE TABLE SystemUsers (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	first_name VARCHAR(50),
	middle_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(10),
	date_of_birth Date, 
	address VARCHAR(200),
	email VARCHAR(20),
	telephone_no VARCHAR(20), 
	user_category VARCHAR(50)
	-- patient, nurses, doctors, physician
);

DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	system_user_id INT,
	client_location VARCHAR(50),
	FOREIGN KEY (system_user_id) REFERENCES SystemUsers(id) 
);

DROP TABLE IF EXISTS Skills;
CREATE TABLE Skills (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(50)
);


DROP TABLE IF EXISTS Practitioners;
CREATE TABLE Practitioners (
	id INT NOT NULL PRIMARY KEY  AUTO_INCREMENT, 
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(10),
	skill_id INT,
	date_of_birth Date, 
	FOREIGN KEY(skill_id) REFERENCES Skills(id)
);

DROP TABLE IF EXISTS PractitionerSkills;
CREATE TABLE PractitionerSkills (
	id INT NOT NULL PRIMARY KEY  AUTO_INCREMENT, 
	skill_id INT,
	practitioner_id INT,
	FOREIGN KEY(skill_id) REFERENCES Skills(id),
	FOREIGN KEY(practitioner_id) REFERENCES Practitioners(id)
);

DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	category_name VARCHAR(100)
	-- Clinic, Hospital, OB-GYNE, Children's Hospital
);


DROP TABLE IF EXISTS HealthCenters;
CREATE TABLE HealthCenters (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	health_center_name VARCHAR(100),
	address VARCHAR(200),
	subscription VARCHAR(10),
	category_id INT,
	branch VARCHAR(50),
	FOREIGN KEY (category_id) REFERENCES Categories(id) 
	
);

DROP TABLE IF EXISTS HealthRecords;
CREATE TABLE HealthRecords (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	client_id INT,
	FOREIGN KEY (client_id) REFERENCES Clients(id)
);


DROP TABLE IF EXISTS ScheduleAppointments;
CREATE TABLE ScheduleAppointments (
	id INT NOT NULL PRIMARY KEY  AUTO_INCREMENT, 
	client_id INT,
	created_at DateTime,
	updated_at DateTime,
	practitioner_id INT,
	health_center_id INT,
	room_no INT,
	status VARCHAR(10),
	FOREIGN KEY(client_id) REFERENCES Clients(id),
	FOREIGN KEY(practitioner_id) REFERENCES Practitioners(id),
	FOREIGN KEY(health_center_id) REFERENCES HealthCenters(id)
);





