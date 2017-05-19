create table Producto (
id_producto int primary key  ,
nombre varchar (50),
detalle text,
stock_min int,
stock_actual int ,
valor_venta double,/*valor al que se vende el producto*/
valor_costo double, /*valor al que se compra al provedor*/
fecha_ingreso date,
estado char(1),
id_tipo_producto int 


);

alter table Producto add FOREIGN KEY (id_tipo_producto) REFERENCES Tipo_producto(id_tipo_producto);


create table Tipo_producto(
id_tipo_producto int AUTO_INCREMENT  primary key  ,
nombre varchar (50),
detalle text
);
create table Merma(
id_merma int AUTO_INCREMENT primary key ,
id_producto int, 
cantidad_product int ,
costo_perdida double 
);
alter table Merma add FOREIGN KEY (id_producto) REFERENCES Producto(id_producto);


create table Detalle_venta (
id_venta int ,
id_producto int,
cantidad_producto int ,
total double

);

alter table Detalle_venta add FOREIGN KEY (id_producto) REFERENCES Producto(id_producto);
alter table Detalle_Venta add FOREIGN KEY (id_venta) REFERENCES Venta(id_venta);

create table Venta (
id_venta int AUTO_INCREMENT primary key ,
fecha date,
total_Venta double,
descuento double,
observacion text,
monto_pago double,
monto_vuelto double,
regalo text,
forma_pago varchar (30)

);


create table Caja (
id_caja int primary key ,
fecha_caja date,
monto_inicial double,
monto_actual double,
observacion text 

);

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