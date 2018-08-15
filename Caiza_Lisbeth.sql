CREATE DATABASE PRUEBABDD;

USE PRUEBABDD;

CREATE TABLE usuarios(
	id_usuarios INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_usuarios VARCHAR(20) NOT NULL,
	password VARCHAR(80),
    descripccion_usuario VARCHAR(120),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE clientes(
	id_clientes INT NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR(20) NOT NULL,
	apellido_cliente VARCHAR(20) NOT NULL,
    direccion_cliente VARCHAR(100),
    cedula_cliente VARCHAR(10),
    telefono_cliente VARCHAR(10),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

CREATE TABLE productos(
	id_producto INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(20) NOT NULL,
	vunitario_producto DECIMAL,
    stock_producto int not null,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE facturas(
	id_factura INT NOT NULL AUTO_INCREMENT,
    vneto_factura DECIMAL NOT NULL,
	iva_factura DECIMAL NOT NULL,
    vtotal_factura DECIMAL NOT NULL,
    idProducto INT,
    idCliente INT,
    FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);

ALTER TABLE facturas ADD FOREIGN KEY (idProducto) REFERENCES productos (id_producto);
ALTER TABLE facturas ADD FOREIGN KEY (idClientes) REFERENCES clientes (id_cliente);

-- *Usiaros 

INSERT INTO usuarios (nombre, password,descripccion_usuario)
VALUES ("Erick", "1234","Gerente");

INSERT INTO usuarios (nombre, password,descripccion_usuario)
VALUES ("Armando", "2587","Administrador");

INSERT INTO usuarios (nombre, password,descripccion_usuario)
VALUES ("Reinaldo", "1478","Secretario");

INSERT INTO usuarios (nombre, password,descripccion_usuario)
VALUES ("Jose", "3692","Oficinistas");

INSERT INTO usuarios (nombre, password,descripccion_usuario)
VALUES ("Maria", "1596","Limpieza");

-- *Clientes
INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, cedula_cliente, telefono_cliente)
VALUES ("Bryan", "Caiza","Chillogallo", "1750911786", "3097356");

INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, cedula_cliente, telefono_cliente)
VALUES ("Josefa", "Perez","La Mena", "1750911792", "3097698");

INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, cedula_cliente, telefono_cliente)
VALUES ("Gabriel", "Cortez","BuenaVentura", "1756987452", "2369854");

INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, cedula_cliente, telefono_cliente)
VALUES ("Josselyn", "Rojas","Chillogallo", "1736985214", "2458965");

INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente, cedula_cliente, telefono_cliente)
VALUES ("Lisbeth", "Pinta","Chillogallo", "1756325489", "2456978");

-- *Productos

INSERT INTO productos (nombre_producto, vunitario_producto, stock_producto)
VALUES ("Atun", 0.30, 60);

INSERT INTO productos (nombre_producto, vunitario_producto, stock_producto)
VALUES ("Carne", 1.20, 90);

INSERT INTO productos (nombre_producto, vunitario_producto, stock_producto)
VALUES ("Peras", 0.25, 50);

INSERT INTO productos (nombre_producto, vunitario_producto, stock_producto)
VALUES ("Choclos", 0.25, 100);

INSERT INTO productos (nombre_producto, vunitario_producto, stock_producto)
VALUES ("Papas", 0.75, 300);

-- * Facturas
INSERT INTO facturas (vneto_factura, iva_factura, vtotal_factura)
VALUES (5.12, 0.12, 3.00);

INSERT INTO facturas (vneto_factura, iva_factura, vtotal_factura)
VALUES (7.18, 0.12, 1.00);
INSERT INTO facturas (vneto_factura, iva_factura, vtotal_factura)
VALUES (8.11, 0.12, 3.00);

INSERT INTO facturas (vneto_factura, iva_factura, vtotal_factura)
VALUES (9.30, 0.12, 9.00);

INSERT INTO facturas (vneto_factura, iva_factura, vtotal_factura)
VALUES (3.25, 0.12, 10.00);

-- * Ascendentes

SELECT * FROM usuarios ORDER BY nombre_usuario;

--    esta es descendente
SELECT * FROM usuarios ORDER BY nombre_usuario DESC ;

-- *Consulta Cliente
select  id_cliente, nombre_cliente, apellido_cliente, direccion_cliente from clientes;

-- * Consulta Eliminar

 delete from productos where id_producto=1;

ALTER TABLE facturas DROP COLUMN numero_Factura;
ALTER TABLE facturas ADD COLUMN numero_Factura int ;
UPDATE facturas SET numero_Factura = 0005 WHERE id_factura=1;
UPDATE facturas SET numero_Factura = 0004 WHERE id_factura=2;
UPDATE facturas SET numero_Factura = 0003 WHERE id_factura=3;
UPDATE facturas SET numero_Factura = 0002 WHERE id_factura=4;
UPDATE facturas SET numero_Factura = 0001 WHERE id_factura=5;

-- * Actualizacion  numero de factura
UPDATE facturas SET numero_Factura = 0009 WHERE id_factura=5;


select * from facturas
