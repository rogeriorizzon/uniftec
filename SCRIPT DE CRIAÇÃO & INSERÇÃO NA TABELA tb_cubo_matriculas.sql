-- SCRIPT DE CRIAÇÃO & INSERÇÃO NA TABELA tb_cubo_matriculas
select
	ta.id_aluno,
	tm.matricula,
	ta.nome,
	ta.dat_nascimento,
	ts.sexo,
	ta.rg,
	ta.cpf,
	ta.endereco,
	ta.telefone,
	ta.celular,
	ta.nome_pai,
	ta.escolaridade_pai,
	ta.nome_mae,
	ta.escolaridade_mae,
	tcr.cor_raca,
	td.deficiencia,
	tt.transporte,
	ta.distancia,
	tvoe.veio_outra_escola,
	tsa.situacao_anterior,
	tsm.status_matricula,
	ta.dat_matricula,
	tt2.turma,
	ta.dat_carga
	
	into relacional.tb_cubo_matriculas

from relacional.tb_alunos as ta 
	inner join relacional.tb_sexo as ts 
		on ta.sexo = ts.id_sexo 
	inner join relacional.tb_matriculas as tm 
		on ta.matricula = tm.matricula
	inner join relacional.tb_cor_raca as tcr 
		on tcr.id_cor = ta.cor_raca 
	inner join relacional.tb_deficiencia as td 
		on td.id_deficiencia = ta.deficiencia 
	inner join relacional.tb_transporte as tt 
		on tt.id_transporte = ta.transporte 
	inner join relacional.tb_veio_outra_escola as tvoe 
		on tvoe.id_outra_escola = tm.veio_outra_escola 
	inner join relacional.tb_situacao_anterior as tsa 
		on tsa.id_situacao_anterior = tm.situacao_anterior 
	inner join relacional.tb_status_matricula as tsm 
		on tsm.id_status_matricula = tm.status_matricula 
	inner join relacional.tb_turma as tt2 
		on tt2.id_turma = tm.turma 