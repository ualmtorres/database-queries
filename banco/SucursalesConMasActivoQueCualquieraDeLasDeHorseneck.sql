SELECT	nombreSuc
FROM 	Sucursales
WHERE 	activo > ANY (
  			SELECT	activo
			FROM	Sucursales
			WHERE	ciudadsuc = "Horseneck"
		)