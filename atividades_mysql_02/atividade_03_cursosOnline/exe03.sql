-- Criando o banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Usando o banco
USE db_curso_da_minha_vida;


-- Criando tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);


-- Criando tabela de cursos
CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(50) NOT NULL,
    professor VARCHAR(50),
    valor DECIMAL(10,2),
    carga_horaria INT,
    id_categoria INT,

    FOREIGN KEY (id_categoria)
    REFERENCES tb_categorias(id_categoria)
);


-- Inserindo categorias
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Java', 'Cursos de programação Java'),
('Banco de Dados', 'Cursos de banco de dados'),
('Front End', 'Cursos de desenvolvimento web'),
('Back End', 'Cursos de servidor e programação'),
('Tecnologia', 'Cursos gerais de tecnologia');


-- Inserindo cursos
INSERT INTO tb_cursos (nome_curso, professor, valor, carga_horaria, id_categoria)
VALUES
('Java Básico', 'Carlos', 700.00, 40, 1),
('Java Avançado', 'Ana', 1000.00, 60, 1),
('MySQL Completo', 'Pedro', 600.00, 50, 2),
('HTML e CSS', 'Marcos', 300.00, 30, 3),
('JavaScript', 'Julia', 800.00, 50, 3),
('Spring Boot', 'Carlos', 1200.00, 70, 4),
('Banco de Dados SQL', 'Paulo', 550.00, 45, 2),
('Tecnologia da Informação', 'Maria', 500.00, 40, 5);



-- 1) Cursos com valor maior que R$500,00
SELECT *
FROM tb_cursos
WHERE valor > 500;


-- 2) Cursos com valor entre R$600,00 e R$1000,00
SELECT *
FROM tb_cursos
WHERE valor BETWEEN 600 AND 1000;


-- 3) Cursos que possuem a letra J no nome
SELECT *
FROM tb_cursos
WHERE nome_curso LIKE '%J%';


-- 4) INNER JOIN mostrando cursos e categorias
SELECT
    tb_cursos.nome_curso,
    tb_cursos.valor,
    tb_categorias.nome_categoria
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id_categoria;


-- 5) INNER JOIN mostrando apenas cursos da categoria Java
SELECT
    tb_cursos.nome_curso,
    tb_cursos.valor,
    tb_categorias.nome_categoria
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Java';