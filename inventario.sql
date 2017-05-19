create table tipo_usuario
(
id_tipo_usuario int primary key,
descripcion varchar(30)
);

create table funci_permiso
(
num_run_f int not null,
id_permiso int not null, 
)

create table usuario
(
num_run_f int not null,
clave varchar(16) not null,
id_tipo_usuario int not null,
estado varchar(30) not null
)