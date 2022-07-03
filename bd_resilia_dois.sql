ALTER TABLE turmas
add foreign key(id_curso)
references cursos(id_curso);

ALTER TABLE turmas
add foreign key(id_facilitador)
references facilitador(id_facilitador);

ALTER TABLE turmas
add foreign key(id_facilitador_soft)
references facilitador(id_facilitador);

ALTER TABLE alunos
add foreign key(id_turma)
references turmas(id_turma);

ALTER TABLE entregas
add foreign key(id_aluno)
references alunos(id_aluno);

INSERT INTO cursos (nome_curso,duracao)
VALUES ('WebDev FullStack', '6 meses') ,('DataAnalytics', '6 meses');

INSERT INTO facilitador (nome_facilitador,frente_facilitador)
VALUES ('Pipoca', 'Tech'),
('Dory', 'Soft'),
('Charlotte', 'Tech'),
('Moana', 'Soft'),
('Teca','Tech'),
('Lily','Soft');

INSERT INTO turmas (id_curso,nome_turma,id_facilitador_soft,id_facilitador_tech)
VALUES ('1', 'T1','2','1'),
('2', 'T2','4','3'),
('1', 'T3','6','5');

INSERT INTO alunos (nome_aluno,id_turma,email)
Values('Gabriel Christ','1','gcc10bin@icloud.com'),
('Brenda Tondin','1','brendatodin@gmail.com'),
('Karina','1','karinaestudante@gmail.com'),
('Leo Costa','1','leocosta@gmail.com'),
('Joao Paulo','2','jpbegiato@gmail.com'),
('Helder','2','helderdev@gmail.com'),
('Larrisa Lira','2','larrisalira@gmail.com'),
('Nodja Lima','2','limanodja@gmail.com'),
('Flavio Christovam','3','fchristovam@gmail.com'),
('Rafael Jordão','3','jordaorafael@gmail.com'),
('Roberta Oliveira','3','oliveirar@gmail.com'),
('Vitor Augusto','3','@gmail.com');

INSERT INTO entrega dos projetos (repositorio_github,modulo_do_projeto,id_aluno,conceito_projeto)
VALUES ('https://github.com/Gcc10bin/projeto-modulo-um','1','1','Mais que pronto'),
('https://github.com/brendatondin/Projeto-Modulo-1-','1','2','Mais que pronto'),
('https://github.com/Kahrinita/primeiroform','1','3','Mais que pronto'),
('https://github.com/LeoCosta-dev/projetoFinalModulo1Resilia','1','4','Pronto'),
('https://github.com/Joao-P-G-Begiato/formulario','1','5','Pronto'),
('https://github.com/devhelderlrs/projeto-modulo1','1','6','Pronto'),
('https://github.com/larrissalira/adoteaqui','1','7','Quase lá'),
('https://github.com/NodjaLima/formulario','1','8','Quase lá'),
('https://github.com/VitorAam/desafio_trinta_dias','1','9','Quase lá'),
('https://github.com/fchristovam/formulario-resilia','1','10','Ainda não está pronto'),
('https://github.com/rafaelljordao/adote-aqui','1','11','Ainda não está pronto'),
('https://github.com/RobertaOliveira07/adote','1','12','Ainda não está pronto');

SELECT id_aluno,modulo_projeto,conceito
 FROM entregas
 WHERE conceito IN ('pronto','mais que pronto') and modulo_projeto = '1';
 
SELECT COUNT(id_aluno) as 'Quantos alunos tem na T1'
 FROM alunos
 WHERE id_turma = '1';
 
SELECT COUNT(id_aluno) 'Quantos alunos tem na T2'
 FROM alunos
 WHERE id_turma = '2';
 
SELECT COUNT(id_aluno)'Quantos alunos tem na T3'
 FROM alunos
 WHERE id_turma = '3';
 
SELECT COUNT(conceito) as 'Alunos que não passaram'
 FROM entregas
 WHERE conceito in('Ainda não está pronto','Quase lá');
 
SELECT id_aluno,conceito
FROM entregas
WHERE conceito = 'Mais que pronto';

SELECT id_aluno, id_turma
FROM alunos
WHERE id_aluno in('1','2','3')