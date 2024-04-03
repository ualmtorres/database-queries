SELECT	ciudadSuc, SUM(saldo) AS SaldoTotal
FROM	Cuentas
		JOIN Sucursales ON Cuentas.nombreSuc = Sucursales.nombreSuc
WHERE	saldo > 20000
GROUP BY ciudadSuc
HAVING	SUM(saldo) > 100000;