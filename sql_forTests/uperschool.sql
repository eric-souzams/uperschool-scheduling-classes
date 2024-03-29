-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jul-2020 às 21:54
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `uperschool`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_aulas_marcadas`
--

CREATE TABLE `up_aulas_marcadas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `data_marcada` date DEFAULT NULL,
  `hora_marcada` time DEFAULT NULL,
  `data_inclusao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `up_aulas_marcadas`
--

INSERT INTO `up_aulas_marcadas` (`id`, `id_usuario`, `materia`, `data_marcada`, `hora_marcada`, `data_inclusao`) VALUES
(1, 2, 'Geografia', '2019-09-19', '15:15:00', '2019-09-04 14:13:56'),
(2, 2, 'Literatura', '2019-09-11', '18:50:00', '2019-09-04 14:13:56'),
(3, 2, 'Geografia', '2019-09-27', '15:54:00', '2019-09-04 14:46:12'),
(4, 2, 'Fisica1', '2019-09-13', '15:30:00', '2019-09-04 14:49:54'),
(5, 2, 'Fisica1', '2019-09-13', '15:30:00', '2019-09-04 14:49:54'),
(6, 2, 'Literatura', '2019-09-14', '23:50:00', '2019-09-04 14:53:19'),
(7, 2, 'Historia', '2019-10-09', '12:00:00', '2019-09-04 15:21:03'),
(8, 2, 'Historia', '2019-09-14', '22:22:00', '2019-09-06 12:23:05'),
(9, 2, 'Geografia', '2019-09-14', '05:55:00', '2019-09-06 12:23:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_codigos_usuarios`
--

