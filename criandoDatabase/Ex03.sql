create database escola;

use escola;
create table alunes4B(
matricula int(4) AUTO_INCREMENT,
nome varchar(44),
turma varchar(2),
materia varchar(44),
nota decimal(3,1),
primary key (matricula)
);

insert into alunes4B (nome, turma, materia, nota)
values
("Ana", "4B", "matemática", 9),
("Bruno", "4B", "matemática", 5),
("Caio", "4B", "matemática", 8),
("Daiana", "4B", "matemática", 10),
("Eliana", "4B", "matemática", 7.5),
("Felipe", "4B", "matemática", 2),
("Gabriela", "4B", "matemática", 7),
("Henrique", "4A", "matemática", 6);
select * from alunes4B;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0
select * from alunes4B where nota > 7;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0
select * from alunes4B where nota < 7;

-- atualize um registro desta tabela através de uma query de atualização
update alunes4B set turma="4B" where matricula=8;