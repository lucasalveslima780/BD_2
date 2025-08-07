-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/08/2025 às 03:38
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
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pet`
--

CREATE TABLE `pet` (
  `NumRegistro` int(5) NOT NULL,
  `Nome` varchar(80) NOT NULL,
  `Especie` varchar(80) NOT NULL,
  `Raça` varchar(80) NOT NULL,
  `CorPredo` varchar(70) NOT NULL,
  `Nascimento` varchar(10) NOT NULL,
  `Sexo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pet`
--

INSERT INTO `pet` (`NumRegistro`, `Nome`, `Especie`, `Raça`, `CorPredo`, `Nascimento`, `Sexo`) VALUES
(1, 'Belzinha', 'Ave', 'Calopsita', 'Cinza', '06/08/2022', 'Masculino'),
(2, 'Novinha', 'Ave', 'Calopsita', 'Amarela', '06/08/2024', 'Masculino'),
(3, 'Batman', 'Gato', 'SRD', 'Frajola', '06/08/2019', 'Masculino'),
(4, 'Lua', 'Cachorro', 'SRD', 'Chocolate', '06/08/2024', 'Feminino');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `Idprodutos` int(5) NOT NULL,
  `nomeProduto` varchar(50) NOT NULL,
  `tipoDeProduto` varchar(10) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `preco` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`Idprodutos`, `nomeProduto`, `tipoDeProduto`, `quantidade`, `preco`) VALUES
(1, 'Biscoito', 'Alimentici', 15, '23,50'),
(2, 'Bolinha de Borracha', 'Brinquedo', 15, '10'),
(3, 'Osso de Brinquedo', 'Alimentici', 15, '21'),
(4, 'Ração', 'Alimentici', 15, '237,7'),
(5, 'Tigela', 'Acessorio', 15, '60');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`NumRegistro`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Idprodutos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
