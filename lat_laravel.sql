-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 14, 2018 at 08:51 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lat_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '$2y$10$7fzl0/z.K7Ym/E24mv4gfum3OlcDvMoR5qi3XXNrTe9H09CdX3suC', NULL, '2018-08-09 20:35:06', '2018-08-09 20:35:06'),
(2, 'Administrator1', 'administrator@gmail.com', '$2y$10$g1pyfcQX5o3SfDTs1l82meTJojhZfYSn2oW20qYW0wTVeOsPgYigy', NULL, '2018-08-09 20:36:23', '2018-08-09 20:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_01_045321_create_mmahasiswas_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2018_08_09_074845_create_admins_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mmahasiswas`
--

CREATE TABLE `mmahasiswas` (
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mmahasiswas`
--

INSERT INTO `mmahasiswas` (`nim`, `nama`, `jk`, `alamat`, `email`, `nohp`, `created_at`, `updated_at`) VALUES
('0987', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2018-08-02 01:55:10', '2018-08-02 01:55:10'),
('1111', 'Asrini', 'P', 'Cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 21:57:23', '2018-08-05 21:57:23'),
('11223', 'asrin', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-07 23:17:22', '2018-08-07 23:17:22'),
('11224', 'asrin', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-07 23:22:33', '2018-08-07 23:22:33'),
('12121', 'asriniii', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', NULL, '2018-08-07 02:50:59'),
('1605110422', 'Asrinii', 'pl', 'cirebone', 'asrinirpl07@gmail.coms', '085294901108', '2018-08-01 21:32:11', '2018-08-01 21:32:40'),
('160777', 'Asrini', 'pp', 'cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 19:55:23', '2018-08-05 19:55:23'),
('222', 'Aaaaaaaa', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-08 02:01:55', '2018-08-08 02:01:55'),
('2234', 'asrin', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-07 23:44:51', '2018-08-07 23:44:51'),
('234', 'Asrini', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', NULL, '2018-08-08 00:40:39'),
('345', 'Aaaaaaaa', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', NULL, '2018-08-08 00:52:33'),
('456', 'Cleve Klein Sr.', 'Facilis in asperiores quas ex non nisi. Mollitia aliquid quo odit eos tempore.', '77511 Sydney Lock\nLake Daija, AL 12666-5914', 'tomasa55@keeling.com', '(636) 731-6571 x75584', NULL, NULL),
('567', 'Mr. Wendell Hansen', 'Omnis sit reprehenderit eos autem est voluptatem sed. Non ea perferendis ea cumque. Ad et repellendus quia animi vel corporis.', '7285 Bailey Lane\nGeorgiannabury, LA 63671', 'cronin.oma@wehner.com', '(368) 678-9802 x02613', NULL, NULL),
('99999', 'Iyo', 'P', 'Cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 22:02:07', '2018-08-05 22:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('12d5e0a0f9821ca5c637711c6e6ccbd295c0b2b1ebf97dd9e8f231352da3a97e8ec8a3c70b826897', 4, 1, 'nApp', '[]', 0, '2018-08-07 00:01:36', '2018-08-07 00:01:36', '2019-08-07 07:01:36'),
('1622c98dd3ac0ab86f276eb1e9585a455a768e32722503c7296420c04911bdd045409d34f5bced6a', 2, 2, NULL, '[\"user\"]', 0, '2018-08-13 23:41:14', '2018-08-13 23:41:14', '2019-08-14 06:41:14'),
('19692df53f2bfc00de3c473e62f6613dc4bcf670160325b5c6442ef77f765e904376600938655124', 4, 1, 'nApp', '[]', 0, '2018-08-06 23:30:19', '2018-08-06 23:30:19', '2019-08-07 06:30:19'),
('27dff9c509d8ba530c70fee956aaa2c02f8ad9fb99a92a2a21342d5a5c82ffdf2126345aff058af4', 2, 1, 'nApp', '[]', 0, '2018-08-06 23:18:06', '2018-08-06 23:18:06', '2019-08-07 06:18:06'),
('2ba94ba908aacbd40005ee763c57a37e440638905d774499fca39303e2bca50a961c02e720e063ad', 2, 2, NULL, '[\"*\"]', 0, '2018-08-13 20:31:00', '2018-08-13 20:31:00', '2019-08-14 03:31:00'),
('3675312d94c8e7427e3d81c337b70129c7a18e3da7c5bf4ea98fd9834c8dc83180a17ce3e52997ae', 2, 2, NULL, '[\"*\"]', 0, '2018-08-08 21:26:02', '2018-08-08 21:26:02', '2019-08-09 04:26:02'),
('5660a46983d85c6f92ed25b0484aa4003ab82b469e94c1c9913238ad5df1e8e6d843c1690db51f4b', 2, 1, 'nApp', '[]', 0, '2018-08-07 21:36:12', '2018-08-07 21:36:12', '2019-08-08 04:36:12'),
('59718988879c3a9142b50ea2c363516fd46356784c8933e6a918491e7e64d55c937d889ae17699bd', 2, 2, NULL, '[\"user\"]', 0, '2018-08-13 23:41:11', '2018-08-13 23:41:11', '2019-08-14 06:41:11'),
('5d0cd541ebde3db663e051f7d5fcccca8a902e8a1da579eb463d86a0c5f6e2a59f2229d15c7e1383', 1, 1, 'nApp', '[]', 0, '2018-08-07 20:22:52', '2018-08-07 20:22:52', '2019-08-08 03:22:52'),
('71c2d5fd639e3b28bf24eea791841f61c38804db34b29ac4be5bc65e4070edc70eff924ae41610e2', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-13 21:27:14', '2018-08-13 21:27:14', '2019-08-14 04:27:14'),
('85d16d49b3b3690dceb013eaceaad44e8c60c125384d662fb94576396d464bf62548e7a4e5c62335', 2, 2, NULL, '[\"*\"]', 0, '2018-08-13 23:40:54', '2018-08-13 23:40:54', '2019-08-14 06:40:54'),
('95139f725843cb1dad1ddf4cdec23045e5da5e04ed9c5ef991a56dd3c5861a582d3995a4da6fc324', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-13 21:47:45', '2018-08-13 21:47:45', '2019-08-14 04:47:45'),
('956b3e7055ccddf380a6b8d90cc2523e8fcea660f652c3de4f65c71287664183fcc8de90cab9af8c', 2, 2, NULL, '[\"*\"]', 0, '2018-08-13 21:47:29', '2018-08-13 21:47:29', '2019-08-14 04:47:29'),
('b9ac1440e4dc2e0bd1e757a6e4ec4b954008841f5da743e8ddcd77a2f08627c0c5d2b60eed79ede8', 4, 1, 'nApp', '[]', 0, '2018-08-06 23:20:05', '2018-08-06 23:20:05', '2019-08-07 06:20:05'),
('bcd8948be37be92249f422a522dd1903d456642678e03702d9f736cd708db5e1a867c5742cadcae1', 2, 2, NULL, '[\"*\"]', 0, '2018-08-13 23:36:22', '2018-08-13 23:36:22', '2019-08-14 06:36:22'),
('c1dda3ac9a9d2886699168f3c4da65b2d91d26d2573f4cc2008f2afb1d5e55f02739f527d29dc056', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-13 23:41:21', '2018-08-13 23:41:21', '2019-08-14 06:41:21'),
('e0bdd52e0ae374b22ca29c7d985bd8bd6fd7866310fea76f37343224b2db0cb8f7eb6d95fac237ff', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-13 23:33:31', '2018-08-13 23:33:31', '2019-08-14 06:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 't91Tk4ht1uufU0xtOUELZFFU4FkUVo9fnk1vyygg', 'http://localhost', 1, 0, 0, '2018-08-06 03:15:52', '2018-08-06 03:15:52'),
(2, NULL, 'Laravel Password Grant Client', 'lQKSxHR9HV7dfAgrH7uiZE51C3VesUZa6SsBNiE6', 'http://localhost', 0, 1, 0, '2018-08-06 03:15:52', '2018-08-06 03:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-08-06 03:15:52', '2018-08-06 03:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('04fcfb45c24d71a864fcaf3cffbc4a4188547c81ae75178145809f76b916a6434c7e8fbc5a631a30', '956b3e7055ccddf380a6b8d90cc2523e8fcea660f652c3de4f65c71287664183fcc8de90cab9af8c', 0, '2019-08-14 04:47:29'),
('2e43953e89157f55479656aab8e9a326829c1d4049be1c1e8f1596f56f0d9a7def4caa5c47cf02e9', '85d16d49b3b3690dceb013eaceaad44e8c60c125384d662fb94576396d464bf62548e7a4e5c62335', 0, '2019-08-14 06:40:54'),
('4831ba0b2e6f94dd806a073586cdd3b1b2963f6c58a4696eb652c6cee6c61dd7b46249a497e04230', '1622c98dd3ac0ab86f276eb1e9585a455a768e32722503c7296420c04911bdd045409d34f5bced6a', 0, '2019-08-14 06:41:14'),
('723fb09e9d8edd9d78b88ad76ba35a1d40db6e9a0f785adf4e4f17b6c2165ec1af7490b9a77058ec', 'c1dda3ac9a9d2886699168f3c4da65b2d91d26d2573f4cc2008f2afb1d5e55f02739f527d29dc056', 0, '2019-08-14 06:41:21'),
('77bbd9d677b1ba669c58852f01fe98628aace6afcbd11c6601087fd52f1386a3e88561c36bcaeb60', '71c2d5fd639e3b28bf24eea791841f61c38804db34b29ac4be5bc65e4070edc70eff924ae41610e2', 0, '2019-08-14 04:27:14'),
('8ee57b33129d349910c1183b7d4a598288e77685b0e716da3d9b13217bd92dd31e3ac0aa7f0413f2', 'bcd8948be37be92249f422a522dd1903d456642678e03702d9f736cd708db5e1a867c5742cadcae1', 0, '2019-08-14 06:36:22'),
('a8ed288aadaa8da18ffa0fda4192ff2f9dd85af69975928c54c9d3209780f9a16dde06de24d0422e', '2ba94ba908aacbd40005ee763c57a37e440638905d774499fca39303e2bca50a961c02e720e063ad', 0, '2019-08-14 03:31:00'),
('d4b2af687b0eb4deed591ec049eaf57f66944613e6b02b4b052056465bbd3831c1c544371b395df0', 'e0bdd52e0ae374b22ca29c7d985bd8bd6fd7866310fea76f37343224b2db0cb8f7eb6d95fac237ff', 0, '2019-08-14 06:33:31'),
('eb4f1a79b4247ade536ad112e7283ce568c94ce89c3473cc9044b4d5f98437457e4ecac0a5cc15de', '59718988879c3a9142b50ea2c363516fd46356784c8933e6a918491e7e64d55c937d889ae17699bd', 0, '2019-08-14 06:41:11'),
('f54e836beec009af32f7df1861606f2f24bdf7d0fb1518395ddc297bc3a29b376f28efcb055aa3a2', '3675312d94c8e7427e3d81c337b70129c7a18e3da7c5bf4ea98fd9834c8dc83180a17ce3e52997ae', 0, '2019-08-09 04:26:02'),
('f9851907043cdf0ffcfae062c57e8e79f1dd782b5abe082584c1815b146f0ba88961f39740a85fc2', '95139f725843cb1dad1ddf4cdec23045e5da5e04ed9c5ef991a56dd3c5861a582d3995a4da6fc324', 0, '2019-08-14 04:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aas Asrini', 'asrini@indosystem.com', '$2y$10$5eO0sXnVcQCRotlq31IS9ukmRsWrk7aU.LEAdsjtMMtai3IIdA3ny', 'bWa8IlzS9DDw3JrMZYhRrviYG0DhIpbkPjJdATCebRcxQeAiH3QVK9L4DOXH', '2018-08-06 02:48:21', '2018-08-06 02:48:21'),
(2, 'Aas Asrini', 'asrinirpl07@gmail.com', '$2y$10$JqoYWr9erWNchGyZd36koO7BzTLT9m7r/hTFJ0nO0B7CqnszzxEue', 'CkEEyokNuKN4nfC8C6P7bhWix3MImK3R03sBQqlqgTl1QCVuSXyTjJ1Y5Suk', '2018-08-06 03:05:10', '2018-08-06 03:05:10'),
(6, 'as', 'asrini_97@yahoo.co.id', '$2y$10$MZVfdi/QdF3zgL23jy80v.mNFEjlO0p0da64Kra1bJskKSU8Gqiji', NULL, '2018-08-13 01:23:13', '2018-08-13 01:23:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mmahasiswas`
--
ALTER TABLE `mmahasiswas`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
