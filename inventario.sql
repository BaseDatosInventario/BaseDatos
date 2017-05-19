
create table funcionario
(
num_run int primary key,
dv_run char(1) not null,
p_nombre varchar(30) not null,
p_apellido varchar(30) not null,
s_apellido varchar(30) not null,
telefono int not null,
direccion varchar(60) not null 
);




create table usuario
(
num_run_f int not null PRIMARY key,
clave varchar(16) not null,
id_tipo_usuario int not null,
estado varchar(30) not null
);

create table tipo_usuario
(
id_tipo_usuario int AUTO_INCREMENT primary key not null,
descripcion varchar(30) not null
);




create table usuario_permiso
(
num_run_u int not null,
id_permiso int not null
);

create table permiso
(
id_permiso int AUTO_INCREMENT primary key,
descripcion varchar(30) not null
);
alter table usuario_permiso add FOREIGN KEY (num_run_u) REFERENCES usuario(num_run_f); 
alter table usuario_permiso add FOREIGN KEY (id_permiso) REFERENCES permiso(id_permiso); 
alter table usuario add FOREIGN KEY (num_run_f) REFERENCES funcionario(num_run); 
alter table usuario add FOREIGN key (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)