-- drop table demo;
-- drop table produtos;
-- drop table grupos;
-- drop table marcas;
-- drop table modelos;
-- drop table fornecedores;
-- drop table cores;
CREATE TABLE produtos
(
	cod_produto int identity(1,1),
	cod_grupo int,
	nome varchar(250),
	cod_marca int,
	cod_modelo int,
	cod_fornecedor int,
	tamanho varchar(10),
	cod_cor int,
	estoque int,
	preco_compra decimal(8,2),
	preco_venda decimal(8,2),
	codigo_barra varchar(20),
	referencia varchar(50),
	constraint pk_produto primary key (cod_produto)
);
CREATE TABLE grupos
(
	cod_grupo int,
	nome varchar(250),
	constraint pk_grupo primary key (cod_grupo)
);
CREATE TABLE marcas
(
	cod_marca int,
	nome varchar(250),
	constraint pk_marca primary key (cod_marca)
);
CREATE TABLE modelos
(
	cod_modelo int,
	nome varchar(250),
	constraint pk_modelo primary key (cod_modelo)
);
CREATE TABLE fornecedores
(
	cod_fornecedor int,
	nome varchar(250),
	constraint pk_fornecedor primary key (cod_fornecedor)
);
CREATE TABLE cores
(
	cod_cor int,
	nome varchar(250),
	constraint pk_cor primary key (cod_cor)
);