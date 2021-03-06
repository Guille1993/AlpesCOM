﻿CREATE DATABASE alpescom

CREATE TABLE cliente(

	id_cliente	int	NOT NULL,

	nombre 		string	NOT NULL,

	apellido	string	NOT NULL,

	fecha_nac	date	NOT NULL,

	ci		int	NOT NULL,

	direccion	string	NOT NULL,

	telefono	int	NOT NULL,

	email		string	NOT NULL,

	PRIMARY KEY (id_cliente)

)

CREATE TABLE solicitud(

	num_solicitud		int	NOT NULL,

	id_cliente		int	NOT NULL,

	id_producto		int	NOT NULL,

	cod_instalacion		int	NOT NULL,

	cod_activacion		int	NOT NULL,

	PRIMARY KEY (num_solicitud),

	FOREIGN KEY (id_cliente) references cliente(id_cliente),

	FOREIGN KEY (id_producto) references producto(id_producto),

	FOREIGN KEY (cod_instalacion) references instalacion(cod_instalacion),

	FOREIGN KEY (cod_activacion) references activacion(cod_activacion)

)

CREATE TABLE producto(

	id_producto	int	NOT NULL,

	descripcion	string	NOT NULL,

	precio		int	NOT NULL,

	PRIMARY KEY (id_producto)

)

CREATE TABLE instalacion(

	cod_instalacion		int	NOT NULL,

	fecha_hora		date	NOT NULL,

	id_estado		int	NOT NULL,

	id_cuadrilla		int	NOT NULL,

	PRIMARY KEY (id_producto)

	FOREIGN KEY (id_estado) references estado(id_estado),

	FOREIGN KEY (id_cuadrilla) references cuadrilla(id_cuadrilla)

)

CREATE TABLE activacion(

	cod_activacion		int	NOT NULL,

	fecha_hora		date	NOT NULL,

	id_estado		int	NOT NULL,

	id_cuadrilla		int	NOT NULL,

	PRIMARY KEY (id_producto)

	FOREIGN KEY (id_estado) references estado(id_estado),

	FOREIGN KEY (id_cuadrilla) references cuadrilla(id_cuadrilla)

)

CREATE TABLE estado(

	id_estado	int	NOT NULL,

	descripcion	string	NOT NULL,

	PRIMARY KEY (id_estado)

)

CREATE TABLE cuadrilla(

	id_cuadrilla	int	NOT NULL,

	id_empleado1	int	NOT NULL,

	id_empleado2	int	NOT NULL,

	id_empleado3	int	NOT NULL,

	PRIMARY KEY (id_estado)

	FOREIGN KEY (id_empleado1) references empleado(id_empleado)

	FOREIGN KEY (id_empleado2) references empleado(id_empleado)

	FOREIGN KEY (id_empleado3) references empleado(id_empleado)

)

CREATE TABLE empleado(

	id_empleado	int	NOT NULL,

	nombre 		string	NOT NULL,

	apellido	string	NOT NULL,

	fecha_nac	date	NOT NULL,

	ci		int	NOT NULL,

	direccion	string	NOT NULL,

	telefono	int	NOT NULL,

	email		string	NOT NULL,

	PRIMARY KEY (id_empleado)

)