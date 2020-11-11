--Faça uma consulta para calcular a média de idade por departamento.--

CREATE OR REPLACE FUNCTION MediaIdadeDep(codDep INTEGER) RETURNS INTEGER 
	AS $$
DECLARE
	MediaIdadeDep INTEGER;
BEGIN
	SELECT into MediaIdadeDep AVG(EXTRACT(years FROM AGE(f.datanasc))) FROM funcionario f WHERE f.depto = codDep;
	return MediaIdadeDep;
END;
$$ LANGUAGE 'plpgsql';

SELECT MediaIdadeDep(1);

--final--