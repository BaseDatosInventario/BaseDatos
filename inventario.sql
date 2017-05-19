create table Producto (
id_producto primary key ,
nombre varchar (50),
detalle text,
stock_min int,
stock_max int ,
valor_venta double,/*valor al que se vende el producto*/
valor_costo double, /*valor al que se compra al provedor*/
fecha_ingreso date,
estado char(2),
id_tipo_producto int 

);

create table Tipo_producto(
id_tipo_producto int primary key,
nombre varchar (50),
detalle text
);
create table Merma(
id_merma primary key ,
id_producto int 
cantidad_product int ,
costo_perdida double 
);

create table Detalle_venta (
id_venta int ,
id_producto int,
cantidad_producto int ,
total double
alter table producto add FOREIGN KEY (num_run_f) REFERENCES funcionario(num_run) 
);

create table Caja (
id_caja int primary key ,
fecha_caja date,
monto_inicial double,
monto_actual double,
observacion text 

);

create table Venta (
id_venta int ,
fecha date,
total_Venta double,
descuento double,
observacion text,
monto_pago double,
monto_vuelto double,
regalo text,
forma_pago varchar (30)

);