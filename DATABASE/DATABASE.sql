-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/04/2024 às 20:07
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cursolaravel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'aliquam', 'Eum praesentium et quo ducimus voluptas delectus. Cum et quo maxime et ipsum nihil beatae quia. Minima adipisci molestiae hic perferendis. Esse voluptatem earum sunt adipisci voluptates.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(2, 'deleniti', 'Nemo expedita doloribus necessitatibus fugiat est. Optio et voluptas ad. Ex voluptate ut quia dolores qui. Id magni aliquam sit nobis.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(3, 'deserunt', 'Cupiditate incidunt voluptatem et maxime nesciunt. Culpa ut iste sed ea. Cum nobis vitae maiores expedita omnis.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(4, 'reiciendis', 'Quibusdam soluta ea sed unde modi. Incidunt tempora nesciunt maxime quia beatae consequatur. Quia et nulla amet illo quia.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(5, 'at', 'Assumenda eaque facere nam eveniet quia ratione. Voluptatem deserunt neque saepe cum architecto saepe est. Ut eligendi itaque aut qui esse modi deleniti. Saepe id voluptas consequatur adipisci.', '2024-04-13 02:50:20', '2024-04-13 02:50:20'),
(6, 'TECNOLOGIA', 'Veja os produtos envolvendo a Tecnologia.', '2024-04-12 20:26:06', '2024-04-23 16:44:32'),
(7, 'CIÊNCIA', 'Veja os produtos envolvendo a Ciência.', '2024-04-23 16:46:06', '2024-04-23 16:46:06'),
(8, 'FILOSOFIA', 'Veja os produtos envolvendo a Filosofia.', '2024-04-23 16:47:15', '2024-04-23 16:47:15'),
(9, 'TEOLOGIA', 'Veja os produtos envolvendo a Teologia.', '2024-04-23 16:47:45', '2024-04-23 16:47:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2024_04_12_205252_create_categorias_table', 1),
(10, '2024_04_12_205253_produtos', 1),
(11, '2024_04_12_224710_regras', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` double NOT NULL,
  `slug` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `slug`, `imagem`, `id_user`, `id_categoria`, `created_at`, `updated_at`) VALUES
(37, 'Notebook SuperSlim', 'Notebook ultrafino com processador potente, tela full HD e design elegante.', 2500, 'notebook-superslim', 'produtos/ZO2AZJYvsDMWH2GP6ohaxGMHkWVT7HNVgJJgMOPQ.jpg', 2, 6, '2024-04-23 22:48:35', '2024-04-23 22:48:35'),
(38, 'Relógio Inteligente SmartWatch', 'Relógio inteligente com monitoramento de saúde, notificações de smartphone e resistência à água.', 300, 'relogio-inteligente-smartwatch', 'produtos/fjc71zIfuuA36qCnULtyCHO2VNYbbzd3iLQVMG1E.jpg', 2, 6, '2024-04-23 22:49:43', '2024-04-23 22:49:43'),
(39, 'Câmera DSLR Profissional', 'Câmera digital de alta qualidade com sensor full frame, ideal para fotografia profissional.', 4000, 'camera-dslr-profissional', 'produtos/6wh7ghK88ZngTesEYCfQjUfhVUgwG0tU3ciO6Xvj.jpg', 2, 6, '2024-04-23 22:51:10', '2024-04-23 22:51:10'),
(40, 'Tênis Esportivo UltraBoost', 'Tênis esportivo com tecnologia de amortecimento boost e design moderno.', 349, 'tenis-esportivo-ultraboost', 'produtos/AxZh9rztGUjTHrVeMXNkbuq6dMMZaQ1BDb3xDnpH.jpg', 2, 6, '2024-04-23 22:53:20', '2024-04-23 22:53:20'),
(41, 'Caixa de Som Portátil JBL', 'Caixa de som Bluetooth com som potente e bateria de longa duração.', 200, 'caixa-de-som-portatil-jbl', 'produtos/QxOramLhnKGt1MGVu6MA5YVq6hiB1e3W1sg7d7Vl.jpg', 2, 6, '2024-04-23 22:54:34', '2024-04-23 22:54:34'),
(42, 'Mochila para Notebook', 'Mochila resistente com compartimento acolchoado para notebook e vários bolsos organizadores.', 129, 'mochila-para-notebook', 'produtos/HKbsVO5xleP2A5DkvuofPqPXxeuMnT3AtTOf4eld.jpg', 2, 6, '2024-04-23 22:56:08', '2024-04-23 22:56:08'),
(43, 'Impressora Multifuncional Wi-Fi', 'Impressora com função de scanner e copiadora, conexão Wi-Fi e impressão frente e verso automática.', 499, 'impressora-multifuncional-wi-fi', 'produtos/TR1j83nrCkfGAlm4uQLNZtsMj1JVcQceaoRu3AJm.jpg', 2, 7, '2024-04-23 22:58:12', '2024-04-23 22:58:12'),
(44, 'Kit de Ferramentas Profissional', 'Conjunto de ferramentas com chave de fenda, alicate, martelo e outras ferramentas essenciais para casa ou trabalho.', 299, 'kit-de-ferramentas-profissional', 'produtos/a0kSe2T2aRpgb5UZYquTSO8ZGnYwWKo48sFl2Qnd.jpg', 2, 8, '2024-04-23 22:59:45', '2024-04-23 22:59:45'),
(45, 'Smartphone XYZ', 'Smartphone de última geração com tela de alta resolução e câmera de 48MP.', 999, 'smartphone-xyz', 'produtos/uz2s5XQZ8I2jgINxtDPToxCTIviZIjBOXOs3MlPq.jpg', 2, 1, '2024-04-23 23:05:30', '2024-04-23 23:05:30'),
(46, 'Fone de Ouvido Bluetooth ABC', 'Fone de ouvido sem fio com cancelamento de ruído e bateria de longa duração.', 149, 'fone-de-ouvido-bluetooth-abc', 'produtos/sxPpdtYYEZgf4kFijiG9E0RulQ0UcrahmNFpAGOu.jpg', 2, 1, '2024-04-23 23:06:03', '2024-04-23 23:06:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `regras`
--

CREATE TABLE `regras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `regra_user`
--

CREATE TABLE `regra_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_regra` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6yytak8D1RmB8bXY3zPPuQMjqcI1P2pjB3z9Jils', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3dXT2FOZ21EQWZRUFQySHRXWUVFN3pKeEloMG5YTUxMTVVtaXlsRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdXRvL3JlcnVtLWF1dGVtLXByb3ZpZGVudC1xdWFzaS12b2x1cHRhdGlidXMtYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713380255);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Oliveira', 'contato@gmail.com', NULL, '$2y$12$jZMf8UNBCVct90bZhKJhg.dGrTEqC8f5q3aOoRzQUIUCaimxUteKi', 'BLTQMSwDOJDlGPyWoOGpQQo7TlyLhxAZpfhvArlDeOL3WlAB83dFJS19q7AV', '2024-04-13 02:31:35', '2024-04-13 02:31:35'),
(2, 'SAMUEL', 'VILHALVA', 'VILHALVA@gmail.com', NULL, '$2y$10$Pc7flyDeswReQYrs7LoOeOsZuFVfa0BgKabXI16azfBm3EHS7hABO', 'wG1g1f7DC9liXKnuvOws1yY7TKTmgcvcq3y6ZenWsgClqhX5bqLXkmgvYOlI', '2022-04-22 23:07:46', '2022-04-22 23:07:46'),
(3, 'DANIEL', 'LUCAS', 'contato2@gmail.com', NULL, '$2y$10$rtf3JdBSyRgaSCjfGRVfJuzCKjwowhDS5cnilYktCfU3OyNMoK.Fe', 'T9n6Y7yGZM36R7b8dSTBj35moQUB4lwkcGbC4jaBXqSbm7bq2HntiniJ0ywI', '2024-04-23 21:30:31', '2024-04-23 21:30:31');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_id_user_foreign` (`id_user`),
  ADD KEY `produtos_id_categoria_foreign` (`id_categoria`);

--
-- Índices de tabela `regras`
--
ALTER TABLE `regras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `regra_user`
--
ALTER TABLE `regra_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regra_user_id_user_foreign` (`id_user`),
  ADD KEY `regra_user_id_regra_foreign` (`id_regra`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `regras`
--
ALTER TABLE `regras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `regra_user`
--
ALTER TABLE `regra_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `regra_user`
--
ALTER TABLE `regra_user`
  ADD CONSTRAINT `regra_user_id_regra_foreign` FOREIGN KEY (`id_regra`) REFERENCES `regras` (`id`),
  ADD CONSTRAINT `regra_user_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
