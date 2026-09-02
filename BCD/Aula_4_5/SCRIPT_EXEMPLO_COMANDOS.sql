-- Comentários
-- Conado para criar Banco de Dados
Create DataBase Exemplo;

-- Apagar Banco de Dados
Drop DataBase Exemplo;

-- Ativar Banco de dados
Use Exemplo; 
-- Criar Tabelas
Create Table Clientes (
Id_Cliente Int auto_increment primary key,
Nome Varchar(60) not null,
CPF Varchar(14) not null Unique,
Endereco Varchar(60) not null,
Email varchar(100) not null,
Telefone Varchar(15) not null
);

