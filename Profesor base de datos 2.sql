use instituto; -- selecciono la tabla instituto
select apellido1, nombre,id as minom, id*2 -- aqui selecciono la columna y le pongo un alias y multiplico el ID X 2
from alumno -- selecciono la tabla alumno
where id between 5 and 8 -- BETWEEN con esto buscas entre numeros
order by apellido1 desc, minom asc; -- Puedes ordenar por ejemplo en este caso por apellido descendente y minom por ascendente

select * -- selecciono todas las columnas
from alumno -- selecciono tabla
where apellido1 in ('sanchez', 'martinez', 'domingez'); -- esto hace una lista para buscar que contengan el apellido sanchez, martinez y domingez SIEMPRE DEBE IR CON()

select * -- selecciono todas las columnas
from alumno -- selecciono la tabla
where teléfono IS NULL; -- Existe el IS NULL y el NOT IS NULL en este caso te muestra los numero de telefonos vacios

select * -- selecciono columnas
from alumno -- selecciono tabla
where apellido1 LIKE 's__z'; -- Like sirve para buscar patrones de texto en este caso esta buscando que empiece por S despues __ esto significa que busque entre todos los caracteres
-- y Z significa que termine asi es decir daria como resultado Sáez que cumple empieza por S acaba en Z y contiene _ _ 