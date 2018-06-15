-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 14-Jun-2018 às 16:34
-- Versão do servidor: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.5-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppc-iesb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenadors`
--

CREATE TABLE `coordenadors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulacao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `coordenadors`
--

INSERT INTO `coordenadors` (`id`, `nome`, `titulacao`, `cpf`, `created_at`, `updated_at`) VALUES
(1, 'Marcelo ', 'Dr.', '000.000.000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_curso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_curso` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `habilitacao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `turno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vagas` int(11) NOT NULL,
  `ch` int(11) NOT NULL,
  `regime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordenador_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome_curso`, `tipo_curso`, `modalidade`, `habilitacao`, `turno`, `local`, `vagas`, `ch`, `regime`, `periodos`, `coordenador_id`, `created_at`, `updated_at`) VALUES
(1, 'ADS', '', 'EAD', 'ADS', 'NOTURNO', 'BSB', 40, 2000, 'ADS', '5', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT '0',
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 3, 'http://ppc-iesb.com/register', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/register', 'POST', '2018-05-24 02:05:39', '2018-05-24 02:05:39', NULL),
(2, 'Viewed activate', 'Registered', 3, 'http://ppc-iesb.com/activate', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/register', 'GET', '2018-05-24 02:05:40', '2018-05-24 02:05:40', NULL),
(3, 'Viewed activate/xmA7hYOyCejflV9OlZGvJGC1iZXqLAnNN3bi3UlojsdBslMW2UfuRBzFQoyHLCnb', 'Registered', 3, 'http://ppc-iesb.com/activate/xmA7hYOyCejflV9OlZGvJGC1iZXqLAnNN3bi3UlojsdBslMW2UfuRBzFQoyHLCnb', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2018-05-24 02:06:02', '2018-05-24 02:06:02', NULL),
(4, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2018-05-24 02:06:03', '2018-05-24 02:06:03', NULL),
(5, 'Viewed activate', 'Registered', 3, 'http://ppc-iesb.com/activate', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/register', 'GET', '2018-05-24 02:07:16', '2018-05-24 02:07:16', NULL),
(6, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/register', 'GET', '2018-05-24 02:07:16', '2018-05-24 02:07:16', NULL),
(7, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:07:20', '2018-05-24 02:07:20', NULL),
(8, 'Viewed phpinfo', 'Registered', 3, 'http://ppc-iesb.com/phpinfo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/active-users', 'GET', '2018-05-24 02:07:22', '2018-05-24 02:07:22', NULL),
(9, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/phpinfo', 'GET', '2018-05-24 02:07:26', '2018-05-24 02:07:26', NULL),
(10, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/phpinfo', 'GET', '2018-05-24 02:10:24', '2018-05-24 02:10:24', NULL),
(11, 'Logged Out', 'Registered', 3, 'http://ppc-iesb.com/logout', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'POST', '2018-05-24 02:10:27', '2018-05-24 02:10:27', NULL),
(12, 'Logged In', 'Registered', 3, 'http://ppc-iesb.com/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'POST', '2018-05-24 02:16:09', '2018-05-24 02:16:09', NULL),
(13, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-05-24 02:16:09', '2018-05-24 02:16:09', NULL),
(14, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-05-24 02:17:14', '2018-05-24 02:17:14', NULL),
(15, 'Viewed activity', 'Registered', 3, 'http://ppc-iesb.com/activity', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:17:58', '2018-05-24 02:17:58', NULL),
(16, 'Viewed activity', 'Registered', 3, 'http://ppc-iesb.com/activity', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:18:15', '2018-05-24 02:18:15', NULL),
(17, 'Viewed activity/log/3', 'Registered', 3, 'http://ppc-iesb.com/activity/log/3', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity', 'GET', '2018-05-24 02:18:25', '2018-05-24 02:18:25', NULL),
(18, 'Viewed activity', 'Registered', 3, 'http://ppc-iesb.com/activity', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity/log/3', 'GET', '2018-05-24 02:18:30', '2018-05-24 02:18:30', NULL),
(19, 'Viewed activity/cleared', 'Registered', 3, 'http://ppc-iesb.com/activity/cleared', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity', 'GET', '2018-05-24 02:18:32', '2018-05-24 02:18:32', NULL),
(20, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity/cleared', 'GET', '2018-05-24 02:18:37', '2018-05-24 02:18:37', NULL),
(21, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity/cleared', 'GET', '2018-05-24 02:19:08', '2018-05-24 02:19:08', NULL),
(22, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity/cleared', 'GET', '2018-05-24 02:19:16', '2018-05-24 02:19:16', NULL),
(23, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/activity/cleared', 'GET', '2018-05-24 02:19:18', '2018-05-24 02:19:18', NULL),
(24, 'Created search-users', 'Registered', 3, 'http://ppc-iesb.com/search-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'POST', '2018-05-24 02:19:27', '2018-05-24 02:19:27', NULL),
(25, 'Created search-users', 'Registered', 3, 'http://ppc-iesb.com/search-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'POST', '2018-05-24 02:19:29', '2018-05-24 02:19:29', NULL),
(26, 'Viewed users/create', 'Registered', 3, 'http://ppc-iesb.com/users/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'GET', '2018-05-24 02:21:05', '2018-05-24 02:21:05', NULL),
(27, 'Viewed themes', 'Registered', 3, 'http://ppc-iesb.com/themes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users/create', 'GET', '2018-05-24 02:21:08', '2018-05-24 02:21:08', NULL),
(28, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/themes', 'GET', '2018-05-24 02:21:11', '2018-05-24 02:21:11', NULL),
(29, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:21:14', '2018-05-24 02:21:14', NULL),
(30, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:21:55', '2018-05-24 02:21:55', NULL),
(31, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:22:19', '2018-05-24 02:22:19', NULL),
(32, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:23:26', '2018-05-24 02:23:26', NULL),
(33, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:24:04', '2018-05-24 02:24:04', NULL),
(34, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2018-05-24 02:24:29', '2018-05-24 02:24:29', NULL),
(35, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2018-05-24 02:26:00', '2018-05-24 02:26:00', NULL),
(36, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:27:35', '2018-05-24 02:27:35', NULL),
(37, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:29:10', '2018-05-24 02:29:10', NULL),
(38, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:30:27', '2018-05-24 02:30:27', NULL),
(39, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:30:57', '2018-05-24 02:30:57', NULL),
(40, 'Viewed active-users', 'Registered', 3, 'http://ppc-iesb.com/active-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 02:31:37', '2018-05-24 02:31:37', NULL),
(41, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2018-05-24 02:33:14', '2018-05-24 02:33:14', NULL),
(42, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:38:42', '2018-05-24 02:38:42', NULL),
(43, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:39:46', '2018-05-24 02:39:46', NULL),
(44, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:40:14', '2018-05-24 02:40:14', NULL),
(45, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:40:27', '2018-05-24 02:40:27', NULL),
(46, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:40:44', '2018-05-24 02:40:44', NULL),
(47, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:41:05', '2018-05-24 02:41:05', NULL),
(48, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:41:14', '2018-05-24 02:41:14', NULL),
(49, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:41:36', '2018-05-24 02:41:36', NULL),
(50, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:42:04', '2018-05-24 02:42:04', NULL),
(51, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:42:20', '2018-05-24 02:42:20', NULL),
(52, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:57:29', '2018-05-24 02:57:29', NULL),
(53, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 02:58:07', '2018-05-24 02:58:07', NULL),
(54, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:59:04', '2018-05-24 02:59:04', NULL),
(55, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:59:38', '2018-05-24 02:59:38', NULL),
(56, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 02:59:51', '2018-05-24 02:59:51', NULL),
(57, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 03:00:13', '2018-05-24 03:00:13', NULL),
(58, 'Viewed routes', 'Registered', 3, 'http://ppc-iesb.com/routes', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 03:00:30', '2018-05-24 03:00:30', NULL),
(59, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/routes', 'GET', '2018-05-24 03:03:51', '2018-05-24 03:03:51', NULL),
(60, 'Created search-users', 'Registered', 3, 'http://ppc-iesb.com/search-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'POST', '2018-05-24 03:05:16', '2018-05-24 03:05:16', NULL),
(61, 'Created search-users', 'Registered', 3, 'http://ppc-iesb.com/search-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'POST', '2018-05-24 03:05:16', '2018-05-24 03:05:16', NULL),
(62, 'Created search-users', 'Registered', 3, 'http://ppc-iesb.com/search-users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'POST', '2018-05-24 03:05:22', '2018-05-24 03:05:22', NULL),
(63, 'Viewed users/create', 'Registered', 3, 'http://ppc-iesb.com/users/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users', 'GET', '2018-05-24 03:05:26', '2018-05-24 03:05:26', NULL),
(64, 'Viewed users/create', 'Registered', 3, 'http://ppc-iesb.com/users/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users/create', 'GET', '2018-05-24 03:08:56', '2018-05-24 03:08:56', NULL),
(65, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-05-24 03:16:02', '2018-05-24 03:16:02', NULL),
(66, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-24 03:16:04', '2018-05-24 03:16:04', NULL),
(67, 'Logged In', 'Registered', 3, 'http://ppc-iesb.com/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'POST', '2018-05-25 00:30:42', '2018-05-25 00:30:42', NULL),
(68, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-05-25 00:30:42', '2018-05-25 00:30:42', NULL),
(69, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:30:47', '2018-05-25 00:30:47', NULL),
(70, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:31:03', '2018-05-25 00:31:03', NULL),
(71, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:32:26', '2018-05-25 00:32:26', NULL),
(72, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:32:50', '2018-05-25 00:32:50', NULL),
(73, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:34:17', '2018-05-25 00:34:17', NULL),
(74, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:35:08', '2018-05-25 00:35:08', NULL),
(75, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:35:28', '2018-05-25 00:35:28', NULL),
(76, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:35:39', '2018-05-25 00:35:39', NULL),
(77, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:36:15', '2018-05-25 00:36:15', NULL),
(78, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:36:57', '2018-05-25 00:36:57', NULL),
(79, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:37:10', '2018-05-25 00:37:10', NULL),
(80, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:37:10', '2018-05-25 00:37:10', NULL),
(81, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-05-25 00:37:21', '2018-05-25 00:37:21', NULL),
(82, 'Logged In', 'Registered', 3, 'http://ppc-iesb.com/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'POST', '2018-06-13 21:57:55', '2018-06-13 21:57:55', NULL),
(83, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-06-13 21:57:55', '2018-06-13 21:57:55', NULL),
(84, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-13 21:58:01', '2018-06-13 21:58:01', NULL),
(85, 'Viewed users/create', 'Registered', 3, 'http://ppc-iesb.com/users/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-13 21:58:42', '2018-06-13 21:58:42', NULL),
(86, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/users/create', 'GET', '2018-06-13 22:00:13', '2018-06-13 22:00:13', NULL),
(87, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-06-13 22:27:08', '2018-06-13 22:27:08', NULL),
(88, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-13 22:27:14', '2018-06-13 22:27:14', NULL),
(89, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-13 22:27:18', '2018-06-13 22:27:18', NULL),
(90, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-13 22:37:58', '2018-06-13 22:37:58', NULL),
(91, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-13 22:38:05', '2018-06-13 22:38:05', NULL),
(92, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:38:11', '2018-06-13 22:38:11', NULL),
(93, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:38:46', '2018-06-13 22:38:46', NULL),
(94, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:39:17', '2018-06-13 22:39:17', NULL),
(95, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:40:14', '2018-06-13 22:40:14', NULL),
(96, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:40:20', '2018-06-13 22:40:20', NULL),
(97, 'Viewed users', 'Registered', 3, 'http://ppc-iesb.com/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 22:40:22', '2018-06-13 22:40:22', NULL),
(98, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:40:36', '2018-06-13 22:40:36', NULL),
(99, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 22:40:37', '2018-06-13 22:40:37', NULL),
(100, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 22:40:58', '2018-06-13 22:40:58', NULL),
(101, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:40:59', '2018-06-13 22:40:59', NULL),
(102, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 22:42:05', '2018-06-13 22:42:05', NULL),
(103, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:42:09', '2018-06-13 22:42:09', NULL),
(104, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 22:49:18', '2018-06-13 22:49:18', NULL),
(105, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:29:25', '2018-06-13 23:29:25', NULL),
(106, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:35:52', '2018-06-13 23:35:52', NULL),
(107, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:36:35', '2018-06-13 23:36:35', NULL),
(108, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:44:20', '2018-06-13 23:44:20', NULL),
(109, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:45:05', '2018-06-13 23:45:05', NULL),
(110, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:45:29', '2018-06-13 23:45:29', NULL),
(111, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:45:31', '2018-06-13 23:45:31', NULL),
(112, 'Viewed cursos/1/edit', 'Registered', 3, 'http://ppc-iesb.com/cursos/1/edit', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:48:56', '2018-06-13 23:48:56', NULL),
(113, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:49:12', '2018-06-13 23:49:12', NULL),
(114, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:49:25', '2018-06-13 23:49:25', NULL),
(115, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:49:33', '2018-06-13 23:49:33', NULL),
(116, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:50:40', '2018-06-13 23:50:40', NULL),
(117, 'Viewed cursos/1', 'Registered', 3, 'http://ppc-iesb.com/cursos/1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-13 23:50:42', '2018-06-13 23:50:42', NULL),
(118, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:51:03', '2018-06-13 23:51:03', NULL),
(119, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:51:14', '2018-06-13 23:51:14', NULL),
(120, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:51:39', '2018-06-13 23:51:39', NULL),
(121, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:51:58', '2018-06-13 23:51:58', NULL),
(122, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:51:59', '2018-06-13 23:51:59', NULL),
(123, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-13 23:51:59', '2018-06-13 23:51:59', NULL),
(124, 'Logged In', 'Registered', 3, 'http://ppc-iesb.com/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'POST', '2018-06-14 02:22:58', '2018-06-14 02:22:58', NULL),
(125, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-06-14 02:22:58', '2018-06-14 02:22:58', NULL),
(126, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-14 02:23:06', '2018-06-14 02:23:06', NULL),
(127, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-14 02:26:17', '2018-06-14 02:26:17', NULL),
(128, 'Deleted cursos/1', 'Registered', 3, 'http://ppc-iesb.com/cursos/1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'DELETE', '2018-06-14 02:26:23', '2018-06-14 02:26:23', NULL),
(129, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-14 02:26:27', '2018-06-14 02:26:27', NULL),
(130, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:26:37', '2018-06-14 02:26:37', NULL),
(131, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:27:58', '2018-06-14 02:27:58', NULL),
(132, 'Created cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'POST', '2018-06-14 02:28:20', '2018-06-14 02:28:20', NULL),
(133, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:29:32', '2018-06-14 02:29:32', NULL),
(134, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:29:46', '2018-06-14 02:29:46', NULL),
(135, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:30:05', '2018-06-14 02:30:05', NULL),
(136, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:30:47', '2018-06-14 02:30:47', NULL),
(137, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:30:58', '2018-06-14 02:30:58', NULL),
(138, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:34:09', '2018-06-14 02:34:09', NULL),
(139, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:35:06', '2018-06-14 02:35:06', NULL),
(140, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:35:12', '2018-06-14 02:35:12', NULL),
(141, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:36:00', '2018-06-14 02:36:00', NULL),
(142, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:36:48', '2018-06-14 02:36:48', NULL),
(143, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:38:29', '2018-06-14 02:38:29', NULL),
(144, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:41:22', '2018-06-14 02:41:22', NULL),
(145, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:41:28', '2018-06-14 02:41:28', NULL),
(146, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:45:56', '2018-06-14 02:45:56', NULL),
(147, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:48:06', '2018-06-14 02:48:06', NULL),
(148, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:48:15', '2018-06-14 02:48:15', NULL),
(149, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:48:16', '2018-06-14 02:48:16', NULL),
(150, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:50:19', '2018-06-14 02:50:19', NULL),
(151, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:51:08', '2018-06-14 02:51:08', NULL),
(152, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:51:31', '2018-06-14 02:51:31', NULL),
(153, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:51:47', '2018-06-14 02:51:47', NULL),
(154, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:53:20', '2018-06-14 02:53:20', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(155, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:53:21', '2018-06-14 02:53:21', NULL),
(156, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:53:23', '2018-06-14 02:53:23', NULL),
(157, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:53:23', '2018-06-14 02:53:23', NULL),
(158, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:54:04', '2018-06-14 02:54:04', NULL),
(159, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:54:41', '2018-06-14 02:54:41', NULL),
(160, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:55:51', '2018-06-14 02:55:51', NULL),
(161, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 02:57:43', '2018-06-14 02:57:43', NULL),
(162, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:02:41', '2018-06-14 03:02:41', NULL),
(163, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:04:42', '2018-06-14 03:04:42', NULL),
(164, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:05:56', '2018-06-14 03:05:56', NULL),
(165, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:07:41', '2018-06-14 03:07:41', NULL),
(166, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:08:24', '2018-06-14 03:08:24', NULL),
(167, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:09:41', '2018-06-14 03:09:41', NULL),
(168, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:20:10', '2018-06-14 03:20:10', NULL),
(169, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:20:20', '2018-06-14 03:20:20', NULL),
(170, 'Created cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'POST', '2018-06-14 03:23:15', '2018-06-14 03:23:15', NULL),
(171, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:23:45', '2018-06-14 03:23:45', NULL),
(172, 'Created cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'POST', '2018-06-14 03:24:00', '2018-06-14 03:24:00', NULL),
(173, 'Created cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'POST', '2018-06-14 03:24:22', '2018-06-14 03:24:22', NULL),
(174, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:30:54', '2018-06-14 03:30:54', NULL),
(175, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:31:21', '2018-06-14 03:31:21', NULL),
(176, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:31:27', '2018-06-14 03:31:27', NULL),
(177, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 03:38:54', '2018-06-14 03:38:54', NULL),
(178, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:39:41', '2018-06-14 03:39:41', NULL),
(179, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:39:56', '2018-06-14 03:39:56', NULL),
(180, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:39:57', '2018-06-14 03:39:57', NULL),
(181, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:39:57', '2018-06-14 03:39:57', NULL),
(182, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:39:58', '2018-06-14 03:39:58', NULL),
(183, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 03:40:08', '2018-06-14 03:40:08', NULL),
(184, 'Logged In', 'Registered', 3, 'http://ppc-iesb.com/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'POST', '2018-06-14 20:10:15', '2018-06-14 20:10:15', NULL),
(185, 'Viewed cursos/1/edit', 'Registered', 3, 'http://ppc-iesb.com/cursos/1/edit', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-06-14 20:10:15', '2018-06-14 20:10:15', NULL),
(186, 'Viewed cursos/1/edit', 'Registered', 3, 'http://ppc-iesb.com/cursos/1/edit', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/login', 'GET', '2018-06-14 20:15:44', '2018-06-14 20:15:44', NULL),
(187, 'Viewed home', 'Registered', 3, 'http://ppc-iesb.com/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/', 'GET', '2018-06-14 20:15:49', '2018-06-14 20:15:49', NULL),
(188, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/home', 'GET', '2018-06-14 20:15:51', '2018-06-14 20:15:51', NULL),
(189, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 20:18:18', '2018-06-14 20:18:18', NULL),
(190, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 20:19:45', '2018-06-14 20:19:45', NULL),
(191, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 20:19:50', '2018-06-14 20:19:50', NULL),
(192, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 20:19:53', '2018-06-14 20:19:53', NULL),
(193, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 21:29:21', '2018-06-14 21:29:21', NULL),
(194, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 21:29:55', '2018-06-14 21:29:55', NULL),
(195, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 21:31:52', '2018-06-14 21:31:52', NULL),
(196, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:31:58', '2018-06-14 21:31:58', NULL),
(197, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:32:33', '2018-06-14 21:32:33', NULL),
(198, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 21:32:37', '2018-06-14 21:32:37', NULL),
(199, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:32:38', '2018-06-14 21:32:38', NULL),
(200, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos/create', 'GET', '2018-06-14 21:37:32', '2018-06-14 21:37:32', NULL),
(201, 'Deleted cursos/1', 'Registered', 3, 'http://ppc-iesb.com/cursos/1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'DELETE', '2018-06-14 21:37:35', '2018-06-14 21:37:35', NULL),
(202, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 21:50:15', '2018-06-14 21:50:15', NULL),
(203, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:50:19', '2018-06-14 21:50:19', NULL),
(204, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:51:21', '2018-06-14 21:51:21', NULL),
(205, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:51:27', '2018-06-14 21:51:27', NULL),
(206, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:53:06', '2018-06-14 21:53:06', NULL),
(207, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:53:46', '2018-06-14 21:53:46', NULL),
(208, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:55:11', '2018-06-14 21:55:11', NULL),
(209, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:55:19', '2018-06-14 21:55:19', NULL),
(210, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:55:34', '2018-06-14 21:55:34', NULL),
(211, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:55:42', '2018-06-14 21:55:42', NULL),
(212, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:56:10', '2018-06-14 21:56:10', NULL),
(213, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:56:59', '2018-06-14 21:56:59', NULL),
(214, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:57:27', '2018-06-14 21:57:27', NULL),
(215, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:57:47', '2018-06-14 21:57:47', NULL),
(216, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:58:10', '2018-06-14 21:58:10', NULL),
(217, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos/create', 'GET', '2018-06-14 21:58:22', '2018-06-14 21:58:22', NULL),
(218, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 21:58:24', '2018-06-14 21:58:24', NULL),
(219, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 21:58:28', '2018-06-14 21:58:28', NULL),
(220, 'Viewed planos', 'Registered', 3, 'http://ppc-iesb.com/planos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 21:58:29', '2018-06-14 21:58:29', NULL),
(221, 'Viewed planos/create', 'Registered', 3, 'http://ppc-iesb.com/planos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos', 'GET', '2018-06-14 21:58:31', '2018-06-14 21:58:31', NULL),
(222, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/planos/create', 'GET', '2018-06-14 22:20:17', '2018-06-14 22:20:17', NULL),
(223, 'Viewed cursos/create', 'Registered', 3, 'http://ppc-iesb.com/cursos/create', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos', 'GET', '2018-06-14 22:20:18', '2018-06-14 22:20:18', NULL),
(224, 'Viewed cursos', 'Registered', 3, 'http://ppc-iesb.com/cursos', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7', 'http://ppc-iesb.com/cursos/create', 'GET', '2018-06-14 22:20:53', '2018-06-14 22:20:53', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(16, '2018_05_23_234455_create_coordenadors_table', 2),
(17, '2018_05_23_234505_create_cursos_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2018-05-24 02:00:23', '2018-05-24 02:00:23'),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2018-05-24 02:00:23', '2018-05-24 02:00:23'),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2018-05-24 02:00:23', '2018-05-24 02:00:23'),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2018-05-24 02:00:23', '2018-05-24 02:00:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-05-24 02:00:24', '2018-05-24 02:00:24'),
(2, 2, 1, '2018-05-24 02:00:24', '2018-05-24 02:00:24'),
(3, 3, 1, '2018-05-24 02:00:24', '2018-05-24 02:00:24'),
(4, 4, 1, '2018-05-24 02:00:24', '2018-05-24 02:00:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-24 02:00:28', '2018-05-24 02:00:28'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-24 02:00:28', '2018-05-24 02:00:28'),
(3, 3, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-24 02:06:03', '2018-05-24 02:06:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2018-05-24 02:00:23', '2018-05-24 02:00:23'),
(2, 'User', 'user', 'User Role', 1, '2018-05-24 02:00:23', '2018-05-24 02:00:23'),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2018-05-24 02:00:24', '2018-05-24 02:00:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-05-24 02:00:28', '2018-05-24 02:00:28'),
(2, 2, 2, '2018-05-24 02:00:29', '2018-05-24 02:00:29'),
(4, 1, 3, '2018-05-24 02:06:03', '2018-05-24 02:06:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2018-05-24 02:00:24', '2018-05-24 02:00:26', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2018-05-24 02:00:24', '2018-05-24 02:00:27', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(18, 'Bootstrap 4.0.0 Alpha', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css', NULL, 1, 'theme', 19, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(20, 'Bootstrap Material Design 0.3.0', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.3.0/css/material-fullpalette.min.css', NULL, 1, 'theme', 20, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(21, 'Bootstrap Material Design 0.5.10', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/css/bootstrap-material-design.min.css', NULL, 1, 'theme', 21, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(22, 'Bootstrap Material Design 4.0.0', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.0/bootstrap-material-design.min.css', NULL, 1, 'theme', 22, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(23, 'Bootstrap Material Design 4.0.2', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css', NULL, 1, 'theme', 23, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(24, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 24, '2018-05-24 02:00:25', '2018-05-24 02:00:27', NULL),
(25, 'bootflat', 'https://cdnjs.cloudflare.com/ajax/libs/bootflat/2.0.4/css/bootflat.min.css', NULL, 1, 'theme', 25, '2018-05-24 02:00:25', '2018-05-24 02:00:28', NULL),
(26, 'flat-ui', 'https://cdnjs.cloudflare.com/ajax/libs/flat-ui/2.3.0/css/flat-ui.min.css', NULL, 1, 'theme', 26, '2018-05-24 02:00:26', '2018-05-24 02:00:28', NULL),
(27, 'm8tro-bootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/m8tro-bootstrap/3.3.7/m8tro.min.css', NULL, 1, 'theme', 27, '2018-05-24 02:00:26', '2018-05-24 02:00:28', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'madalyn.glover', 'Helmer', 'Schaden', 'admin@admin.com', '$2y$10$zFk2O9StJwL5/kIUME4C7.VwokSItd8oM5pTHw4IdSSQUDPKXLcjC', NULL, 1, 'dRFpPRhDHCGh9E5KmjBTEeOfokyOJrwNLb8bf79uwJxF3EENdkjQLwLSwmBUnqsn', NULL, '233.178.199.25', NULL, '87.151.61.196', NULL, NULL, '2018-05-24 02:00:28', '2018-05-24 02:00:28', NULL),
(2, 'beahan.tamia', 'Syble', 'Schmeler', 'user@user.com', '$2y$10$6JneJOZEAVRU2/R3n5zrmuzsVNsy0afTeOvVUpYTOihYYhtQhjQ7q', NULL, 1, '37mL82KTXh94CKLwegcH3tWFwhIanj82faWBleHLzNL9lyjxWTKt2N0j8HSEVhqx', '180.99.108.14', '162.152.176.31', NULL, NULL, NULL, NULL, '2018-05-24 02:00:28', '2018-05-24 02:00:28', NULL),
(3, 'lrodrigues', 'Lucas', 'Rodrigues', 'lucas94lbr@gmail.com', '$2y$10$lHLQsaugvxAc7CeKrvtrZeNJl.PYWF8pWMx.H1qqfc2pKAxOpliYK', 'QDgeUqFYZqm3PXvBPZMtNcfnDU43v84VYVEwATNi85uJ8ZqLxjANYvmTXxuM', 1, 'M5B29yB2WVtIwyyfQxNWXom7iBXtVDNTo78o1SwTRlVlb1ip3vWNAv3pVa8M1Bgz', '127.0.0.1', '127.0.0.1', NULL, NULL, NULL, NULL, '2018-05-24 02:05:35', '2018-05-24 02:06:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `coordenadors`
--
ALTER TABLE `coordenadors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coordenadors_cpf_unique` (`cpf`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_coordenador_id_index` (`coordenador_id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coordenadors`
--
ALTER TABLE `coordenadors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_coordenador_id_foreign` FOREIGN KEY (`coordenador_id`) REFERENCES `coordenadors` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
