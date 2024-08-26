CREATE TABLE VENTAS (
 VENTA_ID SERIAL PRIMARY KEY NOT NULL,
 VENTA_FECHA DATETIME YEAR TO MINUTE,
 VENTA_SITUACION SMALLINT DEFAULT 1 NOT NULL
 );
 
 CREATE TABLE DETALLE_VENTA (
 DETALLE_ID SERIAL PRIMARY KEY NOT NULL,
 DETALLE_VENTA INTEGER,
 DETALLE_PRODUCTO INTEGER,
 DETALLE_CANTIDAD INTEGER,
 DETALLE_CLIENTE INTEGER,
 DETALLE_SITUACION SMALLINT DEFAULT 1 NOT NULL,
 FOREIGN KEY (DETALLE_VENTA) REFERENCES VENTAS (VENTA_ID),
 FOREIGN KEY (DETALLE_PRODUCTO) REFERENCES PRODUCTOS (PROD_ID),
  FOREIGN KEY (DETALLE_CLIENTE) REFERENCES CLIENTES (CLI_ID)
 );
 
 CREATE TABLE informix.clientes  ( 
	cli_id       	SERIAL NOT NULL,
	cli_nombre   	VARCHAR(75),
	cli_apellido 	VARCHAR(75),
	cli_nit      	VARCHAR(9),
	cli_telefono 	VARCHAR(8),
	cli_situacion	SMALLINT DEFAULT 1,
	PRIMARY KEY(cli_id)
	ENABLED

INSERT INTO clientes (cli_nombre, cli_apellido, cli_nit, cli_telefono, cli_situacion)
values ('JENNIFER', 'JIMENEZ', '1234546', '12345678', 1);
INSERT INTO clientes (cli_nombre, cli_apellido, cli_nit, cli_telefono, cli_situacion)
values ('JUAN', 'JIMENEZ', '1234546', '12345678', 1);
INSERT INTO clientes (cli_nombre, cli_apellido, cli_nit, cli_telefono, cli_situacion)
values ('OSCAR', 'JIMENEZ', '1234546', '12345678', 1);
INSERT INTO clientes (cli_nombre, cli_apellido, cli_nit, cli_telefono, cli_situacion)
values ('PABLO', 'JIMENEZ', '1234546', '12345678', 1);
 INSERT INTO clientes (cli_nombre, cli_apellido, cli_nit, cli_telefono, cli_situacion)
values ('PABLO', 'JIMENEZ', '1234546', '12345678', 1);

insert into detalle_venta (detalle_venta, detalle_producto, detalle_cliente, detalle_cantidad) values (1, 1, 33, 1);
insert into detalle_venta (detalle_venta, detalle_producto, detalle_cliente, detalle_cantidad) values (1, 1, 34, 2);
insert into detalle_venta (detalle_venta, detalle_producto, detalle_cliente, detalle_cantidad) values (2, 2, 35, 3);
insert into detalle_venta (detalle_venta, detalle_producto, detalle_cliente, detalle_cantidad) values (2, 3, 36, 1);


SELECT CLI_NOMBRE AS CLIENTE, SUM (DETALLE_CANTIDAD) AS CANTIDAD_PRODUCTOS FROM DETALLE_VENTA 
INNER JOIN CLIENTES ON DETALLE_CLIENTE = CLI_ID 
WHERE DETALLE_SITUACION = 1 
GROUP BY CLI_NOMBRE
 