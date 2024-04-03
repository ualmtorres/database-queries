SELECT	nombrecli, CtaCli.numeroCta, saldo
FROM	Clientes
		JOIN CtaCli ON Clientes.dniCli = CtaCli.dniCli
        JOIN Cuentas ON CtaCli.numeroCta = Cuentas.numeroCta
WHERE	Cuentas.numerocta IN (
          SELECT	numerocta
          FROM	Cuentas
          WHERE	saldo > (SELECT AVG(saldo) FROM Cuentas)
  		);