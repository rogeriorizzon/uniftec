create table relacional.stg_matriculas(
	id serial primary key not null,
	nome_arquivo varchar(255) null,
	matricula varchar(10) null,
	nome varchar(255) null,
	dat_nascimento date null,
	sexo varchar (10) null,
	rg varchar (20) null,
	cpf varchar (15)null,
	endereco varchar (255) null,
	telefone varchar (20) null,
	celular varchar (20) null,
	nome_pai varchar (255) null,
	escolaridade_pai varchar (255) null,
	nome_mae varchar (255) null,
	escolaridade_mae varchar (255) null,
	cor_raca varchar (15) null,
	deficiencia  varchar (50) null,
	transporte varchar (15) null,
	distancia varchar (10) null,
	veio_outra_escola  varchar (10) null,
	situacao_anterior  varchar (10) null,
	status_matricula  varchar (20) null,
	dat_matricula date null,
	turma varchar (5) not null,
	dat_carga timestamp NOT NULL DEFAULT now()::timestamp without time zone
);

create index idx_stg_matriculas on  relacional.stg_matriculas  (id,nome,sexo,cor_raca,deficiencia,transporte,turma,status_matricula);

