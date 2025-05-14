create database db_rh;
use db_rh;

create TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
data_entrada date,
salario decimal(7,2),
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, data_entrada, salario)
VALUES ("João Roberto", "Estagiário", "2024-05-13", 800.00),
("José Roberto", "Estagiário", "2024-05-13", 800.00),
("Marcos Vinicius", "Analista", "2024-01-10", 2200.00),
("Mayara Silva", "Diretora", "2024-01-10", 9550.00),
("Vinivius Onofre", "Diretor", "2024-01-10", 9000.00);

select * from tb_colaboradores
where salario > 2000;


ALTER TABLE tb_colaboradores RENAME COLUMN data_entrada TO admissao;
    
    

