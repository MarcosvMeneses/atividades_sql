-- Criação do banco de dados
CREATE DATABASE db_game_online;
USE db_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    especialidade VARCHAR(50) NOT NULL
);

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

-- Inserção de registros na tabela tb_classes
INSERT INTO tb_classes (nome_classe, especialidade) VALUES 
('Guerreiro', 'Combate corpo a corpo'),
('Mago', 'Magias elementais'),
('Arqueiro', 'Ataque à distância'),
('Ladino', 'Furtividade'),
('Clerigo', 'Cura e proteção');

-- Inserção de registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, id_classe) VALUES
('Conan', 50, 2500, 1800, 1),
('Gandalf', 60, 1800, 2200, 2),
('Legolas', 55, 2300, 1500, 3),
('Shadow', 45, 1900, 1200, 4),
('Cleric', 48, 1500, 2500, 5),
('Crom', 52, 2800, 2000, 1),
('Merlin', 58, 2100, 1900, 2),
('Robin', 47, 1950, 1100, 3);

-- SELECT para personagens com poder de ataque > 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- SELECT para personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- SELECT para personagens com a letra 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- INNER JOIN entre tb_personagens e tb_classes
SELECT p.*, c.nome_classe, c.especialidade 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe;

-- INNER JOIN para personagens da classe Arqueiro
SELECT p.*, c.nome_classe, c.especialidade 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';