create database if not exists macoto 
default character set utf8
default collate utf8_general_ci;

use macoto;

create table usuario (
matr int not null auto_increment,
nome varchar(50),
end varchar(100),
email varchar(100),
dtres date,
livro_cod int,
primary key (matr)
) default charset = utf8;

create table livro (
cod int not null auto_increment,
titulo varchar(50),
edicao year,
dtemp date,
dtdev date,
primary key (cod),
usuario_matr int,
foreign key (usuario_matr) references usuario(matr)
) default charset = utf8;

alter table usuario
add constraint foreign key (livro_cod) references livro(cod);

-- TABELA ASSOCIATIVA AUTOR/LIVRO
create table escreveu (
autor_cod int,
livro_cod int,
foreign key (autor_cod) references autor(cod),
foreign key (livro_cod) references livro(cod)
) default charset = utf8;

create table autor (
cod int not null auto_increment,
nome varchar(100),
nacion varchar(50),
primary key (cod)
) default charset = utf8;

create table assunto (
cod int not null auto_increment,
nome varchar(100) not null,
primary key (cod, nome)
) default charset = utf8;

-- TABELA ASSOCIATIVA ASSUNTO/LIVRO
create table classificado (
livro_cod int,
assunto_cod int,
assunto_nome varchar(100),
foreign key (livro_cod) references livro(cod),
foreign key (assunto_cod, assunto_nome) references assunto(cod, nome)
) default charset = utf8;

-- TABELA ASSOCIATIVA ASSUNTO/ASSUNTO
create table composto (
assunto_cod int not null,
assunto_nome varchar(100) not null,
subassunto_cod int not null,
subassunto_nome varchar(100) not null,
primary key (assunto_cod, assunto_nome, subassunto_cod, subassunto_nome),
foreign key (assunto_cod, assunto_nome) references assunto(cod, nome),
foreign key (subassunto_cod, subassunto_nome) references assunto(cod, nome)
) default charset = utf8;






