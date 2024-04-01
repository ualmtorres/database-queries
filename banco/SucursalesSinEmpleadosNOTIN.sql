SELECT 	nombresuc
FROM	Sucursales
WHERE	nombreSuc NOT IN (
  			SELECT	nombreSuc
			FROM	Empleados
		)
