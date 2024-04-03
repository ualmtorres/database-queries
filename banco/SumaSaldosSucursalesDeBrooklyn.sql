SELECT	Cuentas.nombreSuc, SUM(saldo) AS SaldoTotal
FROM	Cuentas
		JOIN Sucursales ON Cuentas.nombreSuc = Sucursales.nombreSuc
WHERE	ciudadsuc = "Brooklyn"
GROUP BY Cuentas.nombreSuc;