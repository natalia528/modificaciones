-- FUNCIONES PROYECTO EFFECTY DIGITAL 
use bdcolegio;
-- 1. Funcion que permite retorna los datos de una persona recibiendo su codigo

DELIMITER //

CREATE FUNCTION datosp ( codp int)
RETURNS Varchar(200)
BEGIN   

RETURN (
SELECT CONCAT (idpersonas,' ' ,nombre,' ' , apellido,' ' ,documento ) 
FROM personas WHERE Idpersonas= codp);

end //
DELIMITER ;


SELECT datosp ( 302);



-- PROCEDIMIENTOS ALMACENADOS PROTECTO EFFECTY DIGITAL 


-- 1. Crear un procedimiento que permita agregar una persona nueva al sistema, se debe recibir el idpersonas, 
-- nombre, apellido, documento, telefono, jornada, curso.

DELIMITER //

CREATE PROCEDURE Datospersona ( IN id INT , IN nom varchar(50), in apell varchar (50), in doc int, in tel varchar (25), in jor varchar(20), in cur varchar(20))
	BEGIN 
     INSERT INTO personas VALUES ( id,nom, apell, doc, tel, jor, cur);
					
    
    END //

DELIMITER ;

                                
CALL Datospersona (320, "Rodolfo", "perez", 12332121323, 2075628, "Mañana", 801);


-- 2. Crear un procedimiento que permita modificar la descripcion de una asistencia, recibiendo el codigo y la modificacion .

DELIMITER //

CREATE PROCEDURE mod_asistencia ( in cod int, in des varchar (500) )
BEGIN 

UPDATE asistencia SET descripcion= des where idasistencia=cod;



end //

DELIMITER ;

CALL mod_asistencia (6003,"ingreso hora exacta ")


-- 3. Procedimiento que realize la consulta de tipo de usuario de una persona teniendo en cuenta su codigo


DELIMITER //

CREATE PROCEDURE tipousu (in codpersona int )
BEGIN 

SELECT tipousuario. idtipousuario, tipousuario.descripcion 
from tipousuario 
inner join personas on tipousuario.idpersonas= personas.idpersonas
where personas.idpersonas=codpersona;

end //

DELIMITER ;

CALL  tipousu (312);




-- TRIGGERS PROYECTO 

delimiter //
create trigger insertar after insert on asistencia
for each row
begin
insert into asistencia  (descripcion) values ('Ingreso');
end//
delimiter ;



