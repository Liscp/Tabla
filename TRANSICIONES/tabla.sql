create database ventas;
use ventas;

create table empleados(
	id int not null primary key auto_increment,
    nombre varchar (20) not null,
    apellido varchar (20) not null,
	direccion varchar (50) not null,
    salario decimal
);

