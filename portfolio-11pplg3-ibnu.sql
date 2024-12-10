-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2024 at 03:36 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio-11pplg3-ibnu`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Ibnu', '2024-11-21 21:44:19', '2024-12-03 23:43:40', 'Halo, saya Ibnu Nabil Nur Ihsan, lahir di Wonogiri pada tanggal 14 November. Saat ini, saya sedang menempuh pendidikan di SMK Negeri 1 Ciomas dengan jurusan PPLG (Pengembangan Perangkat Lunak dan Game).');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('atmin@gmail.com|127.0.0.1', 'i:1;', 1732755140),
('atmin@gmail.com|127.0.0.1:timer', 'i:1732755140;', 1732755140);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `name`, `issued_by`, `issued_at`, `description`, `file`, `created_at`, `updated_at`) VALUES
(2, 'Certificate Dicoding', 'Dicoding', '2024-12-02', 'sertifikat yang saya dapat ketika mengikuti pelatihan Dicoding', 'certificates/sertifikat_course_237_3239033_121123213103_1733130722.pdf', '2024-12-02 02:12:02', '2024-12-09 20:11:02'),
(3, 'Certificate GameJam', 'Game Jam', '2024-12-02', 'Sertifikat yang saya dapat ketika mengikuti pelatihan di GameJam', 'certificates/Desain tanpa judul.pdf', '2024-12-02 02:28:58', '2024-12-09 20:11:15'),
(4, 'Certificate SMKCODING', 'SMKCODING', '2024-12-02', 'Sertifikat yang saya dapat ketika mengikuti pelatihan di SMKCODING', 'certificates/Certificate CSS Magician Series 2024 Ibnu Nabil Nur Ihsan.pdf', '2024-12-02 02:30:00', '2024-12-09 20:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint UNSIGNED NOT NULL,
  `sosmed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `sosmed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `sosmed`, `name`, `link`, `issued_at`, `created_at`, `updated_at`) VALUES
(2, 'Instagram', 'ibnuuuasw', 'https://www.instagram.com', '2024-11-22', '2024-11-21 21:39:59', '2024-12-05 05:07:09'),
(3, 'Whatsapp', '+62 895 1975 9573', 'https://wa.me/6289519759573', '2024-12-05', '2024-12-05 05:08:37', '2024-12-05 05:46:33'),
(4, 'Facebook', 'Ibnu Nabil', 'https://www.facebook.com', '2024-12-05', '2024-12-05 05:09:48', '2024-12-05 05:09:48'),
(5, 'Lokasi', 'Kp.Pahlawan Rt 03/17 Cilendek Barat', 'https://www.instagram.com', '2024-12-05', '2024-12-05 05:10:26', '2024-12-05 05:10:26'),
(6, 'Mail', 'ibnunabil94@gmail.com', 'https://www.instagram.com', '2024-12-05', '2024-12-05 05:11:12', '2024-12-05 05:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `name`, `description`, `created_at`, `updated_at`, `skills`, `image`) VALUES
(5, 'Ibnu', 'Sebagai seorang Junior Developer, saya senang bekerja dengan teknologi terbaru untuk mengembangkan solusi yang memenuhi kebutuhan pengguna. Tujuan saya adalah menciptakan pengalaman digital yang tidak hanya berfungsi, tetapi juga memberikan nilai lebih.', '2024-11-30 03:45:57', '2024-11-30 03:51:41', 'Junior Developer', 'images/39qqpgI8QCbJBAvvPdQI2Mlg83L4KhS1IZBiVTsG.png');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`, `is_read`) VALUES
(2, 'ibnu', 'ibnunabil94@gmail.com', 'oke', '2024-12-04 05:41:05', '2024-12-04 05:41:05', 0),
(3, 'Ibnu', 'ibnu@gmail.com', 'oke gas', '2024-12-04 23:04:19', '2024-12-04 23:04:19', 0),
(4, 'ffadf', 'atmin@gmail.com', 'ok', '2024-12-04 23:07:20', '2024-12-04 23:07:20', 0),
(5, 'dad', 'admin@gmail.com', 'da', '2024-12-04 23:09:56', '2024-12-04 23:09:56', 0),
(6, 'dad', 'ibnunabil94@gmail.com', 'da', '2024-12-04 23:11:14', '2024-12-04 23:11:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2024_10_02_064736_create_contact_table', 2),
(20, '0001_01_01_000000_create_users_table', 3),
(21, '0001_01_01_000001_create_cache_table', 3),
(22, '0001_01_01_000002_create_jobs_table', 3),
(23, '2024_09_28_072746_create_home_table', 3),
(24, '2024_09_28_103109_create_skill_table', 3),
(25, '2024_11_08_063714_create_certificate_table', 3),
(26, '2024_11_15_062840_create_projects_table', 3),
(27, '2024_11_21_114528_create_abouts_table', 3),
(28, '2024_11_22_030400_create_contact_table', 3),
(29, '2024_11_28_024107_add_percented_to_skill_table', 4),
(30, '2024_11_28_173808_add_image_to_projects_table', 5),
(31, '2024_11_29_012810_create_homes_table', 6),
(32, '2024_11_29_031156_add_skills_to_homes_table', 7),
(33, '2024_11_29_043800_remove_columns_from_abouts_table', 8),
(34, '2024_11_29_043844_add_description_to_abouts_table', 9),
(35, '2024_11_30_091845_add_image_to_homes_table', 10),
(36, '2024_12_04_063732_remove_image_from_abouts', 11),
(37, '2024_12_04_070357_remove_description_from_skill_table', 12),
(38, '2024_12_04_113419_create_table_message', 13),
(39, '2024_12_04_120757_create_messages_table', 14),
(40, '2024_12_04_134328_add_is_read_to_messages_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `link`, `issued_at`, `created_at`, `updated_at`, `image`) VALUES
(2, 'Kalkulator Sederhana', 'Project Mini membuat Kalkulator Sederhana menggunakan HTML,CSS,Dan JavaScript', 'https://ibnunabil69.github.io/Calculator/', '2024-11-29', '2024-11-28 10:56:08', '2024-12-05 00:46:38', 'projects/Mt9mZltB0WTUopUwKO2GQCpbCI10dVXIM1Z055fw.png'),
(3, 'Linktree Sederhana', 'Project Mini membuat Linktree Sederhana menggunakan HTML,CSS,Dan JavaScript', 'https://ibnunabil69.github.io/Linktree/', '2024-11-29', '2024-11-28 11:04:47', '2024-12-05 00:45:32', 'projects/1QGLz5FE2HX5erMx3s06poLib9xZjwt1wAgU5DGE.png'),
(4, 'Stopwatch Sederhana', 'Project Mini membuat Stopwatch Sederhana menggunakan HTML,CSS,Dan JavaScript', 'https://ibnunabil69.github.io/Stopwatch/', '2024-11-29', '2024-11-28 11:05:05', '2024-12-05 00:47:27', 'projects/h6IHam6PSZNslytvYTUa7lur2IeStHm2mj3neNjt.png'),
(5, 'Nametag App', 'Project Mini Generator Name Tag Sederhana menggunakan HTML,CSS,Dan JavaScript', 'https://ibnunabil69.github.io/Nametag/', '2024-12-05', '2024-12-05 00:48:22', '2024-12-05 00:48:44', 'projects/yb0s5gmdWkbsH3KIfnvWYMdfMUgSRYBICg9ZvfBQ.png');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JNMTlIJwjja8hfU3cNzYBCCy1CPf3HK4mQGQxkOs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUdOakZFbFlEV1pwU3lDR2Yxb0ViTkxmaUZnY25XVjZMdHFReDN4ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1733800352);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `persen` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `title`, `created_at`, `updated_at`, `persen`) VALUES
(1, 'HTML', '2024-11-28 10:17:33', '2024-12-04 00:52:42', 70),
(2, 'CSS', '2024-11-28 10:18:03', '2024-11-28 10:18:03', 50),
(3, 'Javascript', '2024-11-28 10:18:27', '2024-11-28 10:18:27', 50),
(4, 'PHP', '2024-11-28 10:18:39', '2024-11-28 10:18:39', 40),
(5, 'Phyton', '2024-11-28 10:18:57', '2024-11-28 10:18:57', 20),
(7, 'Dart', '2024-12-04 00:48:39', '2024-12-09 20:09:43', 50);

-- --------------------------------------------------------

--
-- Table structure for table `table_message`
--

CREATE TABLE `table_message` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
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

INSERT INTO `users` (`id`, `name`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john', 'admin', 'jon@gmail.com', NULL, '$2y$12$2ZjvCUxtkbnYozTE80i17OoTcqcPQ/TpAane9zYLWMjYwQ0M6Rmby', NULL, '2024-11-21 21:15:37', '2024-11-21 21:15:37'),
(2, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$jyZaVi4GDIZ7H1TlENF1muLB2LNv2CJ3peS7itm.WQ/r0qy3cxgGW', NULL, '2024-12-09 19:54:24', '2024-12-09 19:54:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_message`
--
ALTER TABLE `table_message`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table_message`
--
ALTER TABLE `table_message`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
