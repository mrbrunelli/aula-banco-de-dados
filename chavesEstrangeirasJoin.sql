use cadastro;

desc gafanhotos;

-- adicionar uma chave estrangeira na tabela gafanhotos
alter table gafanhotos add column cursopreferido int;

-- adicionar uma constraint chave estrangeira
-- MUL significa chave multipla
alter table gafanhotos 
add foreign key (cursopreferido) 
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

-- vamos fazer o Daniel preferir o curso de MySQL
update gafanhotos set cursopreferido = '6' where id = '1';

-- tentar deletar o curso 6 mysql
-- como ele tem ligação com chave estrangeira, o comando deve dar erro de integridade
-- se o curso nao tiver relação com nenhuma tabela, ele podera ser excluido
delete from cursos
where idcurso = '6';

-- agora vamos ter que fazer junções, para trazer o nome do curso, e não apenas o id
select nome, cursopreferido from gafanhotos;

-- para fazer uma junção nós usamos o comando inner join, ou somente join
-- aqui ele não juntou de forma inteligente, pois ele mostrou as outras pessoas tbm
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos;

-- para solucionar esse problema usaremos um parametro ON
-- que irá verificar se a chave do curso bate com a chave estrangeira que esta no gafanhoto
-- para deixar de exibir o id é so retirar o gafanhoto.cursopreferido, assim ficará apenas o nome do curso
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

-- eu posso utilizar apelidos atraves do AS para diminuir os comandos
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

-- se eu quiser mostrar os que nao tem relação com as pesquisas eu coloco OUTER JOIN
-- eu posso escolher a preferencia, se é gafanhotos então é left outer join, ou left join, pois etá à esquerda
-- se for cursos, então é right, pois esta à direita
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;




