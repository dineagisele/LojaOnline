	CREATE TABLE Produto (
	id int NOT NULL PRIMARY KEY, 
	nome VARCHAR(200), 
	descricao VARCHAR(200),
	preco DECIMAL(8,2),
	tipo ENUM("Novo","Usado","Liquidacao","Promocao","Outros"),
	categoria SET ("Eletronico","Telefonia","Informatica","Eletrodomestico","Acessorios","Outros"),
	dataDeLancamento DATE,
	descontoProdutoUsado DECIMAL(8,2)
	);
	
	CREATE TABLE LojaOnline (
	id int NOT NULL PRIMARY KEY,
	nome VARCHAR(200),
	endereco VARCHAR(200),
	numeroDeTelefone VARCHAR(45)
	);
	
	CREATE TABLE Estoque (
	produto_id int NOT NULL,
	lojaOnline_id int NOT NULL,
	quatidadeDisponivel int,
	PRIMARY KEY (produto_id, lojaOnline_id),
	FOREIGN KEY (produto_id) REFERENCES Produto (id),
	FOREIGN KEY (lojaOnline_id) REFERENCES LojaOnline (id)
	);
	
	CREATE TABLE Caracteristica (
	id int NOT NULL PRIMARY KEY,
	nome VARCHAR(200),
	descricao VARCHAR(200)
	);
	
	CREATE TABLE Produto_Caracteristica (
	produto_id int NOT NULL,
	caracteristica_id int NOT NULL ,
	PRIMARY KEY (produto_id, caracteristica_id),
	FOREIGN KEY (produto_id) REFERENCES Produto(id),
	FOREIGN KEY (caracteristica_id) REFERENCES Caracteristica(id)
	);
	
-------	População do Banco de Dados

INSERT INTO Produto(
id,
nome,
descricao,
preco,
tipo,
categoria,
dataDeLancamento,
descontoProdutoUsado
) VALUES
(
1,
'computador',
'computador tela plana',
99.99,
'novo',
'Informatica',
'2026-03-01',
0.0
);

INSERT INTO Produto(
id,
nome,
descricao,
preco,
tipo,
categoria,
dataDeLancamento,
descontoProdutoUsado
) VALUES
(
2,
'teclado',
'teclado ergonômetro',
22.30,
'usado',
'Informatica',
'2026-02-22',
10.00
);

INSERT INTO LojaOnline(
id,
nome,
endereco,
numeroDeTelefone
) VALUES
(1,
'Informática Schroeder',
'Rua: João Arnoldo Morits,294 Bairro: Centro, Schroeder',
'(47)3347-5741'
);



INSERT INTO LojaOnline(
id,
nome,
endereco,
numeroDeTelefone
) VALUES
(3,
'Informática Total',
'Rua: Valadares Piske,201 Bairro: Vila-Lalau, Jaraguá do Sul',
'(47)3300-5000'
);

INSERT INTO Estoque(
produto_id,
lojaOnline_id,
quatidadeDisponivel
) VALUES
(1,
1,
10
);

INSERT INTO Estoque(
produto_id,
lojaOnline_id,
quatidadeDisponivel
) VALUES
(2,
2,
30
);

INSERT INTO Caracteristica(
id,
nome,
descricao
) VALUES
(1,
'cor',
'cinza-escuro'
);

INSERT INTO Caracteristica(
id,
nome,
descricao
) VALUES
(2,
'cor',
'preto'
);

INSERT INTO Produto_Caracteristica(
produto_id,
caracteristica_id
) VALUES
(1,
1
); 

INSERT INTO Produto_Caracteristica(
produto_id,
caracteristica_id
) VALUES
(2,
2
); 








