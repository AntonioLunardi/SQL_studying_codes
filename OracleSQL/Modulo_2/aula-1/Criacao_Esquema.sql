
DROP TABLE ITENS_NOTAS_FISCAIS;
DROP TABLE NOTAS_FISCAIS;
DROP TABLE TABELA_DE_CLIENTES;
DROP TABLE TABELA_DE_PRODUTOS;
DROP TABLE TABELA_DE_VENDEDORES;

CREATE TABLE TABELA_DE_CLIENTES(
	CPF NVARCHAR2(11) NOT NULL,
	NOME NVARCHAR2(100) NULL,
	ENDERECO_1 NVARCHAR2(150) NULL,
	ENDERECO_2 NVARCHAR2(150) NULL,
	BAIRRO NVARCHAR2(50) NULL,
	CIDADE NVARCHAR2(50) NULL,
	ESTADO NVARCHAR2(2) NULL,
	CEP NVARCHAR2(8) NULL,
	DATA_DE_NASCIMENTO DATE NULL,
	IDADE INTEGER NULL,
	SEXO NVARCHAR2(1) NULL,
	LIMITE_DE_CREDITO FLOAT NULL,
	VOLUME_DE_COMPRA FLOAT NULL,
	PRIMEIRA_COMPRA NUMBER(1) NULL);
    
ALTER TABLE TABELA_DE_CLIENTES ADD CONSTRAINT 
PK_TABELA_DE_CLIENTES PRIMARY KEY (CPF);
	
CREATE TABLE TABELA_DE_PRODUTOS(
	CODIGO_DO_PRODUTO NVARCHAR2(10) NOT NULL,
	NOME_DO_PRODUTO NVARCHAR2(50) NULL,
	EMBALAGEM NVARCHAR2(20) NULL,
	TAMANHO NVARCHAR2(10) NULL,
	SABOR NVARCHAR2(20) NULL,
	PRECO_DE_LISTA FLOAT NOT NULL);
	
ALTER TABLE TABELA_DE_PRODUTOS ADD CONSTRAINT 
PK_TABELA_DE_PRODUTOS PRIMARY KEY (CODIGO_DO_PRODUTO);
	
CREATE TABLE TABELA_DE_VENDEDORES(
	MATRICULA NVARCHAR2(5) NOT NULL,
	NOME NVARCHAR2(100) NULL,
	PERCENTUAL_COMISSAO FLOAT NULL,
	DATA_ADMISSAO DATE NULL,
	DE_FERIAS NUMBER(1) NULL,
	BAIRRO NVARCHAR2(50) NULL);
 
ALTER TABLE TABELA_DE_VENDEDORES ADD CONSTRAINT 
PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);
 
 CREATE TABLE NOTAS_FISCAIS(
	CPF NVARCHAR2(11) NOT NULL,
	MATRICULA NVARCHAR2(5) NOT NULL,
	DATA_VENDA DATE NULL,
	NUMERO INTEGER NOT NULL,
	IMPOSTO FLOAT NOT NULL);
	
ALTER TABLE NOTAS_FISCAIS ADD CONSTRAINT 
PK_NOTAS_FISCAIS PRIMARY KEY (NUMERO);
	
ALTER TABLE NOTAS_FISCAIS
ADD CONSTRAINT FK_NOTAS_FISCAIS1
   FOREIGN KEY (MATRICULA)
   REFERENCES TABELA_DE_VENDEDORES (MATRICULA);	
   
ALTER TABLE NOTAS_FISCAIS
ADD CONSTRAINT FK_NOTAS_FISCAIS2
   FOREIGN KEY (CPF)
   REFERENCES TABELA_DE_CLIENTES (CPF);	

CREATE TABLE ITENS_NOTAS_FISCAIS(
	NUMERO INTEGER NOT NULL,
	CODIGO_DO_PRODUTO NVARCHAR2(10) NOT NULL,
	QUANTIDADE INTEGER NOT NULL,
	PRECO FLOAT NOT NULL);
	
ALTER TABLE ITENS_NOTAS_FISCAIS ADD CONSTRAINT 
PK_ITENS_NOTAS_FISCAIS PRIMARY KEY (NUMERO, CODIGO_DO_PRODUTO);

ALTER TABLE ITENS_NOTAS_FISCAIS
ADD CONSTRAINT FK_ITENS_NOTAS_FISCAIS1
   FOREIGN KEY (CODIGO_DO_PRODUTO)
   REFERENCES TABELA_DE_PRODUTOS (CODIGO_DO_PRODUTO);

ALTER TABLE ITENS_NOTAS_FISCAIS
ADD CONSTRAINT FK_ITENS_NOTAS_FISCAIS2
   FOREIGN KEY (NUMERO)
   REFERENCES NOTAS_FISCAIS (NUMERO);	   
