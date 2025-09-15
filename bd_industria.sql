-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 03:15
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
-- Banco de dados: `bd_industria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `cod_Fornecedor` int(11) NOT NULL,
  `razao_Social` varchar(70) NOT NULL,
  `nome_Fantasia` varchar(70) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `num` varchar(7) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `fone` varchar(18) NOT NULL,
  `nome_Contato` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`cod_Fornecedor`, `razao_Social`, `nome_Fantasia`, `CNPJ`, `endereco`, `num`, `bairro`, `cidade`, `fone`, `nome_Contato`, `email`) VALUES
(1, 'Comércio de papeis Yuki Ltda', 'Yuki Papeis', '03.847/0001-98', 'Rua das Ameixeiras', '21', 'Penha', 'São Paulo', '(11)2695-6398', 'Sr.Pedro', 'yuki@provedor.com.br'),
(2, 'Comércio de papeis ABC Ltda', 'Papelaria ABC', '12.218.835/0001-27', 'Av. Iguapé', '1698', 'Tatuapé', 'São Paulo', '(11)2369-9685', 'Sra. Bete', 'p_ABC@provedor.com.br'),
(3, 'Distribuidora Kalunga S.A.', 'Kalunga', '23.222.835/0001-07', 'Av.Rio das Pedras', '1752', 'Itaquera', 'São Paulo', '(11)2596-9586', 'Sr. Marcos', 'kalunga@provedor.com.br'),
(4, 'Industria e Comércio Nobel S.A.', 'Nobel', '07.256.898/0001-10', 'Rua das Bolhas', '900', 'Itaquera', 'São Paulo', '(11)2475-6598', 'Sr. Paulo', 'nobel@provedor.com.br'),
(5, 'Papelaria Americnas Ltda', 'Americanas', '01.659.427/0001-04', 'Rua das Ovelhas', '21', 'Pari', 'São Paulo', '(11)2456-9874', 'Sr. Antonio', 'americanas@provedor.com.br'),
(6, 'Distribuidora Brasileiras S.A.', 'Brasileiras', '01.326.265/0001-04', 'Av. Brasil', '12', 'Brás', 'São Paulo', '(11)6598-6958', 'Sra. Paula', 'brasileiras@provedor.com.br'),
(7, 'Ind e Comércio de Papéis OI Ltda', 'Papéis OI', '01.362.126/0001-04', 'Av dos Trilhos', '1362', 'Pari', 'São Paulo', '(11)2365-2154', 'Sra. Ana', 'oi@provedor.com.br'),
(8, 'Armarinhos Fernando Ltda', 'Fernando', '01.956.236/0001-04', 'Alameda Santos', '362', 'Centro', 'São Paulo', '(11)2362-3659', 'Sr. Matheus', 'fernando@provedor.com.br'),
(9, 'Armarinhos Alegria S.A.', 'Alegria', '14.632.326/0001-14', 'Rua das Fagulhas', '12', 'Cambuci', 'São Paulo', '(11)2362-5487', 'Sr. Alegrete', 'alegria@provedor.com.br'),
(10, 'Comércio de Papéis Tchau Ltda', 'Tchau', '11.659.652/0001-04', 'Alameda dos Anhambiguaras', '362', 'Morumbi', 'São Paulo', '(11)3265-6958', 'Sr. Bento', 'tchau@provedor.com.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `cod_Prod` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `unidade` varchar(2) NOT NULL,
  `qt_Estoque` double NOT NULL,
  `caracteristicas` varchar(50) NOT NULL,
  `cod_Fornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`cod_Prod`, `descricao`, `unidade`, `qt_Estoque`, `caracteristicas`, `cod_Fornecedor`) VALUES
(1, 'Caneta', 'un', 100, 'Cor Azul', 2),
(2, 'Caneta', 'un', 85, 'Cor Vermelha', 2),
(3, 'Caneta', 'un', 60, 'Cor Preta', 2),
(4, 'Lápis', 'un', 150, 'Sem Borracha', 3),
(5, 'Lápis', 'un', 100, 'Com Borracha', 4),
(6, 'Lápis de Cor', 'cx', 25, '12 Cores', 4),
(7, 'Lápis de Cor', 'cx', 50, '24 Cores', 4),
(8, 'Lápis de Cor', 'cx', 35, '36 Cores', 5),
(9, 'Borracha', 'dz', 35, 'Azul/Vermelha', 6),
(10, 'Borracha', 'dz', 25, 'Branca', 7),
(11, 'Papel Sufite', 'pc', 100, 'Colorido', 8),
(12, 'Caderno Universitário', 'pc', 25, '1 Matéria', 9),
(13, 'Caderno Universitário', 'pc', 150, '10 Matérias', 9),
(14, 'Régua', 'un', 250, 'Acrílica - 30 cm', 10),
(15, 'Lapiseira', 'pc', 86, 'Grafite 0.5', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`cod_Fornecedor`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`cod_Prod`),
  ADD KEY `produtos` (`cod_Fornecedor`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos` FOREIGN KEY (`cod_Fornecedor`) REFERENCES `fornecedores` (`cod_Fornecedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
