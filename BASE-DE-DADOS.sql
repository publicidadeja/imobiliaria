-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Maio-2023 às 00:42
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobmaster`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'JVEVccHIalHLwIL41uMnOJDfC0p59ohS', 1, '2019-11-15 04:53:30', '2019-11-15 04:53:30', '2019-11-15 04:53:30'),
(2, 2, 'bUiPYBbscR6j5dhSlWSesCy0LEXp7LDG', 1, '2021-01-03 17:23:28', '2021-01-03 17:23:28', '2021-01-03 17:23:28'),
(3, 1, 'dtG3n9fA2nz5TPWNuYP1nCFwtfgtVY3Q', 1, '2021-01-12 20:51:55', '2021-01-12 20:51:55', '2021-01-12 20:51:55'),
(4, 1, 'j34UyDusAYW6Qv7W8R9Phy1eS7J6x7VH', 1, '2021-01-12 20:57:53', '2021-01-12 20:57:53', '2021-01-12 20:57:53'),
(5, 1, 'zybfCxjzArgxYwys3SFXJFr5GtrR4fVh', 1, '2021-04-15 01:12:40', '2021-04-15 01:12:40', '2021-04-15 01:12:40'),
(6, 1, 'CdxxFEhkLAEjMbXfwV0sGfYouD04RXxR', 1, '2021-04-18 09:20:14', '2021-04-18 09:20:14', '2021-04-18 09:20:14'),
(7, 1, '5QGfTcVcYiXHzILQHh84iziigUT1Asfo', 1, '2021-04-29 20:46:36', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(8, 1, 'b6OPzC5TBqVWQUjUE6MwNt1xW50BQCiq', 1, '2021-06-11 20:56:49', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 1, 'aErtd3iYdCfFQHt9JGTC6CK2sDEipDfJ', 1, '2021-12-04 05:15:56', '2021-12-04 05:15:56', '2021-12-04 05:15:56'),
(10, 1, 'E2pnOQvxfnxT3FhzIVG3y64EmlSJquav', 1, '2021-12-04 05:17:41', '2021-12-04 05:17:41', '2021-12-04 05:17:41'),
(11, 1, 'aw6YZVSneTmkzQYSO1uZ5sza3JyZYFkk', 1, '2021-12-04 05:21:13', '2021-12-04 05:21:13', '2021-12-04 05:21:13'),
(12, 1, 'NmUPB12SAMkdIku581sX5QpARXMxqJjg', 1, '2021-12-09 21:24:36', '2021-12-09 21:24:36', '2021-12-09 21:24:36'),
(13, 1, 'brlhvZ2kzt9LlSMb4zvTFoibinKxnEQg', 1, '2021-12-09 21:25:34', '2021-12-09 21:25:34', '2021-12-09 21:25:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `content`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Corretores para trabalho externo e interno (Aluguel)', 'São Paulo, SP', 'R$ 4.000,00', '<p><strong>BENEFÍCIOS&nbsp;</strong></p><p>Salário fixo de R$ 4.000,00</p><p>Combustível<br>Vale Refeição<br>Plano de Saúde<br>&nbsp;</p><p>&nbsp;</p><p><strong>HORÁRIOS:</strong></p><p>Trabalho de segunda a sexta das 9h as 18h.</p><p>Sábados até as 14h.</p><p>Domingos e Feriados, apenas para agendamentos.</p><p>&nbsp;</p><p><strong>REQUERIMENTOS:</strong></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Segundo grau completo ou superior.&nbsp;</span></span><br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Boa aparência, vestimenta requerida: social.&nbsp;</span></span><br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Prioridade a candidatos que conheçam línguas estrangeiras e tenham 1 ano ou mais de experiência na área imobiliária, bancária e financeira.&nbsp;</span></span><br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Ter objetivos financeiros, de trabalho e de vida.&nbsp;</span></span><br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Desejo de alcançar grandes objetivos.&nbsp;</span></span><br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Diligente, persistente, honesto.&nbsp;</span></span></p>', 'published', '2019-11-30 19:43:10', '2022-10-19 18:06:07', 'Vaga para corretor de imóveis (aluguel)\r\n\r\nExterno / Interno.'),
(3, 'Corretores para trabalho externo e interno (Vendas)', 'São Paulo, SP', 'R$ 3.000,00 + 3% de comissão por venda', '<p><strong>BENEFÍCIOS&nbsp;</strong></p><p>Salário fixo de R$ 3.000,00<br>Comissão: 3%</p><p>Combustível<br>Vale Refeição<br>Plano de Saúde<br><span style=\"background-color:rgb(255,255,255);color:rgb(32,33,36);\"><span>+ Bônus </span></span>de final de ano.<br>&nbsp;</p><p>&nbsp;</p><p><strong>HORÁRIOS:</strong></p><p>Trabalho de segunda a sexta das 9h as 18h.</p><p>Sábados até as 14h.</p><p>Domingos e Feriados, apenas para agendamentos.</p><p>&nbsp;</p><p><strong>REQUERIMENTOS:</strong></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Segundo grau completo ou superior.&nbsp;&nbsp;</span></span>&nbsp;<br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Boa aparência, vestimenta requerida: social.&nbsp;&nbsp;</span></span>&nbsp;<br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Prioridade a candidatos que conheçam línguas estrangeiras e tenham 1 ano ou mais de experiência na área imobiliária, bancária e financeira.&nbsp;&nbsp;</span></span>&nbsp;<br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Ter objetivos financeiros, de trabalho e de vida.&nbsp;&nbsp;</span></span>&nbsp;<br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Desejo de alcançar grandes objetivos.&nbsp;&nbsp;</span></span>&nbsp;<br><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span>- Diligente, persistente, honesto.&nbsp;&nbsp;</span></span></p>', 'published', '2019-11-30 19:52:42', '2022-10-19 18:06:33', 'Vaga para corretor de imóveis (vendas)\r\n\r\nExterno / Interno.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `careers_translations`
--

CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Srapid\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Notícias', 0, NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-18 02:33:35', '2022-08-08 18:46:34'),
(2, 'Casa e Arquitetura', 0, NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:25', '2022-08-08 18:46:34'),
(4, 'Design de Interiores', 0, NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:02', '2022-08-08 18:46:34'),
(6, 'Materiais de Construção', 0, NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:36', '2022-08-08 18:46:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `order`, `is_default`, `is_featured`, `image`, `status`, `created_at`, `updated_at`, `slug`, `record_id`) VALUES
(1, 'São Paulo', 1, 1, 0, 0, 1, 'foto-micbr-apresentacao.webp', 'published', '2019-11-18 08:18:42', '2022-07-05 19:12:24', 'sao-paulo', NULL),
(2, 'Osasco', 1, 1, 0, 0, 1, 'advogados-em-osasco.jpg', 'published', '2019-11-18 08:23:14', '2022-07-05 19:11:38', 'osasco', NULL),
(3, 'Guarulhos', 1, 1, 0, 0, 1, 'enwhoeorfaxrbhuvmlaxsnfrxoohbjtbxuajrewfshxzldhyaecclewukxtamwov.jpg', 'published', '2019-11-18 08:26:54', '2022-07-05 19:10:56', 'guarulhos', NULL),
(4, 'São José dos Campos', 1, 1, 0, 0, 1, 'design-sem-nome-1-698x393.png', 'published', '2019-11-18 08:27:57', '2022-07-05 19:08:42', 'sao-jose-dos-campos', NULL),
(5, 'Mogi das Cruzes', 1, 1, 0, 0, 1, '7caf838d6ac7593e792d7251c7577cba.jpg', 'published', '2019-11-18 08:29:18', '2022-07-05 19:07:58', 'mogi-das-cruzes', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Brasil', 'Brasil', 0, 1, 'published', '2019-11-18 08:17:29', '2022-07-04 20:18:05', 'BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(2, 'widget_total_users', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(3, 'widget_total_plugins', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(4, 'widget_total_themes', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(5, 'widget_audit_logs', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(6, 'widget_posts_recent', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(7, 'widget_analytics_general', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(8, 'widget_analytics_page', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(9, 'widget_analytics_browser', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(10, 'widget_analytics_referrer', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(11, 'widget_total_1', '2022-07-04 18:59:35', '2022-07-04 18:59:35'),
(12, 'widget_total_2', '2022-07-04 18:59:35', '2022-07-04 18:59:35'),
(13, 'widget_total_3', '2022-07-04 18:59:35', '2022-07-04 18:59:35'),
(14, 'widget_total_4', '2022-07-04 18:59:35', '2022-07-04 18:59:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 7, 100, 0, '2019-11-26 02:40:58', '2023-03-06 10:43:18'),
(2, '{\"state\":\"expand\"}', 1, 5, 1, 1, '2019-11-26 02:40:58', '2022-12-05 14:01:45'),
(3, NULL, 1, 6, 0, 1, '2019-11-26 02:40:58', '2022-12-05 14:11:23'),
(4, NULL, 1, 8, 103, 0, '2019-11-26 02:40:58', '2023-03-06 10:43:10'),
(5, NULL, 1, 9, 104, 0, '2019-11-26 02:40:58', '2023-03-06 10:43:10'),
(6, NULL, 1, 10, 105, 0, '2019-11-26 02:40:58', '2023-03-06 10:43:10'),
(7, NULL, 1, 1, 106, 0, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(8, NULL, 1, 2, 107, 0, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(9, NULL, 1, 3, 108, 0, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(10, NULL, 1, 4, 109, 0, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(11, NULL, 1, 11, 0, 1, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(12, NULL, 1, 12, 0, 1, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(13, NULL, 1, 13, 0, 1, '2022-11-14 16:35:49', '2022-11-14 16:35:49'),
(14, NULL, 1, 14, 0, 1, '2022-11-14 16:35:49', '2022-11-14 16:35:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'Português', 'pt', 'pt_BR', 'br', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'pt_BR', 'b897a18053b1b9c57bbb6ab7754847d3', 2, 'Srapid\\Menu\\Models\\Menu'),
(2, 'pt_BR', '5daa9e5bd4da0791d64aa5686f194eaa', 1, 'Srapid\\Menu\\Models\\Menu'),
(3, 'pt_BR', '7b716f084d01eebc31a7d10cd80608f5', 3, 'Srapid\\Menu\\Models\\Menu'),
(4, 'pt_BR', 'dbe6d42539fbdb3ab4799746c64e480d', 4, 'Srapid\\Menu\\Models\\Menu'),
(5, 'pt_BR', '2619479502e06f3b52a367d5f348ea42', 1, 'Srapid\\Menu\\Models\\MenuLocation'),
(6, 'pt_BR', '8d9bf0dc402209e95511c1f73b81611e', 2, 'Srapid\\Menu\\Models\\MenuLocation');

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1483, 0, '1', 80, 'image/jpeg', 11752, 'accounts/1.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1484, 0, '10', 80, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1485, 0, '2', 80, 'image/jpeg', 19005, 'accounts/2.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1486, 0, '3', 80, 'image/jpeg', 20400, 'accounts/3.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1487, 0, '4', 80, 'image/jpeg', 26819, 'accounts/4.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1488, 0, '5', 80, 'image/jpeg', 14367, 'accounts/5.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1489, 0, '6', 80, 'image/jpeg', 12367, 'accounts/6.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1490, 0, '7', 80, 'image/jpeg', 20652, 'accounts/7.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1491, 0, '8', 80, 'image/jpeg', 21164, 'accounts/8.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1492, 0, '9', 80, 'image/jpeg', 6084, 'accounts/9.jpg', '[]', '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(1494, 0, 'asset-3-at-3x', 82, 'image/png', 76833, 'general/asset-3-at-3x.png', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1495, 0, 'asset-4-at-3x', 82, 'image/png', 84067, 'general/asset-4-at-3x.png', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1496, 0, 'breadcrumb-background', 82, 'image/jpeg', 504692, 'general/breadcrumb-background.jpg', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1497, 0, 'copyright', 82, 'image/jpeg', 128544, 'general/copyright.jpg', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1498, 0, 'home-banner', 82, 'image/jpeg', 892011, 'general/home-banner.jpg', '[]', '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(1499, 0, 'termsconditions-pagedesktop', 82, 'image/jpeg', 185151, 'general/termsconditions-pagedesktop.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1500, 0, 'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri', 82, 'image/jpeg', 63143, 'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1501, 0, 'vietnam-office-4', 82, 'image/jpeg', 214366, 'general/vietnam-office-4.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1502, 0, '1', 83, 'image/jpeg', 66997, 'news/1.jpg', '[]', '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(1503, 0, '10', 83, 'image/jpeg', 66858, 'news/10.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1504, 0, '11', 83, 'image/jpeg', 86492, 'news/11.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1505, 0, '12', 83, 'image/jpeg', 91376, 'news/12.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1506, 0, '13', 83, 'image/jpeg', 82991, 'news/13.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1507, 0, '14', 83, 'image/jpeg', 66997, 'news/14.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1508, 0, '15', 83, 'image/jpeg', 111450, 'news/15.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1509, 0, '16', 83, 'image/jpeg', 464807, 'news/16.jpg', '[]', '2021-12-09 21:25:38', '2021-12-09 21:25:38', NULL),
(1510, 0, '2', 83, 'image/jpeg', 51884, 'news/2.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1511, 0, '3', 83, 'image/jpeg', 132835, 'news/3.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1512, 0, '4', 83, 'image/jpeg', 948302, 'news/4.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1513, 0, '5', 83, 'image/jpeg', 66858, 'news/5.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1514, 0, '6', 83, 'image/jpeg', 328317, 'news/6.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1515, 0, '7', 83, 'image/jpeg', 249538, 'news/7.jpg', '[]', '2021-12-09 21:25:39', '2021-12-09 21:25:39', NULL),
(1516, 0, '8', 83, 'image/jpeg', 147871, 'news/8.jpg', '[]', '2021-12-09 21:25:40', '2021-12-09 21:25:40', NULL),
(1517, 0, '9', 83, 'image/jpeg', 194815, 'news/9.jpg', '[]', '2021-12-09 21:25:40', '2021-12-09 21:25:40', NULL),
(1518, 0, 'banner', 1, 'image/jpeg', 239032, 'banner/banner.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1519, 0, '2009-0726-ca-bakersfield-truxtontower', 84, 'image/jpeg', 686056, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1520, 0, 'castillo-de-disneyland', 84, 'image/jpeg', 412609, 'cities/castillo-de-disneyland.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1521, 0, 'goldengatebridge-001', 84, 'image/jpeg', 371864, 'cities/goldengatebridge-001.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1522, 0, 'los-angeles-winter-2016', 84, 'image/jpeg', 254681, 'cities/los-angeles-winter-2016.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1523, 0, 'oaklandnightskylineandlakemerritt', 84, 'image/jpeg', 433073, 'cities/oaklandnightskylineandlakemerritt.jpg', '[]', '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(1524, 0, 'favicon', 85, 'image/png', 3110, 'logo/favicon.png', '[]', '2021-12-09 21:25:42', '2022-11-14 19:28:23', '2022-11-14 19:28:23'),
(1525, 0, 'logo-white', 85, 'image/png', 18120, 'logo/logo-white.png', '[]', '2021-12-09 21:25:42', '2022-11-14 19:28:19', '2022-11-14 19:28:19'),
(1526, 0, 'logo', 85, 'image/png', 23910, 'logo/logo.png', '[]', '2021-12-09 21:25:42', '2022-11-14 19:28:16', '2022-11-14 19:28:16'),
(1527, 0, '1', 86, 'image/jpeg', 750839, 'projects/1.jpg', '[]', '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(1528, 0, '11', 86, 'image/jpeg', 1729433, 'projects/11.jpg', '[]', '2021-12-09 21:25:43', '2021-12-09 21:25:43', NULL),
(1529, 0, '12', 86, 'image/jpeg', 942082, 'projects/12.jpg', '[]', '2021-12-09 21:25:43', '2021-12-09 21:25:43', NULL),
(1530, 0, '13', 86, 'image/jpeg', 562580, 'projects/13.jpg', '[]', '2021-12-09 21:25:43', '2021-12-09 21:25:43', NULL),
(1531, 0, '14', 86, 'image/jpeg', 1259051, 'projects/14.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1532, 0, '2', 86, 'image/jpeg', 431985, 'projects/2.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1533, 0, '21', 86, 'image/jpeg', 173885, 'projects/21.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1534, 0, '22', 86, 'image/jpeg', 94488, 'projects/22.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1535, 0, '23', 86, 'image/jpeg', 90740, 'projects/23.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1536, 0, '24', 86, 'image/jpeg', 96624, 'projects/24.jpg', '[]', '2021-12-09 21:25:44', '2021-12-09 21:25:44', NULL),
(1537, 0, '25', 86, 'image/jpeg', 138699, 'projects/25.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1538, 0, '26', 86, 'image/jpeg', 121747, 'projects/26.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1539, 0, '3', 86, 'image/jpeg', 450933, 'projects/3.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1540, 0, '5', 86, 'image/jpeg', 206027, 'projects/5.jpg', '[]', '2021-12-09 21:25:45', '2021-12-09 21:25:45', NULL),
(1541, 0, '1-1', 87, 'image/jpeg', 750839, 'properties/1-1.jpg', '[]', '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(1542, 0, '1-2', 87, 'image/jpeg', 1587777, 'properties/1-2.jpg', '[]', '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(1543, 0, '1-3', 87, 'image/jpeg', 646056, 'properties/1-3.jpg', '[]', '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(1544, 0, '1', 87, 'image/jpeg', 80373, 'properties/1.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1545, 0, '10-1', 87, 'image/jpeg', 198455, 'properties/10-1.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1546, 0, '10', 87, 'image/jpeg', 255695, 'properties/10.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1547, 0, '11-1', 87, 'image/jpeg', 127294, 'properties/11-1.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1548, 0, '11', 87, 'image/jpeg', 79403, 'properties/11.jpg', '[]', '2021-12-09 21:25:47', '2021-12-09 21:25:47', NULL),
(1549, 0, '12', 87, 'image/jpeg', 86373, 'properties/12.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1550, 0, '13', 87, 'image/jpeg', 82991, 'properties/13.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1551, 0, '14', 87, 'image/jpeg', 66997, 'properties/14.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1552, 0, '15', 87, 'image/jpeg', 111450, 'properties/15.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1553, 0, '2-1', 87, 'image/jpeg', 431985, 'properties/2-1.jpg', '[]', '2021-12-09 21:25:48', '2021-12-09 21:25:48', NULL),
(1554, 0, '2-2', 87, 'image/jpeg', 260049, 'properties/2-2.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1555, 0, '2-3', 87, 'image/jpeg', 684758, 'properties/2-3.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1556, 0, '2', 87, 'image/jpeg', 93464, 'properties/2.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1557, 0, '21', 87, 'image/jpeg', 85475, 'properties/21.jpg', '[]', '2021-12-09 21:25:49', '2021-12-09 21:25:49', NULL),
(1558, 0, '22-1', 87, 'image/jpeg', 94488, 'properties/22-1.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1559, 0, '22', 87, 'image/jpeg', 713091, 'properties/22.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1560, 0, '23', 87, 'image/jpeg', 111948, 'properties/23.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1561, 0, '24-1', 87, 'image/jpeg', 96624, 'properties/24-1.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1562, 0, '24', 87, 'image/jpeg', 69034, 'properties/24.jpg', '[]', '2021-12-09 21:25:50', '2021-12-09 21:25:50', NULL),
(1563, 0, '3-1', 87, 'image/jpeg', 450933, 'properties/3-1.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1564, 0, '3-2', 87, 'image/jpeg', 124405, 'properties/3-2.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1565, 0, '3-3', 87, 'image/jpeg', 762723, 'properties/3-3.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1566, 0, '3', 87, 'image/jpeg', 70442, 'properties/3.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1567, 0, '31', 87, 'image/jpeg', 33300, 'properties/31.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1568, 0, '311', 87, 'image/jpeg', 22270, 'properties/311.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1569, 0, '32', 87, 'image/jpeg', 18100, 'properties/32.jpg', '[]', '2021-12-09 21:25:51', '2021-12-09 21:25:51', NULL),
(1570, 0, '32223-43914-378', 87, 'image/jpeg', 716445, 'properties/32223-43914-378.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1571, 0, '33', 87, 'image/jpeg', 21031, 'properties/33.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1572, 0, '34', 87, 'image/jpeg', 19947, 'properties/34.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1573, 0, '35', 87, 'image/jpeg', 24653, 'properties/35.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1574, 0, '4-1', 87, 'image/jpeg', 433537, 'properties/4-1.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1575, 0, '4-2', 87, 'image/jpeg', 642443, 'properties/4-2.jpg', '[]', '2021-12-09 21:25:52', '2021-12-09 21:25:52', NULL),
(1576, 0, '4', 87, 'image/jpeg', 96537, 'properties/4.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1577, 0, '411', 87, 'image/jpeg', 29035, 'properties/411.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1578, 0, '42', 87, 'image/jpeg', 24790, 'properties/42.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1579, 0, '421834935dbc9ef3aaa42', 87, 'image/jpeg', 538188, 'properties/421834935dbc9ef3aaa42.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1580, 0, '43', 87, 'image/jpeg', 20920, 'properties/43.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1581, 0, '44', 87, 'image/jpeg', 17781, 'properties/44.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1582, 0, '5-1', 87, 'image/jpeg', 86536, 'properties/5-1.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1583, 0, '5-2', 87, 'image/jpeg', 656323, 'properties/5-2.jpg', '[]', '2021-12-09 21:25:53', '2021-12-09 21:25:53', NULL),
(1584, 0, '5', 87, 'image/jpeg', 206027, 'properties/5.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1585, 0, '6-1', 87, 'image/jpeg', 252518, 'properties/6-1.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1586, 0, '6-2', 87, 'image/jpeg', 76855, 'properties/6-2.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1587, 0, '6', 87, 'image/jpeg', 51884, 'properties/6.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1588, 0, '7-1', 87, 'image/jpeg', 46086, 'properties/7-1.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1589, 0, '7-2', 87, 'image/jpeg', 172462, 'properties/7-2.jpg', '[]', '2021-12-09 21:25:54', '2021-12-09 21:25:54', NULL),
(1590, 0, '7', 87, 'image/jpeg', 464807, 'properties/7.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1591, 0, '71', 87, 'image/jpeg', 127638, 'properties/71.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1592, 0, '72', 87, 'image/jpeg', 99746, 'properties/72.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1593, 0, '73', 87, 'image/jpeg', 99089, 'properties/73.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1594, 0, '74', 87, 'image/jpeg', 108268, 'properties/74.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1595, 0, '75', 87, 'image/jpeg', 144040, 'properties/75.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1596, 0, '78', 87, 'image/jpeg', 132835, 'properties/78.jpg', '[]', '2021-12-09 21:25:55', '2021-12-09 21:25:55', NULL),
(1597, 0, '79', 87, 'image/jpeg', 128490, 'properties/79.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1598, 0, '8-1', 87, 'image/jpeg', 35774, 'properties/8-1.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1599, 0, '8-2', 87, 'image/jpeg', 116324, 'properties/8-2.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1600, 0, '8', 87, 'image/jpeg', 542999, 'properties/8.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1601, 0, '9-1', 87, 'image/jpeg', 82701, 'properties/9-1.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1602, 0, '9', 87, 'image/jpeg', 98602, 'properties/9.jpg', '[]', '2021-12-09 21:25:56', '2021-12-09 21:25:56', NULL),
(1603, 0, 'a1-1', 87, 'image/jpeg', 244411, 'properties/a1-1.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1604, 0, 'a1-2', 87, 'image/jpeg', 213475, 'properties/a1-2.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1605, 0, 'a1', 87, 'image/jpeg', 104460, 'properties/a1.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1606, 0, 'a10', 87, 'image/jpeg', 135558, 'properties/a10.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1607, 0, 'a2-1', 87, 'image/jpeg', 58090, 'properties/a2-1.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1608, 0, 'a2-2', 87, 'image/jpeg', 110869, 'properties/a2-2.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1609, 0, 'a2', 87, 'image/jpeg', 79585, 'properties/a2.jpg', '[]', '2021-12-09 21:25:57', '2021-12-09 21:25:57', NULL),
(1610, 0, 'a3-1', 87, 'image/jpeg', 103281, 'properties/a3-1.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1611, 0, 'a3-2', 87, 'image/jpeg', 180354, 'properties/a3-2.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1612, 0, 'a3', 87, 'image/jpeg', 182143, 'properties/a3.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1613, 0, 'a4-1', 87, 'image/jpeg', 93023, 'properties/a4-1.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1614, 0, 'a4-2', 87, 'image/jpeg', 91918, 'properties/a4-2.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1615, 0, 'a4', 87, 'image/jpeg', 79498, 'properties/a4.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1616, 0, 'a5-1', 87, 'image/jpeg', 184906, 'properties/a5-1.jpg', '[]', '2021-12-09 21:25:58', '2021-12-09 21:25:58', NULL),
(1617, 0, 'a5', 87, 'image/jpeg', 116582, 'properties/a5.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1618, 0, 'a6-1', 87, 'image/jpeg', 581176, 'properties/a6-1.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1619, 0, 'a6', 87, 'image/jpeg', 82219, 'properties/a6.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1620, 0, 'a7', 87, 'image/jpeg', 436253, 'properties/a7.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1621, 0, 'a8', 87, 'image/jpeg', 220787, 'properties/a8.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1622, 0, 'a9', 87, 'image/jpeg', 174424, 'properties/a9.jpg', '[]', '2021-12-09 21:25:59', '2021-12-09 21:25:59', NULL),
(1623, 0, 'b1', 87, 'image/jpeg', 169643, 'properties/b1.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1624, 0, 'b2', 87, 'image/jpeg', 92903, 'properties/b2.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1625, 0, 'b3', 87, 'image/jpeg', 130884, 'properties/b3.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1626, 0, 'b4-1', 87, 'image/jpeg', 151288, 'properties/b4-1.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1627, 0, 'b4', 87, 'image/jpeg', 101182, 'properties/b4.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1628, 0, 'b5-1', 87, 'image/jpeg', 136853, 'properties/b5-1.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1629, 0, 'b5', 87, 'image/jpeg', 69849, 'properties/b5.jpg', '[]', '2021-12-09 21:26:00', '2021-12-09 21:26:00', NULL),
(1630, 0, 'b6', 87, 'image/jpeg', 104434, 'properties/b6.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1631, 0, 'download', 87, 'image/jpeg', 10833, 'properties/download.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1632, 0, 'e1', 87, 'image/jpeg', 1105244, 'properties/e1.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1633, 0, 'e2', 87, 'image/jpeg', 1062944, 'properties/e2.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1634, 0, 'e3', 87, 'image/jpeg', 1113759, 'properties/e3.jpg', '[]', '2021-12-09 21:26:01', '2021-12-09 21:26:01', NULL),
(1635, 0, 'e4', 87, 'image/jpeg', 1003508, 'properties/e4.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1636, 0, 'e5', 87, 'image/jpeg', 948302, 'properties/e5.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1637, 0, 'e7', 87, 'image/jpeg', 916078, 'properties/e7.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1638, 0, 'e8', 87, 'image/jpeg', 820972, 'properties/e8.jpg', '[]', '2021-12-09 21:26:02', '2021-12-09 21:26:02', NULL),
(1639, 0, 'p1', 87, 'image/jpeg', 198758, 'properties/p1.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1640, 0, 'p2', 87, 'image/jpeg', 427643, 'properties/p2.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1641, 0, 'property-video-thumb', 87, 'image/jpeg', 26909, 'properties/property-video-thumb.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1642, 0, 'q1', 87, 'image/jpeg', 458500, 'properties/q1.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1643, 0, 'q2', 87, 'image/jpeg', 233211, 'properties/q2.jpg', '[]', '2021-12-09 21:26:03', '2021-12-09 21:26:03', NULL),
(1644, 0, 'q3', 87, 'image/jpeg', 328317, 'properties/q3.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1645, 0, 'q6', 87, 'image/jpeg', 249538, 'properties/q6.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1646, 0, 'q7', 87, 'image/jpeg', 147871, 'properties/q7.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1647, 0, 'q8', 87, 'image/jpeg', 194815, 'properties/q8.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1648, 0, 't1', 87, 'image/jpeg', 66858, 'properties/t1.jpg', '[]', '2021-12-09 21:26:04', '2021-12-09 21:26:04', NULL),
(1649, 0, 't2', 87, 'image/jpeg', 86492, 'properties/t2.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1650, 0, 't3', 87, 'image/jpeg', 91376, 'properties/t3.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1651, 0, 't4', 87, 'image/jpeg', 77280, 'properties/t4.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1652, 0, 't5', 87, 'image/jpeg', 94036, 'properties/t5.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1653, 0, 'wp1a', 87, 'image/jpeg', 168494, 'properties/wp1a.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1654, 0, 'avatar', 88, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(1655, 1, 'aire2', 89, 'image/jpeg', 251018, 'aire2.jpg', '[]', '2022-07-04 19:11:14', '2022-07-04 19:11:14', NULL),
(1656, 1, 'logo-siterapido5.fw', 85, 'image/png', 63709, 'logo/logo-siterapido5fw.png', '[]', '2022-07-05 19:00:30', '2022-07-05 19:00:30', NULL),
(1657, 1, 'home3', 85, 'image/png', 13835, 'logo/home3.png', '[]', '2022-07-05 19:01:21', '2022-07-05 19:01:21', NULL),
(1658, 1, '7caf838d6ac7593e792d7251c7577cba', 89, 'image/jpeg', 87642, '7caf838d6ac7593e792d7251c7577cba.jpg', '[]', '2022-07-05 19:07:49', '2022-07-05 19:07:49', NULL),
(1659, 1, 'Design-sem-nome-1-698x393', 89, 'image/png', 595390, 'design-sem-nome-1-698x393.png', '[]', '2022-07-05 19:08:32', '2022-07-05 19:08:32', NULL),
(1660, 1, 'Saopaulo_aerea_aeroportocumbica', 89, 'image/jpeg', 2894771, 'saopaulo-aerea-aeroportocumbica.jpg', '[]', '2022-07-05 19:09:54', '2022-07-05 19:10:15', '2022-07-05 19:10:15'),
(1661, 1, 'EnWHOeORFaxrbHUvMlAxsnfrXOohbJtBXuaJrEWFSHxZlDHyAecClewUkXtaMwoV', 89, 'image/jpeg', 189018, 'enwhoeorfaxrbhuvmlaxsnfrxoohbjtbxuajrewfshxzldhyaecclewukxtamwov.jpg', '[]', '2022-07-05 19:10:51', '2022-07-05 19:10:51', NULL),
(1662, 1, 'advogados_em_Osasco', 89, 'image/jpeg', 161720, 'advogados-em-osasco.jpg', '[]', '2022-07-05 19:11:33', '2022-07-05 19:11:33', NULL),
(1663, 1, 'foto-micbr-apresentacao', 89, 'image/webp', 95116, 'foto-micbr-apresentacao.webp', '[]', '2022-07-05 19:12:20', '2022-07-05 19:12:20', NULL),
(1664, 1, 'farialima', 1, 'image/jpeg', 94667, 'banner/farialima.jpg', '[]', '2022-07-20 09:47:48', '2022-07-20 09:47:48', NULL),
(1665, 1, 'paulista-box-search', 1, 'image/jpeg', 196202, 'banner/paulista-box-search.jpg', '[]', '2022-07-20 18:56:30', '2022-07-20 18:57:21', '2022-07-20 18:57:21'),
(1666, 1, 'paulista-box-search-1', 1, 'image/jpeg', 143960, 'banner/paulista-box-search-1.jpg', '[]', '2022-07-20 18:57:14', '2022-07-20 18:57:24', '2022-07-20 18:57:24'),
(1667, 1, 'paulista-box-search-2', 1, 'image/jpeg', 143960, 'banner/paulista-box-search-2.jpg', '[]', '2022-07-20 18:57:29', '2022-07-20 18:57:29', NULL),
(1668, 1, 'paulista-box-search2', 1, 'image/jpeg', 133001, 'banner/paulista-box-search2.jpg', '[]', '2022-07-20 19:07:10', '2022-07-20 19:12:14', '2022-07-20 19:12:14'),
(1669, 1, 'cidade-noite-box-search2', 1, 'image/jpeg', 131392, 'banner/cidade-noite-box-search2.jpg', '[]', '2022-07-20 19:12:05', '2022-07-20 19:12:05', NULL),
(1670, 1, 'logo-siterapido.fw', 85, 'image/png', 55738, 'logo/logo-siterapidofw.png', '[]', '2022-08-08 16:44:26', '2022-08-08 16:44:26', NULL),
(1671, 1, 'logo-siterapido2.fw', 85, 'image/png', 75526, 'logo/logo-siterapido2fw.png', '[]', '2022-08-08 16:45:02', '2022-08-08 16:48:10', '2022-08-08 16:48:10'),
(1672, 1, 'logo-siterapido.com.br-amarelo.fw', 85, 'image/png', 60053, 'logo/logo-siterapidocombr-amarelofw.png', '[]', '2022-08-08 16:48:04', '2022-08-08 16:48:41', '2022-08-08 16:48:41'),
(1673, 1, 'logo-siterapido.com.br-amarelo.fw-1', 85, 'image/png', 57109, 'logo/logo-siterapidocombr-amarelofw-1.png', '[]', '2022-08-08 16:48:47', '2022-08-08 16:48:47', NULL),
(1674, 1, 'logo-siterapido2.fw-1', 85, 'image/png', 75526, 'logo/logo-siterapido2fw-1.png', '[]', '2022-08-08 16:49:44', '2022-08-08 16:49:44', NULL),
(1675, 1, 'logo-siterapido.com.br-vermelho.fw', 85, 'image/png', 53554, 'logo/logo-siterapidocombr-vermelhofw.png', '[]', '2022-08-08 16:52:49', '2022-08-08 16:52:49', NULL),
(1676, 1, 'masp', 1, 'image/png', 1016114, 'banner/masp.png', '[]', '2022-08-08 16:57:37', '2022-08-08 16:57:37', NULL),
(1677, 1, '434e3304981f7dba55081aae0b6996ab-andy2', 90, 'image/jpeg', 917291, 'imoveis/434e3304981f7dba55081aae0b6996ab-andy2.jpg', '[]', '2022-08-08 18:53:40', '2022-08-08 18:53:40', NULL),
(1678, 1, '920x920', 90, 'image/jpeg', 63029, 'imoveis/920x920.jpg', '[]', '2022-08-08 18:53:41', '2022-08-08 18:53:41', NULL),
(1679, 1, 'edbf9a60bf1723677ca84be0a6cfca7e', 90, 'image/jpeg', 75602, 'imoveis/edbf9a60bf1723677ca84be0a6cfca7e.jpg', '[]', '2022-08-08 18:53:41', '2022-08-08 18:53:41', NULL),
(1680, 1, 'hero-image', 90, 'image/jpeg', 222676, 'imoveis/hero-image.jpg', '[]', '2022-08-08 18:53:42', '2022-08-08 18:53:42', NULL),
(1681, 1, 'Luxury-Modern-House-Architectural-Design-1.1593639226.5089', 90, 'image/jpeg', 175229, 'imoveis/luxury-modern-house-architectural-design-115936392265089.jpg', '[]', '2022-08-08 18:53:43', '2022-08-08 18:53:43', NULL),
(1682, 1, 'maison-bini-4', 90, 'image/jpeg', 220475, 'imoveis/maison-bini-4.jpg', '[]', '2022-08-08 18:53:43', '2022-08-08 18:53:43', NULL),
(1683, 1, 'maxresdefault', 90, 'image/jpeg', 168809, 'imoveis/maxresdefault.jpg', '[]', '2022-08-08 18:53:44', '2022-08-08 18:53:44', NULL),
(1684, 1, 'Modern-Energy-Efficient-House-Fabricated-in-Pennsylvania-and-Transported-in-East-Hampton-1', 90, 'image/jpeg', 132331, 'imoveis/modern-energy-efficient-house-fabricated-in-pennsylvania-and-transported-in-east-hampton-1.jpg', '[]', '2022-08-08 18:53:45', '2022-08-08 18:53:45', NULL),
(1685, 1, 'Modern-France-house-by-SAOTA', 90, 'image/jpeg', 230921, 'imoveis/modern-france-house-by-saota.jpg', '[]', '2022-08-08 18:53:46', '2022-08-08 18:53:46', NULL),
(1686, 1, 'modern-house-tour-5519-lynbrook-4', 90, 'image/jpeg', 72392, 'imoveis/modern-house-tour-5519-lynbrook-4.jpg', '[]', '2022-08-08 18:53:46', '2022-08-08 18:53:46', NULL),
(1687, 1, 'si-modern-home', 90, 'image/png', 201860, 'imoveis/si-modern-home.png', '[]', '2022-08-08 18:53:47', '2022-08-08 18:53:47', NULL),
(1688, 1, 'This-modern-forest-house-harmonizes-cutting-edge-lifestyle-with-the-nature-Architecture-Beast-08-featured-min', 90, 'image/jpeg', 508513, 'imoveis/this-modern-forest-house-harmonizes-cutting-edge-lifestyle-with-the-nature-architecture-beast-08-featured-min.jpg', '[]', '2022-08-08 18:53:48', '2022-08-08 18:53:48', NULL),
(1689, 1, 'villa_2', 90, 'image/jpeg', 351337, 'imoveis/villa-2.jpg', '[]', '2022-08-08 18:53:49', '2022-08-08 18:53:49', NULL),
(1690, 1, 'west-elevation', 90, 'image/jpeg', 384812, 'imoveis/west-elevation.jpg', '[]', '2022-08-08 18:53:50', '2022-08-08 18:53:50', NULL),
(1691, 1, '1sas', 90, 'image/jpeg', 10954, 'imoveis/1sas.jpg', '[]', '2022-08-08 18:54:04', '2022-08-08 18:54:04', NULL),
(1692, 1, '145_Hudson_Street_Tribeca_Manhattan_Apartments_NY', 90, 'image/jpeg', 803031, 'imoveis/145-hudson-street-tribeca-manhattan-apartments-ny.jpg', '[]', '2022-08-08 18:54:06', '2022-08-08 18:54:06', NULL),
(1693, 1, '5319d11e672aa8357b71780fac1b4d24', 90, 'image/jpeg', 35902, 'imoveis/5319d11e672aa8357b71780fac1b4d24.jpg', '[]', '2022-08-08 18:54:07', '2022-08-08 18:54:07', NULL),
(1694, 1, '13120', 90, 'image/jpeg', 114217, 'imoveis/13120.jpg', '[]', '2022-08-08 18:54:08', '2022-08-08 18:54:08', NULL),
(1695, 1, 'aire2', 90, 'image/jpeg', 251018, 'imoveis/aire2.jpg', '[]', '2022-08-08 18:54:08', '2022-08-08 18:54:08', NULL),
(1696, 1, 'apartamento-de-alto-padrao-9', 90, 'image/jpeg', 40948, 'imoveis/apartamento-de-alto-padrao-9.jpg', '[]', '2022-08-08 18:54:09', '2022-08-08 18:54:09', NULL),
(1697, 1, 'Apartment-Renovation-in-Manhattan-by-Suzanne-Lovell-4', 90, 'image/jpeg', 299453, 'imoveis/apartment-renovation-in-manhattan-by-suzanne-lovell-4.jpg', '[]', '2022-08-08 18:54:10', '2022-08-08 18:54:10', NULL),
(1698, 1, 'apt-man', 90, 'image/jpeg', 222240, 'imoveis/apt-man.jpg', '[]', '2022-08-08 18:54:11', '2022-08-08 18:54:11', NULL),
(1699, 1, 'a-rede-de-hoteis-hyatt-esta-construindo-um-predio-residencial-de-alto-padrao-na-barra-da-tijuca-cada-apartamento-vai-custar-r-61124-milhoes-1383848342816_800x573', 90, 'image/jpeg', 108132, 'imoveis/a-rede-de-hoteis-hyatt-esta-construindo-um-predio-residencial-de-alto-padrao-na-barra-da-tijuca-cada-apartamento-vai-custar-r-61124-milhoes-1383848342816-800x573.jpg', '[]', '2022-08-08 18:54:11', '2022-08-08 18:54:11', NULL),
(1700, 1, 'asdimages', 90, 'image/jpeg', 12110, 'imoveis/asdimages.jpg', '[]', '2022-08-08 18:54:12', '2022-08-08 18:54:12', NULL),
(1701, 1, 'asdsaasdimages', 90, 'image/jpeg', 12250, 'imoveis/asdsaasdimages.jpg', '[]', '2022-08-08 18:54:12', '2022-08-08 18:54:12', NULL),
(1702, 1, 'ashleymary-kateolsenmanhattanapartments', 90, 'image/jpeg', 58491, 'imoveis/ashleymary-kateolsenmanhattanapartments.jpg', '[]', '2022-08-08 18:54:13', '2022-08-08 18:54:13', NULL),
(1703, 1, 'A-Vibrant-Apartment-in-Tribeca-09', 90, 'image/jpeg', 85395, 'imoveis/a-vibrant-apartment-in-tribeca-09.jpg', '[]', '2022-08-08 18:54:13', '2022-08-08 18:54:13', NULL),
(1704, 1, 'barracos-20', 90, 'image/jpeg', 91237, 'imoveis/barracos-20.jpg', '[]', '2022-08-08 18:54:14', '2022-08-08 18:54:14', NULL),
(1705, 1, 'Dining-Room-Amazing-City-River-Views-Hudson-River-Apartment-Manhattan', 90, 'image/jpeg', 336191, 'imoveis/dining-room-amazing-city-river-views-hudson-river-apartment-manhattan.jpg', '[]', '2022-08-08 18:54:15', '2022-08-08 18:54:15', NULL),
(1706, 1, 'fotos de mansoes 1', 90, 'image/jpeg', 49363, 'imoveis/fotos-de-mansoes-1.jpg', '[]', '2022-08-08 18:54:15', '2022-08-08 18:54:15', NULL),
(1707, 1, 'image (2)', 90, 'image/jpeg', 198902, 'imoveis/image-2.jpg', '[]', '2022-08-08 18:54:16', '2022-08-08 18:54:16', NULL),
(1708, 1, 'image', 90, 'image/jpeg', 110389, 'imoveis/image.jpg', '[]', '2022-08-08 18:54:16', '2022-08-08 18:54:16', NULL),
(1709, 1, 'lombardia_villa_lusso_00', 90, 'image/jpeg', 35102, 'imoveis/lombardia-villa-lusso-00.JPG', '[]', '2022-08-08 18:54:17', '2022-08-08 18:54:17', NULL),
(1710, 1, 'luxo-imoveis-alphaville-4', 90, 'image/jpeg', 33009, 'imoveis/luxo-imoveis-alphaville-4.jpg', '[]', '2022-08-08 18:54:17', '2022-08-08 18:54:17', NULL),
(1711, 1, 'Manhattan-luxury-apartment', 90, 'image/jpeg', 434159, 'imoveis/manhattan-luxury-apartment.jpg', '[]', '2022-08-08 18:54:18', '2022-08-08 18:54:18', NULL),
(1712, 1, 'mansao', 90, 'image/jpeg', 50435, 'imoveis/mansao.jpg', '[]', '2022-08-08 18:54:19', '2022-08-08 18:54:19', NULL),
(1713, 1, 'mansao_tambore', 90, 'image/jpeg', 66758, 'imoveis/mansao-tambore.jpg', '[]', '2022-08-08 18:54:19', '2022-08-08 18:54:19', NULL),
(1714, 1, 'MansãoAP', 90, 'image/jpeg', 47612, 'imoveis/mansaoap.jpg', '[]', '2022-08-08 18:54:20', '2022-08-08 18:54:20', NULL),
(1715, 1, 'mansao-de-luxo-com-piscina-1', 90, 'image/jpeg', 65262, 'imoveis/mansao-de-luxo-com-piscina-1.jpg', '[]', '2022-08-08 18:54:20', '2022-08-08 18:54:20', NULL),
(1716, 1, 'mansao-de-luxo-com-piscina-1a', 90, 'image/jpeg', 65262, 'imoveis/mansao-de-luxo-com-piscina-1a.jpg', '[]', '2022-08-08 18:54:21', '2022-08-08 18:54:21', NULL),
(1717, 1, 'mansao-fleur-de-lys-p', 90, 'image/jpeg', 35783, 'imoveis/mansao-fleur-de-lys-p.jpg', '[]', '2022-08-08 18:54:21', '2022-08-08 18:54:21', NULL),
(1718, 1, 'mansao-morada-de-l-9df62', 90, 'image/jpeg', 23806, 'imoveis/mansao-morada-de-l-9df62.jpg', '[]', '2022-08-08 18:54:22', '2022-08-08 18:54:22', NULL),
(1719, 1, 'mansoes de famosos 1', 90, 'image/jpeg', 73743, 'imoveis/mansoes-de-famosos-1.jpg', '[]', '2022-08-08 18:54:22', '2022-08-08 18:54:22', NULL),
(1720, 1, 'nyc_buying_apartments_before_they_are_built', 90, 'image/png', 382039, 'imoveis/nyc-buying-apartments-before-they-are-built.png', '[]', '2022-08-08 18:54:23', '2022-08-08 18:54:23', NULL),
(1721, 1, 'Spectacular-penthouse-apartment1', 90, 'image/jpeg', 38298, 'imoveis/spectacular-penthouse-apartment1.jpg', '[]', '2022-08-08 18:54:24', '2022-08-08 18:54:24', NULL),
(1722, 1, 'Tom-and-Giseles-apartment-625669', 90, 'image/jpeg', 188576, 'imoveis/tom-and-giseles-apartment-625669.jpg', '[]', '2022-08-08 18:54:25', '2022-08-08 18:54:25', NULL),
(1723, 1, 'tumblr_ls9lrikr3w1qitofr', 90, 'image/jpeg', 27579, 'imoveis/tumblr-ls9lrikr3w1qitofr.jpg', '[]', '2022-08-08 18:54:25', '2022-08-08 18:54:25', NULL),
(1724, 1, 'thumb (1)', 80, 'image/jpeg', 20684, 'accounts/thumb-1.jpg', '[]', '2022-08-09 20:25:36', '2022-08-09 20:25:36', NULL),
(1725, 1, 'iS157999A714m0ID_510860abea1dc27d9', 92, 'image/jpeg', 330909, 'empreendimentos/orleans/is157999a714m0id-510860abea1dc27d9.jpg', '[]', '2022-08-10 16:44:38', '2022-08-10 16:44:38', NULL),
(1726, 1, 'original_47f9d302a48f226e4a05f127f9160360', 92, 'image/jpeg', 137481, 'empreendimentos/orleans/original-47f9d302a48f226e4a05f127f9160360.jpeg', '[]', '2022-08-10 16:44:40', '2022-08-10 16:44:40', NULL),
(1727, 1, 'perspectiva-viva-mais-2-vista-geral-novo-horizonte-2', 92, 'image/webp', 212354, 'empreendimentos/orleans/perspectiva-viva-mais-2-vista-geral-novo-horizonte-2.webp', '[]', '2022-08-10 16:44:41', '2022-08-10 16:44:41', NULL),
(1728, 1, 'original_bf324fbaf45de6fceab53783a1c47659', 92, 'image/jpeg', 376033, 'empreendimentos/orleans/original-bf324fbaf45de6fceab53783a1c47659.jpeg', '[]', '2022-08-10 16:44:43', '2022-08-10 16:44:43', NULL),
(1729, 1, '6dc8e04bc263f983f0aaa98b2d227111', 93, 'image/jpeg', 380163, 'empreendimentos/outros/6dc8e04bc263f983f0aaa98b2d227111.jpg', '[]', '2022-08-13 14:59:50', '2022-08-13 14:59:50', NULL),
(1730, 1, '21', 93, 'image/jpeg', 199505, 'empreendimentos/outros/21.jpg', '[]', '2022-08-13 14:59:52', '2022-08-13 14:59:52', NULL),
(1731, 1, '3201-001_LIVING', 93, 'image/jpeg', 171674, 'empreendimentos/outros/3201-001-living.jpg', '[]', '2022-08-13 14:59:52', '2022-08-13 14:59:52', NULL),
(1733, 1, 'logo-siterapido.com.br-vermelho.fw-1', 85, 'image/png', 53161, 'logo/logo-siterapidocombr-vermelhofw-1.png', '[]', '2022-11-08 19:52:48', '2022-11-08 19:52:48', NULL),
(1734, 1, 'rocketship-2', 85, 'image/gif', 1563153, 'logo/rocketship-2.gif', '[]', '2022-11-08 19:53:27', '2022-11-08 19:53:27', NULL),
(1735, 1, '1635773349', 80, 'image/jpeg', 22600, 'accounts/1635773349.jpg', '[]', '2022-11-14 13:51:31', '2022-11-14 13:51:45', '2022-11-14 13:51:45'),
(1736, 1, 'works5', 80, 'image/jpeg', 1434, 'accounts/works5.jpg', '[]', '2022-11-14 13:51:57', '2022-11-14 13:52:03', '2022-11-14 13:52:03'),
(1737, 1, 'business-person', 80, 'image/png', 96979, 'accounts/business-person.png', '[]', '2022-11-14 13:52:50', '2022-11-14 13:52:50', NULL),
(1738, 1, 'people-matter-most', 80, 'image/png', 548779, 'accounts/people-matter-most.png', '[]', '2022-11-14 13:53:37', '2022-11-14 13:53:44', '2022-11-14 13:53:44'),
(1739, 1, 'aaaasf', 80, 'image/jpeg', 17871, 'accounts/aaaasf.jpg', '[]', '2022-11-14 13:53:53', '2022-11-14 13:53:53', NULL),
(1740, 1, 'code', 85, 'image/png', 10454, 'logo/code.png', '[]', '2022-11-14 19:30:17', '2022-11-14 19:30:17', NULL),
(1741, 1, 'ico-mangistrade-2', 85, 'image/png', 41624, 'logo/ico-mangistrade-2.png', '[]', '2022-11-14 19:32:13', '2022-11-14 19:32:13', NULL),
(1742, 1, 'logo-site-rapido.fw', 88, 'image/png', 450254, 'users/logo-site-rapidofw.png', '[]', '2022-11-30 12:20:11', '2022-11-30 12:20:11', NULL),
(1743, 1, 'images', 90, 'image/jpeg', 7756, 'imoveis/images.jpg', '[]', '2023-03-30 18:10:47', '2023-03-30 18:10:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Banners', 'banner', 0, '2019-11-16 02:00:43', '2019-11-16 02:00:50', NULL),
(80, 0, 'accounts', 'accounts', 0, '2021-12-09 21:25:30', '2021-12-09 21:25:30', NULL),
(82, 0, 'general', 'general', 0, '2021-12-09 21:25:36', '2021-12-09 21:25:36', NULL),
(83, 0, 'news', 'news', 0, '2021-12-09 21:25:37', '2021-12-09 21:25:37', NULL),
(84, 0, 'cities', 'cities', 0, '2021-12-09 21:25:41', '2021-12-09 21:25:41', NULL),
(85, 0, 'logo', 'logo', 0, '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(86, 0, 'projects', 'projects', 0, '2021-12-09 21:25:42', '2021-12-09 21:25:42', NULL),
(87, 0, 'properties', 'properties', 0, '2021-12-09 21:25:46', '2021-12-09 21:25:46', NULL),
(88, 0, 'users', 'users', 0, '2021-12-09 21:26:05', '2021-12-09 21:26:05', NULL),
(89, 1, 'localidades', 'imoveis-demo', 0, '2022-08-08 18:51:26', '2022-08-08 18:52:17', NULL),
(90, 1, 'imoveis', 'imoveis', 0, '2022-08-08 18:51:58', '2022-08-08 18:51:58', NULL),
(91, 1, 'empreendimentos', 'empreendimentos', 0, '2022-08-10 16:44:13', '2022-08-10 16:44:13', NULL),
(92, 1, 'orleans', 'orleans', 91, '2022-08-10 16:44:21', '2022-08-10 16:44:21', NULL),
(93, 1, 'outros', 'outros', 91, '2022-08-13 14:59:36', '2022-08-13 14:59:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Menu Principal', 'main-menu', 'published', '2021-12-09 21:25:35', '2022-07-19 19:02:26'),
(2, 'Sobre', 'about', 'published', '2021-12-09 21:25:35', '2022-07-19 19:02:14'),
(3, 'Mais Informações', 'more-information', 'published', '2021-12-09 21:25:35', '2022-07-19 19:02:04'),
(4, 'Blog', 'news', 'published', '2021-12-09 21:25:35', '2022-12-05 10:28:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-12-09 21:25:35', '2021-12-09 21:25:35'),
(2, 5, 'main-menu', '2021-12-09 21:25:35', '2021-12-09 21:25:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT 0,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/empreendimentos', '', 1, 'Empreendimentos', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 16:58:52'),
(2, 1, 0, 0, NULL, '/imoveis', '', 2, 'Imóveis', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 16:58:52'),
(4, 1, 0, 2, 'Srapid\\Page\\Models\\Page', '/blog', '', 3, 'Blog', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:35:00'),
(5, 1, 0, 0, NULL, '/vagas', '', 4, 'Vagas', '', '_self', 0, '2021-12-09 21:25:35', '2023-03-06 11:16:20'),
(6, 1, 0, 4, 'Srapid\\Page\\Models\\Page', '/contato', '', 5, 'Contato', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:25:10'),
(7, 2, 0, 3, 'Srapid\\Page\\Models\\Page', '/sobre', '', 0, 'Sobre Nós', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:26:44'),
(8, 2, 0, 4, 'Srapid\\Page\\Models\\Page', '/contato', '', 1, 'Contato', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:25:10'),
(9, 2, 0, 0, NULL, '/vagas', '', 2, 'Vagas', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 13:14:15'),
(10, 2, 0, 5, 'Srapid\\Page\\Models\\Page', '/termos-condicoes', '', 3, 'Termos e Condições', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:26:57'),
(11, 3, 0, 0, NULL, '/empreendimentos', '', 0, 'Empreendimentos', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 13:15:53'),
(12, 3, 0, 0, NULL, '/imoveis', '', 1, 'Todos os Imóveis', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 13:15:53'),
(13, 3, 0, 0, NULL, '/imoveis?type=sale', '', 2, 'Imóveis para venda', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 13:16:34'),
(14, 3, 0, 0, NULL, '/imoveis?type=rent', '', 3, 'Imóveis para alugar', '', '_self', 0, '2021-12-09 21:25:35', '2022-08-08 13:16:34'),
(15, 4, 0, 2, 'Srapid\\Page\\Models\\Page', '/blog', '', 0, 'Últimas Notícias', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:31:07'),
(16, 4, 0, 2, 'Srapid\\Blog\\Models\\Category', '/blog/house-architecture', '', 1, 'Casa & Arquitetura', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:33:27'),
(17, 4, 0, 4, 'Srapid\\Blog\\Models\\Category', '/blog/house-design', '', 2, 'Design de Interiores', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:33:27'),
(18, 4, 0, 6, 'Srapid\\Blog\\Models\\Category', '/blog/building-materials', '', 3, 'Materiais de Construção', '', '_self', 0, '2021-12-09 21:25:35', '2022-12-05 10:33:27'),
(37, 1, 0, 1, 'Srapid\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2022-08-08 16:58:52', '2022-11-30 18:06:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(5, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(19, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(21, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(24, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(34, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 06:03:11', '2019-11-21 06:03:11'),
(42, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(58, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Category', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Post', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Post', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Post', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Blog\\Models\\Post', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(75, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Career\\Models\\Career', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(77, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Srapid\\Career\\Models\\Career', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(88, 18, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(89, 20, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(90, 22, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(91, 24, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(92, 26, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(93, 28, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(94, 30, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(95, 32, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(96, 34, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(100, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(101, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(102, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Srapid\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(104, 12, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:32:03', '2022-08-08 18:32:03'),
(105, 11, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:32:16', '2022-08-08 18:32:16'),
(106, 10, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:32:27', '2022-08-08 18:32:27'),
(107, 9, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:32:58', '2022-08-08 18:32:58'),
(108, 8, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:33:16', '2022-08-08 18:33:16'),
(109, 7, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:33:29', '2022-08-08 18:33:29'),
(110, 6, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:33:39', '2022-08-08 18:33:39'),
(111, 5, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:33:47', '2022-08-08 18:33:47'),
(112, 4, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:33:59', '2022-08-08 18:33:59'),
(113, 3, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:34:11', '2022-08-08 18:34:11'),
(114, 2, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Feature', '2022-08-08 18:34:32', '2022-08-08 18:34:32'),
(115, 11, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:34:46', '2022-08-08 18:34:46'),
(116, 10, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:34:55', '2022-08-08 18:34:55'),
(117, 9, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:35:04', '2022-08-08 18:35:04'),
(118, 8, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:35:23', '2022-08-08 18:35:23'),
(119, 7, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:35:34', '2022-08-08 18:35:34'),
(120, 6, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:35:45', '2022-08-08 18:35:45'),
(121, 5, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:35:58', '2022-08-08 18:35:58'),
(122, 4, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:36:17', '2022-08-08 18:36:17'),
(123, 3, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:36:29', '2022-08-08 18:36:29'),
(124, 2, 'icon_image', '[null]', 'Srapid\\RealEstate\\Models\\Facility', '2022-08-08 18:36:46', '2022-08-08 18:36:46'),
(125, 36, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-08 18:58:26', '2022-08-08 18:58:26'),
(130, 13, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Project', '2022-08-10 16:45:22', '2022-08-10 16:47:08'),
(131, 37, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-10 18:10:40', '2022-08-10 18:10:40'),
(132, 38, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-11 18:21:36', '2022-08-11 18:21:41'),
(133, 39, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-11 19:24:59', '2022-08-11 19:24:59'),
(134, 40, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-11 19:27:14', '2022-08-11 19:27:14'),
(135, 41, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-11 19:52:26', '2022-08-11 19:52:26'),
(136, 14, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Project', '2022-08-13 15:03:29', '2022-08-13 15:03:29'),
(137, 15, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Project', '2022-08-13 15:05:54', '2022-08-13 15:06:27'),
(138, 16, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Project', '2022-08-13 15:08:21', '2022-08-13 15:08:37'),
(139, 42, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-13 15:10:41', '2022-08-13 15:11:01'),
(140, 43, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-13 15:24:08', '2022-08-13 15:25:00'),
(141, 17, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Project', '2022-08-15 19:37:50', '2022-08-15 19:37:50'),
(142, 44, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 16:10:06', '2022-08-18 16:10:06'),
(143, 45, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 16:11:46', '2022-08-18 16:11:46'),
(144, 46, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 16:14:20', '2022-08-18 16:14:20'),
(145, 47, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 16:19:33', '2022-08-18 16:19:33'),
(146, 48, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 16:43:31', '2022-08-18 16:43:31'),
(147, 49, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 17:47:17', '2022-08-18 17:47:17'),
(148, 50, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2ABFuMGkp9k\"}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 18:05:16', '2022-08-18 18:05:16'),
(149, 51, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 18:07:06', '2022-08-18 18:07:06'),
(150, 52, 'video', '[{\"url\":null}]', 'Srapid\\RealEstate\\Models\\Property', '2022-08-18 18:10:16', '2022-08-18 18:10:16'),
(151, 53, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=iaJZMMBtIyk\"}]', 'Srapid\\RealEstate\\Models\\Property', '2023-03-30 18:14:03', '2023-03-30 18:14:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(19, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_09_07_030654_update_menu_nodes_table', 1),
(22, '2019_09_07_045041_update_slugs_table', 1),
(23, '2019_09_07_050405_update_slug_reference_for_page', 1),
(24, '2019_09_08_014859_update_meta_boxes_table', 1),
(25, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(26, '2019_09_12_073711_update_media_url', 1),
(27, '2019_09_12_073711_update_media_url_for_current_data', 1),
(28, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(31, '2018_06_22_032304_create_real_estate_table', 2),
(32, '2015_06_29_025744_create_audit_history', 3),
(33, '2015_06_18_033822_create_blog_table', 4),
(34, '2019_09_07_035526_update_menu_node_reference_type_for_category', 4),
(35, '2019_09_07_050058_update_slug_reference_for_blog', 4),
(36, '2019_09_07_155716_update_language_meta_for_blog', 4),
(37, '2019_09_08_015552_update_meta_box_data_for_blog', 4),
(38, '2019_10_20_002342_remove_parent_id_in_tags_table', 4),
(40, '2019_09_07_154718_update_lang_meta_table', 5),
(41, '2017_10_24_154832_create_newsletter_table', 6),
(42, '2016_06_17_091537_create_contacts_table', 7),
(43, '2015_08_15_122343_create_notes_table', 8),
(44, '2019_11_18_035125_add_column_type_into_re_properties_table', 9),
(45, '2019_11_18_035712_create_investor_table', 9),
(46, '2019_11_18_040153_update_real_estates_table', 9),
(47, '2019_11_18_041228_drop_table_re_property_categories', 10),
(48, '2019_11_18_082146_create_currencies_table', 11),
(49, '2019_11_18_061011_create_country_table', 12),
(50, '2019_11_18_061730_create_state_table', 12),
(51, '2019_11_18_062515_create_city_table', 12),
(52, '2019_11_19_063851_create_project_features_table', 13),
(53, '2019_11_21_090830_update_project_and_property_table', 14),
(54, '2019_11_21_130139_add_price_to_projects_table', 15),
(55, '2019_11_14_210650_create_consults_table', 16),
(56, '2019_11_26_024326_update_property_type', 17),
(57, '2019_06_24_211801_create_career_table', 18),
(58, '2019_12_03_123314_add_column_slug_into_cities_table', 19),
(59, '2019_12_03_124417_add_column_city_id_into_table_properties_and_projects', 19),
(60, '2017_05_18_080441_create_payment_tables', 20),
(61, '2019_12_10_140938_create_vendor_table', 20),
(62, '2019_12_15_025938_update_column_images_in_real_estate_tables', 20),
(63, '2019_12_17_064316_add_column_period_to_table_re_properties', 20),
(64, '2019_12_24_033049_add_column_author_into_re_properties_table', 20),
(65, '2019_12_24_083810_vendor_create_package_table', 20),
(66, '2019_12_27_004653_update_vendors_table_with_package_data', 20),
(68, '2020_01_08_002704_real_estate_create_type_table', 21),
(69, '2020_01_10_133700_change_re_types_to_re_categories', 22),
(70, '2016_10_07_193005_create_translations_table', 23),
(71, '2020_01_23_133752_update_account_tables', 24),
(72, '2020_02_03_144309_update_column_payment_channel', 25),
(73, '2020_02_06_143217_update_vendor_table', 26),
(74, '2020_02_11_133026_add_description_to_table_payments', 27),
(75, '2020_02_11_140823_create_transactions_table', 27),
(76, '2020_02_23_111922_fix_column_number_block_in_re_properties_table', 27),
(77, '2020_03_24_151004_add_moderation_status_into_properties_table', 28),
(78, '2020_03_25_030953_create_table_vendor_packages', 29),
(79, '2020_03_25_083610_add_column_expire_date_into_re_properties_table', 30),
(80, '2020_03_26_081108_add_column_auto_renew_to_re_properties_table', 31),
(81, '2020_03_16_072752_add_column_abbreviation_to_states_table', 32),
(82, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 33),
(83, '2020_03_23_093053_update_payments_table', 34),
(84, '2020_04_22_074304_add_column_never_expired_to_re_properties_table', 35),
(85, '2020_05_26_014304_add_column_provider_to_oauth_clients_table', 36),
(86, '2020_07_27_085437_add_icon_to_re_features', 37),
(90, '2020_08_21_102728_real_estate_create_facility_table', 38),
(91, '2020_08_22_024455_rename_table_for_accounts', 39),
(92, '2020_08_26_130439_add_column_username_into_table_re_accounts', 40),
(93, '2020_09_09_110653_update_table_careers', 41),
(94, '2020_09_15_111419_fix_old_data_for_re_properties', 42),
(95, '2020_10_05_030817_make_column_charge_id_nullable', 43),
(96, '2020_10_18_134416_fix_audit_logs_table', 44),
(97, '2020_10_24_133432_change_column_distance_to_string', 45),
(99, '2020_10_31_053746_add_column_description_into_re_categories_table', 46),
(100, '2019_01_05_053554_create_jobs_table', 47),
(101, '2020_12_05_112556_change_contact_page_to_a_page', 48),
(102, '2021_02_11_031126_update_price_column_in_projects_and_properties', 49),
(103, '2021_02_16_092633_remove_default_value_for_author_type', 50),
(104, '2021_03_08_024049_add_lat_long_into_real_estate_tables', 51),
(105, '2021_03_27_144913_add_customer_type_into_table_payments', 52),
(106, '2021_05_24_034720_make_column_currency_nullable', 53),
(107, '2021_06_10_091950_add_column_is_featured_to_table_re_accounts', 54),
(108, '2021_07_07_021757_update_table_account_activity_logs', 55),
(109, '2021_07_18_101839_fix_old_theme_options', 56),
(110, '2021_08_05_134214_fix_social_link_theme_options', 57),
(111, '2021_08_09_161302_add_metadata_column_to_payments_table', 58),
(112, '2021_09_29_042758_create_re_categories_multilevel_table', 59),
(113, '2021_10_19_020859_update_metadata_field', 60),
(114, '2021_10_31_031254_add_company_to_accounts_table', 61),
(116, '2021_12_03_030600_create_blog_translations', 62),
(118, '2021_12_03_084118_create_location_translations', 62),
(119, '2021_12_03_094518_migrate_old_location_data', 62),
(120, '2021_12_04_095357_create_careers_translations_table', 62),
(121, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 63),
(122, '2021_12_10_034807_create_real_estate_translation_tables', 64),
(123, '2021_12_18_081636_add_property_project_views_count', 65),
(124, '2022_01_16_085908_improve_plugin_location', 66),
(125, '2016_10_03_032336_create_languages_table', 67),
(126, '2021_10_25_021023_fix-priority-load-for-language-advanced', 68),
(127, '2021_12_03_075608_create_page_translations', 68);

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<shortcode class=\"bb-shortcode\">[featured-projects][/featured-projects]</shortcode><shortcode class=\"bb-shortcode\">[youtube-video]https://www.youtube.com/watch?v=Ch_4C36HGR8[/youtube-video]</shortcode><shortcode class=\"bb-shortcode\">[properties-for-sale][/properties-for-sale]</shortcode><shortcode class=\"bb-shortcode\">[properties-for-rent][/properties-for-rent]</shortcode><shortcode class=\"bb-shortcode\">[recently-viewed-properties title=\"Imóveis Visto Recentemente\"][/recently-viewed-properties]</shortcode><shortcode class=\"bb-shortcode\">[latest-news][/latest-news]</shortcode><p>&nbsp;</p>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-12-09 21:25:35', '2022-12-05 10:27:38'),
(2, 'Blog', '<p>---</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-09 21:25:35', '2022-12-05 10:28:05'),
(3, 'Sobre Nós', '<p>Nosso principal objetivo é a satisfação do cliente, atendendo com perfeição às suas necessidades.Possuímos uma equipe treinada e atualizada, proporcionando o mais alto nível de eficiência técnica.</p><p>O principal diferencial da imobiliária está em sua visão empresarial, adquirida no mundo corporativo que foi transferida e implementada à empresa, para que além do “know how” técnico possa ser garantida uma gestão profissional, dinâmica, moderna e com foco no desejo do cliente.</p><p>Utilizamos as mais modernas ferramentas disponíveis no mercado para controle de banco de dados de imóveis, proprietários, vendedores, compradores, fiadores, bem como geração de relatórios financeiros, gerenciais, análises de risco, dentre outros.</p><p>Com uma postura inovadora acredita numa parceria sólida, com uma visão de médio e longo prazo, formando a base para um relacionamento cujos benefícios sejam mútuos. Para isso vem por meio desta oferecer um serviço de assessoria imobiliária embasada numa inovadora assessoria periódica que visa um atendimento pleno e completo de suas necessidades.</p>', 1, NULL, 'default', 0, 'Nosso principal objetivo é a satisfação do cliente, atendendo com perfeição às suas necessidades.Possuímos uma equipe treinada e atualizada, proporcionando o mais alto nível de eficiência técnica.', 'published', '2021-12-09 21:25:35', '2022-07-04 20:03:37'),
(4, 'Contato', '<shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode><p><br>&nbsp;</p><h3>Direções</h3><shortcode class=\"bb-shortcode\">[google-map]Av. Paulista, 300, Bela Vista, São Paulo, SP[/google-map]</shortcode><p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-09 21:25:35', '2022-08-22 19:21:11'),
(5, 'Termos e Condições', '<p>O acesso e uso do site da Imobiliária está sujeito aos seguintes termos, condições e leis relevantes do Brasil.</p><p><strong>1. Direitos autorais</strong></p><p>Os direitos autorais e outros direitos de propriedade intelectual de todos os textos, imagens, áudios, softwares e outros conteúdos deste site são de propriedade da Imobiliaria e suas afiliadas. Os usuários estão autorizados a visualizar o conteúdo do site, citar o conteúdo por impressão, baixar o disco rígido e distribuí-lo a terceiros para fins não comerciais, fornecendo informações ou para fins pessoais. Qualquer conteúdo deste site não pode ser usado para venda ou distribuição com fins lucrativos, nem pode ser editado ou incluído em qualquer outra publicação ou site.</p><p><strong>2. Conteúdo</strong></p><p>As informações neste site são compiladas com grande confiança, mas apenas para fins de pesquisa de informações gerais. Embora nos esforcemos para manter informações atualizadas e precisas, não fazemos representações ou garantias de qualquer maneira em relação à integridade, precisão, confiabilidade, adequação ou disponibilidade em relação ao site ou informações relacionadas, produtos, serviços ou imagens dentro do site para qualquer propósito.</p><p>A Imobiliária e seus funcionários, gerentes e agentes não são responsáveis ​​por quaisquer perdas, danos ou despesas incorridas como resultado do acesso e uso deste site e dos sites. A web está conectada a ela, incluindo, mas não se limitando a, lucros cessantes, perdas diretas ou indiretas. Também não somos responsáveis, ou solidariamente, se o site estiver temporariamente inacessível devido a problemas técnicos fora de nosso controle. Quaisquer comentários, sugestões, imagens, ideias e outras informações ou materiais que os usuários nos enviarem por meio deste site se tornarão nossa propriedade exclusiva, incluindo o direito de surgir no futuro associado a nós.</p><p><strong>3. Observação sobre sites conectados</strong></p><p>Em muitos pontos do site, os usuários podem obter links para outros sites relacionados a um aspecto específico. Isso não significa que estamos relacionados aos sites ou empresas proprietárias desses sites. Embora pretendamos conectar usuários a sites de interesse, não somos responsáveis ​​ou co-responsáveis ​​por nossos funcionários, gerentes ou representantes. com outros sites e informações neles contidas.</p>', 1, NULL, 'default', 0, 'Os direitos autorais e outros direitos de propriedade intelectual de todos os textos, imagens, áudios, softwares e outros conteúdos deste site são de propriedade da Flex Home e suas afiliadas. Os usuários estão autorizados a visualizar o conteúdo do site, citar o conteúdo imprimindo, baixando o disco rígido e distribuindo-o a outros para fins não comerciais.', 'published', '2021-12-09 21:25:35', '2022-07-04 20:01:32'),
(6, 'Política de Cookies', '<p><strong>Consentimento de cookies</strong></p><p>Para usar este site, estamos usando cookies e coletando alguns dados. Para estar em conformidade com o GDPR da UE, damos a você a opção de nos permitir usar determinados cookies e coletar alguns dados.</p><p><strong>Dados essenciais</strong></p><p>Os Dados Essenciais são necessários para executar tecnicamente o Site que você está visitando. Você não pode desativá-los.</p><p>- Cookie de Sessão: PHP usa um Cookie para identificar as sessões do usuário. Sem este Cookie o Site não funciona.</p><p>- XSRF-Token Cookie: O Laravel gera automaticamente um \"token\" CSRF para cada sessão de usuário ativa gerenciada pela aplicação. Esse token é usado para verificar se o usuário autenticado é quem realmente está fazendo as solicitações ao aplicativo.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-09 21:25:35', '2022-07-04 19:46:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Srapid\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(105, 'Renovação de Banheiros Antiquados', 'Renovação de Banheiros Antiquados', '<p>Renovação de Banheiros Antiquados</p>', 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/1.jpg', 2481, NULL, '2022-12-05 21:25:40', '2023-03-02 19:55:29'),
(106, 'Principais estratégias de otimização de mecanismos de busca!', 'Quo veniam distinctio qui provident dolorem. Nulla veniam a nostrum optio odio sit nihil distinctio. Quae est tempora qui aperiam. Animi vitae ea qui saepe nihil.', '<p>texto</p>', 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/2.jpg', 435, NULL, '2022-12-05 21:25:40', '2023-03-02 19:55:18'),
(107, 'Qual empresa você escolheria?', 'Ut quod dolorum et modi. At quae ratione quos facere. Molestiae expedita ratione vitae ut ratione. Officia et blanditiis tempore ullam dolores autem quis.', NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/3.jpg', 2387, NULL, '2022-12-05 21:25:40', '2022-08-25 17:28:53'),
(108, 'Truques de vendas de revendedores de carros usados expostos', 'Ab itaque eaque quisquam ut dolor quia nobis maxime. Ex reiciendis unde cum voluptatem quisquam ducimus. Sed numquam sit harum qui culpa nihil tempore. Laboriosam occaecati eligendi praesentium.', '<p>texto</p>', 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/4.jpg', 899, NULL, '2022-12-05 21:25:40', '2023-03-02 19:55:11'),
(109, '20 maneiras de construções ecológicas e baratas', '20 maneiras de construções ecológicas e baratas', '<p>There seemed to Alice severely. \'What are tarts made of?\' Alice asked in a bit.\' \'Perhaps it doesn\'t matter much,\' thought Alice, \'they\'re sure to do so. \'Shall we try another figure of the words a little, half expecting to see what was on the stairs. Alice knew it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Owl and the poor child, \'for I can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to a day-school, too,\' said Alice; \'living at the Gryphon said, in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Gryphon. \'Of course,\' the Gryphon added \'Come, let\'s try Geography. London is the use of this was her turn or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, with a smile. There was a good opportunity for making her escape; so she tried to look over their slates; \'but it sounds uncommon nonsense.\' Alice said with a round face, and large eyes like a tunnel for some time.</p><p class=\"text-center\"><img src=\"http://site-rapido.test/storage/news/4.jpg\" alt=\"4.jpg\"></p><p>I only wish people knew that: then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, perhaps,\' said the Pigeon had finished. \'As if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was obliged to say when I learn music.\' \'Ah! that accounts for it,\' said the Mock Turtle with a soldier on each side to guard him; and near the centre of the way to hear his history. I must sugar.</p><p class=\"text-center\"><img src=\"http://site-rapido.test/storage/news/7.jpg\" alt=\"7.jpg\"></p><p>Dormouse again, so violently, that she was to find her in a day did you manage to do that,\' said the Duchess: \'and the moral of that is--\"Be what you were me?\' \'Well, perhaps you were all writing very busily on slates. \'What are they doing?\' Alice whispered to the general conclusion, that wherever you go on? It\'s by far the most curious thing I ever saw in another moment down went Alice after it, never once considering how in the kitchen that did not like to have it explained,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, who felt ready to agree to everything that Alice had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have to go through next walking about at the top of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had been found and handed them round as prizes. There was a very little use without my shoulders. Oh, how I wish I could.</p><p class=\"text-center\"><img src=\"http://site-rapido.test/storage/news/13.jpg\" alt=\"13.jpg\"></p><p>When the sands are all dry, he is gay as a last resource, she put one arm out of breath, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little bit, and said anxiously to herself, \'after such a new kind of thing never happened, and now here I am very tired of being such a dear quiet thing,\' Alice went on saying to herself, \'Which way? Which way?\', holding her hand on the top of his pocket, and was going to happen next. First, she tried to say it over) \'--yes, that\'s about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it out to the jury, in a furious passion, and went to the door. \'Call the next witness.\' And he got up and walking off to other parts of the court. All this time with great emphasis, looking hard at Alice the moment she appeared on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the pack, she.</p>', 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/5.jpg', 1427, NULL, '2022-12-05 21:25:40', '2022-08-25 18:51:38'),
(110, 'O melhor dos condomínios e os segredos escondidos', 'O melhor dos condomínios e os segredos escondidos', NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/6.jpg', 1566, NULL, '2022-12-05 21:25:40', '2022-08-25 18:53:04'),
(111, 'A decoração do ambiente deve ser feito por um profissional', 'A decoração do ambiente deve ser feito por um profissional', NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/7.jpg', 241, NULL, '2022-12-05 21:25:40', '2022-08-25 18:50:33'),
(112, 'Cantos bem definidos dão um charme e sobriedade a construção', 'Consequatur asperiores quod similique voluptatem omnis consequuntur est. Quibusdam voluptatum et delectus sed. Aut ut ab id ut quibusdam. Deserunt delectus inventore quasi cumque et.', NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/8.jpg', 254, NULL, '2022-12-05 21:25:40', '2022-08-25 18:49:11'),
(113, 'Como alguns detalhes pode fazer toda a diferença', 'Qui velit tempore odio non laboriosam. Est odio eos vel porro est atque. Et ad quod in nesciunt autem molestiae aut. Doloremque non in dolores rerum soluta at totam aut.', NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', 1, 'news/9.jpg', 926, NULL, '2022-12-05 21:25:40', '2022-08-25 18:48:10'),
(114, '10 razões para abusar do Branco na sua casa', 'Facilis voluptas cumque vitae minus. Aut repellendus qui nisi unde voluptatem et quam itaque. Optio aut voluptatem velit non maxime quo quis. Quos id ut quo inventore.', '<p>texto aqui</p><p>&nbsp;</p>', 'published', 1, 'Srapid\\ACL\\Models\\User', 0, 'news/10.jpg', 1900, NULL, '2022-12-05 21:25:40', '2022-08-25 17:30:39'),
(115, 'Como o minimalismo pode ajudar você a economizar e manter o ambiente organizado', 'Como o minimalismo pode ajudar você a economizar e manter o ambiente organizado', '<p>As soon as there was mouth enough for it to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King said, turning to Alice, and she went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a queer-shaped little creature, and held it out into the book her sister on the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a grin,\' thought Alice; \'I must be removed,\' said the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'Exactly so,\' said the King. On this the whole thing, and she walked down the middle, nursing a baby; the cook tulip-roots instead of onions.\' Seven flung down his face, as long as it happens; and if it please your Majesty!\' the Duchess to play with, and oh! ever so many different sizes in a tone of great dismay, and began by producing from under his arm a great many more than three.\' \'Your hair wants cutting,\' said the Mock.</p><p class=\"text-center\"><img src=\"http://site-rapido.test/storage/news/4.jpg\" alt=\"4.jpg\"></p><p>I beg your pardon!\' she exclaimed in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never heard it say to itself, half to herself, as well as if a dish or kettle had been found and handed them round as prizes. There was a little pattering of feet in the way the people that walk with their fur clinging close to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle Soup is made from,\' said the.</p><p class=\"text-center\"><img src=\"http://site-rapido.test/storage/news/6.jpg\" alt=\"6.jpg\"></p><p>Mock Turtle. \'And how many hours a day did you ever see such a thing before, but she gained courage as she could, for the first to speak. \'What size do you call it purring, not growling,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter were having tea at it: a Dormouse was sitting on a summer day: The Knave shook his grey locks, \'I kept all my life!\' She had not noticed before, and he checked himself suddenly: the others looked round also, and all the while, and fighting for the immediate adoption of more energetic remedies--\' \'Speak Portugues!\' said the Queen. \'I never could abide figures!\' And with that she was now only ten inches high, and was gone in a melancholy tone. \'Nobody seems to be a person of authority among them, called out, \'Sit down, all of them can explain it,\' said Alice, \'how am I to get through the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, and began an account of the court,\" and I don\'t want to be?\' it asked. \'Oh, I\'m.</p><p class=\"text-center\"><img src=\"http://site-rapido.test/storage/news/14.jpg\" alt=\"14.jpg\"></p><p>I\'m never sure what I\'m going to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for a conversation. \'You don\'t know one,\' said Alice. \'Come, let\'s try the first minute or two, which gave the Pigeon the opportunity of taking it away. She did it so quickly that the Queen of Hearts, and I had to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up on to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting somewhere near the looking-glass. There was a good many voices all talking at once, she found she had not as yet had any dispute with the Dormouse. \'Write that down,\' the King eagerly, and he called the Queen, and in THAT direction,\' waving the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the birds hurried off at once crowded round her once more, while the rest of the evening, beautiful Soup! \'Beautiful.</p>', 'published', 1, 'Srapid\\ACL\\Models\\User', 0, 'news/11.jpg', 504, NULL, '2022-12-05 21:25:40', '2022-08-25 18:54:06'),
(116, '5 maneiras de redecorar a sua cozinha gastando menos de um salário minimo', '5 maneiras de redecorar a sua cozinha gastando menos de um salário minimo', NULL, 'published', 1, 'Srapid\\ACL\\Models\\User', 0, 'news/12.jpg', 2417, NULL, '2022-12-05 21:25:40', '2022-08-25 18:54:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(17, 4, 9),
(18, 4, 10),
(19, 2, 11),
(20, 6, 12),
(21, 4, 13),
(22, 4, 14),
(23, 4, 15),
(24, 6, 16),
(25, 6, 17),
(26, 6, 18),
(27, 6, 19),
(28, 1, 20),
(29, 1, 21),
(30, 4, 22),
(31, 6, 23),
(32, 2, 24),
(40, 8, 32),
(41, 8, 33),
(42, 8, 34),
(49, 1, 41),
(50, 6, 42),
(51, 1, 43),
(52, 6, 44),
(53, 1, 45),
(54, 2, 46),
(55, 2, 47),
(56, 6, 48),
(57, 1, 49),
(58, 1, 50),
(59, 6, 51),
(60, 2, 52),
(61, 6, 53),
(62, 1, 54),
(63, 2, 55),
(64, 6, 56),
(65, 2, 57),
(66, 6, 58),
(67, 1, 59),
(68, 4, 60),
(69, 2, 61),
(70, 6, 62),
(71, 6, 63),
(72, 2, 64),
(73, 4, 65),
(74, 4, 66),
(75, 6, 67),
(76, 6, 68),
(77, 6, 69),
(78, 4, 70),
(79, 6, 71),
(80, 1, 72),
(81, 2, 73),
(82, 6, 74),
(83, 4, 75),
(84, 4, 76),
(85, 1, 77),
(86, 1, 78),
(87, 4, 79),
(88, 2, 80),
(89, 2, 81),
(90, 2, 82),
(91, 1, 83),
(92, 1, 84),
(93, 6, 85),
(94, 4, 86),
(95, 1, 87),
(96, 2, 88),
(97, 4, 89),
(98, 4, 90),
(99, 1, 91),
(100, 4, 92),
(101, 6, 93),
(102, 2, 94),
(103, 1, 95),
(104, 1, 96),
(105, 6, 97),
(106, 1, 98),
(107, 4, 99),
(108, 4, 100),
(109, 6, 101),
(110, 2, 102),
(111, 2, 103),
(112, 4, 104),
(113, 6, 105),
(114, 6, 106),
(115, 4, 107),
(116, 6, 108),
(117, 1, 109),
(118, 6, 110),
(119, 4, 111),
(120, 4, 112),
(121, 1, 113),
(122, 1, 114),
(123, 6, 115),
(124, 4, 116),
(129, 2, 106);

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(4, 1, 9),
(5, 2, 9),
(6, 3, 9),
(7, 1, 10),
(8, 2, 10),
(9, 3, 10),
(10, 1, 11),
(11, 2, 11),
(12, 3, 11),
(13, 1, 12),
(14, 2, 12),
(15, 3, 12),
(16, 1, 13),
(17, 2, 13),
(18, 3, 13),
(19, 1, 14),
(20, 2, 14),
(21, 3, 14),
(22, 1, 15),
(23, 2, 15),
(24, 3, 15),
(25, 1, 16),
(26, 2, 16),
(27, 3, 16),
(28, 1, 17),
(29, 2, 17),
(30, 3, 17),
(31, 1, 18),
(32, 2, 18),
(33, 3, 18),
(34, 1, 19),
(35, 2, 19),
(36, 3, 19),
(37, 1, 20),
(38, 2, 20),
(39, 3, 20),
(40, 1, 21),
(41, 2, 21),
(42, 3, 21),
(43, 1, 22),
(44, 2, 22),
(45, 3, 22),
(46, 1, 23),
(47, 2, 23),
(48, 3, 23),
(49, 1, 24),
(50, 2, 24),
(51, 3, 24),
(52, 1, 25),
(53, 2, 25),
(54, 3, 25),
(55, 1, 26),
(56, 2, 26),
(57, 3, 26),
(58, 1, 27),
(59, 2, 27),
(60, 3, 27),
(61, 1, 28),
(62, 2, 28),
(63, 3, 28),
(64, 1, 29),
(65, 2, 29),
(66, 3, 29),
(67, 1, 30),
(68, 2, 30),
(69, 3, 30),
(70, 1, 31),
(71, 2, 31),
(72, 3, 31),
(73, 1, 32),
(74, 2, 32),
(75, 3, 32),
(76, 1, 33),
(77, 2, 33),
(78, 3, 33),
(79, 1, 34),
(80, 2, 34),
(81, 3, 34),
(82, 1, 35),
(83, 2, 35),
(84, 3, 35),
(85, 1, 36),
(86, 2, 36),
(87, 3, 36),
(88, 1, 37),
(89, 2, 37),
(90, 3, 37),
(91, 1, 38),
(92, 2, 38),
(93, 3, 38),
(94, 1, 39),
(95, 2, 39),
(96, 3, 39),
(97, 1, 40),
(98, 2, 40),
(99, 3, 40),
(100, 1, 41),
(101, 2, 41),
(102, 3, 41),
(103, 1, 42),
(104, 2, 42),
(105, 3, 42),
(106, 1, 43),
(107, 2, 43),
(108, 3, 43),
(109, 1, 44),
(110, 2, 44),
(111, 3, 44),
(112, 1, 45),
(113, 2, 45),
(114, 3, 45),
(115, 1, 46),
(116, 2, 46),
(117, 3, 46),
(118, 1, 47),
(119, 2, 47),
(120, 3, 47),
(121, 1, 48),
(122, 2, 48),
(123, 3, 48),
(124, 1, 49),
(125, 2, 49),
(126, 3, 49),
(127, 1, 50),
(128, 2, 50),
(129, 3, 50),
(130, 1, 51),
(131, 2, 51),
(132, 3, 51),
(133, 1, 52),
(134, 2, 52),
(135, 3, 52),
(136, 1, 53),
(137, 2, 53),
(138, 3, 53),
(139, 1, 54),
(140, 2, 54),
(141, 3, 54),
(142, 1, 55),
(143, 2, 55),
(144, 3, 55),
(145, 1, 56),
(146, 2, 56),
(147, 3, 56),
(148, 1, 57),
(149, 2, 57),
(150, 3, 57),
(151, 1, 58),
(152, 2, 58),
(153, 3, 58),
(154, 1, 59),
(155, 2, 59),
(156, 3, 59),
(157, 1, 60),
(158, 2, 60),
(159, 3, 60),
(160, 1, 61),
(161, 2, 61),
(162, 3, 61),
(163, 1, 62),
(164, 2, 62),
(165, 3, 62),
(166, 1, 63),
(167, 2, 63),
(168, 3, 63),
(169, 1, 64),
(170, 2, 64),
(171, 3, 64),
(172, 1, 65),
(173, 2, 65),
(174, 3, 65),
(175, 1, 66),
(176, 2, 66),
(177, 3, 66),
(178, 1, 67),
(179, 2, 67),
(180, 3, 67),
(181, 1, 68),
(182, 2, 68),
(183, 3, 68),
(184, 1, 69),
(185, 2, 69),
(186, 3, 69),
(187, 1, 70),
(188, 2, 70),
(189, 3, 70),
(190, 1, 71),
(191, 2, 71),
(192, 3, 71),
(193, 1, 72),
(194, 2, 72),
(195, 3, 72),
(196, 1, 73),
(197, 2, 73),
(198, 3, 73),
(199, 1, 74),
(200, 2, 74),
(201, 3, 74),
(202, 1, 75),
(203, 2, 75),
(204, 3, 75),
(205, 1, 76),
(206, 2, 76),
(207, 3, 76),
(208, 1, 77),
(209, 2, 77),
(210, 3, 77),
(211, 1, 78),
(212, 2, 78),
(213, 3, 78),
(214, 1, 79),
(215, 2, 79),
(216, 3, 79),
(217, 1, 80),
(218, 2, 80),
(219, 3, 80),
(220, 1, 81),
(221, 2, 81),
(222, 3, 81),
(223, 1, 82),
(224, 2, 82),
(225, 3, 82),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 1, 84),
(230, 2, 84),
(231, 3, 84),
(232, 1, 85),
(233, 2, 85),
(234, 3, 85),
(235, 1, 86),
(236, 2, 86),
(237, 3, 86),
(238, 1, 87),
(239, 2, 87),
(240, 3, 87),
(241, 1, 88),
(242, 2, 88),
(243, 3, 88),
(244, 1, 89),
(245, 2, 89),
(246, 3, 89),
(247, 1, 90),
(248, 2, 90),
(249, 3, 90),
(250, 1, 91),
(251, 2, 91),
(252, 3, 91),
(253, 1, 92),
(254, 2, 92),
(255, 3, 92),
(256, 1, 93),
(257, 2, 93),
(258, 3, 93),
(259, 1, 94),
(260, 2, 94),
(261, 3, 94),
(262, 1, 95),
(263, 2, 95),
(264, 3, 95),
(265, 1, 96),
(266, 2, 96),
(267, 3, 96),
(268, 1, 97),
(269, 2, 97),
(270, 3, 97),
(271, 1, 98),
(272, 2, 98),
(273, 3, 98),
(274, 1, 99),
(275, 2, 99),
(276, 3, 99),
(277, 1, 100),
(278, 2, 100),
(279, 3, 100),
(280, 1, 101),
(281, 2, 101),
(282, 3, 101),
(283, 1, 102),
(284, 2, 102),
(285, 3, 102),
(286, 1, 103),
(287, 2, 103),
(288, 3, 103),
(289, 1, 104),
(290, 2, 104),
(291, 3, 104),
(292, 1, 105),
(293, 2, 105),
(294, 3, 105),
(295, 1, 106),
(296, 2, 106),
(297, 3, 106),
(298, 1, 107),
(299, 2, 107),
(300, 3, 107),
(301, 1, 108),
(302, 2, 108),
(303, 3, 108),
(304, 1, 109),
(305, 2, 109),
(306, 3, 109),
(307, 1, 110),
(308, 2, 110),
(309, 3, 110),
(310, 1, 111),
(311, 2, 111),
(312, 3, 111),
(313, 1, 112),
(314, 2, 112),
(315, 3, 112),
(316, 1, 113),
(317, 2, 113),
(318, 3, 113),
(319, 1, 114),
(320, 2, 114),
(321, 3, 114),
(322, 1, 115),
(323, 2, 115),
(324, 3, 115),
(325, 1, 116),
(326, 2, 116),
(327, 3, 116);

-- --------------------------------------------------------

--
-- Estrutura da tabela `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Srapid\\Blog\\Models\\Post', 3, 1, 'is_featured', '0', '1', '2019-11-18 02:59:46', '2019-11-18 02:59:46'),
(2, 'Srapid\\Blog\\Models\\Post', 2, 1, 'is_featured', '0', '1', '2019-11-18 03:00:10', '2019-11-18 03:00:10'),
(3, 'Srapid\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2019-11-18 03:00:20', '2019-11-18 03:00:20'),
(4, 'Srapid\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '2019-11-18 08:15:33', '2019-11-18 08:15:33'),
(5, 'Srapid\\Page\\Models\\Page', 3, 1, 'name', 'About', 'About us', '2019-11-27 02:00:29', '2019-11-27 02:00:29'),
(6, 'Srapid\\Page\\Models\\Page', 4, 1, 'name', 'Giới thiệu', 'Về chúng tôi', '2019-11-27 02:00:55', '2019-11-27 02:00:55'),
(7, 'Srapid\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2019-11-27 02:35:37', '2019-11-27 02:35:37'),
(8, 'Srapid\\Page\\Models\\Page', 7, 1, 'name', 'Flex Home', 'Homepage', '2020-02-06 21:54:04', '2020-02-06 21:54:04'),
(9, 'Srapid\\Page\\Models\\Page', 7, 1, 'template', 'default', 'homepage', '2020-02-06 21:55:08', '2020-02-06 21:55:08'),
(10, 'Srapid\\Page\\Models\\Page', 6, 1, 'name', 'Cookie Policy', 'Política de Cookies', '2022-07-04 19:46:16', '2022-07-04 19:46:16'),
(11, 'Srapid\\Page\\Models\\Page', 5, 1, 'name', 'Terms & Conditions', 'Termos e Condições', '2022-07-04 20:01:32', '2022-07-04 20:01:32'),
(12, 'Srapid\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'Os direitos autorais e outros direitos de propriedade intelectual de todos os textos, imagens, áudios, softwares e outros conteúdos deste site são de propriedade da Flex Home e suas afiliadas. Os usuários estão autorizados a visualizar o conteúdo do site, citar o conteúdo imprimindo, baixando o disco rígido e distribuindo-o a outros para fins não comerciais.', '2022-07-04 20:01:32', '2022-07-04 20:01:32'),
(13, 'Srapid\\Page\\Models\\Page', 4, 1, 'name', 'Contact', 'Contato', '2022-07-04 20:01:55', '2022-07-04 20:01:55'),
(14, 'Srapid\\Page\\Models\\Page', 3, 1, 'name', 'About us', 'Sobre Nós', '2022-07-04 20:03:37', '2022-07-04 20:03:37'),
(15, 'Srapid\\Page\\Models\\Page', 3, 1, 'description', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.', 'Nosso principal objetivo é a satisfação do cliente, atendendo com perfeição às suas necessidades.Possuímos uma equipe treinada e atualizada, proporcionando o mais alto nível de eficiência técnica.', '2022-07-04 20:03:37', '2022-07-04 20:03:37'),
(16, 'Srapid\\Page\\Models\\Page', 2, 1, 'name', 'News', 'Notícias', '2022-07-04 20:04:42', '2022-07-04 20:04:42'),
(17, 'Srapid\\Blog\\Models\\Post', 105, 1, 'name', 'The Top 2020 Handbag Trends to Know', 'Renovação de Banheiros Antiquados', '2022-08-18 19:24:47', '2022-08-18 19:24:47'),
(18, 'Srapid\\Blog\\Models\\Post', 105, 1, 'description', 'Vitae sapiente qui deleniti sed est. Ullam dolore et et dolor dolorum a. Culpa et et ullam suscipit.', 'Renovação de Banheiros Antiquados', '2022-08-18 19:24:47', '2022-08-18 19:24:47'),
(19, 'Srapid\\Blog\\Models\\Post', 106, 1, 'name', 'Top Search Engine Optimization Strategies!', 'Principais estratégias de otimização de mecanismos de busca!', '2022-08-25 17:28:23', '2022-08-25 17:28:23'),
(20, 'Srapid\\Blog\\Models\\Post', 107, 1, 'name', 'Which Company Would You Choose?', 'Qual empresa você escolheria?', '2022-08-25 17:28:53', '2022-08-25 17:28:53'),
(21, 'Srapid\\Blog\\Models\\Post', 108, 1, 'name', 'Used Car Dealer Sales Tricks Exposed', 'Truques de vendas de revendedores de carros usados expostos', '2022-08-25 17:29:08', '2022-08-25 17:29:08'),
(22, 'Srapid\\Blog\\Models\\Post', 114, 1, 'name', '10 Reasons To Start Your Own, Profitable Website!', '10 razões para abusar do Branco na sua casa', '2022-08-25 17:30:22', '2022-08-25 17:30:22'),
(23, 'Srapid\\Blog\\Models\\Post', 113, 1, 'name', 'A Skin Cream That’s Proven To Work', 'Como alguns detalhes pode fazer toda a diferença', '2022-08-25 18:48:10', '2022-08-25 18:48:10'),
(24, 'Srapid\\Blog\\Models\\Post', 112, 1, 'name', 'Are You Still Using That Slow, Old Typewriter?', 'Cantos bem definidos dão um charme e sobriedade a construção', '2022-08-25 18:49:11', '2022-08-25 18:49:11'),
(25, 'Srapid\\Blog\\Models\\Post', 111, 1, 'name', 'Imagine Losing 20 Pounds In 14 Days!', 'A decoração do ambiente deve ser feito por um profissional', '2022-08-25 18:50:33', '2022-08-25 18:50:33'),
(26, 'Srapid\\Blog\\Models\\Post', 111, 1, 'description', 'Rerum quia corrupti officia explicabo quos. Quam autem repellat non distinctio. Debitis officia tempora in.', 'A decoração do ambiente deve ser feito por um profissional', '2022-08-25 18:50:33', '2022-08-25 18:50:33'),
(27, 'Srapid\\Blog\\Models\\Post', 109, 1, 'name', '20 Ways To Sell Your Product Faster', '20 maneiras de construções ecológicas e baratas', '2022-08-25 18:51:38', '2022-08-25 18:51:38'),
(28, 'Srapid\\Blog\\Models\\Post', 109, 1, 'description', 'Dolorem iure nam est sunt. Cumque quidem voluptatem et eos non sit aut. Voluptatibus ex ullam impedit.', '20 maneiras de construções ecológicas e baratas', '2022-08-25 18:51:38', '2022-08-25 18:51:38'),
(29, 'Srapid\\Blog\\Models\\Post', 110, 1, 'name', 'The Secrets Of Rich And Famous Writers', 'O melhor dos condomínios e os segredos escondidos', '2022-08-25 18:53:04', '2022-08-25 18:53:04'),
(30, 'Srapid\\Blog\\Models\\Post', 110, 1, 'description', 'Eos dolores quam mollitia ipsa libero neque. Libero placeat voluptatum ad eum rerum incidunt et. Voluptatum dolor aut nulla harum non ut ut.', 'O melhor dos condomínios e os segredos escondidos', '2022-08-25 18:53:04', '2022-08-25 18:53:04'),
(31, 'Srapid\\Blog\\Models\\Post', 115, 1, 'name', 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Como o minimalismo pode ajudar você a economizar e manter o ambiente organizado', '2022-08-25 18:54:06', '2022-08-25 18:54:06'),
(32, 'Srapid\\Blog\\Models\\Post', 115, 1, 'description', 'Est non aperiam voluptatem asperiores hic pariatur et animi. Quas nulla nulla architecto quod distinctio similique commodi. Nulla dolore aut maiores non dolores assumenda.', 'Como o minimalismo pode ajudar você a economizar e manter o ambiente organizado', '2022-08-25 18:54:06', '2022-08-25 18:54:06'),
(33, 'Srapid\\Blog\\Models\\Post', 116, 1, 'name', 'Apple iMac with Retina 5K display review', '5 maneiras de redecorar a sua cozinha gastando menos de um salário minimo', '2022-08-25 18:54:48', '2022-08-25 18:54:48'),
(34, 'Srapid\\Blog\\Models\\Post', 116, 1, 'description', 'Ducimus eligendi et laborum magnam quia sequi aspernatur. Repellendus ut sapiente odio laborum. Explicabo voluptas laudantium tenetur unde tenetur soluta.', '5 maneiras de redecorar a sua cozinha gastando menos de um salário minimo', '2022-08-25 18:54:48', '2022-08-25 18:54:48'),
(35, 'Srapid\\Page\\Models\\Page', 1, 1, 'is_featured', '0', '1', '2022-12-05 10:27:26', '2022-12-05 10:27:26'),
(36, 'Srapid\\Page\\Models\\Page', 1, 1, 'is_featured', '1', '0', '2022-12-05 10:27:38', '2022-12-05 10:27:38'),
(37, 'Srapid\\Page\\Models\\Page', 2, 1, 'name', 'Notícias', 'Blog', '2022-12-05 10:28:05', '2022-12-05 10:28:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `username`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `credits`, `is_featured`, `company`) VALUES
(1, 'Benjamin', 'Natan', 'Caterpillar took the hookah.', NULL, 'user@scriptphp.ru', 'natan', '$2y$10$8pHVU0.7Kaz9YB/bKPv8D.Bzahog0k2oiJcsnv4ki1p93hy5//TqW', 1739, '2022-11-14', '12997274876', '2021-12-10 04:25:30', NULL, NULL, '2021-12-09 21:25:30', '2022-11-14 13:54:45', 10, 1, 'Imobiária'),
(12, 'Usuario', 'SiteRapido', NULL, 'male', 'user1@scriptphp.ru', 'user', '$2y$10$CYnfMUurc6yH7Wfdpdd.7en6Lie.WH3ozoRB0ujOFVM4Um5w3ztuy', 1724, NULL, '114000000000', '2022-08-09 20:04:07', NULL, NULL, '2022-08-09 20:04:07', '2022-08-09 20:25:41', 1, 0, NULL),
(13, 'Joao', 'Jones', NULL, NULL, 'joao@scriptphp.ru', 'joao', '$2y$10$ym0yVTIldFfkT4fqY1dm8uYZCagIL2tx4pSRDeBRIN8JpAUzV3N0e', 1737, '2022-11-14', '12997274876', '2022-11-08 12:04:07', NULL, NULL, '2022-11-08 12:04:06', '2022-11-14 13:53:00', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_account_packages`
--

CREATE TABLE `re_account_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_account_packages`
--

INSERT INTO `re_account_packages` (`id`, `package_id`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 1, NULL, NULL, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_categories`
--

CREATE TABLE `re_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Apartamento', NULL, 'published', 0, 1, '2021-12-09 21:25:29', '2022-08-08 18:37:24', 0),
(2, 'Vila', NULL, 'published', 1, 0, '2021-12-09 21:25:29', '2022-08-08 18:38:30', 0),
(3, 'Condomínio', NULL, 'published', 2, 0, '2021-12-09 21:25:29', '2022-08-08 18:38:08', 0),
(4, 'Casa', NULL, 'published', 3, 0, '2021-12-09 21:25:29', '2022-08-08 18:37:45', 0),
(5, 'Terreno', NULL, 'published', 4, 0, '2021-12-09 21:25:29', '2022-08-08 18:37:52', 0),
(6, 'Comercial', NULL, 'published', 5, 0, '2021-12-09 21:25:29', '2022-08-08 18:38:01', 0),
(7, 'Sítio', NULL, 'published', 0, 0, '2022-08-08 18:38:38', '2022-08-08 18:38:38', 0),
(8, 'Chácara', NULL, 'published', 0, 0, '2022-08-08 18:38:47', '2022-08-08 18:38:47', 0),
(9, 'Kitnet', NULL, 'published', 0, 0, '2022-08-08 18:38:55', '2022-08-08 18:39:04', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_categories_translations`
--

CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_consults`
--

CREATE TABLE `re_consults` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'BRL', 'R$', 1, 0, 0, 1, 1, '2021-12-09 21:25:29', '2022-07-20 17:56:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2021-12-09 21:25:29', '2021-12-09 21:25:29'),
(2, 'Supermercado', 'fas fa-cart-plus', 'published', '2021-12-09 21:25:29', '2022-08-08 18:36:46'),
(3, 'Escola', 'fas fa-school', 'published', '2021-12-09 21:25:29', '2022-08-08 18:36:29'),
(4, 'Entretenimento', 'fas fa-hotel', 'published', '2021-12-09 21:25:29', '2022-08-08 18:36:17'),
(5, 'Farmácia', 'fas fa-prescription-bottle-alt', 'published', '2021-12-09 21:25:29', '2022-08-08 18:35:58'),
(6, 'Aeroporto', 'fas fa-plane-departure', 'published', '2021-12-09 21:25:29', '2022-08-08 18:35:45'),
(7, 'Trem', 'fas fa-subway', 'published', '2021-12-09 21:25:29', '2022-08-08 18:35:34'),
(8, 'Parada de Ônibus', 'fas fa-bus', 'published', '2021-12-09 21:25:29', '2022-08-08 18:35:23'),
(9, 'Praia', 'fas fa-umbrella-beach', 'published', '2021-12-09 21:25:29', '2022-08-08 18:35:04'),
(10, 'Shopping', 'fas fa-cart-plus', 'published', '2021-12-09 21:25:29', '2022-08-08 18:34:55'),
(11, 'Banco', 'fas fa-university', 'published', '2021-12-09 21:25:29', '2022-08-08 18:34:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(1, 6, 5, 'Srapid\\RealEstate\\Models\\Project', '1.25'),
(2, 2, 5, 'Srapid\\RealEstate\\Models\\Project', '0.25'),
(6757, 1, 1, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6758, 2, 1, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6759, 3, 1, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6760, 4, 1, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6761, 5, 1, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6762, 6, 1, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6763, 7, 1, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6764, 8, 1, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6765, 9, 1, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6766, 10, 1, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6767, 11, 1, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6768, 1, 2, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6769, 2, 2, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6770, 3, 2, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6771, 4, 2, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6772, 5, 2, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6773, 6, 2, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6774, 7, 2, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6775, 8, 2, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6776, 9, 2, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6777, 10, 2, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6778, 11, 2, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6779, 1, 3, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6780, 2, 3, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6781, 3, 3, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6782, 4, 3, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6783, 5, 3, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6784, 6, 3, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6785, 7, 3, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6786, 8, 3, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6787, 9, 3, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6788, 10, 3, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6789, 11, 3, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6790, 1, 4, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6791, 2, 4, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6792, 3, 4, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6793, 4, 4, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6794, 5, 4, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6795, 6, 4, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6796, 7, 4, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6797, 8, 4, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6798, 9, 4, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6799, 10, 4, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6800, 11, 4, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6801, 1, 5, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6802, 2, 5, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6803, 3, 5, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6804, 4, 5, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6805, 5, 5, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6806, 6, 5, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6807, 7, 5, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6808, 8, 5, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6809, 9, 5, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6810, 10, 5, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6811, 11, 5, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6812, 1, 6, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6813, 2, 6, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6814, 3, 6, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6815, 4, 6, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6816, 5, 6, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6817, 6, 6, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6818, 7, 6, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6819, 8, 6, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6820, 9, 6, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6821, 10, 6, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6822, 11, 6, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6823, 1, 7, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6824, 2, 7, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6825, 3, 7, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6826, 4, 7, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6827, 5, 7, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6828, 6, 7, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6829, 7, 7, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6830, 8, 7, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6831, 9, 7, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6832, 10, 7, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6833, 11, 7, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6834, 1, 8, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6835, 2, 8, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6836, 3, 8, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6837, 4, 8, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6838, 5, 8, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6839, 6, 8, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6840, 7, 8, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6841, 8, 8, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6842, 9, 8, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6843, 10, 8, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6844, 11, 8, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6845, 1, 9, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6846, 2, 9, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6847, 3, 9, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6848, 4, 9, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6849, 5, 9, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6850, 6, 9, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6851, 7, 9, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6852, 8, 9, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6853, 9, 9, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6854, 10, 9, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6855, 11, 9, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6856, 1, 10, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6857, 2, 10, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6858, 3, 10, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6859, 4, 10, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6860, 5, 10, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6861, 6, 10, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6862, 7, 10, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6863, 8, 10, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6864, 9, 10, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6865, 10, 10, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6866, 11, 10, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6867, 1, 11, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6868, 2, 11, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6869, 3, 11, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6870, 4, 11, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6871, 5, 11, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6872, 6, 11, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6873, 7, 11, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6874, 8, 11, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6875, 9, 11, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6876, 10, 11, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6877, 11, 11, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6878, 1, 12, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6879, 2, 12, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6880, 3, 12, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6881, 4, 12, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6882, 5, 12, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6883, 6, 12, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6884, 7, 12, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6885, 8, 12, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6886, 9, 12, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6887, 10, 12, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6888, 11, 12, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6889, 1, 13, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6890, 2, 13, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6891, 3, 13, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6892, 4, 13, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6893, 5, 13, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6894, 6, 13, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6895, 7, 13, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6896, 8, 13, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6897, 9, 13, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6898, 10, 13, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6899, 11, 13, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6900, 1, 14, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6901, 2, 14, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6902, 3, 14, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6903, 4, 14, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6904, 5, 14, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6905, 6, 14, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6906, 7, 14, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6907, 8, 14, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6908, 9, 14, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6909, 10, 14, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6910, 11, 14, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6911, 1, 15, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6912, 2, 15, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6913, 3, 15, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6914, 4, 15, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6915, 5, 15, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6916, 6, 15, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6917, 7, 15, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6918, 8, 15, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6919, 9, 15, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6920, 10, 15, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6921, 11, 15, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6922, 1, 16, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6923, 2, 16, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6924, 3, 16, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6925, 4, 16, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6926, 5, 16, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6927, 6, 16, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6928, 7, 16, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6929, 8, 16, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6930, 9, 16, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6931, 10, 16, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6932, 11, 16, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6933, 1, 17, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6934, 2, 17, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6935, 3, 17, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6936, 4, 17, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6937, 5, 17, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(6938, 6, 17, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6939, 7, 17, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6940, 8, 17, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6941, 9, 17, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6942, 10, 17, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6943, 11, 17, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6944, 1, 18, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6945, 2, 18, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6946, 3, 18, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6947, 4, 18, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6948, 5, 18, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6949, 6, 18, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6950, 7, 18, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6951, 8, 18, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6952, 9, 18, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6953, 10, 18, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6954, 11, 18, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6955, 1, 19, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6956, 2, 19, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6957, 3, 19, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6958, 4, 19, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(6959, 5, 19, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6960, 6, 19, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6961, 7, 19, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6962, 8, 19, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(6963, 9, 19, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6964, 10, 19, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6965, 11, 19, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(6966, 1, 20, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6967, 2, 20, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6968, 3, 20, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6969, 4, 20, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6970, 5, 20, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6971, 6, 20, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6972, 7, 20, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6973, 8, 20, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(6974, 9, 20, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6975, 10, 20, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6976, 11, 20, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6977, 1, 21, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(6978, 2, 21, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(6979, 3, 21, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6980, 4, 21, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6981, 5, 21, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6982, 6, 21, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6983, 7, 21, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6984, 8, 21, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(6985, 9, 21, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6986, 10, 21, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(6987, 11, 21, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(6988, 1, 22, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6989, 2, 22, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(6990, 3, 22, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(6991, 4, 22, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(6992, 5, 22, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(6993, 6, 22, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(6994, 7, 22, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(6995, 8, 22, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(6996, 9, 22, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(6997, 10, 22, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(6998, 11, 22, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(6999, 1, 23, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7000, 2, 23, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7001, 3, 23, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(7002, 4, 23, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(7003, 5, 23, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7004, 6, 23, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7005, 7, 23, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7006, 8, 23, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7007, 9, 23, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(7008, 10, 23, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7009, 11, 23, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(7010, 1, 24, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7011, 2, 24, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7012, 3, 24, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7013, 4, 24, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(7014, 5, 24, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(7015, 6, 24, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7016, 7, 24, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7017, 8, 24, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7018, 9, 24, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(7019, 10, 24, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7020, 11, 24, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(7021, 1, 25, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7022, 2, 25, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7023, 3, 25, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(7024, 4, 25, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7025, 5, 25, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7026, 6, 25, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7027, 7, 25, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7028, 8, 25, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7029, 9, 25, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7030, 10, 25, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7031, 11, 25, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(7032, 1, 26, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(7033, 2, 26, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7034, 3, 26, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7035, 4, 26, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(7036, 5, 26, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(7037, 6, 26, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(7038, 7, 26, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7039, 8, 26, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7040, 9, 26, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7041, 10, 26, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7042, 11, 26, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7043, 1, 27, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7044, 2, 27, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7045, 3, 27, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7046, 4, 27, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7047, 5, 27, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7048, 6, 27, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7049, 7, 27, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7050, 8, 27, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7051, 9, 27, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7052, 10, 27, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7053, 11, 27, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(7054, 1, 28, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(7055, 2, 28, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7056, 3, 28, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(7057, 4, 28, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7058, 5, 28, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7059, 6, 28, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(7060, 7, 28, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(7061, 8, 28, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(7062, 9, 28, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(7063, 10, 28, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(7064, 11, 28, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(7065, 1, 29, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7066, 2, 29, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7067, 3, 29, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(7068, 4, 29, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(7069, 5, 29, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7070, 6, 29, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7071, 7, 29, 'Srapid\\RealEstate\\Models\\Property', '5km'),
(7072, 8, 29, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7073, 9, 29, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7074, 10, 29, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7075, 11, 29, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(7076, 1, 30, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7077, 2, 30, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7078, 3, 30, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(7079, 4, 30, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7080, 5, 30, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7081, 6, 30, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7082, 7, 30, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(7083, 8, 30, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(7084, 9, 30, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7085, 10, 30, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7086, 11, 30, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7087, 1, 31, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7088, 2, 31, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7089, 3, 31, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(7090, 4, 31, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7091, 5, 31, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7092, 6, 31, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7093, 7, 31, 'Srapid\\RealEstate\\Models\\Property', '17km'),
(7094, 8, 31, 'Srapid\\RealEstate\\Models\\Property', '3km'),
(7095, 9, 31, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7096, 10, 31, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7097, 11, 31, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(7098, 1, 32, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(7099, 2, 32, 'Srapid\\RealEstate\\Models\\Property', '19km'),
(7100, 3, 32, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7101, 4, 32, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7102, 5, 32, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7103, 6, 32, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7104, 7, 32, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7105, 8, 32, 'Srapid\\RealEstate\\Models\\Property', '9km'),
(7106, 9, 32, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7107, 10, 32, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(7108, 11, 32, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7109, 1, 33, 'Srapid\\RealEstate\\Models\\Property', '10km'),
(7110, 2, 33, 'Srapid\\RealEstate\\Models\\Property', '15km'),
(7111, 3, 33, 'Srapid\\RealEstate\\Models\\Property', '7km'),
(7112, 4, 33, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7113, 5, 33, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7114, 6, 33, 'Srapid\\RealEstate\\Models\\Property', '20km'),
(7115, 7, 33, 'Srapid\\RealEstate\\Models\\Property', '18km'),
(7116, 8, 33, 'Srapid\\RealEstate\\Models\\Property', '12km'),
(7117, 9, 33, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7118, 10, 33, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7119, 11, 33, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7120, 1, 34, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7121, 2, 34, 'Srapid\\RealEstate\\Models\\Property', '13km'),
(7122, 3, 34, 'Srapid\\RealEstate\\Models\\Property', '16km'),
(7123, 4, 34, 'Srapid\\RealEstate\\Models\\Property', '2km'),
(7124, 5, 34, 'Srapid\\RealEstate\\Models\\Property', '4km'),
(7125, 6, 34, 'Srapid\\RealEstate\\Models\\Property', '8km'),
(7126, 7, 34, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7127, 8, 34, 'Srapid\\RealEstate\\Models\\Property', '14km'),
(7128, 9, 34, 'Srapid\\RealEstate\\Models\\Property', '11km'),
(7129, 10, 34, 'Srapid\\RealEstate\\Models\\Property', '6km'),
(7130, 11, 34, 'Srapid\\RealEstate\\Models\\Property', '1km'),
(7131, 9, 35, 'Srapid\\RealEstate\\Models\\Property', '100'),
(7132, 11, 35, 'Srapid\\RealEstate\\Models\\Property', '0,5'),
(7149, 1, 36, 'Srapid\\RealEstate\\Models\\Property', '0,5'),
(7150, 2, 36, 'Srapid\\RealEstate\\Models\\Property', '0,1'),
(7151, 3, 36, 'Srapid\\RealEstate\\Models\\Property', '0,3'),
(7152, 4, 36, 'Srapid\\RealEstate\\Models\\Property', '0,1'),
(7153, 6, 36, 'Srapid\\RealEstate\\Models\\Property', '10'),
(7154, 9, 36, 'Srapid\\RealEstate\\Models\\Property', '100'),
(7155, 11, 36, 'Srapid\\RealEstate\\Models\\Property', '0,2'),
(7156, 5, 36, 'Srapid\\RealEstate\\Models\\Property', '0,1'),
(7166, 2, 13, 'Srapid\\RealEstate\\Models\\Project', '0,5'),
(7167, 3, 13, 'Srapid\\RealEstate\\Models\\Project', '0,4'),
(7168, 4, 13, 'Srapid\\RealEstate\\Models\\Project', '0,1'),
(7170, 1, 37, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7171, 2, 37, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7172, 3, 37, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7226, 3, 46, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7227, 10, 46, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7228, 11, 46, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7229, 1, 52, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7230, 2, 52, 'Srapid\\RealEstate\\Models\\Property', '0,5'),
(7231, 6, 52, 'Srapid\\RealEstate\\Models\\Property', '10'),
(7232, 7, 52, 'Srapid\\RealEstate\\Models\\Property', '1'),
(7233, 9, 52, 'Srapid\\RealEstate\\Models\\Property', '80'),
(7234, 11, 52, 'Srapid\\RealEstate\\Models\\Property', '0,1'),
(7235, 10, 52, 'Srapid\\RealEstate\\Models\\Property', '2'),
(7236, 5, 52, 'Srapid\\RealEstate\\Models\\Property', '0,1'),
(7237, 4, 52, 'Srapid\\RealEstate\\Models\\Property', '0,3'),
(7238, 8, 52, 'Srapid\\RealEstate\\Models\\Property', '0,1'),
(7239, 3, 52, 'Srapid\\RealEstate\\Models\\Property', '0,5'),
(7240, 1, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7241, 2, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7242, 3, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7243, 4, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7244, 5, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7245, 6, 53, 'Srapid\\RealEstate\\Models\\Property', '10'),
(7246, 7, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7247, 8, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7248, 9, 53, 'Srapid\\RealEstate\\Models\\Property', '80'),
(7249, 10, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100'),
(7250, 11, 53, 'Srapid\\RealEstate\\Models\\Property', '0,100');

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_facilities_translations`
--

CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_features`
--

CREATE TABLE `re_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `status`, `icon`) VALUES
(1, 'Wifi', 'published', NULL),
(2, 'Estacionamento', 'published', NULL),
(3, 'Pscina', 'published', NULL),
(4, 'Recepção', 'published', NULL),
(5, 'Jardim', 'published', NULL),
(6, 'Segurança', 'published', NULL),
(7, 'Academia', 'published', NULL),
(8, 'Ar Condicionado', 'published', NULL),
(9, 'Aquecimento Central', 'published', NULL),
(10, 'Lavanderia', 'published', NULL),
(11, 'Aceita Pets', 'published', NULL),
(12, 'Spa & Massagem', 'published', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_features_translations`
--

CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_features_translations`
--

INSERT INTO `re_features_translations` (`lang_code`, `re_features_id`, `name`) VALUES
('vi', 9, 'Wifi'),
('vi', 10, 'Bãi đậu xe'),
('vi', 11, 'Hồ bơi'),
('vi', 12, 'Ban công'),
('vi', 13, 'Sân vườn'),
('vi', 14, 'An ninh'),
('vi', 15, 'Trung tâm thể dục'),
('vi', 16, 'Điều hoà nhiệt độ'),
('vi', 17, 'Hệ thống sưởi trung tâm'),
('vi', 18, 'Phòng giặt ủi'),
('vi', 19, 'Cho phép nuôi thú'),
('vi', 20, 'Spa & Massage');

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_investors`
--

CREATE TABLE `re_investors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_investors`
--

INSERT INTO `re_investors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National Pension Service', 'published', '2019-11-18 01:16:23', '2019-11-18 01:16:23'),
(2, 'Generali', 'published', '2019-11-18 01:16:47', '2019-11-18 01:16:47'),
(3, 'Temasek', 'published', '2019-11-18 01:16:57', '2019-11-18 01:16:57'),
(4, 'China Investment Corporation', 'published', '2019-11-18 01:17:11', '2019-11-18 01:17:11'),
(5, 'Government Pension Fund Global', 'published', '2019-11-18 01:17:35', '2019-11-18 01:17:35'),
(6, 'PSP Investments', 'published', '2019-11-18 01:17:47', '2019-11-18 01:17:47'),
(7, 'MEAG Munich ERGO', 'published', '2019-11-18 01:17:57', '2019-11-18 01:17:57'),
(8, 'HOOPP', 'published', '2019-11-18 01:18:08', '2019-11-18 01:18:08'),
(9, 'BT Group', 'published', '2019-11-18 01:18:21', '2019-11-18 01:18:21'),
(10, 'Ping An', 'published', '2019-11-18 01:18:32', '2019-11-18 01:18:32'),
(11, 'New Jersey Division of Investment', 'published', '2019-11-18 01:18:45', '2019-11-18 01:18:45'),
(12, 'New York City ERS', 'published', '2019-11-18 01:18:57', '2019-11-18 01:18:57'),
(13, 'State Super', 'published', '2019-11-18 01:19:10', '2019-11-18 01:19:10'),
(14, 'Shinkong', 'published', '2019-11-18 01:19:20', '2019-11-18 01:19:20'),
(15, 'Rest Super', 'published', '2019-11-18 01:19:31', '2019-11-18 01:19:31'),
(16, 'Rest Super', 'published', '2019-11-21 01:50:47', '2019-11-21 01:50:47'),
(17, 'Shinkong', 'published', '2019-11-21 01:51:03', '2019-11-21 01:51:03'),
(18, 'State Super', 'published', '2019-11-21 01:51:21', '2019-11-21 01:51:21'),
(19, 'New York City ERS', 'published', '2019-11-21 01:51:33', '2019-11-21 01:51:33'),
(20, 'New Jersey Division of Investment', 'published', '2019-11-21 01:51:51', '2019-11-21 01:51:51'),
(21, 'Ping An', 'published', '2019-11-21 01:52:04', '2019-11-21 01:52:04'),
(22, 'BT Group', 'published', '2019-11-21 01:52:16', '2019-11-21 01:52:16'),
(23, 'HOOPP', 'published', '2019-11-21 01:52:28', '2019-11-21 01:52:28'),
(24, 'MEAG Munich ERGO', 'published', '2019-11-21 01:52:47', '2019-11-21 01:52:47'),
(25, 'PSP Investments', 'published', '2019-11-21 01:52:57', '2019-11-21 01:52:57'),
(26, 'Government Pension Fund Global', 'published', '2019-11-21 01:53:18', '2019-11-21 01:53:18'),
(27, 'China Investment Corporation', 'published', '2019-11-21 01:53:33', '2019-11-21 01:53:33'),
(29, 'Temasek', 'published', '2019-11-21 01:53:48', '2019-11-21 01:53:48'),
(30, 'Generali', 'published', '2019-11-21 01:54:01', '2019-11-21 01:54:01'),
(31, 'National Pension Service', 'published', '2019-11-21 01:54:14', '2019-11-21 01:54:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_packages`
--

CREATE TABLE `re_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `account_limit` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `number_of_listings`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `percent_save`, `account_limit`) VALUES
(1, 'Primeira Postagem Gratuita', 0.00, 1, 1, 0, 0, 'published', '2021-12-09 21:25:29', '2022-07-04 20:23:36', 0, 1),
(2, '1 Postagem', 5.00, 1, 1, 0, 1, 'published', '2021-12-09 21:25:29', '2022-08-09 20:18:43', 0, NULL),
(3, '5 Postagem', 30.00, 1, 5, 0, 0, 'published', '2021-12-09 21:25:29', '2022-08-09 20:18:57', 20, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_projects`
--

CREATE TABLE `re_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(6) DEFAULT NULL,
  `number_flat` smallint(6) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Srapid\\ACL\\Models\\User',
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_projects`
--

INSERT INTO `re_projects` (`id`, `name`, `content`, `images`, `location`, `number_block`, `number_floor`, `number_flat`, `is_featured`, `date_finish`, `date_sell`, `status`, `created_at`, `updated_at`, `investor_id`, `description`, `price_from`, `price_to`, `currency_id`, `city_id`, `author_id`, `author_type`, `latitude`, `longitude`, `views`) VALUES
(13, 'Loteamento New Orleans di Bragança Victorino', '<p>Condomínio completo.</p>', '{\"1\":\"empreendimentos\\/orleans\\/perspectiva-viva-mais-2-vista-geral-novo-horizonte-2.webp\",\"2\":\"empreendimentos\\/orleans\\/original-bf324fbaf45de6fceab53783a1c47659.jpeg\",\"3\":\"empreendimentos\\/orleans\\/original-47f9d302a48f226e4a05f127f9160360.jpeg\",\"4\":\"empreendimentos\\/orleans\\/is157999a714m0id-510860abea1dc27d9.jpg\"}', 'Rua Estados Unidos, 77, São Paulo, SP', 10, NULL, 10000, 1, '2022-08-10', '2022-08-10', 'selling', '2022-08-10 16:45:22', '2023-03-07 15:54:21', 0, 'O melhor loteamento da cidade!', '1000000', '5000000', 1, 1, NULL, 'Srapid\\ACL\\Models\\User', NULL, NULL, 2),
(14, 'Novo conceito de apartamentos por andar Av Paulista', '<p>Novo conceito de apartamentos por andar Av Paulista</p>', '{\"1\":\"empreendimentos\\/outros\\/6dc8e04bc263f983f0aaa98b2d227111.jpg\",\"2\":\"empreendimentos\\/outros\\/21.jpg\",\"3\":\"empreendimentos\\/outros\\/3201-001-living.jpg\",\"4\":\"empreendimentos\\/outros\\/6dc8e04bc263f983f0aaa98b2d227111.jpg\"}', 'Avenida Paulista, 400, São Paulo, SP', 10, 100, 100, 1, '2022-08-13', '2022-08-13', 'pre_sale', '2022-08-13 15:03:29', '2023-03-29 18:01:35', 0, 'Novo conceito de apartamentos por andar Av Paulista', '20000000', '50000000', 1, 1, NULL, 'Srapid\\ACL\\Models\\User', NULL, NULL, 3),
(15, 'Imóveis disponíveis na planta, um ótimo investimento retorno garantido!', '<p>Imóveis disponíveis na planta, um ótimo investimento retorno garantido!</p>', '{\"1\":\"empreendimentos\\/outros\\/21.jpg\",\"2\":\"empreendimentos\\/outros\\/3201-001-living.jpg\",\"3\":\"empreendimentos\\/outros\\/6dc8e04bc263f983f0aaa98b2d227111.jpg\"}', 'Avenida Engenheiro Luís Carlos Berrini, 700', NULL, NULL, NULL, 1, '2022-08-13', '2022-08-13', 'selling', '2022-08-13 15:05:54', '2023-03-29 18:01:35', 0, 'Imóveis disponíveis na planta, um ótimo investimento retorno garantido!', NULL, NULL, 1, 1, NULL, 'Srapid\\ACL\\Models\\User', NULL, NULL, 4),
(16, 'Novo studio flat no coração financeiro de São Paulo', '<p>Novo studio flat no coração financeiro de São Paulo</p>', '{\"1\":\"empreendimentos\\/outros\\/3201-001-living.jpg\",\"2\":\"empreendimentos\\/outros\\/21.jpg\",\"3\":\"empreendimentos\\/outros\\/6dc8e04bc263f983f0aaa98b2d227111.jpg\"}', 'Av. São João, 800 - República, São Paulo - SP, 01036-100', NULL, NULL, NULL, 1, '2022-08-13', '2022-08-13', 'selling', '2022-08-13 15:08:21', '2023-03-30 18:07:20', 0, 'Novo studio flat no coração financeiro de São Paulo', NULL, NULL, 1, 1, NULL, 'Srapid\\ACL\\Models\\User', NULL, NULL, 8),
(17, 'Nova Casa Pronta Para Venda', '<p>Nova Casa Pronta Para Venda</p>', '{\"1\":\"imoveis\\/modern-energy-efficient-house-fabricated-in-pennsylvania-and-transported-in-east-hampton-1.jpg\"}', 'Avenida Engenheiro Luís Carlos Berrini, 400', NULL, NULL, NULL, 1, '2022-08-15', '2022-08-15', 'selling', '2022-08-15 19:37:50', '2023-03-29 18:01:35', 0, 'Nova Casa Pronta Para Venda', '50000000', NULL, 1, 1, NULL, 'Srapid\\ACL\\Models\\User', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_projects_translations`
--

CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_project_categories`
--

CREATE TABLE `re_project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_project_categories`
--

INSERT INTO `re_project_categories` (`id`, `project_id`, `category_id`) VALUES
(64, 13, 3),
(65, 14, 1),
(66, 15, 1),
(67, 16, 1),
(68, 17, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_project_features`
--

CREATE TABLE `re_project_features` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_project_features`
--

INSERT INTO `re_project_features` (`project_id`, `feature_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 7),
(7, 10),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(8, 9),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(8, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 7),
(9, 10),
(9, 12),
(9, 14),
(9, 15),
(9, 16),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 16),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 14),
(11, 16),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 16),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(14, 11),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 8),
(15, 9),
(15, 10),
(15, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_properties`
--

CREATE TABLE `re_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_bedroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_bathroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(5) UNSIGNED DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Srapid\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT 0,
  `never_expired` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `views`) VALUES
(36, 'Apartamento Bem Localizado no Centro de São Paulo', '<p>Apartamento bem localizado no centro de são paulo, com 2 quartos, 1 suíte, 3 banheiros, 2 vagas de estacionamento, cozinha, sala, varanda, lavanderia, quarto de empregada.</p>', 'Av. São João, 700 - República, São Paulo - SP, 01036-100', '{\"1\":\"imoveis\\/tom-and-giseles-apartment-625669.jpg\",\"2\":\"imoveis\\/spectacular-penthouse-apartment1.jpg\",\"3\":\"imoveis\\/dining-room-amazing-city-river-views-hudson-river-apartment-manhattan.jpg\",\"4\":\"imoveis\\/a-vibrant-apartment-in-tribeca-09.jpg\"}', 0, 4, 3, 1, 1, '1800000.00', NULL, 1, 'selling', '2022-08-08 18:58:26', '2022-11-14 21:55:52', 'sale', 'Apartamento bem localizado no centro de são paulo, com 2 quartos, 1 suíte, 3 banheiros, 2 vagas de estacionamento, cozinha, sala, varanda, lavanderia, quarto de empregada.', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-22', 0, 1, NULL, NULL, 4),
(37, 'Apartamento para alugar no coração da Berrini', '<p>Apartamento para alugar no coração da Berrini</p>', 'Avenida Engenheiro Luís Carlos Berrini, 500', '{\"1\":\"imoveis\\/image-2.jpg\",\"2\":\"imoveis\\/apt-man.jpg\",\"3\":\"imoveis\\/a-rede-de-hoteis-hyatt-esta-construindo-um-predio-residencial-de-alto-padrao-na-barra-da-tijuca-cada-apartamento-vai-custar-r-61124-milhoes-1383848342816-800x573.jpg\"}', 0, NULL, NULL, NULL, NULL, '9999990.00', NULL, 1, 'renting', '2022-08-10 18:10:40', '2022-08-10 18:11:40', 'rent', 'Apartamento para alugar no coração da Berrini', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-24', 0, 1, NULL, NULL, 0),
(38, 'Casa à venda em bairro nobre da cidade', '<p>Casa à venda em bairro nobre da cidade</p>', 'Av. São João, 700 - República, São Paulo - SP, 01036-100', '{\"1\":\"imoveis\\/mansao.jpg\",\"2\":\"imoveis\\/lombardia-villa-lusso-00.JPG\",\"3\":\"imoveis\\/luxo-imoveis-alphaville-4.jpg\",\"4\":\"imoveis\\/fotos-de-mansoes-1.jpg\"}', 0, 5, 5, 5, 5, '1200000.00', NULL, 1, 'selling', '2022-08-11 18:21:36', '2022-08-11 18:43:55', 'sale', 'Casa à venda em bairro nobre da cidade', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-25', 0, 1, NULL, NULL, 1),
(39, 'Linda casa com pscina nos jardins', '<p>Linda casa com pscina nos jardins</p>', 'Alameda Lorena, 1501 - Jardim Paulista', '{\"1\":\"imoveis\\/villa-2.jpg\",\"2\":\"imoveis\\/this-modern-forest-house-harmonizes-cutting-edge-lifestyle-with-the-nature-architecture-beast-08-featured-min.jpg\",\"3\":\"imoveis\\/si-modern-home.png\",\"4\":\"imoveis\\/modern-france-house-by-saota.jpg\",\"5\":\"imoveis\\/modern-house-tour-5519-lynbrook-4.jpg\"}', 0, NULL, NULL, NULL, NULL, '4000000.00', NULL, 1, 'selling', '2022-08-11 19:24:59', '2022-08-18 16:15:34', 'sale', 'Linda casa com pscina nos jardins', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-25', 0, 1, NULL, NULL, 1),
(40, 'Apartamento de luxo na Paulista', '<p>Apartamento de luxo na Paulista</p>', NULL, '{\"1\":\"imoveis\\/5319d11e672aa8357b71780fac1b4d24.jpg\",\"2\":\"imoveis\\/image-2.jpg\",\"3\":\"imoveis\\/asdsaasdimages.jpg\",\"4\":\"imoveis\\/apt-man.jpg\",\"5\":\"imoveis\\/apartamento-de-alto-padrao-9.jpg\"}', 0, NULL, NULL, NULL, NULL, '30000.00', NULL, 1, 'renting', '2022-08-11 19:27:14', '2022-08-11 19:27:35', 'rent', 'Apartamento de luxo na Paulista', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-25', 0, 1, NULL, NULL, 0),
(41, 'Casa vitoriana na Alamenda Santos', '<p>Casa vitoriana na Alamenda Santos</p>', 'Alameda Santos, 302, São Paulo, SP', '{\"1\":\"imoveis\\/mansao-fleur-de-lys-p.jpg\",\"2\":\"imoveis\\/mansao.jpg\",\"3\":\"imoveis\\/mansao-tambore.jpg\",\"4\":\"imoveis\\/manhattan-luxury-apartment.jpg\",\"5\":\"imoveis\\/lombardia-villa-lusso-00.JPG\",\"6\":\"imoveis\\/luxo-imoveis-alphaville-4.jpg\"}', 0, NULL, NULL, NULL, NULL, '30000000.00', NULL, 1, 'selling', '2022-08-11 19:52:26', '2022-11-15 01:08:49', 'sale', 'Casa vitoriana na Alamenda Santos', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-25', 0, 1, NULL, NULL, 2),
(42, 'Apartamento na Pamplona', '<p>Apartamento na Pamplona</p>', 'R. Pamplona, 391 - São Paulo, SP', '{\"1\":\"imoveis\\/145-hudson-street-tribeca-manhattan-apartments-ny.jpg\",\"2\":\"imoveis\\/hero-image.jpg\",\"3\":\"imoveis\\/920x920.jpg\",\"4\":\"imoveis\\/edbf9a60bf1723677ca84be0a6cfca7e.jpg\",\"5\":\"imoveis\\/434e3304981f7dba55081aae0b6996ab-andy2.jpg\"}', 0, 4, 4, 100, 12, '40000000.00', NULL, 1, 'selling', '2022-08-13 15:10:41', '2022-08-13 15:11:01', 'sale', 'Apartamento na Pamplona', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-27', 0, 1, NULL, NULL, 0),
(43, 'Casa nos mais tradicionais bairros da elite paulistana', '<p>Casa nos mais tradicionais bairros da elite paulistana</p>', 'Rua Estados Unidos, 78, São Paulo, SP', '{\"1\":\"imoveis\\/image.jpg\",\"2\":\"imoveis\\/dining-room-amazing-city-river-views-hudson-river-apartment-manhattan.jpg\",\"3\":\"imoveis\\/fotos-de-mansoes-1.jpg\",\"4\":\"imoveis\\/this-modern-forest-house-harmonizes-cutting-edge-lifestyle-with-the-nature-architecture-beast-08-featured-min.jpg\",\"5\":\"imoveis\\/modern-house-tour-5519-lynbrook-4.jpg\"}', 0, 10, 16, 4, NULL, '70000000.00', NULL, 1, 'selling', '2022-08-13 15:24:08', '2022-08-13 15:24:44', 'sale', 'Casa nos mais tradicionais bairros da elite paulistana', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-09-27', 0, 1, NULL, NULL, 0),
(44, 'Linda Casa à Venda Em São Paulo', '<p>Linda Casa à Venda Em São Paulo</p>', 'Rua Estados Unidos, 100, São Paulo, SP', '{\"1\":\"imoveis\\/lombardia-villa-lusso-00.JPG\",\"2\":\"imoveis\\/luxo-imoveis-alphaville-4.jpg\",\"3\":\"imoveis\\/image.jpg\",\"4\":\"imoveis\\/dining-room-amazing-city-river-views-hudson-river-apartment-manhattan.jpg\"}', 0, 10, 10, 4, NULL, '30000000.00', NULL, 1, 'selling', '2022-08-18 16:10:06', '2023-03-30 15:43:12', 'sale', 'Linda Casa à Venda Em São Paulo', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 3),
(45, 'Casa Maravilhosa Chique e Linda, Oportunidade', '<p>Casa Maravilhosa Chique e Linda, Oportunidade</p>', 'Alameda Lorena, 1400 - Jardim Paulista, São Paulo, SP', '{\"1\":\"imoveis\\/mansao-morada-de-l-9df62.jpg\",\"2\":\"imoveis\\/mansao-tambore.jpg\",\"3\":\"imoveis\\/manhattan-luxury-apartment.jpg\",\"4\":\"imoveis\\/lombardia-villa-lusso-00.JPG\",\"5\":\"imoveis\\/luxo-imoveis-alphaville-4.jpg\"}', 0, 11, 8, 3, NULL, '40000000.00', NULL, 1, 'selling', '2022-08-18 16:11:46', '2023-03-07 15:57:18', 'sale', 'Casa Maravilhosa Chique e Linda, Oportunidade', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 1),
(46, 'Apartamento Studio no Centro Financeiro', '<p>Apartamento Studio no Centro Financeiro</p>', 'Av. Brg. Faria Lima, 350, São Paulo, SP', '{\"1\":\"imoveis\\/dining-room-amazing-city-river-views-hudson-river-apartment-manhattan.jpg\",\"2\":\"imoveis\\/5319d11e672aa8357b71780fac1b4d24.jpg\",\"3\":\"imoveis\\/image-2.jpg\",\"4\":\"imoveis\\/a-vibrant-apartment-in-tribeca-09.jpg\",\"5\":\"imoveis\\/a-rede-de-hoteis-hyatt-esta-construindo-um-predio-residencial-de-alto-padrao-na-barra-da-tijuca-cada-apartamento-vai-custar-r-61124-milhoes-1383848342816-800x573.jpg\",\"6\":\"imoveis\\/145-hudson-street-tribeca-manhattan-apartments-ny.jpg\"}', 0, NULL, NULL, NULL, NULL, '11000000.00', NULL, 1, 'selling', '2022-08-18 16:14:20', '2022-12-01 20:33:59', 'sale', 'Apartamento Studio no Centro Financeiro', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 2),
(47, 'Casa para alugar no bairro mais badalado da cidade', '<p>Casa para alugar no bairro mais badalado da cidade</p>', 'Rua Aspicuelta, 567, Sâo Paulo, SP', '{\"1\":\"imoveis\\/asdimages.jpg\",\"2\":\"imoveis\\/a-rede-de-hoteis-hyatt-esta-construindo-um-predio-residencial-de-alto-padrao-na-barra-da-tijuca-cada-apartamento-vai-custar-r-61124-milhoes-1383848342816-800x573.jpg\",\"3\":\"imoveis\\/apartment-renovation-in-manhattan-by-suzanne-lovell-4.jpg\",\"4\":\"imoveis\\/apartamento-de-alto-padrao-9.jpg\",\"5\":\"imoveis\\/aire2.jpg\"}', 0, 10, 5, 2, NULL, '25000.00', NULL, 1, 'renting', '2022-08-18 16:19:33', '2022-08-18 16:38:23', 'rent', 'Casa para alugar no bairro mais badalado da cidade', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 0),
(48, 'Apartamento Super Moderno Para Alugar Na Vila Madalena', '<p>Apartamento Super Moderno Para Alugar Na Vila Madalena</p>', 'Rua Fradique Coutinho, 34, Sâo Paulo, SP', '{\"1\":\"imoveis\\/tom-and-giseles-apartment-625669.jpg\",\"2\":\"imoveis\\/mansao-de-luxo-com-piscina-1.jpg\",\"3\":\"imoveis\\/mansao.jpg\",\"4\":\"imoveis\\/mansao-tambore.jpg\",\"5\":\"imoveis\\/manhattan-luxury-apartment.jpg\",\"6\":\"imoveis\\/lombardia-villa-lusso-00.JPG\",\"7\":\"imoveis\\/luxo-imoveis-alphaville-4.jpg\"}', 0, 4, 3, 1, NULL, NULL, NULL, 1, 'renting', '2022-08-18 16:43:31', '2022-08-18 16:43:31', 'rent', 'Apartamento Super Moderno Para Alugar Na Vila Madalena', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 0),
(49, 'Apartamento Para Alugar em Pinheiros, São Paulo, SP', '<p>Apartamento Para Alugar em Pinheiros, São Paulo, SP</p>', 'Rua Fradique Coutinho, 100, Sâo Paulo, SP', '{\"1\":\"imoveis\\/manhattan-luxury-apartment.jpg\"}', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'selling', '2022-08-18 17:47:17', '2022-08-18 17:47:17', 'rent', 'Apartamento Para Alugar em Pinheiros, São Paulo, SP', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 0),
(50, 'Apartamento Para Alugar em Sumaré, São Paulo, SP', '<p>Apartamento Para Alugar em Sumaré, São Paulo, SP</p>', 'R. Heitor Penteado, 477 - Sumarezinho', '{\"1\":\"imoveis\\/apartment-renovation-in-manhattan-by-suzanne-lovell-4.jpg\",\"2\":\"imoveis\\/apartamento-de-alto-padrao-9.jpg\",\"3\":\"imoveis\\/13120.jpg\",\"4\":\"imoveis\\/aire2.jpg\",\"5\":\"imoveis\\/5319d11e672aa8357b71780fac1b4d24.jpg\"}', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'renting', '2022-08-18 18:05:16', '2022-12-03 21:08:33', 'rent', 'Apartamento Para Alugar em Sumaré, São Paulo, SP', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 1),
(51, 'Apartamento Para Alugar em Cerqueira César, São Paulo, SP', '<p>Apartamento Para Alugar em Cerqueira César, São Paulo, SP</p>', 'Alameda Franca, 123 Cerqueira César, São Paulo, SP', '{\"1\":\"imoveis\\/145-hudson-street-tribeca-manhattan-apartments-ny.jpg\",\"2\":\"imoveis\\/1sas.jpg\",\"3\":\"imoveis\\/west-elevation.jpg\",\"4\":\"imoveis\\/villa-2.jpg\"}', 0, NULL, NULL, NULL, NULL, '15000.00', NULL, 1, 'renting', '2022-08-18 18:07:06', '2022-11-14 20:31:39', 'rent', 'Apartamento Para Alugar em Cerqueira César, São Paulo, SP', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 1),
(52, 'Apartamento Para Alugar em Sumarezinho, São Paulo, SP', '<p>Apartamento Para Alugar em Sumarezinho, São Paulo, SP</p>', 'Rua Heitor Penteado, 1800, Sumarezinho, São Paulo, SP', '{\"1\":\"imoveis\\/spectacular-penthouse-apartment1.jpg\",\"2\":\"imoveis\\/mansao-de-luxo-com-piscina-1.jpg\",\"3\":\"imoveis\\/mansao.jpg\",\"4\":\"imoveis\\/mansao-tambore.jpg\",\"5\":\"imoveis\\/manhattan-luxury-apartment.jpg\"}', 0, 4, 2, 1, NULL, '10000.00', NULL, 1, 'renting', '2022-08-18 18:10:16', '2023-03-30 18:08:14', 'rent', 'Apartamento Para Alugar em Sumarezinho, São Paulo, SP.', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2022-10-02', 0, 1, NULL, NULL, 1),
(53, 'Casa nova e moderna, estilo americana', '<p>Casa nova e moderna, estilo americana</p>', 'Rua Estados Unidos, 777, São Paulo, SP', '{\"1\":\"imoveis\\/images.jpg\"}', 0, 5, 7, 2, 400, '5780000.00', NULL, 1, 'selling', '2023-03-30 18:14:03', '2023-03-30 18:14:25', 'sale', 'Casa nova e moderna, estilo americana', 1, 1, 'day', NULL, 'Srapid\\RealEstate\\Models\\Account', 'approved', '2023-05-14', 0, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_properties_translations`
--

CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_property_categories`
--

CREATE TABLE `re_property_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_property_categories`
--

INSERT INTO `re_property_categories` (`id`, `property_id`, `category_id`) VALUES
(211, 36, 1),
(212, 36, 3),
(213, 37, 1),
(214, 38, 4),
(215, 39, 4),
(216, 40, 4),
(217, 41, 4),
(218, 42, 1),
(219, 43, 4),
(220, 44, 4),
(221, 45, 4),
(222, 46, 1),
(223, 47, 1),
(224, 49, 1),
(225, 50, 1),
(226, 51, 1),
(227, 52, 1),
(228, 53, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
(18, 11),
(18, 12),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(19, 11),
(19, 12),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(20, 11),
(20, 12),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(21, 6),
(21, 7),
(21, 8),
(21, 9),
(21, 10),
(21, 11),
(21, 12),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(22, 11),
(22, 12),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(23, 11),
(23, 12),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(26, 9),
(26, 10),
(26, 11),
(26, 12),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(27, 11),
(27, 12),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(29, 7),
(29, 8),
(29, 9),
(29, 10),
(29, 11),
(29, 12),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(31, 11),
(31, 12),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 11),
(33, 12),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(34, 11),
(34, 12),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(37, 5),
(37, 6),
(37, 7),
(37, 8),
(37, 9),
(37, 10),
(37, 11),
(37, 12),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(43, 6),
(43, 7),
(43, 9),
(43, 10),
(43, 11),
(43, 12),
(45, 1),
(45, 3),
(45, 4),
(45, 5),
(45, 6),
(45, 7),
(45, 8),
(45, 9),
(45, 10),
(45, 11),
(45, 12),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 6),
(46, 7),
(46, 8),
(46, 9),
(46, 10),
(46, 11),
(46, 12),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(47, 8),
(47, 9),
(47, 10),
(47, 11),
(47, 12),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(48, 6),
(48, 7),
(48, 8),
(48, 9),
(48, 10),
(48, 11),
(48, 12),
(49, 1),
(49, 2),
(51, 1),
(51, 2),
(51, 3),
(51, 4),
(51, 5),
(51, 6),
(51, 7),
(51, 8),
(51, 9),
(51, 10),
(51, 11),
(51, 12),
(52, 1),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(52, 6),
(52, 7),
(52, 8),
(52, 9),
(52, 10),
(52, 11),
(52, 12),
(53, 1),
(53, 2),
(53, 3),
(53, 4),
(53, 5),
(53, 6),
(53, 7),
(53, 8),
(53, 9),
(53, 10),
(53, 11),
(53, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_tags`
--

CREATE TABLE `re_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `re_tags_items`
--

CREATE TABLE `re_tags_items` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'Administrador', '{\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"widgets.index\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"languages.theme-translations\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"social-login.settings\":true,\"core.system\":true,\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"translations.index\":true,\"translations.edit\":true}', 'Perfil de administrador total', 0, 1, 1, '2021-01-03 17:23:52', '2022-11-14 20:18:28'),
(2, 'corretor-interno', 'Corretor Interno', '{\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true}', 'Perfil para corretor interno', 0, 1, 1, '2022-11-14 20:19:50', '2022-11-14 20:19:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-01-03 17:24:01', '2021-01-03 17:24:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(11, 'admin_email', '[\"admin@scriptphp.ru\"]', NULL, NULL),
(12, 'time_zone', 'America/Sao_Paulo', NULL, NULL),
(13, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(16, 'admin_title', 'SiteRapido Imóveis', NULL, NULL),
(17, 'rich_editor', 'ckeditor', NULL, NULL),
(18, 'default_admin_theme', 'default', NULL, NULL),
(19, 'enable_change_admin_theme', '1', NULL, NULL),
(20, 'enable_multi_language_in_admin', '1', NULL, NULL),
(21, 'enable_cache', '0', NULL, NULL),
(22, 'cache_time', '10', NULL, NULL),
(23, 'cache_admin_menu_enable', '0', NULL, NULL),
(24, 'optimize_page_speed_enable', '0', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'theme-site-rapido-site_title', 'SiteRápido Imóveis', NULL, NULL),
(30, 'theme-site-rapido-show_site_name', '1', NULL, NULL),
(33, 'theme-site-rapido-copyright', '© SiteRapido Imóveis - www.siterapido.com.br', NULL, NULL),
(37, 'theme-site-rapido-logo', 'logo/logo-siterapidocombr-vermelhofw-1.png', NULL, NULL),
(40, 'theme-site-rapido-facebook', 'https://www.facebook.com', NULL, NULL),
(41, 'theme-site-rapido-youtube', 'https://youtube.com', NULL, NULL),
(44, 'theme-site-rapido-hotline', '12997274876', NULL, NULL),
(45, 'theme-site-rapido-address', 'Av. Paulista, 300, Bela Vista, São Paulo, SP', NULL, NULL),
(46, 'theme-site-rapido-email', 'info@siterapido.com.br', NULL, NULL),
(49, 'theme-site-rapido-logo_white', 'logo/logo-white.png', NULL, NULL),
(50, 'membership_authorization_at', '2023-03-02 19:46:11', NULL, NULL),
(56, 'enable_captcha', '0', NULL, NULL),
(57, 'captcha_site_key', 'no-captcha-site-key', NULL, NULL),
(58, 'captcha_secret', 'no-captcha-secret', NULL, NULL),
(65, 'store_weight_unit', 'g', NULL, NULL),
(66, 'store_width_height_unit', 'cm', NULL, NULL),
(67, 'currencies_is_default', '0', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(73, 'theme-site-rapido-seo_title', 'SiteRapido Imóveis', NULL, NULL),
(85, 'theme-site-rapido-vi-site_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(86, 'theme-site-rapido-vi-show_site_name', '0', NULL, NULL),
(87, 'theme-site-rapido-vi-seo_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(90, 'theme-site-rapido-vi-copyright', '© 2020 Flex Home là một sản phẩm về lĩnh vực bất động sản của Srapid Team', NULL, NULL),
(91, 'theme-site-rapido-vi-hotline', '18006268', NULL, NULL),
(92, 'theme-site-rapido-vi-address', 'Tòa nhà North Link, Đường 10 Admiralty, 757695 Singapore', NULL, NULL),
(93, 'theme-site-rapido-vi-email', 'contact@site-rapido.com', NULL, NULL),
(95, 'theme-site-rapido-vi-logo', 'logo/logo.png', NULL, NULL),
(96, 'theme-site-rapido-vi-logo_white', 'logo/logo-white.png', NULL, NULL),
(104, 'theme-site-rapido-vi-facebook', 'https://www.facebook.com', NULL, NULL),
(105, 'theme-site-rapido-vi-youtube', 'https://youtube.com', NULL, NULL),
(133, 'theme-site-rapido-favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(143, 'theme-site-rapido-vi-favicon', 'logo/favicon.png', NULL, NULL),
(148, 'theme-site-rapido-seo_description', 'Encontre o seu imóvel aqui', NULL, NULL),
(149, 'theme-site-rapido-about-us', 'Nosso principal objetivo é a satisfação do cliente, atendendo com perfeição às suas necessidades.Possuímos uma equipe treinada e atualizada, proporcionando o mais alto nível de eficiência técnica.\n\nSiteRápido - www.siterapido.com.br', NULL, NULL),
(150, 'theme-site-rapido-home_project_description', '', NULL, NULL),
(151, 'theme-site-rapido-home_description_for_properties_by_locations', '', NULL, NULL),
(152, 'theme-site-rapido-home_description_for_news', '', NULL, NULL),
(153, 'theme-site-rapido-vi-seo_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(154, 'theme-site-rapido-vi-about-us', 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. \nPhương châm  “Đánh bật thời gian, xuyên qua không gian\"', NULL, NULL),
(155, 'theme-site-rapido-vi-home_project_description', 'Chúng tôi đưa ra những lựa chọn tốt nhất với những dự án hot và uy tín bậc nhất hiện nay, hãy truy cập vào thông tin chi tiết bên dưới để tìm hiểu thêm nhé.', NULL, NULL),
(156, 'theme-site-rapido-vi-home_description_for_properties_by_locations', 'Mỗi căn hộ là một lựa chọn tốt, nó sẽ giúp bạn đưa ra quyết định đúng đắn, đừng bỏ lỡ cơ hội khám phá những căn hộ tuyệt vời của chúng tôi.', NULL, NULL),
(157, 'theme-site-rapido-vi-home_description_for_news', 'Bên dưới đây là những tin tức mới nhất về lĩnh vực bất động sản được chúng tôi cập nhật thường xuyên từ những nguồn tin đáng tin cậy.', NULL, NULL),
(167, 'theme-site-rapido-primary_font', 'Paytone One', NULL, NULL),
(168, 'theme-site-rapido-twitter', '', NULL, NULL),
(169, 'theme-site-rapido-number_of_featured_projects', '4', NULL, NULL),
(170, 'theme-site-rapido-number_of_featured_cities', '5', NULL, NULL),
(171, 'theme-site-rapido-number_of_properties_for_sell', '8', NULL, NULL),
(172, 'theme-site-rapido-number_of_properties_for_rent', '8', NULL, NULL),
(173, 'theme-site-rapido-number_of_projects_per_page', '12', NULL, NULL),
(174, 'theme-site-rapido-number_of_properties_per_page', '12', NULL, NULL),
(175, 'theme-site-rapido-number_of_related_projects', '8', NULL, NULL),
(176, 'theme-site-rapido-number_of_related_properties', '8', NULL, NULL),
(177, 'theme-site-rapido-properties_description', '', NULL, NULL),
(178, 'theme-site-rapido-home_description_for_properties_for_sale', '', NULL, NULL),
(179, 'theme-site-rapido-home_description_for_properties_for_rent', '', NULL, NULL),
(196, 'theme-site-rapido-number_of_properties_for_sale', '8', NULL, NULL),
(197, 'theme-site-rapido-home_banner_description', 'Encontre o seu imóvel aqui!', NULL, NULL),
(198, 'theme-site-rapido-home_description_for_projects_by_locations', '', NULL, NULL),
(199, 'theme-site-rapido-vi-primary_font', 'Nunito Sans', NULL, NULL),
(200, 'theme-site-rapido-vi-twitter', '', NULL, NULL),
(201, 'theme-site-rapido-vi-number_of_featured_projects', '4', NULL, NULL),
(202, 'theme-site-rapido-vi-number_of_featured_cities', '10', NULL, NULL),
(203, 'theme-site-rapido-vi-number_of_properties_for_sale', '8', NULL, NULL),
(204, 'theme-site-rapido-vi-number_of_properties_for_rent', '8', NULL, NULL),
(205, 'theme-site-rapido-vi-number_of_projects_per_page', '12', NULL, NULL),
(206, 'theme-site-rapido-vi-number_of_properties_per_page', '12', NULL, NULL),
(207, 'theme-site-rapido-vi-number_of_related_projects', '8', NULL, NULL),
(208, 'theme-site-rapido-vi-number_of_related_properties', '8', NULL, NULL),
(209, 'theme-site-rapido-vi-home_banner_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(210, 'theme-site-rapido-vi-properties_description', '', NULL, NULL),
(211, 'theme-site-rapido-vi-home_description_for_projects_by_locations', '', NULL, NULL),
(212, 'theme-site-rapido-vi-home_description_for_properties_for_sale', '', NULL, NULL),
(213, 'theme-site-rapido-vi-home_description_for_properties_for_rent', '', NULL, NULL),
(214, 'payment_cod_name', 'Dinheiro', NULL, NULL),
(216, 'payment_cod_status', '0', NULL, NULL),
(217, 'payment_bank_transfer_name', 'PIX / Transferência Bancária', NULL, NULL),
(219, 'payment_bank_transfer_status', '1', NULL, NULL),
(220, 'theme-site-rapido-vi-seo_og_image', '', NULL, NULL),
(221, 'theme-site-rapido-vi-primary_color', '#1D5F6F', NULL, NULL),
(222, 'theme-site-rapido-vi-primary_color_hover', '#063A5D', NULL, NULL),
(224, 'theme-site-rapido-vi-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-site-rapido-vi-number_of_posts_in_a_tag', '12', NULL, NULL),
(227, 'theme-site-rapido-vi-cookie_consent_enable', 'yes', NULL, NULL),
(229, 'theme-site-rapido-vi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(230, 'theme-site-rapido-seo_og_image', 'logo/logo-siterapidocombr-vermelhofw-1.png', NULL, NULL),
(231, 'theme-site-rapido-primary_color', '#6A6378', NULL, NULL),
(232, 'theme-site-rapido-primary_color_hover', '#F53B7A', NULL, NULL),
(234, 'theme-site-rapido-number_of_posts_in_a_category', '12', NULL, NULL),
(235, 'theme-site-rapido-number_of_posts_in_a_tag', '12', NULL, NULL),
(237, 'theme-site-rapido-cookie_consent_enable', 'yes', NULL, NULL),
(239, 'theme-site-rapido-cookie_consent_button_text', 'Permitir Cookies', NULL, NULL),
(270, 'activated_plugins', '[\"language\",\"language-advanced\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"location\",\"rss-feed\",\"real-estate\",\"cookie-consent\",\"payment\",\"analytics\",\"translation\"]', NULL, NULL),
(283, 'permalink-srapid-blog-models-post', 'blog', NULL, NULL),
(284, 'permalink-srapid-blog-models-category', 'blog', NULL, NULL),
(285, 'theme', 'site-rapido', NULL, NULL),
(286, 'admin_logo', 'logo/logo-siterapidocombr-amarelofw-1.png', NULL, NULL),
(287, 'admin_favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(296, 'theme-site-rapido-vi-homepage_id', '1', NULL, NULL),
(297, 'theme-site-rapido-vi-blog_page_id', '2', NULL, NULL),
(298, 'theme-site-rapido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(304, 'permalink-srapid-blog-models-post', 'blog', NULL, NULL),
(305, 'permalink-srapid-blog-models-category', 'blog', NULL, NULL),
(306, 'admin_logo', 'logo/logo-siterapidocombr-amarelofw-1.png', NULL, NULL),
(307, 'admin_favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(320, 'theme-site-rapido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(326, 'permalink-srapid-blog-models-post', 'blog', NULL, NULL),
(327, 'permalink-srapid-blog-models-category', 'blog', NULL, NULL),
(328, 'admin_logo', 'logo/logo-siterapidocombr-amarelofw-1.png', NULL, NULL),
(329, 'admin_favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(342, 'theme-site-rapido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(348, 'permalink-srapid-blog-models-post', 'blog', NULL, NULL),
(349, 'permalink-srapid-blog-models-category', 'blog', NULL, NULL),
(350, 'admin_logo', 'logo/logo-siterapidocombr-amarelofw-1.png', NULL, NULL),
(351, 'admin_favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(364, 'theme-site-rapido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(374, 'permalink-srapid-blog-models-post', 'blog', NULL, NULL),
(375, 'permalink-srapid-blog-models-category', 'blog', NULL, NULL),
(376, 'admin_logo', 'logo/logo-siterapidocombr-amarelofw-1.png', NULL, NULL),
(377, 'admin_favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(390, 'theme-site-rapido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(391, 'language_hide_default', '1', NULL, NULL),
(392, 'language_switcher_display', 'dropdown', NULL, NULL),
(393, 'language_display', 'all', NULL, NULL),
(394, 'language_hide_languages', '[]', NULL, NULL),
(395, 'media_random_hash', 'a07c138f200e77fcfc67b25d74745ae7', NULL, NULL),
(396, 'permalink-srapid-blog-models-post', 'blog', NULL, NULL),
(397, 'permalink-srapid-blog-models-category', 'blog', NULL, NULL),
(398, 'admin_logo', 'logo/logo-siterapidocombr-amarelofw-1.png', NULL, NULL),
(399, 'admin_favicon', 'logo/ico-mangistrade-2.png', NULL, NULL),
(400, 'theme-site-rapido-cookie_consent_message', 'Sua experiência neste site será melhorada permitindo cookies', NULL, NULL),
(401, 'theme-site-rapido-cookie_consent_learn_more_url', 'https://imoblar.scriptphp.ru/terms-conditions', NULL, NULL),
(402, 'theme-site-rapido-cookie_consent_learn_more_text', 'Política de cookies', NULL, NULL),
(403, 'theme-site-rapido-homepage_id', '1', NULL, NULL),
(404, 'theme-site-rapido-blog_page_id', '2', NULL, NULL),
(405, 'theme-site-rapido-home_banner', 'banner/paulista-box-search-2.jpg', NULL, NULL),
(406, 'theme-site-rapido-breadcrumb_background', 'banner/masp.png', NULL, NULL),
(407, 'theme-site-rapido-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(408, 'theme-site-rapido-vi-cookie_consent_learn_more_url', 'http://site-rapido.test/cookie-policy', NULL, NULL),
(409, 'theme-site-rapido-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(410, 'theme-site-rapido-vi-home_banner', 'general/home-banner.jpg', NULL, NULL),
(411, 'theme-site-rapido-vi-breadcrumb_background', 'general/breadcrumb-background.jpg', NULL, NULL),
(412, 'theme-site-rapido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]', NULL, NULL),
(413, 'default_payment_method', 'bank_transfer', NULL, NULL),
(414, 'payment_cod_description', 'Pagamento em dinheiro direto na imobiliária', NULL, NULL),
(415, 'payment_bank_transfer_description', 'PIX Email: info@siterapido.com.br<br>\r\n<br>\r\nSe enviar um pix com outra titularidade do seu cadastro, envie um comprovante para o email: info@siterapido.com.br', NULL, NULL),
(416, 'theme-site-rapido-enable_sticky_header', 'no', NULL, NULL),
(417, 'theme-site-rapido-show_map_on_properties_page', 'no', NULL, NULL),
(418, 'theme-site-rapido-facebook_chat_enabled', 'yes', NULL, NULL),
(419, 'theme-site-rapido-facebook_page_id', '', NULL, NULL),
(420, 'theme-site-rapido-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(421, 'theme-site-rapido-facebook_app_id', '', NULL, NULL),
(422, 'theme-site-rapido-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(423, 'theme-site-rapido-enable_search_projects_on_homepage_search', 'yes', NULL, NULL),
(424, 'theme-site-rapido-cookie_consent_style', 'minimal', NULL, NULL),
(425, 'theme-site-rapido-cookie_consent_background_color', '#000000', NULL, NULL),
(426, 'theme-site-rapido-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(427, 'theme-site-rapido-cookie_consent_max_width', '1170', NULL, NULL),
(428, 'locale_direction', 'ltr', NULL, NULL),
(429, 'login_screen_backgrounds', '[]', NULL, NULL),
(430, 'google_site_verification', '', NULL, NULL),
(431, 'google_analytics', '', NULL, NULL),
(432, 'analytics_view_id', '', NULL, NULL),
(433, 'analytics_service_account_credentials', '', NULL, NULL),
(434, 'captcha_type', 'v2', NULL, NULL),
(435, 'captcha_hide_badge', '0', NULL, NULL),
(436, 'locale', 'pt', NULL, NULL),
(437, 'admin_locale_direction', 'ltr', NULL, NULL),
(438, 'plugins_real-estate_new-pending-property_status', '1', NULL, NULL),
(439, 'plugins_real-estate_payment-receipt_status', '1', NULL, NULL),
(440, 'plugins_real-estate_free-credit-claimed_status', '1', NULL, NULL),
(441, 'plugins_real-estate_payment-received_status', '1', NULL, NULL),
(442, 'email_driver', 'smtp', NULL, NULL),
(443, 'email_port', '465', NULL, NULL),
(444, 'email_host', 'mail.scriptphp.ru', NULL, NULL),
(445, 'email_username', 'admin@scriptphp.ru', NULL, NULL),
(446, 'email_password', '@mouse2323', NULL, NULL),
(447, 'email_encryption', 'ssl', NULL, NULL),
(448, 'email_mail_gun_domain', '', NULL, NULL),
(449, 'email_mail_gun_secret', '', NULL, NULL),
(450, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL),
(451, 'email_ses_key', '', NULL, NULL),
(452, 'email_ses_secret', '', NULL, NULL),
(453, 'email_ses_region', 'us-east-1', NULL, NULL),
(454, 'email_postmark_token', '', NULL, NULL),
(455, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL),
(456, 'email_log_channel', '', NULL, NULL),
(457, 'email_from_name', 'SiteRápido', NULL, NULL),
(458, 'email_from_address', 'admin@scriptphp.ru', NULL, NULL),
(459, 'using_queue_to_send_mail', '0', NULL, NULL),
(460, 'plugins_real-estate_notice_status', '1', NULL, NULL),
(461, 'plugins_real-estate_account-registered_status', '1', NULL, NULL),
(462, 'plugins_contact_notice_status', '1', NULL, NULL),
(463, 'permalink-srapid-page-models-page', '', NULL, NULL),
(464, 'permalink-srapid-blog-models-tag', 'tag', NULL, NULL),
(465, 'permalink-srapid-career-models-career', 'vagas', NULL, NULL),
(466, 'permalink-srapid-realestate-models-property', 'imoveis', NULL, NULL),
(467, 'permalink-srapid-realestate-models-category', 'categoria-propriedade', NULL, NULL),
(468, 'permalink-srapid-realestate-models-project', 'empreendimentos', NULL, NULL),
(469, 'slug_turn_off_automatic_url_translation_into_latin', '0', NULL, NULL),
(470, 'real_estate_square_unit', 'm²', NULL, NULL),
(471, 'real_estate_display_views_count_in_detail_page', '0', NULL, NULL),
(472, 'real_estate_convert_money_to_text_enabled', '0', NULL, NULL),
(473, 'real_estate_enable_auto_detect_visitor_currency', '0', NULL, NULL),
(474, 'real_estate_thousands_separator', '.', NULL, NULL),
(475, 'real_estate_decimal_separator', ',', NULL, NULL),
(476, 'real_estate_enabled_register', '1', NULL, NULL),
(477, 'verify_account_email', '0', NULL, NULL),
(478, 'real_estate_enable_credits_system', '0', NULL, NULL),
(479, 'enable_post_approval', '0', NULL, NULL),
(480, 'property_expired_after_days', '45', NULL, NULL),
(481, 'real_estate_enable_recaptcha_in_register_page', '0', NULL, NULL),
(482, 'social_login_enable', '0', NULL, NULL),
(483, 'social_login_facebook_enable', '1', NULL, NULL),
(484, 'social_login_facebook_app_id', NULL, NULL, NULL),
(485, 'social_login_facebook_app_secret', NULL, NULL, NULL),
(486, 'social_login_google_enable', '1', NULL, NULL),
(487, 'social_login_google_app_id', NULL, NULL, NULL),
(488, 'social_login_google_app_secret', NULL, NULL, NULL),
(489, 'social_login_github_enable', '0', NULL, NULL),
(490, 'social_login_github_app_id', NULL, NULL, NULL),
(491, 'social_login_github_app_secret', NULL, NULL, NULL),
(492, 'social_login_linkedin_enable', '0', NULL, NULL),
(493, 'social_login_linkedin_app_id', NULL, NULL, NULL),
(494, 'social_login_linkedin_app_secret', NULL, NULL, NULL),
(495, 'custom_header_js', '', NULL, NULL),
(496, 'custom_body_js', '', NULL, NULL),
(497, 'custom_footer_js', '', NULL, NULL),
(498, 'core_acl_password-reminder_subject', 'Redefinir senha', NULL, NULL),
(499, 'plugins_real-estate_notice_subject', 'Nova Consulta', NULL, NULL),
(500, 'plugins_real-estate_new-pending-property_subject', 'Nova propriedade pendente de {{ post_author }} esperando para aprovar', NULL, NULL),
(501, 'plugins_real-estate_account-registered_subject', 'Nova conta cadastrada em {{ site_title }}', NULL, NULL),
(502, 'plugins_real-estate_confirm-email_subject', 'Confirmar notificação por e-mail', NULL, NULL),
(503, 'plugins_real-estate_password-reminder_subject', 'Redefinir senha', NULL, NULL),
(504, 'plugins_real-estate_payment-receipt_subject', 'Recibo de pagamento para o pacote {{ package_name }} no {{ site_title }}', NULL, NULL),
(505, 'plugins_real-estate_free-credit-claimed_subject', '{{ account_name }} reivindicou crédito gratuito em {{ site_title }}', NULL, NULL),
(506, 'plugins_real-estate_payment-received_subject', 'Pagamento recebido de {{ account_name }} em{{ site_title }}', NULL, NULL),
(507, 'plugins_contact_notice_subject', 'Mensagem enviada através do seu formulário de contato de {{ site_title }}', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(5, 'wifi', 1, 'Srapid\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 'swimming-pool', 2, 'Srapid\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(16, 'category-news', 1, 'Srapid\\Blog\\Models\\Category', 'blog', '2019-11-18 02:33:35', '2022-12-05 10:33:27'),
(19, 'bcg-sets-great-store', 1, 'Srapid\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:51:35', '2022-07-05 19:04:45'),
(21, 'private-home-sales', 2, 'Srapid\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:55:53', '2022-07-05 19:04:45'),
(24, 'south-korean-investors', 3, 'Srapid\\Blog\\Models\\Tag', 'tag', '2019-11-18 03:07:27', '2022-07-05 19:04:45'),
(34, 'can-ho-walnut-park', 7, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2019-11-21 01:54:36', '2022-07-05 19:04:45'),
(35, '1574328489', 8, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2019-11-21 02:28:09', '2022-07-05 19:04:45'),
(36, 'thien-duong-mimaroba', 9, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2019-11-21 02:40:25', '2022-07-05 19:04:45'),
(37, 'khu-biet-thu-aegean', 10, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2019-11-21 02:58:55', '2022-07-05 19:04:45'),
(38, 'chung-cu-rung-aydos', 11, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2019-11-21 03:16:25', '2022-07-05 19:04:45'),
(39, 'khu-chung-cu-the-avila', 12, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2019-11-21 03:25:22', '2022-07-05 19:04:45'),
(40, 'ban-biet-thu-3-phong-ngu-calpe-alicante', 18, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 05:51:54', '2022-07-05 19:04:45'),
(41, 'ban-nha-tai-johannesburg-south-africa', 19, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 06:03:12', '2022-07-05 19:04:45'),
(42, 'nha-phong-cach-phap', 20, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 06:12:15', '2022-07-05 19:04:45'),
(43, 'nha-ban-tai', 21, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 06:26:59', '2022-07-05 19:04:45'),
(44, 'can-ho-walnut-park', 22, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 06:56:50', '2022-07-05 19:04:45'),
(45, 'cho-thue-nha-cao-cap-5-phong-ngu', 23, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 07:18:36', '2022-07-05 19:04:45'),
(46, 'cho-thue-nha-view-dep', 24, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 07:26:48', '2022-07-05 19:04:45'),
(47, 'ban-can-ho-osaka-heights', 25, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 07:34:38', '2022-07-05 19:04:45'),
(48, 'nha-chinh-chu', 26, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 07:40:46', '2022-07-05 19:04:45'),
(49, 'cho-thue-nha-tren-duong-thompsons', 27, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 07:45:34', '2022-07-05 19:04:45'),
(52, 'house-architecture', 2, 'Srapid\\Blog\\Models\\Category', 'blog', '2019-11-21 07:49:25', '2022-12-05 10:33:27'),
(54, 'house-design', 4, 'Srapid\\Blog\\Models\\Category', 'blog', '2019-11-21 07:50:02', '2022-12-05 10:33:27'),
(56, 'building-materials', 6, 'Srapid\\Blog\\Models\\Category', 'blog', '2019-11-21 07:50:36', '2022-12-05 10:33:27'),
(58, 'can-ho-1-phong-ngu-hoan-toan-moi-o-vi-tri-hang-nhat', 28, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 19:53:17', '2022-07-05 19:04:45'),
(59, 'nha-cao-cap-thanh-lich', 29, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-21 19:59:16', '2022-07-05 19:04:45'),
(60, 'can-ban-can-ho-cao-cap-tai-singapore', 30, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-22 00:29:01', '2022-07-05 19:04:45'),
(61, 'can-ho-cao-cap-5-phong-can-ban-tai-kuala-lumpur', 31, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-22 00:42:28', '2022-07-05 19:04:45'),
(62, 'nha-ompound-pejaten-barat-kemang', 32, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-22 00:47:18', '2022-07-05 19:04:45'),
(63, 'can-ho-muiderstraatweg-o-diemen', 33, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-22 00:57:15', '2022-07-05 19:04:45'),
(64, 'can-ho-dep-cho-thue-o-berlin', 34, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2019-11-22 01:06:09', '2022-07-05 19:04:45'),
(65, 'tin-tuc-1', 8, 'Srapid\\Blog\\Models\\Category', 'blog', '2019-11-22 01:26:08', '2022-12-05 10:33:27'),
(66, 'bcg-thiet-lap-cua-hang-tuyet-voi-bang-cac-cuoc-dam-phan-bat-dong-san', 5, 'Srapid\\Blog\\Models\\Post', 'blog', '2019-11-22 01:26:31', '2022-12-05 10:33:27'),
(67, 'doanh-so-ban-nha-rieng-giam-27-trong-thang-10', 6, 'Srapid\\Blog\\Models\\Post', 'blog', '2019-11-22 01:29:45', '2022-12-05 10:33:27'),
(68, 'singapore-vuot-qua-hong-kong-ve-trien-vong-dau-tu-bat-dong-san', 7, 'Srapid\\Blog\\Models\\Post', 'blog', '2019-11-22 01:33:23', '2022-12-05 10:33:27'),
(69, 'cac-nha-dau-tu-lon-han-quoc-do-xo-vao-bat-dong-san-o-nuoc-ngoai', 8, 'Srapid\\Blog\\Models\\Post', 'blog', '2019-11-22 01:39:38', '2022-12-05 10:33:27'),
(74, 'sales-manager-real-estate', 1, 'Srapid\\Career\\Models\\Career', 'vagas', '2019-11-30 19:43:10', '2022-07-20 18:11:56'),
(75, 'truong-phong-kinh-doanh-luong-len-toi', 2, 'Srapid\\Career\\Models\\Career', 'vagas', '2019-11-30 19:49:07', '2022-07-20 18:11:56'),
(76, 'senior-real-estate-consultant', 3, 'Srapid\\Career\\Models\\Career', 'vagas', '2019-11-30 19:52:42', '2022-07-20 18:11:56'),
(77, 'chuyen-vien-tu-van-bat-dong-san-cao-cap', 4, 'Srapid\\Career\\Models\\Career', 'vagas', '2019-11-30 19:56:50', '2022-07-20 18:11:56'),
(348, 'apartment', 1, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2021-12-09 21:25:29', '2022-07-05 19:04:45'),
(349, 'villa', 2, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2021-12-09 21:25:29', '2022-07-05 19:04:45'),
(350, 'condo', 3, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2021-12-09 21:25:29', '2022-07-05 19:04:45'),
(351, 'house', 4, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2021-12-09 21:25:29', '2022-07-05 19:04:45'),
(352, 'land', 5, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2021-12-09 21:25:29', '2022-07-05 19:04:45'),
(353, 'commercial-property', 6, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2021-12-09 21:25:29', '2022-07-05 19:04:45'),
(354, 'home', 1, 'Srapid\\Page\\Models\\Page', '', '2021-12-09 21:25:35', '2022-07-05 19:04:45'),
(355, 'blog', 2, 'Srapid\\Page\\Models\\Page', '', '2021-12-09 21:25:35', '2022-12-05 10:31:07'),
(356, 'sobre', 3, 'Srapid\\Page\\Models\\Page', '', '2021-12-09 21:25:35', '2022-12-05 10:26:44'),
(357, 'contato', 4, 'Srapid\\Page\\Models\\Page', '', '2021-12-09 21:25:35', '2022-12-05 10:25:10'),
(358, 'termos-condicoes', 5, 'Srapid\\Page\\Models\\Page', '', '2021-12-09 21:25:35', '2022-12-05 10:26:57'),
(359, 'cookie', 6, 'Srapid\\Page\\Models\\Page', '', '2021-12-09 21:25:35', '2022-12-05 10:27:06'),
(360, 'the-top-2020-handbag-trends-to-know', 105, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(361, 'top-search-engine-optimization-strategies', 106, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(362, 'which-company-would-you-choose', 107, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(363, 'used-car-dealer-sales-tricks-exposed', 108, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(364, '20-ways-to-sell-your-product-faster', 109, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(365, 'the-secrets-of-rich-and-famous-writers', 110, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(366, 'imagine-losing-20-pounds-in-14-days', 111, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(367, 'are-you-still-using-that-slow-old-typewriter', 112, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(368, 'a-skin-cream-thats-proven-to-work', 113, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(369, '10-reasons-to-start-your-own-profitable-website', 114, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(370, 'simple-ways-to-reduce-your-unwanted-wrinkles', 115, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(371, 'apple-imac-with-retina-5k-display-review', 116, 'Srapid\\Blog\\Models\\Post', 'blog', '2021-12-09 21:25:40', '2022-12-05 10:33:27'),
(377, 'sitio', 7, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2022-08-08 18:38:38', '2022-08-08 18:38:38'),
(378, 'chacara', 8, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2022-08-08 18:38:47', '2022-08-08 18:38:47'),
(379, 'fazenda', 9, 'Srapid\\RealEstate\\Models\\Category', 'categoria-propriedade', '2022-08-08 18:38:55', '2022-08-08 18:38:55'),
(380, 'apartamento-bem-localizado-no-centro-de-sao-paulo', 36, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-08 18:58:26', '2022-08-08 18:58:26'),
(381, 'loteamento-new-orleans-de-braganca', 13, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2022-08-10 16:45:22', '2022-08-10 16:45:22'),
(382, 'apartamento-para-alugar-no-coracao-da-berrini', 37, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-10 18:10:41', '2022-08-10 18:10:41'),
(383, 'casa-a-venda-em-bairro-nobre-da-cidade', 38, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-11 18:21:36', '2022-08-11 18:21:36'),
(384, 'linda-casa-com-pscina-nos-jardins', 39, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-11 19:24:59', '2022-08-11 19:24:59'),
(385, 'apartamento-de-luxo-na-paulista', 40, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-11 19:27:14', '2022-08-11 19:27:14'),
(386, 'casa-vitoriana-na-alamenda-santos', 41, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-11 19:52:26', '2022-08-11 19:52:26'),
(387, 'novo-conceito-de-apartamentos-por-andar', 14, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2022-08-13 15:03:29', '2022-08-13 15:03:29'),
(388, 'imoveis-disponiveis-na-planta-um-otimo-investimento-retorno-garantido', 15, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2022-08-13 15:05:54', '2022-08-13 15:05:54'),
(389, 'novo-studio-flat-no-coracao-financeiro-de-sao-paulo', 16, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2022-08-13 15:08:21', '2022-08-13 15:08:21'),
(390, 'apartamento-na-pamplona', 42, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-13 15:10:41', '2022-08-13 15:10:41'),
(391, 'casa', 43, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-13 15:24:08', '2022-08-13 15:24:08'),
(392, 'nova-casa-pronta-para-venda', 17, 'Srapid\\RealEstate\\Models\\Project', 'empreendimentos', '2022-08-15 19:37:50', '2022-08-15 19:37:50'),
(393, 'linda-casa-a-venda-em-sao-paulo', 44, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 16:10:06', '2022-08-18 16:10:06'),
(394, 'casa-maravilhosa-chique-e-linda-oportunidade', 45, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 16:11:46', '2022-08-18 16:11:46'),
(395, 'apartamento-studio-no-centro-financeiro', 46, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 16:14:20', '2022-08-18 16:14:20'),
(396, 'casa-para-alugar-no-bairro-mais-badalado-da-cidade', 47, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 16:19:33', '2022-08-18 16:19:33'),
(397, 'apartamento-super-moderno-para-alugar-na-vila-madalena', 48, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 16:43:31', '2022-08-18 16:43:31'),
(398, 'apartamento-para-alugar-em-pinheiros-sao-paulo-sp', 49, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 17:47:17', '2022-08-18 17:47:17'),
(399, 'apartamento-para-alugar-em-sumare-sao-paulo-sp', 50, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 18:05:16', '2022-08-18 18:05:16'),
(400, 'apartamento-para-alugar-em-cerqueira-cesar-sao-paulo-sp', 51, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 18:07:06', '2022-08-18 18:07:06'),
(401, 'apartamento-para-alugar-em-cerqueira-cesar-sao-paulo-sp-1', 52, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2022-08-18 18:10:16', '2022-08-18 18:10:16'),
(402, 'casa-moderna', 53, 'Srapid\\RealEstate\\Models\\Property', 'imoveis', '2023-03-30 18:14:03', '2023-03-30 18:14:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `abbreviation`) VALUES
(1, 'São Paulo', 1, 0, 1, 'published', '2019-11-18 08:17:57', '2022-07-04 20:18:23', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Srapid\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store', 1, 'Srapid\\ACL\\Models\\User', '', 'published', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(2, 'Private Home Sales', 1, 'Srapid\\ACL\\Models\\User', '', 'published', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(3, 'South Korean investors', 1, 'Srapid\\ACL\\Models\\User', '', 'published', '2019-11-18 03:07:27', '2019-11-18 03:07:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `transactions`
--

INSERT INTO `transactions` (`id`, `credits`, `description`, `user_id`, `account_id`, `type`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 12, 'add', NULL, '2022-08-09 20:19:24', '2022-08-09 20:19:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'pt', 'auth', 'failed', 'Essas credenciais não correspondem aos nossos registros.', '2022-02-18 07:37:26', '2022-09-15 20:08:07'),
(2, 0, 'pt', 'auth', 'password', 'A senha fornecida está incorreta.', '2022-02-18 07:37:26', '2022-09-15 20:08:07'),
(3, 0, 'pt', 'auth', 'throttle', 'Muitas tentativas de login. Por favor, tente novamente em :seconds segundos.', '2022-02-18 07:37:26', '2022-09-15 20:08:07'),
(4, 0, 'pt', 'pagination', 'previous', '« Anterior', '2022-02-18 07:37:26', '2022-09-15 20:11:18'),
(5, 0, 'pt', 'pagination', 'next', 'Próximo »', '2022-02-18 07:37:26', '2022-09-15 20:11:18'),
(6, 0, 'pt', 'passwords', 'reset', 'Sua senha foi alterada!', '2022-02-18 07:37:26', '2022-09-15 20:11:25'),
(7, 0, 'pt', 'passwords', 'sent', 'Enviamos o link de redefinição de senha por e-mail!', '2022-02-18 07:37:26', '2022-09-15 20:11:25'),
(8, 0, 'pt', 'passwords', 'throttled', 'Aguarde antes de tentar novamente.', '2022-02-18 07:37:26', '2022-09-15 20:11:25'),
(9, 0, 'pt', 'passwords', 'token', 'Este token de redefinição de senha é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:11:25'),
(10, 0, 'pt', 'passwords', 'user', 'Não conseguimos encontrar um usuário com esse endereço de e-mail.', '2022-02-18 07:37:26', '2022-09-15 20:11:25'),
(11, 0, 'pt', 'validation', 'accepted', 'O :attribute deve ser aceito.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(12, 0, 'pt', 'validation', 'accepted_if', 'O :attribute deve ser aceito quando :other for :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(13, 0, 'pt', 'validation', 'active_url', 'O :attribute não é um URL válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(14, 0, 'pt', 'validation', 'after', 'O :attribute deve ser uma data posterior a :date.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(15, 0, 'pt', 'validation', 'after_or_equal', 'O :attribute deve ser uma data posterior ou igual a :date.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(16, 0, 'pt', 'validation', 'alpha', 'O :attribute deve conter apenas letras.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(17, 0, 'pt', 'validation', 'alpha_dash', 'O :attribute deve conter apenas letras, números, traços e sublinhados.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(18, 0, 'pt', 'validation', 'alpha_num', 'O :attribute deve conter apenas letras e números.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(19, 0, 'pt', 'validation', 'array', 'O :attribute deve ser um array.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(20, 0, 'pt', 'validation', 'before', 'O :attribute deve ser uma data anterior a :date.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(21, 0, 'pt', 'validation', 'before_or_equal', 'O :attribute deve ser uma data anterior ou igual a :date.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(22, 0, 'pt', 'validation', 'between.numeric', 'O :attribute deve estar entre :min e :max.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(23, 0, 'pt', 'validation', 'between.file', 'O :attribute deve estar entre :min e :max kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(24, 0, 'pt', 'validation', 'between.string', 'O :attribute deve estar entre os caracteres :min e :max.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(25, 0, 'pt', 'validation', 'between.array', 'O :attribute deve ter entre :min e :max itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(26, 0, 'pt', 'validation', 'boolean', 'O campo :attribute deve ser true ou false.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(27, 0, 'pt', 'validation', 'confirmed', 'A confirmação de :attribute não corresponde.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(28, 0, 'pt', 'validation', 'current_password', 'A senha está incorreta.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(29, 0, 'pt', 'validation', 'date', 'O :attribute não é uma data válida.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(30, 0, 'pt', 'validation', 'date_equals', 'O :attribute deve ser uma data igual a :date.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(31, 0, 'pt', 'validation', 'date_format', 'O :attribute não corresponde ao formato :format.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(32, 0, 'pt', 'validation', 'declined', 'O :attribute deve ser recusado.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(33, 0, 'pt', 'validation', 'declined_if', 'O :attribute deve ser recusado quando :other for :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(34, 0, 'pt', 'validation', 'different', 'O :attribute e :other devem ser diferentes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(35, 0, 'pt', 'validation', 'digits', 'The :attribute must be :digits digits.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(36, 0, 'pt', 'validation', 'digits_between', 'O :attribute deve estar entre :min e :max dígitos.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(37, 0, 'pt', 'validation', 'dimensions', 'O :attribute tem dimensões de imagem inválidas.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(38, 0, 'pt', 'validation', 'distinct', 'O campo :attribute tem um valor duplicado.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(39, 0, 'pt', 'validation', 'email', 'O :attribute deve ser um endereço de e-mail válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(40, 0, 'pt', 'validation', 'ends_with', 'O :attribute deve terminar com um dos seguintes: :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(41, 0, 'pt', 'validation', 'enum', 'O :attribute selecionado é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(42, 0, 'pt', 'validation', 'exists', 'O :attribute selecionado é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(43, 0, 'pt', 'validation', 'file', 'O :attribute deve ser um arquivo.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(44, 0, 'pt', 'validation', 'filled', 'O campo :attribute deve ter um valor.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(45, 0, 'pt', 'validation', 'gt.numeric', 'O :attribute deve ser maior que :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(46, 0, 'pt', 'validation', 'gt.file', 'O :attribute deve ser maior que :value kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(47, 0, 'pt', 'validation', 'gt.string', 'O :attribute deve ser maior que :value caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(48, 0, 'pt', 'validation', 'gt.array', 'O :attribute deve ter mais de :value itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(49, 0, 'pt', 'validation', 'gte.numeric', 'O :attribute deve ser maior ou igual a :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(50, 0, 'pt', 'validation', 'gte.file', 'O :attribute deve ser maior ou igual a :value kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(51, 0, 'pt', 'validation', 'gte.string', 'O :attribute deve ser maior ou igual a :value caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(52, 0, 'pt', 'validation', 'gte.array', 'O :attribute deve ter :value itens ou mais.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(53, 0, 'pt', 'validation', 'image', 'O :attribute deve ser uma imagem.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(54, 0, 'pt', 'validation', 'in', 'O :attribute selecionado é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(55, 0, 'pt', 'validation', 'in_array', 'O campo :attribute não existe em :other.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(56, 0, 'pt', 'validation', 'integer', 'O :attribute deve ser um número inteiro.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(57, 0, 'pt', 'validation', 'ip', 'O :attribute deve ser um endereço IP válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(58, 0, 'pt', 'validation', 'ipv4', 'O :attribute deve ser um endereço IPv4 válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(59, 0, 'pt', 'validation', 'ipv6', 'O :attribute deve ser um endereço IPv6 válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(60, 0, 'pt', 'validation', 'json', 'O :attribute deve ser uma string JSON válida.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(61, 0, 'pt', 'validation', 'lt.numeric', 'O :attribute deve ser menor que :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(62, 0, 'pt', 'validation', 'lt.file', 'O :attribute deve ser menor que :value kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(63, 0, 'pt', 'validation', 'lt.string', 'O :attribute deve ser menor que :value caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(64, 0, 'pt', 'validation', 'lt.array', 'O :attribute deve ter menos de :value itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(65, 0, 'pt', 'validation', 'lte.numeric', 'O :attribute deve ser menor ou igual a :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(66, 0, 'pt', 'validation', 'lte.file', 'O :attribute deve ser menor ou igual a :value kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(67, 0, 'pt', 'validation', 'lte.string', 'O :attribute deve ser menor ou igual a :value caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(68, 0, 'pt', 'validation', 'lte.array', 'O :attribute não deve ter mais que :value itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(69, 0, 'pt', 'validation', 'mac_address', 'O :attribute deve ser um endereço MAC válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(70, 0, 'pt', 'validation', 'max.numeric', 'O :attribute não deve ser maior que :max.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(71, 0, 'pt', 'validation', 'max.file', 'O :attribute não deve ser maior que :max kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(72, 0, 'pt', 'validation', 'max.string', 'O :attribute não deve ser maior que :max caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(73, 0, 'pt', 'validation', 'max.array', 'O :attribute não deve ter mais que :max itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(74, 0, 'pt', 'validation', 'mimes', 'O :attribute deve ser um arquivo do tipo: :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(75, 0, 'pt', 'validation', 'mimetypes', 'O :attribute deve ser um arquivo do tipo: :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(76, 0, 'pt', 'validation', 'min.numeric', 'O :attribute deve ser pelo menos :min.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(77, 0, 'pt', 'validation', 'min.file', 'O :attribute deve ter pelo menos :min kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(78, 0, 'pt', 'validation', 'min.string', 'O :attribute deve ter pelo menos :min caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(79, 0, 'pt', 'validation', 'min.array', 'O :attribute deve ter pelo menos :min itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(80, 0, 'pt', 'validation', 'multiple_of', 'O :attribute deve ser um múltiplo de :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(81, 0, 'pt', 'validation', 'not_in', 'O :attribute selecionado é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(82, 0, 'pt', 'validation', 'not_regex', 'O :attribute selecionado é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(83, 0, 'pt', 'validation', 'numeric', 'O :attribute deve ser um número.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(84, 0, 'pt', 'validation', 'password', 'A senha está incorreta.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(85, 0, 'pt', 'validation', 'present', 'O campo :attribute deve estar presente.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(86, 0, 'pt', 'validation', 'prohibited', 'O campo :attribute é proibido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(87, 0, 'pt', 'validation', 'prohibited_if', 'O campo :attribute é proibido quando :other é :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(88, 0, 'pt', 'validation', 'prohibited_unless', 'O campo :attribute é proibido a menos que :other esteja em :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(89, 0, 'pt', 'validation', 'prohibits', 'O campo :attribute proíbe :other de estar presente.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(90, 0, 'pt', 'validation', 'regex', 'O formato :attribute é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(91, 0, 'pt', 'validation', 'required', 'O campo :attribute é obrigatório.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(92, 0, 'pt', 'validation', 'required_array_keys', 'O campo :attribute deve conter entradas para: :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(93, 0, 'pt', 'validation', 'required_if', 'O campo :attribute é obrigatório quando :other é :value.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(94, 0, 'pt', 'validation', 'required_unless', 'O campo :attribute é obrigatório, a menos que :other são em :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(95, 0, 'pt', 'validation', 'required_with', 'O campo :attribute é obrigatório quando :values está presente.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(96, 0, 'pt', 'validation', 'required_with_all', 'O campo :attribute é obrigatório quando :values estão presentes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(97, 0, 'pt', 'validation', 'required_without', 'O campo :attribute é obrigatório quando :values não está presente.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(98, 0, 'pt', 'validation', 'required_without_all', 'O campo :attribute é obrigatório quando nenhum dos :values está presente.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(99, 0, 'pt', 'validation', 'same', 'O :attribute e :other devem corresponder.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(100, 0, 'pt', 'validation', 'size.numeric', 'O :attribute deve ser :size.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(101, 0, 'pt', 'validation', 'size.file', 'O :attribute deve ser :size kilobytes.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(102, 0, 'pt', 'validation', 'size.string', 'O :attribute deve ser :size caracteres.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(103, 0, 'pt', 'validation', 'size.array', 'O :attribute deve conter :size itens.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(104, 0, 'pt', 'validation', 'starts_with', 'O :attribute deve começar com um dos seguintes: :values.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(105, 0, 'pt', 'validation', 'string', 'O :attribute deve ser uma string.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(106, 0, 'pt', 'validation', 'timezone', 'O :attribute deve ser um fuso horário válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(107, 0, 'pt', 'validation', 'unique', 'O :attribute já foi usado.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(108, 0, 'pt', 'validation', 'uploaded', 'O :attribute falhou ao carregar.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(109, 0, 'pt', 'validation', 'url', 'O :attribute deve ser um URL válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(110, 0, 'pt', 'validation', 'uuid', 'O :attribute deve ser um UUID válido.', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(111, 0, 'pt', 'validation', 'custom.attribute-name.rule-name', 'mensagem personalizada', '2022-02-18 07:37:26', '2022-09-15 20:15:07'),
(112, 0, 'pt', 'core/acl/api', 'api_clients', 'API Clients', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(113, 0, 'pt', 'core/acl/api', 'create_new_client', 'Criar novo cliente', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(114, 0, 'pt', 'core/acl/api', 'create_new_client_success', 'Criado novo cliente com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(115, 0, 'pt', 'core/acl/api', 'edit_client', 'Editar cliente \":name\"', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(116, 0, 'pt', 'core/acl/api', 'edit_client_success', 'Cliente atualizado com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(117, 0, 'pt', 'core/acl/api', 'delete_success', 'Cliente excluído com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(118, 0, 'pt', 'core/acl/api', 'confirm_delete_title', 'Confirme a exclusão do cliente \":name\"', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(119, 0, 'pt', 'core/acl/api', 'confirm_delete_description', 'Você realmente deseja excluir o cliente \":name\"?', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(120, 0, 'pt', 'core/acl/api', 'cancel_delete', 'Não', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(121, 0, 'pt', 'core/acl/api', 'continue_delete', 'Sim, vamos excluí-lo!', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(122, 0, 'pt', 'core/acl/api', 'name', 'Nome', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(123, 0, 'pt', 'core/acl/api', 'cancel', 'Cancelar', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(124, 0, 'pt', 'core/acl/api', 'save', 'Salvar', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(125, 0, 'pt', 'core/acl/api', 'edit', 'Editar', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(126, 0, 'pt', 'core/acl/api', 'delete', 'Deletar', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(127, 0, 'pt', 'core/acl/api', 'client_id', 'Client ID', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(128, 0, 'pt', 'core/acl/api', 'secret', 'Secreto', '2022-02-18 07:37:26', '2022-09-15 20:08:12'),
(129, 0, 'pt', 'core/acl/auth', 'login.username', 'Email/Usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(130, 0, 'pt', 'core/acl/auth', 'login.email', 'Email', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(131, 0, 'pt', 'core/acl/auth', 'login.password', 'Senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(132, 0, 'pt', 'core/acl/auth', 'login.title', 'Login de usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(133, 0, 'pt', 'core/acl/auth', 'login.remember', 'Lembre de mim?', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(134, 0, 'pt', 'core/acl/auth', 'login.login', 'Entrar', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(135, 0, 'pt', 'core/acl/auth', 'login.placeholder.username', 'Por favor insira seu nome de usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(136, 0, 'pt', 'core/acl/auth', 'login.placeholder.email', 'Por favor introduza o seu e-mail', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(137, 0, 'pt', 'core/acl/auth', 'login.success', 'Login feito com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(138, 0, 'pt', 'core/acl/auth', 'login.fail', 'Nome de usuário ou senha incorretos.', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(139, 0, 'pt', 'core/acl/auth', 'login.not_active', 'Sua conta ainda não foi ativada!', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(140, 0, 'pt', 'core/acl/auth', 'login.banned', 'Esta conta está banida.', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(141, 0, 'pt', 'core/acl/auth', 'login.logout_success', 'Sair com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(142, 0, 'pt', 'core/acl/auth', 'login.dont_have_account', 'Você não tem conta neste sistema, entre em contato com o administrador para mais informações!', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(143, 0, 'pt', 'core/acl/auth', 'forgot_password.title', 'Esqueceu a senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(144, 0, 'pt', 'core/acl/auth', 'forgot_password.message', '<p>Esqueceu sua senha?</p><p>Insira sua conta de e-mail. O sistema enviará um e-mail com link ativo para redefinir sua senha.</p>', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(145, 0, 'pt', 'core/acl/auth', 'forgot_password.submit', 'Enviar', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(146, 0, 'pt', 'core/acl/auth', 'reset.new_password', 'Nova Senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(147, 0, 'pt', 'core/acl/auth', 'reset.password_confirmation', 'Confirme a nova senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(148, 0, 'pt', 'core/acl/auth', 'reset.email', 'Email', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(149, 0, 'pt', 'core/acl/auth', 'reset.title', 'Redefinir sua senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(150, 0, 'pt', 'core/acl/auth', 'reset.update', 'Atualizar', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(151, 0, 'pt', 'core/acl/auth', 'reset.wrong_token', 'Este link é inválido ou expirou. Por favor, tente usar o formulário de redefinição novamente.', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(152, 0, 'pt', 'core/acl/auth', 'reset.user_not_found', 'Este nome de usuário não existe.', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(153, 0, 'pt', 'core/acl/auth', 'reset.success', 'Senha redefinida com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(154, 0, 'pt', 'core/acl/auth', 'reset.fail', 'O token é inválido, o link de redefinição de senha expirou!', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(155, 0, 'pt', 'core/acl/auth', 'reset.reset.title', 'Redefinir senha de e-mail', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(156, 0, 'pt', 'core/acl/auth', 'reset.send.success', 'Um e-mail foi enviado para sua conta de e-mail. Verifique e conclua esta ação.', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(157, 0, 'pt', 'core/acl/auth', 'reset.send.fail', 'Não é possível enviar e-mail neste momento. Por favor, tente novamente mais tarde.', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(158, 0, 'pt', 'core/acl/auth', 'reset.new-password', 'Nova Senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(159, 0, 'pt', 'core/acl/auth', 'email.reminder.title', 'Redefinir senha de e-mail', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(160, 0, 'pt', 'core/acl/auth', 'password_confirmation', 'Confirmação de senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(161, 0, 'pt', 'core/acl/auth', 'failed', 'Falhou', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(162, 0, 'pt', 'core/acl/auth', 'throttle', 'Acelerador', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(163, 0, 'pt', 'core/acl/auth', 'not_member', 'Ainda não é membro?', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(164, 0, 'pt', 'core/acl/auth', 'register_now', 'Registrar agora', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(165, 0, 'pt', 'core/acl/auth', 'lost_your_password', 'Perdeu sua senha?', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(166, 0, 'pt', 'core/acl/auth', 'login_title', 'Admin', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(167, 0, 'pt', 'core/acl/auth', 'login_via_social', 'Entrar com redes sociais', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(168, 0, 'pt', 'core/acl/auth', 'back_to_login', 'Voltar para a página de login', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(169, 0, 'pt', 'core/acl/auth', 'sign_in_below', 'Faça login abaixo', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(170, 0, 'pt', 'core/acl/auth', 'languages', 'Idiomas', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(171, 0, 'pt', 'core/acl/auth', 'reset_password', 'Redefinir senha', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(172, 0, 'pt', 'core/acl/auth', 'settings.email.title', 'ACL', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(173, 0, 'pt', 'core/acl/auth', 'settings.email.description', 'Configuração de e-mail ACL', '2022-02-18 07:37:26', '2022-09-15 20:08:20'),
(174, 0, 'pt', 'core/acl/permissions', 'notices.role_in_use', 'Não é possível excluir esta regra, ela ainda está em uso!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(175, 0, 'pt', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Você não pode excluir esta regra; pertence a outra pessoa!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(176, 0, 'pt', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Você não pode editar esta regra; pertence a outra pessoa!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(177, 0, 'pt', 'core/acl/permissions', 'notices.delete_global_role', 'Você não tem permissão para excluir funções globais!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(178, 0, 'pt', 'core/acl/permissions', 'notices.delete_success', 'A regra selecionada foi excluída com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(179, 0, 'pt', 'core/acl/permissions', 'notices.modified_success', 'A regra selecionada foi modificada com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(180, 0, 'pt', 'core/acl/permissions', 'notices.create_success', 'A nova regra foi criada com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(181, 0, 'pt', 'core/acl/permissions', 'notices.duplicated_success', 'A regra selecionada foi duplicada com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(182, 0, 'pt', 'core/acl/permissions', 'notices.no_select', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(183, 0, 'pt', 'core/acl/permissions', 'notices.not_found', 'Regra não encontrada', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(184, 0, 'pt', 'core/acl/permissions', 'name', 'Nome', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(185, 0, 'pt', 'core/acl/permissions', 'current_role', 'Regra atual', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(186, 0, 'pt', 'core/acl/permissions', 'no_role_assigned', 'Nenhuma regra atribuída', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(187, 0, 'pt', 'core/acl/permissions', 'role_assigned', 'Regra atribuída', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(188, 0, 'pt', 'core/acl/permissions', 'create_role', 'Criar nova função', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(189, 0, 'pt', 'core/acl/permissions', 'role_name', 'Nome', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(190, 0, 'pt', 'core/acl/permissions', 'role_description', 'Descrição', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(191, 0, 'pt', 'core/acl/permissions', 'permission_flags', 'Sinalizadores de permissão', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(192, 0, 'pt', 'core/acl/permissions', 'cancel', 'Cancelar', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(193, 0, 'pt', 'core/acl/permissions', 'reset', 'Redefinir', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(194, 0, 'pt', 'core/acl/permissions', 'save', 'Salvar', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(195, 0, 'pt', 'core/acl/permissions', 'global_role_msg', 'Esta é uma regra global e não pode ser modificada. Você pode usar o botão Duplicar para fazer uma cópia dessa função que pode ser modificada.', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(196, 0, 'pt', 'core/acl/permissions', 'details', 'Detalhes', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(197, 0, 'pt', 'core/acl/permissions', 'duplicate', 'Duplicado', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(198, 0, 'pt', 'core/acl/permissions', 'all', 'Todas as permissões', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(199, 0, 'pt', 'core/acl/permissions', 'list_role', 'Lista de Regras', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(200, 0, 'pt', 'core/acl/permissions', 'created_on', 'Criado em', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(201, 0, 'pt', 'core/acl/permissions', 'created_by', 'Criado por', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(202, 0, 'pt', 'core/acl/permissions', 'actions', 'Ações', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(203, 0, 'pt', 'core/acl/permissions', 'role_in_use', 'Não é possível excluir esta regra, ela ainda está em uso!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(204, 0, 'pt', 'core/acl/permissions', 'role_delete_belong_user', 'Você não pode excluir esta regra; pertence a outra pessoa!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(205, 0, 'pt', 'core/acl/permissions', 'delete_global_role', 'Não pode deletar uma regra global', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(206, 0, 'pt', 'core/acl/permissions', 'delete_success', 'Regra deletada com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(207, 0, 'pt', 'core/acl/permissions', 'no_select', 'Selecione pelo menos uma regra para realizar esta ação!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(208, 0, 'pt', 'core/acl/permissions', 'not_found', 'Nenhuma regra encontrada!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(209, 0, 'pt', 'core/acl/permissions', 'role_edit_belong_user', 'Você não pode editar esta regra; pertence a outra pessoa!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(210, 0, 'pt', 'core/acl/permissions', 'modified_success', 'Modificado com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(211, 0, 'pt', 'core/acl/permissions', 'create_success', 'Criado com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(212, 0, 'pt', 'core/acl/permissions', 'duplicated_success', 'Duplicado com Sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(213, 0, 'pt', 'core/acl/permissions', 'options', 'Opções', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(214, 0, 'pt', 'core/acl/permissions', 'access_denied_message', 'Você não tem permissão para fazer esta ação', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(215, 0, 'pt', 'core/acl/permissions', 'roles', 'Regras', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(216, 0, 'pt', 'core/acl/permissions', 'role_permission', 'Regras e permissões', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(217, 0, 'pt', 'core/acl/permissions', 'user_management', 'Gerenciamento de usuários', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(218, 0, 'pt', 'core/acl/permissions', 'super_user_management', 'Gerenciamento de superusuários', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(219, 0, 'pt', 'core/acl/permissions', 'action_unauthorized', 'Esta ação não é autorizada.', '2022-02-18 07:37:26', '2022-09-15 20:08:27'),
(220, 0, 'pt', 'core/acl/reminders', 'password', 'As senhas devem ter pelo menos seis caracteres e corresponder à confirmação.', '2022-02-18 07:37:26', '2022-09-15 20:08:32'),
(221, 0, 'pt', 'core/acl/reminders', 'user', 'Não conseguimos encontrar um usuário com esse endereço de e-mail.', '2022-02-18 07:37:26', '2022-09-15 20:08:32'),
(222, 0, 'pt', 'core/acl/reminders', 'token', 'Este token de redefinição de senha é inválido.', '2022-02-18 07:37:26', '2022-09-15 20:08:32'),
(223, 0, 'pt', 'core/acl/reminders', 'sent', 'Lembrete de senha enviado!', '2022-02-18 07:37:26', '2022-09-15 20:08:32'),
(224, 0, 'pt', 'core/acl/reminders', 'reset', 'A senha foi redefinida!', '2022-02-18 07:37:26', '2022-09-15 20:08:32'),
(225, 0, 'pt', 'core/acl/users', 'delete_user_logged_in', 'Não é possível excluir este usuário. Este usuário está conectado!', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(226, 0, 'pt', 'core/acl/users', 'no_select', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(227, 0, 'pt', 'core/acl/users', 'lock_user_logged_in', 'Não é possível bloquear este usuário. Este usuário está conectado!', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(228, 0, 'pt', 'core/acl/users', 'update_success', 'Atualizado status com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(229, 0, 'pt', 'core/acl/users', 'save_setting_failed', 'Algo deu errado ao salvar sua configuração', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(230, 0, 'pt', 'core/acl/users', 'not_found', 'Usuário não encontrado', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(231, 0, 'pt', 'core/acl/users', 'email_exist', 'Esse endereço de e-mail já pertence a uma conta existente', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(232, 0, 'pt', 'core/acl/users', 'username_exist', 'Esse endereço de nome de usuário já pertence a uma conta existente', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(233, 0, 'pt', 'core/acl/users', 'update_profile_success', 'Suas alterações de perfil foram salvas com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(234, 0, 'pt', 'core/acl/users', 'password_update_success', 'Senha mudada com sucesso', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(235, 0, 'pt', 'core/acl/users', 'current_password_not_valid', 'A senha atual não é válida', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(236, 0, 'pt', 'core/acl/users', 'user_exist_in', 'O usuário já é um membro', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(237, 0, 'pt', 'core/acl/users', 'email', 'Email', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(238, 0, 'pt', 'core/acl/users', 'role', 'Regra', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(239, 0, 'pt', 'core/acl/users', 'username', 'Nome de usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(240, 0, 'pt', 'core/acl/users', 'last_name', 'Sobrenome', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(241, 0, 'pt', 'core/acl/users', 'first_name', 'Primeiro Nome', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(242, 0, 'pt', 'core/acl/users', 'message', 'Mensagem', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(243, 0, 'pt', 'core/acl/users', 'cancel_btn', 'Cancelar', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(244, 0, 'pt', 'core/acl/users', 'change_password', 'Mudar senha', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(245, 0, 'pt', 'core/acl/users', 'current_password', 'Senha atual', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(246, 0, 'pt', 'core/acl/users', 'new_password', 'Nova Senha', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(247, 0, 'pt', 'core/acl/users', 'confirm_new_password', 'Confirme a nova senha', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(248, 0, 'pt', 'core/acl/users', 'password', 'Senha', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(249, 0, 'pt', 'core/acl/users', 'save', 'Salvar', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(250, 0, 'pt', 'core/acl/users', 'cannot_delete', 'O usuário não pôde ser excluído', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(251, 0, 'pt', 'core/acl/users', 'deleted', 'Usuário excluído', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(252, 0, 'pt', 'core/acl/users', 'last_login', 'Último Login', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(253, 0, 'pt', 'core/acl/users', 'error_update_profile_image', 'Erro ao atualizar a imagem do perfil', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(254, 0, 'pt', 'core/acl/users', 'email_reminder_template', '<h3>Olá :name</h3><p>O sistema recebeu uma solicitação para restaurar a senha da sua conta, para concluir esta tarefa, clique no link abaixo.</p><p><a href=\": link\">Redefinir senha agora</a></p><p>Se não solicitar recuperação de senha, ignore este e-mail.</p><p>Este e-mail é válido por 60 minutos após o recebimento do e-mail.</p><p>Este e-mail é válido por 60 minutos após o recebimento do e-mail.</p><p> p>', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(255, 0, 'pt', 'core/acl/users', 'change_profile_image', 'Alterar imagem do perfil', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(256, 0, 'pt', 'core/acl/users', 'new_image', 'Nova imagem', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(257, 0, 'pt', 'core/acl/users', 'loading', 'Carregando', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(258, 0, 'pt', 'core/acl/users', 'close', 'Fechar', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(259, 0, 'pt', 'core/acl/users', 'update', 'Atualizar', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(260, 0, 'pt', 'core/acl/users', 'read_image_failed', 'Falha ao ler o arquivo de imagem', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(261, 0, 'pt', 'core/acl/users', 'users', 'Usuários', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(262, 0, 'pt', 'core/acl/users', 'update_avatar_success', 'Atualizado imagem do perfil com sucesso!', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(263, 0, 'pt', 'core/acl/users', 'info.title', 'Perfil de usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(264, 0, 'pt', 'core/acl/users', 'info.first_name', 'Primeiro Nome', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(265, 0, 'pt', 'core/acl/users', 'info.last_name', 'Último Nome', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(266, 0, 'pt', 'core/acl/users', 'info.email', 'Email', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(267, 0, 'pt', 'core/acl/users', 'info.second_email', 'Email secundário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(268, 0, 'pt', 'core/acl/users', 'info.address', 'Endereço', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(269, 0, 'pt', 'core/acl/users', 'info.second_address', 'Endereço secundário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(270, 0, 'pt', 'core/acl/users', 'info.birth_day', 'Data de Aniversário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(271, 0, 'pt', 'core/acl/users', 'info.job', 'Cargo', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(272, 0, 'pt', 'core/acl/users', 'info.mobile_number', 'Telefone Móvel', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(273, 0, 'pt', 'core/acl/users', 'info.second_mobile_number', 'Telefone secundário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(274, 0, 'pt', 'core/acl/users', 'info.interes', 'Interesses', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(275, 0, 'pt', 'core/acl/users', 'info.about', 'Sobre', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(276, 0, 'pt', 'core/acl/users', 'gender.title', 'Gênero', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(277, 0, 'pt', 'core/acl/users', 'gender.male', 'Masculino', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(278, 0, 'pt', 'core/acl/users', 'gender.female', 'Feminino', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(279, 0, 'pt', 'core/acl/users', 'total_users', 'Total de usuários', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(280, 0, 'pt', 'core/acl/users', 'statuses.activated', 'Ativado', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(281, 0, 'pt', 'core/acl/users', 'statuses.deactivated', 'Desativado', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(282, 0, 'pt', 'core/acl/users', 'make_super', 'Faça super', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(283, 0, 'pt', 'core/acl/users', 'remove_super', 'Remover super', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(284, 0, 'pt', 'core/acl/users', 'is_super', 'é super?', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(285, 0, 'pt', 'core/acl/users', 'email_placeholder', 'Ex: exemplo@gmail.com', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(286, 0, 'pt', 'core/acl/users', 'password_confirmation', 'Redigite a senha', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(287, 0, 'pt', 'core/acl/users', 'select_role', 'Selecionar regra', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(288, 0, 'pt', 'core/acl/users', 'create_new_user', 'Criar um novo usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(289, 0, 'pt', 'core/acl/users', 'cannot_delete_super_user', 'Permissão negada. Não é possível excluir um superusuário!', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(290, 0, 'pt', 'core/acl/users', 'assigned_role', 'Regra atribuída', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(291, 0, 'pt', 'core/acl/users', 'no_role_assigned', 'Nenhuma regra atribuída', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(292, 0, 'pt', 'core/acl/users', 'view_user_profile', 'Ver o perfil do usuário', '2022-02-18 07:37:26', '2022-09-15 20:08:41'),
(435, 0, 'pt', 'core/base/base', 'yes', 'Sim', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(436, 0, 'pt', 'core/base/base', 'no', 'Não', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(437, 0, 'pt', 'core/base/base', 'is_default', 'É padrão?', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(438, 0, 'pt', 'core/base/base', 'proc_close_disabled_error', 'A função proc_close() está desabilitada. Entre em contato com seu provedor de hospedagem para habilitar isto. Ou você pode adicionar a .env: CAN_EXECUTE_COMMAND=false para desabilitar este recurso.', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(439, 0, 'pt', 'core/base/base', 'email_template.header', 'Cabeçalho do modelo de e-mail', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(440, 0, 'pt', 'core/base/base', 'email_template.footer', 'Rodapé do modelo de e-mail', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(441, 0, 'pt', 'core/base/base', 'email_template.site_title', 'Titulo do site', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(442, 0, 'pt', 'core/base/base', 'email_template.site_url', 'URL do site', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(443, 0, 'pt', 'core/base/base', 'email_template.site_logo', 'Logo do Site', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(444, 0, 'pt', 'core/base/base', 'email_template.date_time', 'Data atual', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(445, 0, 'pt', 'core/base/base', 'email_template.date_year', 'Ano Atual', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(446, 0, 'pt', 'core/base/base', 'email_template.site_admin_email', 'E-mail do administrador do site', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(447, 0, 'pt', 'core/base/base', 'change_image', 'Alterar imagem', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(448, 0, 'pt', 'core/base/base', 'delete_image', 'Excluir imagem', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(449, 0, 'pt', 'core/base/base', 'preview_image', 'Visualizar imagem', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(450, 0, 'pt', 'core/base/base', 'image', 'Imagem', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(451, 0, 'pt', 'core/base/base', 'using_button', 'Usando o botão', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(452, 0, 'pt', 'core/base/base', 'select_image', 'Selecione a imagem', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(453, 0, 'pt', 'core/base/base', 'to_add_more_image', 'para adicionar mais imagens', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(454, 0, 'pt', 'core/base/base', 'add_image', 'Adicionar imagem', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(455, 0, 'pt', 'core/base/base', 'tools', 'Ferramentas', '2022-02-18 07:37:27', '2022-09-15 20:08:47'),
(456, 0, 'pt', 'core/base/cache', 'cache_management', 'Gerenciamento de cache', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(457, 0, 'pt', 'core/base/cache', 'cache_commands', 'Limpar comandos de cache', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(458, 0, 'pt', 'core/base/cache', 'commands.clear_cms_cache.title', 'Limpe todo o cache do CMS', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(459, 0, 'pt', 'core/base/cache', 'commands.clear_cms_cache.description', 'Limpar cache do CMS: cache do banco de dados, blocos estáticos... Execute este comando quando não vir as alterações após a atualização dos dados.', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(460, 0, 'pt', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache limpo', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(461, 0, 'pt', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Atualizar visualizações compiladas', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(462, 0, 'pt', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Limpe as visualizações compiladas para atualizar as visualizações.', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(463, 0, 'pt', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Visualização de cache atualizada', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(464, 0, 'pt', 'core/base/cache', 'commands.clear_config_cache.title', 'Limpar cache de configuração', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(465, 0, 'pt', 'core/base/cache', 'commands.clear_config_cache.description', 'Talvez seja necessário atualizar o cache de configuração ao alterar algo no ambiente de produção.', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(466, 0, 'pt', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Cache de configuração limpo', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(467, 0, 'pt', 'core/base/cache', 'commands.clear_route_cache.title', 'Limpar cache de rota', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(468, 0, 'pt', 'core/base/cache', 'commands.clear_route_cache.description', 'Limpe o roteamento de cache.', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(469, 0, 'pt', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'O cache da rota foi limpo', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(470, 0, 'pt', 'core/base/cache', 'commands.clear_log.title', 'Limipar log', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(471, 0, 'pt', 'core/base/cache', 'commands.clear_log.description', 'Limpar arquivos de log do sistema', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(472, 0, 'pt', 'core/base/cache', 'commands.clear_log.success_msg', 'O log do sistema foi limpo', '2022-02-18 07:37:27', '2022-09-15 20:08:54'),
(473, 0, 'pt', 'core/base/enums', 'statuses.draft', 'Rascunho', '2022-02-18 07:37:27', '2022-09-15 20:09:01'),
(474, 0, 'pt', 'core/base/enums', 'statuses.pending', 'Pendente', '2022-02-18 07:37:27', '2022-09-15 20:09:01'),
(475, 0, 'pt', 'core/base/enums', 'statuses.published', 'Publicado', '2022-02-18 07:37:27', '2022-09-15 20:09:01'),
(476, 0, 'pt', 'core/base/errors', '401_title', 'Permissão negada', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(477, 0, 'pt', 'core/base/errors', '401_msg', '<li>Você não recebeu acesso à seção pelo administrador.</li>\n<li>Você pode ter o tipo de conta errado.</li>\n<li>Você não está autorizado a visualizar o recurso solicitado.</li>\n<li>Sua assinatura pode ter expirado.</li>', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(478, 0, 'pt', 'core/base/errors', '404_title', 'Não foi possível encontrar a página', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(479, 0, 'pt', 'core/base/errors', '404_msg', '<li>A página que você solicitou não existe.</li>\n<li>O link em que você clicou não existe mais.</li>\n<li>A página pode ter sido movida para um novo local.</li>\n<li>Pode ter ocorrido um erro.</li>\n<li>Você não está autorizado a visualizar o recurso solicitado.</li>', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(480, 0, 'pt', 'core/base/errors', '500_title', 'A página não pôde ser carregada', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(481, 0, 'pt', 'core/base/errors', '500_msg', '<li>A página que você solicitou não existe.</li>\n<li>O link em que você clicou não existe mais.</li>\n<li>A página pode ter sido movida para um novo local.</li>\n<li>Pode ter ocorrido um erro.</li>\n<li>Você não está autorizado a visualizar o recurso solicitado.</li>', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(482, 0, 'pt', 'core/base/errors', 'reasons', 'Isso pode ter ocorrido por vários motivos', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(483, 0, 'pt', 'core/base/errors', 'try_again', 'Tente novamente em alguns minutos ou retorne à página inicial <a href=\"http://site-rapido.test/admin\">clicando aqui</a>.', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(484, 0, 'pt', 'core/base/errors', 'not_found', 'Não encontrado', '2022-02-18 07:37:27', '2022-09-15 20:09:08'),
(485, 0, 'pt', 'core/base/forms', 'choose_image', 'Escolher imagem', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(486, 0, 'pt', 'core/base/forms', 'actions', 'Ações', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(487, 0, 'pt', 'core/base/forms', 'save', 'Salvar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(488, 0, 'pt', 'core/base/forms', 'save_and_continue', 'Salvar e Editar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(489, 0, 'pt', 'core/base/forms', 'image', 'Imagem', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(490, 0, 'pt', 'core/base/forms', 'image_placeholder', 'Insira o caminho da imagem ou clique no botão de upload', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(491, 0, 'pt', 'core/base/forms', 'create', 'Criar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(492, 0, 'pt', 'core/base/forms', 'edit', 'Editar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(493, 0, 'pt', 'core/base/forms', 'permalink', 'Link permanente', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(494, 0, 'pt', 'core/base/forms', 'ok', 'OK', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(495, 0, 'pt', 'core/base/forms', 'cancel', 'Cancelar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(496, 0, 'pt', 'core/base/forms', 'character_remain', 'Caractere Remanescente', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(497, 0, 'pt', 'core/base/forms', 'template', 'Template', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(498, 0, 'pt', 'core/base/forms', 'choose_file', 'Escolher arquivo', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(499, 0, 'pt', 'core/base/forms', 'file', 'Arquivo', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(500, 0, 'pt', 'core/base/forms', 'content', 'Conteúdo', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(501, 0, 'pt', 'core/base/forms', 'description', 'Descrição', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(502, 0, 'pt', 'core/base/forms', 'name', 'Nome', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(503, 0, 'pt', 'core/base/forms', 'slug', 'Slug', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(504, 0, 'pt', 'core/base/forms', 'title', 'Título', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(505, 0, 'pt', 'core/base/forms', 'value', 'Valor', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(506, 0, 'pt', 'core/base/forms', 'name_placeholder', 'Nome', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(507, 0, 'pt', 'core/base/forms', 'alias_placeholder', 'pseudônimo', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(508, 0, 'pt', 'core/base/forms', 'description_placeholder', 'Pequena descrição', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(509, 0, 'pt', 'core/base/forms', 'parent', 'Relação', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(510, 0, 'pt', 'core/base/forms', 'icon', 'Icon', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(511, 0, 'pt', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(512, 0, 'pt', 'core/base/forms', 'order_by', 'Ordenar por', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(513, 0, 'pt', 'core/base/forms', 'order_by_placeholder', 'Ordenar por', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(514, 0, 'pt', 'core/base/forms', 'is_featured', 'Está em destaque?', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(515, 0, 'pt', 'core/base/forms', 'is_default', 'É padrão?', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(516, 0, 'pt', 'core/base/forms', 'update', 'Atualizar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(517, 0, 'pt', 'core/base/forms', 'publish', 'Publicar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(518, 0, 'pt', 'core/base/forms', 'remove_image', 'Remover Imagem', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(519, 0, 'pt', 'core/base/forms', 'remove_file', 'Remover Arquivo', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(520, 0, 'pt', 'core/base/forms', 'order', 'Ordem', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(521, 0, 'pt', 'core/base/forms', 'alias', 'pseudônimo', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(522, 0, 'pt', 'core/base/forms', 'basic_information', 'Informação Básica', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(523, 0, 'pt', 'core/base/forms', 'short_code', 'Código curto', '2022-02-18 07:37:27', '2022-09-15 20:09:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(524, 0, 'pt', 'core/base/forms', 'add_short_code', 'Adicionar um código de acesso', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(525, 0, 'pt', 'core/base/forms', 'add', 'Adicionar', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(526, 0, 'pt', 'core/base/forms', 'link', 'Link', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(527, 0, 'pt', 'core/base/forms', 'show_hide_editor', 'Mostrar/ocultar editor', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(528, 0, 'pt', 'core/base/forms', 'basic_info_title', 'Informação Básica', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(529, 0, 'pt', 'core/base/forms', 'expand_all', 'Expandir todos', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(530, 0, 'pt', 'core/base/forms', 'collapse_all', 'Recolher todos', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(531, 0, 'pt', 'core/base/forms', 'view_new_tab', 'Abrir em nova guia', '2022-02-18 07:37:27', '2022-09-15 20:09:14'),
(532, 0, 'pt', 'core/base/layouts', 'platform_admin', 'Administração da plataforma', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(533, 0, 'pt', 'core/base/layouts', 'dashboard', 'Dashboard', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(534, 0, 'pt', 'core/base/layouts', 'widgets', 'Widgets', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(535, 0, 'pt', 'core/base/layouts', 'plugins', 'Plugins', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(536, 0, 'pt', 'core/base/layouts', 'settings', 'Configurações', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(537, 0, 'pt', 'core/base/layouts', 'setting_general', 'Geral', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(538, 0, 'pt', 'core/base/layouts', 'setting_email', 'Email', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(539, 0, 'pt', 'core/base/layouts', 'system_information', 'Informações do Sistema', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(540, 0, 'pt', 'core/base/layouts', 'theme', 'Theme', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(541, 0, 'pt', 'core/base/layouts', 'copyright', 'Copyright :year © :company.', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(542, 0, 'pt', 'core/base/layouts', 'profile', 'Perfil', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(543, 0, 'pt', 'core/base/layouts', 'logout', 'Sair', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(544, 0, 'pt', 'core/base/layouts', 'no_search_result', 'Nenhum resultado encontrado, tente com palavras-chave diferentes.', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(545, 0, 'pt', 'core/base/layouts', 'home', 'Home', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(546, 0, 'pt', 'core/base/layouts', 'search', 'Procurar', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(547, 0, 'pt', 'core/base/layouts', 'add_new', 'Adicionar Novo', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(548, 0, 'pt', 'core/base/layouts', 'n_a', 'N/A', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(549, 0, 'pt', 'core/base/layouts', 'page_loaded_time', 'Página carregada em', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(550, 0, 'pt', 'core/base/layouts', 'view_website', 'Visualização do Website', '2022-02-18 07:37:27', '2022-09-15 20:09:21'),
(551, 0, 'pt', 'core/base/mail', 'send-fail', 'O envio de email falhou', '2022-02-18 07:37:27', '2022-09-15 20:09:27'),
(552, 0, 'pt', 'core/base/notices', 'create_success_message', 'Criado com sucesso', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(553, 0, 'pt', 'core/base/notices', 'update_success_message', 'Atualizado com sucesso', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(554, 0, 'pt', 'core/base/notices', 'delete_success_message', 'Apagado com sucesso', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(555, 0, 'pt', 'core/base/notices', 'success_header', 'Sucesso!', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(556, 0, 'pt', 'core/base/notices', 'error_header', 'Erro!', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(557, 0, 'pt', 'core/base/notices', 'no_select', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(558, 0, 'pt', 'core/base/notices', 'processing_request', 'Estamos processando sua requisição.', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(559, 0, 'pt', 'core/base/notices', 'error', 'Erro!', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(560, 0, 'pt', 'core/base/notices', 'success', 'Sucesso!', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(561, 0, 'pt', 'core/base/notices', 'info', 'Info!', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(562, 0, 'pt', 'core/base/notices', 'enum.validate_message', 'O valor :attribute que você inseriu é inválido.', '2022-02-18 07:37:27', '2022-09-15 20:09:32'),
(563, 0, 'pt', 'core/base/system', 'no_select', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(564, 0, 'pt', 'core/base/system', 'cannot_find_user', 'Não foi possível encontrar o usuário especificado', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(565, 0, 'pt', 'core/base/system', 'supper_revoked', 'Acesso de superusuário revogado', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(566, 0, 'pt', 'core/base/system', 'cannot_revoke_yourself', 'Não é possível revogar a permissão de acesso do usuário ceia!', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(567, 0, 'pt', 'core/base/system', 'cant_remove_supper', 'Você não tem permissão para remover este superusuário', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(568, 0, 'pt', 'core/base/system', 'cant_find_user_with_email', 'Não foi possível encontrar o usuário com o endereço de e-mail especificado', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(569, 0, 'pt', 'core/base/system', 'supper_granted', 'Acesso de superusuário concedido', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(570, 0, 'pt', 'core/base/system', 'delete_log_success', 'Excluir arquivo de log com sucesso!', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(571, 0, 'pt', 'core/base/system', 'get_member_success', 'Lista de membros recuperada com sucesso', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(572, 0, 'pt', 'core/base/system', 'error_occur', 'Ocorreram os seguintes erros', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(573, 0, 'pt', 'core/base/system', 'user_management', 'Gerenciamento de usuários', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(574, 0, 'pt', 'core/base/system', 'user_management_description', 'Gerenciar usuários.', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(575, 0, 'pt', 'core/base/system', 'role_and_permission', 'Funções e permissões', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(576, 0, 'pt', 'core/base/system', 'role_and_permission_description', 'Gerencie as funções disponíveis.', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(577, 0, 'pt', 'core/base/system', 'user.list_super', 'Listar superusuários', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(578, 0, 'pt', 'core/base/system', 'user.email', 'Email', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(579, 0, 'pt', 'core/base/system', 'user.last_login', 'Último Login', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(580, 0, 'pt', 'core/base/system', 'user.username', 'Nome de usuário', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(581, 0, 'pt', 'core/base/system', 'user.add_user', 'Adicionar superusuário', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(582, 0, 'pt', 'core/base/system', 'user.cancel', 'Cancelar', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(583, 0, 'pt', 'core/base/system', 'user.create', 'Criar', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(584, 0, 'pt', 'core/base/system', 'options.features', 'Controle de acesso a recursos', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(585, 0, 'pt', 'core/base/system', 'options.feature_description', 'Gerencie o disponível.', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(586, 0, 'pt', 'core/base/system', 'options.manage_super', 'Gerenciamento de superusuários', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(587, 0, 'pt', 'core/base/system', 'options.manage_super_description', 'Adicionar/remover superusuários.', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(588, 0, 'pt', 'core/base/system', 'options.info', 'Informação do sistema', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(589, 0, 'pt', 'core/base/system', 'options.info_description', 'Todas as informações sobre a configuração atual do sistema.', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(590, 0, 'pt', 'core/base/system', 'info.title', 'Informação do sistema', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(591, 0, 'pt', 'core/base/system', 'info.cache', 'Cache', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(592, 0, 'pt', 'core/base/system', 'info.locale', 'Localidade ativa', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(593, 0, 'pt', 'core/base/system', 'info.environment', 'Ambiente', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(594, 0, 'pt', 'core/base/system', 'disabled_in_demo_mode', 'Você não pode fazer isso no modo de demonstração!', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(595, 0, 'pt', 'core/base/system', 'report_description', 'Compartilhe essas informações para solução de problemas', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(596, 0, 'pt', 'core/base/system', 'get_system_report', 'Obter relatório do sistema', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(597, 0, 'pt', 'core/base/system', 'system_environment', 'Ambiente do sistema', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(598, 0, 'pt', 'core/base/system', 'framework_version', 'Versão da estrutura', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(599, 0, 'pt', 'core/base/system', 'timezone', 'Fuso horário', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(600, 0, 'pt', 'core/base/system', 'debug_mode', 'Modo Debug', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(601, 0, 'pt', 'core/base/system', 'storage_dir_writable', 'Diretório de armazenamento gravável', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(602, 0, 'pt', 'core/base/system', 'cache_dir_writable', 'Cache Diretório Gravável', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(603, 0, 'pt', 'core/base/system', 'app_size', 'Tamanho do aplicativo', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(604, 0, 'pt', 'core/base/system', 'server_environment', 'Ambiente do Servidor', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(605, 0, 'pt', 'core/base/system', 'php_version', 'PHP Version', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(606, 0, 'pt', 'core/base/system', 'php_version_error', 'PHP deve se >= :version', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(607, 0, 'pt', 'core/base/system', 'server_software', 'Software do servidor', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(608, 0, 'pt', 'core/base/system', 'server_os', 'SO do servidor', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(609, 0, 'pt', 'core/base/system', 'database', 'Base de dados', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(610, 0, 'pt', 'core/base/system', 'ssl_installed', 'SSL Instalado', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(611, 0, 'pt', 'core/base/system', 'cache_driver', 'Cache Driver', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(612, 0, 'pt', 'core/base/system', 'session_driver', 'Driver de sessão', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(613, 0, 'pt', 'core/base/system', 'queue_connection', 'Conexão de fila', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(614, 0, 'pt', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(615, 0, 'pt', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(616, 0, 'pt', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(617, 0, 'pt', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(618, 0, 'pt', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(619, 0, 'pt', 'core/base/system', 'file_info_ext', 'Informações do Arquivo Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(620, 0, 'pt', 'core/base/system', 'tokenizer_ext', 'Extensão do Tokenizador', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(621, 0, 'pt', 'core/base/system', 'extra_stats', 'Estatísticas extras', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(622, 0, 'pt', 'core/base/system', 'installed_packages', 'Pacotes instalados e seus números de versão', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(623, 0, 'pt', 'core/base/system', 'extra_information', 'Informação extra', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(624, 0, 'pt', 'core/base/system', 'copy_report', 'Copiar relatório', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(625, 0, 'pt', 'core/base/system', 'package_name', 'Nome do pacote', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(626, 0, 'pt', 'core/base/system', 'dependency_name', 'Nome da dependência', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(627, 0, 'pt', 'core/base/system', 'version', 'Versão', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(628, 0, 'pt', 'core/base/system', 'cms_version', 'Versão do CMS', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(629, 0, 'pt', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(630, 0, 'pt', 'core/base/system', 'updater', 'Atualizador do sistema', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(631, 0, 'pt', 'core/base/system', 'zip', 'Extensão Zip', '2022-02-18 07:37:27', '2022-09-15 20:09:37'),
(632, 0, 'pt', 'core/base/tables', 'id', 'ID', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(633, 0, 'pt', 'core/base/tables', 'name', 'Name', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(634, 0, 'pt', 'core/base/tables', 'slug', 'Slug', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(635, 0, 'pt', 'core/base/tables', 'title', 'Título', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(636, 0, 'pt', 'core/base/tables', 'order_by', 'Ordenar por', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(637, 0, 'pt', 'core/base/tables', 'order', 'Ordem', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(638, 0, 'pt', 'core/base/tables', 'status', 'Status', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(639, 0, 'pt', 'core/base/tables', 'created_at', 'Criado em', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(640, 0, 'pt', 'core/base/tables', 'updated_at', 'Atualizado em', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(641, 0, 'pt', 'core/base/tables', 'description', 'Descrição', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(642, 0, 'pt', 'core/base/tables', 'operations', 'Operações', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(643, 0, 'pt', 'core/base/tables', 'url', 'URL', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(644, 0, 'pt', 'core/base/tables', 'author', 'Autor', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(645, 0, 'pt', 'core/base/tables', 'notes', 'Notas', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(646, 0, 'pt', 'core/base/tables', 'column', 'Coluna', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(647, 0, 'pt', 'core/base/tables', 'origin', 'Origem', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(648, 0, 'pt', 'core/base/tables', 'after_change', 'Após as alterações', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(649, 0, 'pt', 'core/base/tables', 'views', 'Visualizações', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(650, 0, 'pt', 'core/base/tables', 'browser', 'Navegador', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(651, 0, 'pt', 'core/base/tables', 'session', 'Session', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(652, 0, 'pt', 'core/base/tables', 'activated', 'ativado', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(653, 0, 'pt', 'core/base/tables', 'deactivated', 'desativado', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(654, 0, 'pt', 'core/base/tables', 'is_featured', 'Está em destaque', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(655, 0, 'pt', 'core/base/tables', 'edit', 'Editar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(656, 0, 'pt', 'core/base/tables', 'delete', 'Deletar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(657, 0, 'pt', 'core/base/tables', 'restore', 'Restaurar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(658, 0, 'pt', 'core/base/tables', 'activate', 'Ativar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(659, 0, 'pt', 'core/base/tables', 'deactivate', 'Desativar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(660, 0, 'pt', 'core/base/tables', 'excel', 'Excel', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(661, 0, 'pt', 'core/base/tables', 'export', 'Exportar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(662, 0, 'pt', 'core/base/tables', 'csv', 'CSV', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(663, 0, 'pt', 'core/base/tables', 'pdf', 'PDF', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(664, 0, 'pt', 'core/base/tables', 'print', 'Imprimir', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(665, 0, 'pt', 'core/base/tables', 'reset', 'Redefinir', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(666, 0, 'pt', 'core/base/tables', 'reload', 'recarregar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(667, 0, 'pt', 'core/base/tables', 'display', 'Exibição', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(668, 0, 'pt', 'core/base/tables', 'all', 'Tudo', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(669, 0, 'pt', 'core/base/tables', 'add_new', 'Adicionar novo', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(670, 0, 'pt', 'core/base/tables', 'action', 'Ações', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(671, 0, 'pt', 'core/base/tables', 'delete_entry', 'Deletar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(672, 0, 'pt', 'core/base/tables', 'view', 'Ver detalhes', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(673, 0, 'pt', 'core/base/tables', 'save', 'Salvar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(674, 0, 'pt', 'core/base/tables', 'show_from', 'Mostrar de', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(675, 0, 'pt', 'core/base/tables', 'to', 'para', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(676, 0, 'pt', 'core/base/tables', 'in', 'em', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(677, 0, 'pt', 'core/base/tables', 'records', 'registros', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(678, 0, 'pt', 'core/base/tables', 'no_data', 'Nenhum dado para exibir', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(679, 0, 'pt', 'core/base/tables', 'no_record', 'Sem registro', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(680, 0, 'pt', 'core/base/tables', 'confirm_delete', 'Confirmar exclusão', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(681, 0, 'pt', 'core/base/tables', 'confirm_delete_msg', 'Deseja mesmo excluir este registro?', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(682, 0, 'pt', 'core/base/tables', 'confirm_delete_many_msg', 'Você realmente deseja excluir o(s) registro(s) selecionado(s)?', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(683, 0, 'pt', 'core/base/tables', 'cancel', 'Cancelar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(684, 0, 'pt', 'core/base/tables', 'template', 'Template', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(685, 0, 'pt', 'core/base/tables', 'email', 'Email', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(686, 0, 'pt', 'core/base/tables', 'last_login', 'Último Login', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(687, 0, 'pt', 'core/base/tables', 'shortcode', 'Shortcode', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(688, 0, 'pt', 'core/base/tables', 'image', 'Imagem', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(689, 0, 'pt', 'core/base/tables', 'bulk_changes', 'Alterações em massa', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(690, 0, 'pt', 'core/base/tables', 'submit', 'Enviar', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(691, 0, 'pt', 'core/base/tables', 'please_select_record', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:27', '2022-09-15 20:09:43'),
(692, 0, 'pt', 'core/base/tabs', 'detail', 'Detalhe', '2022-02-18 07:37:27', '2022-09-15 20:09:48'),
(693, 0, 'pt', 'core/base/tabs', 'file', 'Arquivos', '2022-02-18 07:37:27', '2022-09-15 20:09:48'),
(694, 0, 'pt', 'core/base/tabs', 'record_note', 'Nota de registro', '2022-02-18 07:37:27', '2022-09-15 20:09:48'),
(695, 0, 'pt', 'core/base/tabs', 'revision', 'Histórico de Revisão', '2022-02-18 07:37:27', '2022-09-15 20:09:48'),
(919, 0, 'pt', 'core/dashboard/dashboard', 'update_position_success', 'Atualize a posição do widget com sucesso!', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(920, 0, 'pt', 'core/dashboard/dashboard', 'hide_success', 'Atualizar widget com sucesso!', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(921, 0, 'pt', 'core/dashboard/dashboard', 'confirm_hide', 'Tem certeza?', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(922, 0, 'pt', 'core/dashboard/dashboard', 'hide_message', 'Você realmente deseja ocultar este widget? Ele vai desaparecer no Dashboard!', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(923, 0, 'pt', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Sim, ocultar este widget', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(924, 0, 'pt', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancelar', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(925, 0, 'pt', 'core/dashboard/dashboard', 'collapse_expand', 'Expandir', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(926, 0, 'pt', 'core/dashboard/dashboard', 'hide', 'Esconder', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(927, 0, 'pt', 'core/dashboard/dashboard', 'reload', 'Recarregar', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(928, 0, 'pt', 'core/dashboard/dashboard', 'save_setting_success', 'Salve as configurações do widget com sucesso!', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(929, 0, 'pt', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget não é saídas!', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(930, 0, 'pt', 'core/dashboard/dashboard', 'manage_widgets', 'Gerenciair Widgets', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(931, 0, 'pt', 'core/dashboard/dashboard', 'fullscreen', 'Tela cheia', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(932, 0, 'pt', 'core/dashboard/dashboard', 'title', 'Dashboard', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(933, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Hoje', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(934, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Ontem', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(935, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'Esta Semana', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(936, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Últimos 7 Dias', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(937, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'Este Mês', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(938, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Últimos 30 Dias', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(939, 0, 'pt', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'Este Ano', '2022-02-18 07:37:28', '2023-03-06 10:48:58'),
(954, 0, 'pt', 'core/media/media', 'filter', 'Filtro', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(955, 0, 'pt', 'core/media/media', 'everything', 'Tudo', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(956, 0, 'pt', 'core/media/media', 'image', 'Imagem', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(957, 0, 'pt', 'core/media/media', 'video', 'Vídeo', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(958, 0, 'pt', 'core/media/media', 'document', 'Documento', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(959, 0, 'pt', 'core/media/media', 'view_in', 'Ver em', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(960, 0, 'pt', 'core/media/media', 'all_media', 'Todas as mídias', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(961, 0, 'pt', 'core/media/media', 'trash', 'Lixo', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(962, 0, 'pt', 'core/media/media', 'recent', 'Recente', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(963, 0, 'pt', 'core/media/media', 'favorites', 'Favoritos', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(964, 0, 'pt', 'core/media/media', 'upload', 'Upload', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(965, 0, 'pt', 'core/media/media', 'create_folder', 'Criar pasta', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(966, 0, 'pt', 'core/media/media', 'refresh', 'Atualizar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(967, 0, 'pt', 'core/media/media', 'empty_trash', 'Esvaziar lixo', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(968, 0, 'pt', 'core/media/media', 'search_file_and_folder', 'Pesquisar na pasta atual', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(969, 0, 'pt', 'core/media/media', 'sort', 'Ordenar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(970, 0, 'pt', 'core/media/media', 'file_name_asc', 'Nome do arquivo - ASC', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(971, 0, 'pt', 'core/media/media', 'file_name_desc', 'Nome do arquivo - DESC', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(972, 0, 'pt', 'core/media/media', 'uploaded_date_asc', 'Data de upload - ASC', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(973, 0, 'pt', 'core/media/media', 'uploaded_date_desc', 'Data do upload - DESC', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(974, 0, 'pt', 'core/media/media', 'size_asc', 'Tamanho - ASC', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(975, 0, 'pt', 'core/media/media', 'size_desc', 'Tamanho - DESC', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(976, 0, 'pt', 'core/media/media', 'actions', 'Ações', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(977, 0, 'pt', 'core/media/media', 'nothing_is_selected', 'Nada está selecionado', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(978, 0, 'pt', 'core/media/media', 'insert', 'Inserir', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(979, 0, 'pt', 'core/media/media', 'folder_name', 'Nome da pasta', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(980, 0, 'pt', 'core/media/media', 'create', 'Criar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(981, 0, 'pt', 'core/media/media', 'rename', 'Renomear', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(982, 0, 'pt', 'core/media/media', 'close', 'Fechar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(983, 0, 'pt', 'core/media/media', 'save_changes', 'Salvar alterações', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(984, 0, 'pt', 'core/media/media', 'move_to_trash', 'Mover itens para a lixeira', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(985, 0, 'pt', 'core/media/media', 'confirm_trash', 'Tem certeza de que deseja mover esses itens para a lixeira?', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(986, 0, 'pt', 'core/media/media', 'confirm', 'Confirmar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(987, 0, 'pt', 'core/media/media', 'confirm_delete', 'Excluir itens', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(988, 0, 'pt', 'core/media/media', 'confirm_delete_description', 'Sua solicitação não pode ser revertida. Tem certeza de que deseja excluir esses itens?', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(989, 0, 'pt', 'core/media/media', 'empty_trash_title', 'Lixo vazio', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(990, 0, 'pt', 'core/media/media', 'empty_trash_description', 'Sua solicitação não pode ser revertida. Tem certeza de que deseja remover todos os itens da lixeira?', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(991, 0, 'pt', 'core/media/media', 'up_level', 'Subir um nível', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(992, 0, 'pt', 'core/media/media', 'upload_progress', 'Progresso do upload', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(993, 0, 'pt', 'core/media/media', 'folder_created', 'A pasta foi criada com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(994, 0, 'pt', 'core/media/media', 'gallery', 'Galeria de mídia', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(995, 0, 'pt', 'core/media/media', 'trash_error', 'Erro ao excluir item(ns) selecionado(s)', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(996, 0, 'pt', 'core/media/media', 'trash_success', 'Item(ns) selecionado(s) movido(s) para a lixeira com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(997, 0, 'pt', 'core/media/media', 'restore_error', 'Erro ao restaurar itens selecionados', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(998, 0, 'pt', 'core/media/media', 'restore_success', 'Restaure o(s) item(ns) selecionado(s) com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(999, 0, 'pt', 'core/media/media', 'copy_success', 'Item(ns) selecionado(s) copiado(s) com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1000, 0, 'pt', 'core/media/media', 'delete_success', 'Item(ns) selecionado(s) excluído(s) com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1001, 0, 'pt', 'core/media/media', 'favorite_success', 'Item(ns) selecionado(s) favorito(s) com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1002, 0, 'pt', 'core/media/media', 'remove_favorite_success', 'Remova os itens selecionados dos favoritos com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1003, 0, 'pt', 'core/media/media', 'rename_error', 'Erro ao renomear item(ns)', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1004, 0, 'pt', 'core/media/media', 'rename_success', 'Renomeie o(s) item(ns) selecionado(s) com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1005, 0, 'pt', 'core/media/media', 'empty_trash_success', 'Lixeira esvaziada com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1006, 0, 'pt', 'core/media/media', 'invalid_action', 'Ação inválida!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1007, 0, 'pt', 'core/media/media', 'file_not_exists', 'O arquivo não existe!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1008, 0, 'pt', 'core/media/media', 'download_file_error', 'Erro ao baixar arquivos!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1009, 0, 'pt', 'core/media/media', 'missing_zip_archive_extension', 'Ative a extensão ZipArchive para baixar o arquivo!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1010, 0, 'pt', 'core/media/media', 'can_not_download_file', 'Não é possível baixar este arquivo!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1011, 0, 'pt', 'core/media/media', 'invalid_request', 'Pedido inválido!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1012, 0, 'pt', 'core/media/media', 'add_success', 'Adicionar item com sucesso!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1013, 0, 'pt', 'core/media/media', 'file_too_big', 'Arquivo muito grande. O upload máximo de arquivos é: size bytes', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1014, 0, 'pt', 'core/media/media', 'can_not_detect_file_type', 'O tipo de arquivo não é permitido ou não pode detectar o tipo de arquivo!', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1015, 0, 'pt', 'core/media/media', 'upload_failed', 'O arquivo NÃO é carregado completamente. O servidor permite que o tamanho máximo do arquivo de upload seja :size . Verifique o tamanho do arquivo OU tente fazer o upload novamente em caso de erros de rede', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1016, 0, 'pt', 'core/media/media', 'menu_name', 'Media', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1017, 0, 'pt', 'core/media/media', 'add', 'Adicionar mídia', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1018, 0, 'pt', 'core/media/media', 'javascript.name', 'Nome', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1019, 0, 'pt', 'core/media/media', 'javascript.url', 'URL', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1020, 0, 'pt', 'core/media/media', 'javascript.full_url', 'URL completa', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1021, 0, 'pt', 'core/media/media', 'javascript.size', 'Tamanho', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1022, 0, 'pt', 'core/media/media', 'javascript.mime_type', 'Tipo', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1023, 0, 'pt', 'core/media/media', 'javascript.created_at', 'Carregado em', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1024, 0, 'pt', 'core/media/media', 'javascript.updated_at', 'Modificado em', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1025, 0, 'pt', 'core/media/media', 'javascript.nothing_selected', 'Nada está selecionado', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1026, 0, 'pt', 'core/media/media', 'javascript.visit_link', 'Link aberto', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1027, 0, 'pt', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1028, 0, 'pt', 'core/media/media', 'javascript.no_item.all_media.title', 'Solte arquivos e pastas aqui', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1029, 0, 'pt', 'core/media/media', 'javascript.no_item.all_media.message', 'Ou use o botão de upload acima', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1030, 0, 'pt', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1031, 0, 'pt', 'core/media/media', 'javascript.no_item.trash.title', 'Não há nada na sua lixeira atualmente', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1032, 0, 'pt', 'core/media/media', 'javascript.no_item.trash.message', 'Exclua arquivos para movê-los para a lixeira automaticamente. Exclua arquivos da lixeira para removê-los permanentemente', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1033, 0, 'pt', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1034, 0, 'pt', 'core/media/media', 'javascript.no_item.favorites.title', 'Você ainda não adicionou nada aos seus favoritos', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1035, 0, 'pt', 'core/media/media', 'javascript.no_item.favorites.message', 'Adicione arquivos aos favoritos para encontrá-los facilmente mais tarde', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1036, 0, 'pt', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1037, 0, 'pt', 'core/media/media', 'javascript.no_item.recent.title', 'Você ainda não abriu nada', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1038, 0, 'pt', 'core/media/media', 'javascript.no_item.recent.message', 'Todos os arquivos recentes que você abriu serão exibidos aqui', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1039, 0, 'pt', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1040, 0, 'pt', 'core/media/media', 'javascript.no_item.default.title', 'Nenhum item', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1041, 0, 'pt', 'core/media/media', 'javascript.no_item.default.message', 'Este diretório não tem nenhum item', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1042, 0, 'pt', 'core/media/media', 'javascript.clipboard.success', 'Esses links de arquivo foram copiados para a área de transferência', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1043, 0, 'pt', 'core/media/media', 'javascript.message.error_header', 'Erro', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1044, 0, 'pt', 'core/media/media', 'javascript.message.success_header', 'Sucesso', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1045, 0, 'pt', 'core/media/media', 'javascript.download.error', 'Nenhum arquivo selecionado ou não é possível fazer o download desses arquivos', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1046, 0, 'pt', 'core/media/media', 'javascript.actions_list.basic.preview', 'Visualizar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1047, 0, 'pt', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Link de cópia', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1048, 0, 'pt', 'core/media/media', 'javascript.actions_list.file.rename', 'Renomear', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1049, 0, 'pt', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Faça uma cópia', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1050, 0, 'pt', 'core/media/media', 'javascript.actions_list.user.favorite', 'Adicionar aos favoritos', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1051, 0, 'pt', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remover favorito', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1052, 0, 'pt', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1053, 0, 'pt', 'core/media/media', 'javascript.actions_list.other.trash', 'Mover para lixeira', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1054, 0, 'pt', 'core/media/media', 'javascript.actions_list.other.delete', 'Apagar permanentemente', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1055, 0, 'pt', 'core/media/media', 'javascript.actions_list.other.restore', 'Restaurar', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1056, 0, 'pt', 'core/media/media', 'name_invalid', 'O nome da pasta tem caracteres inválidos.', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1057, 0, 'pt', 'core/media/media', 'url_invalid', 'Forneça um URL válido', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1058, 0, 'pt', 'core/media/media', 'path_invalid', 'Forneça um caminho válido', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1059, 0, 'pt', 'core/media/media', 'download_link', 'Download', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1060, 0, 'pt', 'core/media/media', 'url', 'URL', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1061, 0, 'pt', 'core/media/media', 'download_explain', 'Insira um URL por linha.', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1062, 0, 'pt', 'core/media/media', 'downloading', 'Baixando...', '2022-02-18 07:37:28', '2022-09-15 20:09:58'),
(1166, 0, 'pt', 'core/setting/setting', 'title', 'Configurações', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1167, 0, 'pt', 'core/setting/setting', 'email_setting_title', 'Configurações de e-mail', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1168, 0, 'pt', 'core/setting/setting', 'general.theme', 'Theme', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1169, 0, 'pt', 'core/setting/setting', 'general.description', 'Configurando as informações do site', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1170, 0, 'pt', 'core/setting/setting', 'general.title', 'Geral', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1171, 0, 'pt', 'core/setting/setting', 'general.general_block', 'Informações gerais', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1172, 0, 'pt', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1173, 0, 'pt', 'core/setting/setting', 'general.site_title', 'Titulo do site', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1174, 0, 'pt', 'core/setting/setting', 'general.admin_email', 'E-mail do administrador', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1175, 0, 'pt', 'core/setting/setting', 'general.seo_block', 'SEO Configuração', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1176, 0, 'pt', 'core/setting/setting', 'general.seo_title', 'SEO Titulo', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1177, 0, 'pt', 'core/setting/setting', 'general.seo_description', 'SEO Descrição', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1178, 0, 'pt', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1179, 0, 'pt', 'core/setting/setting', 'general.google_site_verification', 'Google Site Verification', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1180, 0, 'pt', 'core/setting/setting', 'general.placeholder.site_title', 'Site Titulo (máximo 120 caracteres)', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1181, 0, 'pt', 'core/setting/setting', 'general.placeholder.admin_email', 'E-mail do administrador', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1182, 0, 'pt', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Titulo (máximo 120 caracteres)', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1183, 0, 'pt', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Descrição (máximo 120 caracteres)', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1184, 0, 'pt', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1185, 0, 'pt', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1186, 0, 'pt', 'core/setting/setting', 'general.cache_admin_menu', 'Menu de administração de cache?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1187, 0, 'pt', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Ativar para enviar relatórios de erros por e-mail?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1188, 0, 'pt', 'core/setting/setting', 'general.time_zone', 'Fuso horário', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1189, 0, 'pt', 'core/setting/setting', 'general.default_admin_theme', 'Tema de administrador padrão', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1190, 0, 'pt', 'core/setting/setting', 'general.enable_change_admin_theme', 'Ativar alterar tema do administrador?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1191, 0, 'pt', 'core/setting/setting', 'general.enable', 'Habilitar', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1192, 0, 'pt', 'core/setting/setting', 'general.disable', 'Desativar', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1193, 0, 'pt', 'core/setting/setting', 'general.enable_cache', 'Ativar cache?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1194, 0, 'pt', 'core/setting/setting', 'general.cache_time', 'Tempo de cache (minutos)', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1195, 0, 'pt', 'core/setting/setting', 'general.cache_time_site_map', 'Mapa do site de tempo de cache', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1196, 0, 'pt', 'core/setting/setting', 'general.admin_logo', 'Logo da administração', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1197, 0, 'pt', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1198, 0, 'pt', 'core/setting/setting', 'general.admin_title', 'Titulo da administração', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1199, 0, 'pt', 'core/setting/setting', 'general.admin_title_placeholder', 'Título exibido na guia do navegador', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1200, 0, 'pt', 'core/setting/setting', 'general.cache_block', 'Cache', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1201, 0, 'pt', 'core/setting/setting', 'general.admin_appearance_title', 'Aparência do administrador', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1202, 0, 'pt', 'core/setting/setting', 'general.admin_appearance_description', 'Configurando a aparência do administrador, como editor, idioma...', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1203, 0, 'pt', 'core/setting/setting', 'general.seo_block_description', 'Definir o título do site, a meta descrição do site, a palavra-chave do site para otimizar o SEO', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1204, 0, 'pt', 'core/setting/setting', 'general.webmaster_tools_description', 'O Google Webmaster Tools (GWT) é um software gratuito que ajuda você a gerenciar o lado técnico do seu site', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1205, 0, 'pt', 'core/setting/setting', 'general.cache_description', 'Cache de configuração para o sistema para otimizar a velocidade', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1206, 0, 'pt', 'core/setting/setting', 'general.yes', 'Sim', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1207, 0, 'pt', 'core/setting/setting', 'general.no', 'Não', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1208, 0, 'pt', 'core/setting/setting', 'general.show_on_front', 'Sua página inicial é exibida', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1209, 0, 'pt', 'core/setting/setting', 'general.select', '— Selecionar —', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1210, 0, 'pt', 'core/setting/setting', 'general.show_site_name', 'Mostrar o nome do site após o título da página, separado com \"-\"?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1211, 0, 'pt', 'core/setting/setting', 'general.locale', 'Idioma do site', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1212, 0, 'pt', 'core/setting/setting', 'general.locale_direction', 'Direção de idioma do site frontal', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1213, 0, 'pt', 'core/setting/setting', 'general.admin_locale_direction', 'Direção de idioma do administrador', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1214, 0, 'pt', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Planos de fundo da tela de login (~1366x768)', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1215, 0, 'pt', 'core/setting/setting', 'email.subject', 'Assunto', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1216, 0, 'pt', 'core/setting/setting', 'email.content', 'Conteúdo', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1217, 0, 'pt', 'core/setting/setting', 'email.title', 'Configuração para modelo de e-mail', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1218, 0, 'pt', 'core/setting/setting', 'email.description', 'Modelo de e-mail usando HTML e variáveis do sistema.', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1219, 0, 'pt', 'core/setting/setting', 'email.reset_to_default', 'Restaurar ao padrão', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1220, 0, 'pt', 'core/setting/setting', 'email.back', 'Voltar para as configurações', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1221, 0, 'pt', 'core/setting/setting', 'email.reset_success', 'Redefinir para o padrão com sucesso', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1222, 0, 'pt', 'core/setting/setting', 'email.confirm_reset', 'Confirmar modelo de redefinição de e-mail?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1223, 0, 'pt', 'core/setting/setting', 'email.confirm_message', 'Você realmente deseja redefinir este modelo de e-mail para o padrão?', '2022-02-18 07:37:28', '2022-09-15 20:10:04'),
(1224, 0, 'pt', 'core/setting/setting', 'email.continue', 'Continuar', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1225, 0, 'pt', 'core/setting/setting', 'email.sender_name', 'Nome do remetente', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1226, 0, 'pt', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1227, 0, 'pt', 'core/setting/setting', 'email.sender_email', 'E-mail do remetente', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1228, 0, 'pt', 'core/setting/setting', 'email.mailer', 'Mailer', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1229, 0, 'pt', 'core/setting/setting', 'email.port', 'Porta', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1230, 0, 'pt', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587, 465, 25', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1231, 0, 'pt', 'core/setting/setting', 'email.host', 'Host', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1232, 0, 'pt', 'core/setting/setting', 'email.host_placeholder', 'Ex: mail.sedominio.com.br', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1233, 0, 'pt', 'core/setting/setting', 'email.username', 'Nome de usuário', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1234, 0, 'pt', 'core/setting/setting', 'email.username_placeholder', 'Nome de usuário para fazer login no servidor de e-mail', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1235, 0, 'pt', 'core/setting/setting', 'email.password', 'Senha', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1236, 0, 'pt', 'core/setting/setting', 'email.password_placeholder', 'Senha para fazer login no servidor de e-mail', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1237, 0, 'pt', 'core/setting/setting', 'email.encryption', 'Criptografia', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1238, 0, 'pt', 'core/setting/setting', 'email.mail_gun_domain', 'Domínio', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1239, 0, 'pt', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domínio', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1240, 0, 'pt', 'core/setting/setting', 'email.mail_gun_secret', 'Secreto', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1241, 0, 'pt', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secreto', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1242, 0, 'pt', 'core/setting/setting', 'email.mail_gun_endpoint', 'Ponto final', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1243, 0, 'pt', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Ponto final', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1244, 0, 'pt', 'core/setting/setting', 'email.log_channel', 'Canal de registro', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1245, 0, 'pt', 'core/setting/setting', 'email.sendmail_path', 'Caminho do Sendmail', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1246, 0, 'pt', 'core/setting/setting', 'email.encryption_placeholder', 'Criptografia: SSL ou TLS', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1247, 0, 'pt', 'core/setting/setting', 'email.ses_key', 'Key', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1248, 0, 'pt', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1249, 0, 'pt', 'core/setting/setting', 'email.ses_secret', 'Secreto', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1250, 0, 'pt', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secreto', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1251, 0, 'pt', 'core/setting/setting', 'email.ses_region', 'Região', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1252, 0, 'pt', 'core/setting/setting', 'email.ses_region_placeholder', 'Região', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1253, 0, 'pt', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1254, 0, 'pt', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1255, 0, 'pt', 'core/setting/setting', 'email.template_title', 'Modelos de e-mail', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1256, 0, 'pt', 'core/setting/setting', 'email.template_description', 'Modelos básicos para todos os emails', '2022-02-18 07:37:29', '2022-09-15 20:10:04');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1257, 0, 'pt', 'core/setting/setting', 'email.template_header', 'Cabeçalho do modelo de e-mail', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1258, 0, 'pt', 'core/setting/setting', 'email.template_header_description', 'Modelo para cabeçalho de e-mails', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1259, 0, 'pt', 'core/setting/setting', 'email.template_footer', 'Rodapé do modelo de e-mail', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1260, 0, 'pt', 'core/setting/setting', 'email.template_footer_description', 'Modelo para rodapé de e-mails', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1261, 0, 'pt', 'core/setting/setting', 'email.default', 'Padrão', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1262, 0, 'pt', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Usando o trabalho de fila para enviar e-mails (é necessário configurar a fila primeiro https://laravel.com/docs/queues#supervisor-configuration)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1263, 0, 'pt', 'core/setting/setting', 'media.title', 'Media', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1264, 0, 'pt', 'core/setting/setting', 'media.driver', 'Driver', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1265, 0, 'pt', 'core/setting/setting', 'media.description', 'Configurações de mídia', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1266, 0, 'pt', 'core/setting/setting', 'media.aws_access_key_id', 'AWS ID - chave de acesso AWS', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1267, 0, 'pt', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1268, 0, 'pt', 'core/setting/setting', 'media.aws_default_region', 'AWS Região Padrão', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1269, 0, 'pt', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1270, 0, 'pt', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1271, 0, 'pt', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Opcional)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1272, 0, 'pt', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1273, 0, 'pt', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1274, 0, 'pt', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1275, 0, 'pt', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1276, 0, 'pt', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1277, 0, 'pt', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1278, 0, 'pt', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1279, 0, 'pt', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://seudominio.com', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1280, 0, 'pt', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1281, 0, 'pt', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1282, 0, 'pt', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1283, 0, 'pt', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1284, 0, 'pt', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1285, 0, 'pt', 'core/setting/setting', 'media.default_placeholder_image', 'Imagem de espaço reservado padrão', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1286, 0, 'pt', 'core/setting/setting', 'media.enable_chunk', 'Ativar upload de tamanho de bloco?', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1287, 0, 'pt', 'core/setting/setting', 'media.chunk_size', 'Tamanho do bloco (bytes)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1288, 0, 'pt', 'core/setting/setting', 'media.chunk_size_placeholder', 'Padrão: 1048576 ~ 1 MB', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1289, 0, 'pt', 'core/setting/setting', 'media.max_file_size', 'Tamanho máximo do arquivo (MB)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1290, 0, 'pt', 'core/setting/setting', 'media.max_file_size_placeholder', 'Padrão: 1048576 ~ 1 GB', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1291, 0, 'pt', 'core/setting/setting', 'media.enable_watermark', 'Ativar marca d\'água?', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1292, 0, 'pt', 'core/setting/setting', 'media.watermark_source', 'Imagem de marca d\'água', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1293, 0, 'pt', 'core/setting/setting', 'media.watermark_size', 'Tamanho da marca d\'água (%)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1294, 0, 'pt', 'core/setting/setting', 'media.watermark_size_placeholder', 'Padrão: 10 (%)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1295, 0, 'pt', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1296, 0, 'pt', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Padrão: 70 (%)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1297, 0, 'pt', 'core/setting/setting', 'media.watermark_position', 'Posição da marca d\'água', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1298, 0, 'pt', 'core/setting/setting', 'media.watermark_position_x', 'Posição da marca d\'água X', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1299, 0, 'pt', 'core/setting/setting', 'media.watermark_position_y', 'Posição da marca d\'água Y', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1300, 0, 'pt', 'core/setting/setting', 'media.watermark_position_top_left', 'Superior esquerdo', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1301, 0, 'pt', 'core/setting/setting', 'media.watermark_position_top_right', 'Canto superior direito', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1302, 0, 'pt', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Inferior esquerdo', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1303, 0, 'pt', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Canto inferior direito', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1304, 0, 'pt', 'core/setting/setting', 'media.watermark_position_center', 'Centro', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1305, 0, 'pt', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Desativar a tradução automática de URL para latim?', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1306, 0, 'pt', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1307, 0, 'pt', 'core/setting/setting', 'media.bunnycdn_zone', 'Nome da zona (o nome da sua zona de armazenamento)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1308, 0, 'pt', 'core/setting/setting', 'media.bunnycdn_key', 'Senha de acesso FTP e API (a senha de acesso à API da zona de armazenamento)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1309, 0, 'pt', 'core/setting/setting', 'media.bunnycdn_region', 'Região (a região da zona de armazenamento)', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1310, 0, 'pt', 'core/setting/setting', 'media.optional', 'Opcional', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1311, 0, 'pt', 'core/setting/setting', 'license.purchase_code', 'Código', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1312, 0, 'pt', 'core/setting/setting', 'license.buyer', 'Comprador', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1313, 0, 'pt', 'core/setting/setting', 'field_type_not_exists', 'Este tipo de campo não existe', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1314, 0, 'pt', 'core/setting/setting', 'save_settings', 'Salvar configurações', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1315, 0, 'pt', 'core/setting/setting', 'template', 'Template', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1316, 0, 'pt', 'core/setting/setting', 'description', 'Descrição', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1317, 0, 'pt', 'core/setting/setting', 'enable', 'Permitir', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1318, 0, 'pt', 'core/setting/setting', 'send', 'Enviar', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1319, 0, 'pt', 'core/setting/setting', 'test_email_description', 'Para enviar e-mail de teste, verifique se você atualizou a configuração para enviar e-mail!', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1320, 0, 'pt', 'core/setting/setting', 'test_email_input_placeholder', 'Digite o e-mail para o qual você deseja enviar o e-mail de teste.', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1321, 0, 'pt', 'core/setting/setting', 'test_email_modal_title', 'Envie um e-mail de teste', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1322, 0, 'pt', 'core/setting/setting', 'test_send_mail', 'Enviar e-mail de teste', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1323, 0, 'pt', 'core/setting/setting', 'test_email_send_success', 'Enviar e-mail com sucesso!', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1324, 0, 'pt', 'core/setting/setting', 'locale_direction_ltr', 'Da esquerda para direita', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1325, 0, 'pt', 'core/setting/setting', 'locale_direction_rtl', 'Direita para esquerda', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1326, 0, 'pt', 'core/setting/setting', 'saving', 'Salvando...', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1327, 0, 'pt', 'core/setting/setting', 'emails_warning', 'Você pode adicionar até :count emails', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1328, 0, 'pt', 'core/setting/setting', 'email_add_more', 'Adicione mais', '2022-02-18 07:37:29', '2022-09-15 20:10:04'),
(1397, 0, 'pt', 'core/table/general', 'operations', 'Operações', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1398, 0, 'pt', 'core/table/general', 'loading_data', 'Carregando dados do servidor', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1399, 0, 'pt', 'core/table/general', 'display', 'Exibição', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1400, 0, 'pt', 'core/table/general', 'all', 'Todos', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1401, 0, 'pt', 'core/table/general', 'edit_entry', 'Editar', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1402, 0, 'pt', 'core/table/general', 'delete_entry', 'Deletar', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1403, 0, 'pt', 'core/table/general', 'show_from', 'Exibindo de', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1404, 0, 'pt', 'core/table/general', 'to', 'para', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1405, 0, 'pt', 'core/table/general', 'in', 'em', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1406, 0, 'pt', 'core/table/general', 'records', 'registros', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1407, 0, 'pt', 'core/table/general', 'no_data', 'Nenhum dado para exibir', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1408, 0, 'pt', 'core/table/general', 'no_record', 'Sem registro', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1409, 0, 'pt', 'core/table/general', 'loading', 'Carregando dados do servidor', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1410, 0, 'pt', 'core/table/general', 'confirm_delete', 'Confirmar exclusão', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1411, 0, 'pt', 'core/table/general', 'confirm_delete_msg', 'Deseja mesmo excluir este registro?', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1412, 0, 'pt', 'core/table/general', 'cancel', 'Cancelar', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1413, 0, 'pt', 'core/table/general', 'delete', 'Deletar', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1414, 0, 'pt', 'core/table/general', 'close', 'Fechar', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1415, 0, 'pt', 'core/table/general', 'contains', 'Contém', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1416, 0, 'pt', 'core/table/general', 'is_equal_to', 'É igual a', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1417, 0, 'pt', 'core/table/general', 'greater_than', 'Maior que', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1418, 0, 'pt', 'core/table/general', 'less_than', 'Menor que', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1419, 0, 'pt', 'core/table/general', 'value', 'Valor', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1420, 0, 'pt', 'core/table/general', 'select_field', 'Selecionar campo', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1421, 0, 'pt', 'core/table/general', 'reset', 'Redefinir', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1422, 0, 'pt', 'core/table/general', 'add_additional_filter', 'Adicionar filtro adicional', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1423, 0, 'pt', 'core/table/general', 'apply', 'Aplicar', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1424, 0, 'pt', 'core/table/general', 'filters', 'Filtros', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1425, 0, 'pt', 'core/table/general', 'bulk_change', 'Alterações em massa', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1426, 0, 'pt', 'core/table/general', 'select_option', 'Selecione a opção', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1427, 0, 'pt', 'core/table/general', 'bulk_actions', 'Ações em massa', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1428, 0, 'pt', 'core/table/general', 'save_bulk_change_success', 'Atualize os dados do(s) registro(s) selecionado(s) com sucesso!', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1429, 0, 'pt', 'core/table/general', 'please_select_record', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1430, 0, 'pt', 'core/table/general', 'filtered', '(filtrado de _MAX_ registros totais)', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1431, 0, 'pt', 'core/table/general', 'search', 'Procurar...', '2022-02-18 07:37:29', '2022-09-15 20:10:11'),
(1432, 0, 'pt', 'core/table/table', 'operations', 'Operações', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1433, 0, 'pt', 'core/table/table', 'loading_data', 'Carregando dados do servidor', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1434, 0, 'pt', 'core/table/table', 'display', 'Exibição', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1435, 0, 'pt', 'core/table/table', 'all', 'Todos', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1436, 0, 'pt', 'core/table/table', 'edit_entry', 'Editar', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1437, 0, 'pt', 'core/table/table', 'delete_entry', 'Deletar', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1438, 0, 'pt', 'core/table/table', 'show_from', 'Exibindo de', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1439, 0, 'pt', 'core/table/table', 'to', 'para', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1440, 0, 'pt', 'core/table/table', 'in', 'em', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1441, 0, 'pt', 'core/table/table', 'records', 'registros', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1442, 0, 'pt', 'core/table/table', 'no_data', 'Nenhum dado para exibir', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1443, 0, 'pt', 'core/table/table', 'no_record', 'Sem registro', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1444, 0, 'pt', 'core/table/table', 'loading', 'Carregando dados do servidor', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1445, 0, 'pt', 'core/table/table', 'confirm_delete', 'Confirmar exclusão', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1446, 0, 'pt', 'core/table/table', 'confirm_delete_msg', 'Deseja mesmo excluir este registro?', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1447, 0, 'pt', 'core/table/table', 'cancel', 'Cancelar', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1448, 0, 'pt', 'core/table/table', 'delete', 'Deletar', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1449, 0, 'pt', 'core/table/table', 'close', 'Fechar', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1450, 0, 'pt', 'core/table/table', 'contains', 'Contém', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1451, 0, 'pt', 'core/table/table', 'is_equal_to', 'É igual a', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1452, 0, 'pt', 'core/table/table', 'greater_than', 'Maior que', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1453, 0, 'pt', 'core/table/table', 'less_than', 'Menor que', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1454, 0, 'pt', 'core/table/table', 'value', 'Valor', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1455, 0, 'pt', 'core/table/table', 'select_field', 'Selecionar campo', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1456, 0, 'pt', 'core/table/table', 'reset', 'Redefinir', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1457, 0, 'pt', 'core/table/table', 'add_additional_filter', 'Adicionar filtro adicional', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1458, 0, 'pt', 'core/table/table', 'apply', 'Aplicar', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1459, 0, 'pt', 'core/table/table', 'filters', 'Filtros', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1460, 0, 'pt', 'core/table/table', 'bulk_change', 'Alterações em massa', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1461, 0, 'pt', 'core/table/table', 'select_option', 'Selecione a opção', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1462, 0, 'pt', 'core/table/table', 'bulk_actions', 'Ações em massa', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1463, 0, 'pt', 'core/table/table', 'save_bulk_change_success', 'Atualize os dados do(s) registro(s) selecionado(s) com sucesso!', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1464, 0, 'pt', 'core/table/table', 'please_select_record', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1465, 0, 'pt', 'core/table/table', 'filtered', '(filtrado de _MAX_ registros totais)', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1466, 0, 'pt', 'core/table/table', 'search', 'Procurar...', '2022-02-18 07:37:29', '2022-09-15 20:10:16'),
(1499, 0, 'pt', 'packages/menu/menu', 'name', 'Menus', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1500, 0, 'pt', 'packages/menu/menu', 'key_name', 'Nome do menu (tecla: :key)', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1501, 0, 'pt', 'packages/menu/menu', 'basic_info', 'Informação básica', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1502, 0, 'pt', 'packages/menu/menu', 'add_to_menu', 'Adicionar ao Menu', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1503, 0, 'pt', 'packages/menu/menu', 'custom_link', 'Link personalizado', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1504, 0, 'pt', 'packages/menu/menu', 'add_link', 'Adicionar Link', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1505, 0, 'pt', 'packages/menu/menu', 'structure', 'Estrutura do menu', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1506, 0, 'pt', 'packages/menu/menu', 'remove', 'Remover', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1507, 0, 'pt', 'packages/menu/menu', 'cancel', 'Cancelar', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1508, 0, 'pt', 'packages/menu/menu', 'title', 'Título', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1509, 0, 'pt', 'packages/menu/menu', 'icon', 'Icon', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1510, 0, 'pt', 'packages/menu/menu', 'url', 'URL', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1511, 0, 'pt', 'packages/menu/menu', 'target', 'Alvo', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1512, 0, 'pt', 'packages/menu/menu', 'css_class', 'CSS class', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1513, 0, 'pt', 'packages/menu/menu', 'self_open_link', 'Abrir link diretamente', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1514, 0, 'pt', 'packages/menu/menu', 'blank_open_link', 'Abrir link em uma nova aba', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1515, 0, 'pt', 'packages/menu/menu', 'create', 'Criar Menu', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1516, 0, 'pt', 'packages/menu/menu', 'edit', 'Editar menu', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1517, 0, 'pt', 'packages/menu/menu', 'menu_settings', 'Configurações do menu', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1518, 0, 'pt', 'packages/menu/menu', 'display_location', 'Local de exibição', '2022-02-18 07:37:29', '2022-09-15 20:10:23'),
(1537, 0, 'pt', 'packages/page/pages', 'create', 'Criar nova página', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1538, 0, 'pt', 'packages/page/pages', 'edit', 'Editar Página', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1539, 0, 'pt', 'packages/page/pages', 'form.name', 'Nome', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1540, 0, 'pt', 'packages/page/pages', 'form.name_placeholder', 'Nome da página (máximo de 120 caracteres)', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1541, 0, 'pt', 'packages/page/pages', 'form.content', 'Conteúdo', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1542, 0, 'pt', 'packages/page/pages', 'form.note', 'Conteúdo da nota', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1543, 0, 'pt', 'packages/page/pages', 'notices.no_select', 'Selecione pelo menos um registro para realizar esta ação!', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1544, 0, 'pt', 'packages/page/pages', 'notices.update_success_message', 'Atualizar com sucesso', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1545, 0, 'pt', 'packages/page/pages', 'cannot_delete', 'A página não pôde ser excluída', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1546, 0, 'pt', 'packages/page/pages', 'deleted', 'Página excluída', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1547, 0, 'pt', 'packages/page/pages', 'pages', 'Páginas', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1548, 0, 'pt', 'packages/page/pages', 'menu', 'Páginas', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1549, 0, 'pt', 'packages/page/pages', 'menu_name', 'Páginas', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1550, 0, 'pt', 'packages/page/pages', 'edit_this_page', 'Edite essa página', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1551, 0, 'pt', 'packages/page/pages', 'total_pages', 'Total de páginas', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1552, 0, 'pt', 'packages/page/pages', 'settings.show_on_front', 'Sua página inicial é exibida', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1553, 0, 'pt', 'packages/page/pages', 'settings.select', '— Selecione —', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1554, 0, 'pt', 'packages/page/pages', 'front_page', 'Primeira página', '2022-02-18 07:37:29', '2022-09-15 20:10:29'),
(1569, 0, 'pt', 'packages/plugin-management/plugin', 'enabled', 'Habilitado', '2022-02-18 07:37:29', '2022-11-14 19:56:45'),
(1570, 0, 'pt', 'packages/plugin-management/plugin', 'deactivated', 'Desativado', '2022-02-18 07:37:29', '2022-11-14 19:56:45'),
(1571, 0, 'pt', 'packages/plugin-management/plugin', 'activated', 'Ativado', '2022-02-18 07:37:29', '2022-11-14 19:56:45'),
(1572, 0, 'pt', 'packages/plugin-management/plugin', 'activate', 'Ativar', '2022-02-18 07:37:29', '2022-11-14 19:56:45'),
(1573, 0, 'pt', 'packages/plugin-management/plugin', 'deactivate', 'Desativar', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1574, 0, 'pt', 'packages/plugin-management/plugin', 'author', 'Por', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1575, 0, 'pt', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Atualizar plug-in com sucesso', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1576, 0, 'pt', 'packages/plugin-management/plugin', 'plugins', 'Plugin(s)', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1577, 0, 'pt', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Por favor, ative o(s) plugin(s): :plugins antes de ativar este plugin!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1578, 0, 'pt', 'packages/plugin-management/plugin', 'remove', 'Remover', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1579, 0, 'pt', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remova o plug-in com sucesso!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1580, 0, 'pt', 'packages/plugin-management/plugin', 'remove_plugin', 'Remover plug-in', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1581, 0, 'pt', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Você realmente deseja remover este plugin?', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1582, 0, 'pt', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Sim, remova-o!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1583, 0, 'pt', 'packages/plugin-management/plugin', 'total_plugins', 'Total de plug-ins', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1584, 0, 'pt', 'packages/plugin-management/plugin', 'invalid_plugin', 'Este plugin não é um plugin válido, por favor verifique novamente!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1585, 0, 'pt', 'packages/plugin-management/plugin', 'version', 'Versão', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1586, 0, 'pt', 'packages/plugin-management/plugin', 'invalid_json', 'Plugin.json inválido!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1587, 0, 'pt', 'packages/plugin-management/plugin', 'activate_success', 'Ative o plugin com sucesso!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1588, 0, 'pt', 'packages/plugin-management/plugin', 'activated_already', 'Este plugin já está ativado!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1589, 0, 'pt', 'packages/plugin-management/plugin', 'plugin_not_exist', 'Este plugin não existe.', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1590, 0, 'pt', 'packages/plugin-management/plugin', 'missing_json_file', 'Falta o arquivo plugin.json!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1591, 0, 'pt', 'packages/plugin-management/plugin', 'plugin_invalid', 'O plug-in é válido!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1592, 0, 'pt', 'packages/plugin-management/plugin', 'published_assets_success', 'Publique ativos para o plugin :name com sucesso!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1593, 0, 'pt', 'packages/plugin-management/plugin', 'plugin_removed', 'O plug-in foi removido!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1594, 0, 'pt', 'packages/plugin-management/plugin', 'deactivated_success', 'Desative o plugin com sucesso!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1595, 0, 'pt', 'packages/plugin-management/plugin', 'deactivated_already', 'Este plugin já está desativado!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1596, 0, 'pt', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Não é possível gravar arquivos! Pasta: nome não é gravável. Por favor, chmod para torná-lo gravável!', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1597, 0, 'pt', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin: nome não está pronto para uso', '2022-02-18 07:37:30', '2022-11-14 19:56:45'),
(1609, 0, 'pt', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Otimização do mecanismo de pesquisa', '2022-02-18 07:37:30', '2022-09-15 20:10:45'),
(1610, 0, 'pt', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Editar SEO meta', '2022-02-18 07:37:30', '2022-09-15 20:10:45'),
(1611, 0, 'pt', 'packages/seo-helper/seo-helper', 'default_description', 'Configure meta título e descrição para tornar seu site fácil de ser descoberto em mecanismos de pesquisa como o Google', '2022-02-18 07:37:30', '2022-09-15 20:10:45'),
(1612, 0, 'pt', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2022-02-18 07:37:30', '2022-09-15 20:10:45'),
(1613, 0, 'pt', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2022-02-18 07:37:30', '2022-09-15 20:10:45'),
(1619, 0, 'pt', 'packages/slug/slug', 'permalink_settings', 'Link permanente', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1620, 0, 'pt', 'packages/slug/slug', 'settings.title', 'Configurações de link permanente', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1621, 0, 'pt', 'packages/slug/slug', 'settings.description', 'Gerenciar links permanentes para todos os módulos.', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1622, 0, 'pt', 'packages/slug/slug', 'settings.preview', 'Visualizar', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1623, 0, 'pt', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Desativar a tradução automática de URL para latim?', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1624, 0, 'pt', 'packages/slug/slug', 'preview', 'Visualizar', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1625, 0, 'pt', 'packages/slug/slug', 'prefix_for', 'Prefixo para: nome', '2022-02-18 07:37:30', '2022-09-15 20:10:51'),
(1626, 0, 'pt', 'packages/theme/theme', 'name', 'Temas', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1627, 0, 'pt', 'packages/theme/theme', 'theme', 'Tema', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1628, 0, 'pt', 'packages/theme/theme', 'author', 'Autor', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1629, 0, 'pt', 'packages/theme/theme', 'version', 'Versão', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1630, 0, 'pt', 'packages/theme/theme', 'description', 'Descrição', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1631, 0, 'pt', 'packages/theme/theme', 'active_success', 'Ative o tema :name com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1632, 0, 'pt', 'packages/theme/theme', 'active', 'Ativo', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1633, 0, 'pt', 'packages/theme/theme', 'activated', 'Ativado', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1634, 0, 'pt', 'packages/theme/theme', 'appearance', 'Aparência', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1635, 0, 'pt', 'packages/theme/theme', 'theme_options', 'Opções de temas', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1636, 0, 'pt', 'packages/theme/theme', 'save_changes', 'Salvar alterações', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1637, 0, 'pt', 'packages/theme/theme', 'developer_mode', 'Modo de desenvolvedor ativado', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1638, 0, 'pt', 'packages/theme/theme', 'custom_css', 'CSS customizado', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1639, 0, 'pt', 'packages/theme/theme', 'custom_js', 'JS personalizado', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1640, 0, 'pt', 'packages/theme/theme', 'custom_header_js', 'Cabeçalho JS', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1641, 0, 'pt', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS no cabeçalho da página, envolva-o dentro de <script></script>', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1642, 0, 'pt', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1643, 0, 'pt', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS no corpo da página, envolva-o dentro de <script></script>', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1644, 0, 'pt', 'packages/theme/theme', 'custom_footer_js', 'Rodapé JS', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1645, 0, 'pt', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS no rodapé da página, coloque-o dentro de <script></script>', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1646, 0, 'pt', 'packages/theme/theme', 'remove_theme_success', 'Remover tema com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1647, 0, 'pt', 'packages/theme/theme', 'theme_is_not_existed', 'Este tema não existe!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1648, 0, 'pt', 'packages/theme/theme', 'remove', 'Remover', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1649, 0, 'pt', 'packages/theme/theme', 'remove_theme', 'Remover tema', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1650, 0, 'pt', 'packages/theme/theme', 'remove_theme_confirm_message', 'Você realmente deseja remover este tema?', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1651, 0, 'pt', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Sim, remova-o!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1652, 0, 'pt', 'packages/theme/theme', 'total_themes', 'Temas totais', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1653, 0, 'pt', 'packages/theme/theme', 'show_admin_bar', 'Mostrar barra de administração (quando o administrador está conectado, ainda mostra a barra de administração no site)?', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1654, 0, 'pt', 'packages/theme/theme', 'settings.title', 'Tema', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1655, 0, 'pt', 'packages/theme/theme', 'settings.description', 'Configuração para o tema', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1656, 0, 'pt', 'packages/theme/theme', 'add_new', 'Adicionar novo', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1657, 0, 'pt', 'packages/theme/theme', 'theme_activated_already', 'O tema \":name\" já está ativado!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1658, 0, 'pt', 'packages/theme/theme', 'missing_json_file', 'Faltando o arquivo theme.json!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1659, 0, 'pt', 'packages/theme/theme', 'theme_invalid', 'O tema é válido!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1660, 0, 'pt', 'packages/theme/theme', 'published_assets_success', 'Publique recursos para :themes com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1661, 0, 'pt', 'packages/theme/theme', 'cannot_remove_theme', 'Não é possível remover o tema ativado, ative outro tema antes de remover \":name\"!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1662, 0, 'pt', 'packages/theme/theme', 'theme_deleted', 'O tema \":name\" foi destruído.', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1663, 0, 'pt', 'packages/theme/theme', 'removed_assets', 'Remova os ativos de um tema :name com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1664, 0, 'pt', 'packages/theme/theme', 'update_custom_css_success', 'Atualizado o CSS personalizado com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1665, 0, 'pt', 'packages/theme/theme', 'update_custom_js_success', 'Atualizado o JS personalizado com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1666, 0, 'pt', 'packages/theme/theme', 'go_to_dashboard', 'Ir para a dashboard', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1667, 0, 'pt', 'packages/theme/theme', 'custom_css_placeholder', 'Usando Ctrl + Espaço para autocompletar.', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1668, 0, 'pt', 'packages/theme/theme', 'theme_option_general', 'Geral', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1669, 0, 'pt', 'packages/theme/theme', 'theme_option_general_description', 'Configurações Gerais', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1670, 0, 'pt', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'Imagem padrão de Open Graph de SEO', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1671, 0, 'pt', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1672, 0, 'pt', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1673, 0, 'pt', 'packages/theme/theme', 'folder_is_not_writeable', 'Não é possível gravar arquivos! Pasta: nome não é gravável. Por favor, chmod para torná-lo gravável!', '2022-02-18 07:37:30', '2022-09-15 20:10:59'),
(1685, 0, 'pt', 'packages/widget/global', 'name', 'Widgets', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1686, 0, 'pt', 'packages/widget/global', 'create', 'Novo widget', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1687, 0, 'pt', 'packages/widget/global', 'edit', 'Editar widget', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1688, 0, 'pt', 'packages/widget/global', 'delete', 'Deletar', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1689, 0, 'pt', 'packages/widget/global', 'available', 'Widgets Disponíveis', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1690, 0, 'pt', 'packages/widget/global', 'instruction', 'Para ativar um widget, arraste-o para uma barra lateral ou clique nele. Para desativar um widget e excluir suas configurações, arraste-o de volta.', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1691, 0, 'pt', 'packages/widget/global', 'number_tag_display', 'As etiquetas numéricas serão exibidas', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1692, 0, 'pt', 'packages/widget/global', 'number_post_display', 'As postagens de número serão exibidas', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1693, 0, 'pt', 'packages/widget/global', 'select_menu', 'Selecione o menu', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1694, 0, 'pt', 'packages/widget/global', 'widget_text', 'Texto', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1695, 0, 'pt', 'packages/widget/global', 'widget_text_description', 'Texto arbitrário ou HTML.', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1696, 0, 'pt', 'packages/widget/global', 'widget_recent_post', 'Postagens recentes', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1697, 0, 'pt', 'packages/widget/global', 'widget_recent_post_description', 'Widget de postagens recentes.', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1698, 0, 'pt', 'packages/widget/global', 'widget_custom_menu', 'Menu customizado', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1699, 0, 'pt', 'packages/widget/global', 'widget_custom_menu_description', 'Adicione um menu personalizado à sua área de widgets.', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1700, 0, 'pt', 'packages/widget/global', 'widget_tag', 'Tags', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1701, 0, 'pt', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1702, 0, 'pt', 'packages/widget/global', 'save_success', 'Salvar widget com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1703, 0, 'pt', 'packages/widget/global', 'delete_success', 'Excluido widget com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:11:07'),
(1704, 0, 'pt', 'packages/widget/widget', 'name', 'Widgets', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1705, 0, 'pt', 'packages/widget/widget', 'create', 'Novo widget', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1706, 0, 'pt', 'packages/widget/widget', 'edit', 'Editar widget', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1707, 0, 'pt', 'packages/widget/widget', 'delete', 'Deletar', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1708, 0, 'pt', 'packages/widget/widget', 'available', 'Widgets Disponíveis', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1709, 0, 'pt', 'packages/widget/widget', 'instruction', 'Para ativar um widget, arraste-o para uma barra lateral ou clique nele. Para desativar um widget e excluir suas configurações, arraste-o de volta.', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1710, 0, 'pt', 'packages/widget/widget', 'number_tag_display', 'As etiquetas numéricas serão exibidas', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1711, 0, 'pt', 'packages/widget/widget', 'number_post_display', 'As postagens de número serão exibidas', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1712, 0, 'pt', 'packages/widget/widget', 'select_menu', 'Selecione o menu', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1713, 0, 'pt', 'packages/widget/widget', 'widget_text', 'Texto', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1714, 0, 'pt', 'packages/widget/widget', 'widget_text_description', 'Texto arbitrário ou HTML.', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1715, 0, 'pt', 'packages/widget/widget', 'widget_recent_post', 'Postagens recentes', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1716, 0, 'pt', 'packages/widget/widget', 'widget_recent_post_description', 'Widget de postagens recentes.', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1717, 0, 'pt', 'packages/widget/widget', 'widget_custom_menu', 'Menu customizado', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1718, 0, 'pt', 'packages/widget/widget', 'widget_custom_menu_description', 'Adicione um menu personalizado à sua área de widgets.', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1719, 0, 'pt', 'packages/widget/widget', 'widget_tag', 'Tags', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1720, 0, 'pt', 'packages/widget/widget', 'widget_tag_description', 'Tags populares', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1721, 0, 'pt', 'packages/widget/widget', 'save_success', 'Salvo widget com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1722, 0, 'pt', 'packages/widget/widget', 'delete_success', 'Excluido widget com sucesso!', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1723, 0, 'pt', 'packages/widget/widget', 'primary_sidebar_name', 'Barra lateral principal', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1724, 0, 'pt', 'packages/widget/widget', 'primary_sidebar_description', 'Seção principal da barra lateral', '2022-02-18 07:37:30', '2022-09-15 20:11:12'),
(1744, 0, 'pt', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1745, 0, 'pt', 'plugins/analytics/analytics', 'visitors', 'Visitantes', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1746, 0, 'pt', 'plugins/analytics/analytics', 'pageviews', 'Visualizações de página', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1747, 0, 'pt', 'plugins/analytics/analytics', 'bounce_rate', 'Taxa de rejeição', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1748, 0, 'pt', 'plugins/analytics/analytics', 'page_session', 'Páginas/Sessão', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1749, 0, 'pt', 'plugins/analytics/analytics', 'avg_duration', 'Média de Duração', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1750, 0, 'pt', 'plugins/analytics/analytics', 'percent_new_session', 'Porcentagem de nova sessão', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1751, 0, 'pt', 'plugins/analytics/analytics', 'new_users', 'Novos visitantes', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1752, 0, 'pt', 'plugins/analytics/analytics', 'visits', 'visitas', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1753, 0, 'pt', 'plugins/analytics/analytics', 'views', 'Visualizações', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1754, 0, 'pt', 'plugins/analytics/analytics', 'view_id_not_specified', 'Você deve fornecer um ID de exibição válido.', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1755, 0, 'pt', 'plugins/analytics/analytics', 'credential_is_not_valid', 'As credenciais do Analytics não são válidas.', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1756, 0, 'pt', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1757, 0, 'pt', 'plugins/analytics/analytics', 'wrong_configuration', 'Para visualizar as análises, você precisará obter um ID de cliente do Google Analytics e adicioná-lo às suas configurações.', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1758, 0, 'pt', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1759, 0, 'pt', 'plugins/analytics/analytics', 'settings.description', 'Credenciais de configuração para o Google Analytics', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1760, 0, 'pt', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1761, 0, 'pt', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Exemplo: GA-12586526-8', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1762, 0, 'pt', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1763, 0, 'pt', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1764, 0, 'pt', 'plugins/analytics/analytics', 'settings.json_credential', 'Credenciais da conta de serviço', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1765, 0, 'pt', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Credenciais da conta de serviço', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1766, 0, 'pt', 'plugins/analytics/analytics', 'widget_analytics_page', 'Páginas mais visitadas', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1767, 0, 'pt', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1768, 0, 'pt', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Maiores referenciadores', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1769, 0, 'pt', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2022-02-18 07:37:30', '2023-03-06 10:40:16'),
(1796, 0, 'pt', 'plugins/audit-log/history', 'name', 'Registros de atividades', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1797, 0, 'pt', 'plugins/audit-log/history', 'created', 'criado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1798, 0, 'pt', 'plugins/audit-log/history', 'updated', 'atualizado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1799, 0, 'pt', 'plugins/audit-log/history', 'deleted', 'deletado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1800, 0, 'pt', 'plugins/audit-log/history', 'logged in', 'logado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1801, 0, 'pt', 'plugins/audit-log/history', 'logged out', 'desconectado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1802, 0, 'pt', 'plugins/audit-log/history', 'changed password', 'senha alterada', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1803, 0, 'pt', 'plugins/audit-log/history', 'updated profile', 'perfil atualizado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1804, 0, 'pt', 'plugins/audit-log/history', 'attached', 'em anexo', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1805, 0, 'pt', 'plugins/audit-log/history', 'shared', 'compartilhado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1806, 0, 'pt', 'plugins/audit-log/history', 'to the system', 'para o sistema', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1807, 0, 'pt', 'plugins/audit-log/history', 'of the system', 'do sistema', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1808, 0, 'pt', 'plugins/audit-log/history', 'menu', 'menu', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1809, 0, 'pt', 'plugins/audit-log/history', 'post', 'publicar', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1810, 0, 'pt', 'plugins/audit-log/history', 'page', 'página', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1811, 0, 'pt', 'plugins/audit-log/history', 'category', 'categoria', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1812, 0, 'pt', 'plugins/audit-log/history', 'tag', 'tag', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1813, 0, 'pt', 'plugins/audit-log/history', 'user', 'usuário', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1814, 0, 'pt', 'plugins/audit-log/history', 'contact', 'contato', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1815, 0, 'pt', 'plugins/audit-log/history', 'backup', 'backup', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1816, 0, 'pt', 'plugins/audit-log/history', 'custom-field', 'campo customizado', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1817, 0, 'pt', 'plugins/audit-log/history', 'widget_audit_logs', 'Registros de atividades', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1818, 0, 'pt', 'plugins/audit-log/history', 'action', 'Ação', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1819, 0, 'pt', 'plugins/audit-log/history', 'user_agent', 'usuário do agente', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1820, 0, 'pt', 'plugins/audit-log/history', 'system', 'Sistema', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1821, 0, 'pt', 'plugins/audit-log/history', 'delete_all', 'Excluir todos os registros', '2022-02-18 07:37:30', '2022-09-15 20:11:45'),
(1844, 0, 'pt', 'plugins/backup/backup', 'name', 'Backup', '2022-02-18 07:37:30', '2022-09-15 20:11:50'),
(1845, 0, 'pt', 'plugins/backup/backup', 'backup_description', 'Banco de dados de backup e pasta de uploads.', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1846, 0, 'pt', 'plugins/backup/backup', 'create_backup_success', 'Backup criado com sucesso!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1847, 0, 'pt', 'plugins/backup/backup', 'delete_backup_success', 'Excluir backup com sucesso!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1848, 0, 'pt', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1849, 0, 'pt', 'plugins/backup/backup', 'generate_btn', 'Gerar backup', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1850, 0, 'pt', 'plugins/backup/backup', 'create', 'Criar um backup', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1851, 0, 'pt', 'plugins/backup/backup', 'restore', 'Restore a backup', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1852, 0, 'pt', 'plugins/backup/backup', 'create_btn', 'Criar', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1853, 0, 'pt', 'plugins/backup/backup', 'restore_btn', 'Restore', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1854, 0, 'pt', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1855, 0, 'pt', 'plugins/backup/backup', 'download_uploads_folder', 'Baixar backup da pasta de uploads', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1856, 0, 'pt', 'plugins/backup/backup', 'download_database', 'Baixar backup do banco de dados', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1857, 0, 'pt', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1858, 0, 'pt', 'plugins/backup/backup', 'demo_alert', 'Olá convidado, se você ver que o site de demonstração foi destruído, por favor me ajude <a href=\":link\">vá aqui</a> e restaure o site de demonstração para a revisão mais recente! Muito obrigado!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1859, 0, 'pt', 'plugins/backup/backup', 'menu_name', 'Backups', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1860, 0, 'pt', 'plugins/backup/backup', 'size', 'Size', '2022-02-18 07:37:31', '2022-09-15 20:11:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1861, 0, 'pt', 'plugins/backup/backup', 'no_backups', 'Não há backup agora!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1862, 0, 'pt', 'plugins/backup/backup', 'proc_open_disabled_error', 'A função <strong>proc_open()</strong> foi desabilitada para que o sistema não possa fazer backup do banco de dados. Entre em contato com seu provedor de hospedagem para habilitá-lo.', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1863, 0, 'pt', 'plugins/backup/backup', 'database_backup_not_existed', 'O banco de dados de backup não existe!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1864, 0, 'pt', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1865, 0, 'pt', 'plugins/backup/backup', 'important_message1', 'Este é um recurso de backup simples, é uma solução para você se o seu site tiver menos de 1 GB de dados e pode ser usado para fazer backup rápido do seu site.', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1866, 0, 'pt', 'plugins/backup/backup', 'important_message2', 'Se você tiver mais de 1 GB de imagens/arquivos no armazenamento local, deve usar o recurso de backup de sua hospedagem ou VPS.', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1867, 0, 'pt', 'plugins/backup/backup', 'important_message3', 'Para fazer backup de seu banco de dados, a função <strong>proc_open()</strong> ou <strong>system()</strong> deve estar habilitada. Entre em contato com seu provedor de hospedagem para habilitá-lo se estiver desabilitado.', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1868, 0, 'pt', 'plugins/backup/backup', 'important_message4', 'Não é um backup completo, é apenas um backup dos arquivos carregados e do seu banco de dados.', '2022-02-18 07:37:31', '2022-09-15 20:11:50'),
(1885, 0, 'pt', 'plugins/blog/base', 'menu_name', 'Blog', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1886, 0, 'pt', 'plugins/blog/base', 'blog_page', 'Página do blog', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1887, 0, 'pt', 'plugins/blog/base', 'select', '-- Selecione --', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1888, 0, 'pt', 'plugins/blog/base', 'blog_page_id', 'Página do blog', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1889, 0, 'pt', 'plugins/blog/base', 'number_posts_per_page', 'Número de postagens por página', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1890, 0, 'pt', 'plugins/blog/base', 'write_some_tags', 'Escreva algumas etiquetas', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1891, 0, 'pt', 'plugins/blog/base', 'short_code_name', 'Postagens no blog', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1892, 0, 'pt', 'plugins/blog/base', 'short_code_description', 'Adicionar postagens do blog', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1893, 0, 'pt', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Número de postagens por página em uma categoria', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1894, 0, 'pt', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Número de postagens por página em uma tag', '2022-02-18 07:37:31', '2022-09-15 20:11:57'),
(1895, 0, 'pt', 'plugins/blog/categories', 'create', 'Criar nova categoria', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1896, 0, 'pt', 'plugins/blog/categories', 'edit', 'Editar categoria', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1897, 0, 'pt', 'plugins/blog/categories', 'menu', 'Categorias', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1898, 0, 'pt', 'plugins/blog/categories', 'edit_this_category', 'Editar esta categoria', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1899, 0, 'pt', 'plugins/blog/categories', 'menu_name', 'Categorias', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1900, 0, 'pt', 'plugins/blog/categories', 'none', 'Nenhum', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1901, 0, 'pt', 'plugins/blog/categories', 'total_posts', 'Total de postagens: :total', '2022-02-18 07:37:31', '2022-09-15 20:12:06'),
(1902, 0, 'pt', 'plugins/blog/member', 'dob', 'Data de nascimento', '2022-02-18 07:37:31', '2022-09-15 20:12:12'),
(1903, 0, 'pt', 'plugins/blog/member', 'draft_posts', 'Postagens de rascunho', '2022-02-18 07:37:31', '2022-09-15 20:12:12'),
(1904, 0, 'pt', 'plugins/blog/member', 'pending_posts', 'Postagens Pendentes', '2022-02-18 07:37:31', '2022-09-15 20:12:12'),
(1905, 0, 'pt', 'plugins/blog/member', 'published_posts', 'Postagens publicadas', '2022-02-18 07:37:31', '2022-09-15 20:12:12'),
(1906, 0, 'pt', 'plugins/blog/member', 'posts', 'Postagens', '2022-02-18 07:37:31', '2022-09-15 20:12:12'),
(1907, 0, 'pt', 'plugins/blog/member', 'write_post', 'Escreva uma postagem', '2022-02-18 07:37:31', '2022-09-15 20:12:12'),
(1908, 0, 'pt', 'plugins/blog/posts', 'create', 'Criar nova postagem', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1909, 0, 'pt', 'plugins/blog/posts', 'edit', 'Editar post', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1910, 0, 'pt', 'plugins/blog/posts', 'form.name', 'Nome', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1911, 0, 'pt', 'plugins/blog/posts', 'form.name_placeholder', 'Nome da postagem (máximo de :c caracteres)', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1912, 0, 'pt', 'plugins/blog/posts', 'form.description', 'Descrição', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1913, 0, 'pt', 'plugins/blog/posts', 'form.description_placeholder', 'Breve descrição da postagem (máximo de caracteres :c)', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1914, 0, 'pt', 'plugins/blog/posts', 'form.categories', 'Categorias', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1915, 0, 'pt', 'plugins/blog/posts', 'form.tags', 'Tags', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1916, 0, 'pt', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1917, 0, 'pt', 'plugins/blog/posts', 'form.content', 'Conteúdo', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1918, 0, 'pt', 'plugins/blog/posts', 'form.is_featured', 'Está em destaque?', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1919, 0, 'pt', 'plugins/blog/posts', 'form.note', 'Conteúdo da nota', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1920, 0, 'pt', 'plugins/blog/posts', 'form.format_type', 'Formato', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1921, 0, 'pt', 'plugins/blog/posts', 'cannot_delete', 'A postagem não pôde ser excluída', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1922, 0, 'pt', 'plugins/blog/posts', 'post_deleted', 'Postagem excluída', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1923, 0, 'pt', 'plugins/blog/posts', 'posts', 'Postagens', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1924, 0, 'pt', 'plugins/blog/posts', 'post', 'Publicar', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1925, 0, 'pt', 'plugins/blog/posts', 'edit_this_post', 'Editar esta postagem', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1926, 0, 'pt', 'plugins/blog/posts', 'no_new_post_now', 'Não há nenhum post novo agora!', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1927, 0, 'pt', 'plugins/blog/posts', 'menu_name', 'Postagens', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1928, 0, 'pt', 'plugins/blog/posts', 'widget_posts_recent', 'Postagens recentes', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1929, 0, 'pt', 'plugins/blog/posts', 'categories', 'Categorias', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1930, 0, 'pt', 'plugins/blog/posts', 'category', 'Categoria', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1931, 0, 'pt', 'plugins/blog/posts', 'author', 'Autor', '2022-02-18 07:37:31', '2022-09-15 20:12:18'),
(1932, 0, 'pt', 'plugins/blog/settings', 'select', '-- Selecione --', '2022-02-18 07:37:31', '2022-09-15 20:12:30'),
(1933, 0, 'pt', 'plugins/blog/settings', 'blog_page_id', 'Página do blog', '2022-02-18 07:37:31', '2022-09-15 20:12:30'),
(1934, 0, 'pt', 'plugins/blog/tags', 'form.name', 'Nome', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1935, 0, 'pt', 'plugins/blog/tags', 'form.name_placeholder', 'Nome da tag (máximo de 120 caracteres)', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1936, 0, 'pt', 'plugins/blog/tags', 'form.description', 'Descrição', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1937, 0, 'pt', 'plugins/blog/tags', 'form.description_placeholder', 'Breve descrição da tag (máximo de 400 caracteres)', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1938, 0, 'pt', 'plugins/blog/tags', 'form.categories', 'Categorias', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1939, 0, 'pt', 'plugins/blog/tags', 'notices.no_select', 'Selecione pelo menos uma tag para realizar esta ação!', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1940, 0, 'pt', 'plugins/blog/tags', 'create', 'Criar nova etiqueta', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1941, 0, 'pt', 'plugins/blog/tags', 'edit', 'Editar etiqueta', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1942, 0, 'pt', 'plugins/blog/tags', 'cannot_delete', 'Não foi possível excluir a tag (etiqueta)', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1943, 0, 'pt', 'plugins/blog/tags', 'deleted', 'Etiqueta excluída', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1944, 0, 'pt', 'plugins/blog/tags', 'menu', 'Tags', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1945, 0, 'pt', 'plugins/blog/tags', 'edit_this_tag', 'Editar esta etiqueta', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1946, 0, 'pt', 'plugins/blog/tags', 'menu_name', 'Tags', '2022-02-18 07:37:31', '2022-09-15 20:12:37'),
(1986, 0, 'pt', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1987, 0, 'pt', 'plugins/captcha/captcha', 'settings.description', 'Configurações do Google Captcha', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1988, 0, 'pt', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1989, 0, 'pt', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1990, 0, 'pt', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Ativar Captcha?', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1991, 0, 'pt', 'plugins/captcha/captcha', 'settings.helper', 'Acesse aqui para obter credenciais https://www.google.com/recaptcha/admin#list.', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1992, 0, 'pt', 'plugins/captcha/captcha', 'settings.hide_badge', 'Ocultar emblema recaptcha (para v3)', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1993, 0, 'pt', 'plugins/captcha/captcha', 'settings.type', 'Tipo', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1994, 0, 'pt', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verificar solicitações com um desafio)', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1995, 0, 'pt', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verificar solicitações com pontuação)', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1996, 0, 'pt', 'plugins/captcha/captcha', 'failed_validate', 'Falha ao validar o captcha.', '2022-02-18 07:37:31', '2022-09-15 20:12:42'),
(1997, 0, 'pt', 'plugins/career/career', 'name', 'Vagas', '2022-02-18 07:37:31', '2022-09-15 20:12:48'),
(1998, 0, 'pt', 'plugins/career/career', 'create', 'Novas Vagas', '2022-02-18 07:37:31', '2022-09-15 20:12:48'),
(1999, 0, 'pt', 'plugins/career/career', 'edit', 'Editar Vaga', '2022-02-18 07:37:31', '2022-09-15 20:12:48'),
(2000, 0, 'pt', 'plugins/career/career', 'location', 'Localização', '2022-02-18 07:37:31', '2022-09-15 20:12:48'),
(2001, 0, 'pt', 'plugins/career/career', 'salary', 'Salário', '2022-02-18 07:37:31', '2022-09-15 20:12:48'),
(2007, 0, 'pt', 'plugins/contact/contact', 'menu', 'Contato', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2008, 0, 'pt', 'plugins/contact/contact', 'edit', 'Ver contato', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2009, 0, 'pt', 'plugins/contact/contact', 'tables.phone', 'Telefone', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2010, 0, 'pt', 'plugins/contact/contact', 'tables.email', 'Email', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2011, 0, 'pt', 'plugins/contact/contact', 'tables.full_name', 'Nome completo', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2012, 0, 'pt', 'plugins/contact/contact', 'tables.time', 'Tempo', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2013, 0, 'pt', 'plugins/contact/contact', 'tables.address', 'Endereço', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2014, 0, 'pt', 'plugins/contact/contact', 'tables.subject', 'Assunto', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2015, 0, 'pt', 'plugins/contact/contact', 'tables.content', 'Conteúdo', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2016, 0, 'pt', 'plugins/contact/contact', 'contact_information', 'Informações de Contato', '2022-02-18 07:37:31', '2022-09-15 20:12:54'),
(2017, 0, 'pt', 'plugins/contact/contact', 'replies', 'Respostas', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2018, 0, 'pt', 'plugins/contact/contact', 'email.header', 'Email', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2019, 0, 'pt', 'plugins/contact/contact', 'email.title', 'Novo contato do seu site', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2020, 0, 'pt', 'plugins/contact/contact', 'form.name.required', 'O nome é obrigatório', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2021, 0, 'pt', 'plugins/contact/contact', 'form.email.required', 'O e-mail é obrigatório', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2022, 0, 'pt', 'plugins/contact/contact', 'form.email.email', 'O endereço de e-mail não é válido', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2023, 0, 'pt', 'plugins/contact/contact', 'form.content.required', 'O conteúdo é obrigatório', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2024, 0, 'pt', 'plugins/contact/contact', 'contact_sent_from', 'Essas informações de contato enviadas de', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2025, 0, 'pt', 'plugins/contact/contact', 'sender', 'Remetente', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2026, 0, 'pt', 'plugins/contact/contact', 'sender_email', 'Email', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2027, 0, 'pt', 'plugins/contact/contact', 'sender_address', 'Endereço', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2028, 0, 'pt', 'plugins/contact/contact', 'sender_phone', 'Telefone', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2029, 0, 'pt', 'plugins/contact/contact', 'message_content', 'Conteúdo da mensagem', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2030, 0, 'pt', 'plugins/contact/contact', 'sent_from', 'E-mail enviado de', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2031, 0, 'pt', 'plugins/contact/contact', 'form_name', 'Nome', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2032, 0, 'pt', 'plugins/contact/contact', 'form_email', 'Email', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2033, 0, 'pt', 'plugins/contact/contact', 'form_address', 'Endereço', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2034, 0, 'pt', 'plugins/contact/contact', 'form_subject', 'Assunto', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2035, 0, 'pt', 'plugins/contact/contact', 'form_phone', 'Telefone', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2036, 0, 'pt', 'plugins/contact/contact', 'form_message', 'Mensagem', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2037, 0, 'pt', 'plugins/contact/contact', 'required_field', 'O campo com (<span style=\"color: red\">*</span>) é obrigatório.', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2038, 0, 'pt', 'plugins/contact/contact', 'send_btn', 'Enviar mensagem', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2039, 0, 'pt', 'plugins/contact/contact', 'new_msg_notice', 'Você tem <span class=\"bold\">:count</span> Novas Mensagens', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2040, 0, 'pt', 'plugins/contact/contact', 'view_all', 'Ver tudo', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2041, 0, 'pt', 'plugins/contact/contact', 'statuses.read', 'Ler', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2042, 0, 'pt', 'plugins/contact/contact', 'statuses.unread', 'Não lida', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2043, 0, 'pt', 'plugins/contact/contact', 'phone', 'Telefone', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2044, 0, 'pt', 'plugins/contact/contact', 'address', 'Endereço', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2045, 0, 'pt', 'plugins/contact/contact', 'message', 'Mensagem', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2046, 0, 'pt', 'plugins/contact/contact', 'settings.email.title', 'Contato', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2047, 0, 'pt', 'plugins/contact/contact', 'settings.email.description', 'Configuração de e-mail de contato', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2048, 0, 'pt', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Enviar aviso ao administrador', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2049, 0, 'pt', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Modelo de e-mail para enviar aviso ao administrador quando o sistema obtiver novo contato', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2050, 0, 'pt', 'plugins/contact/contact', 'no_reply', 'Nenhuma resposta ainda!', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2051, 0, 'pt', 'plugins/contact/contact', 'reply', 'Responder', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2052, 0, 'pt', 'plugins/contact/contact', 'send', 'Enviar', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2053, 0, 'pt', 'plugins/contact/contact', 'shortcode_name', 'Formulário de Contato', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2054, 0, 'pt', 'plugins/contact/contact', 'shortcode_description', 'Adicionar um formulário de contato', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2055, 0, 'pt', 'plugins/contact/contact', 'shortcode_content_description', 'Adicionar shortcode [formulário de contato][/formulário de contato] ao editor?', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2056, 0, 'pt', 'plugins/contact/contact', 'message_sent_success', 'Mensagem enviada com sucesso!', '2022-02-18 07:37:32', '2022-09-15 20:12:54'),
(2098, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Consentimento de cookies', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2099, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Configurações de consentimento de cookies', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2100, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Ativar consentimento de cookies?', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2101, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Mensagem', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2102, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Botão de texto', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2103, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Largura máxima (px)', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2104, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Cor de fundo', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2105, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Cor do texto', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2106, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Saiba mais URL', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2107, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Saiba mais texto', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2108, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Estilo', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2109, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Largura completa', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2110, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Mínimo', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2111, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'message', 'Sua experiência neste site será melhorada ao permitir cookies.', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2112, 0, 'pt', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Permitir cookies', '2022-02-18 07:37:32', '2022-09-15 20:12:59'),
(2113, 0, 'pt', 'plugins/language/language', 'name', 'línguas', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2114, 0, 'pt', 'plugins/language/language', 'choose_language', 'Escolha um idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2115, 0, 'pt', 'plugins/language/language', 'select_language', 'Selecione o idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2116, 0, 'pt', 'plugins/language/language', 'choose_language_helper', 'Você pode escolher um idioma na lista ou editá-lo diretamente abaixo.', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2117, 0, 'pt', 'plugins/language/language', 'language_name', 'Nome do idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2118, 0, 'pt', 'plugins/language/language', 'language_name_helper', 'Idioma O nome é como ele é exibido em seu site (por exemplo: Portugues).', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2119, 0, 'pt', 'plugins/language/language', 'locale', 'Local', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2120, 0, 'pt', 'plugins/language/language', 'locale_helper', 'Laravel Locale para o idioma (por exemplo: <code>pt</code>).', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2121, 0, 'pt', 'plugins/language/language', 'language_code', 'Código do idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2122, 0, 'pt', 'plugins/language/language', 'language_code_helper', 'Código do idioma - de preferência 2 letras ISO 639-1 (por exemplo: en)', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2123, 0, 'pt', 'plugins/language/language', 'text_direction', 'Direção do texto', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2124, 0, 'pt', 'plugins/language/language', 'text_direction_helper', 'Escolha a direção do texto para o idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2125, 0, 'pt', 'plugins/language/language', 'left_to_right', 'Da esquerda para direita', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2126, 0, 'pt', 'plugins/language/language', 'right_to_left', 'Direita para esquerda', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2127, 0, 'pt', 'plugins/language/language', 'flag', 'Bandeira', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2128, 0, 'pt', 'plugins/language/language', 'flag_helper', 'Escolha uma bandeira para o idioma.', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2129, 0, 'pt', 'plugins/language/language', 'order', 'Ordem', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2130, 0, 'pt', 'plugins/language/language', 'order_helper', 'Posição do idioma no seletor de idiomas', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2131, 0, 'pt', 'plugins/language/language', 'add_new_language', 'Adicionar novo idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2132, 0, 'pt', 'plugins/language/language', 'code', 'Código', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2133, 0, 'pt', 'plugins/language/language', 'default_language', 'É padrão?', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2134, 0, 'pt', 'plugins/language/language', 'actions', 'Ações', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2135, 0, 'pt', 'plugins/language/language', 'translations', 'Traduções', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2136, 0, 'pt', 'plugins/language/language', 'edit', 'Editar', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2137, 0, 'pt', 'plugins/language/language', 'edit_tooltip', 'Editar este idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2138, 0, 'pt', 'plugins/language/language', 'delete', 'Deletar', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2139, 0, 'pt', 'plugins/language/language', 'delete_tooltip', 'Excluir este idioma e todos os dados associados', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2140, 0, 'pt', 'plugins/language/language', 'choose_default_language', 'Escolha :language como idioma padrão', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2141, 0, 'pt', 'plugins/language/language', 'current_language', 'Idioma do registro atual', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2142, 0, 'pt', 'plugins/language/language', 'edit_related', 'Editar idioma relacionado para este registro', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2143, 0, 'pt', 'plugins/language/language', 'add_language_for_item', 'Adicionar outra versão de idioma para este registro', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2144, 0, 'pt', 'plugins/language/language', 'settings', 'Definições', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2145, 0, 'pt', 'plugins/language/language', 'language_hide_default', 'Ocultar o idioma padrão do URL?', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2146, 0, 'pt', 'plugins/language/language', 'language_display_flag_only', 'Sinalizar apenas', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2147, 0, 'pt', 'plugins/language/language', 'language_display_name_only', 'Somente nome', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2148, 0, 'pt', 'plugins/language/language', 'language_display_all', 'Exibir toda a bandeira e nome', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2149, 0, 'pt', 'plugins/language/language', 'language_display', 'Exibição de idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2150, 0, 'pt', 'plugins/language/language', 'switcher_display', 'Exibição de idioma do alternador', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2151, 0, 'pt', 'plugins/language/language', 'language_switcher_display_dropdown', 'Suspenso', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2152, 0, 'pt', 'plugins/language/language', 'language_switcher_display_list', 'Lista', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2153, 0, 'pt', 'plugins/language/language', 'current_language_edit_notification', 'Você está editando a versão \"<strong class=\"current_language_text\">:language</strong>\"', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2154, 0, 'pt', 'plugins/language/language', 'confirm-change-language', 'Confirmar alteração de idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2155, 0, 'pt', 'plugins/language/language', 'confirm-change-language-message', 'Você realmente deseja alterar o idioma para \"<strong class=\"change_to_language_text\"></strong>\" ? Esta ação substituirá a versão \"<strong class=\"change_to_language_text\"></strong>\" se já existir!', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2156, 0, 'pt', 'plugins/language/language', 'confirm-change-language-btn', 'Confirmar alteração', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2157, 0, 'pt', 'plugins/language/language', 'hide_languages', 'Ocultar idiomas', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2158, 0, 'pt', 'plugins/language/language', 'hide_languages_description', 'Você pode ocultar completamente o conteúdo em idiomas específicos de visitantes e mecanismos de pesquisa, mas ainda assim visualizá-lo você mesmo. Isso permite revisar as traduções que estão em andamento.', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2159, 0, 'pt', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Todos os idiomas são exibidos no momento.|{1} :language está oculto para visitantes no momento.|[2, Inf] :language está oculto para visitantes no momento.', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2160, 0, 'pt', 'plugins/language/language', 'show_all', 'Mostre tudo', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2161, 0, 'pt', 'plugins/language/language', 'change_language', 'Idioma', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2162, 0, 'pt', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Mostrar item no idioma padrão se não existir no idioma atual', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2163, 0, 'pt', 'plugins/language/language', 'select_flag', 'Selecione uma bandeira...', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2164, 0, 'pt', 'plugins/language/language', 'delete_confirmation_message', 'Deseja mesmo excluir este idioma? Ele também exclui todos os itens neste idioma e não pode reverter!', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2165, 0, 'pt', 'plugins/language/language', 'added_already', 'Este idioma já foi adicionado!', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2166, 0, 'pt', 'plugins/language/language', 'language_auto_detect_user_language', 'Detectar automaticamente o idioma do usuário?', '2022-02-18 07:37:32', '2022-09-15 20:13:04'),
(2214, 0, 'pt', 'plugins/location/bulk-import', 'name', 'Importação em massa', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2215, 0, 'pt', 'plugins/location/bulk-import', 'loading_text', 'Importando', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2216, 0, 'pt', 'plugins/location/bulk-import', 'imported_successfully', 'Importado com sucesso.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2217, 0, 'pt', 'plugins/location/bulk-import', 'please_choose_the_file_mime', 'Por favor, escolha o arquivo mime :types', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2218, 0, 'pt', 'plugins/location/bulk-import', 'please_choose_the_file', 'Por favor, escolha o arquivo', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2219, 0, 'pt', 'plugins/location/bulk-import', 'start_import', 'Iniciar importação', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2220, 0, 'pt', 'plugins/location/bulk-import', 'note', 'Observação!', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2221, 0, 'pt', 'plugins/location/bulk-import', 'warning_before_importing', 'Se esta é a primeira vez que você usa esse recurso, leia a documentação ou entre em contato com o Administrador para obter acesso à funcionalidade correta!', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2222, 0, 'pt', 'plugins/location/bulk-import', 'results', 'Resultado: :success sucessos, :failed falhas', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2223, 0, 'pt', 'plugins/location/bulk-import', 'failures', 'Falhas', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2224, 0, 'pt', 'plugins/location/bulk-import', 'tables.import', 'Importar', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2225, 0, 'pt', 'plugins/location/bulk-import', 'template', 'Template', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2226, 0, 'pt', 'plugins/location/bulk-import', 'rules', 'Regras', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2227, 0, 'pt', 'plugins/location/bulk-import', 'choose_file_with_mime', 'Escolha o arquivo com mime: (:types)', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2228, 0, 'pt', 'plugins/location/bulk-import', 'choose_file', 'Escolher arquivo', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2229, 0, 'pt', 'plugins/location/bulk-import', 'menu', 'Importar locais', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2230, 0, 'pt', 'plugins/location/bulk-import', 'download-csv-file', 'Baixar modelo CSV', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2231, 0, 'pt', 'plugins/location/bulk-import', 'download-excel-file', 'Baixe o modelo do Excel', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2232, 0, 'pt', 'plugins/location/bulk-import', 'downloading', 'Baixando...', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2233, 0, 'pt', 'plugins/location/bulk-import', 'export.template.input_error', 'Erro de entrada', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2234, 0, 'pt', 'plugins/location/bulk-import', 'export.template.number_not_allowed', 'Número não é permitido!', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2235, 0, 'pt', 'plugins/location/bulk-import', 'export.template.allowed_input', 'Entrada permitida', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2236, 0, 'pt', 'plugins/location/bulk-import', 'export.template.prompt_decimal', 'Somente números ou decimais são aceitos e maiores ou iguais a :min.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2237, 0, 'pt', 'plugins/location/bulk-import', 'export.template.prompt_whole_number', 'Somente números são aceitos e maiores ou iguais a :min.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2238, 0, 'pt', 'plugins/location/bulk-import', 'export.template.prompt_list', 'Escolha um valor na lista suspensa.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2239, 0, 'pt', 'plugins/location/bulk-import', 'export.template.pick_from_list', 'Escolha da lista', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2240, 0, 'pt', 'plugins/location/bulk-import', 'export.template.value_not_in_list', 'O valor não está na lista.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2241, 0, 'pt', 'plugins/location/bulk-import', 'export.template.max_text_length', 'Comprimento máximo do texto', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2242, 0, 'pt', 'plugins/location/bulk-import', 'export.template.prompt_max_text_length', 'Só aceite texto com comprimento menor ou igual a :max.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2243, 0, 'pt', 'plugins/location/bulk-import', 'import_failed_description', 'Falha na importação, verifique os erros abaixo!', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2244, 0, 'pt', 'plugins/location/bulk-import', 'available_enable_multi_language', 'Disponível apenas quando você ativa \"É multilíngue?\"', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2245, 0, 'pt', 'plugins/location/bulk-import', 'import_type_required_if', 'O campo :attribute é obrigatório quando \"Import Type\" é :value.', '2022-02-18 07:37:32', '2022-09-15 20:13:09'),
(2246, 0, 'pt', 'plugins/location/city', 'name', 'Cidades', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2247, 0, 'pt', 'plugins/location/city', 'create', 'Nova cidade', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2248, 0, 'pt', 'plugins/location/city', 'edit', 'Editar cidade', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2249, 0, 'pt', 'plugins/location/city', 'state', 'Estado', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2250, 0, 'pt', 'plugins/location/city', 'select_state', 'Selecione o estado...', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2251, 0, 'pt', 'plugins/location/city', 'select_city', 'Selecione a cidade...', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2252, 0, 'pt', 'plugins/location/city', 'country', 'País', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2253, 0, 'pt', 'plugins/location/city', 'select_country', 'Selecione o pais...', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2254, 0, 'pt', 'plugins/location/city', 'city', 'Cidade', '2022-02-18 07:37:32', '2022-09-15 20:13:15'),
(2255, 0, 'pt', 'plugins/location/country', 'name', 'Países', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2256, 0, 'pt', 'plugins/location/country', 'create', 'Novo país', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2257, 0, 'pt', 'plugins/location/country', 'edit', 'Editar país', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2258, 0, 'pt', 'plugins/location/country', 'nationality', 'Nacionalidade', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2259, 0, 'pt', 'plugins/location/country', 'code', 'Código ISO do país', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2260, 0, 'pt', 'plugins/location/country', 'code_placeholder', 'Código ISO do país, em maiúsculas. Exemplo: BR.', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2261, 0, 'pt', 'plugins/location/country', 'code_helper', 'Encontre o código ISO do país aqui: https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes', '2022-02-18 07:37:32', '2022-09-15 20:13:19'),
(2262, 0, 'pt', 'plugins/location/location', 'name', 'Localizações', '2022-02-18 07:37:32', '2022-09-15 20:13:25'),
(2263, 0, 'pt', 'plugins/location/location', 'create', 'Nova localização', '2022-02-18 07:37:32', '2022-09-15 20:13:25'),
(2264, 0, 'pt', 'plugins/location/location', 'edit', 'Editar localização', '2022-02-18 07:37:32', '2022-09-15 20:13:25'),
(2265, 0, 'pt', 'plugins/location/location', 'all_states', 'Todos os Estados', '2022-02-18 07:37:32', '2022-09-15 20:13:25'),
(2266, 0, 'pt', 'plugins/location/location', 'abbreviation', 'Abreviação', '2022-02-18 07:37:32', '2022-09-15 20:13:25'),
(2267, 0, 'pt', 'plugins/location/location', 'abbreviation_placeholder', 'Por exemplo: BR', '2022-02-18 07:37:32', '2022-09-15 20:13:25'),
(2268, 0, 'pt', 'plugins/location/state', 'name', 'Estados', '2022-02-18 07:37:32', '2022-09-15 20:13:36'),
(2269, 0, 'pt', 'plugins/location/state', 'create', 'Novo estado', '2022-02-18 07:37:32', '2022-09-15 20:13:36'),
(2270, 0, 'pt', 'plugins/location/state', 'edit', 'Editar estado', '2022-02-18 07:37:32', '2022-09-15 20:13:36'),
(2271, 0, 'pt', 'plugins/location/state', 'country', 'País', '2022-02-18 07:37:32', '2022-09-15 20:13:36'),
(2272, 0, 'pt', 'plugins/location/state', 'select_country', 'Selecione um pais...', '2022-02-18 07:37:32', '2022-09-15 20:13:36'),
(2273, 0, 'pt', 'plugins/location/state', 'state', 'Estado', '2022-02-18 07:37:32', '2022-09-15 20:13:36'),
(2297, 0, 'pt', 'plugins/payment/payment', 'payments', 'Pagamentos', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2298, 0, 'pt', 'plugins/payment/payment', 'checkout_success', 'Finalizado com sucesso!', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2299, 0, 'pt', 'plugins/payment/payment', 'view_payment', 'Ver pagamento #', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2300, 0, 'pt', 'plugins/payment/payment', 'charge_id', 'Código de cobrança', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2301, 0, 'pt', 'plugins/payment/payment', 'amount', 'Quantia', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2302, 0, 'pt', 'plugins/payment/payment', 'currency', 'Moeda', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2303, 0, 'pt', 'plugins/payment/payment', 'user', 'Usuário', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2304, 0, 'pt', 'plugins/payment/payment', 'stripe', 'Stripe', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2305, 0, 'pt', 'plugins/payment/payment', 'paypal', 'PayPal', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2306, 0, 'pt', 'plugins/payment/payment', 'action', 'Ação', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2307, 1, 'pt', 'plugins/payment/payment', 'payment_via_card', NULL, '2022-02-18 07:37:33', '2022-08-02 20:21:48'),
(2308, 0, 'pt', 'plugins/payment/payment', 'card_number', 'Número do cartão', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2309, 0, 'pt', 'plugins/payment/payment', 'full_name', 'Nome completo', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2310, 0, 'pt', 'plugins/payment/payment', 'payment_via_paypal', 'Pagamento online rápido e seguro via PayPal.', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2311, 0, 'pt', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2312, 0, 'pt', 'plugins/payment/payment', 'cvc', 'CVC', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2313, 0, 'pt', 'plugins/payment/payment', 'details', 'Detalhes', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2314, 0, 'pt', 'plugins/payment/payment', 'payer_name', 'Nome do pagador', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2315, 0, 'pt', 'plugins/payment/payment', 'email', 'Email', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2316, 0, 'pt', 'plugins/payment/payment', 'phone', 'Telefone', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2317, 0, 'pt', 'plugins/payment/payment', 'country', 'País', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2318, 0, 'pt', 'plugins/payment/payment', 'shipping_address', 'endereço de entrega', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2319, 0, 'pt', 'plugins/payment/payment', 'payment_details', 'Detalhes do pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2320, 0, 'pt', 'plugins/payment/payment', 'card', 'Cartão', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2321, 0, 'pt', 'plugins/payment/payment', 'address', 'Endereço', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2322, 0, 'pt', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Não foi possível obter o token Stripe para fazer uma cobrança.', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2323, 0, 'pt', 'plugins/payment/payment', 'payment_id', 'Código de pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2324, 0, 'pt', 'plugins/payment/payment', 'payment_methods', 'Métodos de Pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2325, 0, 'pt', 'plugins/payment/payment', 'transactions', 'Transações', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2326, 0, 'pt', 'plugins/payment/payment', 'payment_methods_description', 'Configurar métodos de pagamento para o site', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2327, 0, 'pt', 'plugins/payment/payment', 'paypal_description', 'O cliente pode comprar o produto e pagar diretamente via PayPal', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2328, 0, 'pt', 'plugins/payment/payment', 'use', 'Usar', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2329, 0, 'pt', 'plugins/payment/payment', 'stripe_description', 'O cliente pode comprar o produto e pagar diretamente com Visa, cartão de crédito via Stripe', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2330, 0, 'pt', 'plugins/payment/payment', 'edit', 'Editar', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2331, 0, 'pt', 'plugins/payment/payment', 'settings', 'Definições', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2332, 0, 'pt', 'plugins/payment/payment', 'activate', 'Ativar', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2333, 0, 'pt', 'plugins/payment/payment', 'deactivate', 'Desativar', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2334, 0, 'pt', 'plugins/payment/payment', 'update', 'Atualizar', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2335, 0, 'pt', 'plugins/payment/payment', 'configuration_instruction', 'Instrução de configuração para :name', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2336, 0, 'pt', 'plugins/payment/payment', 'configuration_requirement', 'Para usar :name, você precisa', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2337, 0, 'pt', 'plugins/payment/payment', 'service_registration', 'Registrar com :name', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2338, 0, 'pt', 'plugins/payment/payment', 'after_service_registration_msg', 'Após o registro em :name, você terá Client ID, Client Secret', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2339, 0, 'pt', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Digite ID do cliente, Segredo na caixa à direita', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2340, 0, 'pt', 'plugins/payment/payment', 'method_name', 'Nome do método', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2341, 0, 'pt', 'plugins/payment/payment', 'please_provide_information', 'Por favor, forneça informações', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2342, 0, 'pt', 'plugins/payment/payment', 'client_id', 'ID do Cliente', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2343, 0, 'pt', 'plugins/payment/payment', 'client_secret', 'Segredo do cliente', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2344, 0, 'pt', 'plugins/payment/payment', 'secret', 'Secret', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2345, 0, 'pt', 'plugins/payment/payment', 'stripe_key', 'Liste a chave pública', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2346, 0, 'pt', 'plugins/payment/payment', 'stripe_secret', 'Chave privada de distribuição', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2347, 0, 'pt', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'Após o registro em :name, você terá chaves públicas e secretas', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2348, 0, 'pt', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Digite as chaves públicas e secretas na caixa à direita', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2349, 0, 'pt', 'plugins/payment/payment', 'pay_online_via', 'Pague online através de :name', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2350, 0, 'pt', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2351, 0, 'pt', 'plugins/payment/payment', 'deactivate_payment_method', 'Desativar forma de pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2352, 0, 'pt', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Deseja mesmo desativar este método de pagamento?', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2353, 0, 'pt', 'plugins/payment/payment', 'agree', 'Aceitar', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2354, 0, 'pt', 'plugins/payment/payment', 'name', 'Pagamentos', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2355, 0, 'pt', 'plugins/payment/payment', 'create', 'Novo pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2356, 0, 'pt', 'plugins/payment/payment', 'go_back', 'Volte', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2357, 0, 'pt', 'plugins/payment/payment', 'information', 'Em formação', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2358, 0, 'pt', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2359, 0, 'pt', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2360, 0, 'pt', 'plugins/payment/payment', 'methods.cod', 'Dinheiro na entrega (COD)', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2361, 0, 'pt', 'plugins/payment/payment', 'methods.bank_transfer', 'transferência bancária', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2362, 0, 'pt', 'plugins/payment/payment', 'statuses.pending', 'Pendente', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2363, 0, 'pt', 'plugins/payment/payment', 'statuses.completed', 'Concluído', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2364, 0, 'pt', 'plugins/payment/payment', 'statuses.refunding', 'Reembolso', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2365, 0, 'pt', 'plugins/payment/payment', 'statuses.refunded', 'Recusado', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2366, 0, 'pt', 'plugins/payment/payment', 'statuses.fraud', 'Fraude', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2367, 0, 'pt', 'plugins/payment/payment', 'statuses.failed', 'Falhou', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2368, 0, 'pt', 'plugins/payment/payment', 'payment_methods_instruction', 'Oriente os clientes a pagar diretamente. Você pode optar por pagar por entrega ou transferência bancária', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2369, 0, 'pt', 'plugins/payment/payment', 'payment_method_description', 'Guia de pagamento - (Exibido na página de aviso de compra e pagamento bem-sucedida)', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2370, 0, 'pt', 'plugins/payment/payment', 'payment_via_cod', 'Dinheiro na entrega', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2371, 0, 'pt', 'plugins/payment/payment', 'payment_via_bank_transfer', 'transferência bancária', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2372, 0, 'pt', 'plugins/payment/payment', 'payment_pending', 'Finalizado com sucesso. Seu pagamento está pendente e será verificado por nossa equipe.', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2373, 0, 'pt', 'plugins/payment/payment', 'created_at', 'Criado em', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2374, 0, 'pt', 'plugins/payment/payment', 'payment_channel', 'Canal de pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2375, 0, 'pt', 'plugins/payment/payment', 'total', 'Total', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2376, 0, 'pt', 'plugins/payment/payment', 'status', 'Status', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2377, 0, 'pt', 'plugins/payment/payment', 'default_payment_method', 'Metodo de pagamento padrão', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2378, 0, 'pt', 'plugins/payment/payment', 'turn_off_success', 'Desligue o método de pagamento com sucesso!', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2379, 0, 'pt', 'plugins/payment/payment', 'saved_payment_method_success', 'Forma de pagamento salva com sucesso!', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2380, 0, 'pt', 'plugins/payment/payment', 'saved_payment_settings_success', 'Configurações de pagamento salvas com sucesso!', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2381, 0, 'pt', 'plugins/payment/payment', 'payment_name', 'Nome', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2382, 0, 'pt', 'plugins/payment/payment', 'callback_url', 'URL de retorno', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2383, 0, 'pt', 'plugins/payment/payment', 'return_url', 'URL de retorno', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2384, 0, 'pt', 'plugins/payment/payment', 'payment_not_found', 'Pagamento não encontrado!', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2385, 0, 'pt', 'plugins/payment/payment', 'refunds.title', 'Reembolsos', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2386, 0, 'pt', 'plugins/payment/payment', 'refunds.id', 'ID', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2387, 0, 'pt', 'plugins/payment/payment', 'refunds.breakdowns', 'Separação', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2388, 0, 'pt', 'plugins/payment/payment', 'refunds.gross_amount', 'Valor bruto', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2389, 0, 'pt', 'plugins/payment/payment', 'refunds.paypal_fee', 'Taxa do PayPal', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2390, 0, 'pt', 'plugins/payment/payment', 'refunds.net_amount', 'Valor líquido', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2391, 0, 'pt', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Valor total reembolsado', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2392, 0, 'pt', 'plugins/payment/payment', 'refunds.create_time', 'Criar tempo', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2393, 0, 'pt', 'plugins/payment/payment', 'refunds.update_time', 'Tempo de atualização', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2394, 0, 'pt', 'plugins/payment/payment', 'refunds.status', 'Status', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2395, 0, 'pt', 'plugins/payment/payment', 'refunds.description', 'Descrição', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2396, 0, 'pt', 'plugins/payment/payment', 'refunds.refunded_at', 'Reembolsado em', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2397, 0, 'pt', 'plugins/payment/payment', 'refunds.error_message', 'Mensagem de erro', '2022-02-18 07:37:33', '2022-09-15 20:13:30');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2398, 0, 'pt', 'plugins/payment/payment', 'view_response_source', 'Ver fonte de resposta', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2399, 0, 'pt', 'plugins/payment/payment', 'status_is_not_completed', 'O status não está CONCLUÍDO', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2400, 0, 'pt', 'plugins/payment/payment', 'cannot_found_capture_id', 'Não foi possível encontrar o ID de captura com detalhes de pagamento', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2401, 0, 'pt', 'plugins/payment/payment', 'amount_refunded', 'Valor reembolsado', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2402, 0, 'pt', 'plugins/payment/payment', 'amount_remaining', 'Montante restante', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2403, 0, 'pt', 'plugins/payment/payment', 'paid_at', 'Pago em', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2404, 0, 'pt', 'plugins/payment/payment', 'invalid_settings', 'As configurações para :name são inválidas!', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2405, 0, 'pt', 'plugins/payment/payment', 'view_transaction', 'Transação \":charge_id\"', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2406, 0, 'pt', 'plugins/payment/payment', 'payment_description', 'Pague pelo seu pedido #:order_id em :site_url', '2022-02-18 07:37:33', '2022-09-15 20:13:30'),
(2488, 0, 'pt', 'plugins/real-estate/account-property', 'draft_properties', 'Imóveis Rascunhos', '2022-02-18 07:37:33', '2022-09-15 20:13:48'),
(2489, 0, 'pt', 'plugins/real-estate/account-property', 'pending_properties', 'Imóveis Pendentes', '2022-02-18 07:37:33', '2022-09-15 20:13:48'),
(2490, 0, 'pt', 'plugins/real-estate/account-property', 'published_properties', 'Imóveis Publicados', '2022-02-18 07:37:33', '2022-09-15 20:13:48'),
(2491, 0, 'pt', 'plugins/real-estate/account-property', 'properties', 'Imóveis', '2022-02-18 07:37:33', '2022-09-15 20:13:48'),
(2492, 0, 'pt', 'plugins/real-estate/account-property', 'write_property', 'Escreva uma propriedade', '2022-02-18 07:37:33', '2022-09-15 20:13:48'),
(2493, 0, 'pt', 'plugins/real-estate/account', 'create', 'Nova conta', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2494, 0, 'pt', 'plugins/real-estate/account', 'edit', 'Editar conta \":name\"', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2495, 0, 'pt', 'plugins/real-estate/account', 'name', 'Contas', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2496, 0, 'pt', 'plugins/real-estate/account', 'form.email', 'Email', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2497, 0, 'pt', 'plugins/real-estate/account', 'form.password', 'Senha', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2498, 0, 'pt', 'plugins/real-estate/account', 'form.password_confirmation', 'Confirmar Senha', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2499, 0, 'pt', 'plugins/real-estate/account', 'form.change_password', 'Mudar senha?', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2500, 0, 'pt', 'plugins/real-estate/account', 'forgot_password', 'Esqueceu a senha', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2501, 0, 'pt', 'plugins/real-estate/account', 'login', 'Login', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2502, 0, 'pt', 'plugins/real-estate/account', 'buy_credits', 'Compre créditos', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2503, 0, 'pt', 'plugins/real-estate/account', 'credits', 'créditos', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2504, 0, 'pt', 'plugins/real-estate/account', 'account_settings', 'Configurações da conta', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2505, 0, 'pt', 'plugins/real-estate/account', 'update_profile_success', 'Atualizar perfil com sucesso!', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2506, 0, 'pt', 'plugins/real-estate/account', 'security', 'Segurança', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2507, 0, 'pt', 'plugins/real-estate/account', 'packages', 'Pacotes', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2508, 0, 'pt', 'plugins/real-estate/account', 'transactions', 'Transações', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2509, 0, 'pt', 'plugins/real-estate/account', 'subscribe_package', 'Assine o pacote \":name\"', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2510, 0, 'pt', 'plugins/real-estate/account', 'first_name', 'Primeiro nome', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2511, 0, 'pt', 'plugins/real-estate/account', 'last_name', 'Sobrenome', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2512, 0, 'pt', 'plugins/real-estate/account', 'username', 'Nome de usuário', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2513, 0, 'pt', 'plugins/real-estate/account', 'username_placeholder', 'Ex: joao_silva', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2514, 0, 'pt', 'plugins/real-estate/account', 'company', 'nome da empresa', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2515, 0, 'pt', 'plugins/real-estate/account', 'company_placeholder', 'nome da empresa', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2516, 0, 'pt', 'plugins/real-estate/account', 'phone', 'Telefone', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2517, 0, 'pt', 'plugins/real-estate/account', 'phone_placeholder', 'Telefone', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2518, 0, 'pt', 'plugins/real-estate/account', 'email_placeholder', 'Ex: exemplo@gmail.com', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2519, 0, 'pt', 'plugins/real-estate/account', 'dob', 'Data de nascimento', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2520, 0, 'pt', 'plugins/real-estate/account', 'number_of_properties', 'Número de propriedades', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2521, 0, 'pt', 'plugins/real-estate/account', 'agents', 'Corretores', '2022-02-18 07:37:33', '2022-09-15 20:13:42'),
(2522, 0, 'pt', 'plugins/real-estate/category', 'name', 'Categorias', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2523, 0, 'pt', 'plugins/real-estate/category', 'create', 'Nova categoria', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2524, 0, 'pt', 'plugins/real-estate/category', 'edit', 'Editar categoria', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2525, 0, 'pt', 'plugins/real-estate/category', 'menu', 'Categorias de propriedade', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2526, 0, 'pt', 'plugins/real-estate/category', 'none', 'Nenhum', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2527, 0, 'pt', 'plugins/real-estate/category', 'total_properties', 'Total de Imóveis', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2528, 0, 'pt', 'plugins/real-estate/category', 'total_projects', 'Projetos totais', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2529, 0, 'pt', 'plugins/real-estate/category', 'is_default', 'É padrão', '2022-02-18 07:37:33', '2022-09-15 20:13:53'),
(2530, 0, 'pt', 'plugins/real-estate/consult', 'name', 'Consultas', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2531, 0, 'pt', 'plugins/real-estate/consult', 'edit', 'Ver consulta', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2532, 0, 'pt', 'plugins/real-estate/consult', 'statuses.read', 'Ler', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2533, 0, 'pt', 'plugins/real-estate/consult', 'statuses.unread', 'Não lida', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2534, 0, 'pt', 'plugins/real-estate/consult', 'phone', 'Telefone', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2535, 0, 'pt', 'plugins/real-estate/consult', 'content', 'Detalhes', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2536, 0, 'pt', 'plugins/real-estate/consult', 'consult_information', 'Consultar informações', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2537, 0, 'pt', 'plugins/real-estate/consult', 'email.header', 'Email', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2538, 0, 'pt', 'plugins/real-estate/consult', 'email.title', 'Nova consulta do seu site', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2539, 0, 'pt', 'plugins/real-estate/consult', 'email.success', 'Enviar consulta com sucesso!', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2540, 0, 'pt', 'plugins/real-estate/consult', 'email.failed', 'Não é possível enviar a solicitação neste momento, tente novamente mais tarde!', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2541, 0, 'pt', 'plugins/real-estate/consult', 'form.name.required', 'O nome é obrigatório', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2542, 0, 'pt', 'plugins/real-estate/consult', 'form.email.required', 'O e-mail é obrigatório', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2543, 0, 'pt', 'plugins/real-estate/consult', 'form.email.email', 'O endereço de e-mail não é válido', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2544, 0, 'pt', 'plugins/real-estate/consult', 'form.content.required', 'O conteúdo é obrigatório', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2545, 0, 'pt', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Confirme que você não é um robô antes de enviar a mensagem.', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2546, 0, 'pt', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'Você ainda não é um robô de confirmação.', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2547, 0, 'pt', 'plugins/real-estate/consult', 'consult_sent_from', 'Esta informação de consulta enviada de', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2548, 0, 'pt', 'plugins/real-estate/consult', 'time', 'Tempo', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2549, 0, 'pt', 'plugins/real-estate/consult', 'consult_id', 'Consultar ID', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2550, 0, 'pt', 'plugins/real-estate/consult', 'form_name', 'Nome', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2551, 0, 'pt', 'plugins/real-estate/consult', 'form_email', 'Email', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2552, 0, 'pt', 'plugins/real-estate/consult', 'form_phone', 'Telefone', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2553, 0, 'pt', 'plugins/real-estate/consult', 'mark_as_read', 'marcar como Lido', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2554, 0, 'pt', 'plugins/real-estate/consult', 'mark_as_unread', 'marcar como não lido', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2555, 0, 'pt', 'plugins/real-estate/consult', 'new_consult_notice', 'Você tem <span class=\"bold\">:count</span> Novas Consultas', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2556, 0, 'pt', 'plugins/real-estate/consult', 'view_all', 'Ver tudo', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2557, 0, 'pt', 'plugins/real-estate/consult', 'project', 'Projeto', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2558, 0, 'pt', 'plugins/real-estate/consult', 'property', 'Propriedade', '2022-02-18 07:37:33', '2022-09-15 20:13:59'),
(2559, 0, 'pt', 'plugins/real-estate/currency', 'currencies', 'Moedas', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2560, 0, 'pt', 'plugins/real-estate/currency', 'setting_description', 'Lista de moedas usando no site', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2561, 0, 'pt', 'plugins/real-estate/currency', 'name', 'Nome', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2562, 0, 'pt', 'plugins/real-estate/currency', 'symbol', 'Símbolo', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2563, 0, 'pt', 'plugins/real-estate/currency', 'number_of_decimals', 'Número de decimais', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2564, 0, 'pt', 'plugins/real-estate/currency', 'exchange_rate', 'Taxa de câmbio', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2565, 0, 'pt', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Posição do símbolo', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2566, 0, 'pt', 'plugins/real-estate/currency', 'is_default', 'É padrão?', '2022-02-18 07:37:33', '2022-09-15 20:14:04'),
(2567, 0, 'pt', 'plugins/real-estate/currency', 'remove', 'Remover', '2022-02-18 07:37:34', '2022-09-15 20:14:04'),
(2568, 0, 'pt', 'plugins/real-estate/currency', 'new_currency', 'Adicionar uma nova moeda', '2022-02-18 07:37:34', '2022-09-15 20:14:04'),
(2569, 0, 'pt', 'plugins/real-estate/currency', 'save_settings', 'Salvar configurações', '2022-02-18 07:37:34', '2022-09-15 20:14:04'),
(2570, 0, 'pt', 'plugins/real-estate/currency', 'before_number', 'Antes do número', '2022-02-18 07:37:34', '2022-09-15 20:14:04'),
(2571, 0, 'pt', 'plugins/real-estate/currency', 'after_number', 'Depois do número', '2022-02-18 07:37:34', '2022-09-15 20:14:04'),
(2572, 0, 'pt', 'plugins/real-estate/currency', 'require_at_least_one_currency', 'O sistema requer pelo menos uma moeda!', '2022-02-18 07:37:34', '2022-09-15 20:14:04'),
(2573, 0, 'pt', 'plugins/real-estate/dashboard', 'joined_on', 'Ingressou :date', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2574, 0, 'pt', 'plugins/real-estate/dashboard', 'dob', 'Nascimento :date', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2575, 0, 'pt', 'plugins/real-estate/dashboard', 'email', 'Email', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2576, 0, 'pt', 'plugins/real-estate/dashboard', 'username', 'Nome de usuário', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2577, 0, 'pt', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Usuário', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2578, 0, 'pt', 'plugins/real-estate/dashboard', 'password', 'Senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2579, 0, 'pt', 'plugins/real-estate/dashboard', 'password-confirmation', 'Confirmar Senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2580, 0, 'pt', 'plugins/real-estate/dashboard', 'remember-me', 'Lembre de mim', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2581, 0, 'pt', 'plugins/real-estate/dashboard', 'login-title', 'Logar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2582, 0, 'pt', 'plugins/real-estate/dashboard', 'login-cta', 'Logar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2583, 0, 'pt', 'plugins/real-estate/dashboard', 'register-title', 'Register', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2584, 0, 'pt', 'plugins/real-estate/dashboard', 'register-cta', 'Registro', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2585, 0, 'pt', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Esqueceu sua senha?', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2586, 0, 'pt', 'plugins/real-estate/dashboard', 'name', 'Nome', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2587, 0, 'pt', 'plugins/real-estate/dashboard', 'reset-password-title', 'Redefinir senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2588, 0, 'pt', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Redefinir senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2589, 0, 'pt', 'plugins/real-estate/dashboard', 'cancel-link', 'Cancelar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2590, 0, 'pt', 'plugins/real-estate/dashboard', 'logout-cta', 'Sair', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2591, 0, 'pt', 'plugins/real-estate/dashboard', 'header_profile_link', 'Perfil', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2592, 0, 'pt', 'plugins/real-estate/dashboard', 'header_settings_link', 'Cofigurações', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2593, 0, 'pt', 'plugins/real-estate/dashboard', 'header_logout_link', 'Sair', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2594, 0, 'pt', 'plugins/real-estate/dashboard', 'unknown_state', 'Desconhecido', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2595, 0, 'pt', 'plugins/real-estate/dashboard', 'close', 'Perto', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2596, 0, 'pt', 'plugins/real-estate/dashboard', 'save', 'Salvar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2597, 0, 'pt', 'plugins/real-estate/dashboard', 'loading', 'Carregando...', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2598, 0, 'pt', 'plugins/real-estate/dashboard', 'new_image', 'Nova imagem', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2599, 0, 'pt', 'plugins/real-estate/dashboard', 'change_profile_image', 'Mudar Avatar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2600, 0, 'pt', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Falha ao salvar a imagem cortada!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2601, 0, 'pt', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Falha ao cortar a imagem', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2602, 0, 'pt', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Falha ao carregar dados', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2603, 0, 'pt', 'plugins/real-estate/dashboard', 'read_image_failed', 'Falha na leitura da imagem', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2604, 0, 'pt', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Atualizar avatar com sucesso!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2605, 0, 'pt', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Clique na imagem para alterar o avatar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2606, 0, 'pt', 'plugins/real-estate/dashboard', 'notices.error', 'Erro!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2607, 0, 'pt', 'plugins/real-estate/dashboard', 'notices.success', 'Successo!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2608, 0, 'pt', 'plugins/real-estate/dashboard', 'sidebar_title', 'Configurações pessoais', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2609, 0, 'pt', 'plugins/real-estate/dashboard', 'sidebar_information', 'Informação da conta', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2610, 0, 'pt', 'plugins/real-estate/dashboard', 'sidebar_security', 'Segurança', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2611, 0, 'pt', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Pacotes', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2612, 0, 'pt', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Transações', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2613, 0, 'pt', 'plugins/real-estate/dashboard', 'account_field_title', 'Informação da conta', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2614, 0, 'pt', 'plugins/real-estate/dashboard', 'profile-picture', 'Foto do perfil', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2615, 0, 'pt', 'plugins/real-estate/dashboard', 'uploading', 'Enviando...', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2616, 0, 'pt', 'plugins/real-estate/dashboard', 'company', 'nome da empresa', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2617, 0, 'pt', 'plugins/real-estate/dashboard', 'phone', 'Telefone', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2618, 0, 'pt', 'plugins/real-estate/dashboard', 'first_name', 'Primeiro nome', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2619, 0, 'pt', 'plugins/real-estate/dashboard', 'last_name', 'Sobrenome', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2620, 0, 'pt', 'plugins/real-estate/dashboard', 'description', 'Pequena descrição', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2621, 0, 'pt', 'plugins/real-estate/dashboard', 'description_placeholder', 'Diga alguma coisa sobre você...', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2622, 0, 'pt', 'plugins/real-estate/dashboard', 'verified', 'Verificado', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2623, 0, 'pt', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Verifique o e-mail pelo link que enviamos para você.', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2624, 0, 'pt', 'plugins/real-estate/dashboard', 'birthday', 'Aniversário', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2625, 0, 'pt', 'plugins/real-estate/dashboard', 'year_lc', 'Ano', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2626, 0, 'pt', 'plugins/real-estate/dashboard', 'month_lc', 'Mês', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2627, 0, 'pt', 'plugins/real-estate/dashboard', 'day_lc', 'dia', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2628, 0, 'pt', 'plugins/real-estate/dashboard', 'gender', 'Gênero', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2629, 0, 'pt', 'plugins/real-estate/dashboard', 'gender_male', 'Masculino', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2630, 0, 'pt', 'plugins/real-estate/dashboard', 'gender_female', 'Feminino', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2631, 0, 'pt', 'plugins/real-estate/dashboard', 'gender_other', 'Outro', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2632, 0, 'pt', 'plugins/real-estate/dashboard', 'security_title', 'Segurança', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2633, 0, 'pt', 'plugins/real-estate/dashboard', 'packages_title', 'Pacotes', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2634, 0, 'pt', 'plugins/real-estate/dashboard', 'transactions_title', 'Transações', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2635, 0, 'pt', 'plugins/real-estate/dashboard', 'current_password', 'Senha atual', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2636, 0, 'pt', 'plugins/real-estate/dashboard', 'password_new', 'Nova Senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2637, 0, 'pt', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Confirmar Senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2638, 0, 'pt', 'plugins/real-estate/dashboard', 'password_update_btn', 'Atualizar Senha', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2639, 0, 'pt', 'plugins/real-estate/dashboard', 'activity_logs', 'Registros de atividades', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2640, 0, 'pt', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2641, 0, 'pt', 'plugins/real-estate/dashboard', 'no_activity_logs', 'Você ainda não tem registros de atividades', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2642, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.create_property', 'Você criou a propriedade \":name\"', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2643, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.update_property', 'Você atualizou a propriedade \":name\"', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2644, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.delete_property', 'Você excluiu a propriedade \":name\"', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2645, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.update_setting', 'Você atualizou suas configurações', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2646, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.update_security', 'Você atualizou suas configurações de segurança', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2647, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Sua propriedade \":name\" foi atualizada pelo administrador', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2648, 0, 'pt', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'Você mudou seu avatar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2649, 0, 'pt', 'plugins/real-estate/dashboard', 'load_more', 'Carregue mais', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2650, 0, 'pt', 'plugins/real-estate/dashboard', 'loading_more', 'Carregando...', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2651, 0, 'pt', 'plugins/real-estate/dashboard', 'back-to-login', 'Voltar para a página de login', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2652, 0, 'pt', 'plugins/real-estate/dashboard', 'no_transactions', 'Nenhuma transação', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2653, 0, 'pt', 'plugins/real-estate/dashboard', 'approved_properties', 'Propriedades aprovadas', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2654, 0, 'pt', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Imóveis Pendentes de Aprovação', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2655, 0, 'pt', 'plugins/real-estate/dashboard', 'rejected_properties', 'Propriedades rejeitadas', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2656, 0, 'pt', 'plugins/real-estate/dashboard', 'your_credits', 'Seus créditos', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2657, 0, 'pt', 'plugins/real-estate/dashboard', 'credits', 'créditos', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2658, 0, 'pt', 'plugins/real-estate/dashboard', 'per_post', 'por postagem', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2659, 0, 'pt', 'plugins/real-estate/dashboard', 'free', 'Grátis', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2660, 0, 'pt', 'plugins/real-estate/dashboard', 'posts', 'post(s)', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2661, 0, 'pt', 'plugins/real-estate/dashboard', 'total', 'Total', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2662, 0, 'pt', 'plugins/real-estate/dashboard', 'purchase', 'Comprar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2663, 0, 'pt', 'plugins/real-estate/dashboard', 'select_facility', 'Selecionar instalação', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2664, 0, 'pt', 'plugins/real-estate/dashboard', 'distance', 'Distância(Km)', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2665, 0, 'pt', 'plugins/real-estate/dashboard', 'add_new', 'Adicionar novo', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2666, 0, 'pt', 'plugins/real-estate/dashboard', 'resend', 'Reenviar', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2667, 0, 'pt', 'plugins/real-estate/dashboard', 'error', 'Erro!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2668, 0, 'pt', 'plugins/real-estate/dashboard', 'success', 'Sucesso!', '2022-02-18 07:37:34', '2022-09-15 20:14:09'),
(2669, 0, 'pt', 'plugins/real-estate/facility', 'name', 'Instalações', '2022-02-18 07:37:34', '2022-09-15 20:14:14'),
(2670, 0, 'pt', 'plugins/real-estate/facility', 'create', 'Nova instalação', '2022-02-18 07:37:34', '2022-09-15 20:14:14'),
(2671, 0, 'pt', 'plugins/real-estate/facility', 'edit', 'Editar instalação', '2022-02-18 07:37:34', '2022-09-15 20:14:14'),
(2672, 0, 'pt', 'plugins/real-estate/feature', 'name', 'Características', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2673, 0, 'pt', 'plugins/real-estate/feature', 'create', 'Novo recurso', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2674, 0, 'pt', 'plugins/real-estate/feature', 'edit', 'Editar recurso', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2675, 0, 'pt', 'plugins/real-estate/feature', 'messages.request.name_required', 'O nome é obrigatório', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2676, 0, 'pt', 'plugins/real-estate/feature', 'form.help_block', 'Informações do recurso de propriedade', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2677, 0, 'pt', 'plugins/real-estate/feature', 'form.name', 'Título', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2678, 0, 'pt', 'plugins/real-estate/feature', 'form.icon', 'Icon', '2022-02-18 07:37:34', '2022-09-15 20:14:19'),
(2679, 0, 'pt', 'plugins/real-estate/investor', 'name', 'Investidores', '2022-02-18 07:37:34', '2022-09-15 20:14:24'),
(2680, 0, 'pt', 'plugins/real-estate/investor', 'create', 'Novo investidor', '2022-02-18 07:37:34', '2022-09-15 20:14:24'),
(2681, 0, 'pt', 'plugins/real-estate/investor', 'edit', 'Editar investidor', '2022-02-18 07:37:34', '2022-09-15 20:14:24'),
(2682, 0, 'pt', 'plugins/real-estate/package', 'name', 'Pacotes', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2683, 0, 'pt', 'plugins/real-estate/package', 'create', 'Novo pacote', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2684, 0, 'pt', 'plugins/real-estate/package', 'edit', 'Editar pacote', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2685, 0, 'pt', 'plugins/real-estate/package', 'price', 'Preço', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2686, 0, 'pt', 'plugins/real-estate/package', 'currency', 'Moeda', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2687, 0, 'pt', 'plugins/real-estate/package', 'percent_save', 'Porcentagem de economia', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2688, 0, 'pt', 'plugins/real-estate/package', 'number_of_listings', 'Número de listagens', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2689, 0, 'pt', 'plugins/real-estate/package', 'add_credit_success', 'Adicionar crédito com sucesso!', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2690, 0, 'pt', 'plugins/real-estate/package', 'setup_payment_methods', 'Por favor, configure os métodos de pagamento (PayPal, Stripe, COD, transferência bancária)', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2691, 0, 'pt', 'plugins/real-estate/package', 'add_credit_warning', 'Por favor, adicione seu crédito para criar suas próprias postagens aqui:', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2692, 0, 'pt', 'plugins/real-estate/package', 'add_credit', 'Adicionar crédito', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2693, 0, 'pt', 'plugins/real-estate/package', 'account_limit', 'Limitar compra por conta', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2694, 0, 'pt', 'plugins/real-estate/package', 'account_limit_placeholder', 'Uma conta pode comprar x vezes', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2695, 0, 'pt', 'plugins/real-estate/package', 'subscribe_package', 'Pacote de assinatura', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2696, 0, 'pt', 'plugins/real-estate/package', 'add_credit_alert', 'Por favor, adicione seu crédito para criar suas próprias postagens.', '2022-02-18 07:37:34', '2022-09-15 20:14:29'),
(2697, 0, 'pt', 'plugins/real-estate/project', 'name', 'Empreendimentos', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2698, 0, 'pt', 'plugins/real-estate/project', 'create', 'Novo projeto', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2699, 0, 'pt', 'plugins/real-estate/project', 'edit', 'Editar projeto', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2700, 0, 'pt', 'plugins/real-estate/project', 'form.general_info', 'Informação geral', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2701, 0, 'pt', 'plugins/real-estate/project', 'form.name', 'Nome', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2702, 0, 'pt', 'plugins/real-estate/project', 'form.description', 'Descrição', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2703, 0, 'pt', 'plugins/real-estate/project', 'form.basic_info', 'Informação básica', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2704, 0, 'pt', 'plugins/real-estate/project', 'form.location', 'Localização', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2705, 0, 'pt', 'plugins/real-estate/project', 'form.investor', 'Investidor', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2706, 0, 'pt', 'plugins/real-estate/project', 'form.number_block', 'Blocos numéricos', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2707, 0, 'pt', 'plugins/real-estate/project', 'form.number_floor', 'Número de andares', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2708, 0, 'pt', 'plugins/real-estate/project', 'form.number_flat', 'Número de apartamentos', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2709, 0, 'pt', 'plugins/real-estate/project', 'form.date_finish', 'Data de término', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2710, 0, 'pt', 'plugins/real-estate/project', 'form.date_sell', 'Abrir data de venda', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2711, 0, 'pt', 'plugins/real-estate/project', 'form.images', 'Imagens', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2712, 0, 'pt', 'plugins/real-estate/project', 'form.price_from', 'Menor preço', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2713, 0, 'pt', 'plugins/real-estate/project', 'form.price_to', 'Preço máximo', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2714, 0, 'pt', 'plugins/real-estate/project', 'form.currency', 'Moeda', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2715, 0, 'pt', 'plugins/real-estate/project', 'form.city', 'Cidade', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2716, 0, 'pt', 'plugins/real-estate/project', 'form.category', 'Categoria', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2717, 0, 'pt', 'plugins/real-estate/project', 'form.latitude', 'Latitude', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2718, 0, 'pt', 'plugins/real-estate/project', 'form.latitude_helper', 'Acesse aqui para obter o Latitude do endereço.', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2719, 0, 'pt', 'plugins/real-estate/project', 'form.longitude', 'Longitude', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2720, 0, 'pt', 'plugins/real-estate/project', 'form.longitude_helper', 'Vá aqui para obter a Longitude do endereço.', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2721, 0, 'pt', 'plugins/real-estate/project', 'form.categories', 'Categorias', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2722, 0, 'pt', 'plugins/real-estate/project', 'statuses.not_available', 'Não disponível', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2723, 0, 'pt', 'plugins/real-estate/project', 'statuses.pre_sale', 'Preparando a venda', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2724, 0, 'pt', 'plugins/real-estate/project', 'statuses.selling', 'Vendendo', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2725, 0, 'pt', 'plugins/real-estate/project', 'statuses.sold', 'Vendido', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2726, 0, 'pt', 'plugins/real-estate/project', 'statuses.building', 'Prédio', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2727, 0, 'pt', 'plugins/real-estate/project', 'distance_key', 'Chave de distância entre instalações', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2728, 0, 'pt', 'plugins/real-estate/project', 'select_investor', 'Selecione um investidor...', '2022-02-18 07:37:34', '2022-09-15 20:14:34'),
(2729, 0, 'pt', 'plugins/real-estate/property', 'name', 'Propriedades', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2730, 0, 'pt', 'plugins/real-estate/property', 'create', 'Novo Imóvel', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2731, 0, 'pt', 'plugins/real-estate/property', 'edit', 'Editar propriedade', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2732, 0, 'pt', 'plugins/real-estate/property', 'form.main_info', 'Informação geral', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2733, 0, 'pt', 'plugins/real-estate/property', 'form.basic_info', 'Informação básica', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2734, 0, 'pt', 'plugins/real-estate/property', 'form.name', 'Título', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2735, 0, 'pt', 'plugins/real-estate/property', 'form.type', 'Modelo', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2736, 0, 'pt', 'plugins/real-estate/property', 'form.images', 'Imagens', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2737, 0, 'pt', 'plugins/real-estate/property', 'form.location', 'Localização da propriedade', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2738, 0, 'pt', 'plugins/real-estate/property', 'form.number_bedroom', 'Número de quartos', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2739, 0, 'pt', 'plugins/real-estate/property', 'form.number_bathroom', 'Número de banheiros', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2740, 0, 'pt', 'plugins/real-estate/property', 'form.number_floor', 'Número de andares', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2741, 1, 'pt', 'plugins/real-estate/property', 'form.square', 'Metros Quadrados:', '2022-02-18 07:37:34', '2023-03-30 18:18:47'),
(2742, 0, 'pt', 'plugins/real-estate/property', 'form.price', 'Preço', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2743, 0, 'pt', 'plugins/real-estate/property', 'form.features', 'Características', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2744, 0, 'pt', 'plugins/real-estate/property', 'form.project', 'Empreendimento', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2745, 0, 'pt', 'plugins/real-estate/property', 'form.date', 'Informações de data', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2746, 0, 'pt', 'plugins/real-estate/property', 'form.currency', 'Moeda', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2747, 0, 'pt', 'plugins/real-estate/property', 'form.city', 'Cidade', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2748, 0, 'pt', 'plugins/real-estate/property', 'form.period', 'Período', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2749, 0, 'pt', 'plugins/real-estate/property', 'form.category', 'Categoria', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2750, 0, 'pt', 'plugins/real-estate/property', 'form.latitude', 'Latitude', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2751, 0, 'pt', 'plugins/real-estate/property', 'form.latitude_helper', 'Acesse aqui para obter o Latitude do endereço.', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2752, 0, 'pt', 'plugins/real-estate/property', 'form.longitude', 'Longitude', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2753, 0, 'pt', 'plugins/real-estate/property', 'form.longitude_helper', 'Vá aqui para obter a Longitude do endereço.', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2754, 0, 'pt', 'plugins/real-estate/property', 'form.categories', 'Categorias', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2755, 0, 'pt', 'plugins/real-estate/property', 'form.images_upload_placeholder', 'Solte os arquivos aqui ou clique para fazer upload.', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2756, 0, 'pt', 'plugins/real-estate/property', 'statuses.not_available', 'Não disponível', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2757, 0, 'pt', 'plugins/real-estate/property', 'statuses.pre_sale', 'Preparando a venda', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2758, 0, 'pt', 'plugins/real-estate/property', 'statuses.selling', 'Venda', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2759, 0, 'pt', 'plugins/real-estate/property', 'statuses.sold', 'Vendido', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2760, 0, 'pt', 'plugins/real-estate/property', 'statuses.renting', 'Alugar', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2761, 0, 'pt', 'plugins/real-estate/property', 'statuses.rented', 'Alugado', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2762, 0, 'pt', 'plugins/real-estate/property', 'statuses.building', 'Prédio', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2763, 0, 'pt', 'plugins/real-estate/property', 'types.sale', 'Venda', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2764, 0, 'pt', 'plugins/real-estate/property', 'types.rent', 'Aluguel', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2765, 0, 'pt', 'plugins/real-estate/property', 'periods.day', 'Dia', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2766, 0, 'pt', 'plugins/real-estate/property', 'periods.month', 'Mês', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2767, 0, 'pt', 'plugins/real-estate/property', 'periods.year', 'Ano', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2768, 0, 'pt', 'plugins/real-estate/property', 'moderation_status', 'Status de moderação', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2769, 0, 'pt', 'plugins/real-estate/property', 'moderation-statuses.pending', 'Pendente', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2770, 0, 'pt', 'plugins/real-estate/property', 'moderation-statuses.approved', 'Aprovado', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2771, 0, 'pt', 'plugins/real-estate/property', 'moderation-statuses.rejected', 'Rejeitado', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2772, 0, 'pt', 'plugins/real-estate/property', 'renew_notice', 'Renovar automaticamente (você será cobrado novamente em :days dias)?', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2773, 0, 'pt', 'plugins/real-estate/property', 'distance_key', 'Chave de distância entre instalações', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2774, 0, 'pt', 'plugins/real-estate/property', 'never_expired', 'Nunca expira?', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2775, 0, 'pt', 'plugins/real-estate/property', 'select_project', 'Selecione um empreendimento', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2776, 0, 'pt', 'plugins/real-estate/property', 'account', 'Conta', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2777, 0, 'pt', 'plugins/real-estate/property', 'select_account', 'Selecione uma conta..', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2778, 0, 'pt', 'plugins/real-estate/property', 'expire_date', 'Data de validade', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2779, 0, 'pt', 'plugins/real-estate/property', 'never_expired_label', 'Nunca expirou?', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2780, 0, 'pt', 'plugins/real-estate/property', 'active_properties', 'Imóveis ativos', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2781, 0, 'pt', 'plugins/real-estate/property', 'pending_properties', 'Imóveis pendentes', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2782, 0, 'pt', 'plugins/real-estate/property', 'expired_properties', 'imóveis expirados', '2022-02-18 07:37:34', '2022-11-14 21:05:53'),
(2783, 0, 'pt', 'plugins/real-estate/real-estate', 'name', 'Imóveis', '2022-02-18 07:37:34', '2022-09-15 20:14:44'),
(2784, 0, 'pt', 'plugins/real-estate/real-estate', 'settings', 'Configurações', '2022-02-18 07:37:34', '2022-09-15 20:14:44'),
(2785, 0, 'pt', 'plugins/real-estate/settings', 'title', 'Contas', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2786, 0, 'pt', 'plugins/real-estate/settings', 'description', 'Configurações para membros', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2787, 0, 'pt', 'plugins/real-estate/settings', 'verify_account_email', 'Verificar o e-mail da conta?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2788, 0, 'pt', 'plugins/real-estate/settings', 'square_unit', 'Unidade de quadrado', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2789, 0, 'pt', 'plugins/real-estate/settings', 'square_unit_none', 'Nenhum', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2790, 0, 'pt', 'plugins/real-estate/settings', 'square_unit_meter', 'Metros Quadrados (m²)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2791, 0, 'pt', 'plugins/real-estate/settings', 'square_unit_feet', 'Pés quadrados (ft2)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2792, 0, 'pt', 'plugins/real-estate/settings', 'square_unit_yard', 'Jarda quadrada (yd2)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2793, 0, 'pt', 'plugins/real-estate/settings', 'general', 'Configurações Gerais', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2794, 0, 'pt', 'plugins/real-estate/settings', 'general_description', 'Configurações básicas para imóveis', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2795, 0, 'pt', 'plugins/real-estate/settings', 'real_estate_convert_money_to_text_enabled', 'Converter dinheiro em texto se for muito grande?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2796, 0, 'pt', 'plugins/real-estate/settings', 'thousands_separator', 'separador de milhares', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2797, 0, 'pt', 'plugins/real-estate/settings', 'decimal_separator', 'Separador decimal', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2798, 0, 'pt', 'plugins/real-estate/settings', 'separator_period', 'Período (.)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2799, 0, 'pt', 'plugins/real-estate/settings', 'separator_comma', 'Vírgula (,)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2800, 0, 'pt', 'plugins/real-estate/settings', 'separator_space', 'Espaço (,)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2801, 0, 'pt', 'plugins/real-estate/settings', 'real_estate_enabled_register', 'Permitir que os visitantes registem uma conta e publiquem as suas propriedades?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2802, 0, 'pt', 'plugins/real-estate/settings', 'email.title', 'Imóveis', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2803, 0, 'pt', 'plugins/real-estate/settings', 'email.description', 'Configuração de e-mail imobiliário', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2804, 0, 'pt', 'plugins/real-estate/settings', 'property_expired_after_days', 'Tempo de expiração da propriedade (dias)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2805, 0, 'pt', 'plugins/real-estate/settings', 'enable_post_approval', 'Ativar aprovação de postagem?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2806, 0, 'pt', 'plugins/real-estate/settings', 'enable_credits_system', 'Habilitar sistema de créditos (agentes precisam comprar créditos para postar seus imóveis)', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2807, 0, 'pt', 'plugins/real-estate/settings', 'enable_auto_detect_visitor_currency', 'Ativar detecção automática de moeda do visitante?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2808, 0, 'pt', 'plugins/real-estate/settings', 'display_views_count_in_detail_page', 'Contagem de visualizações de exibição na página de detalhes?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2809, 0, 'pt', 'plugins/real-estate/settings', 'enable_recaptcha_in_register_page', 'Ativar o Recaptcha na página de registro?', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2810, 0, 'pt', 'plugins/real-estate/settings', 'enable_recaptcha_in_register_page_description', 'Precisa configurar o Captcha em Admin -> Configurações -> Geral primeiro.', '2022-02-18 07:37:34', '2022-09-15 20:14:48'),
(2811, 0, 'pt', 'plugins/real-estate/transaction', 'types.add', 'Adicionar', '2022-02-18 07:37:34', '2022-09-15 20:14:53'),
(2812, 0, 'pt', 'plugins/real-estate/transaction', 'types.remove', 'Remover', '2022-02-18 07:37:34', '2022-09-15 20:14:53'),
(3065, 0, 'pt', 'plugins/social-login/social-login', 'settings.title', 'Configurações de login social', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3066, 0, 'pt', 'plugins/social-login/social-login', 'settings.description', 'Configurar opções de login redes sociais', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3067, 0, 'pt', 'plugins/social-login/social-login', 'settings.facebook.title', 'Configurações de login do Facebook', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3068, 0, 'pt', 'plugins/social-login/social-login', 'settings.facebook.description', 'Ativar/desativar e configurar credenciais de aplicativo para login no Facebook', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3069, 0, 'pt', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3070, 0, 'pt', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3071, 0, 'pt', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Acesse https://developers.facebook.com para criar uma nova ID do aplicativo de atualização do aplicativo, App Secret. URL de retorno é :callback', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3072, 0, 'pt', 'plugins/social-login/social-login', 'settings.google.title', 'Configurações de login do Google', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3073, 0, 'pt', 'plugins/social-login/social-login', 'settings.google.description', 'Ativar/desativar e configurar credenciais de aplicativo para login do Google', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3074, 0, 'pt', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3075, 0, 'pt', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3076, 0, 'pt', 'plugins/social-login/social-login', 'settings.google.helper', 'Acesse https://console.developers.google.com/apis/dashboard para criar uma nova atualização do aplicativo App ID, App Secret. URL de retorno é :callback', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3077, 0, 'pt', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3078, 0, 'pt', 'plugins/social-login/social-login', 'settings.github.description', 'Ativar/desativar e configurar credenciais de aplicativo para login do Github', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3079, 0, 'pt', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3080, 0, 'pt', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3081, 0, 'pt', 'plugins/social-login/social-login', 'settings.github.helper', 'Acesse https://github.com/settings/developers para criar um novo ID do aplicativo de atualização do aplicativo, App Secret. URL de retorno é :callback', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3082, 0, 'pt', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Configurações de login do Linkedin', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3083, 0, 'pt', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Ativar/desativar e configurar credenciais de aplicativos para login no Linkedin', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3084, 0, 'pt', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3085, 0, 'pt', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3086, 0, 'pt', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Acesse https://www.linkedin.com/developers/apps/new para criar uma nova ID do aplicativo de atualização do aplicativo, App Secret. URL de retorno é :callback', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3087, 0, 'pt', 'plugins/social-login/social-login', 'settings.enable', 'Habilitado?', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3088, 0, 'pt', 'plugins/social-login/social-login', 'menu', 'Login Redes Sociais', '2022-02-18 07:37:36', '2022-09-15 20:14:57'),
(3089, 0, 'pt', 'plugins/translation/translation', 'translations', 'Traduções', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3090, 0, 'pt', 'plugins/translation/translation', 'translations_description', 'Traduzir todas as palavras no sistema.', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3091, 0, 'pt', 'plugins/translation/translation', 'export_warning', 'Atenção, as traduções não são visíveis até que sejam exportadas de volta para o arquivo resources/lang, usando o comando \'php artisan cms:translations:export\' ou o botão de publicação.', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3092, 0, 'pt', 'plugins/translation/translation', 'import_done', 'Importação concluída, processada: itens de contador! Recarregue esta página para atualizar os grupos!', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3093, 0, 'pt', 'plugins/translation/translation', 'translation_manager', 'Gerente de traduções', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3094, 0, 'pt', 'plugins/translation/translation', 'done_publishing', 'Concluída a publicação das traduções para o grupo', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3095, 0, 'pt', 'plugins/translation/translation', 'append_translation', 'Anexar novas traduções', '2022-02-18 07:37:36', '2022-09-15 20:15:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3096, 0, 'pt', 'plugins/translation/translation', 'replace_translation', 'Substituir traduções existentes', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3097, 0, 'pt', 'plugins/translation/translation', 'import_group', 'Importar grupo', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3098, 0, 'pt', 'plugins/translation/translation', 'confirm_publish_group', 'Tem certeza de que deseja publicar o grupo de traduções \":group\"? Isso substituirá os arquivos de idioma existentes.', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3099, 0, 'pt', 'plugins/translation/translation', 'publish_translations', 'Publicar traduções', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3100, 0, 'pt', 'plugins/translation/translation', 'back', 'Voltar', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3101, 0, 'pt', 'plugins/translation/translation', 'edit_title', 'Digite a tradução', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3102, 0, 'pt', 'plugins/translation/translation', 'choose_group_msg', 'Escolha um grupo para exibir as traduções do grupo. Se nenhum grupo estiver visível, certifique-se de ter importado as traduções.', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3103, 0, 'pt', 'plugins/translation/translation', 'choose_a_group', 'Escolha um grupo', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3104, 0, 'pt', 'plugins/translation/translation', 'locales', 'Localidades', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3105, 0, 'pt', 'plugins/translation/translation', 'theme-translations', 'Traduções de temas', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3106, 0, 'pt', 'plugins/translation/translation', 'admin-translations', 'Outras traduções', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3107, 0, 'pt', 'plugins/translation/translation', 'translate_from', 'Traduzir de', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3108, 0, 'pt', 'plugins/translation/translation', 'to', 'para', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3109, 0, 'pt', 'plugins/translation/translation', 'no_other_languages', 'Nenhum outro idioma para traduzir!', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3110, 0, 'pt', 'plugins/translation/translation', 'edit', 'Editar', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3111, 0, 'pt', 'plugins/translation/translation', 'locale', 'Localidade', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3112, 0, 'pt', 'plugins/translation/translation', 'locale_placeholder', 'Ex: pt', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3113, 0, 'pt', 'plugins/translation/translation', 'name', 'Nome', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3114, 0, 'pt', 'plugins/translation/translation', 'default_locale', 'Local padrão?', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3115, 0, 'pt', 'plugins/translation/translation', 'actions', 'Ações', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3116, 0, 'pt', 'plugins/translation/translation', 'choose_language', 'Escolha o seu idioma', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3117, 0, 'pt', 'plugins/translation/translation', 'add_new_language', 'Adicionar Novo Idioma', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3118, 0, 'pt', 'plugins/translation/translation', 'select_language', 'Selecione o idioma', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3119, 0, 'pt', 'plugins/translation/translation', 'flag', 'Bandeira', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3120, 0, 'pt', 'plugins/translation/translation', 'folder_is_not_writeable', 'Não é possível gravar arquivos! A pasta /resources/lang não é gravável. Por favor, chmod para torná-lo gravável!', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3121, 0, 'pt', 'plugins/translation/translation', 'delete', 'Deletar', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3122, 0, 'pt', 'plugins/translation/translation', 'confirm_delete_message', 'Você realmente deseja excluir esta localidade? Ele excluirá todos os arquivos/pastas para este local em /resources/lang!', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3123, 0, 'pt', 'plugins/translation/translation', 'download', 'Download', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3124, 0, 'pt', 'plugins/translation/translation', 'select_locale', 'Selecionar localidade', '2022-02-18 07:37:36', '2022-09-15 20:15:02'),
(3125, 0, 'pt', 'plugins/translation/translation', 'theme_translations_instruction', 'Clique no texto para traduzir. NÃO traduza variáveis. Ex. :username, :query, :link...', '2022-02-18 07:37:36', '2022-09-15 20:15:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`) VALUES
(1, 'info@siterapido.com.br', NULL, '$2y$10$ENxgLqwONm22pGNaxQ.3Dul9w/.gsjQD7XFX2iodOxwURP77/NzAi', '0NAAcYjWJk7vvm2i8can56RQwvD6gyrFrWhzTh3UMdjmU1t1FRAZnstEZ0qO', '2021-12-09 21:25:34', '2023-03-30 16:36:34', NULL, '2023-03-30 16:36:34', 'Site', 'Rapido', 'admin', 1742, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'pt', 1, '2019-11-17 20:19:14', '2019-11-30 19:25:04'),
(2, 'admin-theme', 'grey', 1, '2022-07-04 20:46:09', '2023-03-30 19:19:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(30, 'CategoriesWidget', 'primary_sidebar', 'site-rapido-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(31, 'RecentPostsWidget', 'primary_sidebar', 'site-rapido-vi', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":\"5\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(41, 'CustomMenuWidget', 'footer_sidebar', 'site-rapido-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"menu_id\":\"ve-chung-toi\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(42, 'CustomMenuWidget', 'footer_sidebar', 'site-rapido-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\" Th\\u00f4ng tin th\\u00eam\",\"menu_id\":\"thong-tin-them\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(43, 'CustomMenuWidget', 'footer_sidebar', 'site-rapido-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Tin t\\u1ee9c\",\"menu_id\":\"tin-tuc\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(84, 'CategoriesWidget', 'primary_sidebar', 'site-rapido', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categorias\"}', '2022-08-18 18:50:08', '2022-08-18 18:50:08'),
(85, 'RecentPostsWidget', 'primary_sidebar', 'site-rapido', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Postagem Recentes\",\"number_display\":\"5\"}', '2022-08-18 18:50:08', '2022-08-18 18:50:08'),
(86, 'CustomMenuWidget', 'footer_sidebar', 'site-rapido', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Sobre\",\"menu_id\":\"about\"}', '2022-12-05 10:35:32', '2022-12-05 10:35:32'),
(87, 'CustomMenuWidget', 'footer_sidebar', 'site-rapido', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Mais Informa\\u00e7\\u00f5es\",\"menu_id\":\"more-information\"}', '2022-12-05 10:35:32', '2022-12-05 10:35:32'),
(88, 'CustomMenuWidget', 'footer_sidebar', 'site-rapido', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Blog\",\"menu_id\":\"news\"}', '2022-12-05 10:35:32', '2022-12-05 10:35:32');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Índices para tabela `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Índices para tabela `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `careers_translations`
--
ALTER TABLE `careers_translations`
  ADD PRIMARY KEY (`lang_code`,`careers_id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Índices para tabela `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Índices para tabela `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Índices para tabela `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Índices para tabela `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices para tabela `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Índices para tabela `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Índices para tabela `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Índices para tabela `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Índices para tabela `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Índices para tabela `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Índices para tabela `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Índices para tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Índices para tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Índices para tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Índices para tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Índices para tabela `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Índices para tabela `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Índices para tabela `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_account_packages`
--
ALTER TABLE `re_account_packages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`),
  ADD KEY `vendor_password_resets_token_index` (`token`);

--
-- Índices para tabela `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_categories_translations`
--
ALTER TABLE `re_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`re_categories_id`);

--
-- Índices para tabela `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_facilities_translations`
--
ALTER TABLE `re_facilities_translations`
  ADD PRIMARY KEY (`lang_code`,`re_facilities_id`);

--
-- Índices para tabela `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_features_translations`
--
ALTER TABLE `re_features_translations`
  ADD PRIMARY KEY (`lang_code`,`re_features_id`);

--
-- Índices para tabela `re_investors`
--
ALTER TABLE `re_investors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_projects`
--
ALTER TABLE `re_projects`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_projects_translations`
--
ALTER TABLE `re_projects_translations`
  ADD PRIMARY KEY (`lang_code`,`re_projects_id`);

--
-- Índices para tabela `re_project_categories`
--
ALTER TABLE `re_project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_properties_translations`
--
ALTER TABLE `re_properties_translations`
  ADD PRIMARY KEY (`lang_code`,`re_properties_id`);

--
-- Índices para tabela `re_property_categories`
--
ALTER TABLE `re_property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `re_tags`
--
ALTER TABLE `re_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Índices para tabela `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Índices para tabela `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Índices para tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Índices para tabela `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1744;

--
-- AUTO_INCREMENT de tabela `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de tabela `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de tabela `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT de tabela `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `re_account_packages`
--
ALTER TABLE `re_account_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7251;

--
-- AUTO_INCREMENT de tabela `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `re_investors`
--
ALTER TABLE `re_investors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `re_projects`
--
ALTER TABLE `re_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `re_project_categories`
--
ALTER TABLE `re_project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `re_property_categories`
--
ALTER TABLE `re_property_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT de tabela `re_tags`
--
ALTER TABLE `re_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT de tabela `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT de tabela `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3228;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
