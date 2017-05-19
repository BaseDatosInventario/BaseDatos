
create table detalle_venta (
id_venta int ,
id_producto int,
cantidad_producto int ,
total double

);

create table caja (
id_caja int primary key ,
fecha_caja date,
monto_inicial double,
monto_actual double,
observacion text 

);

create table venta (
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