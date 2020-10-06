SELECT nome, salario, d.descricao
FROM funcionario f, departamento d
WHERE f.coddepto = d.codigo;