 ##Dev:Félix Francisco
 create table materia(
cod_mat int primary key,
nome_materia varchar(30)
);
insert into materia
(cod_mat,nome_materia)
values
(02,'matemática'),
(04,'Fundamentos de bd');
select * from materia;
create table alunos(
 matricula int primary key,
nome varchar(30),
cod_materia int,
foreign key (cod_materia) references  materia (cod_mat),
rua varchar(30),
bairro varchar(30)	
);
insert into alunos 
(matricula,nome,cod_materia,rua,bairro)
values
(1537,'Manuella da Silva',02,'Rua Bittencurt','Centro'
),
(1538,'Alessandra Souza
',02,'Avenida de Tal','Estreito
'),
(1539,'Andressa Rosa',04,'Rua Aroldo','Centro');
select * from alunos;
select * from alunos inner join materia on alunos.cod_materia = materia.cod_mat

