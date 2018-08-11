DELIMITER $$ 
CREATE PROCEDURE CrearCliente(
	   nombre varchar(20),
	   apellido varchar(20),
	   email	varchar(20),
	   telefono int

As
BEGIN
INSERT INTO Clientes  (
	   nombre,
	   apellido,
	   email,
	   telefono
)
    VALUES (
	   nombre,
	   apellido,
	   email,
	   telefono
);

SELECT 
	   nombre = nombre,
	   apellido = apellido,
	   email	= email,
	   telefono =telefono
FROM Clientes 
WHERE  clienteId = clienteId;
)
-- *Leer Cliente
CREATE PROCEDURE LeerCliente(
clienteId int 
AS
BEGIN 
 
    SELECT clienteId, nombre, apellido, email, telefono
    FROM   CLientes  
    WHERE  (clientesId = @clienteId) 

-- *Actualizacion del cliente
CREATE PROCEDURE ActualizacionCliente
    clienteId int,
    nombre varchar(20),
    apellido varchar(20),
    email varchar(20),
    telefono int
  
AS 
BEGIN 
 
UPDATE Clientes
SET  nombre = @nombre,
     apellido = @apellido, 
     email = @email,
     telefono = @telefono
WHERE  clienteId = @clienteId

-- *Borrar Cliente
CREATE PROCEDURE BorrarCliente 
    clienteId int
AS 
BEGIN 
DELETE
FROM   Cliente
WHERE  clienteId = @CustomerID
END