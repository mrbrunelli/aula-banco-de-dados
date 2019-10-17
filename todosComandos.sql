-- use cadastro
-- faço com que seja utulizado o banco de dados cadastro. tbm posso dar dois cliques em cima.
use cadastro;

-- excluir uma tabela
-- posso usar o parametro if exists
drop table if exists veiculos;

-- criar uma tabela
-- posso usar o parametro if not exists
-- create table if not exists veiculos
create table veiculos (
id int not null auto_increment,
modelo varchar(30) not null,
marca varchar(30) not null,
descricao text not null,
cor varchar(30) not null,
nacionalidade varchar(30) default 'Brasil',
ano year not null,
primary key (id)
) default charset = utf8;

-- inserir dados na tabela
-- (*id*, modelo, marca, descricao, cor, nacionalidade, ano)
-- *não preciso informar o id pq ele é auto_increment*
insert into veiculos values
(default, 'Corcel II', 'Ford', 'Potente com um incrivel câmbio de 4 marchas', 'pastel', default, '1970'),
(default, 'Camaro', 'Chevrolet', 'Comedor de pistas, motor v8 alta potencia', 'amarelo', 'EUA', '2010'),
(default, 'Mustang', 'Ford', 'Projetado para destruir o Camaro', 'preto', 'EUA', '1990'),
(default, 'Fusca', 'Volkswagen', 'Economico, facil manutenção, desbravador de terras', 'azul', 'Alemanha', '1968'),
(default, 'Gol', 'Volkswagen', 'Carro mais usado no mundo, Pelé e Neymar aprovam', 'prata', default, '2018');

-- modificar a estrutura da coluna. adicionar um varchar maior por exemplo.
alter table veiculos
modify column marca varchar(30) not null;

-- descrever os parametros da tabela
-- describe ou desc
desc veiculos;

-- selecionar a tabela e trazer com os dados preenchidos
select * from veiculos;

/*	DDL - Data Definition Language
	create database
	create table
	alter table
	drop table
*/

/*	DML - Data Manipulation Language
	insert into
    update
    delete
    truncate
    select
*/

/*	DQL - Data Query Language
	select
*/
