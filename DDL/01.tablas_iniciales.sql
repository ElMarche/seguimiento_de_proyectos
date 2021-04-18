CREATE DATABASE seguimiento_de_proyectos;

USE seguimiento_de_proyectos;

CREATE TABLE cliente (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cuit VARCHAR(10) NOT NULL,
	razon_social VARCHAR(100),
	domicilio VARCHAR(100)
);

CREATE TABLE proyecto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	id_cliente INT NOT NULL,
	CONSTRAINT fk_cliente_proyecto FOREIGN KEY (id_cliente)
	REFERENCES cliente (id)
);

CREATE TABLE participante (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	dni INT NOT NULL,
	edad INT NOT NULL
);

CREATE TABLE participacion (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_participante INT NOT NULL,
	id_proyecto INT NOT NULL,
	rol VARCHAR(100),
	CONSTRAINT fk_participante_participacion FOREIGN KEY (id_participante)
	REFERENCES participante(id),
	CONSTRAINT fk_proyecto_participacion FOREIGN KEY (id_proyecto)
	REFERENCES proyecto(id)
);

CREATE TABLE asignacion_horas (
	cant_horas INT NOT NULL,
	dia DATE NOT NULL,
	id_participacion INT NOT NULL,
	CONSTRAINT fk_participacion_asignacion FOREIGN KEY (id_participacion)
	REFERENCES participacion(id)
);

