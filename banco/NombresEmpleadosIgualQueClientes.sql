SELECT	nombreEmp
FROM	Empleados
INTERSECT
SELECT	nombreCli
FROM	Clientes
ORDER BY nombreEmp;