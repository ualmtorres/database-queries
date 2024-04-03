SELECT	Sucursales.nombreSuc, 
		COUNT(Cuentas.numeroCta) AS cantidadCuentas, 
        coalesce( SUM(saldo) , 0) AS saldoTotal
FROM	Sucursales
		LEFT JOIN Cuentas ON Sucursales.nombreSuc = Cuentas.nombreSuc
GROUP BY Sucursales.nombreSuc;