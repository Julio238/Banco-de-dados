-- Criação do banco de dados
CREATE DATABASE escola;
USE escola;

-- Tabela de alunos
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela de professores
CREATE TABLE professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    especialidade VARCHAR(100)
);

-- Tabela de disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela de turmas
CREATE TABLE turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ano INT NOT NULL
);

-- Tabela de matrículas (relação aluno x turma x disciplina)
CREATE TABLE matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    id_disciplina INT NOT NULL,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

-- Tabela de notas
CREATE TABLE notas (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    id_matricula INT NOT NULL,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
);
