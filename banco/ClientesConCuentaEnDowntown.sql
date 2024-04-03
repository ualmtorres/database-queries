SELECT  c.nombreCli, 
        cc.numeroCta, 
        cu.nombreSuc
FROM    Clientes c
        INNER JOIN CtaCli cc ON c.dniCli = cc.dniCli
        INNER JOIN Cuentas cu ON cc.numeroCta = cu.numeroCta
WHERE   cu.nombreSuc = 'Downtown';