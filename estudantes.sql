create database if not exists estudantes
default character set utf8
default collate utf8_general_ci;

use estudantes;

create table pessoas (
id int not null auto_increment,
nome varchar(50) not null,
ultimonome varchar(50),
email varchar(100),
primary key (id)
) default charset = utf8;


