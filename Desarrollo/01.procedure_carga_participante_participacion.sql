DELIMITER $$

CREATE procedure carga_nuevo_participante(IN nuevo_nombre VARCHAR(100), IN nuevo_apellido varchar(100), IN n_dni INT, IN edad_participante INT)
BEGIN
	INSERT INTO participante (nombre, apellido, dni, edad) 
	VALUES (nuevo_nombre, nuevo_apellido, n_dni, edad_participante);
END;
$$



delimiter $$

CREATE PROCEDURE carga_participacion(IN idParticipante INT, IN idProyecto INT, IN rol_participante VARCHAR(100), IN horas_asignadas int)
BEGIN
	INSERT INTO participacion (id_participante, id_proyecto, rol, horas_preasignadas) 
	VALUES (idParticipante, idProyecto, rol_participante, horas_asignadas);
END;
$$


DELIMITER $$

CREATE PROCEDURE carga_nuevo_cliente (IN nro_cuit varchar(11), IN la_razon_social varchar(100), IN el_domicilio varchar(100))
BEGIN

	INSERT INTO cliente(cuit, razon_social, domicilio)
	VALUES (nro_cuit, la_razon_social, el_domicilio);

END
$$


delimiter $$

CREATE PROCEDURE carga_nuevo_proyecto (IN nombre_proyecto VARCHAR(100), IN idCliente INT)
BEGIN
	INSERT INTO proyecto (nombre, id_cliente)
	VALUES (nombre_proyecto, idCliente);
END;
$$
