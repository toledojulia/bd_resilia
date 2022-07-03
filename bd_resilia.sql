USE resilia;
CREATE TABLE `cursos` (
  `id_curso` int PRIMARY KEY AUTO_INCREMENT,
  `nome_curso` varchar(255),
  `duracao` varchar(255)
);

CREATE TABLE `facilitador` (
  `id_facilitador` int PRIMARY KEY AUTO_INCREMENT,
  `nome_facilitador` varchar(255),
  `frente_facilitador` varchar(255)
);

CREATE TABLE `turmas` (
  `id_turma` int PRIMARY KEY AUTO_INCREMENT,
  `id_curso` int,
  `nome_turma` varchar(255),
  `id_facilitador_soft` int,
  `id_facilitador_tech` int
);

CREATE TABLE `alunos` (
  `id_aluno` int PRIMARY KEY AUTO_INCREMENT,
  `nome_aluno` varchar(255),
  `id_turma` int,
  `email` text
);

CREATE TABLE `entregas` (
  `id_entrega` int PRIMARY KEY AUTO_INCREMENT,
  `link_entrega` varchar(255),
  `modulo_projeto` int,
  `id_aluno` int,
  `conceito` varchar(255)
);