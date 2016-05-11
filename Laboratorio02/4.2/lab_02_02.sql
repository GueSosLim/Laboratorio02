/*
No cambie las variables de nombre o ruta de acceso de la base de datos.
Cualquier variable sqlcmd será correctamente sustituida durante 
la compilación y la implementación.
*/
ALTER DATABASE [$(DatabaseName)]
ADD LOG FILE
(
	NAME = [lab_02_02_log],
	FILENAME = '$(DefaultLogPath)$(DefaultFilePrefix)_lab_02_02.ldf',
	SIZE = 1024 KB,
	FILEGROWTH = 10%
)
/*
Ejercicio 01
*/
create table Departamento (
	id int not null primary key,
    nombre varchar(25) null
);
go
/*
Ejercicio 02
*/
insert into Departamento values (1,'Logistica');
/*
Ejercicio 03
*/
create table Empleados (
	id int null,
    apellidos varchar(25) null,
    nombres varchar(25) null,
    dept_id int null,
    foreign key (dept_id) references Departamento (id)
);
go

/*
Ejercicio 04
*/
create table Empleados2 (
	employee_id int not null primary key,
    first_name varchar(25) null,
    last_name varchar(25) null,
    salary int null,
    dept_id int null,
    foreign key (dept_id) references Departamento (id)
);
go
/*
Ejercicio 05
*/
CREATE LOGIN Adrian
    WITH PASSWORD = '340$Uuxwp7Mcxo7Khy';
GO

CREATE USER Adrian FOR LOGIN Aadrian;
GO

revoke insert on object:: Empleados2 from Adrian;
go
/*
Ejercicio 06
*/
insert into Empleados2 (id,first_name,last_name,salary,department_id) values (35,'Alberto','Fernandez',4500,10);
/*
Ejercicio 07
*/
grant all on object :: Empleados2 from Adrian;
go
insert into Empleados2 (id,first_name,last_name,salary,department_id) values (35,'Alberto','Fernandez',4500,10);
/*
Ejercicio 08
*/
delete from Empleados2;