select nome, dtnasc
from funcionario f
WHERE f.codigo = (
	SELECT codigo
	FROM funcionario f
	WHERE NOT EXISTS (
		SELECT codgerente
		FROM departamento d
		WHERE f.codigo = d.codgerente
	)
) AND '2020' - date_part('year', dtnasc) >= 21;
