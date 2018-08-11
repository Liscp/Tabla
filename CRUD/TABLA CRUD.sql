create database cliente;
use cliente;

CREATE TABLE Clientes(
       clienteId int  auto_increment PRIMARY KEY NOT NULL,
	   nombre varchar (20) NULL,
       apellido varchar(20) NULL,
       email varchar(20) NULL,
       telefono int NULL
)