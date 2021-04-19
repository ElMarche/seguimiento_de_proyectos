CALL carga_nuevo_cliente ('20345678521', 'MATEVIRTUAL SA', 'Paraguay 1234');
CALL carga_nuevo_cliente ('30332251323', 'CYBERLOTERIA SA', 'Defensa 838');


CALL carga_nuevo_participante ('Roberto', 'Gimenez', 37123147, 28);
CALL carga_nuevo_participante ('Romina', 'Perez', 35210481, 31);
CALL carga_nuevo_participante ('Carlos', 'Rodriguez', 42004874, 24);
CALL carga_nuevo_participante ('Lucia', 'Sosa', 30234657, 35);
CALL carga_nuevo_participante ('Julian', 'Romero', 33487569, 33);


CALL carga_nuevo_proyecto ('TechArg', 1);
CALL carga_nuevo_proyecto ('IT_Pueyrredon', 2);
CALL carga_nuevo_proyecto ('UCESgroup', 1);


CALL carga_participacion (1, 1, 'Project Manager', 100);
CALL carga_participacion (3, 1, 'Desarrollador', 80);
CALL carga_participacion (2, 1, 'Tester', 40);
CALL carga_participacion (5, 2, 'Project Manager', 120);
CALL carga_participacion (4, 2, 'Desarrollador', 100);
CALL carga_participacion (2, 2, 'Administrador', 80);
CALL carga_participacion (3, 2, 'Tester', 60);
CALL carga_participacion (3, 3, 'Project Manager', 140);
CALL carga_participacion (1, 3, 'Desarrollador', 160);
CALL carga_participacion (2, 3, 'Administrador', 100);
CALL carga_participacion (4, 3, 'DevOps', 120);
CALL carga_participacion (5, 3, 'Tester', 100);

CALL RendicionDeHorasDiarias(6, CURDATE(), 1);
CALL RendicionDeHorasDiarias(6, CURDATE(), 2);
CALL RendicionDeHorasDiarias(6, CURDATE(), 3);
CALL RendicionDeHorasDiarias(4, CURDATE(), 4);
CALL RendicionDeHorasDiarias(5, CURDATE(), 5);
CALL RendicionDeHorasDiarias(6, CURDATE(), 6);
CALL RendicionDeHorasDiarias(6, '2021-04-06', 1);
CALL RendicionDeHorasDiarias(6, '2021-04-07', 1);
CALL RendicionDeHorasDiarias(6, '2021-04-10', 2);



CALL CalcularLiquidacionMensualDiaria(1, 04);
CALL CalcularLiquidacionMensualDiaria(2, 04);
CALL CalcularLiquidacionMensualDiaria(3, 04);

SELECT * FROM liquidacion;