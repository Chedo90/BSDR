USE sakila;
SELECT co.country, ci.city, ci.country_id, co.country_id -- Seleccionas la columnas pero con matices al usar join (tabla.columna) co.country (tabla.columna) ci.city
FROM country as co -- esto es la tabla country y le pongo el alias co por eso arriba sale CO
join city as ci -- esto es otro from pero para unir tablas en este caso busco la de city y le pongo alias CI por eso lo pongo arriba
on co.country_id = ci.country_id -- aqui  viene la magia aqui unes las tablas uno co.country_id = ci.country_id unes LAS CLAVES PRIMARIAS CON LAS FORANEAS DE CADA TABLA (TABLA.COLUMNA)

USE sakila;
SELECT co.country, ci.city, ci.country_id, co.country_id, ad.address -- Seleccionas la columnas pero con matices al usar join (tabla.columna) co.country (tabla.columna) ci.city
FROM country as co -- esto es la tabla country y le pongo el alias co por eso arriba sale CO
join city as ci -- esto es otro from pero para unir tablas en este caso busco la de city y le pongo alias CI por eso lo pongo arriba
on co.country_id = ci.country_id -- aqui  viene la magia aqui unes las tablas uno co.country_id = ci.country_id unes LAS CLAVES PRIMARIAS CON LAS FORANEAS DE CADA TABLA (TABLA.COLUMNA)
join address as ad -- puedes hacer todos los join que tu quieras lo imporante es a la hora de unir las tablas entre sí
on ci.city_id = ad.city_id -- tienes que unir CITY que es el ultimo join con el siguiente que es adress (city.city_id = address.city_id) buscas la tabla city y la columna city y ahora buscas la tabla
--adress con la abla city
