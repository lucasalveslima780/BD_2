-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 01:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_colegio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `Matricula` varchar(5) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Cod_Curso` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`Matricula`, `Nome`, `Endereco`, `Cidade`, `Cod_Curso`) VALUES
('10001', 'Marcos Moraes', 'Rua Pe Roque,2057', 'Mogi Mirim', '01'),
('10002', 'Maria Conceição Lopes', 'Rua Araras,23', 'Mogi Guaçu', '01'),
('10003', 'Ana Carina Lopes', 'Rua Peraltas,222', 'Santos', '01'),
('10004', 'Carlos Aguiar', 'Rua Botafogo,33', 'Santos', '01'),
('10005', 'André Luiz dos Santos', 'Rua Lopes Conte,3343', 'Sapucaí', '01'),
('10006', 'Pedro Antonio Pimenta', 'Rua Altair Lopes,33', 'Itapira', '02'),
('10007', 'Rita de Cássia da Silva', 'Rua Eletromais,33', 'Itapira', '02'),
('10008', 'Caique dos Santos', 'Rua das Amoreiras,55', 'Campinas', '02'),
('10009', 'Carlos Tavares', 'Rua Peixe,99', 'Santos', '02'),
('10010', 'Antonio Carlos Caetano', 'Rua Josefina Alface,987', 'Campinas', '02'),
('10011', 'Ricardo Moreira', 'Rua do Pinhal,332', 'Aparecida', '03'),
('10012', 'Richardson S. P. Campeao', 'Rua do Tricolor,433', 'São Paulo', '03'),
('10013', 'Junior camisa Seis', 'Rua do Morumbi,433', 'São Paulo', '03'),
('10014', 'Carina Melo', 'Rua Osvaldo Ramos,88', 'Mogi Guaçu', '03'),
('10015', 'Pedro Mello', 'Rua Itororó', 'Mogi Mirim', '03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `Cod_Curso` char(2) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cod_Disc` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`Cod_Curso`, `Nome`, `Cod_Disc`) VALUES
('01', 'Auxiliar de Informática', '11'),
('02', 'Programador de Computadores', '21'),
('03', 'Técnico em Informática', '31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `Cod_Disc` char(2) NOT NULL,
  `Nome_Disciplina` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`Cod_Disc`, `Nome_Disciplina`) VALUES
('11', 'Banco de Dados'),
('12', 'Lógica de Programação'),
('13', 'Desenvolvimento de Software 1'),
('21', 'Banco de dados 2'),
('22', 'Desenvolvimento de Software 2'),
('23', 'Programação de Computadores 1'),
('31', 'Banco de Dados 3'),
('32', 'Programação de Computadores 2'),
('33', 'Desenvolvimento de Software 3');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`Matricula`),
  ADD KEY `aluno` (`Cod_Curso`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Cod_Curso`),
  ADD KEY `Cod_Disc` (`Cod_Disc`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`Cod_Disc`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno` FOREIGN KEY (`Cod_Curso`) REFERENCES `cursos` (`Cod_Curso`);

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `Cod_Disc` FOREIGN KEY (`Cod_Disc`) REFERENCES `disciplinas` (`Cod_Disc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
