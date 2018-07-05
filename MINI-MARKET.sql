CREATE DATABASE MiniMarket;
USE MiniMarket;
CREATE TABLE Productos(
idProducto INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR(75),
precio DECIMAL 
);
CREATE TABLE TipoProducto(
idTipo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (75),
idProducto INT,
FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
CREATE TABLE Clientes (
idCliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (75),
apellido VARCHAR (75),
telefono VARCHAR (10),
direccion VARCHAR (250)
);
CREATE TABLE Detalles (
idDetalle INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idProducto INT,
cantidad INT,
precio INT,
FOREIGN KEY (idProducto) REFERENCES Productos (idProducto)
);
CREATE TABLE Facturas (
idFactura INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
numero INT,
fecha DATETIME,
idCliente INT,
idDetalle INT,
total DECIMAL,
FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
FOREIGN KEY (idDetalle) REFERENCES Detalles(idDetalle)
);