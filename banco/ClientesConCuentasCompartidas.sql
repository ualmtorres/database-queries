SELECT	nombreCli,
		CtaCli.numeroCta
FROM	Clientes
		JOIN CtaCli ON Clientes.dniCli = CtaCli.dniCli
        JOIN (
              SELECT	numeroCta
              FROM		CtaCli
              GROUP BY	numeroCta
              HAVING	COUNT(*) > 1
              ) Aux ON CtaCli.numeroCta = Aux.numeroCta;