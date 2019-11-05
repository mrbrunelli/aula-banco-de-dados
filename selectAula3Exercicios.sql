-- 1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos:
select profissao, count(*) from gafanhotos
group by profissao
order by count(*) desc;

-- 2) Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo
order by count(*) desc;

-- 3) Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem
--    e o total de pessoas nascidas lá. Só nos interessam os países que tiverem
--    mais de 3 gafanhotos com essa nacionalidade:
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3
order by count(*) desc;

-- 4) Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg
-- 	  e que estão acima da média de altura de todos os cadastrados:
select altura, count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);

