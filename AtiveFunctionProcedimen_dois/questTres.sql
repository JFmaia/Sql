/*
Crie uma função que retorna o número de voos 
que certo cliente já realizou.
*/

CREATE OR REPLACE FUNCTION questaoTres(codCliente CHAR(9)) 

RETURNS INTEGER AS $$

DECLARE

	voosCliente INTEGER;

BEGIN

	select into voosCliente count(*) from cliente_voo where cliente = codCliente;

	RETURN voosCliente;

END;

$$ LANGUAGE 'plpgsql';

SELECT questaoTres('1');
--final--