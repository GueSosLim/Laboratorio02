/*
Do not change the database path or name variables.
Any sqlcmd variables will be properly substituted during 
build and deployment.
*/

DELETE FROM Mis_Empleados

WHERE Nombres= 'Maria' AND Apellidos='Castro';