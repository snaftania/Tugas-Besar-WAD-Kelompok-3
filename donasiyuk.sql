-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 04:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donasiyuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `proof` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `user_id`, `orphanage_id`, `payment_id`, `amount`, `proof`, `created_at`, `updated_at`) VALUES
(4, 11, 7, 1, 50000, 'payment_proofs/1PMwvTzEUWaDI2pl0iQbUtAZGaC0REmB8N4zZC75.jpg', '2021-01-05 21:19:41', '2021-01-05 21:19:41'),
(5, 13, 8, 1, 150000, 'payment_proofs/341N15nIsC9n3nGO4u6P5WMzZFTVhXyLNMoV1Zg1.jpg', '2021-01-05 23:34:48', '2021-01-05 23:34:48'),
(6, 13, 8, 1, 100000, 'payment_proofs/suDSricXPnqU0kr57Tc3M7w3Gf3TRnxn6ypIQ6Rr.jpg', '2021-01-12 08:21:26', '2021-01-12 08:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `media` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `orphanage_id`, `media`, `created_at`, `updated_at`) VALUES
(3, 7, 'orphanage_galleries/GWy1DFpqxitVqourZ2VY309acpUxvBrjylf68Li2.jpg', '2021-01-05 21:06:27', '2021-01-05 21:06:27'),
(4, 8, 'orphanage_galleries/Lw6Sm6lB6VRuWUop1reDKMbJOL8IBiHzvMs2QBZ5.jpg', '2021-01-05 23:33:00', '2021-01-05 23:33:00');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_22_161146_create_orphanages_table', 1),
(5, '2020_12_22_161205_create_profiles_table', 1),
(6, '2020_12_22_161646_create_transactions_table', 1),
(7, '2020_12_22_161658_create_donations_table', 1),
(8, '2020_12_23_165147_create_payments_table', 1),
(9, '2020_12_25_164849_create_galleries_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orphanages`
--

CREATE TABLE `orphanages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `needs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orphanages`
--

INSERT INTO `orphanages` (`id`, `user_id`, `payment_id`, `slug`, `name`, `address`, `kids`, `needs`, `structure_media`, `activity_media`, `building_media`, `account_number`, `created_at`, `updated_at`) VALUES
(7, 10, 1, 'panti-asuhan-al-haq-fvZWkyyA72Ayh4a63urr', 'Panti Asuhan Al Haq', NULL, NULL, NULL, 'structure_media/rnxehmTnvhGEblKA7GC8pf7wKNw1L9xeAEPpyiwN.pdf', 'activity_media/UoTXwNtUyYqVrKID6ZhhJ1pZ7SkVrW0kX6zp2w0d.jpg', 'building_media/pS6z3hhuLOvlUiqX2LxdOfzymBpQyyquoeLtL0Ta.jpg', '12345678', '2021-01-05 21:02:58', '2021-01-05 21:02:58'),
(8, 12, 1, 'panti-asuhan-udaann-EKBgA6EVVIQnQuMsBpO6', 'Panti Asuhan Udaann', 'Jl. Mawar', 50, 'komputer', 'structure_media/FkYemNBlbq2Zw3axtwDhs1kOGX0E4DYFwxRJ21Nj.pdf', 'activity_media/q93h6NN94QgY4J2crMjVeBv7Mg97bLdXoZiy0cwA.jpg', 'building_media/KyEaW7dAi1sUP1T62Hm3aX4VpzN0E3X8Gc4VLiOn.jpg', '12345678', '2021-01-05 23:32:07', '2021-01-05 23:32:44'),
(9, 14, 1, 'panti-asuhan-cemerlang-6sr52t8bHJghYVFsukmL', 'panti asuhan cemerlang', NULL, NULL, NULL, 'structure_media/rEeQhUWcOlgmbvsNTNwWG82QHxnCajWH5SMhHbR2.pdf', 'activity_media/oIK91FVMRd4Em1yrpOxUttByXGFjO3fTmqybZpRS.jpg', 'building_media/LFMe06ADiZ528uf4wAp1laNwErNrHiKsYGnyOdoN.jpg', '12345678', '2021-01-12 08:08:42', '2021-01-12 08:08:42'),
(10, 15, 1, 'panti-asuhan-hauh-INCNa1eiYPQ60KsZns3Q', 'panti asuhan hauh', NULL, NULL, NULL, 'structure_media/D5uAVspM2Yoi0SMtsyj2LsiF034YuWXhmFtjfVJ5.pdf', 'activity_media/YmoLn0dwQW8S4XR3Lmw28vAmEmF80e15ETULpOyo.png', 'building_media/rzf5JTiJiIkUTUqZGUNsIBWqRB65t6xThiuwq8Eb.png', '12345678', '2021-01-12 08:58:51', '2021-01-12 08:58:51');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `method`, `slug`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Bank BNI', 'bank-bni', '/img/payment/bni.png', NULL, NULL),
(2, 'Bank BRI', 'bank-bri', '/img/payment/bri.png', NULL, NULL),
(3, 'Bank Mandiri', 'bank-mandiri', '/img/payment/mandiri.png', NULL, NULL),
(4, 'Bank BCA', 'bank-bca', '/img/payment/bca.png', NULL, NULL),
(5, 'Shopee Pay', 'shopee-pay', 'img/payment/shopee.png', NULL, NULL),
(6, 'GOPAY', 'gopay', '/img/payment/gopay.png', NULL, NULL),
(7, 'DANA', 'dana', '/img/payment/dana.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phone_number`, `photo`, `created_at`, `updated_at`) VALUES
(3, 11, NULL, NULL, '2021-01-05 21:17:59', '2021-01-05 21:17:59'),
(4, 13, NULL, NULL, '2021-01-05 23:33:31', '2021-01-05 23:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `payment_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `orphanage_id`, `payment_slug`, `amount`, `created_at`, `updated_at`) VALUES
(4, 11, 7, 'bank-bni', 50000, '2021-01-05 21:19:24', '2021-01-05 21:19:24'),
(5, 13, 8, 'bank-bni', 150000, '2021-01-05 23:34:29', '2021-01-05 23:34:29'),
(6, 13, 8, 'bank-bni', 100000, '2021-01-12 08:21:10', '2021-01-12 08:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Susilowati', 'orphanage', 'susilowati@email.com', NULL, '$2y$10$VYd7LG/iGNMZWDR/vCwtn.PCybDyUBU34hoEZftuO/qMjRCr7Yw.G', NULL, '2021-01-05 21:02:58', '2021-01-05 21:02:58'),
(11, 'Shafira Naftania', 'user', 'shafiranaft@gmail.com', NULL, '$2y$10$cY21bB.fA5Z.pG8AqoIRpu7p8aGbOfb2vJLHq6GrEoS7eoxDlitTO', NULL, '2021-01-05 21:17:59', '2021-01-05 21:17:59'),
(12, 'Panji', 'orphanage', 'panji@gmail.com', NULL, '$2y$10$AA4Dc9bnSBILbdvAc65.duKav8Ro69Q/z9SvC2Z5fx04OjonSyGRe', NULL, '2021-01-05 23:32:07', '2021-01-05 23:32:07'),
(13, 'Shafira Naftania', 'user', 'shafira@gmail.com', NULL, '$2y$10$.Nhoslqq3br//En2KAi.UuNVXI.q7M4ncnkh8GC6ApQFfq4WO0U.a', NULL, '2021-01-05 23:33:31', '2021-01-05 23:33:31'),
(14, 'sulis', 'orphanage', 'sulis@gmail.com', NULL, '$2y$10$hRHIu/7oU6CuMDeuzV8RNuOXYbkEgqKOao6vfu6vrDJ3USnHkxxeu', NULL, '2021-01-12 08:08:42', '2021-01-12 08:08:42'),
(15, 'hauh', 'orphanage', 'hauh@gmail.com', NULL, '$2y$10$QZOKu1YbUBQekbNkfAuoyuK4vbFRbHdL4MOEn40wqFs1pr7ds5KVC', NULL, '2021-01-12 08:58:51', '2021-01-12 08:58:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphanages`
--
ALTER TABLE `orphanages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orphanages`
--
ALTER TABLE `orphanages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
