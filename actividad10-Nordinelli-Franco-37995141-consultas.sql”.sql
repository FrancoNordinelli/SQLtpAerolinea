use mydb;
-- a. Listado de pasajeros de la empresa (apellido, nombre, dni).
SELECT apellido, nombre, dni FROM pasajero INNER JOIN persona ON pasajero.persona_dni = persona.dni;
-- b. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
SELECT apellido, p.nombre, dni, nombre_calle, num_calle, l.nombre as localidad, pro.nombre as provincia
FROM persona p INNER JOIN pasajero ON pasajero.persona_dni = p.dni
INNER JOIN provincia pro ON p.provincia_idprovincia = pro.idprovincia
INNER JOIN localidad l on l.idlocalidad = p.localidad_idlocalidad;
/*c. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
mostrando sólo a los que participan del programa de viajeros frecuentes,
ordenados por apellido y nombre.*/
SELECT apellido,p.nombre,dni,nombre_calle, num_calle, l.nombre as localidad, pro.nombre as provincia
FROM persona p INNER JOIN pasajero ON pasajero.persona_dni = p.dni
INNER JOIN provincia pro ON p.provincia_idprovincia = pro.idprovincia
INNER JOIN localidad l on l.idlocalidad = p.localidad_idlocalidad
WHERE pasajero.viajeroFrecuente = 1
ORDER BY apellido, p.nombre;
/*d. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
entrada en servicio, país de origen).*/
SELECT m.nombre as marca, m.pais as pais, modelo, matricula, entrada_servicio FROM avion
INNER JOIN marca m ON m.codigo = avion.marca_codigo;
/*e. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
entrada en servicio, país de origen) cuyo país de origen sea “Alemania”.*/
SELECT m.nombre as marca, m.pais as pais, modelo, matricula, entrada_servicio FROM avion
INNER JOIN marca m ON m.codigo = avion.marca_codigo
WHERE m.pais = "Alemania";
/*f. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
destino, fecha hora partida, fecha hora llegada y CUIL piloto.*/
SELECT m.codigo as Marca_codigo, m.nombre, a.modelo, a.matricula, v.aeropuerto_codigo, v.aeropuerto_codigo1,
v.horaFecha_partida,v.horaFecha_llegada, cuil  FROM vuelo v
INNER JOIN piloto ON v.piloto_cuil = piloto.cuil
INNER JOIN avion a ON v.avion_matricula = a.matricula
INNER JOIN marca m ON m.codigo = a.marca_codigo;
/*g. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
destino, fecha hora partida, fecha hora llegada y CUIL piloto que hayan
partido del aeropuerto “BUE” ordenados por fecha hora de partida.*/
SELECT m.codigo as Marca_codigo, m.nombre, a.modelo, a.matricula, v.aeropuerto_codigo, v.aeropuerto_codigo1,
v.horaFecha_partida,v.horaFecha_llegada, cuil  FROM vuelo v
INNER JOIN piloto ON v.piloto_cuil = piloto.cuil
INNER JOIN avion a ON v.avion_matricula = a.matricula
INNER JOIN marca m ON m.codigo = a.marca_codigo
WHERE v.aeropuerto_codigo = "BUE";
/*h. Listado de vuelos realizados mostrando codigo, Código IATA del Aeropuerto
origen, Código IATA del Aeropuerto destino, fecha hora partida y fecha hora
llegada que hayan partido del aeropuerto “BUE” y hayan arribado al
aeropuerto “MDQ”.*/
SELECT m.codigo as Marca_codigo, m.nombre, a.modelo, a.matricula, v.aeropuerto_codigo, v.aeropuerto_codigo1,
v.horaFecha_partida,v.horaFecha_llegada, cuil  FROM vuelo v
INNER JOIN piloto ON v.piloto_cuil = piloto.cuil
INNER JOIN avion a ON v.avion_matricula = a.matricula
INNER JOIN marca m ON m.codigo = a.marca_codigo
WHERE v.aeropuerto_codigo = "BUE" AND v.aeropuerto_codigo1 = "MDQ";
-- i. Listado de todos los vuelos realizados y sus pasajeros, (código, apellido,nombre, dni)
SELECT codigo, apellido, nombre, dni FROM vuelo 
INNER JOIN pasajero_has_vuelo pv ON vuelo.codigo = pv.vuelo_codigo
INNER JOIN persona ON persona.dni = pv.pasajero_persona_dni;
/*j. Cantidad de vuelos realizados que hayan partido del aeropuerto “BUE” y
hayan arribado al aeropuerto “BRC”*/
SELECT v.codigo as codigo_vuelo FROM vuelo v INNER JOIN aeropuerto ON aeropuerto.codigo = v.aeropuerto_codigo
WHERE v.aeropuerto_codigo = "BUE" and v.aeropuerto_codigo1= "BRC";
/*k. Cantidad de vuelos realizados que hayan partido del aeropuerto “MDQ”*/
SELECT v.codigo as codigo_vuelo FROM vuelo v INNER JOIN aeropuerto ON aeropuerto.codigo = v.aeropuerto_codigo
WHERE v.aeropuerto_codigo = "MDQ";
/*l. Cantidad de vuelos realizados, por aeropuerto de origen (Código IATA,
cantidad)*/
SELECT  aeropuerto_codigo,count(aeropuerto_codigo) as cantidad_vuelos FROM vuelo GROUP BY aeropuerto_codigo;
/*m. Cantidad de pasajeros transportados, por localidad del pasajero (localidad,
cantidad)*/
SELECT l.nombre, count(l.idlocalidad) as localidad FROM pasajero_has_vuelo pv 
INNER JOIN persona ON pv.pasajero_persona_dni = persona.dni
INNER JOIN localidad l ON persona.localidad_idlocalidad = l.idlocalidad
GROUP BY l.nombre;
/*n. Cantidad de pasajeros transportados, por dìa (fecha, cantidad)*/
SELECT v.horaFecha_partida, count(pv.pasajero_persona_dni) as cantidad_pasajeros FROM pasajero_has_vuelo  pv
INNER JOIN vuelo v ON v.codigo = pv.vuelo_codigo
GROUP BY v.horaFecha_partida
ORDER BY v.horaFecha_partida ASC;
/*o. Cantidad de vuelos por pasajero (apellido, nombre, dni, cantidad)*/
SELECT p.apellido, p.nombre, p.dni, count(pv.vuelo_codigo) as cantidad FROM persona p 
INNER JOIN pasajero ON p.dni = pasajero.persona_dni
INNER JOIN pasajero_has_vuelo pv ON pasajero.persona_dni = pv.pasajero_persona_dni
GROUP BY p.apellido; 
select * from pasajero_has_vuelo;
