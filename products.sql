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
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod_produto` double(8,2) NOT NULL,
  `nome_produto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_produto` double(8,2) NOT NULL,
  `estoque` double(8,2) NOT NULL,
  `fk_cidade` int(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `cod_produto`, `nome_produto`, `valor_produto`, `estoque`, `fk_cidade`, `created_at`, `updated_at`) VALUES
(2, 13.00, 'Mouse', 85.00, 20.00, 3, '2022-09-14 04:15:32', '2022-09-15 07:00:17'),
(3, 15.00, 'Teclado Gamer Led', 150.00, 30.00, 2, '2022-09-14 04:32:20', '2022-09-14 04:32:20'),
(4, 30.00, 'Teclado Gamer ', 100.00, 30.00, 2, '2022-09-14 04:57:38', '2022-09-14 04:57:38'),
(6, 51.00, 'deletar', 150.00, 30.00, 2, '2022-09-14 05:11:15', '2022-09-14 05:11:15'),
(7, 52.00, 'Teste', 150.00, 30.00, 2, '2022-09-14 05:59:18', '2022-09-14 05:59:18'),
(8, 75.00, 'Produto Vue', 500.00, 2.00, 2, '2022-09-14 08:04:21', '2022-09-14 08:04:21'),
(9, 76.00, 'Teste', 502.00, 2.00, 3, NULL, NULL),
(10, 77.00, 'Testeee', 504.00, 2.00, 3, NULL, NULL),
(11, 120.00, 'Produto Vue novo', 600.00, 2.00, 2, '2022-09-15 04:37:20', '2022-09-15 04:37:20'),
(12, 400.00, 'Teste vue novo', 5000.00, 600.00, 2, '2022-09-15 04:39:02', '2022-09-15 04:39:02');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_cod_produto_unique` (`cod_produto`),
  ADD KEY `fk_cidade` (`fk_cidade`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`fk_cidade`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
