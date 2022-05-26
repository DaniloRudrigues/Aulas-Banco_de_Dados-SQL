create database	aula3;

use aula3;

create table departamento(
	codigo int primary key auto_increment,
    nome text not null
);

create table funcionario(
	matricula int primary key	auto_increment,
    nome text,
    rg int,
    genero char(1) check(genero in ('M', 'F')),
    endereco text,
    cidade text,
    salario float
);

# CRUD:
# create (criação)[insert], 
# read (leitura)[select], 
# update (atualização)[update] e 
# delete (exclusão)[delete]. 

# --- insert = insere um registro no banco de dados ---
insert into departamento(codigo, nome) values (1, "D&O");
insert into departamento values (2, "RH");
insert into departamento values (3, "Financeiro"),(4, "Comercial");
insert into departamento(nome) values ("Manufatura"); # o código é auto_increment logo ele vai preencher

# --- select = busca registros no banco ---
select codigo, nome from departamento; 	# parte visual 
select * from departamento;           	# * = significa todos os atributos
select * from funcionario;
select codigo as id, nome from departamento; # altera codigo para id apenas na na parte visual

# --- update = alterar registros do banco ---
update departamento	set nome = "DeO" where codigo = 1;

# --- delete = exclui um registro do banco ---
delete from departamento where codigo > 2 and nome like "RH";
delete from departamento where codigo > 2 and nome like "RH%"; # "RH%" =  comeca com RH e o resto da String não interessa

# describe = mostra os detalhes
describe funcionario;

# alter = alterar a estrutura
alter table funcionario add column depto int after rg; # after ou first
alter table funcionario add foreign key(depto) references departamento(codigo);