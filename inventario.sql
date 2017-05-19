
create table funcionario
(
num_run int primary key,
dv_run char(1) not null,
p_nombre varchar(30) not null,
p_apellido varchar(30) not null,
s_apellido varchar(30) not null,
telefono int not null,
direccion varchar(60) not null 
)

create table tipo_usuario
(
id_tipo_usuario int primary key,
descripcion varchar(30)
);

create table usuario
(
num_run_f int not null,
clave varchar(16) not null,
id_tipo_usuario int not null,
estado varchar(30) not null
)



create table usuario_permiso
(
num_run_u int not null,
id_permiso int not null, 
)

create table permido
(
id_permiso int primary key,
descripcion varchar(30) not null
)
