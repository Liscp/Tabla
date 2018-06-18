USE Dibujos;
/* Creamos una tabla llamada Pinceles */

CREATE  TABLE  Pinceles (
    
	id INT  NOT NULL AUTO_INCREMENT,
    
	nombre VARCHAR ( 40 ) NOT NULL ,
    
	descripcion VARCHAR ( 300 ) NOT NULL ,
    
	PRIMARY KEY (id));
/* Creamos una tabla llamada Lienzo */

CREATE TABLE Lienzo (
    
	id INT  NOT NULL AUTO_INCREMENT,
    
	nombre VARCHAR ( 40 ) NOT NULL ,
    
	material VARCHAR ( 50 ) NOT NULL ,
	
	PRIMARY KEY (id));


/* Creamos una tabla llamada Pintores */

CREATE TABLE Pintores (
    
	id INT  NOT NULL AUTO_INCREMENT,
    
	nombrePintor VARCHAR ( 40 ) NOT NULL ,
    
	Obra VARCHAR ( 50 ) NOT NULL ,
	
	Fecha DATE,
 
    PRIMARY KEY (id));
