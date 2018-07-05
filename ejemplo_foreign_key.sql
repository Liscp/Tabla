CREATE DATABASE EjemploMascotas;
USE EjemploMascotas;
-- Se crean las tablas 
CREATE TABLE Personas (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50)
);
CREATE TABLE Mascotas (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
idDueño INT,
FOREIGN KEY (idDueño) REFERENCES Personas(id)
);
-- Ingresamos registros a las tablas
-- Definimos una variable en la cual se almacene el último ID que se creo en la tabla personas
-- y así usarlo para relacionar a la mascota con su dueño.
INSERT INTO Personas (nombre) VALUES ("Norma");
SET @ultimoIdPersonas = last_insert_id();
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Pirulin",@ultimoIdPersonas);
INSERT INTO Personas (nombre) VALUES ("Erick");
SET @ultimoIdPersonas = last_insert_id();
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Nena",@ultimoIdPersonas);
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Toby",@ultimoIdPersonas);
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Peluchin",@ultimoIdPersonas);
INSERT INTO Personas (nombre) VALUES ("Bryan");
SET @ultimoIdPersonas = last_insert_id();
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Puca",@ultimoIdPersonas);
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Pie Pequeño",@ultimoIdPersonas);
INSERT INTO Personas (nombre) VALUES ("Carolina");
SET @ultimoIdPersonas = last_insert_id();
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Negro",@ultimoIdPersonas);
INSERT INTO Mascotas (nombre, idDueño) VALUES ("Bobi",@ultimoIdPersonas);