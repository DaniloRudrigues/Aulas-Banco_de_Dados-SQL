# Entidade == Tabela == Retangulo
# Atributo simples == são indivisíveis == Coluna da Tabela == Elipse
# Atributo Compostos == são divisíveis == Coluna da Tabela == Elipse ligadas a Elipses
# Atributo multvalorado == composto por várias informações == Coluna da Tabela == Elipse dupla
# Chave Primária == Atributo único identificador == Elipse
# Tupla == linha da Tabela == 

CREATE DATABASE aulaNext;
show databases;
use aulaNext;

# criando Entidade
create table Alunos(
	id bigint not null auto_increment, 	# Atributo simples
	nome varchar(100) not null, 		# Atributo simples
    primary key(id) 					# Atributo simples e chave primaria
); 

select * from Alunos;

# Criando Atributo Composto e multvalorados (sem criar o vinculo com a entidade)
create table enderecoAluno(
	id bigint not null auto_increment,
    rua longtext not null,
    cep bigint not null,
    primary key(id)
);

