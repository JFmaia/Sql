/*
Faça uma função para calcular quantos dias de atraso tem um projeto.
A função retornará negativo se tiver atrasada 
e positivo se tiver em dia.
*/

CREATE OR REPLACE FUNCTION questaoCinco(codProjeto INTEGER) 
RETURNS INTERVAL AS $$
DECLARE
	fim DATE;
	dataHoje timestamp;
	diasAtraso INTERVAL;
BEGIN
	select into datahoje NOW(); 
	select into fim datafim from projeto where codigo = codProjeto;
	diasAtraso = fim - dataHoje;
	return diasAtraso;
END;
$$ LANGUAGE 'plpgsql';

SELECT questaoCinco('1');

--final--