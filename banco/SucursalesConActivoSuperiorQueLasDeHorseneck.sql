SELECT  DISTINCT S2.nombreSuc, S2.activo
FROM    Sucursales S1, 
        Sucursales S2
WHERE   S1.ciudadSuc = "Horseneck" 
        AND S2.Activo > S1.Activo;
