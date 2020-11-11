drop table if exists funcionario cascade;
drop table if exists departamento cascade;
drop table if exists equipe cascade;
drop table if exists membro cascade;
drop table if exists projeto cascade;
drop table if exists atividade cascade;
drop table if exists atividade_membro cascade;
drop table if exists atividade_projeto cascade;

CREATE TABLE funcionario (
  codigo SERIAL NOT NULL,  
  nome varchar(15) NOT NULL,
  sexo char(1) DEFAULT NULL,
  dataNasc date DEFAULT NULL,
  salario decimal(10,2) DEFAULT NULL,
  supervisor integer DEFAULT NULL,
  depto integer DEFAULT NULL,
  PRIMARY KEY (codigo),
  CONSTRAINT funcSuperFK FOREIGN KEY (supervisor) REFERENCES funcionario(codigo) on delete set null on update cascade
);
--ALTER TABLE funcionario DISABLE TRIGGER ALL; -- to disable them

CREATE TABLE departamento (
  codigo SERIAL NOT NULL,
  sigla varchar(15) NOT NULL,
  descricao varchar(25) NOT NULL,
  gerente int DEFAULT NULL,
  PRIMARY KEY (codigo),
  UNIQUE(sigla),
  CONSTRAINT depGerenteFK FOREIGN KEY (gerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);

alter table funcionario ADD CONSTRAINT funcDeptoFK FOREIGN KEY (depto) REFERENCES departamento (codigo) on delete set null on update cascade;

CREATE TABLE equipe (
  codigo SERIAL NOT NULL,
  nomeEquipe varchar(45) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE membro (
  codigo SERIAL NOT NULL,
  codEquipe int DEFAULT NULL,
  codFuncionario int DEFAULT NULL,
  PRIMARY KEY (codigo),
  foreign key (codEquipe) references equipe(codigo) on delete set null,
  foreign key (codFuncionario) references funcionario(codigo) on delete set null
);


CREATE TABLE projeto (
  codigo SERIAL NOT NULL,
  descricao varchar(45) DEFAULT NULL,
  depto int DEFAULT NULL,
  responsavel int DEFAULT NULL,
  dataInicio date DEFAULT NULL,
  dataFim date DEFAULT NULL,
  situacao varchar(45) DEFAULT NULL,
  dataConclusao date DEFAULT NULL,
  equipe int DEFAULT NULL,
  PRIMARY KEY (codigo),
  foreign key (depto) references departamento(codigo) on delete set null,
  foreign key (responsavel) references funcionario(codigo) on delete set null,
  foreign key (equipe) references equipe(codigo) on delete set null
);

CREATE TABLE atividade (
  codigo SERIAL NOT NULL,
  descricao varchar(45) DEFAULT NULL,
  dataInicio date DEFAULT NULL,
  dataFim date DEFAULT NULL,
  situacao varchar(45) DEFAULT NULL,
  dataConclusao date DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE atividade_projeto (
  codAtividade int NOT NULL,
  codProjeto int NOT NULL,
  PRIMARY KEY (codProjeto, codAtividade),
  foreign key (codAtividade) references atividade(codigo),
  foreign key (codProjeto) references projeto(codigo)
);

CREATE TABLE atividade_membro (
  codAtividade int NOT NULL,
  codMembro int NOT NULL,
  PRIMARY KEY (codAtividade, codMembro),
  foreign key (codAtividade) references atividade(codigo),
  foreign key (codMembro) references membro(codigo)
);

insert into departamento
(sigla, descricao, gerente)
values ('DHC', 'Dep História', null);

insert into departamento
(sigla, descricao, gerente)
values ('DCT', 'Dep Computação', null);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Ana', 'F', '1988-05-07', 2500.00, null, 1);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Taciano', 'M', '1980-01-25', 2500.00, null, 2);

update departamento set gerente = 1 where sigla = 'DHC';
update departamento set gerente = 2 where sigla = 'DCT';

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Maria', 'F', '1981-07-01', 2500.00, 1, 1);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Josefa', 'F', '1986-09-17', 2500.00, 1, 1);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Carlos', 'M', '1985-11-21', 2500.00, 1, 1);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Humberto', 'M', '1970-05-07', 1500.00, 2, 2);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('José', 'M', '1979-07-12', 3500.00, 2, 2);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Xuxa', 'F', '1970-03-28', 13500.00, null, null);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Sasha', 'F', '1970-03-28', 1500.00, 2, 1);

insert into funcionario
(nome, sexo, dataNasc, salario, supervisor, depto)
values ('Victor', 'M', '1970-03-28', 500.00, 4, 1);

insert into equipe
(nomeEquipe)
values ('BSI');

insert into membro
(codEquipe, codFuncionario)
values (1, 1);

insert into membro
(codEquipe, codFuncionario)
values (1, 2);

insert into membro
(codEquipe, codFuncionario)
values (1, 3);

insert into membro
(codEquipe, codFuncionario)
values (1, 4);

insert into equipe
(nomeEquipe)
values ('Amazon');

insert into membro
(codEquipe, codFuncionario)
values (1, 7);

insert into membro
(codEquipe, codFuncionario)
values (1, 8);

insert into membro
(codEquipe, codFuncionario)
values (1, 9);

insert into membro
(codEquipe, codFuncionario)
values (1, 10);

insert into projeto(descricao, depto, responsavel, DataInicio, DataFim, situacao, equipe)
values ('APF', 2, 2, '2018-02-26', '2018-06-30', 'Em andamento', 2);

insert into projeto(descricao, depto, responsavel, DataInicio, DataFim, situacao, equipe)
values ('Monitoria', 1, 2, '2018-02-26', '2018-06-30', 'Planejado', 1);

insert into projeto(descricao, depto, responsavel, DataInicio, DataFim, situacao, equipe)
values ('BD', 2, 1, '2018-02-26', '2018-06-30', 'Em andamento', 1);

insert into projeto(descricao, depto, responsavel, DataInicio, DataFim, situacao, equipe)
values ('ES', 1, 1, '2018-02-26', '2018-06-30', 'Concluído', 1);