/*
Crie uma procedure que recebe o código de um cliente 
e retorna o nome e a quantidade de milhas desse cliente.
*/

CREATE OR REPLACE PROCEDURE questaoOito

(IN codCliente char(9), 
INOUT nomeCliente VARCHAR(20) DEFAULT NULL, 
INOUT milhasCliente INTEGER DEFAULT NULL)

AS $$

BEGIN

	SELECT INTO nomeCliente nome FROM cliente WHERE codigo = codCliente;

	SELECT INTO milhasCliente quantidade FROM milhas WHERE cliente = codCliente;

END;

$$ LANGUAGE plpgsql;

call questaoOito('1');
--final--