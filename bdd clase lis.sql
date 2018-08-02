create database Carros;
use Carros;

create table Clientes (
	id int not null primary key auto_increment,
    nombre varchar (60) not null,
    idCarro int
);

create table Carros(
	id int not null primary key auto_increment,
    marca varchar (20) not null,
    modelo varchar(20)
);

create table Placas(
	id int not null primary key auto_increment,
    año datetime,
    placa varchar(20),
    idCarro int not null
);

create table Courier(
	id int not null primary key auto_increment,
    entrega datetime,
    fecha datetime,
    idCarro int not null,
    estado varchar (120)
);



