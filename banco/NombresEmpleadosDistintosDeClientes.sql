SELECT	nombreEmp
FROM	Empleados
EXCEPT
SELECT	nombreCli
FROM	Clientes
ORDER BY nombreEmp;