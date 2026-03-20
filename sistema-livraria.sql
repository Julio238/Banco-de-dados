-- Criação do banco de dados
CREATE DATABASE Biblioteca;

-- Seleciona o banco de dados a ser utilizado
USE Biblioteca;

-- Criação da tabela 'Clientes'
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,               -- Chave primária da tabela Clientes
    nomeCliente VARCHAR(100),         -- Nome do cliente
    emailCliente VARCHAR(100)         -- E-mail do cliente
);

-- Criação da tabela 'Compras'
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,         -- Chave primária da tabela Compras
    ClienteID INT,                    -- Chave estrangeira referenciando o ID da tabela Clientes
    NomeLivro VARCHAR(100),           -- Nome do livro comprado
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)  -- Definição da chave estrangeira
);
