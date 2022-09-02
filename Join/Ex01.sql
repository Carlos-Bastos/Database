create database db_generation_game_online;
use db_generation_game_online;
    
create table tb_classes(id bigint auto_increment, classe varchar(12) not null, arma varchar(12) not null,
primary key (id)
);
insert into tb_classes (classe, arma) values ("guerreiro", "espada"),
("arqueiro", "arco"),
("mago", "cajado"),
("berserker", "machado"),
("healer", "livro");
select * from tb_classes;

CREATE TABLE tb_personagens (
    char_id BIGINT AUTO_INCREMENT,
    raça VARCHAR(12) NOT NULL,
    nome VARCHAR(12) NOT NULL,
    atk INT(3) NOT NULL,
    def INT(3) NOT NULL,
    hp INT(4) NOT NULL,
    classe_id bigint,
	PRIMARY KEY (char_id),
	foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(raça, nome, atk, def, hp, classe_id) values
("humano", "geraldo", 30, 30, 30, 1),
("orc", "org", 40, 20, 30, 4),
("elfo", "jemeremias", 30, 20, 40, 2),
("anão", "oakson", 30, 40, 20, 1),
("anão", "olafson", 30, 40, 20, 4),
("humano", "varoline", 30, 30, 30, 3),
("elfo", "zelda", 30, 20, 40, 5),
("orc", "orf", 40, 20, 30, 1);

select * from tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000
select * from tb_personagens where atk > 20;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
select * from tb_personagens where def between 10 and 20;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome
select * from tb_personagens where nome like "%s%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
select * from tb_classes inner join tb_personagens on tb_classes.id = tb_personagens.classe_id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica
SELECT 
    *
FROM
    tb_classes
        INNER JOIN
    tb_personagens ON tb_classes.id = tb_personagens.classe_id
WHERE
    classe_id = 1;