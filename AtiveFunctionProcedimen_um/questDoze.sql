/*
Crie um usuário chamado empresa_gerente
para o banco de dados EmpresaDB.
Este usuário deve ter privilégios apenas de fazer consultas 
em todas as tabelas.
Ele pode inserir e atualizar as tabelas 
Equipe, Membro, Atividade e AtividadeProjeto.
*/

--PostgreSQL
DROP USER IF EXISTS empresaGerente;
CREATE USER empresaGerente WITH ENCRYPTED PASSWORD 'senha';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO empresaGerente;
GRANT INSERT, UPDATE ON equipe, membro, atividade, atividade_projeto TO empresaGerente;
--final--