CREATE DATA BASE db_quitanda;

USE db_quitanda; (para selecionar a tabela)

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana", 1000, "2025-06-12", 12.49);

select * from tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Maçã", 1500, "2025-06-12", 10.00),
	("Cenoura", 2000, "2025-07-15", 12.00),
	("Alcafe", 3500, "2025-06-19", 4.00);
	
	
ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

UPDATA tb_produtos SET preco = 12.49
WHERE id = 1;

delete from tb_produtos where id = 4;

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos DROP descricao;

alter table rb_produtos CHANGE nome nome_produto varchar(255);




