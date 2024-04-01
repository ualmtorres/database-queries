SELECT 	nombresuc
FROM	Sucursales
WHERE	NOT EXISTS (
  			SELECT	nombreemp
			FROM	Empleados
			WHERE	Empleados.nombreSuc = Sucursales.nombreSuc
		)
