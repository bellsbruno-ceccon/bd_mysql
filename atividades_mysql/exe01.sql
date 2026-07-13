CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    departamento VARCHAR(50)
);

INSERT INTO colaboradores (nome, cargo, salario, departamento)
VALUES
('Ana Silva', 'Analista', 2500.00, 'RH'),
('Bruno Souza', 'Assistente', 1800.00, 'Financeiro'),
('Carlos Lima', 'Gerente', 4500.00, 'Administrativo'),
('Mariana Alves', 'Estagiaria', 1200.00, 'RH'),
('João Santos', 'Desenvolvedor', 3200.00, 'Tecnologia');

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2800.00
WHERE id = 1;