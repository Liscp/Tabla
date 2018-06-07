USE Dibujo;    

INSERT INTO Pinceles VALUES(1,'Natural','Pelo Cerda',' Marta Kolinsky');

INSERT INTO Pinceles VALUES(2,'Abanico','Lengua de Gato','Paletina');	

INSERT INTO Lienzos VALUES(1,'Lino','Algodón');

INSERT INTO Lienzos VALUES(2,'Color y grosor de la tela','Tipo de madera');    

INSERT INTO Pintores VALUES(1,'Picaso','Guemica','1937');

INSERT INTO Pintores VALUES(2,'Monet','La serie de pinturas del Portal de la Catedral de Ruan','1899');       

SELECT * FROM Pinceles;    

SELECT * FROM Lienzos;

SELECT * FROM Pintores;

ALTER TABLE Pinceles ADD prueba Varchar (10);