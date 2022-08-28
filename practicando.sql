create database escuela
use escuela

--Tabla carrera
create table carrera(
  clave_c int,
  nom_c varchar(50),
  durac_c float,
  constraint pk_cc primary key(clave_c)
)

insert into carrera values(1, 'Derecho', 3)
insert into carrera values(2, 'Ingenieria en Sistemas', 4)

select * from carrera

--Tabla materia
create table materia(
  clave_m int,
  nom_m varchar(50),
  cred_m float,
  constraint pk_cm primary key(clave_m)
)

insert into materia values(1, 'Matematicas', 25)
insert into materia values(2, 'Espanol', 15)

select clave_m, nom_m from materia

--Tabla profesor
create table profesor(
  clave_p int,
  nom_p varchar(150),
  dir_p varchar(200),
  tel_p bigint,
  hor_p datetime,
  constraint pk_cp primary key(clave_p)
)

insert into profesor values(1, 'Laura Rosas', 'Calle Azul', 567867, '7:00')
insert into profesor values(2, 'Roberto Diaz', 'Calle Rosa', 56743526, '9:00')

--Tabla alumno
create table alumno(
  mat_alu int,
  nom_alu varchar(150),
  edad_alu int,
  sem_alu,
  gen_alu varchar(10),
  clave_c1 int,
  constraint pk_calu primary key(mat_alu),
  constraint fk_fc1 foreign key(clave_c1) references carrera(clave_c)
)

insert into alumno values (1, 'Ana', 18, 6, 'Femenino', 1)

--Alumno-Profesor
create table alu_pro(
  mat_alu1 int,
  clave_p1 int,
  constraint fk_falu1 foreign key(mat_alu1) references alumno(mat_alu),
  constraint fk_fp1 foreign key(clave_p1) references profesor(clave_p)
)

insert into alu_pro values (1, 2)

--Materia-Alumno
create table mat_alu(
  clave_m1 int,
  mat_alu2 int,
  constraint fk_fm1 foreign key(clave_m1) references materia(clave_m),
  constraint fk_falu2 foreign key(mat_alu2) references alumno(mat_alu)
)

insert into mat_alu values(1, 1)

--Materia-Profesor
create table mat_pro(
  clave_m2 int,
  clave_p2 int,
  constraint fk_fm1 foreign key(clave_m2) references materia(clave_m),
  constraint fk_fp2 foreign key(clave_p2) references profesor(clave_p)
)

insert into mat_pro values(2, 2)