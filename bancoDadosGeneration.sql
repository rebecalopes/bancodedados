/* criando banco de dados */
create database generation;

/*indicando qual banco de dados iremos trabalha*/
use generation;

/* criando uma tabela */
create table alunos (
	id int(11) primary key auto_increment not null,
    nome varchar(30) not null,
    sobrenome varchar(30) not null,
    email varchar(50) not null,
    data_nascimento date not null,
    cpf int(11) unique not null
);
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

/* exibir as tabelas */
show tables;

describe alunos;


