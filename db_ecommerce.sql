-- Criação do banco de dados
CREATE DATABASE db_ecommerce;

-- Uso do banco de dados
USE db_ecommerce;

-- Criação da tabela de produtos
CREATE TABLE produtos (
  id_produto INT AUTO_INCREMENT,
  nome_produto VARCHAR(100),
  descricao_produto TEXT,
  valor_produto DECIMAL(10, 2),
  estoque_produto INT,
  PRIMARY KEY (id_produto)
);

-- Inserção de dados na tabela de produtos
INSERT INTO produtos (nome_produto, descricao_produto, valor_produto, estoque_produto)
VALUES
  ('Smartphone', 'Smartphone de alta qualidade com câmera de 12MP', 800.00, 10),
  ('Notebook', 'Notebook de alta performance com processador Intel Core i7', 2500.00, 5),
  ('Tablet', 'Tablet de 10 polegadas com processador Quad-Core', 400.00, 15),
  ('Relógio', 'Relógio inteligente com monitoramento de atividade física', 300.00, 20),
  ('Fones de ouvido', 'Fones de ouvido sem fio com tecnologia Bluetooth', 150.00, 25),
  ('Câmera', 'Câmera digital de 16MP com lente de 3x', 600.00, 10),
  ('Impressora', 'Impressora a laser com resolução de 1200dpi', 450.00, 5),
  ('Teclado', 'Teclado mecânico com switches de alta qualidade', 200.00, 15);

-- Seleção de produtos com valor maior do que 500
SELECT * FROM produtos
WHERE valor_produto > 500;

-- Seleção de produtos com valor menor do que 500
SELECT * FROM produtos
WHERE valor_produto < 500;

-- Atualização de um registro da tabela de produtos
UPDATE produtos
SET valor_produto = 850.00
WHERE id_produto = 1;
