Create database Ferretería;
use Ferretería;

Create table zona (id_zona integer not null,
zona integer not null,
primary key(id_zona));

Create table colonia (id_colonia integer not null,
colonia varchar(40) not null,
primary key(id_colonia));

Create table ciudad (id_ciudad integer not null,
ciudad varchar(40) not null,
primary key(id_ciudad));

Create table departamento (id_dep integer not null,
departamento varchar(40) not null,
primary key(id_dep));

create table municipio (id_municipio integer not null,
municipio varchar(40) not null,
primary key(id_municipio));

create table tipo_herramienta (id_tipo_herramienta integer not null,
tipo varchar(40) not null,
primary key(id_tipo_herramienta));

create table marca (id_marca integer not null,
marca varchar(40) not null,
primary key(id_marca));

create table puesto (id_puesto integer not null,
puesto varchar(40) not null,
primary key(id_puesto));

create table clientes (id_cliente integer not null,
nombre varchar(40) not null,
apellido varchar(40) not null,
id_zona integer not null,
id_colonia integer not null,
id_ciudad integer not null,
id_dep integer not null,
id_municipio integer not null,
primary key(id_cliente),
foreign key(id_zona) references zona(id_zona),
foreign key(id_colonia) references colonia(id_colonia),
foreign key(id_ciudad) references ciudad(id_ciudad),
foreign key(id_dep) references departamento(id_dep),
foreign key(id_municipio) references municipio(id_municipio));

create table inventario_herramienta (id_herramienta integer not null,
id_marca integer not null,
id_tipo_herramienta integer not null,
cantidad integer not null,
costo integer not null,
precio integer not null,
primary key(id_herramienta),
foreign key(id_marca) references marca(id_marca),
foreign key(id_tipo_herramienta) references tipo_herramienta(id_tipo_herramienta));

create table trabajadores (id_trabajador integer not null,
nombre varchar(40) not null,
apellido varchar(40) not null,
id_puesto integer not null,
primary key(id_trabajador),
foreign key(id_puesto) references puesto(id_puesto));

create table facturas (No_facturas integer not null,
id_cliente integer not null,
id_herramienta integer not null,
cantidad integer,
fecha varchar(40),
total varchar(40),
id_trabajador integer not null,
primary key(No_facturas),
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_herramienta) references inventario_herramienta(id_herramienta),
foreign key(id_trabajador) references trabajadores(id_trabajador));

/*========================================AGREGANDO INFORMACIÓN A LAS TABLAS========================================*/

