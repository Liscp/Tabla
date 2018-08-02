use Carros; 

create procedure Creacion_usuarios ( 
	nuevo_nombre VARCHAR(60),
	nuevo_idCarro int
)

INSERT INTO Clientes(
  nombre,
  idCarro
) 

VALUES(
  nuevo_nombre,
  nuevo_idCarro
);

call Creacion_usuarios('Camila' , 1);
