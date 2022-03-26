    /* CRIA O BD*/
CREATE DATABASE LIVRARIA_MIF3AN



USE LIVRARIA_MIF3AN


/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA CATEGORIA----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE CATEGORIA
(COD_CATEGORIA INT,
DESCRICAO VARCHAR(70) NOT NULL,
CONSTRAINT PK_CATEGORIA PRIMARY KEY (COD_CATEGORIA)
)


/* INSERT POSICIONAL*/
INSERT INTO CATEGORIA VALUES (1, 'INFORMÁTICA')


/* INSERT DECLARATIVO*/
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO)
VALUES (2, 'INFANTO-JUVENIL')


/* INSERT POSICIONAL*/
INSERT INTO CATEGORIA VALUES (3, 'FICÇÃO CIENTÍFICA')
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (4, 'INFANTIL');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (5, 'MEDICINA');
INSERT INTO CATEGORIA (COD_CATEGORIA, DESCRICAO) VALUES (6, 'FICÇÃO CIENTÍFICA');



SELECT * FROM CATEGORIA


/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA LIVRO----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE LIVRO (
COD_LIVRO INT,
TITULO VARCHAR(100) NOT NULL,
ANO CHAR(4),
COD_CATEGORIA INT,
CONSTRAINT PK_LIVRO PRIMARY KEY (COD_LIVRO),
CONSTRAINT FK_CATEGORIA FOREIGN KEY (COD_CATEGORIA)
REFERENCES CATEGORIA (COD_CATEGORIA)
)


