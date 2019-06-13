/* criando banco de dados */
create database generation;

use generation; /*indicando qual banco de dados iremos trabalhar*/

/* criando uma tabela */
create table alunos (
	id int(11) primary key auto_increment not null,
    nome varchar(30) not null,
    sobrenome varchar(30) not null,
    email varchar(50) not null,
    data_nascimento date not null,
    cpf int(11) unique not null
);

/* inserir e registrar novos dados na tabela (por os dados inserido abaixo da tabela referente) */

insert into alunos (nome, 
			sobrenome, 
			email, 
			data_nascimento, 
			cpf)
values ("Sheila",
		"Maria",
		"sheilamaria@gmail.com",
		"1990-08-06",
		"03892839010");

 create table professores (
	id int(11) primary key auto_increment not null,
    nome varchar(30) not null,
    sobrenome varchar(30) not null,
	email varchar(50) not null,
    data_nascimento date not null,
    cpf int(11) unique not null
 );
create table cursos (
id int(11) primary key auto_increment not null,
nome varchar(50) not null
);
create table turmas (
id int(11) primary key auto_increment not null,
descricao varchar(200) not null,
periodo varchar(20) not null,
id_alunos int(11),
id_professores int(11),
id_cursos int(11)
);

/* comandos */
show tables; /* exibir as tabelas */
describe alunos; /* descrever os detalhes de uma tabela */
select * from alunos; /* ver todos os dados da tabela (select all) */
select id, nome, email, data_nascimento, cpf from alunos; /* ver os dados da tabela que foram selecionados, especificos*/
delete from alunos; /*apagar todos os dados da coluna*/
delete from alunos where nome = "Sheila";
update alunos set nome = "heilinha" where id = 3;


