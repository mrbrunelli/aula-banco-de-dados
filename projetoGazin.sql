create database projetoGazin
default character set utf8
default collate utf8_general_ci;

use projetoGazin;

create table planilhas (
id int not null auto_increment,
nome varchar(40) not null,
descricao text,
dataPesquisa date not null,
setor varchar(40) not null,
primary key (id)
) default charset = utf8;

insert into planilhas values
(default, "Pesquisa Satisfação", "Pesquisa realizada na filial de Douradina", "2019-10-08", "Varejo"),
(default, "Pesquisa Geomarketing", "Pesquisa de satisfação do cliente", "2018-02-22", "Atacado"),
(default, "Varejão", "Pesquisa anual do varejão Gazin", "2016-12-24", "Geral"),
(default, "Lucros", "Gráficos pizza de lucros mês de agosto", "2019-08-10", "Atacado"),
(default, "Pesquisa Colchões","Satisfação dos clientes da colchões", "2014-10-06", "Colchões"),
(default, "Pesquisa Umuarama", "Pesquisa realizada na loja de Umuarama", "2019-05-26", "Varejo");

desc planilhas;

select * from planilhas;

insert into planilhas values
(default, "Pesquisa geral", "Pesquisa realizada em segredo na filial de Douradina", "2009-07-10", "Atacado"),
(default, "Pesquisa de satisfação", "Gráfico de satisfação do cliente", "2012-05-19", "Varejo"),
(default, "Pesquisa do Geomarketing", "Realizada pela filial 32", "2019-10-02", "Colchões"),
(default, "Pesquisa do Google", "Pesquisa realizada no Google pra saber quem é a Betina", "2018-12-29", "Google");

insert into planilhas values
(default, "Pesquisa do Yahoo", "Pergunta no Yahoo Respostas", "2010-11-23", "Yahoo"),
(default, "Pesquisa do Orkut", "Pesquisa realizada nos perfis dos amiguinhos do Orkut", "2007-12-25", "Orkut");

alter table planilhas
add column link varchar(2048);

update planilhas
set link = 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTLYZcOD7TyTeneB0SRSWxZX8eg2qRvAqVkKeybtKbqiCJbFB1Jq2YL41MrTEeFPf6vHYYkTevQtiwT/pub?output=xlsx'
where id = '1';

update planilhas
set link = 'https://docs.google.com/spreadsheets/d/e/2PACX-1vQ2kKpjour-LqHpBXw4GHyhWZZupKmM5bMhEl10oieilCsdNSxsSCPsA_PymR49FQl7mj86phfonl5k/pub?output=xlsx'
where id = '2';

