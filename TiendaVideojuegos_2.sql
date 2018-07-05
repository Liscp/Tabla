create database TiendaVideojuegos;
use TiendaVideojuegos;
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
CREATE TABLE Venta (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombreVideojuego INT,
cliente INT,
fechaVenta DATE,
cantidad VARCHAR (30),
FOREIGN KEY (nombreVideojuego) REFERENCES Videojuegos(id),
FOREIGN KEY (cliente) REFERENCES Clientes(id)
);
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Lisbeth","Caiza","Acción","0987535255","Balas y puras armas");
SET @ultimoIdClientes = LAST_INSERT_ID(); 	
INSERT INTO Videojuegos (nombre, genero, año, duracion, precio)
VALUES ("Resident Evil","Acción","1996",2001,228,"10");
SET @ultimoIdVideojuegos =LAST_INSERT_ID();
INSERT INTO Venta (nombreVideojuego,cliente,fechaVenta,cantidad)
VALUES (@ultimoIdVideojuegos,@ultimoIdClientes,20180614,"2");
-- Segundo Registro 
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Cristina","Ruiz","Arcade","0995368705","Laberintos");
SET @ultimoIdClientes = LAST_INSERT_ID(); 	
INSERT INTO Videojuegos (nombre, genero, año, duracion, precio)
VALUES ("Pac Man","Arcade","1980",2001,228,"15");
SET @ultimoIdVideojuegos =LAST_INSERT_ID();
INSERT INTO Venta (nombreVideojuego,cliente,fechaVenta,cantidad)
VALUES (@ultimoIdVideojuegos,@ultimoIdClientes,20180510,"1");
-- Tercer Registro
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Daniela","Cortez","Simulación","0983547892","Aviones");
SET @ultimoIdClientes = LAST_INSERT_ID(); 	
INSERT INTO Videojuegos (nombre, genero, año, duracion, precio)
VALUES ("Stellaris","Simulacion","2017",2001,228,"20");
SET @ultimoIdVideojuegos =LAST_INSERT_ID();
INSERT INTO Venta (nombreVideojuego,cliente,fechaVenta,cantidad)
VALUES (@ultimoIdVideojuegos,@ultimoIdClientes,20180302,"5");
-- Contador
SELECT AVG (año) FROM Videojuegos;
-- Contador de repetidos
SELECT nombre, count(nombre) as cantidad from Clientes group by nombre;