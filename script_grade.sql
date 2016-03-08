CREATE TABLE aluno (
  alunoid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  curso_cursoid INTEGER UNSIGNED NOT NULL,
  cpf VARCHAR(14) NOT NULL DEFAULT 000.000.000-09,
  rg VARCHAR(11) NULL,
  datanascimento DATE NULL,
  sexo CHAR(1) NULL DEFAULT M,
  endereco VARCHAR(70) NULL,
  bairro VARCHAR(50) NULL,
  cidade VARCHAR(50) NULL,
  telefone VARCHAR(14) NULL,
  celular VARCHAR(14) NULL,
  numeromatricula INTEGER UNSIGNED NOT NULL,
  anoingresso INTEGER UNSIGNED NULL,
  semestreingresso INTEGER UNSIGNED NULL,
  email VARCHAR(70) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  PRIMARY KEY(alunoid),
  INDEX aluno_fkey_curso(curso_cursoid)
);

CREATE TABLE curso (
  cursoid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cursonome VARCHAR(50) NOT NULL,
  PRIMARY KEY(cursoid)
);

CREATE TABLE disciplina (
  disciplinaid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  curso_cursoid INTEGER UNSIGNED NOT NULL,
  disciplinanome VARCHAR(50) NOT NULL,
  disciplinaementa TEXT NULL,
  disciplinabibliografia VARCHAR(120) NULL,
  disciplinasituacao BOOL NOT NULL DEFAULT true,
  PRIMARY KEY(disciplinaid),
  INDEX disciplina_fkey_curso(curso_cursoid)
);

CREATE TABLE grade (
  gradeid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  curso_cursoid INTEGER UNSIGNED NOT NULL,
  codigograde INTEGER UNSIGNED NOT NULL,
  ano INTEGER UNSIGNED NOT NULL,
  semestre VARCHAR NOT NULL,
  PRIMARY KEY(gradeid),
  INDEX grade_fkey_cursoid(curso_cursoid)
);

CREATE TABLE reserva (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  diasemana VARCHAR(20) NOT NULL,
  grade_gradeid INTEGER UNSIGNED NOT NULL,
  disciplina_disciplinaid INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id),
  INDEX reserva_fkey_disciplina(disciplina_disciplinaid),
  INDEX reserva_fkey_grade(grade_gradeid)
);


