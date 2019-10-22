create database if not exists trabalho1710
default character set utf8
default collate utf8_general_ci;

use trabalho1710;

create table usuario (
matr int not null auto_increment,
nome varchar(50) not null,
end varchar(100),
email varchar(100),
dtres date,
livro_cod int,
primary key (matr)
-- foreign key (livro_cod) references livro(cod)
) default charset = utf8;

create table livro (
cod int not null auto_increment,
titulo varchar(50),
edicao varchar(50),
dtemp date,
dtdev date,
usuario_matr int,
autor_cod int,
primary key (cod)
-- foreign key (usuario_matr) references usuario(matr)
) default charset = utf8; 

create table autor (
cod int not null auto_increment,
nome varchar(50),
email varchar(100),
livro_cod int,
primary key (cod)
) default charset = utf8;

-- tabela associativa
create table escreveu (
autor_cod int,
livro_cod int,
foreign key (autor_cod) references autor(cod),
foreign key (livro_cod) references livro(cod)
) default charset = utf8;

create table assunto (
cod int not null auto_increment,
nome varchar(50) not null,
primary key (cod, nome)
) default charset = utf8;

-- tabela associativa
create table classificado (
livro_cod int,
assunto_cod int,
assunto_nome varchar(50),
foreign key (livro_cod) references livro(cod),
foreign key (assunto_cod, assunto_nome) references assunto(cod, nome)
) default charset = utf8;

-- tabela associativa
create table composto (
assunto_cod int not null,
assunto_nome varchar(50) not null,
subassunto_cod int not null,
subassunto_nome varchar(50) not null,
primary key (assunto_cod, assunto_nome, subassunto_cod, subassunto_nome),
foreign key (assunto_cod, assunto_nome) references assunto(cod, nome),
foreign key (subassunto_cod, subassunto_nome) references assunto(cod, nome)
) default charset = utf8;






