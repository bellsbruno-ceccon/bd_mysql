-- Criando o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Usando o banco
USE db_farmacia_bem_estar;


-- Criando tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);


-- Criando tabela de produtos
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    marca VARCHAR(50),
    valor DECIMAL(10,2),
    estoque INT,
    id_categoria INT,
    
    FOREIGN KEY (id_categoria) 
    REFERENCES tb_categorias(id_categoria)
);


-- Inserindo categorias
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Medicamentos', 'Remédios em geral'),
('Cosméticos', 'Produtos de beleza'),
('Higiene', 'Produtos de higiene pessoal'),
('Vitaminas', 'Suplementos e vitaminas'),
('Cuidados pessoais', 'Produtos para cuidados diários');


-- Inserindo produtos
INSERT INTO tb_produtos (nome_produto, marca, valor, estoque, id_categoria)
VALUES
('Paracetamol', 'Medley', 15.00, 100, 1),
('Creme Facial', 'Nivea', 55.00, 50, 2),
('Condicionador', 'Seda', 25.00, 80, 3),
('Vitamina C', 'Lavitan', 60.00, 40, 4),
('Protetor Solar', 'Neutrogena', 70.00, 30, 2),
('Sabonete Corporal', 'Dove', 10.00, 120, 3),
('Colágeno', 'Sanavita', 65.00, 25, 4),
('Creme Dental', 'Colgate', 8.00, 150, 5);



-- 1) Produtos com valor maior que R$50,00
SELECT *
FROM tb_produtos
WHERE valor > 50;


-- 2) Produtos com valor entre R$5,00 e R$60,00
SELECT *
FROM tb_produtos
WHERE valor BETWEEN 5 AND 60;


-- 3) Produtos que possuem a letra C no nome
SELECT *
FROM tb_produtos
WHERE nome_produto LIKE '%C%';


-- 4) INNER JOIN mostrando produtos e categorias
SELECT 
    tb_produtos.nome_produto,
    tb_produtos.valor,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;


-- 5) INNER JOIN mostrando apenas produtos da categoria Cosméticos
SELECT 
    tb_produtos.nome_produto,
    tb_produtos.valor,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Cosméticos';