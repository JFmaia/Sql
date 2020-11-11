/*
Crie uma procedure que recebe um código de piloto, 
então soma mais um voo a esse piloto 
e por fim exibe o número total de voos desse piloto.
*/

CREATE OR REPLACE PROCEDURE addVooPiloto(cod char(9))

AS $$

DECLARE

    quant_voos integer;

BEGIN

	UPDATE piloto SET num_voos = num_voos + 1 WHERE codigo = cod;
	
	SELECT INTO quant_voos num_voos FROM piloto WHERE codigo=cod;
	
	raise notice 'número total de voos: %', quant_voos;

END;

$$ LANGUAGE plpgsql;

call addVooPiloto('1');

--final--