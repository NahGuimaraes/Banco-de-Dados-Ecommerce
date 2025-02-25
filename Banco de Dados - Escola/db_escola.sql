-- Criação do banco de dados
CREATE DATABASE db_escola;

-- Uso do banco de dados
USE db_escola;

-- Criação da tabela de estudantes
CREATE TABLE estudantes (
  id_estudante INT AUTO_INCREMENT,
  nome_estudante VARCHAR(100),
  idade_estudante INT,
  nota_estudante DECIMAL(3, 2),
  turma_estudante VARCHAR(10),
  PRIMARY KEY (id_estudante)
);

-- Inserção de dados na tabela de estudantes
INSERT INTO estudantes (nome_estudante, idade_estudante, nota_estudante, turma_estudante)
VALUES
  ('João Silva', 16, 8.5, '3A'),
  ('Maria Oliveira', 17, 9.0, '3B'),
  ('Pedro Sousa', 15, 6.5, '2A'),
  ('Ana Paula', 16, 7.8, '3A'),
  ('Luiz Carlos', 17, 9.5, '3B'),
  ('Julia Martins', 15, 6.0, '2A'),
  ('Rafael Santos', 16, 8.0, '3A'),
  ('Gabriela Silva', 17, 9.2, '3B');

-- Seleção de estudantes com nota maior do que 7.0
SELECT * FROM estudantes
WHERE nota_estudante > 7.0;

-- Seleção de estudantes com nota menor do que 7.0
SELECT * FROM estudantes
WHERE nota_estudante < 7.0;

-- Atualização de um registro da tabela de estudantes
UPDATE estudantes
SET nota_estudante = 8.8
WHERE id_estudante = 1;