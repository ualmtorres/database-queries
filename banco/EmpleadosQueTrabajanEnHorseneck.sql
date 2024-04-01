SELECT	Empleados.nombresuc, nombreEmp
FROM 	Sucursales,
		Empleados
WHERE	Sucursales.nombreSuc = Empleados.nombreSuc
		AND ciudadsuc = "Horseneck"
ORDER BY Empleados.nombresuc, nombreEmp