create database Mortalidad ;
use Mortalidad;

create table EnfermedadesInfecciosas(
id int auto_increment primary key,
tipo varchar (50) not null,
menores1 int (20) not null,
de1a4 int (20) not null,
de5a9 int (20) not null,
de10a19 int (20) not null,
de20a44 int (20) not null,
de45a64 int (20) not null,
de65a79 int (20) not null,
mayores80 int (20) not null
);

INSERT INTO EnfermedadesInfecciosas (tipo,menores1,de1a4,de5a9,de10a19,de20a44,de45a64,de65a79,mayores80) VALUES
('persona',234,2345,23456,8765,765,7654,3456,9876),
('personas1',23465,2464,2453,84365,576,7456,3467,1234)



SET @hombres = 'hombres';
select @hombres;
SELECT @hombres := tipo from EnfermedadesInfecciosas where id = 1;

SET @mujeres = 'mujeres';
select @mujeres;
SELECT @mujeres := tipo from EnfermedadesInfecciosas where id = 2;

delimiter //
CREATE TRIGGER menores1Revisar BEFORE INSERT ON EnfermedadesInfecciosas FOR EACH ROW IF NEW.menores1 < 0 THEN SET NEW.menores1 = 0; END IF;
//
Query OK, 0 rows affected (0.00 sec)
delimiter ;

INSERT INTO EnfermedadesInfecciosas (tipo,menores1,de1a4,de5a9,de10a19,de20a44,de45a64,de65a79,mayores80) VALUES
('persona3',-56767,233454,234567,8769,764,7650,3459,9879)

select * from EnfermedadesInfecciosas










CREATE TABLE people (age INT, name varchar(150));
delimiter //
 CREATE TRIGGER agecheck BEFORE INSERT ON people FOR EACH ROW IF NEW.age < 0 THEN SET NEW.age = 0; END IF;
 //
Query OK, 0 rows affected (0.00 sec)
 delimiter ;
 INSERT INTO people VALUES (-20, 'Sid'), (30, 'Josh');
 
 
 select * from people