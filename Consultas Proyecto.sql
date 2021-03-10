
-- Consultas 

select*from asistencia
where descripcion like 'i%';

select*from ciudad
where descripcion like 'B__o%';

select*from direccion
where Direccion like '%r';

select*from genero
where descripcion regexp 'ma';

select*from personas
where nombre regexp '^an';

select*from rolsistema
where Tipo regexp 'ia$';

-- Consultas con INNER JOIN 

select tipodocumento.idTipoDocumento, personas.nombre
from personas
inner join tipodocumento on personas.idtipodocumento= tipodocumento.idtipodocumento;



select personas.nombre, personas.idpersonas, personas.apellido, personas.documento, tipousuario.idtipousuario
from tipousuario
inner join personas on tipousuario.idpersonas = personas.idpersonas;


select tipodocumento.idTipoDocumento, personas.nombre, ciudad.idciudad, ciudad.descripcion
from personas
inner join tipodocumento on personas.idtipodocumento= tipodocumento.idtipodocumento
inner join Ciudad on personas.idciudad= ciudad.idciudad;


select  tipousuario.idtipousuario, asistencia.hora, asistencia.fecha, asistencia.descripcion
from asistencia
inner join tipousuario on asistencia.idtipousuario = tipousuario.idtipousuario

