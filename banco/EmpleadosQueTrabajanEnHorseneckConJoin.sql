SELECT	Empleados.nombresuc, nombreEmp
FROM 	Sucursales
		JOIN Empleados ON Sucursales.nombreSuc = Empleados.nombreSuc
WHERE	ciudadsuc = "Horseneck"
ORDER BY Empleados.nombresuc, nombreEmp