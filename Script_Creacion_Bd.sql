
create database Planilla_Bd;
use Planilla_Bd;

create table CONCEPTO_5407(
ID varchar (5) primary Key,
Codigo_Concepto varchar (5)  ,
Nombre_Concepto varchar (60) not null,
Efecto_Concepto varchar (1) not null,
Estatus_Concepto varchar (1) not null
)Engine = InnoDB Default charset = Latin1 ;


create table NOMINAE_5407(
#Codigo_Nomina varchar (5) ,
Codigo_Nomina varchar (5) primary key,
Fecha_Inicial_Nomina DATE not null,
Fecha_Final_Nomina date not null
)Engine = InnoDB Default charset = Latin1 ;

create table Puesto_5407 (
Codigo_Puesto varchar (5) primary key,
Nombre_Puesto varchar (60) not null,
Estatus_Puesto varchar (1) not null
)Engine = InnoDB Default charset = Latin1 ;


create table DEPARTAMENTO_5407(
Codigo_Departamento varchar (5) primary key,
Nombre_Departamento varchar (60) not  null,
Estatus_Departamento varchar (1) not null
)Engine = InnoDB Default charset = Latin1 ;





create table EMPLEADO_5407(
Codigo_Empleado varchar (5) primary key,
Nombre_Empleado varchar (60) not null,
Sueldo_Empleado float (10,2) not null,
Estatus_Empleado varchar (1) not null,
Codigo_Puesto varchar (5) not null,
Codigo_Departamento varchar(5) not null,
foreign key(Codigo_Departamento) references DEPARTAMENTO_5407 (Codigo_Departamento ),
foreign key(Codigo_Puesto) references PUESTO_5407 (Codigo_Puesto)
)Engine = InnoDB Default charset = Latin1 ;

create table NOMINAD_5407(
Codigo_Nomina varchar (5) not null,
Valor_Minimo float (10,2) not null,
Codigo_Empleado varchar (5) not null,
Codigo_Concepto varchar(5) not null,
#primary key (Codigo_Nomina , Codigo_Empleado , Codigo_Concepto),
foreign key(Codigo_Nomina) references NOMINAE_5407 (Codigo_Nomina),
foreign key (Codigo_Empleado) references EMPLEADO_5407 (Codigo_Empleado),
foreign key(Codigo_Concepto) references CONCEPTO_5407 (ID)

)Engine = InnoDB Default charset = Latin1 ;

