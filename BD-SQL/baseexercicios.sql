CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;

-- Tabela de alunos
CREATE TABLE Alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade VARCHAR(100)
);

-- Tabela de disciplinas
CREATE TABLE Disciplinas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Tabela de notas
CREATE TABLE Notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id)
);

-- Inserção de alunos
INSERT INTO Alunos (nome, idade, cidade) VALUES
('Ana Silva', 17, 'São Paulo'),
('Bruno Lima', 18, 'Rio de Janeiro'),
('Carla Souza', 17, 'São Paulo'),
('Daniel Rocha', 19, 'Belo Horizonte'),
('Eduarda Melo', 18, 'Salvador');

-- Inserção de disciplinas
INSERT INTO Disciplinas (nome) VALUES
('Matemática'),
('Português'),
('História'),
('Biologia');

-- Inserção de notas
INSERT INTO Notas (aluno_id, disciplina_id, nota) VALUES
(1, 1, 7.5),
(1, 2, 8.0),
(1, 3, 9.0),
(2, 1, 6.0),
(2, 2, 7.0),
(2, 3, 5.5),
(3, 1, 8.5),
(3, 4, 7.0),
(4, 1, 9.0),
(4, 2, 8.5),
(4, 3, 6.5),
(4, 4, 7.5),
(5, 2, 6.0),
(5, 3, 8.0),
(5, 4, 7.0);