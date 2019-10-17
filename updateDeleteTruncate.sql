-- inserindo dados nas colunas
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

-- atualizando uma linha depois que ela ja estava criada
-- utilizando o WHERE para saber qual linha irei mudar
update cursos
set nome = 'HTML5'
where idcurso = '1';

-- mudando duas linhas de uma vez
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

-- colocando um limite de 1 operação por segurança
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

-- deletar todas as informações da linha referente ao id 8
delete from cursos
where idcurso = '8';

-- Apaga os dados mas mantém as estruturas da tabela
truncate table cursos;


