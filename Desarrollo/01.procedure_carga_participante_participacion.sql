delimiter $$
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

delimiter $$
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

delimiter $$
CREATE PROCEDURE RendicionDeHorasDiarias(IN horas INT, IN dia_actual DATE, IN idParticipacion INT)
BEGIN
	INSERT INTO asignacion_horas (cant_horas, dia, id_participacion)
	VALUES (horas, dia_actual, idParticipacion);
END;
$$

delimiter $$
CREATE PROCEDURE CalcularLiquidacionMensualDiaria(IN idUsuario INT, IN mes INT)
BEGIN
		
	INSERT INTO liquidacion(nombre_participante, apellido_participante, rol, nombre_proyecto, cant_horas, mes_anio, fecha_liquidacion)
	SELECT U.nombre, U.apellido, Pa.rol, Pr.nombre AS nombre_proyecto, sum(Ah.cant_horas),
	CONCAT(YEAR(Ah.dia), '-', MONTH(Ah.dia)), CURDATE()
	FROM asignacion_horas Ah
		INNER JOIN participacion Pa ON Ah.id_participacion=Pa.id
		INNER JOIN participante U ON Pa.id_participante=U.id
		INNER JOIN proyecto Pr ON Pa.id_proyecto=Pr.id
		WHERE U.id = idUsuario AND MONTH(Ah.dia) = mes
		GROUP BY U.nombre, U.apellido, Pa.rol, Pr.nombre, CONCAT(YEAR(Ah.dia), '-', MONTH(Ah.dia));
	
END;
$$