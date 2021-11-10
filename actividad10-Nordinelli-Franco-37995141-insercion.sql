use mydb;

-- MARCAS
INSERT INTO marca VALUES(1, "Cessna", "Estados Unidos");
INSERT INTO marca VALUES (2, "Beechcraft", "Estados Unidos");
INSERT INTO marca VALUES(3, "Fokker", "Alemania");

-- AVIONES
INSERT INTO avion (marca_codigo, modelo, matricula, entrada_servicio)
SELECT codigo, "Citation", "LV-ABC", '2010,12,12' FROM marca WHERE marca.nombre = "Cessna";
INSERT INTO avion (marca_codigo, modelo, matricula, entrada_servicio)
SELECT codigo, "Baron", "LV-CDE", '2011,1,10' FROM marca WHERE marca.nombre = "Beechcraft";
INSERT INTO avion (marca_codigo, modelo, matricula, entrada_servicio)
SELECT codigo, "F-27", "LV-FGH", '2008,5,4' FROM marca WHERE marca.nombre = "FokkeR";
INSERT INTO avion (marca_codigo, modelo, matricula, entrada_servicio)
SELECT codigo, "Citation", "LV-IJK", '2015,7,6' FROM marca WHERE marca.nombre = "Cessna";
INSERT INTO avion (marca_codigo, modelo, matricula, entrada_servicio)
SELECT codigo, "King Air", "LV-LMN", '2012,7,8' FROM marca WHERE marca.nombre = "Beechcraft";

-- PROVINCIAS
INSERT INTO provincia VALUES (1, "Buenos Aires");
INSERT INTO provincia VALUES (2, "CABA");

-- LOCALIDADES

INSERT INTO localidad VALUES(1, "CABA", 2);
INSERT INTO localidad VALUES(2, "Lanus", 1);
INSERT INTO localidad VALUES (3, "Avellaneda", 1);
INSERT INTO localidad VALUES (4, "Lomas de Zamora", 1);

-- PERSONAS/PASAJEROS
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Feijoo", "Cristian", 10111213, 3652, "San Martín", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Avellaneda";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Escullini", "Cristian", 99999999, 1296, "Meeks", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lomas de Zamora";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Dominguez", "Christian", 88888888, 356, "Amenabar", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "CABA";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Cusato", "Carlos", 77777777, 1589, "Capello", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lomas de Zamora";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Cires", "Carlos", 66666666, 2345, "Amenabar", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "CABA";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Chudoba", "Camila", 55555555, 2356, "Mamberti", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lanus";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Brisa", "Chimbo", 44444444, 562, "Meeks", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lomas de Zamora";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Barbara", "Chaves", 33333333, 6532, "Campichuelo", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Avellaneda";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Andrés Alfredo", "Casas", 22222222, 4561, "Roca", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "CABA";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Alejo", "Barragann", 11111111, 123, "Ituzaingo", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lanus";


-- PASAJEROS
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 11111111;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 22222222;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT false, dni FROM persona where dni = 33333333;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 44444444;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT false, dni FROM persona where dni = 55555555;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 66666666;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT false, dni FROM persona where dni = 77777777;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 88888888;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 99999999;
INSERT INTO pasajero (viajeroFrecuente,persona_dni) SELECT true, dni FROM persona where dni = 10111213;

-- PERSONAS/PILOTO
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Jair Alberto", "Melgarejo", 90123456, 333,"Loria", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lomas de Zamora";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Adriana", "Medina", 78912345, 1256,"Bolaños", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lanus";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Giuliano", "Martinez", 67891234, 663,"Martinto", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lanus";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Germán Ignacio", "Lopez", 56789123, 2351,"Rivadavia", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "CABA";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Mariana", "Laime", 45678901, 500,"Sarmiento", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lanus";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Franco", "Lacoste", 34567890, 1254,"Azara", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "Lomas de Zamora";
INSERT INTO persona (nombre,apellido,dni,num_calle,nombre_calle,localidad_idlocalidad,provincia_idprovincia)
SELECT "Federico Bernardo", "Juarez", 12345678, 2235, "San Martín", idlocalidad, idprovincia
FROM provincia INNER JOIN localidad ON provincia.idprovincia = localidad.provincia_idprovincia
WHERE localidad.nombre = "CABA";

-- PILOTOS
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '20-12345678-8', '1994,10,1',
dni FROM persona where dni = 12345678;
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '20-34567890-1', '2003,7,1',
dni FROM persona where dni = 34567890;
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '27-45678901-1', '2001,4,1',
dni FROM persona where dni = 45678901;
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '20-56789123-3', '2013,5,1',
dni FROM persona where dni = 56789123;
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '20-67891234-4', '2010,7,1',
dni FROM persona where dni = 67891234;
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '27-78912345-5', '2015,8,1',
dni FROM persona where dni = 78912345;
INSERT INTO piloto (cuil,fecha_ingreso,persona_dni) SELECT '20-90123456-6', '2011,3,1',
dni FROM persona where dni = 90123456;

