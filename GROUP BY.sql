1.
use instituto; -- selecciono la base de datos
select apellido1, count(*)  as total_alumnos -- seleciono la columna y como quiero sacar el numero de cada apellido que se repite le pongo el count(*)o apellido1
from alumno -- selecciono tabla
group by apellido1; -- agrupo los apellido1
2.
use instituto; -- selecciono la base de datos 
select es_repetidor, count(es_repetidor) as total -- selecciono la columna puedes poner * pero lo pongo como ejemplo
from alumno -- selecciono tabla 
group by es_repetidor; -- agrupo los repetidores
3.
use instituto; -- selecciono la base de datos
select year(fecha_nacimiento), count(*) as nacimiento -- selecciono la columna fecha de nacimiento y le digo que me cuente los registros y le pongo un alias
from alumno -- tabla alumno
group by year(fecha_nacimiento); -- que me lo agrupe por fecha de nacimiento
---
use instituto; -- selecciono la base de datos
select year(fecha_nacimiento) as año, count(*) as numero -- selecciono la columna fecha de nacimiento como es una fecha uso year() count(*) para que cuente
from alumno -- selecciono tabla
group by año -- lo agrupo por año, tanto GROUP BY como ORDER BY SE PUEDE USAR EL ALIAS
having numero > 1; -- como el select pero para grupos en este caso superior a 1
----
4. 
use instituto; -- selecciono la base de datos
select teléfono is not null as tiene_teléfono, count(*) -- selecciono la columna telefono, el is not null mira cada fila y te devuelve 0 o 1
from alumno -- selecciono la tabla alumno
group by tiene_teléfono; -- lo agrupo por telefono
