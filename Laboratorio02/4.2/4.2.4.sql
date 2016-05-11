create table Empleados2 (
	employee_id int not null primary key,
    first_name varchar(25) null,
    last_name varchar(25) null,
    salary int null,
    dept_id int null,
    foreign key (dept_id) references Departamento (id)
);
go
