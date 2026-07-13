CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES
('Notebook', 'Eletronicos', 3500.00, 10),
('Mouse', 'Acessorios', 80.00, 50),
('Teclado', 'Acessorios', 150.00, 30),
('Monitor', 'Eletronicos', 900.00, 15),
('Cadeira Gamer', 'Moveis', 700.00, 8),
('Fone Bluetooth', 'Eletronicos', 250.00, 40),
('Celular', 'Eletronicos', 2500.00, 20),
('Mesa Escritorio', 'Moveis', 450.00, 12);

SELECT * FROM produtos
WHERE preco > 500;

SELECT * FROM produtos
WHERE preco < 500;

UPDATE produtos
SET preco = 3000.00
WHERE id = 1;