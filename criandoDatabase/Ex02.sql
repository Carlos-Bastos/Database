create database e_commerce;
use e_commerce;
create table produtos(
codigo int(4) AUTO_INCREMENT,
marca varchar(30) NOT NULL,
nome varchar(50),
setor varchar(20),
preco decimal(5,2),
PRIMARY KEY (codigo)
);
insert into produtos (marca, nome, setor, preco) values ("gen", "arroz", "alimentos", 12);
insert into produtos (marca, nome, setor, preco) values ("gen", "feijao", "alimentos", 15);
insert into produtos (marca, nome, setor, preco) values ("gen", "macarrao", "alimentos", 5);
insert into produtos (marca, nome, setor, preco) values ("gen", "carne", "alimentos", 60);
insert into produtos (marca, nome, setor, preco) values ("gen", "vassoura", "limpeza", 10);
insert into produtos (marca, nome, setor, preco) values ("gen", "detergente", "limpeza", 3.99);
insert into produtos (marca, nome, setor, preco) values ("gen", "tv", "eletrodomesticos", 1299);
insert into produtos (marca, nome, setor, preco) values ("gen", "sofa", "moveis", 4000);
select * from produtos;
alter table produtos modify preco decimal(7,2);
DELETE FROM produtos WHERE codigo = 2;

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500
select * from produtos where preco > 500;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500
select * from produtos where preco < 500;

-- atualize um registro desta tabela através de uma query de atualização
UPDATE produtos 
SET 
    preco = 39
WHERE
    codigo = 5;