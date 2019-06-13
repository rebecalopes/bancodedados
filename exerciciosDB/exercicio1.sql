-- 1. Visualizar os databases existentes:

show databases;

-- 2. Criar um database chamado "sistema":

create database sistema;

-- 3.Visualizar novamente os databases existentes e definir como padrão o database "sistema":

show databases;
use sistema;

-- 6. Criar a tabela "departamento", conforme especificado no diagrama:
create table departamento (
id_departamento Integer primary key auto_increment,
nome varchar(100),
telefone char(15)
);

-- 7. Visualizar a estrutura da tabela "departamento":

show tables;
select * from departamento;

-- 8. Criar a tabela "funcionario", conforme especificado no diagrama (observe a chave estrangeira - Foreign Key):

create table funcionario (
id_funcionario Integer primary key auto_increment,
nome varchar(100),
id_departamento Integer, 
foreign key (id_departamento) references departamento (id_departamento),
data_cadastro date
);

-- 9. Deletar a tabela funcionário.

drop table funcionario;

-- 10. Criar a tabela "funcionario", conforme especificado no diagrama (sem a chave estrangeira - Foreign Key):

create table funcionario (
id_funcionario Integer primary key auto_increment,
nome varchar(100),
data_cadastro date
);

-- 11. Alterar a tabela criada anteriormente para adicionar a chave estrangeira (para quando se esquece da chave estrangeira).

alter table funcionario add id_departamento Integer;
alter table funcionario add foreign key (id_departamento) references departamento (id_departamento);

-- 12. Inserindo registros na tabela "departamento" (sem especificação dos campos):

insert into departamento values ("RG", "81982981");
