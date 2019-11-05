use cadastro;

-- criar tabela n pra n (associativa)
create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

desc gafanhoto_assiste_curso;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from gafanhoto_assiste_curso;

-- mostrar os gafanhotos e gafanhoto_assiste_curso
select * from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto;

-- mostrar o id e nome do gafanhoto e o id do curso que ele esta fazendo
select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
order by g.nome;

-- agora eu quero mostrar o conteudo das 3 tabelas
-- gafanhotos, assiste, cursos
-- tenho que fazer 2 join
select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c
on c.idcursos = a.idcursos
order by g.nome;
