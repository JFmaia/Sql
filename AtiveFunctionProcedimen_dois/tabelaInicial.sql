DROP TABLE IF EXISTS cliente CASCADE;
DROP TABLE IF EXISTS piloto CASCADE;
DROP TABLE IF EXISTS voo CASCADE;
DROP TABLE IF EXISTS milhas CASCADE;
DROP TABLE IF EXISTS cliente_voo CASCADE;

CREATE TABLE cliente(
	codigo CHAR(9),
	nome VARCHAR(20) NOT NULL,
	endereco VARCHAR(255),
	
	PRIMARY KEY (codigo)
);

CREATE TABLE piloto(
	codigo CHAR(9),
	nome VARCHAR(20) NOT NULL,
	num_voos INT,
	
	PRIMARY KEY (codigo)
);

CREATE TABLE voo(
	codigo CHAR(9),
	tipo VARCHAR(20) NOT NULL,
	piloto CHAR(9),
	num_passageiros INT, 
	distancia DECIMAL(10,2),
	
	PRIMARY KEY (codigo),
	FOREIGN KEY (piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas(
	cliente CHAR(9), 
	quantidade INT,
	
	PRIMARY KEY (cliente),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo(
	cliente CHAR(9), 
	voo CHAR(9), 
	classe VARCHAR(20),
	
	PRIMARY KEY (cliente, voo),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo),
	FOREIGN KEY (voo) REFERENCES voo(codigo)
);