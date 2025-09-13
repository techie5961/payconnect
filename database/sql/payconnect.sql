-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2025 at 03:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `tag`, `email`, `password`, `role`, `name`, `remember_token`, `status`, `updated`, `date`) VALUES
(1, 'superadmin', 'techie5961@gmail.com', '$2y$12$rygJBNSe00vWfJNUpJWSXOhY21wQJ6dXdKwUdH8w1OhAa7zl946SW', 'master admin', 'David James', NULL, 'active', '2025-08-02 18:30:34', '2025-08-02 18:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `date`) VALUES
(1, 1, '197.211.52.65', '2025-08-14 17:18:59'),
(2, 1, '197.211.63.53', '2025-08-14 17:36:47'),
(3, 2, '197.210.75.134', '2025-08-14 19:12:32'),
(4, 2, '197.210.75.134', '2025-08-14 19:13:37'),
(5, 1, '197.211.63.53', '2025-08-14 19:34:58'),
(6, 2, '197.210.75.134', '2025-08-14 19:50:32'),
(7, 2, '197.210.75.134', '2025-08-14 20:02:18'),
(8, 1, '197.211.63.53', '2025-08-14 20:02:36'),
(9, 3, '197.211.63.53', '2025-08-14 20:09:28'),
(10, 2, '197.210.75.134', '2025-08-14 20:17:37'),
(11, 5, '156.38.55.92', '2025-08-14 20:25:19'),
(12, 3, '197.211.52.75', '2025-08-14 23:48:29'),
(13, 2, '197.210.75.134', '2025-08-14 23:51:28'),
(14, 6, '197.211.52.75', '2025-08-15 02:40:21'),
(15, 2, '197.210.74.136', '2025-08-15 07:03:29'),
(16, 2, '197.210.75.142', '2025-08-15 22:20:03'),
(17, 2, '197.210.74.143', '2025-08-16 08:50:32'),
(18, 5, '102.164.97.129', '2025-08-16 09:04:55'),
(19, 2, '102.90.85.234', '2025-08-16 12:59:55'),
(20, 4, '102.164.97.129', '2025-08-16 13:09:44'),
(21, 2, '102.90.85.234', '2025-08-16 15:30:41'),
(22, 2, '197.210.75.230', '2025-08-16 22:49:23'),
(23, 3, '197.211.52.77', '2025-08-17 10:41:38'),
(24, 7, '197.210.74.131', '2025-08-19 16:53:50'),
(25, 2, '102.90.85.38', '2025-08-19 18:51:36'),
(26, 7, '102.90.85.38', '2025-08-19 18:54:55'),
(27, 4, '102.164.96.110', '2025-08-19 19:39:01'),
(28, 3, '197.211.63.46', '2025-08-19 22:47:00'),
(29, 2, '197.210.75.175', '2025-08-19 22:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'unread',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `status`, `date`) VALUES
(1, 'Blaady05 Just registered an account', 'read', '2025-08-14 17:18:53'),
(2, 'Blaady05 Just initiated a deposit', 'read', '2025-08-14 17:38:18'),
(3, 'Blaady05 Just initiated a deposit', 'read', '2025-08-14 17:40:23'),
(4, 'ANGELA Just registered an account', 'read', '2025-08-14 19:12:25'),
(5, 'Techie Just registered an account', 'read', '2025-08-14 20:09:01'),
(6, 'ANGELA Just updated withdrawal bank details', 'read', '2025-08-14 20:18:54'),
(7, 'ANGELA Just initiated a deposit', 'read', '2025-08-14 20:19:12'),
(8, 'GIFT Just registered an account', 'read', '2025-08-14 20:22:52'),
(9, 'GOOD Just registered an account', 'read', '2025-08-14 20:24:57'),
(10, 'ANGELA Just purchased a product', 'read', '2025-08-14 23:52:48'),
(11, 'ANGELA Just purchased a product', 'read', '2025-08-14 23:54:23'),
(12, 'ANGELA Just initiated a deposit', 'read', '2025-08-14 23:55:07'),
(13, 'Blaady Just registered an account', 'read', '2025-08-15 02:36:21'),
(14, 'Blaady Just initiated a deposit', 'read', '2025-08-15 02:44:59'),
(15, 'ANGELA Just updated withdrawal bank details', 'read', '2025-08-15 07:04:48'),
(16, 'ANGELA Just initiated a deposit', 'read', '2025-08-15 08:31:27'),
(17, 'ANGELA Just placed a withdrawal', 'read', '2025-08-15 08:41:38'),
(18, 'ANGELA Just purchased a product', 'read', '2025-08-15 22:24:22'),
(19, 'ANGELA Just purchased a product', 'read', '2025-08-15 22:26:05'),
(20, 'ANGELA Just placed a withdrawal', 'read', '2025-08-15 22:28:50'),
(21, 'GIFT Just purchased a product', 'read', '2025-08-16 13:11:25'),
(22, 'ANGELA Just placed a withdrawal', 'read', '2025-08-16 15:32:22'),
(23, 'ANGELA Just placed a withdrawal', 'read', '2025-08-16 15:39:05'),
(24, 'PAYCONNECT Just registered an account', 'read', '2025-08-19 16:53:22'),
(25, 'Techie Just initiated a deposit', 'read', '2025-08-19 18:32:32'),
(26, 'Techie Just initiated a deposit', 'read', '2025-08-19 18:32:59'),
(27, 'ANGELA Just initiated a deposit', 'read', '2025-08-19 18:51:55'),
(28, 'PAYCONNECT Just updated withdrawal bank details', 'read', '2025-08-19 18:56:03'),
(29, 'GIFT Just initiated a deposit', 'read', '2025-08-19 19:40:07'),
(30, 'GIFT Just initiated a deposit', 'read', '2025-08-19 19:40:15'),
(31, 'GIFT Just initiated a deposit', 'read', '2025-08-19 19:40:26'),
(32, 'ANGELA Just initiated a deposit', 'read', '2025-08-19 22:47:44'),
(33, 'PAYCONNECT Just initiated a deposit', 'unread', '2025-08-20 17:42:24'),
(34, 'PAYCONNECT Just initiated a deposit', 'unread', '2025-08-20 17:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `daily_income` float DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `photo`, `name`, `price`, `daily_income`, `cycle`, `status`, `updated`, `date`) VALUES
(3, '1754226743.png', 'PayConnect VIP 1', 1500, 300, 40, 'active', '2025-08-14 17:41:55', '2025-08-03 21:12:23'),
(4, '1754226770.png', 'PayConnect VIP 2', 3000, 600, 40, 'active', '2025-08-03 21:12:50', '2025-08-03 21:12:50'),
(5, '1754226791.png', 'PayConnect VIP 3', 6000, 1200, 40, 'active', '2025-08-04 04:11:42', '2025-08-03 21:13:11'),
(7, '1754251986.png', 'PayConnect VIP 4', 25000, 5750, 40, 'active', '2025-08-04 04:13:06', '2025-08-04 04:13:06'),
(9, '1754317215.png', 'PayConnect VIP 5', 50000, 12000, 40, 'active', '2025-08-04 22:20:15', '2025-08-04 22:20:15'),
(10, '1754317276.png', 'PayConnect VIP 6', 100000, 25000, 40, 'active', '2025-08-04 22:21:16', '2025-08-04 22:21:16'),
(11, '1754317324.png', 'PayConnect VIP 7', 200000, 52000, 40, 'active', '2025-08-04 22:22:04', '2025-08-04 22:22:04'),
(12, '1754317400.png', 'PayConnect VIP 8', 400000, 112000, 40, 'active', '2025-08-04 22:23:20', '2025-08-04 22:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `reward_cycle` varchar(255) NOT NULL DEFAULT '24 hrs',
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchased`
--

INSERT INTO `purchased` (`id`, `user_id`, `json`, `reward_cycle`, `status`, `updated`, `date`) VALUES
(1, 2, '{\"id\":3,\"photo\":\"1754226743.png\",\"name\":\"PayConnect VIP 1\",\"price\":1500,\"daily_income\":300,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-14 17:41:55\",\"date\":\"2025-08-03 21:12:23\"}', '24 hrs', 'active', '2025-09-11 21:15:09', '2025-08-14 23:52:48'),
(2, 2, '{\"id\":4,\"photo\":\"1754226770.png\",\"name\":\"PayConnect VIP 2\",\"price\":3000,\"daily_income\":600,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-03 21:12:50\",\"date\":\"2025-08-03 21:12:50\"}', '24 hrs', 'active', '2025-09-11 21:15:09', '2025-08-14 23:54:23'),
(3, 2, '{\"id\":5,\"photo\":\"1754226791.png\",\"name\":\"PayConnect VIP 3\",\"price\":6000,\"daily_income\":1200,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-04 04:11:42\",\"date\":\"2025-08-03 21:13:11\"}', '24 hrs', 'active', '2025-09-11 21:15:09', '2025-08-15 22:24:22'),
(4, 2, '{\"id\":4,\"photo\":\"1754226770.png\",\"name\":\"PayConnect VIP 2\",\"price\":3000,\"daily_income\":600,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-03 21:12:50\",\"date\":\"2025-08-03 21:12:50\"}', '24 hrs', 'active', '2025-09-11 21:15:09', '2025-08-15 22:26:05'),
(5, 4, '{\"id\":5,\"photo\":\"1754226791.png\",\"name\":\"PayConnect VIP 3\",\"price\":6000,\"daily_income\":1200,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-04 04:11:42\",\"date\":\"2025-08-03 21:13:11\"}', '24 hrs', 'active', '2025-09-11 21:15:09', '2025-08-16 13:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1rk1lRBDROXubFnGhWnWir4krHzqdk6i4t2VXOZS', NULL, '192.168.153.123', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnVkeVVkZzdWbVpqeDhzNzVkOHBtNjhycVJmUHhMSDh5Q0g0RGtXSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjE1My4yMDQvcGF5Y29ubmVjdC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1757596515),
('3QTro5SeDEIFjz9V3D014KW6jdNkqwqq8OJ3zwNj', NULL, '197.211.63.59', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaEhCTlp1ZVJBTG5oNXhPYWpYa0xkUkFBcUM0c3o1bDRwN0NNR0xzeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vcGF5Y29ubmVjdC5pbnQubmcvdXNlcnMvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MzoibG9naW5fYWRtaW5zXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjUyOiJsb2dpbl91c2Vyc181OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1755670300),
('4TlzqzTIy3xjRZANbp8Vqiyx6oItbIpOEnkuR38W', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHlmRDRQZWVwQjdTdmhJWXdzb05hNEpwSzJCNFl1VGVXSXN5MlVyQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755666095),
('6IGDPgM9GWnlPPt4fZK7BBSbaJ9KGIqNpYfNPrPV', NULL, '192.168.214.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGZFbHd3Y2o5aFlsNnQxR0pYNnR4WlVZNHJwelB1ZGxpTEM0SHpidyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vMTkyLjE2OC4yMTQuMjA0L3BheWNvbm5lY3QvcHVibGljL2FkbWlucy91c2VyP2lkPTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755758817),
('a5K6GD3lxC9oYHsjY8gXjFv6yMfgYwdhPiTsOx32', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkVURTBTNFBlSnZDU1htUk5CTkdRdnhySFJZNHFRYXRjWlVYY1pJYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755669695),
('aUObChxQzfuJGsJXcrjx2IJ9yB5oXXSg05I9sTVq', NULL, '192.168.153.123', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclB5TEg2QUsxU3hPRzlEZWwxSVhNM1lrQkFKQ09NaGczZElMWmt1VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xOTIuMTY4LjE1My4yMDQvbGFyZGVsL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757596545),
('CRq0W6XrDfzHZx1To3LBehFrXkyZRMndkIWc0Qoi', NULL, '146.70.185.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVm1TTDExcGxBNGFjTklwS2xBWTVwaklnclBZdEszYnlCZjZWTnkzQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755669676),
('G9D5nxYKT9KvWpzfpdlTert5NjbmT1fOyme15Po3', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG84TkNPVWNQSDA0ZG1mMTRSYlR2aTkwdWNQc1o5M2JRVU1rbGJvTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755676897),
('H5biN6Gd05vuanbo4OfmAC18HcSDhxYOUbkcviTf', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTg3WGRXUzlsQXk5aVFJVEVzUmZyUVlOdnBxdVUyYUI0REtQc1czdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755673296),
('HqMWaornsww6otaqLuORzF02BuZtzYMoyMHCUZR5', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHpGaDhPbVhYNUpaRm0xaUZINHJzZlI3Y0p2MjFxa0w2MzJoVUZPQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3QvcGF5Y29ubmVjdC9wdWJsaWMvaGFzaD9wYXNzd29yZD1CbGFhZHkwNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756018595),
('kqTB59hAJtjbd0O3jIw1OKJQx5JPZUUgaD1aXOzL', NULL, '192.168.70.222', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ0JRVm5Qb2NOVUs4azdDTFFzbEd2SXFsNWJiTDlzZ3lTOU44andJYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vMTkyLjE2OC43MC4yMDQvcGF5Y29ubmVjdC9wdWJsaWMvdXNlcnMvcmVjaGFyZ2UiO31zOjUzOiJsb2dpbl9hZG1pbnNfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NTI6ImxvZ2luX3VzZXJzXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1755683085),
('m5C6RcY6UiKuc72Lf5PtVUmcIZsBwpan09IEv6UQ', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlNKTFVpeE9xR0o3SzMzVkdpa0p2SmowZG1kZUxpSFdaOU1HcnhqdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755675096),
('nsPHE4QwP1RLx46bCUS962TD4g5QKvD1lIk5akRm', NULL, '192.168.214.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWExWa0pUbEZMM1RJRjJlRmx3c2FlTTU4cGoyTU94N0YybWUxd2Y0ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vMTkyLjE2OC4yMTQuMjA0L3BheWNvbm5lY3QvcHVibGljL2FkbWlucy9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755794541),
('P1aliZPJtX4c3z4nnX6QYFZXz8dE6NSNpKdijk7B', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmhVSGpxcUFmc3RwREJocGlFSHREcTVESVRkbGhnQWM0NTVhV2ZKcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755662494),
('pyJ7c0JJgQC6GmcidDNvq3AhHIJMDyfGPxU1QgEh', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2dnY1FQd3VFMGVwdmdFZ1p2cWpSYXBMUVF2TEJtZjg5eWI2dWhNTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755667895),
('STwc4QLeS6MXSAcSsCMh3pGjdu69z8ngP47VMK2E', NULL, '146.70.185.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTEZabTBFSUpXUnZxQTMxTDIzSGdOVHE5WWpkTWdTV0xKSlhqVHYyYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755669677),
('T18Pu3d50vUTroebx42GKjBsvAt9wZcnEKStJaM2', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHpBNlAzWW51ZE1TcDFEd3BFUXRMdVB5a1FoR21vRWp1b3hrVlpucSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755664294),
('X2F2lOWwPLi7b1bScMPbqvW5UxquaecnzJr0cVCT', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVQ1ZFBRTlFYSUxhZDQ1Z1BWd0FSY0VjdUVTZ2V0TGRDSTl0ZkpkdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755671495),
('Zb3Kphrl0YnJRh6pVnZMhVxS8X6YdqDlmnrISUmC', NULL, '192.168.214.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieG1xQUhqTm1rZGNzc0NiRmg4ajJyVHNRRmh0c1l6bGhLYzNNWmJoUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vMTkyLjE2OC4yMTQuMjA0L3plbnRyb2xpeC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUzOiJsb2dpbl9hZG1pbnNfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1755766746),
('zeqO8copFetqGFiuWOYV7sq9xNATv0FGJZnkit2x', NULL, '5.189.175.239', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlh1OTJ2bGtVek1sZk8xcWZwYUQ5Qjh6QVNyaXNhNjdSbFRRNHZEVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9wYXljb25uZWN0LmludC5uZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755678696);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `json`, `status`, `updated`, `date`) VALUES
(7, 'finance_settings', NULL, '{\"min_withdrawal\":\"500\",\"max_withdrawal\":\"100000\",\"withdrawal_fee\":\"15\",\"withdrawal_status\":\"open\",\"daily_check_in\":\"50\",\"welcome_bonus\":\"400\"}', 'active', '2025-08-14 20:54:38', '2025-08-07 15:56:53'),
(8, 'referral_settings', NULL, '{\"first_level\":\"20\",\"second_level\":\"5\",\"third_level\":\"1\"}', 'active', '2025-08-14 20:11:08', '2025-08-09 21:54:32'),
(9, 'general_settings', NULL, '{\"whatsapp_group\":\"https:\\/\\/whatsapp.com\\/channel\\/0029Vb6Aht7BvvspC3miJd0P\",\"telegram_group\":\"https:\\/\\/t.me\\/+O5S4dKvshZtjMDk8\",\"notification_message\":\"Test\"}', 'active', '2025-08-14 20:08:38', '2025-08-13 11:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `uniqid` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `class` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `user_id` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'success',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uniqid`, `amount`, `class`, `type`, `json`, `user_id`, `description`, `status`, `updated`, `date`) VALUES
(1, 'TRX689E10F9D29FC', 1500, 'credit', 'deposit', NULL, 1, 'Account deposit', 'initiated', '2025-08-14 17:38:17', '2025-08-14 17:38:17'),
(2, 'TRX689E11770FADE', 100, 'credit', 'deposit', '{\"gateway\":\"paystack\",\"details\":[]}', 1, 'Account deposit', 'success', '2025-08-14 17:40:23', '2025-08-14 17:40:23'),
(3, NULL, 50, 'credit', 'check in', NULL, 2, 'Daily Check In', 'success', '2025-08-14 19:14:33', '2025-08-14 19:14:33'),
(4, 'TRX689E36AFE0583', 1500, 'credit', 'deposit', NULL, 2, 'Account deposit', 'initiated', '2025-08-14 20:19:11', '2025-08-14 20:19:11'),
(5, NULL, 50, 'credit', 'check in', NULL, 5, 'Daily Check In', 'success', '2025-08-14 20:40:17', '2025-08-14 20:40:17'),
(6, NULL, 1500, 'debit', 'purchase', '{\"id\":3,\"photo\":\"1754226743.png\",\"name\":\"PayConnect VIP 1\",\"price\":1500,\"daily_income\":300,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-14 17:41:55\",\"date\":\"2025-08-03 21:12:23\"}', 2, 'PayConnect VIP 1 Purchase', 'success', '2025-08-14 23:52:48', '2025-08-14 23:52:48'),
(7, NULL, 3000, 'debit', 'purchase', '{\"id\":4,\"photo\":\"1754226770.png\",\"name\":\"PayConnect VIP 2\",\"price\":3000,\"daily_income\":600,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-03 21:12:50\",\"date\":\"2025-08-03 21:12:50\"}', 2, 'PayConnect VIP 2 Purchase', 'success', '2025-08-14 23:54:23', '2025-08-14 23:54:23'),
(8, 'TRX689E694A4FFB3', 3000, 'credit', 'deposit', NULL, 2, 'Account deposit', 'initiated', '2025-08-14 23:55:06', '2025-08-14 23:55:06'),
(9, 'TRX689E911A09A1E', 1500, 'credit', 'deposit', NULL, 6, 'Account deposit', 'initiated', '2025-08-15 02:44:58', '2025-08-15 02:44:58'),
(10, 'TRX689EE24DAB7E4', 3000, 'credit', 'deposit', '{\"gateway\":\"paystack\",\"details\":[]}', 2, 'Account deposit', 'success', '2025-08-15 08:31:25', '2025-08-15 08:31:25'),
(11, 'TRX689EE4B24C8BA', 1000, 'debit', 'withdrawal', '{\"fee\":150,\"amount\":850,\"details\":{\"bank\":\"{\\\"account_number\\\":\\\"8145390797\\\",\\\"bank_name\\\":\\\"PalmPay\\\",\\\"account_name\\\":\\\"ANITA OPEL MARCUS\\\"}\"}}', 2, 'Bank Withdrawal', 'success', '2025-08-15 08:59:25', '2025-08-15 08:41:38'),
(12, NULL, 50, 'credit', 'check in', NULL, 2, 'Daily Check In', 'success', '2025-08-15 22:23:21', '2025-08-15 22:23:21'),
(13, NULL, 6000, 'debit', 'purchase', '{\"id\":5,\"photo\":\"1754226791.png\",\"name\":\"PayConnect VIP 3\",\"price\":6000,\"daily_income\":1200,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-04 04:11:42\",\"date\":\"2025-08-03 21:13:11\"}', 2, 'PayConnect VIP 3 Purchase', 'success', '2025-08-15 22:24:22', '2025-08-15 22:24:22'),
(14, NULL, 3000, 'debit', 'purchase', '{\"id\":4,\"photo\":\"1754226770.png\",\"name\":\"PayConnect VIP 2\",\"price\":3000,\"daily_income\":600,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-03 21:12:50\",\"date\":\"2025-08-03 21:12:50\"}', 2, 'PayConnect VIP 2 Purchase', 'success', '2025-08-15 22:26:05', '2025-08-15 22:26:05'),
(15, 'TRX689FA6928A631', 1000, 'debit', 'withdrawal', '{\"fee\":150,\"amount\":850,\"details\":{\"bank\":\"{\\\"account_number\\\":\\\"8145390797\\\",\\\"bank_name\\\":\\\"PalmPay\\\",\\\"account_name\\\":\\\"ANITA OPEL MARCUS\\\"}\"}}', 2, 'Bank Withdrawal', 'success', '2025-08-15 22:35:23', '2025-08-15 22:28:50'),
(16, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-14 23:52:48\",\"date\":\"2025-08-14 23:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-16 00:11:07', '2025-08-16 00:11:07'),
(17, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-14 23:54:23\",\"date\":\"2025-08-14 23:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-16 00:11:07', '2025-08-16 00:11:07'),
(18, NULL, 50, 'credit', 'check in', NULL, 5, 'Daily Check In', 'success', '2025-08-16 09:06:34', '2025-08-16 09:06:34'),
(19, NULL, 50, 'credit', 'check in', NULL, 2, 'Daily Check In', 'success', '2025-08-16 13:00:08', '2025-08-16 13:00:08'),
(20, NULL, 50, 'credit', 'check in', NULL, 4, 'Daily Check In', 'success', '2025-08-16 13:10:34', '2025-08-16 13:10:34'),
(21, NULL, 6000, 'debit', 'purchase', '{\"id\":5,\"photo\":\"1754226791.png\",\"name\":\"PayConnect VIP 3\",\"price\":6000,\"daily_income\":1200,\"cycle\":40,\"status\":\"active\",\"updated\":\"2025-08-04 04:11:42\",\"date\":\"2025-08-03 21:13:11\"}', 4, 'PayConnect VIP 3 Purchase', 'success', '2025-08-16 13:11:25', '2025-08-16 13:11:25'),
(22, NULL, 1200, 'credit', 'commission', '{\"level\":\"first\",\"user_id\":4}', 2, 'First level referral commission', 'success', '2025-08-16 13:11:25', '2025-08-16 13:11:25'),
(23, 'TRX68A0967684F6F', 2250, 'debit', 'withdrawal', '{\"fee\":337.5,\"amount\":1912.5,\"details\":{\"bank\":\"{\\\"account_number\\\":\\\"8145390797\\\",\\\"bank_name\\\":\\\"PalmPay\\\",\\\"account_name\\\":\\\"ANITA OPEL MARCUS\\\"}\"}}', 2, 'Bank Withdrawal', 'success', '2025-08-16 15:34:26', '2025-08-16 15:32:22'),
(24, 'TRX68A09809D43EB', 1000, 'debit', 'withdrawal', '{\"fee\":150,\"amount\":850,\"details\":{\"bank\":\"{\\\"account_number\\\":\\\"8145390797\\\",\\\"bank_name\\\":\\\"PalmPay\\\",\\\"account_name\\\":\\\"ANITA OPEL MARCUS\\\"}\"}}', 2, 'Bank Withdrawal', 'success', '2025-08-17 09:22:14', '2025-08-16 15:39:05'),
(25, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-15 22:24:22\",\"date\":\"2025-08-15 22:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-16 22:39:17', '2025-08-16 22:39:17'),
(26, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-15 22:26:05\",\"date\":\"2025-08-15 22:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-16 22:39:17', '2025-08-16 22:39:17'),
(27, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-16 00:11:07\",\"date\":\"2025-08-14 23:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-17 02:52:39', '2025-08-17 02:52:39'),
(28, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-16 00:11:07\",\"date\":\"2025-08-14 23:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-17 02:52:39', '2025-08-17 02:52:39'),
(29, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-16 13:11:25\",\"date\":\"2025-08-16 13:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-17 14:02:40', '2025-08-17 14:02:40'),
(30, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-16 22:39:17\",\"date\":\"2025-08-15 22:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-17 23:01:05', '2025-08-17 23:01:05'),
(31, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-16 22:39:17\",\"date\":\"2025-08-15 22:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-17 23:01:05', '2025-08-17 23:01:05'),
(32, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-17 02:52:39\",\"date\":\"2025-08-14 23:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-18 03:01:07', '2025-08-18 03:01:07'),
(33, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-17 02:52:39\",\"date\":\"2025-08-14 23:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-18 03:01:07', '2025-08-18 03:01:07'),
(34, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-17 14:02:40\",\"date\":\"2025-08-16 13:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-18 14:19:15', '2025-08-18 14:19:15'),
(35, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-17 23:01:05\",\"date\":\"2025-08-15 22:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-18 23:01:18', '2025-08-18 23:01:18'),
(36, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-17 23:01:05\",\"date\":\"2025-08-15 22:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-18 23:01:18', '2025-08-18 23:01:18'),
(37, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-18 03:01:07\",\"date\":\"2025-08-14 23:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-19 03:01:20', '2025-08-19 03:01:20'),
(38, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-18 03:01:07\",\"date\":\"2025-08-14 23:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-19 03:01:20', '2025-08-19 03:01:20'),
(39, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-18 14:19:15\",\"date\":\"2025-08-16 13:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-19 14:31:26', '2025-08-19 14:31:26'),
(40, 'TRX68A49E72A7F6F', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 16:55:30', '2025-08-19 16:55:30'),
(41, 'TRX68A49E7F820CE', 1500, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 16:55:43', '2025-08-19 16:55:43'),
(42, 'TRX68A49E987B293', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 16:56:08', '2025-08-19 16:56:08'),
(43, 'TRX68A49ECE0F2F7', 50000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 16:57:02', '2025-08-19 16:57:02'),
(44, 'TRX68A49F240C092', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 16:58:28', '2025-08-19 16:58:28'),
(45, 'TRX68A4A2D1CA182', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 17:14:09', '2025-08-19 17:14:09'),
(46, 'TRX68A4A2E4551B9', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 17:14:28', '2025-08-19 17:14:28'),
(47, 'TRX68A4A2ED65AE4', 50000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 17:14:37', '2025-08-19 17:14:37'),
(48, NULL, 50, 'credit', 'check in', NULL, 7, 'Daily Check In', 'success', '2025-08-19 17:14:54', '2025-08-19 17:14:54'),
(49, 'TRX68A4B45CAB9AF', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 18:29:00', '2025-08-19 18:29:00'),
(50, 'TRX68A4B467D2A4D', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 18:29:11', '2025-08-19 18:29:11'),
(51, 'TRX68A4B52FEBA62', 1500, 'credit', 'deposit', NULL, 3, 'Account deposit', 'initiated', '2025-08-19 18:32:31', '2025-08-19 18:32:31'),
(52, 'TRX68A4B54AB8DC9', 1500, 'credit', 'deposit', NULL, 3, 'Account deposit', 'initiated', '2025-08-19 18:32:58', '2025-08-19 18:32:58'),
(53, 'TRX68A4B986C84C7', 50000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 18:51:02', '2025-08-19 18:51:02'),
(54, 'TRX68A4B9BB4DB7B', 3000, 'credit', 'deposit', NULL, 2, 'Account deposit', 'initiated', '2025-08-19 18:51:55', '2025-08-19 18:51:55'),
(55, 'TRX68A4BAC0F3683', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 18:56:17', '2025-08-19 18:56:17'),
(56, 'TRX68A4BC304171A', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 19:02:24', '2025-08-19 19:02:24'),
(57, 'TRX68A4C5067DAD2', 3000, 'credit', 'deposit', NULL, 4, 'Account deposit', 'initiated', '2025-08-19 19:40:06', '2025-08-19 19:40:06'),
(58, 'TRX68A4C50F005A9', 3000, 'credit', 'deposit', NULL, 4, 'Account deposit', 'initiated', '2025-08-19 19:40:15', '2025-08-19 19:40:15'),
(59, 'TRX68A4C519AE851', 50000, 'credit', 'deposit', NULL, 4, 'Account deposit', 'initiated', '2025-08-19 19:40:25', '2025-08-19 19:40:25'),
(60, 'TRX68A4EF983382E', 50000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 22:41:44', '2025-08-19 22:41:44'),
(61, 'TRX68A4EFA257317', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 22:41:54', '2025-08-19 22:41:54'),
(62, 'TRX68A4F0D3533DB', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-19 22:46:59', '2025-08-19 22:46:59'),
(63, 'TRX68A4F0FFF2503', 6000, 'credit', 'deposit', NULL, 2, 'Account deposit', 'initiated', '2025-08-19 22:47:43', '2025-08-19 22:47:43'),
(64, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-18 23:01:18\",\"date\":\"2025-08-15 22:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-19 23:01:31', '2025-08-19 23:01:31'),
(65, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-18 23:01:18\",\"date\":\"2025-08-15 22:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-19 23:01:31', '2025-08-19 23:01:31'),
(66, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 03:01:20\",\"date\":\"2025-08-14 23:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-20 03:01:33', '2025-08-20 03:01:33'),
(67, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 03:01:20\",\"date\":\"2025-08-14 23:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-20 03:01:33', '2025-08-20 03:01:33'),
(68, 'TRX68A56410B1992', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 06:58:40', '2025-08-20 06:58:40'),
(69, 'TRX68A564249F2FB', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 06:59:00', '2025-08-20 06:59:00'),
(70, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 07:31:26\",\"date\":\"2025-08-16 06:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-20 17:27:40', '2025-08-20 17:27:40'),
(71, 'TRX68A5954A26C26', 1500, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:28:42', '2025-08-20 17:28:42'),
(72, 'TRX68A5956F9B04C', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:29:19', '2025-08-20 17:29:19'),
(73, 'TRX68A595840E354', 1500, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:29:40', '2025-08-20 17:29:40'),
(74, 'TRX68A5961FCE234', 1500, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:32:15', '2025-08-20 17:32:15'),
(75, 'TRX68A5962D1AEE9', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:32:29', '2025-08-20 17:32:29'),
(76, 'TRX68A596425E606', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:32:50', '2025-08-20 17:32:50'),
(77, 'TRX68A596513808B', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:33:05', '2025-08-20 17:33:05'),
(78, 'TRX68A5966D15C02', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:33:33', '2025-08-20 17:33:33'),
(79, 'TRX68A596A59DFD7', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:34:29', '2025-08-20 17:34:29'),
(80, 'TRX68A596E1C2B39', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:35:29', '2025-08-20 17:35:29'),
(81, 'TRX68A598770220A', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:42:16', '2025-08-20 17:42:16'),
(82, 'TRX68A598CC98F80', 3000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:43:40', '2025-08-20 17:43:40'),
(83, 'TRX68A598F577E1E', 6000, 'credit', 'deposit', NULL, 7, 'Account deposit', 'initiated', '2025-08-20 17:44:21', '2025-08-20 17:44:21'),
(84, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 20:01:33\",\"date\":\"2025-08-14 16:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-21 14:46:56', '2025-08-21 14:46:56'),
(85, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 20:01:33\",\"date\":\"2025-08-14 16:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-21 14:46:56', '2025-08-21 14:46:56'),
(86, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 16:01:31\",\"date\":\"2025-08-15 15:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-21 14:46:56', '2025-08-21 14:46:56'),
(87, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-19 16:01:31\",\"date\":\"2025-08-15 15:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-21 14:46:56', '2025-08-21 14:46:56'),
(88, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-20 10:27:41\",\"date\":\"2025-08-16 06:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-22 00:42:19', '2025-08-22 00:42:19'),
(89, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-21 07:46:56\",\"date\":\"2025-08-14 16:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-08-24 14:56:33', '2025-08-24 14:56:33'),
(90, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-21 07:46:56\",\"date\":\"2025-08-14 16:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-24 14:56:33', '2025-08-24 14:56:33'),
(91, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-21 07:46:56\",\"date\":\"2025-08-15 15:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-24 14:56:33', '2025-08-24 14:56:33'),
(92, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-21 07:46:56\",\"date\":\"2025-08-15 15:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-08-24 14:56:33', '2025-08-24 14:56:33'),
(93, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-21 17:42:19\",\"date\":\"2025-08-16 06:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-08-24 14:56:33', '2025-08-24 14:56:33'),
(94, NULL, 300, 'credit', 'income', '{\"id\":1,\"user_id\":2,\"json\":\"{\\\"id\\\":3,\\\"photo\\\":\\\"1754226743.png\\\",\\\"name\\\":\\\"PayConnect VIP 1\\\",\\\"price\\\":1500,\\\"daily_income\\\":300,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-14 17:41:55\\\",\\\"date\\\":\\\"2025-08-03 21:12:23\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-24 07:56:33\",\"date\":\"2025-08-14 16:52:48\"}', 2, 'PayConnect VIP 1 Daily Income', 'success', '2025-09-11 21:15:09', '2025-09-11 21:15:09'),
(95, NULL, 600, 'credit', 'income', '{\"id\":2,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-24 07:56:33\",\"date\":\"2025-08-14 16:54:23\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-09-11 21:15:09', '2025-09-11 21:15:09'),
(96, NULL, 1200, 'credit', 'income', '{\"id\":3,\"user_id\":2,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-24 07:56:33\",\"date\":\"2025-08-15 15:24:22\"}', 2, 'PayConnect VIP 3 Daily Income', 'success', '2025-09-11 21:15:09', '2025-09-11 21:15:09'),
(97, NULL, 600, 'credit', 'income', '{\"id\":4,\"user_id\":2,\"json\":\"{\\\"id\\\":4,\\\"photo\\\":\\\"1754226770.png\\\",\\\"name\\\":\\\"PayConnect VIP 2\\\",\\\"price\\\":3000,\\\"daily_income\\\":600,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-03 21:12:50\\\",\\\"date\\\":\\\"2025-08-03 21:12:50\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-24 07:56:33\",\"date\":\"2025-08-15 15:26:05\"}', 2, 'PayConnect VIP 2 Daily Income', 'success', '2025-09-11 21:15:09', '2025-09-11 21:15:09'),
(98, NULL, 1200, 'credit', 'income', '{\"id\":5,\"user_id\":4,\"json\":\"{\\\"id\\\":5,\\\"photo\\\":\\\"1754226791.png\\\",\\\"name\\\":\\\"PayConnect VIP 3\\\",\\\"price\\\":6000,\\\"daily_income\\\":1200,\\\"cycle\\\":40,\\\"status\\\":\\\"active\\\",\\\"updated\\\":\\\"2025-08-04 04:11:42\\\",\\\"date\\\":\\\"2025-08-03 21:13:11\\\"}\",\"reward_cycle\":\"24 hrs\",\"status\":\"active\",\"updated\":\"2025-08-24 07:56:33\",\"date\":\"2025-08-16 06:11:25\"}', 4, 'PayConnect VIP 3 Daily Income', 'success', '2025-09-11 21:15:09', '2025-09-11 21:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'user',
  `ref` varchar(255) DEFAULT NULL,
  `bank` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'bank details' CHECK (json_valid(`bank`)),
  `deposit` float NOT NULL DEFAULT 0 COMMENT 'deposit wallet',
  `withdrawal` float NOT NULL DEFAULT 0 COMMENT 'withdrawal wallet',
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `type`, `ref`, `bank`, `deposit`, `withdrawal`, `json`, `remember_token`, `created_at`, `updated_at`, `status`, `date`, `updated`) VALUES
(1, NULL, 'nairagigsco@gmail.com', NULL, '$2y$12$2GlFHdlvFcp3qlFdZ13piOF0SecT1y5yQMGMGWaY96wOO/20e8/fy', 'Blaady05', 'user', NULL, NULL, 100, 0, NULL, NULL, NULL, NULL, 'active', '2025-08-14 17:18:53', '2025-08-14 17:41:25'),
(2, NULL, 'marcusanita98@gmail.com', NULL, '$2y$12$j4FRAaP5IiouHU.rJmuy2un90ph4kT1Fyy8ld5N6eTffTq3z3dVMe', 'ANGELA', 'promoter', NULL, '{\"account_number\":\"8145390797\",\"bank_name\":\"PalmPay\",\"account_name\":\"ANITA OPEL MARCUS\"}', 9500, 18900, NULL, 'O176yoG22Du3A6kshtqX6LmVny0HjwDIxnoc3GrCbtVAw1tzJa0Y5qW09xY5', NULL, NULL, 'active', '2025-08-14 19:12:25', '2025-09-11 21:15:09'),
(3, NULL, 'abakpadavid05@gmail.com', NULL, '$2y$12$4Swfi/ELH9xm86XdYXdjwuOUBD5qNDDYf07DH1Sikbgmy34tlrMAK', 'Techie', 'user', NULL, NULL, 0, 0, NULL, 'eLyhp82whvwFpUCsNayqGeN0rvpEyoVm416YFYGSXYU5P0pBy8cpMQJlwzYT', NULL, NULL, 'active', '2025-08-14 20:09:01', '2025-08-14 20:09:01'),
(4, NULL, 'Blessingbecky775@gmail.com', NULL, '$2y$12$5D8uBf8sbQI.UojH/MGjzejzp2FzCvIbHSs.BkkbppLsgxlgeVVHe', 'GIFT', 'user', 'ANGELA', NULL, 0, 8450, NULL, 'fYSrFsNRiCgTFK2Cx0I70w2UsEZsZaxEAEdMdJ7u8ECpqgVgtLlhU1FsSLu3', NULL, NULL, 'active', '2025-08-14 20:22:52', '2025-09-11 21:15:09'),
(5, NULL, 'CHIOMAEMMANUEL533@GMAIL.COM', NULL, '$2y$12$yXqLnL58vj8PmyFztDWKOu5vckwKvCbCmmo6YKFSNXJAaAq5ibdmK', 'GOOD', 'user', 'ANGELA', NULL, 0, 100, NULL, NULL, NULL, NULL, 'active', '2025-08-14 20:24:57', '2025-08-14 20:24:57'),
(6, NULL, 'abakpadavid2003@gmail.com', NULL, '$2y$12$QNw.gtp2339KiS.0PeBVCe5YU4fuB24n0PwFYpdBatDweL71FqbPO', 'Blaady', 'user', NULL, NULL, 0, 400, NULL, NULL, NULL, NULL, 'active', '2025-08-15 02:36:20', '2025-08-15 02:36:20'),
(7, NULL, 'Esthermarcus598@gmail', NULL, '$2y$12$lEPwxXfaBCLig9DHscHh8eaDs93VMcyxRDkDMe/Vgq6zNxb/KNJ7O', 'PAYCONNECT', 'user', NULL, '{\"account_number\":\"8145390797\",\"bank_name\":\"PalmPay\",\"account_name\":\"ANITA OPEL MARCUS\"}', 0, 450, NULL, 'qjmitCpkOxOWprW7D7KVfncTsDj82k5XfIhaZ5YhXazaEcpovCxLhBdYnQh0', NULL, NULL, 'active', '2025-08-19 16:53:22', '2025-08-19 18:56:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchased`
--
ALTER TABLE `purchased`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