/* INSERT POSICIONAL*/
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (1, 'HARRY POTTER', '2000', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (2, 'PROJETO DE BANCO DE DADOS', '2017', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (3, 'ABC', '2015', 2);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO) VALUES (4, 'ABC2', '2016');
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (5, 'LOGICA', '2016', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (6, 'Harry Potter e a Pedra Filosofal', '1997', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (7, 'Harry Potter e a Câmara Secreta', '1998', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (8, 'Harry Potter e o Prisioneiro de Azkaban', '1999', 3);  
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (9, 'Harry Potter e o Cálice de Fogo', '2000', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (10, 'Harry Potter e a Ordem da Fênix', '2003', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (11, 'Harry Potter e o Enigma do Príncipe', '2005', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (12, 'Harry Potter e as Relíquias da Morte', '2007', 3);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (13, 'Use a Cabeça! Desenvolvendo para Android', '2016', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (14, 'Use a Cabeça! SQL', '2016', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (15, 'Use a Cabeça! C#', '2008', 1);
INSERT INTO LIVRO (COD_LIVRO, TITULO, ANO, COD_CATEGORIA) VALUES (16, 'Visões de Robô', '1994', 6);



SELECT * FROM LIVRO


/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA AUTOR----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------*/



CREATE TABLE AUTOR(
COD_AUTOR INT,
NOME VARCHAR(70) NOT NULL,
DT_NASCIMENTO DATE,
BIOGRAFIA TEXT,
NACIONALIDADE VARCHAR(60),
CONSTRAINT PK_AUTOR PRIMARY KEY (COD_AUTOR)
)


/* INSERT POSICIONAL*/
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (1, 'J.K. Rolling', '31/07/1965', 'Joanne "Jo" Rowling, OBE, FRSL, mais conhecida como J. K. Rowling, Ã© uma escritora, roteirista e produtora cinematogrÃ¡fica britÃ¢nica, notÃ³ria por escrever a sÃ©rie de livros Harry Potter.', 'BritÃ¢nica'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (2, 'Ana dos Santos', '10/02/1970', 'Ana dos Santos, escritora e professora de ensino fundamental.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (3, 'João da Silva', '20/10/1975', 'JoÃ£o da Silva, famoso pedagogo e profesora de ensino infantil.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (4, 'Felipe Ferreira', '20/01/1980', 'Felipe Ferreira, administrador de dados e programador.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, DT_NASCIMENTO, BIOGRAFIA, NACIONALIDADE) VALUES (5, 'Fabio dos Santos', '30/03/1981', 'Fabio dos Santos, programador e escritor.', 'Brasileira'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, BIOGRAFIA, NACIONALIDADE) VALUES (6, 'Dawn Griffiths', 'Dawn Griffiths começou sua vida como matemática em uma das melhores universidades do Reino Unido. Chegou a receber o grau de First-Class Honours em Matemática, mas rejeitou uma bolsa de PhD para estudar espécies particularmente raras de equações diferenciais quando percebeu que as pessoas deixariam de conversar com ela nas festas. Em vez disso, seguiu sua carreira em desenvolvimento de softwares e atualmente combina consultoria em TI com Matemática e com ser escritora.', 'BRITÂNICA');
INSERT INTO AUTOR (COD_AUTOR, NOME, BIOGRAFIA, NACIONALIDADE) VALUES (7, 'David Griffiths', 'David Griffiths começou a programar com 12 anos, quando viu um documentário sobre o trabalho de Seymour Papert. Com 15 anos, escreveu uma implementação da linguagem de computador LOGO de Papert. Depois de estudar Matemática Pura na Universidade, começou a escrever código para computadores e artigos de revista para seres humanos. Ele trabalhou como treinador ágil, desenvolvedor e atendente de garagem, mas não necessariamente nessa ordem. Ele escreveu códigos em mais de 10 linguagens e se expressa em apenas uma, e quando não está escrevendo ou treinando, passa grande parte de seu tempo livre viajando com sua adorável esposa – e companheira do autor Use a Cabeça – Dawn.', 'BRITÂNICA');
INSERT INTO AUTOR (COD_AUTOR, NOME, NACIONALIDADE) VALUES (8, 'Lynn Beighley', 'AMERICANA');
INSERT INTO AUTOR (COD_AUTOR, NOME, NACIONALIDADE) VALUES (9, 'Andrew Stellman', 'AMERICANA');
INSERT INTO AUTOR (COD_AUTOR, NOME, NACIONALIDADE) VALUES (10, 'Jennifer Greene', 'AMERICANA'); 
INSERT INTO AUTOR (COD_AUTOR, NOME, BIOGRAFIA, NACIONALIDADE) VALUES (11, 'Isaac Asimov', 'Isaac Asimov foi um escritor e bioquímico americano, nascido na Rússia, autor de obras de ficção científica e divulgação científica.', 'RUSSA');



SELECT * FROM AUTOR


/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA LIVRO_AUTOR----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE LIVRO_AUTOR(
COD_LIVRO INT,
COD_AUTOR INT,
CONSTRAINT PK_LIVRO_AUTOR PRIMARY KEY (COD_AUTOR, COD_LIVRO),
CONSTRAINT FK_LIVRO FOREIGN KEY (COD_LIVRO)
REFERENCES LIVRO (COD_LIVRO),
CONSTRAINT FK_AUTOR FOREIGN KEY (COD_AUTOR)
REFERENCES AUTOR (COD_AUTOR)
)


/* INSERT POSICIONAL*/
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (1, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (2, 3);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (3, 3);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (2, 4);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (4, 2);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (5, 5);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (6, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (7, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (8, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (9, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (10, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (11, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (12, 1);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (13, 6);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (13, 7);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (14, 8);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (15, 9);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (15, 10);
INSERT INTO LIVRO_AUTOR (COD_LIVRO, COD_AUTOR) VALUES (16, 11);



SELECT * FROM LIVRO_AUTOR


/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA CLIENTE----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/



CREATE TABLE CLIENTE(
COD_CLIENTE INT NOT NULL,
NOME VARCHAR(70) NOT NULL,
CPF VARCHAR(20) NOT NULL,
GENERO VARCHAR(10) NOT NULL,
DT_NASCIMENTO DATE,
ENDERECO VARCHAR(70) NOT NULL,
BAIRRO VARCHAR(20) NOT NULL,
CIDADE VARCHAR(20) NOT NULL,
UF VARCHAR(20) NOT NULL,
CEP VARCHAR(20) NULL,
ATIVO VARCHAR(08) NULL,
CONSTRAINT PK_CLIENTE PRIMARY KEY(COD_CLIENTE)
)


/* INSERT POSICIONAL*/
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(1,  'Ana Tereza de A. Vasques',                  33333333333, 'F', '01/01/1970', 'Rua Campos Sales 40',                        'Centro',    'Barueri',  'SP', 06401000, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(2,  'Brisa Silva Bracchi',                       33333333334, 'F', '02/1/1971',  'Rua Duque de Caxias 50',                     'Centro',    'Barueri',  'SP', 06401010, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(3,  'Debora Kaynara Patricio da Silva',          33333333335, 'F', '03/01/1972', 'Avenida Henriqueta Mendes Guerra,51',	       'Centro',	'Barueri',	'SP', 06401015, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(4,  'Glaucia Adriana Dantas Pereira',            33333333336, 'F', '04/1/1973',	 'Travessa Celidônio Guerra,52',	           'Centro',	'Barueri',	'SP', 06401020, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(5,  'Isabele Acciolo P. Lima',	                 33333333337, 'F', '05/1/1974',	 'Rua João Pessoa,53',	                       'Centro',	'Barueri',	'SP', 06401030, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(6,  'Ivausck Maria L. da Costa',	             33333333338, 'F', '06/1/1975',	 'Rua Fioravante Barletta,54',	               'Centro',	'Barueri',	'SP', 06401040, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(7,  'Joane Maria da Silva Carvalho',	         33333333339, 'F', '07/1/1976',	 'Avenida Vinte e Seis de Março,55',	       'Centro',	'Barueri',	'SP', 06401050, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(8,  'Kalyne Ribeiro Dantas Q. de Vasconcelos',   33333333340, 'F', '08/1/1977',	 'Boulevard Arnaldo Rodrigues Bittencourt,56', 'Centro',	'Barueri',	'SP', 06401055, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(9,  'Kênia Stephanie Nunes Arruda',	             33333333341, 'F', '09/1/1978',	 'Avenida Dom Pedro II,57',	                   'Centro',	'Barueri',	'SP', 06401060, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(10, 'Lorena Alcântara de Farias',	             33333333342, 'F', '10/6/1979',	 'Rua Dona Primitiva Vianco,58',	           'Centro',	'Osasco',	'SP', 06010000, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(11, 'Luana Nascimento dos Santos',	             33333333343, 'F', '11/7/1980',	 'Rua Dona Primitiva Vianco,59',	           'Centro',	'Osasco',	'SP', 06010004, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(12, 'Lucicleide Silva Freire Alves de Oliveira', 33333333344, 'F', '12/8/1981',	 'Rua Dona Primitiva Vianco,60',	           'Centro',	'Osasco',	'SP', 06010007, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(13, 'Luisa Raquel Teixeira de Araújo',	         33333333345, 'F', '13/9/1982',  'Rua Felipe Antônio Nader,61',	               'Centro',	'Osasco',	'SP', 06010010, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(14, 'Maria Conceição da S. Souza',	             33333333346, 'F', '14/10/1983', 'Rua Melvin Jones,62',	                       'Centro',	'Osasco',	'SP', 06010020, 'SIM');
INSERT INTO CLIENTE(COD_CLIENTE, NOME, CPF, GENERO, DT_NASCIMENTO, ENDERECO, BAIRRO, CIDADE, UF, CEP, ATIVO) VALUES(15, 'Maria Gisele da Silva de Oliveira',         33333333347, 'F', '15/11/1984', 'Rua Arthur Vasconcelos,63',                  'Centro',	'Osasco',	'SP', 06010030, 'SIM');



SELECT * FROM CLIENTE


/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA PEDIDO---------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE PEDIDO(
COD_PEDIDO INT NOT NULL,
COD_CLIENTE INT NOT NULL,
VALOR_TOTAL INT NOT NULL,
DATA_PEDIDO DATE NOT NULL,
CONSTRAINT PK_PEDIDO PRIMARY KEY(COD_PEDIDO),
CONSTRAINT FK_CLIENTE FOREIGN KEY(COD_CLIENTE)
REFERENCES CLIENTE(COD_CLIENTE)
)



SELECT * FROM PEDIDO


/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*---TABELA ITEM_PEDIDO----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE ITEM_PEDIDO(
COD_ITEM_PEDIDO INT NOT NULL,
COD_PEDIDO INT NOT NULL,
COD_LIVRO INT NOT NULL,
QUANTIDADE VARCHAR(100) NOT NULL,
CONSTRAINT PK_ITEM_PEDIDO PRIMARY KEY(COD_ITEM_PEDIDO),
CONSTRAINT FK_PEDIDO FOREIGN KEY(COD_PEDIDO)
REFERENCES PEDIDO(COD_PEDIDO)
)



SELECT * FROM ITEM_PEDIDO


/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/




























