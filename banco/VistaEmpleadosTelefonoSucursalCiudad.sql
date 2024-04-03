CREATE VIEW EmpleCiudad AS
SELECT      nombreEmp, 
            telefono, 
            Empleados.nombreSuc, 
            ciudadSuc
FROM        Empleados, 
            Sucursales
WHERE       Empleados.nombreSuc = Sucursales.nombreSuc