SELECT	nombrecli, saldoTotal
FROM	Clientes Cli, 
		(
          SELECT	CC.dniCli, SUM(saldo) as saldoTotal
          FROM		CtaCli CC 
          			JOIN Cuentas Cu ON CC.numeroCta = Cu.numeroCta
          GROUP BY	dniCli
          HAVING	Sum(Saldo) > 55000
        ) Aux
WHERE	Cli.dniCli = Aux.dniCli
ORDER BY saldoTotal DESC