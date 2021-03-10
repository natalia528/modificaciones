-- borrar bdcolegio 
drop database bdcolegio;

-- crear base de datos colegio 
create database bdcolegio;

-- poner en uso bdcolegio
use bdcolegio;


-- constraint primary key tabla TipoDocumento

create table if not exists bdcolegio.TipoDocumento
( 
  idTipoDocumento int primary key,
  descripcion varchar(500) not null
  
)engine=innoDB;

-- constraint primary key tabla Genero


create table if not exists bdcolegio.Genero
( 
  idGenero int primary key,
  descripcion varchar(500) not null
  
)engine=innoDB;


-- constraint primary key tabla Ciudad

create table if not exists bdcolegio.Ciudad
( 
  idciudad int primary key,
  descripcion varchar(500) not null
  
)engine=innoDB;

 -- constraint foreign key

create table if not exists bdcolegio.TipoUsuario
( 
  idTipoUsuario  int primary key,
  Descripcion varchar(500) not null 
  
)engine=innoDB;



-- constraint foreign key y primary key tabla Personas 


create table if not exists bdcolegio.Personas 
( 
  idpersonas int primary key ,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  documento int(11) not null,
  telefono varchar(25) not null, 
  jornada varchar(20) not null,
  curso varchar (20) not null,
  direccion varchar (50) not null,
  idTipoDocumento int (11) not null,
  idGenero int (11) not null, 
  idCiudad int (11) not null,
  idtipousuario int (11) not null,
  
  constraint fkPersonasTipoDocumento
  foreign key (idTipoDocumento)
  references tipoDocumento (idTipodocumento),
  
  constraint fkPersonasGenero
  foreign key (idGenero)
  references Genero (idGenero),
  
  constraint fkPersonasCiudad
  foreign key (idCiudad)
  references Ciudad (idCiudad),
  
  constraint fkpersonasTipoUsuario 
  foreign key (idTipousuario)
  references Tipousuario (idTipousuario)
  
)engine=innoDB;




-- constraint foreign key y primary key tabla Asistencia

create table if not exists bdcolegio.asistencia
( 
  idAsistencia  int primary key ,
  fecha date  not null,
  hora time not null, 
  descripcion varchar(500) not null,
  idpersonas int not null,
  
  
  constraint fkAsistenciapersonas 
  foreign key (idPersonas)
  references Personas(idPersonas)
  
)engine=innoDB;


-- constraint foreign key y primary key tabla Usuarios


create table if not exists bdcolegio.usuarios
( 
  idusuarios  int primary key,
  Usuario varchar(50) not null,
  password varchar (50) not null,
  idPersonas int not null,
  
  constraint fkUsuariosPersonas
  foreign key (idPersonas)
  references Personas (idPersonas)
   
  
)engine=innoDB;



-- constraint foreign key y primary key tabla RolSistema


-- crear tabla RolSitema

create table if not exists bdcolegio.RolSistema
( 
  idrol  int primary key,
  Tipo varchar(100) not null,
  idUsuarios int not null, 
  
  
  constraint fkRolSistemaUsuarios
  foreign key (idusuarios)
  references Usuarios (idUsuarios)
)engine=innoDB;

