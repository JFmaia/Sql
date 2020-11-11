/*
Faça um procedimento 
para exibir os funcionários com idade acima da média do seu departamento.
*/

CREATE OR REPLACE PROCEDURE questaoTres()
AS $$
BEGIN
	SELECT nome FROM funcionario WHERE calculaIdadeFunc(codigo) > MediaIdadeDep(depto);
END;
$$ LANGUAGE plpgsql;

call questaoTres();

--final--