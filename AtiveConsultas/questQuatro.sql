SELECT nome, salario, d.descricao
FROM funcionario f, departamento d
WHERE NOT EXISTS (
	SELECT codgerente
	FROM departamento d
	WHERE f.codigo = d.codgerente
)
AND f.coddepto = d.codigo
ORDER BY d.codigo;