/*Ejercicio 01*/
create view VW_Empleados
	as select employee_id as ID_empleados, first_name as nombre, departments.department_id as id_departament
	from employees inner join departments on departments.department_id=employees.department_id;
go
SELECT * FROM VW_Empleados;
GO

/*Ejercicio 02*/
create view VW_Empleados2
	as select employee_id as ID_empleados, first_name as nombre_empleado, departments.department_id as id_departamento, departments.department_name as nombre_departamento
	from employees inner join departments on departments.department_id=employees.department_id;
go
SELECT * FROM VW_Empleados2;
GO

/*Ejercicio 03*/
create view VW_Dept50
	as select employee_id as EmpNo, last_name as Empleado,departments.department_id as DeptNo
	from employees inner join departments on departments.department_id=employees.department_id
	where departments.department_id=50;
SELECT * FROM VW_Dept50;
GO

/*Ejercicio 06*/
alter table Departamento ADD educacion varchar(25);
alter table Departamento ADD administracion varchar(25);

/*Ejercicio 07*/
create index nombre on Departamento(nombre);
go

/*Ejercicio 08*/
create SYNONYM EMP for employees ;