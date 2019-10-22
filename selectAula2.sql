-- selecionar todos os cursos que tenham 'p'
-- like no lugar de =
-- like = semelhante/parecido
select * from cursos
where nome like 'p%'; 

-- trocar o '%' de lugar
-- seleciona todos os nomes que terminam com 'a'
select * from cursos
where nome like '%a';

-- selecionar qualquer nome que tenha 'a' no corpo
select * from cursos
where nome like '%a%';

-- selecionar qualquer nome que não tenha 'a' no corpo
select * from cursos
where nome not like '%a%';

-- seleciona nomes que comecem com 'ph' e tem 'p' no final
select * from cursos
where nome like 'ph%p%';

-- eu obrigo que ele busque um caractere depois de 'p'
-- pode ser letra, numero, simbolo
select * from cursos
where nome like 'ph%p_';

-- buscar pessoas que tenham 'silva' no nome
select * from gafanhotos
where nome like '%silva%';

-- buscar pessoas que tenham 'silva' no sobrenome apenas
select * from gafanhotos
where nome like '%_silva%';

-- também posso usar assim
select * from gafanhotos
where nome like '%silva';

-- quais são os paises dos meus alunos?
-- distincs ira listar um pais por vez, apenas uma vez
select distinct nacionalidade from gafanhotos
order by nacionalidade;

-- saber as cargas dos meus cursos
select distinct carga from cursos
order by carga;

-- contar quantos cursos tem cadastrado
select count(*) from cursos;

-- quantos cursos maiores que 40 horas estão cadastrados
select count(*) from cursos where carga > 40;

-- qual a maior carga horaria cadastrada
select max(carga) from cursos;

-- qual curso teve mais aulas em 2016
select max(totaulas) from cursos where ano = '2016';

-- qual curso teve menos aulas em 2016
select min(totaulas) from cursos where ano = '2016';

-- mostrar o nome junto
select nome, min(totaulas) from cursos where ano = '2016';

-- somar o total de aulas de 2016 e exibir
select sum(totaulas) from cursos where ano = '2016';

-- exibir média do totaulas de 2016
select avg(totaulas) from cursos where ano = '2016';