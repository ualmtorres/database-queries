SELECT  nombreemp
FROM    Empleados E, 
        (
        SELECT  nombresuc, 
                ciudadsuc
        FROM    Sucursales
        WHERE   activo > 5000000 
        ) AS Suc5M
WHERE   E.nombreSuc = Suc5M.nombreSuc;
