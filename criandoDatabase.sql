-- criar um banco de dados utf8 
-- utf8 aceita a maioria dos caracteres e acentos
-- posso utilizar o if not exists pra não correr o risco de criar um banco de dados que já existe
create database if not exists suzete
default character set utf8
default collate utf8_general_ci;