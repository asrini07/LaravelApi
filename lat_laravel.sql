-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 06, 2018 at 04:59 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lat_laravel`
--

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
(3, '2018_08_01_045321_create_mmahasiswas_table', 1);

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
('123', 'Lillian Powlowski IV', 'Labore quasi modi doloremque velit ipsam dolores. Ut nam libero quos earum. Et voluptatem aut et iste aspernatur necessitatibus.', '7049 Bechtelar Circles\nSouth Dagmar, MN 11223', 'gleason.clay@rath.com', '(224) 243-2963', NULL, NULL),
('1605110422', 'Asrinii', 'pl', 'cirebone', 'asrinirpl07@gmail.coms', '085294901108', '2018-08-01 21:32:11', '2018-08-01 21:32:40'),
('160777', 'Asrini', 'pp', 'cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 19:55:23', '2018-08-05 19:55:23'),
('234', 'Wilbert Auerqqq', 'Magni ut facere nobis expedita numquam similique. Qui cumque laborum mollitia similique dicta. Excepturi nemo optio maiores deserunt deleniti labore inventore ut. Enim id quia eum distinctio sint.', '20090 Manuel Port Apt. 910New Linwood, IN 40889', 'qschmeler@gmail.com', '474.730.0882 x000', NULL, '2018-08-01 21:33:56'),
('345', 'Jessie Bogan', 'Est cum dolores voluptatem eaque. Cupiditate aut voluptatibus iure aut. Nulla est dolore et qui. Ut eaque repellendus voluptate non. Nam non quo beatae sapiente omnis cumque.', '444 Dicki Terrace Suite 003\nNew Chadborough, TX 50990', 'madge.koelpin@baumbach.com', '929.868.0468', NULL, NULL),
('456', 'Cleve Klein Sr.', 'Facilis in asperiores quas ex non nisi. Mollitia aliquid quo odit eos tempore.', '77511 Sydney Lock\nLake Daija, AL 12666-5914', 'tomasa55@keeling.com', '(636) 731-6571 x75584', NULL, NULL),
('567', 'Mr. Wendell Hansen', 'Omnis sit reprehenderit eos autem est voluptatem sed. Non ea perferendis ea cumque. Ad et repellendus quia animi vel corporis.', '7285 Bailey Lane\nGeorgiannabury, LA 63671', 'cronin.oma@wehner.com', '(368) 678-9802 x02613', NULL, NULL);

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
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
