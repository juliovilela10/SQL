select turma.cod_turma, turma.cod_professor, turma.data_inicio, turma.data_fim_curso,
aluno.nome, aluno.cpf, aluno.email
from aluno_turma
join aluno
	on aluno.matricula_aluno = aluno_turma.matricula_aluno
join turma
	on turma.cod_turma = aluno_turma.cod_turma


