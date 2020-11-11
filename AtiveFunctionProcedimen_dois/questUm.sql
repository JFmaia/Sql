/*
Crie uma função que recebe o código de um voo 
e retorna o número de passageiros desse voo.
*/

CREATE OR REPLACE FUNCTION questaoUm(codVoo CHAR(9)) 
RETURNS INTEGER AS $$
DECLARE
	numPassageiros integer;
BEGIN
	SELECT INTO numPassageiros num_passageiros FROM voo WHERE codigo = codVoo;
	RETURN numPassageiros;
END;
$$ LANGUAGE 'plpgsql';

SELECT questaoUm('1');
--final--