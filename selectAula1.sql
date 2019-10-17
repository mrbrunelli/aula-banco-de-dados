use cadastro;
select * from gafanhotos;

-- ordem decrecente - desc
-- ordem ascendente - asc
select * from cursos
order by nome desc;

-- ordenar por ano, e depois por nome
select nome, carga, ano from cursos
order by ano, nome;

-- buscar por cadastros realizados apenas em 2016
-- where significa ONDE
-- buscar todos os cursos ONDE o ano for = 2016
select * from cursos
where ano = '2016'
order by nome;

-- aqui ele trará o mesmo resultado que a busca de cima
-- mas não irá mostrar o ano, nós ja informamos que queremos uma busca de 2016
-- eu não preciso trazer a coluna ano 
select nome from cursos
where ano = '2016'
order by nome;

-- usar operadores relacionais no where
-- <, >, <=, >=, =, != ou <> 
select nome, descricao, ano, carga from cursos
where ano <= '2016'
order by ano, nome;

-- between - entre 2014 e 2016
-- mostrar as pesquisas que estão entre 2014 e 2016
select nome, ano from cursos
where ano between '2014' and '2016'
order by ano desc, nome asc;

-- in - ele só mostra os valores que eu pedir
-- posso colocar valores especificos
-- como por exemplo, só quero buscar o ano de 2014 e 2016
select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano, nome;

-- usar operadores logicos para refinar a busca
-- usando o AND só irá dar select se ambas as condições forem satisfeitas
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

-- também posso utilizar o OR
-- nesse caso se uma das condições forem satisfeitas, o select acontecerá
select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;

