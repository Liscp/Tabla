/*Eliminación de la base de datos Juegos si esta existe.*/

DROP DATABASE IF EXISTS Dibujo;

/*Creación de la base de datos llamada Juegos.*/

CREATE DATABASE Dibujos DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

/*Selección de la la base de datos con la que se va a trabajar*/

USE Dibujos;

/*Eliminaos la tabla si Desarrollador existe antes*/

DROP TABLE IF EXISTS Pinceles;

/*Creamos una tabla llamada desarrollador*/

CREATE TABLE Pinceles(
    
	id INT NOT NULL AUTO_INCREMENT,
    
	nombre VARCHAR(40) NOT NULL,
    
	descripcion VARCHAR(300) NOT NULL,
    
	PRIMARY KEY (id));

/*Eliminamos la tabla Juego si existe antes*/

DROP TABLE IF EXISTS Lienzo;

/*Creamos una tabla llamada juego*/

CREATE TABLE Lienzo(
    
	id INT NOT NULL AUTO_INCREMENT,
    
	nombre VARCHAR(40) NULL,
    
	material VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (id));

/*Eliminaos la tabla Consola si existe antes*/

DROP TABLE IF EXISTS Consola;

/*Creamos una tabla llamada Consola*/

CREATE TABLE Pintores(
    
	id INT NOT NULL AUTO_INCREMENT,
    
	nombrePintor VARCHAR(40) NULL,
    
	Obra VARCHAR(50) NOT NULL,
	
	Fecha DATE,
    
	PRIMARY KEY (id));

