/*
10.
Crie um procedure que recebe o código de um cliente 
e exibe sua milhagem, 
depois zera ela 
e exibe o nome do cliente 
e a milhagem novamente.
*/

UPDATE milhas SET quantidade = 100 WHERE cliente = '1';

CREATE OR REPLACE PROCEDURE questaoDez(IN codCliente char(9))

AS $$

DECLARE

    nomeCliente VARCHAR(20);

	milhasCliente INTEGER;

BEGIN

	SELECT INTO nomeCliente nome FROM cliente WHERE codigo = codCliente;

	SELECT INTO milhasCliente quantidade FROM milhas WHERE cliente = codCliente;

	
	raise notice 'Milhagem do Cliente: %', milhasCliente;

	
	UPDATE milhas SET quantidade = 0 WHERE cliente = codCliente;

	
	raise notice 'Nome do Cliente Lindo: %', nomeCliente;

	SELECT INTO milhasCliente quantidade FROM milhas WHERE cliente = codCliente;

	raise notice 'Milhagem do Cliente: %', milhasCliente;

END;

$$ LANGUAGE plpgsql;

call questaoDez('1');
--final--