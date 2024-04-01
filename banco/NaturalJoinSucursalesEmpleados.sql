SELECT	Empleados.nombresuc, nombreEmp
FROM 	Sucursales
		NATURAL JOIN Empleados
WHERE	ciudadsuc = "Horseneck"
ORDER BY Empleados.nombresuc, nombreEmp