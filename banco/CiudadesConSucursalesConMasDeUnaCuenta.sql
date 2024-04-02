SELECT	ciudadSuc
FROM	Sucursales
WHERE	nombreSuc IN 
	(
      SELECT	nombreSuc
      FROM		Cuentas
      GROUP BY	nombreSuc
      HAVING	COUNT(numeroCta) > 1
    );