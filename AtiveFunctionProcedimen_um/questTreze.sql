/*
Crie um índice
para o atributo sigla da tabela departamento
e um índice para o atributo situação da tabela atividade.
*/
DROP INDEX IF EXISTS indexDepartamentoSigla;

CREATE INDEX indexDepartamentoSigla ON departamento USING btree(sigla);

DROP INDEX IF EXISTS indexAtividadeSituacao;

CREATE INDEX indexAtividadeSituacao ON atividade USING btree(situacao);
--final--