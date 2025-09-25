--## 2. Script SQL Prático
--Criar um script SQL completo com:
-- Criação de 2 tabelas relacionadas (ex: produtos e categorias)¹
-- Inserção de pelo menos 5 registros em cada tabela
-- 3 consultas diferentes usando WHERE
-- 1 consulta com ORDER BY
-- 1 consulta com JOIN
-- Comentários explicando cada seção

-- Seção 0:
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS categoria;

--¹ Seção 1: Criação das tabelas :D

CREATE TABLE categoria (
        categoria_id SERIAL PRIMARY KEY,
        nome_da_categoria VARCHAR(50)  NOT NULL
         
);

CREATE TABLE produtos (
        p_id SERIAL PRIMARY KEY,
        p_nome VARCHAR(100) NOT NULL,
        p_peso_g INTEGER NOT NULL,
        p_largura_cm NUMERIC(10, 2),
        p_altura_cm NUMERIC(10, 2),
        p_profundidade_cm NUMERIC(10, 2),
        p_marca VARCHAR(50), 
        p_descricao TEXT,
        p_preco NUMERIC(10, 2) NOT NULL,
        qtd_estoque INTEGER NOT NULL DEFAULT 0,
        categoria_id INTEGER, 
        FOREIGN KEY (categoria_id) REFERENCES categoria (categoria_id)

);

--² Seção 2: Inserção nas tabelas :P

INSERT INTO categoria (nome_da_categoria)
VALUES ('alimentos'),
    ('bebidas'),
    ('cuidados pessoais'),
    ('limpeza'),
    ('utensilios'),
    ('eletrodomesticos');

INSERT INTO produtos (p_nome, p_peso_g, p_preco, qtd_estoque, p_marca, p_descricao, categoria_id)
VALUES 
    ('Espaguete Sêmola Galo', 1000, 4.69, 123, 'Galo', 'O Espaguete Sêmola da Galo é um macarrão...', 1),
    ('Refrigerante Coca-cola 2L', 2000, 9.89, 89, 'Coca-Cola', 'A Coca-Cola é um refrigerante não alcoólico...', 2),
    ('Loção Deo-hidratante Nivea', 200, 17.31, 55, 'Nivea', 'A Loção Deo-hidratante Nivea Body Milk...', 3),
    ('Desinfetante Pinho Sol 500ml', 500, 8.29, 73, 'Pinho Sol', 'O Desinfetante Pinho Sol é um produto de uso geral...', 4),
    ('Saleiro Branco 1kg Plasutil', 290, 9.93, 26, 'Plasutil', 'O Saleiro de plástico da marca Plasútil...', 5);

SELECT * FROM produtos 
WHERE p_preco > 9.00;

SELECT * FROM produtos 
WHERE p_marca = 'Galo';

SELECT * FROM produtos 
WHERE categoria_id = 4 AND qtd_estoque > 70;

SELECT 
    p_nome,
    p_marca,
    p_preco
FROM 
    produtos
ORDER BY 
    p_nome ASC;

SELECT 
    p.p_nome AS "Produto",
    c.nome_da_categoria AS "Categoria"
FROM 
    produtos AS p
JOIN 
    categoria AS c ON p.categoria_id = c.categoria_id;