/*================Agregando información de zona================*/
insert into zona(id_zona,zona)
values(1,10);
insert into zona(id_zona,zona)
values(2,11);
insert into zona(id_zona,zona)
values(3,12);
insert into zona(id_zona,zona)
values(4,13);
insert into zona(id_zona,zona)
values(5,14);
insert into zona(id_zona,zona)
values(6,10);
insert into zona(id_zona,zona)
values(7,10);
insert into zona(id_zona,zona)
values(8,12);
insert into zona(id_zona,zona)
values(9,14);
insert into zona(id_zona,zona)
values(10,14);
select * from zona;
/*================Agregando información de colonia================*/
insert into colonia(id_colonia,colonia) values(1,"Eden");
insert into colonia(id_colonia,colonia) values(2,"Jacarandas");
insert into colonia(id_colonia,colonia) values(3,"Progreso");
insert into colonia(id_colonia,colonia) values(4,"Palmas");
insert into colonia(id_colonia,colonia) values(5,"Paraiso");
/*================Agregando información de ciudad================*/
insert into ciudad(id_ciudad,ciudad) values(1,"Quetzaltenango");
insert into ciudad(id_ciudad,ciudad) values(2,"Antigua Guatemala");
insert into ciudad(id_ciudad,ciudad) values(3,"Guatemala");
insert into ciudad(id_ciudad,ciudad) values(4,"Santa Cruz De Quiche");
insert into ciudad(id_ciudad,ciudad) values(5,"livingston");
/*================Agregando información de departamento================*/
insert into departamento(id_dep,departamento) values(1,"Quetzaltenango");
insert into departamento(id_dep,departamento) values(2,"Sacatepequez");
insert into departamento(id_dep,departamento) values(3,"Guatemala");
insert into departamento(id_dep,departamento) values(4,"Quiche");
insert into departamento(id_dep,departamento) values(5,"Izabal");
/*================Agregando información de municipio================*/
insert into municipio(id_municipio,municipio) values(1,"El Palmar");
insert into municipio(id_municipio,municipio) values(2,"Pastores");
insert into municipio(id_municipio,municipio) values(3,"Amatitlan");
insert into municipio(id_municipio,municipio) values(4,"San Pedro");
insert into municipio(id_municipio,municipio) values(5,"El Estor");
/*================Agregando información de tipo_herramienta================*/
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(1,"Desatornillador");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(2,"Alicate");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(3,"Cierra");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(4,"Acha");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(5,"Martillo");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(6,"Metro");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(7,"Llaves");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(8,"Pinzas");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(9,"Barreno");
insert into tipo_herramienta(id_tipo_herramienta,tipo) values(10,"Tornillos");
/*================Agregando información de marca================*/
insert into marca(id_marca,marca) values(1,"King");
insert into marca(id_marca,marca) values(2,"Roca");
insert into marca(id_marca,marca) values(3,"DeWlat");
insert into marca(id_marca,marca) values(4,"Eagle");
insert into marca(id_marca,marca) values(5,"Warrior");
/*================Agregando información de puesto================*/
insert into puesto(id_puesto,puesto) values(1,"Gerente general");
insert into puesto(id_puesto,puesto) values(2,"Gerente de calidad");
insert into puesto(id_puesto,puesto) values(3,"Gerente de operaciones");
insert into puesto(id_puesto,puesto) values(4,"Administración");
insert into puesto(id_puesto,puesto) values(5,"Atencion al cliente");
/*================Agregando información de trabajadores================*/
insert into trabajadores(id_trabajador,nombre,apellido,id_puesto) values(1,"Juan","Pérez",3);
insert into trabajadores(id_trabajador,nombre,apellido,id_puesto) values(2,"Julio","Hernández",2);
insert into trabajadores(id_trabajador,nombre,apellido,id_puesto) values(3,"Marcos","Flores",5);
insert into trabajadores(id_trabajador,nombre,apellido,id_puesto) values(4,"Carlos","Pérez",4);
insert into trabajadores(id_trabajador,nombre,apellido,id_puesto) values(5,"Roberto","De León",1);
/*================Agregando información de clientes================*/
insert into clientes(id_cliente,nombre,apellido,id_zona,id_colonia,id_ciudad,id_dep,id_municipio)
values(1,"Daniel","García",4,3,1,1,1);
insert into clientes(id_cliente,nombre,apellido,id_zona,id_colonia,id_ciudad,id_dep,id_municipio)
values(2,"Anderson","Rivas",1,2,4,4,4);
insert into clientes(id_cliente,nombre,apellido,id_zona,id_colonia,id_ciudad,id_dep,id_municipio)
values(3,"Octavio","López",5,1,3,3,3);
insert into clientes(id_cliente,nombre,apellido,id_zona,id_colonia,id_ciudad,id_dep,id_municipio)
values(4,"Josue","Morales",2,5,2,2,2);
insert into clientes(id_cliente,nombre,apellido,id_zona,id_colonia,id_ciudad,id_dep,id_municipio)
values(5,"Jorge","Hernández",3,4,5,5,5);
/*================Agregando información de inventario_herramienta================*/
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(1,5,4,6,90.00,100.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(2,2,1,12,30.00,52.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(3,3,3,8,45.00,64.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(4,1,5,10,32.00,59.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(5,4,2,15,20.00,48.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(6,4,1,8,42.00,54.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(7,4,3,20,92.00,120.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(8,5,3,14,75.00,100.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(9,1,3,22,98.00,132.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(10,3,10,40,52.00,84.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(11,3,9,11,125.00,147.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(12,2,9,22,140.00,180.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(13,2,8,30,80.00,110.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(14,2,7,28,38.00,60.00);
insert into inventario_herramienta(id_herramienta,id_marca,id_tipo_herramienta,cantidad,costo,precio)
values(15,1,6,20,84.00,125.00);

/*================Agregando información de facturas================*/
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(1,5,5,15,"1/09/2020",48.00,1);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(2,4,4,10,"3/02/2021",59.00,2);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(3,3,3,8,"1/01/2021",64.00,3);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(4,2,2,12,"21/02/2020",52.00,4);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(5,1,1,6,"5/06/2021",100.00,5);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(6,1,6,8,"1/02/2021",54.00,1);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(7,2,7,20,"2/02/2021",120.00,2);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(8,3,8,14,"3/02/2021",100.00,3);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(9,4,9,22,"4/02/2021",132.00,4);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(10,5,10,40,"19/02/2021",84.00,5);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(11,3,11,11,"20/02/2021",147.00,1);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(12,3,12,22,"2/03/2021",180.00,2);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(13,3,13,30,"4/03/2021",110.00,3);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(14,2,14,28,"8/03/2021",60.00,4);
insert into facturas(No_facturas,id_cliente,id_herramienta,cantidad,fecha,total,id_trabajador)
values(15,1,15,20,"20/03/2021",125.00,5);

/*==========================================CONSULTAS DE DATOS A FERRETERÍA==========================================*/

/*==============Mostrar totdos los clientes. Todos los datos================*/
select * from clientes;

/*==============Mostrar totdos sus productos del inventario. Todos los datos================*/
select * from inventario_herramienta;

/*==============Mostrar la cantidad de marcas que tienen================*/
select count(id_marca) from marca;

/*==============Mostrar la cantidad de clientes que tenemos en x zona================*/
select count(nombre) from clientes where id_zona=5;

/*==============Mostrar la cantidad de clientes que tenemos en x departamento================*/
select count(nombre) from clientes where id_dep=3;

/*==============Mostrar la cantidad total de productos que tienen en stock================*/
select sum(cantidad) from inventario_herramienta;

/*==============Mostrar la cantidad total de productos de x marca que tiene en stock, utilizando el id de la marca para identificar================*/
select sum(cantidad) from inventario_herramienta where id_marca=4;

/*==============Mostrar la cantidad total de productos de x tipo de herramienta que tiene en stock. utilizando el id del tipo de herramienta para identificar=======*/
select sum(cantidad) from inventario_herramienta where id_tipo_herramienta=9;

/*==============Mostrar la cantidad de facturas de los primeros 20 días del mes================*/
select count(No_facturas) from facturas where fecha between "1/03/2021" and "20/03/2021";

/*==============Mostrar la cantidad vendida durante los primeros 20 días del mes================*/
select sum(total) from facturas where fecha between "1/03/2021" and "20/03/2021";

/*==============Mostrar el nombre de todos los productos de una marca utilizando su id================*/
select tipo_herramienta.tipo from inventario_herramienta,tipo_herramienta
where inventario_herramienta.id_marca=4 and inventario_herramienta.id_herramienta=tipo_herramienta.id_herramienta;

/*==============Mostrar el nombre de todos los productos de una marca x ingresando el nombre de la marca================*/

