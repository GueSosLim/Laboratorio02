/*Ejercicio 01*/
use Laboratorio02;

/*Ejercicio 02*/
CREATE TABLE Mis_Empleados
(
ID_Emp int NOT NULL,
Apellidos varchar(25) ,
Nombres varchar(25),
Codigo varchar(10),
Salario decimal(9,2),
PRIMARY KEY (ID_Emp)
)

/*Ejercicio 03*/

INSERT INTO  "Mis_Empleados" ("Apellidos", "Nombres","Codigo","Salario")
VALUES ("Vargas Canseco","Raul","Rvargas",895.0 );

INSERT INTO  "Mis_Empleados" ("Apellidos", "Nombres","Codigo","Salario")
VALUES ("Castro Feria","Maria","Mcastro",860.0 );

/*Ejercicio 04*/

Declare @Apellidos varchar(25)
Declare @Nombres varchar(25)
Declare @Codigo varchar(10)
Declare @Salario decimal(9,2)
Set @Apellidos = ''
Set @Nombres = ''
Set @Codigo = ''
Set @Salario = ''
 
 /*Ejercicio 05*/

 
Declare @Apellidos varchar(25)
Declare @Nombres varchar(25)
Declare @Codigo varchar(10)
Declare @Salario decimal(9,2)
Set @Apellidos = "Gómez Albán"
Set @Nombres = "Juan Pablo"
Set @Codigo = "Jgomez"
Set @Salario = 1100.0

Declare @Apellidos varchar(25)
Declare @Nombres varchar(25)
Declare @Codigo varchar(10)
Declare @Salario decimal(9,2)
Set @Apellidos = "Quiroz Ardiles "
Set @Nombres = "Judith "
Set @Codigo = "Jquiroz"
Set @Salario = 750.0

Declare @Apellidos varchar(25)
Declare @Nombres varchar(25)
Declare @Codigo varchar(10)
Declare @Salario decimal(9,2)
Set @Apellidos = "Soria Peralta"
Set @Nombres = "Pedro"
Set @Codigo = "Psoria"
Set @Salario = 1550.0

/*Ejercicio 06*/
Select * FROM sys.fn_dblog(NULL,NULL);


/*Ejercicio 07*/
UPDATE Mis_Empleados
    SET Nombres = 'Benjamin'
    WHERE ProductID = 3
GO

/*Ejercicio 09*/
DELETE FROM Mis_Empleados

WHERE Nombres= 'Maria' AND Apellidos='Castro';

/*Ejercicio 10*/
Select * FROM sys.fn_dblog(NULL,NULL);

/*Ejercicio 11*/
COMMIT;

/*Ejercicio 12*/
INSERT INTO  "Mis_Empleados" ("Apellidos", "Nombres","Codigo","Salario")
VALUES ("Hurtado Gamboa","Ernesto","Ehurtado",1400.0 );

/*Ejercicio 13*/
use Laboratorio02;
Select * from Mis_Empleados order by Salario ASC;

/*Ejercicio 14*/
SAVE TRAN PD01;
DELETE FROM Mis_Empleados
WHERE ID=1;

ROLLBACK TRAN PD01; 

/*Ejercicio 15*/
DELETE FROM Mis_Empleados

/*Ejercicio 16*/
Select * FROM sys.fn_dblog(NULL,NULL);

/*Ejercicio 17*/
select * from Mis_Empleados;
 ROLLBACK mis_empleados;

 /*Ejercicio 18*/
 select * from Mis_Empleados;

  /*Ejercicio 19*/
COMMIT ;

 /*Ejercicio 20*/
  DECLARE @Nombres VARCHAR(25),@Apellidos VARCHAR(25),@Salario DECIMAL(9,2),@Codigo VARCHAR(10)
SET @Nombre = 'Richi Man'
SET @Apellido = 'Torres Vaquez'
SET @Salario = 100.0

SELECT @Codigo=CAST((SUBSTRING(@Nombres,1,1)+SUBSTRING(@Apellidos,1,1)) AS VARCHAR(10)) 
SELECT @Codigo AS Codigo
SELECT @Salario AS Salario

  /*Ejercicio 21*/
  DECLARE @Nombres VARCHAR(25),@Apellidos VARCHAR(25),@Salario DECIMAL(9,2),@Codigo VARCHAR(10)
SET @Nombre = 'Graciela'
SET @Apellido = 'Valdivia Pérez'
SET @Salario = 1800.0
 
SELECT @Codigo=CAST((SUBSTRING(@Nombres,1,1)+SUBSTRING(@Apellidos,1,1)) AS VARCHAR(10)) 
SELECT @Codigo AS Codigo
SELECT @Salario AS Salario

   /*Ejercicio 22*/
    select * from Mis_Empleados;
	Select * FROM sys.fn_dblog(NULL,NULL);