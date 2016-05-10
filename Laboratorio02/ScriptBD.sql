/*
No cambie las variables de nombre o ruta de acceso de la base de datos.
Cualquier variable sqlcmd será correctamente sustituida durante 
la compilación y la implementación.
*/
ALTER DATABASE [$(DatabaseName)]
ADD LOG FILE
(
	NAME = [ScriptBD_log],
	FILENAME = '$(DefaultLogPath)$(DefaultFilePrefix)_ScriptBD.cs',
	SIZE = 1024 KB,
	FILEGROWTH = 10%
)
