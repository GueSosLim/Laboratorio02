/*Elevar el salario a $ 1,000 a todos los empleados que tengan un salario menor a esa cantidad.*/


ALTER DATABASE [$(DatabaseName)]
	ADD FILE
	(
		NAME = [Script08],
		FILENAME = '$(DefaultDataPath)$(DefaultFilePrefix)_Script08.ndf'
	)
	
