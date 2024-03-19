-- criar uma base dados(BD) vazia
CREATE DATABASE fatec_lbb;

-- mencionar ao SGBD qual BD quero utilizar
USE fatec_lbb;

-- Criar Tabela

CREATE TABLE ALUNO(
	ra INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	dt_nascimento DATE NOT NULL,
	sexo CHAR(1) CHECK(sexo='F' OR sexo='M' OR sexo='I')
);

-- primary key é a chave identificadora da tabalea
-- auto_increment é o contador automatico para a chave primária de uma especifica
-- not null obrigatoriedade de preenchimento
-- check é utilizado para determinar um padrão de valor a ser inserido (no insert)

CREATE TABLE TURMA(
	id_turma INT PRIMARY KEY AUTO_INCREMENT,
	sigla VARCHAR(5) CHECK (sigla IN('ADS','GPI', 'GE')),
	ciclo INT CHECK(ciclo>=1 AND ciclo<=6),
	qtd_alunos INT CHECK (qtd_alunos<=40)
);

CREATE TABLE ALUNO_TURMA(
    ra INT,
    id_turma INT REFERENCES TURMA(id_turma),
    FOREIGN KEY (ra) REFERENCES ALUNO(ra)
);
