--Faça um função para calcular a idade do funcionário.--

drop function if exists calcula_idade_func cascade;

Create function calcula_idade_func(INTEGER) Returns INTEGER
	as $$
declare
	idade INTEGER;
begin
	select into idade EXTRACT(years FROM AGE(f.datanasc)) FROM funcionario f WHERE f.codigo = $1;
	return idade;
end;
$$ language plpgsql;

select calcula_idade_func(1);

--Final--