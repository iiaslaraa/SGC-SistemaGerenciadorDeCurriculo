-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/07/2026 às 22:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS projeto_sgc_iasmimllc;
USE projeto_sgc_iasmimllc;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_sgc_iasmimllc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidato`
--

CREATE TABLE `candidato` (
  `idCandidato` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nomeMae` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `foto_perfil` longblob DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `portfolio` varchar(200) DEFAULT NULL,
  `informacoes_add` text DEFAULT NULL,
  `nome_assinatura` varchar(150) NOT NULL,
  `data_assinatura` date NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `candidato`
--

INSERT INTO `candidato` (`idCandidato`, `idEndereco`, `nome`, `nomeMae`, `email`, `telefone`, `data_nascimento`, `foto_perfil`, `linkedin`, `portfolio`, `informacoes_add`, `nome_assinatura`, `data_assinatura`, `criado_em`) VALUES
(1, 1, 'Ana Clara Souza', 'Maria Souza','ana.souza@email.com', '(61) 99876-1234', '2003-05-14', NULL, 'https://linkedin.com/in/anaclarasouza', 'https://github.com/anaclarasouza', 'Estudante de Desenvolvimento Web e Banco de Dados.', 'Ana Clara Souza', '2026-07-01', '2026-07-01 20:39:27'),
(2, 2, 'Iasmim Lara', 'Patrícia Lara', 'iasmim.lara@gmail.com', '+39 345 123 4567', '2006-07-04', NULL, 'https://linkedin.com/in/iiaslaraa', 'https://iasmimlara.dev', 'Desenvolvedor Full Stack com experiência em aplicações web.', 'Iasmim Lara', '2026-07-01', '2026-07-01 20:39:27'),
(3, 3, 'Patrícia Lima', 'Francisca Lima', 'patricia.lima@email.com', '+41 79 123 45 67', '2000-08-09', NULL, 'https://linkedin.com/in/patricialima', 'https://patricialima.dev', 'Especialista em UX/UI e Desenvolvimento Front-end.', 'Patrícia Lima', '2026-07-01', '2026-07-01 20:39:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `certificacao`
--

CREATE TABLE `certificacao` (
  `idCertificacao` int(11) NOT NULL,
  `idCandidato` int(11) NOT NULL,
  `nome_certificacao` varchar(200) NOT NULL,
  `entidade_certificadora` varchar(150) NOT NULL,
  `codigo_certificado` varchar(100) NOT NULL,
  `data_emissao` date NOT NULL,
  `data_validade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `certificacao`
--

INSERT INTO `certificacao` (`idCertificacao`, `idCandidato`, `nome_certificacao`, `entidade_certificadora`, `codigo_certificado`, `data_emissao`, `data_validade`) VALUES
(1, 1, 'Desenvolvimento Web com PHP e MySQL', 'Fundação Bradesco', 'FB-PHP-2025-001', '2025-06-15', '2028-06-15'),
(2, 2, 'Java Foundations', 'Oracle Academy', 'ORA-JAVA-2025-002', '2025-09-20', '2028-09-20'),
(3, 3, 'Google UX Design Professional Certificate', 'Google Career Certificates', 'GOOGLE-UX-2024-003', '2024-11-10', '2027-11-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso_qualificacao`
--

CREATE TABLE `curso_qualificacao` (
  `idCurso_qualificacao` int(11) NOT NULL,
  `idCandidato` int(11) NOT NULL,
  `nome_curso` varchar(200) NOT NULL,
  `instituicao` varchar(150) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `ano_conclusao` year(4) NOT NULL,
  `modalidade` enum('Presencial','Online','Híbrido') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `curso_qualificacao`
--

INSERT INTO `curso_qualificacao` (`idCurso_qualificacao`, `idCandidato`, `nome_curso`, `instituicao`, `carga_horaria`, `ano_conclusao`, `modalidade`) VALUES
(1, 1, 'HTML5 e CSS3', 'Curso em Vídeo', 40, '2025', 'Online'),
(2, 1, 'Git e GitHub', 'Fundação Bradesco', 30, '2025', 'Online'),
(3, 2, 'Java Avançado', 'Oracle Academy', 80, '2025', 'Online'),
(4, 2, 'Banco de Dados MySQL', 'Fundação Bradesco', 60, '2024', 'Online'),
(5, 3, 'UI/UX Design', 'Google Career Certificates', 120, '2024', 'Online'),
(6, 3, 'JavaScript Moderno', 'Alura', 80, '2025', 'Online');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `logradouro` varchar(200) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `pais` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `pais`) VALUES
(1, 'SQN 308 Bloco B', '205', 'Apartamento 302', 'Asa Norte', 'Brasília', 'DF', '70747-020', 'Brasil'),
(2, 'Via Roma', '148', 'Casa', 'Centro Storico', 'Roma', 'RM', '00184', 'Itália'),
(3, 'Bahnhofstrasse', '25', 'Apartamento 4B', 'Altstadt', 'Zurique', 'ZH', '8001', 'Suíça');

-- --------------------------------------------------------

--
-- Estrutura para tabela `experiencia_profissional`
--

CREATE TABLE `experiencia_profissional` (
  `idExperiencia_profissional` int(11) NOT NULL,
  `idCandidato` int(11) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `cargo` varchar(150) NOT NULL,
  `descricao_atividades` text NOT NULL,
  `data_entrada` date NOT NULL,
  `data_saida` date DEFAULT NULL,
  `emprego_atual` tinyint(1) NOT NULL DEFAULT 0,
  `modalidade` enum('Presencial','Remoto','Híbrido') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `experiencia_profissional`
--

INSERT INTO `experiencia_profissional` (`idExperiencia_profissional`, `idCandidato`, `empresa`, `cargo`, `descricao_atividades`, `data_entrada`, `data_saida`, `emprego_atual`, `modalidade`) VALUES
(1, 1, 'SoftTech Solutions', 'Estagiário de Desenvolvimento Web', 'Desenvolvimento de páginas web utilizando HTML, CSS, PHP e MySQL, manutenção de sistemas e suporte aos usuários.', '2025-01-15', NULL, 1, 'Híbrido'),
(2, 2, 'Tech Innovation Italia', 'Desenvolvedora Backend', 'Desenvolvimento de APIs em PHP, modelagem de banco de dados MySQL e integração entre sistemas corporativos.', '2024-08-01', NULL, 1, 'Remoto'),
(3, 3, 'Swiss Digital Solutions', 'Desenvolvedora Full Stack', 'Desenvolvimento de aplicações web, criação de interfaces responsivas e gerenciamento de bancos de dados relacionais.', '2023-02-01', '2025-06-30', 0, 'Presencial');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formacao_academica`
--

CREATE TABLE `formacao_academica` (
  `idFormacao_academica` int(11) NOT NULL,
  `idCandidato` int(11) NOT NULL,
  `instituicao` varchar(200) NOT NULL,
  `curso` varchar(150) NOT NULL,
  `grau` enum('T','G','E','MBA','M','D') NOT NULL,
  `data_inicio` date NOT NULL,
  `data_conclusao` date DEFAULT NULL,
  `em_andamento` tinyint(1) NOT NULL DEFAULT 0,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `formacao_academica`
--

INSERT INTO `formacao_academica` (`idFormacao_academica`, `idCandidato`, `instituicao`, `curso`, `grau`, `data_inicio`, `data_conclusao`, `em_andamento`, `descricao`) VALUES
(1, 1, 'Escola Técnica de Brasília', 'Técnico em Informática', 'T', '2024-02-01', '2026-12-01', 1, 'Formação técnica com foco em desenvolvimento web, banco de dados e programação.'),
(2, 2, 'Università degli Studi di Roma La Sapienza', 'Engenharia de Software', 'G', '2022-03-01', '2026-12-01', 1, 'Graduação voltada para desenvolvimento de sistemas, arquitetura de software e tecnologia da informação.'),
(3, 3, 'ETH Zurich', 'Ciência da Computação', 'G', '2019-08-01', '2023-07-15', 0, 'Graduação com foco em programação, engenharia de software, algoritmos e banco de dados.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`idCandidato`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_candidato_Endereco1_idx` (`idEndereco`);

--
-- Índices de tabela `certificacao`
--
ALTER TABLE `certificacao`
  ADD PRIMARY KEY (`idCertificacao`),
  ADD KEY `fk_certificacao_candidato1_idx` (`idCandidato`);

--
-- Índices de tabela `curso_qualificacao`
--
ALTER TABLE `curso_qualificacao`
  ADD PRIMARY KEY (`idCurso_qualificacao`),
  ADD KEY `fk_curso_qualificacao_candidato1_idx` (`idCandidato`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices de tabela `experiencia_profissional`
--
ALTER TABLE `experiencia_profissional`
  ADD PRIMARY KEY (`idExperiencia_profissional`),
  ADD KEY `fk_Experiencia_Profissional_Candidato1_idx` (`idCandidato`);

--
-- Índices de tabela `formacao_academica`
--
ALTER TABLE `formacao_academica`
  ADD PRIMARY KEY (`idFormacao_academica`),
  ADD KEY `fk_Formacao_Academica_Candidato1_idx` (`idCandidato`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidato`
--
ALTER TABLE `candidato`
  MODIFY `idCandidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `certificacao`
--
ALTER TABLE `certificacao`
  MODIFY `idCertificacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `curso_qualificacao`
--
ALTER TABLE `curso_qualificacao`
  MODIFY `idCurso_qualificacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `experiencia_profissional`
--
ALTER TABLE `experiencia_profissional`
  MODIFY `idExperiencia_profissional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `formacao_academica`
--
ALTER TABLE `formacao_academica`
  MODIFY `idFormacao_academica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_candidato_Endereco1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `certificacao`
--
ALTER TABLE `certificacao`
  ADD CONSTRAINT `fk_certificacao_candidato1` FOREIGN KEY (`idCandidato`) REFERENCES `candidato` (`idCandidato`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `curso_qualificacao`
--
ALTER TABLE `curso_qualificacao`
  ADD CONSTRAINT `fk_curso_qualificacao_candidato1` FOREIGN KEY (`idCandidato`) REFERENCES `candidato` (`idCandidato`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `experiencia_profissional`
--
ALTER TABLE `experiencia_profissional`
  ADD CONSTRAINT `fk_Experiencia_Profissional_Candidato1` FOREIGN KEY (`idCandidato`) REFERENCES `candidato` (`idCandidato`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `formacao_academica`
--
ALTER TABLE `formacao_academica`
  ADD CONSTRAINT `fk_Formacao_Academica_Candidato1` FOREIGN KEY (`idCandidato`) REFERENCES `candidato` (`idCandidato`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
