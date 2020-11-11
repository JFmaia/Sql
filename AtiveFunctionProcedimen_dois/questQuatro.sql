/*
4.
Crie uma função que retorna a soma das milhas de todos os clientes.
*/

CREATE OR REPLACE FUNCTION questaoQuatro()

RETURNS INTEGER AS $$

DECLARE

	totalMilhas INTEGER;

BEGIN

	select into totalMilhas sum(quantidade) from milhas;

	RETURN totalMilhas;

END;

$$ LANGUAGE 'plpgsql';

SELECT questaoQuatro();
--final--