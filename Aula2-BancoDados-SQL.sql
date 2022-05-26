# Chave Estrangeira == Atributo único que interliga entidades, ou seja a dependencia é realizada pelo - foreign key(atributo que recebera a "references")references Entidade(atributo primario) -
# Chave Estrangeira == pode ser nula

use aulaNext;
# cardinalidade 1:1 -  UNIQUE
create table Funcionario(
	id int not null auto_increment,
	nome varchar(100) not null,
	matricula integer not null,
	primary key(id)
);

create table Dependente(
	id int not null auto_increment,
    idFuncionario int not null unique,
    nome varchar(100) not null,
	foreign key(idFuncionario) references Funcionario(id),
    primary key(id)
);
create	table EnderecoFuncionario(
	id int not null auto_increment,
    idFuncionario int not null unique,
    rua varchar(100) not null,
    cep bigint not null,
    bairro varchar(100) not null,
    foreign key(idFuncionario)references Funcionario(id),
    primary key(id)
);

# cardinalidade 1:n - SEM UNIQUE
create table TelefoneFuncionario(  #multvalorado - vários telefones - sem unique
	id int not null auto_increment,
    idFuncionario int not null,
    telefone bigint not null,
    foreign key(idFuncionario) references Funcionario(id),
    primary key(id)
);

# cardinalidade n:n - SEM UNIQUE e COM 2 CHAVES ESTRANGEIRAS - relações n:n sempre se transformam em entidades


create table Autor(
	id int not null auto_increment,
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    primary key(id)
);

create table Livro(
	id int not null auto_increment,
    titulo varchar(100) not null,
    editora varchar(100) not null,
    primary key(id)
);

create table AutorLivro(
	id int not null auto_increment,
    idAutor int not null,
    idLivro int not null,
    foreign key(idAutor) references Autor(id),
    foreign key(idLivro) references Livro(id),
    primary key(id)
);