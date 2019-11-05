-- agrupando registros
select carga from cursos
group by carga;

-- agrupando e agregando
select carga, count(nome) from cursos
group by carga;

-- quero saber os anos que tenho mais de 5 cursos
select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

-- agora quero saber apenas os anos acima de 2016
select ano, count(*) from cursos
group by ano
having ano > 2016
order by count(*) desc;

-- agora irei refinar ainda mais a pesquisa
-- selecionar, filtrar, agrupar e qual quero exibir
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

-- exibir media da carga
select avg(carga) from cursos;

-- exibir apenas as cargas que forem maior que a média de carga 'AVG'
-- aqui iremos usar dois selects! que legal!!!
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);