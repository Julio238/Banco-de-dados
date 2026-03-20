-- Criação do banco de dados
CREATE DATABASE Biblioteca;

-- Seleciona o banco de dados a ser utilizado
USE Biblioteca;

-- Criação da tabela 'Clientes'
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,               -- Chave primária da tabela Clientes
    nomeCliente VARCHAR(100),         -- Nome do cliente
    emailCliente VARCHAR(100)         -- E-mail do cliente
    -- Inserção de dados na tabela 'Clientes'
INSERT INTO Clientes (ID, nomeCliente, emailCliente)
VALUES
    (1, 'João Silva', 'joao.silva@email.com'),
    (2, 'Maria Oliveira', 'maria.oliveira@email.com'),
    (3, 'Carlos Pereira', 'carlos.pereira@email.com'),
    (4, 'Ana Souza', 'ana.souza@email.com');

-- Inserção de dados na tabela 'Compras'
INSERT INTO Compras (CompraID, ClienteID, NomeLivro)
VALUES
    (1, 1, 'O Senhor dos Anéis'),
    (2, 1, 'Harry Potter e a Pedra Filosofal'),
    (3, 2, 'Dom Casmurro'),
    (4, 3, '1984'),
    (5, 4, 'A Moreninha'),
    (6, 2, 'O Primo Basílio');
);

-- Criação da tabela 'Compras'
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,         -- Chave primária da tabela Compras
    ClienteID INT,                    -- Chave estrangeira referenciando o ID da tabela Clientes
    NomeLivro VARCHAR(100),           -- Nome do livro comprado
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)  -- Definição da chave estrangeira
);
