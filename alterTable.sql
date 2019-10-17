-- desc ou describe, ambos vão descrever os atributos da tabela
describe pessoas;
desc gafanhotos;

-- adicionar uma coluna e seus parametros depois que a tabela já foi criada
alter table pessoas
add column profissao varchar(10);

-- eliminar uma coluna da tabela pessoas;
-- todos os dados da coluna serão excluidos juntos!
alter table pessoas
drop column profissao;

-- adicionar uma coluna depois do NOME
alter table pessoas
add column profissao varchar(10) after nome; 

-- adicionar uma coluna em primeiro lugar
alter table pessoas
add column codigo int first;

-- modifica a coluna, mas apenas os parametros
-- se eu quiser trocar o nome da coluna eu devo usar o CHANGE
alter table pessoas
modify column profissao varchar(20) not null default '';

-- modifica o nome e os parametros da coluna
alter table pessoas
change column profissao prof varchar(20) not null default '';

-- mudar o nome da tabela
alter table pessoas
rename to gafanhotos;



select * from pessoas;
select * from gafanhotos;

