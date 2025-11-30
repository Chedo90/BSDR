use instituto; -- selecciono la base de datos
select * -- selecciono todas las columnas
from alumno -- selecciono tabla alummno
where fecha_nacimiento between '1998-01-01' and '1998-05-31'; -- aqui busco entre esas dos fechas y que me devuelva el resultado

use instituto; -- selecciono la base de datos
select *  -- selecciono todas las columnas
from alumno -- selecciono la tabla alumno
where fecha_nacimiento not between '1998-01-01' and 1998-05-31; -- aqui lo que haces es que me va a demostrar todos los resultados que no esten comprendidos entre esas dos fechas

use instituto; -- selecciono la base de datos
select * -- selecciono todas las columnas
from alumno -- selecciono la tabla alumno
where nombre in ('Maria', 'Juan', 'Lucia'); -- aqui estoy haciendo una lista con esos nombres

use instituto; -- selecciono la base de datos
select * -- selecciono las columnas
from alumno -- selecciono la tabla
where apellido1 in ('Sanchez', 'Ramirez'); -- aqui hago una lista buscando esos apellidos

use instituto; -- selecciono la base de datos 
select * -- selecciono todas las colummnas
from alumno -- seleciono la tabla
where es_repetidor = 'si' -- aqui estoy preguntando es repetidor? SI
and apellido2 in ('Ortega', 'Sánchez'); -- y que me habla una lista con no repetidores con esos dos apellidos

use instituto; -- selecciono la base de datos
select * -- selecciono la columna
from alumno -- seleciono la tabla
where year(fecha_nacimiento) -- aqui estoy usando el operador year() y le digo oye hazme una lista con 91,94 y 98
in (1991, 1994, 1998);

use instituto; -- selecciono la base de datos
select * -- selecciono todas las colummnas
from alumno -- selecciono la tabla
where nombre not in ('Antonio', 'Paco', 'Irene'); -- aqui le estoy diciendo oye quiero una lista pero no quiero que tengan esos nombres muestrame el resto

use instituto; -- selecciono la base de datos
select * -- selecciono todas las columnas
from alumno -- seleciono la base de datos
where nombre like 'M%'; -- en este caso quiero que me busques usando LIKE todo los que empiezan por M entonces usamo M%

use instituto; -- selecciono la base de datos
select nombre, apellido1 -- selecciono la colummna nombre y apellido1
from alumno -- selecciono la b ase de datos
where apellido1 like '%ez'; -- vale lo mismo de antes pero esta vez quiero que terminen por ez pues %ez el % es como decirle esto no lo conozco pero el resto sí

use instituto; -- selecciono la base de datos
select nombre, apellido2 -- selecciono columna y apellido2
from alumno -- de la tabla alummno
where apellido2 like '%a%'; -- en este caso digo quiero que contengan la A pues lo pones así %a%

use instituto; -- selecciono la base de datos
select nombre -- selecciono la columna nombre
from alumno -- selecciono la tabla alumno
where nombre like '_____'; -- aqui le digo vale buscame los alumnos que tengan exactamente 5 letras

use instituto; -- selecciono la base de datos
select nombre -- selecciono la columna nombre
from alumno -- selecciono la tabla alumno
where nombre like ('A%') 
or nombre like ('I%'); -- IMPORTANTE cada vez que usas un AND o un OR tienes que volver a decirle la columna donde buscar y que buscar
-- El profesor dice que usar () es correcto al separarlo por OR AND 

use instituto; -- selecciono la base de datos
select apellido2 -- selecciono la columna
from alumno -- selecciono la tabla
where apellido2 NOT LIKE '%z%'; -- como siempre el NOT para decirle que no quieres que te muestre los apellidos que contengan una Z

use instituto; -- selecciono la base de datos
select nombre -- selecciono la colummna
from alumno -- selecciono la tabla
where nombre like '%an%'; -- con esto buco que me digan nombres que contengan en cualquier lugar "an" como JUAN e_e

use instituto; -- selecciono la base de datos
select apellido1 -- selecciono la colummna
from alumno -- selecciono la tabla
where apellido1 like '_a%'; -- con esto le estoy diciendo oye la primera letra ni zorra la segunda es una a y quiero que a partir de ahi me digas
-- todo lo demas por es el %

use instituto; -- selecciono la base de datos
select teléfono -- selecciono la columna
from alumno -- selecciono la tabla
where teléfono like '62%';

use instituto; -- seleciono la base de datos
select * -- selecciono las columnas
from alumno -- selecciono la tabla
where apellido1 like 'S%_____'; -- con estoy estoy diciendo Conozco que empieza por S y lo demas es desconocido % y quiero que contengan 6 letras pues S+5_

use instituto; -- selecciono la base de datos
select * -- selecciono las columnas
from alumno 
where apellido2 like '__r%'; -- esto lo que hace es decirle que quiero que la tercera letra que contenga la r y a partir de ahi que busque todo lo demás
-- es decir me envia por ejemplo perez que cumple el requisito que la letra r sea la tercera letra
