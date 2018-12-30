-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2018 at 04:16 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liveedit`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'Finished!', '<p>Impedit veritatis dolore quis est alias tenetur fuga. Expedita aut adipisci quia perspiciatis vero voluptate. Totam eum quos at consectetur quia omnis.</p>', '2018-11-13 15:37:35', '2018-11-25 18:26:17', 1),
(4, 'Heia Norge!', '<p>Modi quasi sit similique officia nesciunt. Ipsum sequi dolores illum beatae aut quia. Cum minus sed officia omnis. Vel occaecati voluptatibus adipisci molestiae ipsam.</p>', '2018-11-13 15:37:35', '2018-11-25 18:26:43', 1),
(6, 'Saepe voluptas quasi voluptatem eaque voluptas ab ducimus.', 'Et ullam sed quia totam saepe incidunt quam. Velit non et quaerat sed eligendi. Ut sit corrupti est id dignissimos blanditiis. Distinctio ab consectetur enim sint culpa.', '2018-11-13 15:37:35', '2018-11-13 15:37:35', 2),
(7, 'Nemo odit officiis eos accusantium.', 'Dignissimos consectetur sed et non commodi tempora molestiae. Dolores libero quo dolores et veniam.', '2018-11-13 15:37:35', '2018-11-13 15:37:35', 2),
(8, 'Aut libero quaerat consectetur officiis quo eligendi ipsa.', 'Ipsum molestiae deserunt at consequatur dolorem. Reprehenderit ipsum voluptate voluptatem dolore et voluptatem. Inventore sunt aut pariatur repudiandae accusantium et. Nemo modi nesciunt debitis dicta quo.', '2018-11-13 15:37:35', '2018-11-13 15:37:35', 2),
(9, 'Quisquam tempore repellat nulla corrupti.', 'Inventore aliquam autem ipsa sunt veniam. Ipsam alias exercitationem numquam architecto alias rem. Pariatur sapiente tempore voluptate iste vel dicta voluptate. Magnam voluptatem ullam dolor ducimus.', '2018-11-13 15:37:35', '2018-11-13 15:37:35', 2),
(10, 'Porro laboriosam sint et similique perspiciatis ipsam.', 'Voluptatem excepturi asperiores tempore delectus fuga et. Omnis nihil minus assumenda rerum vero veniam. Dolores suscipit est consectetur perspiciatis sit quod ea.', '2018-11-13 15:37:35', '2018-11-13 15:37:35', 2),
(11, 'Hello updated', 'This is the body', '2018-11-19 13:33:15', '2018-11-19 13:33:58', 2),
(12, 'Heihei', 'Dette er kroppen', '2018-11-25 15:50:32', '2018-11-25 15:50:32', 2),
(13, 'Heihei', 'Dette er kroppen', '2018-11-25 15:50:49', '2018-11-25 15:50:49', 2),
(14, 'Heihei', 'Dette er kroppen', '2018-11-25 16:09:43', '2018-11-25 16:09:43', 2),
(15, 'Heihei', 'Dette er kroppen', '2018-11-25 16:09:52', '2018-11-25 16:09:52', 2),
(16, 'Heihei', 'Dette er kroppen', '2018-11-25 16:16:48', '2018-11-25 16:16:48', 2),
(38, '9uyyiytu', '<p>ouhuiuyh</p>', '2018-11-25 18:43:25', '2018-11-25 18:43:44', 15),
(39, 'ohjjhijgyig', '<p>kuhgihgkhyuy</p>', '2018-11-25 18:43:46', '2018-11-25 18:43:59', 15),
(40, 'New file', 'Write content here...', '2018-11-25 18:44:08', '2018-11-25 18:44:08', 15),
(44, 'Hello World', '<p>I love coding &lt;3</p>', '2018-12-01 11:52:31', '2018-12-01 11:52:51', 13),
(45, 'bmjbni', '<p>Write content here...</p>', '2018-12-06 17:03:47', '2018-12-06 17:03:58', 14);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_13_125812_create_documents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@liveedit.com', NULL, '$2y$10$18o.Za.H04WQ4HdJfy1BqOxu9vd8RpJpjpKc0zkPA1Fuc.BcxU6zO', NULL, '2018-11-13 15:36:12', '2018-11-13 15:36:12'),
(2, 'User', 'User@liveedit.com', NULL, '$2y$10$18o.Za.H04WQ4HdJfy1BqOxu9vd8RpJpjpKc0zkPA1Fuc.BcxU6zO', NULL, '2018-11-13 15:36:12', '2018-11-13 15:36:12'),
(13, 'Emil André Johannessen', 'emil.jona@gmail.com', NULL, '$2y$10$0sP6Ym0f8.Q4fRLkpeGTvOkit4jndEjsa9Wdju6dfam6mCqEi4/M.', NULL, '2018-11-22 14:44:29', '2018-11-22 14:44:29'),
(14, 'Emil André Johannessen', 'emil@emil.no', NULL, '$2y$10$hP7hEoWush3lptzA7fMMKeX6UsASbPZ735LRkd9fCXa20YknuuVEe', NULL, '2018-11-22 14:52:34', '2018-11-22 14:52:34'),
(15, 'Knut M. Riise', 'knut@knut.no', NULL, '$2y$10$ISLRoosXSMMIZxOXehe8QuRWodpJRmMNsT70X/94N6wi7a6vJjBKC', NULL, '2018-11-25 15:06:06', '2018-11-25 15:06:06'),
(16, 'Emil Johannessen', 'emil@emil.nt', NULL, '$2y$10$SyVN2lxQvCvzapwaV/3jxevtUfeOivbJmA0qBQ0b2KNhMFGIaqld6', NULL, '2018-11-25 15:50:16', '2018-11-25 15:50:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
