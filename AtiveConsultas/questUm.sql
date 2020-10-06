Select Nome
From Funcionario
Where Salario > (
	Select Salario
	From Funcionario fdep5
	Where fdep5.coddepto = '5'
);
