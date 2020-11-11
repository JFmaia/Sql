/*
Faça uma função para calcular quantos dias de atraso tem uma atividade.
A função retornará negativo se tiver atrasada 
e positivo se tiver em dia.
*/

CREATE OR REPLACE FUNCTION questaoQuatro(codAtividade INTEGER) 
RETURNS INTERVAL AS $$
DECLARE
	fim DATE;
	dataHoje timestamp;
	diasAtraso INTERVAL;
BEGIN
	select into datahoje NOW(); 
	select into fim datafim from atividade where codigo = codAtividade;
	diasAtraso = fim - dataHoje;
	return diasAtraso;
END;
$$ LANGUAGE 'plpgsql';

SELECT questaoQuatro('1');

--final--