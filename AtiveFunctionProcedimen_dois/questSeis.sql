/*
Crie uma procedure que recebe um valor qualquer
e retorna esse valor ao quadrado.
*/

CREATE OR REPLACE PROCEDURE questaoSeis(INOUT num integer)

AS $$

BEGIN

	num = num^2;

END;

$$ LANGUAGE plpgsql;

call questaoSeis(4);
--final--