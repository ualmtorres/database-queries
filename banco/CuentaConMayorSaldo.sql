SELECT	Aux.numeroCta,
        Aux.saldo,
        nombreCli,
FROM	Clientes
		JOIN CtaCli ON Clientes.dniCli = CtaCli.dniCli
        JOIN (
          SELECT	*
          FROM	Cuentas
          WHERE	saldo = (SELECT MAX(saldo) FROM Cuentas)
          ) Aux ON CtaCli.numeroCta = Aux.numeroCta;