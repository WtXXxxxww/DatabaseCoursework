
/*-----Database Details------------------------*/
-- Driver Name: SQLiteJDBC
-- Driver Version: native
-- URL: jdbc:sqlite:TargetDatabases\cars.db
-- User Name: null
-- Supported Type: BLOB
-- Supported Type: INTEGER
-- Supported Type: NULL
-- Supported Type: REAL
-- Supported Type: TEXT

/*-----Create Sorted Table Statements------------------------*/ 
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees (
     emp_id INTEGER,
     name VARCHAR(40),
     dept VARCHAR(20),
     manager_id INTEGER,
     PRIMARY KEY (emp_id),
     FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

DROP TABLE IF EXISTS model;
CREATE TABLE IF NOT EXISTS model (
     model_id INTEGER,
     manu VARCHAR(15),
     range VARCHAR(15),
     model VARCHAR(30),
     PRIMARY KEY (model_id)
);

DROP TABLE IF EXISTS car;
CREATE TABLE IF NOT EXISTS car (
     car_id INTEGER,
     model_id INTEGER,
     reg_num VARCHAR(10),
     mileage INTEGER,
     PRIMARY KEY (car_id),
     FOREIGN KEY (model_id) REFERENCES model(model_id)
);

DROP TABLE IF EXISTS owner;
CREATE TABLE IF NOT EXISTS owner (
     owner_id INTEGER,
     name VARCHAR(15),
     car_id INTEGER,
     PRIMARY KEY (owner_id, car_id),
     FOREIGN KEY (owner_id) REFERENCES employees(emp_id),
     FOREIGN KEY (car_id) REFERENCES car(car_id)
);

DROP TABLE IF EXISTS features;
CREATE TABLE IF NOT EXISTS features (
     model_id INTEGER,
     description VARCHAR(40),
     PRIMARY KEY (model_id, description),
     FOREIGN KEY (model_id) REFERENCES model(model_id)
);


/*-----Insert Statements------------------------*/ 
INSERT INTO model VALUES (1, 'Honda', 'Jazz', 'S');
INSERT INTO model VALUES (2, 'Honda', 'Jazz', 'S A/C');
INSERT INTO model VALUES (3, 'Honda', 'Jazz', 'S-T');
INSERT INTO model VALUES (4, 'Honda', 'Jazz', 'S-T A/C');
INSERT INTO model VALUES (5, 'Volkswagon', 'Up!', 'Take up!');
INSERT INTO model VALUES (6, 'Volkswagon', 'Up!', 'Move up!');
INSERT INTO model VALUES (7, 'Volkswagon', 'Up!', 'High up!');
INSERT INTO model VALUES (8, 'Honda', 'Civic', '1.4 i-VTEC (Petrol) Manual');
INSERT INTO model VALUES (9, 'Honda', 'Civic', '1.6 i_DTEC (Diesel) Manual');
INSERT INTO model VALUES (10, 'Honda', 'Civic', '1.8 i-VTEC (Petrol) Automatic');
INSERT INTO model VALUES (11, 'Honda', 'Civic', '2.2 i-DTEC (Diesel) Manual');
INSERT INTO car VALUES (1, 1, 'aa111gfd', 28000);
INSERT INTO car VALUES (2, 1, 'bb222jhg', 5000);
INSERT INTO car VALUES (3, 5, 'zz999qwe', 30000);
INSERT INTO car VALUES (4, 6, 'sw76qpr', 10000);
INSERT INTO car VALUES (5, 2, 'kj87wer', 50007);
INSERT INTO features VALUES (1, 'Active front headrests');
INSERT INTO features VALUES (1, 'Anti-Lock Breaking System');
INSERT INTO features VALUES (2, 'Active front headrests');
INSERT INTO features VALUES (2, 'Anti-Lock Breaking System');
INSERT INTO features VALUES (2, 'A/C - manual air conditioning');
INSERT INTO features VALUES (3, 'Active front headrests');
INSERT INTO features VALUES (3, 'Anti-Lock Breaking System');
INSERT INTO features VALUES (3, 'Hands-free phone system');
INSERT INTO features VALUES (5, 'Airbags');
INSERT INTO features VALUES (5, 'Rear headrest, adjustable x 2');
INSERT INTO features VALUES (6, 'Airbags');
INSERT INTO features VALUES (6, 'Rear headrest, adjustable x 2');
INSERT INTO features VALUES (6, 'A/C - manual air conditioning');
INSERT INTO features VALUES (6, 'Central Locking');
INSERT INTO features VALUES (7, 'Airbags');
INSERT INTO features VALUES (7, 'Rear headrest, adjustable x 2');
INSERT INTO features VALUES (7, 'A/C - manual air conditioning');
INSERT INTO features VALUES (7, 'Central Locking');
INSERT INTO features VALUES (7, 'Touch Screen Navigation');
INSERT INTO employees VALUES (1, 'Sherridan', 'Design', null);
INSERT INTO employees VALUES (2, 'Ivanova', 'Production', null);
INSERT INTO employees VALUES (3, 'Garibaldi', 'Design', 1);
INSERT INTO employees VALUES (4, 'Mollari', 'Production', 20);
INSERT INTO owner VALUES (1, 'Picard', 1);
INSERT INTO owner VALUES (1, 'Picard', 2);
INSERT INTO owner VALUES (2, 'Worf', 3);
INSERT INTO owner VALUES (3, 'Troi', 4);
INSERT INTO owner VALUES (4, 'Riker', 5);

/*-----Create Index Statements------------------------*/ 
CREATE INDEX features_1 ON features (model_id DESC);
CREATE INDEX features_1_description ON features (description DESC);
CREATE INDEX emp_name ON employees (name DESC);
CREATE INDEX owner_car ON owner (car_id DESC);
CREATE INDEX owner_1 ON owner (owner_id DESC);
CREATE INDEX owner_1_car_id ON owner (car_id DESC);
