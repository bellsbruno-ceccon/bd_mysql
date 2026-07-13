CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(50),
    nota DECIMAL(3,1)
);

INSERT INTO estudantes (nome, idade, turma, nota)
VALUES
('Ana Silva', 15, '9A', 8.5),
('Bruno Souza', 14, '8B', 6.5),
('Carlos Lima', 16, '9A', 9.0),
('Mariana Alves', 15, '9B', 7.5),
('João Santos', 14, '8A', 5.5),
('Julia Costa', 16, '9B', 8.0),
('Pedro Oliveira', 15, '9A', 6.0),
('Lucas Martins', 14, '8B', 9.5);

SELECT * FROM estudantes
WHERE nota > 7.0;

SELECT * FROM estudantes
WHERE nota < 7.0;

UPDATE estudantes
SET nota = 7.0
WHERE id = 2;