-- AEROPUERTO
INSERT INTO aeropuerto VALUES ('BUE', 'Aeroparque Jorge Newbery', 'CABA');
INSERT INTO aeropuerto VALUES ('MDQ', 'Astor Piazolla', 'Mar Del Plata');
INSERT INTO aeropuerto VALUES ('BRC', 'Teniente Luis Candelaria', 'San Carlos de Bariloche');

-- VUELOS
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT5633', 'LV-IJK', 'BUE', 'MDQ', '20-56789123-3', 56789123, '2018-5-5 07:00:00', '2018-5-5 09:15:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT3457', 'LV-CDE', 'MDQ', 'BUE', '27-78912345-5', 78912345, '2018-5-4 10:00:00', '2018-5-4 12:00:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT1257', 'LV-FGH', 'BUE', 'MDQ', '27-45678901-1', 45678901, '2018-5-4 08:00:00', '2018-5-4 10:05:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT3333', 'LV-LMN', 'BUE', 'BRC', '20-12345678-8', 12345678, '2018-5-3 07:00:00', '2018-5-3 10:50:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT5632', 'LV-IJK', 'MDQ', 'BUE', '20-56789123-3', 56789123, '2018-5-3 07:00:00', '2018-5-3 09:15:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT1256', 'LV-FGH', 'BUE', 'MDQ', '27-45678901-1', 45678901, '2018-5-2 08:00:00', '2018-5-2 10:05:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT1235', 'LV-ABC', 'BRC', 'BUE', '20-12345678-8', 12345678, '2018-5-2 07:00:00', '2018-5-2 10:50:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT3456', 'LV-CDE', 'BUE', 'MDQ', '27-78912345-5', 78912345, '2018-5-2 10:00:00', '2018-5-2 12:00:00');
INSERT INTO vuelo (codigo,avion_matricula,aeropuerto_codigo,aeropuerto_codigo1,
piloto_cuil,piloto_persona_dni, horaFecha_partida, horaFecha_llegada) 
VALUES('TT1234', 'LV-ABC', 'BUE', 'BRC', '20-12345678-8', 12345678, '2018-5-1 20:00:00', '2018-5-1 23:45:00');

-- PASAJERO HAS VUELO
INSERT INTO pasajero_has_vuelo VALUES (44444444, 'TT1234');
INSERT INTO pasajero_has_vuelo VALUES (55555555, 'TT1234');
INSERT INTO pasajero_has_vuelo VALUES (66666666, 'TT1234');
INSERT INTO pasajero_has_vuelo VALUES (77777777, 'TT3456');
INSERT INTO pasajero_has_vuelo VALUES (88888888, 'TT3456');
INSERT INTO pasajero_has_vuelo VALUES (99999999, 'TT3456');
INSERT INTO pasajero_has_vuelo VALUES (44444444, 'TT1235');
INSERT INTO pasajero_has_vuelo VALUES (55555555, 'TT1235');
INSERT INTO pasajero_has_vuelo VALUES (11111111, 'TT1256');
INSERT INTO pasajero_has_vuelo VALUES (22222222, 'TT1256');
INSERT INTO pasajero_has_vuelo VALUES (33333333, 'TT1256');
INSERT INTO pasajero_has_vuelo VALUES (77777777, 'TT5632');
INSERT INTO pasajero_has_vuelo VALUES (88888888, 'TT5632');
INSERT INTO pasajero_has_vuelo VALUES (99999999, 'TT5632');
INSERT INTO pasajero_has_vuelo VALUES (77777777, 'TT3333');
INSERT INTO pasajero_has_vuelo VALUES (88888888, 'TT3333');
INSERT INTO pasajero_has_vuelo VALUES (99999999, 'TT3333');
INSERT INTO pasajero_has_vuelo VALUES (22222222, 'TT1257');
INSERT INTO pasajero_has_vuelo VALUES (77777777, 'TT3457');
INSERT INTO pasajero_has_vuelo VALUES (88888888, 'TT3457');
INSERT INTO pasajero_has_vuelo VALUES (99999999, 'TT3457');
INSERT INTO pasajero_has_vuelo VALUES (77777777, 'TT5633');
INSERT INTO pasajero_has_vuelo VALUES (88888888, 'TT5633');
INSERT INTO pasajero_has_vuelo VALUES (99999999, 'TT5633');
