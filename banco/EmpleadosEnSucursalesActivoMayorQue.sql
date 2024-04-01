SELECT 	nombreemp
FROM 	Empleados
WHERE 	nombresuc IN (
  SELECT nombresuc
  FROM	Sucursales
  WHERE	activo > 500000
)
ORDER BY nombreemp;