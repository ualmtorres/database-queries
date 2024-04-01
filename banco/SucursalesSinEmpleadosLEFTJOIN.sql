SELECT 	Sucursales.nombreSuc
FROM	Sucursales
		LEFT JOIN Empleados ON Sucursales.nombreSuc = Empleados.nombreSuc
WHERE	dniemp ISNULL