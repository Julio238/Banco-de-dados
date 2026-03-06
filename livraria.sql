-- Criação da tabela LIVROS
CREATE TABLE LIVROS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    preco DECIMAL(10, 2)
);

-- Inserção de dados na tabela LIVROS
INSERT INTO LIVROS (titulo, autor, ano_publicacao, preco) 
VALUES 
    ('O Alquimista', 'Paulo Coelho', 1988, 39.90),
    ('1984', 'George Orwell', 1949, 29.90),
    ('A Guerra dos Tronos', 'George R. R. Martin', 1996, 49.90);

-- Exibição de todos os registros da tabela LIVROS
SELECT * FROM LIVROS;
