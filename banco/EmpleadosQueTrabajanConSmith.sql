SELECT	E.nombreEmp
FROM	Empleados E, Empleados Ebis
WHERE	Ebis.nombreEmp = "Smith" 
		AND Ebis.nombreSuc = E.nombreSuc;