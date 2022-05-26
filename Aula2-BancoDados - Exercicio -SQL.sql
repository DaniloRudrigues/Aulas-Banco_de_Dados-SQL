create	database controleFuncionario;

use controleFuncionario;

create table Departamento(
	id int	not	null auto_increment,
    idGerente int	not	null,
    nome varchar(100) not null,
    dataInicioGerente date not null,
    primary key(id)
);

create table Funcionario(
	id int	not null auto_increment,
    idSupervisor int not null, 
    idDepartamento int not null,
    cpf varchar(14) not null unique,
    primeiroNome varchar(100) not null,
    inicialNomeDoMeio varchar(100) Not null,
    ultimoNome varchar(100) not null,
    endereco varchar(200) not null,
    sexo char not null,
    salario float not null,
    foreign key(idSupervisor) references Funcionario(id),
    foreign key(idDepartamento) references Departamento(id),
    primary key(id)
);

alter table Departamento add foreign key(idGerente) references Funcionario(id);

create table Dependente(
	id int not null auto_increment,
    idFuncionario int not null,
    nome varchar(100) not null,
    dataNasc date not null,
    sexo char not null,
    parentesco varchar(100) not null,
	foreign key(idFuncionario) references Funcionario(id),
    primary key(id)
);

create table Localizacao(
	id int	not	null auto_increment,
    cidade varchar(100) not null,
    primary key(id)
);

create table Projeto(
	id int	not	null auto_increment,
    idDepartamento int not null,
    idLocal int not null,
    nome varchar(100) not null,
    foreign key(idDepartamento) references Departamento(id),
    foreign key(idLocal) references Localizacao(id),
    primary key(id)
);

# --------------relacionamentos n:n-----------------------

create table FuncionarioProjeto(
	id int	not	null auto_increment,
    idFuncionario int not null,
    idProjeto int not null,
    horasTrabalhadas int not null,
    foreign key(idFuncionario) references Funcionario(id),
    foreign key(idProjeto) references Projeto(id),
    primary key(id)
);

create table DepartamentoLocalizacao(
	id int	not	null auto_increment,
    idDepartamento int not null,
    idLocalizacao int not null,
    horasTrabalhadas int not null,
    foreign key(idDepartamento) references Departamento(id),
    foreign key(idLocalizacao) references Localizacao(id),
    primary key(id)
);


