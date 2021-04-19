DELIMITER $$

CREATE procedure carga_nuevo_participante(nuevo_nombre VARCHAR(100), nuevo_apellido varchar(100), n_dni INT, edad_participante INT)
BEGIN
	INSERT INTO participante (nombre, apellido, dni, edad) 
	VALUES (nuevo_nombre, nuevo_apellido, n_dni, edad_participante);
END;
$$




delimiter $$

CREATE PROCEDURE carga_participacion(idParticipante INT, idProyecto INT, rol_participante VARCHAR(100), horas_asignadas int)
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