CREATE TABLE `up_codigos_usuarios` (
  `id` int(11) NOT NULL,
  `codigo_acesso` varchar(20) NOT NULL,
  `data_cricao_codigo` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `up_codigos_usuarios`
--

INSERT INTO `up_codigos_usuarios` (`id`, `codigo_acesso`, `data_cricao_codigo`) VALUES
(4, '761423944823', '2020-07-10 12:57:57'),
(5, '191655504206', '2020-07-10 12:59:23'),
(6, '144299445737', '2020-07-10 12:59:44'),
(8, '498868675912', '2020-07-10 16:30:34'),
(9, '491672809960', '2020-07-10 16:43:15'),
(10, '795693445891', '2020-07-11 15:53:02'),
(11, '280351525578', '2020-07-11 15:53:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_lista_planos`
--

CREATE TABLE `up_lista_planos` (
  `id` int(11) NOT NULL,
  `nome_plano` varchar(100) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `vantagens` varchar(250) NOT NULL,
  `tipo_plano` varchar(10) NOT NULL,
  `data_inclusao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `up_lista_planos`
--

INSERT INTO `up_lista_planos` (`id`, `nome_plano`, `descricao`, `vantagens`, `tipo_plano`, `data_inclusao`) VALUES
(1, 'Reforço Escolar 1', 'Neste plano você irar ter acesso total as nossas aulas particulares, com diversos professores de diversas matérias.', '25 horas de aulas mensal<br>\r\nPossibilidade de marcar aulas a qual quer momento<br>\r\nVarias matérias a sua disposição<br>\r\nProfessores altamente qualificados<br>', 'Mensal', '2019-09-04 15:48:20'),
(2, 'Reforço Escolar 2', 'Neste plano você irar ter acesso total as nossas aulas particulares, com diversos professores de diversas matérias.', '35 horas de aulas mensal<br>\r\nPossibilidade de marcar aulas a qual quer momento<br>\r\nVarias matérias a sua disposição<br>\r\nProfessores altamente qualificados<br>', 'Mensal', '2019-09-04 15:50:03'),
(3, 'Reforço Escolar 3', 'Neste plano você irar ter acesso total as nossas aulas particulares, com diversos professores de diversas matérias.', '45 horas de aulas mensal<br>\r\nPossibilidade de marcar aulas a qual quer momento<br>\r\nVarias matérias a sua disposição<br>\r\nProfessores altamente qualificados<br>', 'Mensal', '2019-09-06 14:11:09'),
(4, 'Reforço Escolar 4', 'Neste plano você irar ter acesso total as nossas aulas particulares, com diversos professores de diversas matérias. Com o diferencial do plano ser semestral.', '25 horas de aulas mensal<br>\r\nPossibilidade de marcar aulas a qual quer momento<br>\r\nVarias matérias a sua disposição<br>\r\nProfessores altamente qualificados<br>\r\nDesconto na mensalidade<br>', 'Semestral', '2019-09-11 10:53:52'),
(5, 'Reforço Escolar 5', 'Neste plano você irar ter acesso total as nossas aulas particulares, com diversos professores de diversas matérias. Com o diferencial do plano ser semestral.', '35 horas de aulas mensal<br>\r\nPossibilidade de marcar aulas a qual quer momento<br>\r\nVarias matérias a sua disposição<br>\r\nProfessores altamente qualificados<br>\r\nDesconto na mensalidade<br>', 'Semestral', '2019-09-11 10:54:07'),
(6, 'Reforço Escolar 6', 'Neste plano você irar ter acesso total as nossas aulas particulares, com diversos professores de diversas matérias. Com o diferencial do plano ser semestral.', '45 horas de aulas mensal<br>\r\nPossibilidade de marcar aulas a qual quer momento<br>\r\nVarias matérias a sua disposição<br>\r\nProfessores altamente qualificados<br>\r\nDesconto na mensalidade<br>', 'Semestral', '2019-09-11 10:54:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_lista_professores`
--

CREATE TABLE `up_lista_professores` (
  `id` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `nome_professor` varchar(80) NOT NULL,
  `materia_aplicaveis` varchar(200) NOT NULL,
  `professor_desde` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `up_lista_professores`
--

INSERT INTO `up_lista_professores` (`id`, `estado`, `cidade`, `materia`, `nome_professor`, `materia_aplicaveis`, `professor_desde`) VALUES
(1, 'Brasilia', 'Samambaia', 'Historia', 'Joao Teste de Teste', 'Hístoria, Geografia, Filosofia e Sociologia', '2019-09-10 15:00:00'),
(2, 'Brasilia', 'Ceilandia', 'Geografia', 'Pedro Teste de Teste', 'Geografia, Historia e Sociologia', '2019-09-10 14:59:00'),
(3, 'Brasilia', 'Ceilandia', 'Historia', 'Gabriel Teste de Teste', 'Historia e Geografia', '2019-09-10 14:58:56'),
(4, 'Brasilia', 'Ceilandia', 'Historia', 'Marcio Teste de Teste', 'Português, Historia, Sociologia e Filosofia', '2019-09-11 10:21:37'),
(5, 'Brasilia', 'Taguatinga', 'Biologia 2', 'Phd. Jose', 'Biologia 1 e Biologia 2', '2019-09-12 15:29:30'),
(6, 'Brasilia', 'Samambaia', 'Fisica 1', 'Ninja Silva', 'Historia e Geografia', '2020-07-10 17:14:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_plano_usuario`
--

CREATE TABLE `up_plano_usuario` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_plano` varchar(10) NOT NULL,
  `data_compra` datetime DEFAULT current_timestamp(),
  `validade_plano` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `up_plano_usuario`
--

INSERT INTO `up_plano_usuario` (`id`, `id_usuario`, `id_plano`, `data_compra`, `validade_plano`) VALUES
(2, 8, '5', '2019-09-12 15:25:39', '2020-03-12'),
(7, 2, '3', '2020-07-11 16:46:36', '2020-08-15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_usuarios`
--

CREATE TABLE `up_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `datacriacao` date NOT NULL DEFAULT current_timestamp(),
  `nivelpermissao` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 - Usuário\r\n2 - Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `up_usuarios`
--

INSERT INTO `up_usuarios` (`id`, `nome`, `usuario`, `senha`, `datacriacao`, `nivelpermissao`) VALUES
(1, 'Vinicius', 'vinicius', '81dc9bdb52d04dc20036dbd8313ed055', '2019-09-01', '1'),
(2, 'Eric', 'eric', '202cb962ac59075b964b07152d234b70', '2019-09-01', '2');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `up_aulas_marcadas`
--
ALTER TABLE `up_aulas_marcadas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `up_codigos_usuarios`
--
ALTER TABLE `up_codigos_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_acesso` (`codigo_acesso`);

--
-- Índices para tabela `up_lista_planos`
--
ALTER TABLE `up_lista_planos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `up_lista_professores`
--
ALTER TABLE `up_lista_professores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `up_plano_usuario`
--
ALTER TABLE `up_plano_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `up_usuarios`
--
ALTER TABLE `up_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `up_aulas_marcadas`
--
ALTER TABLE `up_aulas_marcadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `up_codigos_usuarios`
--
ALTER TABLE `up_codigos_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `up_lista_planos`
--
ALTER TABLE `up_lista_planos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `up_lista_professores`
--
ALTER TABLE `up_lista_professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `up_plano_usuario`
--
ALTER TABLE `up_plano_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `up_usuarios`
--
ALTER TABLE `up_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
