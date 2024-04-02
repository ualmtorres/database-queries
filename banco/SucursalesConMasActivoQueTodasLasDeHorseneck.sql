SELECT	nombreSuc
FROM 	Sucursales
WHERE 	activo > ALL (
  			SELECT	activo
			FROM	Sucursales
			WHERE	ciudadsuc = "Horseneck"
		)