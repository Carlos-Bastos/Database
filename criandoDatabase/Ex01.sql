use RH;
create table tb_colaboradores(
codigo int(4) AUTO_INCREMENT,
nome varchar(30) NOT NULL,
idade int(3),
cpf bigint,
email varchar(50),
PRIMARY KEY (codigo)
);
alter table tb_colaboradores add salario decimal(5,2);
insert into tb_colaboradores(nome, idade, cpf, email, salario) values ("Ana", 32, 12345678911, "e1@.com", 15.000);
insert into tb_colaboradores(nome, idade, cpf, email, salario) values ("Bruno", 21, 12345678912, "e2@.com", 6.500);
insert into tb_colaboradores(nome, idade, cpf, email, salario) values ("Caio", 26, 12345678913, "e3@.com", 10.000);
insert into tb_colaboradores(nome, idade, cpf, email, salario) values ("Diana", 26, 12345678914, "e4@.com", 6.500);
insert into tb_colaboradores(nome, idade, cpf, email, salario) values ("Elena", 45, 12345678915, "e5@.com", 27.000);
select * from tb_colaboradores;

-- todes os colaboradores com o salário maior do que 2000
select * from tb_colaboradores where salario > 2000;

-- todes os colaboradores com o salário menor do que 2000
select * from tb_colaboradores where salario < 2000;

-- atualize um registro desta tabela através de uma query de atualização
update tb_colaboradores set salario=15000.00 where codigo=1;
alter table tb_colaboradores modify salario decimal(7,2);

-- atualizando salarios errados
update tb_colaboradores set salario=6500.00 where codigo=3;
update tb_colaboradores set salario=10000.00 where codigo=4;
update tb_colaboradores set salario=6500.00 where codigo=5;
update tb_colaboradores set salario=27000.00 where codigo=6;

DELETE FROM tb_colaboradores 
WHERE
    codigo = 2;