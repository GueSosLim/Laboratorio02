create table Empleados (
	id int null,
    apellidos varchar(25) null,
    nombres varchar(25) null,
    dept_id int null,
    foreign key (dept_id) references Departamento (id)
);
go