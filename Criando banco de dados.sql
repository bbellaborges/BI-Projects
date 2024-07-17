

CREATE DATABASE comunidade;
USE comunidade;

-- TRUNCATE TABLE aluno;

-- criando tabelas
DROP TABLE IF EXISTS aluno;
CREATE TABLE aluno(
	matricula INT NOT NULL IDENTITY,
	nome VARCHAR(100) NOT NULL,
	nascimento DATE NOT NULL,
	PRIMARY KEY (matricula));

-- inserindo valores
INSERT INTO aluno (nome, nascimento) VALUES ('Maria Silva', '1994-07-20');
INSERT INTO aluno (nome, nascimento) VALUES ('João Sousa', '1985-07-20');
INSERT INTO aluno (nome, nascimento) VALUES ('Pedro Paulo', '1970-10-04');
INSERT INTO aluno (nome, nascimento) VALUES ('Joana Campos', '1996-04-10');

SELECT * FROM aluno;

DROP TABLE IF EXISTS professor;
CREATE TABLE professor(
	idProfessor INT PRIMARY KEY IDENTITY,
    nome_professor VARCHAR(100)
);

DROP TABLE IF EXISTS curso;
CREATE TABLE curso(
	idCurso INT NOT NULL PRIMARY KEY IDENTITY,
    nome_curso VARCHAR(100) NOT NULL,
    qtdAlunos INT NOT NULL,
    idProfessor INT, 
    FOREIGN KEY (idProfessor) REFERENCES professor(idProfessor)
		ON DELETE CASCADE
);


-- ALTER TABLE table_name
-- ADD new_column_name column_definition
-- AFTER column_name