create database modificar
use modificar

create table producto(
clave_prod int,
nom_prod varchar(20),
precio float
constraint pk_cp primary key (clave_prod)
)

create table cliente(
clave_clie int,
nom_clie varchar(20)
constraint pk_cc primary key (clave_clie)
)

create table notas(
folio int,
clave_prod1 int,
clave_clie1 int,
cant int,
subtot float,
constraint fk_cp1 foreign key (clave_prod1) references producto (clave_prod),
constraint fk_cc1 foreign key (clave_clie1) references cliente (clave_clie)
)

/*INSERT*/
--Tabla producto
insert into producto values(1, 'papas', 7)
insert into producto values(2, 'refresco', 9)

--Tabla cliente
insert into cliente values(1, 'Ana')
insert into cliente values(2, 'Sergio')

--Tabla notas
insert into notas values(1, 1, 1, 4, null)
insert into notas values(2, 2, 2, 1, null)

/*UPDATE*/
update cliente
set nom_clie='Laura'
where clave_clie=1

update notas
set subtot=cant*precio
from notas inner join producto on producto.clave_prod=notas.clave_prod1