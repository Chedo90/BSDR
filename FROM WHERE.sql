USE instituto; -- esto es para seleccionar la base de datos
SELECT nombre, apellido1, fecha_nacimiento as nacimiento -- esto es para seleccionar la columna que quieras
FROM alumno; -- para seleccionar la tabla

select cantidad_comprada, precio_por_elemento, cantidad_comprada * precio_por_elemento as  Total -- seleccionas las columnas y el AS te permite meter un alias que no afecta
from ventas -- seleccionas la tabla ventas
where (precio_por_elemento > 2 and cantidad_comprada >= 5); -- para seleccionar el registo con "where" esto que hago aqui es un campo calculado tambien se puede "+" "-" "*" "/"
-- LOS ( te permite agrupar las expresiones)

select apellido1 -- selecciono la columna apellido
from alumno -- de la tabla alumno
where apellido1 = 'Sanchez' -- where es para filtrar los registros es decir aqui estoy buscando un apellido "=" a 'Sanchez' casi todo lo que no sea un entero va sin '' en este
-- caso al ser un VARCHAR si lleva comillas, tambien los llevan los numeros de telefono y las fechas de nacimiento ya que suelen usarse VARCHAR
order by apellido1; -- el order by es para ordernar por: en este caso estoy ordenando los apellidos ascendente ya que no especifico pero puedes poner asc y desc

use instituto; -- selecciono la base de datos
select id, nombre, apellido1 -- de la columna id, nombre y apellido
from alumno -- de la tabla alumno
where id = 1 ; -- aqui estoy buscando en el registro id uno que contengan un 1 el 1 aqui es entero y no hace falta ponerlo entre ' '

select teléfono -- seleccionamos selecciono la columna teléfono
from alumno -- tabla alumnno
where teléfono = '692735409'; -- como explique antes para numeros de telefono si que se utiliza ' ' 

select nombre, apellido1, es_repetidor as repetidor -- seleccionas las columnas
from alumno -- seleccionas la tabla
where es_repetidor = 'sí'; -- filtramos por where en la tabla repetidor, esto devuelve un TRUE o un FALSE

select nombre, apellido1, es_repetidor as repetidor -- seleccionamos columnas poniendole un alias "repetidor"
from alumno -- selecciono tabla
where es_repetidor = 'no'; -- busca los que devuelvan no

SELECT nombre, apellido1, fecha_nacimiento AS 'fecha de nacimiento' -- seleccionamos nombre apellido1 y fecha de nacimiento poniendole un alias IMPORTANTE: si lo separas como aqui
-- es decir FECHA DE NACIMIENTO debes usar ''
from alumno -- tabla alummno
where fecha_nacimiento <= '1993-01-01'; -- Fecha de nacimiento en este caso menor que 1993


SELECT nombre, apellido1, fecha_nacimiento AS "fecha de nacimiento" -- selecciono tabla con su alias
from alumno -- selecciono tabla
where fecha_nacimiento >= '1994-01-01'; -- busco los nacidos igual o superior a 1994

SELECT nombre, apellido1, fecha_nacimiento AS "fecha de nacimiento", es_repetidor as repetidor -- aqui se muestra como puedes poner mas de un alias
from alumno -- selecciono tabla
where fecha_nacimiento >= '1994-01-01' and es_repetidor ='no'; -- aqui estoy buscando nacido en esa fecha AND no es repetidor. siempre puedes añadir mas es decir un ejemplo seria
-- where fecha_nacimiento 1 AND id = 1 and telefono = 6464854 es un ejemplo para mostrar que puedes poner todos los AND que quieras

select nombre, apellido1, fecha_nacimiento as 'fecha de nacimiento' -- selecciono columna y ponemos un alias
from alumno -- selecciono tabla
where fecha_nacimiento >= '1998-01-01' and fecha_nacimiento <= '1998-12-31'; -- buscas por esas fechas aunque este fue un ejercicio por el profesor y no dijo nada un alumno
-- lo resolvio como esta abajo en mi opinion es verdad que abajo es más corto y puede quizas gastar "menos recursos" pero me llevan al mismo resultado

SELECT nombre, apellido1, fecha_nacimiento AS 'fecha de nacimiento' -- columnas con un alias fecha de nacimiento
FROM alumno -- tabla alummno
WHERE YEAR(fecha_nacimiento) <> 1998; -- con el comando YEAR buscas fechas de nacimiento dentro () debes poner la colummna y despues como buscarlo, no me he puesto a bichear
-- pero supongo que funciona con <= >=
