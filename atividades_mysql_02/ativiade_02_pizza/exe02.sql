-- Criando o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Usando o banco
USE db_pizzaria_legal;


-- Criando tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);


-- Criando tabela de pizzas
CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20),
    valor DECIMAL(10,2),
    ingredientes VARCHAR(100),
    id_categoria INT,

    FOREIGN KEY (id_categoria)
    REFERENCES tb_categorias(id_categoria)
);


-- Inserindo categorias
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Salgadas', 'Pizzas tradicionais salgadas'),
('Doces', 'Pizzas com sabores doces'),
('Vegetarianas', 'Pizzas sem carne'),
('Especiais', 'Pizzas diferenciadas'),
('Promoção', 'Pizzas em oferta');


-- Inserindo pizzas
INSERT INTO tb_pizzas (nome_pizza, tamanho, valor, ingredientes, id_categoria)
VALUES
('Calabresa', 'Grande', 45.00, 'Calabresa e cebola', 1),
('Margherita', 'Grande', 55.00, 'Queijo, tomate e manjericão', 3),
('Frango com Catupiry', 'Grande', 60.00, 'Frango e catupiry', 1),
('Chocolate', 'Pequena', 50.00, 'Chocolate e morango', 2),
('Mussarela', 'Média', 40.00, 'Queijo mussarela', 1),
('Brigadeiro', 'Grande', 65.00, 'Chocolate e granulado', 2),
('Pizza Especial', 'Grande', 90.00, 'Vários ingredientes', 4),
('Milho Verde', 'Média', 35.00, 'Milho e queijo', 3);



-- 1) Pizzas com valor maior que R$45,00
SELECT *
FROM tb_pizzas
WHERE valor > 45;


-- 2) Pizzas com valor entre R$50,00 e R$100,00
SELECT *
FROM tb_pizzas
WHERE valor BETWEEN 50 AND 100;


-- 3) Pizzas que possuem a letra M no nome
SELECT *
FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';


-- 4) INNER JOIN mostrando pizzas e categorias
SELECT
    tb_pizzas.nome_pizza,
    tb_pizzas.valor,
    tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;


-- 5) INNER JOIN mostrando apenas pizzas da categoria Doces
SELECT
    tb_pizzas.nome_pizza,
    tb_pizzas.valor,
    tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doces';