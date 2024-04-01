SELECT	nombreEmp
FROM	Empleados
UNION
SELECT	nombreCli
FROM	Clientes
ORDER BY nombreEmp;