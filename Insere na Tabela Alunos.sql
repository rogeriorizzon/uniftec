
-- Insere na Tabela Alunos
insert into relacional.tb_alunos(
	matricula,
	nome,
	dat_nascimento,
	rg,
	cpf,
	endereco,
	telefone,
	celular,
	nome_pai,
	escolaridade_pai,
	nome_mae,
	escolaridade_mae,
	distancia,
	dat_matricula,
	dat_carga,
	cor_raca,
	sexo,
	deficiencia,
	transporte
	
	) select 
			m.matricula,
			m.nome,
			m.dat_nascimento,
			m.rg,
			m.cpf,
			m.endereco,
			m.telefone,
			m.celular,
			m.nome_pai,
			m.escolaridade_pai,
			m.nome_mae,
			m.escolaridade_mae,
			m.distancia,
			m.dat_matricula,
			m.dat_carga,
				(case 
					when c.cor_raca = 'Brancos' then 1 
		            when c.cor_raca = 'Indígenas' then 2
		            when c.cor_raca = 'Pretos' then 3
		            when c.cor_raca = 'Pardos' then 4
		            when c.cor_raca = 'Amarelos' then 5
		            else 0
		       end) as cor_raca,
		       
				(case 
					when s.sexo = 'Masculino' then 1
					when s.sexo = 'Feminino' then 2
					else 0
				end) as sexo,
				
				(case 
					when d.deficiencia = 'Deficiência visual' then 1
					when d.deficiencia = 'Deficiência mental' then 2
					when d.deficiencia = 'Deficiência motora' then 3
					when d.deficiencia = 'Deficiência auditiva' then 4
					when d.deficiencia = 'Paralisia cerebral' then 5
					when d.deficiencia = 'Nenhuma' then 6
					else 0
				end) as deficiencia,
				
				(case 
					when t.transporte = 'Bicicleta' then 1
					when t.transporte = 'Carro' then 2
					when t.transporte = 'A pé' then 3
					when t.transporte = 'Moto' then 4
					when t.transporte = 'Ônibus' then 5
					else 0
				end) as transporte
			
		from 
			relacional.stg_matriculas as m,
			relacional.tb_cor_raca as c,
			relacional.tb_sexo as s,
			relacional.tb_deficiencia as d,
			relacional.tb_transporte as t
		where 
			c.cor_raca = m.cor_raca 
			and s.sexo = m.sexo 
			and d.deficiencia = m.deficiencia 
			and t.transporte = m.transporte 
			
			