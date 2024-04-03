CREATE VIEW ClientesSaldoTotal (DNICli, nombreCli, SaldoTotal) AS 
SELECT	Clientes.DNICli,
		nombreCli,
		SUM(Saldo)
FROM	Clientes, 
		CtaCli, 
        Cuentas
WHERE	Clientes.DNICli = CtaCli.DNICli 
		and CtaCli.numeroCta = Cuentas.numeroCta
GROUP BY Clientes.DNICli;
