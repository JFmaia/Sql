CREATE TABLE Atividade
(
	Codigo CHAR(9),
	Descricao VARCHAR(100),

	PRIMARY KEY (Codigo)
);

CREATE TABLE Departamento
(
	Codigo CHAR(9),
	Descricao VARCHAR(100),
	CodGerente CHAR(9),

	PRIMARY KEY (Codigo)
);

CREATE TABLE Funcionario
(
	Codigo CHAR(9),
	Nome VARCHAR(20),
	Sexo VARCHAR(20),
	DtNasc DATE,
	Salario INTEGER,
	CodDepto CHAR(9),

	PRIMARY KEY (Codigo)
);

CREATE TABLE Projeto
(
	Codigo CHAR(9),
	Descricao VARCHAR(100),
	CodDepto CHAR(9),
	CodResponsavel CHAR(9),
	DataInicio DATE,
	Datafim DATE,
	
	PRIMARY KEY (Codigo)
);

CREATE TABLE AtividadeProjeto
(
	Codigo CHAR(9),
	CodProjeto CHAR(9),
	CodAtividade CHAR(9),
	CodResponsavel CHAR(9),
	DataInicio DATE,
	Datafim DATE,
	
	PRIMARY KEY (Codigo)
);


ALTER TABLE Funcionario 
ADD FOREIGN KEY (CodDepto) REFERENCES Departamento(Codigo);

ALTER TABLE Departamento 
ADD FOREIGN KEY (CodGerente) REFERENCES Funcionario(Codigo);

ALTER TABLE Projeto 
ADD FOREIGN KEY (CodDepto) REFERENCES Departamento(Codigo);

ALTER TABLE Projeto 
ADD FOREIGN KEY (CodResponsavel) REFERENCES Funcionario(Codigo);

ALTER TABLE AtividadeProjeto  
ADD FOREIGN KEY (CodProjeto) REFERENCES Projeto(Codigo);

ALTER TABLE AtividadeProjeto  
ADD FOREIGN KEY (CodAtividade) REFERENCES Atividade(Codigo);

ALTER TABLE AtividadeProjeto  
ADD FOREIGN KEY (CodResponsavel) REFERENCES Funcionario(Codigo);