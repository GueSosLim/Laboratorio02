CREATE LOGIN Adrian
    WITH PASSWORD = '340$Uuxwp7Mcxo7Khy';
GO

CREATE USER Adrian FOR LOGIN Aadrian;
GO

revoke insert on object:: Empleados2 from Adrian;
go