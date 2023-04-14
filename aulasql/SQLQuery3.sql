Select turma.cod_turma,
	   turma.data_inicio,
	   turma.data_fim_curso,
	   professor.materia,
	   professor.nome,
	   aluno.nome,
	   aluno.data_nascimento
From turma
JOIN professor
	on turma.cod_professor = professor.cod_professor
JOIN aluno
	on aluno.matricula_aluno = turma.matricula_aluno