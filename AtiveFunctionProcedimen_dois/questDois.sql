/*
Crie uma função que recebe o código de um cliente 
e o código de um voo 
e retorna a classe que o cliente está viajando.
*/

CREATE OR REPLACE FUNCTION questaoDois(codCliente CHAR(9), codVoo CHAR(9)) 

RETURNS VARCHAR(20) AS $$

DECLARE

	classeVoo VARCHAR(20);

BEGIN

	SELECT INTO classeVoo classe FROM cliente_voo WHERE cliente = codCliente AND voo = codVoo;

	RETURN classeVoo;

END;

$$ LANGUAGE 'plpgsql';

SELECT questaoDois('1', '1');
--final--