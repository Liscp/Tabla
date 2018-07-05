-- Creaciond de la database
CREATE DATABASE TiendaVideojuegos;
-- Seleccionar la base de datos creada
USE TiendaVideojuegos;
-- Creación de todas las tablas para la renta de DVD's
CREATE TABLE Clientes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    tipoVideojuego VARCHAR (50) NOT NULL,
    celular VARCHAR (15),
    descripsion VARCHAR (120) NOT NULL
);
CREATE TABLE Videojuegos (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
genero VARCHAR (50),
año INT (4),
duracion INT (10),
precio INT
);
CREATE TABLE VideojuegoCliente (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idCliente INT,
idVideojuego INT,
FOREIGN KEY (idCliente) REFERENCES Clientes(id),
FOREIGN KEY (idVideojuego) REFERENCES Videojuegos(id)
);
-- Ingreso de registros en la tabla con variables que almacenen el ultimo id creado
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Lisbeth","Caiza","Acción","0987535255","Balas y puras armas");
SET @ultimoIdCliente = last_insert_id();
INSERT INTO Videojuegos (nombre, genero, año, duracion, precio) 
VALUES ("Resident Evil","Acción","1996",2001,228,"10");
SET @ultimoIdVideojuegos = last_insert_id();
INSERT INTO VideojuegoCliente (idCliente,idVideojuego)
VALUES(@ultimoIdCliente,@ultimoIdVideojuegos);