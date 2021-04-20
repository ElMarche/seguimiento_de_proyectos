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
CALL RendicionDeHorasDiarias(8, CURDATE(), 7);
CALL RendicionDeHorasDiarias(6, CURDATE(), 8);
CALL RendicionDeHorasDiarias(6, CURDATE(), 9);
CALL RendicionDeHorasDiarias(5, CURDATE(), 10);
CALL RendicionDeHorasDiarias(4, CURDATE(), 11);
CALL RendicionDeHorasDiarias(7, CURDATE(), 12);

CALL RendicionDeHorasSemanales(3, '2021-04-18', 3);
CALL RendicionDeHorasSemanales(5, CURDATE(), 7);

CALL RendicionDeHorasMensuales(2, '2021-04-20', 6);
CALL RendicionDeHorasMensuales(8, CURDATE(), 1);

CALL CalcularLiquidacionMensual(1, 04);
CALL CalcularLiquidacionMensual(2, 04);
CALL CalcularLiquidacionMensual(3, 04);
CALL CalcularLiquidacionMensual(4, 04);
CALL CalcularLiquidacionMensual(5, 04);
CALL CalcularLiquidacionMensual(6, 04);