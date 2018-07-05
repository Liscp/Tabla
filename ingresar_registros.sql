-- EJECUTAR UNO A LA VEZ!!

-- Seleccionar la base de Datos
USE TiendaVideojuegos;
-- Ingresar registros en la tabla
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Lisbeth","Caiza","Acción","0987535255","Balas y puras armas");
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Cristina","Ruiz","Arcade","0995368705","Laberintos");
INSERT INTO Clientes (nombre, apellido, tipoVideojuego,celular,descripsion)
VALUES ("Daniela","Cortez","Simulación","0983547892","Aviones");
-- ELIMINAR UN REGISTRO 
-- REVISAR CON UN SELECT LO QUE DESEAMOS ELIMINAR
SELECT * FROM Clientes WHERE id = 2;
-- ELIMINAR EL REGISTRO DE LA TABLA 
DELETE FROM Clientes WHERE id = 2;
-- CONSULTAR TODOS LOS DATOS DE LA TABLA
SELECT * FROM Clientes ;
-- CONSULTAR NOMBRE Y APELLIDO DE LA TABLA EN UNA COLUMNA
SELECT CONCAT(nombre," ",apellido)FROM Clientes;
-- CONSULTAR REGISTROS POR CONDICIONES
SELECT * FROM Clientes WHERE nombre="Lisbeth";