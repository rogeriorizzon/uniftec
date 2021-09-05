
-- Insere na Tabela Matriculas
insert into relacional.tb_matriculas(
	id_aluno,
	matricula,
	veio_outra_escola,
	situacao_anterior,
	status_matricula,
	dat_matricula,
	turma,
	dat_carga
) select 
	a.id_aluno,
	st.matricula,
		(case
			when v.veio_outra_escola = 'Sim' then 1
			when v.veio_outra_escola = 'Não' then 2
			else 0
		end) as veio_outra_escola,
		
		(case 
			when s.situacao_anterior = 'Reprovou' then 1
			when s.situacao_anterior = 'Pendente' then 2
			when s.situacao_anterior = 'Aprovado' then 3
			else 0
		end) as situacao_anterior,
		
		(case 
			when m.status_matricula = 'Pendente' then 1
			when m.status_matricula = 'Concluida' then 2
			else 0
		end) as status_matricula,
		
	a.dat_matricula,
		(case 
			when t.turma = '402' then 1
			when t.turma = '503' then 2
			when t.turma = 'M301' then 3
			when t.turma = '202' then 4
			when t.turma = '604' then 5
			when t.turma = '602' then 6
			when t.turma = 'Pr04' then 7
			when t.turma = 'M202' then 8
			when t.turma = 'M203' then 9
			when t.turma = '802' then 10
			when t.turma = '104' then 11
			when t.turma = '801' then 12
			when t.turma = '603' then 13
			when t.turma = '502' then 14
			when t.turma = '301' then 15
			when t.turma = '303' then 16
			when t.turma = '404' then 17
			when t.turma = '302' then 18
			when t.turma = 'M303' then 19
			when t.turma = 'M201' then 20
			when t.turma = '803' then 21
			when t.turma = 'M104' then 22
			when t.turma = '601' then 23
			when t.turma = '401' then 24
			when t.turma = 'Pr01' then 25
			when t.turma = '304' then 26
			when t.turma = '501' then 27
			when t.turma = '903' then 28
			when t.turma = '103' then 29
			when t.turma = '101' then 30
			when t.turma = '201' then 31
			when t.turma = '102' then 32
			when t.turma = 'M103' then 33
			when t.turma = 'M101' then 34
			when t.turma = '702' then 35
			when t.turma = 'Pr02' then 36
			when t.turma = '901' then 37
			when t.turma = '701' then 38
			when t.turma = '203' then 39
			when t.turma = 'M302' then 40
			when t.turma = 'M102' then 41
			when t.turma = 'M304' then 42
			when t.turma = 'Pr03' then 43
			when t.turma = '403' then 44
			when t.turma = '902' then 45
			when t.turma = '703' then 46
			else 0
		end) as turma,
	a.dat_carga
	
	from 
		relacional.tb_alunos as a,
		relacional.stg_matriculas as st,
		relacional.tb_veio_outra_escola as v,
		relacional.tb_situacao_anterior as s,
		relacional.tb_status_matricula as m,
		relacional.tb_turma as t
		
	where 
		st.matricula = a.matricula
		and v.veio_outra_escola = st.veio_outra_escola
		and s.situacao_anterior = st.situacao_anterior
		and m.status_matricula = st.status_matricula
		and a.dat_matricula = st.dat_matricula
		and t.turma = st.turma
		and a.dat_carga = st.dat_carga
	