Create table aluno
(
	matricula_aluno	Int Identity(2022000000,1),
	nome			Varchar(100),
	endereco		Varchar(150),
	data_nascimento Date,
	ddd				Char(3),
	telefone		Char(9),
	cpf				Char(11),
	email			Varchar(50),
	Constraint pk_aluno Primary Key (matricula_aluno)
)

Create table professor
(
	cod_professor				Int Identity(2022100000,1),
	nome						Varchar(100),
	endereco					Varchar(150),
	data_nascimento				Date,
	email						Varchar(50),
	carga_horaria_mensal		Int,
	materia						Varchar(30),
	Constraint pk_professor Primary Key (cod_professor)
)

Create table turma
(
	cod_turma				Int Identity(100,1),
	qnt_maxima_alunos		Int,
	data_inicio				Date,
	data_fim_curso			Date,
	cod_professor			Int,
	matricula_aluno			Int,
	Constraint pk_turma Primary Key (cod_turma),
	Constraint fk_turma_X_professor Foreign Key (cod_professor) References professor (cod_professor),
	Constraint fk_turma_X_aluno Foreign Key (matricula_aluno) References aluno (matricula_aluno)
)