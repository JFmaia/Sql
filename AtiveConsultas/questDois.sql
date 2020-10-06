SELECT nome
FROM funcionario
WHERE dtnasc != (
	SELECT MIN(dtnasc)
	FROM funcionario
);