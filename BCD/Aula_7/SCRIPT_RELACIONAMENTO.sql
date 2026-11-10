-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
Id_Cliente Int auto_increment primary key PRIMARY KEY,
Nome_Cliente varchar (60) not null
)

CREATE TABLE Pedidos (
Id_Produto Int auto_increment primary key PRIMARY KEY,
Quantidade varchar (60) not null,
Id_Cliente Int auto_increment primary key,
FOREIGN KEY(Id_Cliente) REFERENCES Cliente (Id_Cliente)
)

CREATE TABLE Produtos+Estoque (
Id_Produtos Int auto_increment primary key,
Nome_produto varchar (100) ,
Id_Estoque int auto_increment primary key,
Valor Decimal (10,2),
PRIMARY KEY(Id_Produtos,Id_Estoque)
)

CREATE TABLE Foenecedores  (
Id_fornecedores Int auto_increment primary key PRIMARY KEY,
Razao_social varchar (100)
)

CREATE TABLE Produtos (
Id_produtos Texto(1) PRIMARY KEY,
Nome_Produto varchar (100)
)

CREATE TABLE Relação_1 (
Id_produtos Int,
Id_fornecedores Int,
Id_Item Int auto_increment primary key PRIMARY KEY,
Quantidade Int 
)