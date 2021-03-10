
-- Registrar valores TipoDocumeto

insert into TipoDocumento (idTipoDocumento, Descripcion)
values (1001, "Tarjeta identidad" ),
(1002, "Cedula de ciudadania" ),
(1003, "Cedula extranjera" ),
(1004, "Registro Civil");


-- Registrar valores Genero 

insert into genero (idGenero, Descripcion)
values (201, "Masculino" ),
(202, "Femenino" ),
(203, "otro");



-- Registrar valores Ciudad 

insert into Ciudad (idCiudad, Descripcion)
values (2001, "Bogotá D.C" ),
(2002, "Santa Marta " ),
(2003, "Medellin"),
(2004, "Bogotá D.C" ),
(2005, "Bogotá D.C" );

-- registrar Valores TipoUsuario 

insert into TipoUsuario (idTipoUsuario, Descripcion)

Values (411, "Estudiante"),
(412, "Docente"),
(413, "Coordinador Academico"),
(414,"Coordinador Convivencia"),
(415,"Administrativo");



-- registrar Valores Personas 

insert into Personas (idpersonas, nombre, apellido, documento, telefono, jornada, curso,direccion,  idtipoDocumento, idgenero, idciudad,
                      idtipousuario)
Values(302, "Juliana", "Ortiz", 1023456921, 3026547, "Mañana",1101, " diagonal 46 #12b ", 1001, 202, 2001, 411),
(304, "Andres", "Lopez", 1008416563, 3222446013, "Tarde", 402,"carrera 13 #29 a sur  ", 1002 ,201, 2004, 413),  
(306, "Maicol", "Betancur", 100036524, 37695789, "Tarde", 603,"carrera 24 #36 a 24",1003, 201, 2003, 414),  
(308, "Johana", "Ramirez", 116579423, 2089641, "Mañana", 103, "Calle 26 #35 13",1004, 203, 2002, 415),  
(310, "Vanessa", "Contreras", 1003451752, 3112780396, "Tarde", 801,"Diagonal 48 #13-09", 1001, 202,2001, 411),  
(312, "Jaime", "Camargo", 102942761, 3126549871, "Mañana",902, "Diagonal 14 bis b # 15-16 sur ", 1002, 201, 2002, 412), 
(314, "Rosalba", "Rodriguez", 52760122, 3005649853, "Tarde",801, "Carrera 30 #25 c 14", 1003, 203,2003, 412),
(316, "Ricardo", "Pulido", 51974652, 3019635412, "Tarde", 201,"Calle 15 #2-16",1003, 201, 2001, 411) ;




-- Registrar Valores Asistencia

insert into asistencia ( idasistencia, Fecha, hora, descripcion, idpersonas)

values (6001, "11-03-2019", "13:00:00", "Ingreso a la hora establecida", 302),
(6002, "20-07-2019", "14:00:00", "Ingreso con retardo", 308), 
(6003, "28-10-2019", "13:00:00", "Ingreso a la hora establecida", 306),
(6004, "02-04-2019", "14:10:00", "Ingreso con retardo", 314),
(6005, "01-11-2019", "13:00:00", "Ingreso a la hora establecida", 316);




-- Registrar Valores Usuarios

insert into Usuarios ( idusuarios, Usuario, password, idpersonas)

values (101, "juli363", "lo098ez",  302),
(102, "Andres234", "fdf55585", 304), 
(103, "RosalbaR", "ros123", 314),
(104, "jaime232", "j0900ime", 312),
(105, "johana098", "johalove234", 308);



