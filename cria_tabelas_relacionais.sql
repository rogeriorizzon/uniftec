-- CRIAÇÃO DAS TABELAS

-- Cria Tabela Matriculas
create table relacional.tb_matriculas(
	id_matricula serial primary key not null,
	id_aluno integer references relacional.tb_alunos (id_aluno),
	matricula varchar(10) null,
	veio_outra_escola  integer references relacional.tb_veio_outra_escola (id_outra_escola),
	situacao_anterior  integer references relacional.tb_situacao_anterior (id_situacao_anterior),
	status_matricula  integer references relacional.tb_status_matricula (id_status_matricula),
	dat_matricula date null,
	turma integer references relacional.tb_turma (id_turma),
	dat_carga timestamp
);

-- Tabela Alunos
CREATE TABLE relacional.tb_alunos (
	id_aluno serial NOT NULL,
	matricula varchar(10) NULL,
	nome varchar(255) NULL,
	dat_nascimento date NULL,
	rg varchar(20) NULL,
	cpf varchar(15) NULL,
	endereco varchar(255) NULL,
	telefone varchar(20) NULL,
	celular varchar(20) NULL,
	nome_pai varchar(255) NULL,
	escolaridade_pai varchar(255) NULL,
	nome_mae varchar(255) NULL,
	escolaridade_mae varchar(255) NULL,
	distancia varchar(10) NULL,
	dat_matricula date NULL,
	cor_raca integer NULL,
	sexo integer NULL,
	deficiencia integer NULL,
	transporte integer NULL,
	dat_carga timestamp,
	CONSTRAINT tb_alunos_pkey PRIMARY KEY (id_aluno),
	CONSTRAINT tb_alunos_cor_raca_fkey FOREIGN KEY (cor_raca) REFERENCES relacional.tb_cor_raca(id_cor),
	CONSTRAINT tb_alunos_deficiencia_fkey FOREIGN KEY (deficiencia) REFERENCES relacional.tb_deficiencia(id_deficiencia),
	CONSTRAINT tb_alunos_sexo_fkey FOREIGN KEY (sexo) REFERENCES relacional.tb_sexo(id_sexo),
	CONSTRAINT tb_alunos_transporte_fkey FOREIGN KEY (transporte) REFERENCES relacional.tb_transporte(id_transporte)
);


-- Tabela Sexo
create table relacional.tb_sexo(
	id_sexo serial primary key,
	sexo varchar(10) not null
	);
	
-- Tabela Transporte
create table relacional.tb_transporte(
	id_transporte serial primary key,
	transporte varchar(15) not null
	);
	
-- Tabela Cor/Raça
create table relacional.tb_cor_raca(
	id_cor serial primary key,
	cor_raca varchar(15) not null
	);
	
-- Tabela Deficiência
create table relacional.tb_deficiencia(
	id_deficiencia serial primary key,
	deficiencia varchar(50) not null
	);

-- Tabela Veio de outra escola
create table relacional.tb_veio_outra_escola(
	id_outra_escola serial primary key,
	veio_outra_escola varchar(10) not null
	);
	
-- Tabela Situação Anterior
create table relacional.tb_situacao_anterior(
	id_situacao_anterior serial primary key,
	situacao_anterior varchar(10) not null
	);
	
-- Tabela Status Matricula
create table relacional.tb_status_matricula(
	id_status_matricula serial primary key,
	status_matricula varchar(20) not null
	);
	
-- Tabela Turma
create table relacional.tb_turma(
	id_turma serial primary key,
	turma varchar(5) not null
	);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	