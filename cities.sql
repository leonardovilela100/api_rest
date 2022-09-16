-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2022 às 04:19
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cities`
--

CREATE TABLE `cities` (
  `id` int(30) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cities`
--

INSERT INTO `cities` (`id`, `cidade`, `created_at`, `updated_at`) VALUES
(0, 'Rio', NULL, NULL),
(1, 'Prata', NULL, NULL),
(2, 'Uberlandia', NULL, NULL),
(3, 'Belo Horizonte', NULL, NULL),
(4, 'Natal', '2022-09-15 00:30:49', '2022-09-15 00:30:49'),
(5, 'Rio de Janeiro', '2022-09-15 00:30:21', '2022-09-15 00:30:21'),
(6, 'Natal', '2022-09-15 00:30:57', '2022-09-15 00:30:57'),
(7, 'Goaiania', '2022-09-15 00:31:52', '2022-09-15 00:31:52'),
(8, 'Natal', '2022-09-15 00:31:33', '2022-09-15 00:31:33'),
(9, 'Manaus', '2022-09-15 01:00:04', '2022-09-15 01:00:04'),
(10, 'Contagem', '2022-09-15 01:05:30', '2022-09-15 01:05:30'),
(11, 'City Teste', '2022-09-15 04:26:58', '2022-09-15 04:26:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
