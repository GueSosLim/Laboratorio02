/*
Crear un punto de restauración intermedio para esta transacción
*/

SAVE TRAN PD01;
DELETE FROM Mis_Empleados
WHERE ID=1;

ROLLBACK TRAN PD01; 