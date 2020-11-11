/*
Crie um usuário chamado empresa_admim 
para o banco de dados EmpresaDB. 
Este usuário deve ter todos os privilégios 
mas com acesso remoto.
Coloquei ambos os códigos pelo mesmo motivo explicado
na questão 10.
*/

/*
##MySQL
CREATE USER 'empresa_admim '@'%' IDENTIFIED BY 'senha';
GRANT ALL PRIVILEGES ON 'EmpresaDB'.* TO 'empresa_admim'@'%';
*/
/*
##PostgreSQL
CREATE USER empresa_admim WITH ENCRYPTED PASSWORD 'senha';
GRANT ALL PRIVILEGES ON DATABASE EmpresaDB TO empresa_admim;
*/
