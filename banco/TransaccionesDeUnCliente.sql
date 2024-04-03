SELECT	t.numeroCta, 
		cu.nombreSuc, 	
       	t.numeroTrans, 
        t.fecha, 
        t.importe
FROM	Transacciones t
		INNER JOIN Cuentas cu ON t.numeroCta = cu.numeroCta
		INNER JOIN CtaCli cc ON cu.numeroCta = cc.numeroCta
		INNER JOIN Clientes c ON cc.dniCli = c.dniCli
WHERE	c.dniCli = '1';