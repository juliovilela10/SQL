CREATE TABLE aluno_turma
(
	matricula_aluno INT NOT NULL,
	cod_turma INT NOT NULL,
	CONSTRAINT fk_aluno_turma_X_aluno FOREIGN KEY (matricula_aluno) REFERENCES aluno (matricula_aluno),
	CONSTRAINT fk_aluno_turma_X_turma FOREIGN KEY (cod_turma) REFERENCES turma (cod_turma)
)