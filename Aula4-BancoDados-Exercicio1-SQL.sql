create database exerAula4;
use exerAula4;

create table livros(
	id int not null,
    nome varchar(100) not null,
    rating int not null,
    primary key(id)
);

describe livros;

alter table livros modify column id int auto_increment;
alter table livros rename column nome to name; 


insert into livros(name, rating) values ("livroBom", 10),("livroRuim", 2),("livroMeiaBoca", 6);
select * from livros;

select name, rating from livros where rating >= 6 order by rating desc;

select avg(rating) as media, sum(rating) as somatorio, max(rating) as valorMaximo, min(rating) as valorMinimo from livros;