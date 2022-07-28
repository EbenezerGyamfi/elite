-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 07:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'All Proforma', 'fa-bar-chart', '/invoices', NULL, NULL, '2022-07-26 17:23:28'),
(2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2022-07-26 06:06:29'),
(3, 0, 2, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2022-07-26 06:06:29'),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 15:25:27', '2022-07-25 15:25:27'),
(2, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 15:25:38', '2022-07-25 15:25:38'),
(3, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 15:53:03', '2022-07-25 15:53:03'),
(4, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 15:53:06', '2022-07-25 15:53:06'),
(5, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"password_confirmation\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2022-07-25 15:53:15', '2022-07-25 15:53:15'),
(6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 15:53:16', '2022-07-25 15:53:16'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 15:53:41', '2022-07-25 15:53:41'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 15:53:46', '2022-07-25 15:53:46'),
(9, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"password_confirmation\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2022-07-25 15:53:53', '2022-07-25 15:53:53'),
(10, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 15:53:53', '2022-07-25 15:53:53'),
(11, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 15:56:48', '2022-07-25 15:56:48'),
(12, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"password_confirmation\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\"}', '2022-07-25 15:56:59', '2022-07-25 15:56:59'),
(13, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 15:56:59', '2022-07-25 15:56:59'),
(14, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 16:00:06', '2022-07-25 16:00:06'),
(15, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 16:01:32', '2022-07-25 16:01:32'),
(16, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 16:01:57', '2022-07-25 16:01:57'),
(17, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:05:45', '2022-07-25 16:05:45'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:08:01', '2022-07-25 16:08:01'),
(19, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:08:05', '2022-07-25 16:08:05'),
(20, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Invoice\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-07-25 16:08:16', '2022-07-25 16:08:16'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-25 16:08:17', '2022-07-25 16:08:17'),
(22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-25 16:08:20', '2022-07-25 16:08:20'),
(23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:08:24', '2022-07-25 16:08:24'),
(24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:32:59', '2022-07-25 16:32:59'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:33:02', '2022-07-25 16:33:02'),
(26, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:33:05', '2022-07-25 16:33:05'),
(27, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Invoice\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/invoices\",\"roles\":[null],\"permission\":null,\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-07-25 16:33:16', '2022-07-25 16:33:16'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-25 16:33:16', '2022-07-25 16:33:16'),
(29, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:33:19', '2022-07-25 16:33:19'),
(30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 16:33:21', '2022-07-25 16:33:21'),
(31, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:33:23', '2022-07-25 16:33:23'),
(32, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:33:31', '2022-07-25 16:33:31'),
(33, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:34:24', '2022-07-25 16:34:24'),
(34, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:34:30', '2022-07-25 16:34:30'),
(35, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-25 16:38:21', '2022-07-25 16:38:21'),
(36, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-25 16:38:58', '2022-07-25 16:38:58'),
(37, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"sdfsd\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"sdfsdf\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\"}', '2022-07-25 16:39:34', '2022-07-25 16:39:34'),
(38, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:39:34', '2022-07-25 16:39:34'),
(39, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:41:12', '2022-07-25 16:41:12'),
(40, 1, 'admin/invoices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:41:44', '2022-07-25 16:41:44'),
(41, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"password_confirmation\":\"$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\"}', '2022-07-25 16:44:20', '2022-07-25 16:44:20'),
(42, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-07-25 16:44:21', '2022-07-25 16:44:21'),
(43, 1, 'admin/invoices/1/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 16:46:30', '2022-07-25 16:46:30'),
(44, 1, 'admin/invoices/1', 'PUT', '127.0.0.1', '{\"customer_name\":\"sdfsd\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"sdfsdf\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 16:46:39', '2022-07-25 16:46:39'),
(45, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:46:39', '2022-07-25 16:46:39'),
(46, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 16:48:12', '2022-07-25 16:48:12'),
(47, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:48:13', '2022-07-25 16:48:13'),
(48, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:48:16', '2022-07-25 16:48:16'),
(49, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-25 16:49:33', '2022-07-25 16:49:33'),
(50, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-25 16:49:56', '2022-07-25 16:49:56'),
(51, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\"}', '2022-07-25 16:50:12', '2022-07-25 16:50:12'),
(52, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:50:12', '2022-07-25 16:50:12'),
(53, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:55:44', '2022-07-25 16:55:44'),
(54, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:56:18', '2022-07-25 16:56:18'),
(55, 1, 'admin/invoices/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:56:21', '2022-07-25 16:56:21'),
(56, 1, 'admin/invoices/2/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 16:57:27', '2022-07-25 16:57:27'),
(57, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:57:33', '2022-07-25 16:57:33'),
(58, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:57:35', '2022-07-25 16:57:35'),
(59, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:57:38', '2022-07-25 16:57:38'),
(60, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"fgd\",\"customer_phone\":\"dffgdfg\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 16:57:55', '2022-07-25 16:57:55'),
(61, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 16:57:55', '2022-07-25 16:57:55'),
(62, 1, 'admin/invoices/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:58:02', '2022-07-25 16:58:02'),
(63, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 16:58:42', '2022-07-25 16:58:42'),
(64, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:58:48', '2022-07-25 16:58:48'),
(65, 1, 'admin/invoices/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:58:56', '2022-07-25 16:58:56'),
(66, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:59:00', '2022-07-25 16:59:00'),
(67, 1, 'admin/invoices/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:59:02', '2022-07-25 16:59:02'),
(68, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:59:07', '2022-07-25 16:59:07'),
(69, 1, 'admin/invoices/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 16:59:10', '2022-07-25 16:59:10'),
(70, 1, 'admin/invoices/3', 'PUT', '127.0.0.1', '{\"customer_name\":\"fgd\",\"customer_phone\":\"dffgdfg\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:02:11', '2022-07-25 17:02:11'),
(71, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:02:11', '2022-07-25 17:02:11'),
(72, 1, 'admin/invoices/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:02:30', '2022-07-25 17:02:30'),
(73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 17:19:33', '2022-07-25 17:19:33'),
(74, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:19:37', '2022-07-25 17:19:37'),
(75, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:19:40', '2022-07-25 17:19:40'),
(76, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"asdsad\",\"customer_phone\":\"asds\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:19:51', '2022-07-25 17:19:51'),
(77, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:19:52', '2022-07-25 17:19:52'),
(78, 1, 'admin/invoices/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:19:57', '2022-07-25 17:19:57'),
(79, 1, 'admin/invoices/4/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 17:21:20', '2022-07-25 17:21:20'),
(80, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:21:28', '2022-07-25 17:21:28'),
(81, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:21:30', '2022-07-25 17:21:30'),
(82, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"dsaasdfsd\",\"customer_phone\":\"adsasdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:21:54', '2022-07-25 17:21:54'),
(83, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:21:55', '2022-07-25 17:21:55'),
(84, 1, 'admin/invoices/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:21:59', '2022-07-25 17:21:59'),
(85, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:22:03', '2022-07-25 17:22:03'),
(86, 1, 'admin/invoices/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:22:06', '2022-07-25 17:22:06'),
(87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 17:22:53', '2022-07-25 17:22:53'),
(88, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:22:56', '2022-07-25 17:22:56'),
(89, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:00', '2022-07-25 17:23:00'),
(90, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:02', '2022-07-25 17:23:02'),
(91, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:23:06', '2022-07-25 17:23:06'),
(92, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:06', '2022-07-25 17:23:06'),
(93, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:23:12', '2022-07-25 17:23:12'),
(94, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:12', '2022-07-25 17:23:12'),
(95, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:23:16', '2022-07-25 17:23:16'),
(96, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:17', '2022-07-25 17:23:17'),
(97, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:23:21', '2022-07-25 17:23:21'),
(98, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:21', '2022-07-25 17:23:21'),
(99, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:23', '2022-07-25 17:23:23'),
(100, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"zddsdsv\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:23:43', '2022-07-25 17:23:43'),
(101, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:23:44', '2022-07-25 17:23:44'),
(102, 1, 'admin/invoices/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:23:48', '2022-07-25 17:23:48'),
(103, 1, 'admin/invoices/6/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 17:27:35', '2022-07-25 17:27:35'),
(104, 1, 'admin/invoices/6/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 17:28:25', '2022-07-25 17:28:25'),
(105, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:28:31', '2022-07-25 17:28:31'),
(106, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:28:34', '2022-07-25 17:28:34'),
(107, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"dffg\",\"customer_phone\":\"dfgdfg\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:28:52', '2022-07-25 17:28:52'),
(108, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:28:53', '2022-07-25 17:28:53'),
(109, 1, 'admin/invoices/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:29:02', '2022-07-25 17:29:02'),
(110, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:30:58', '2022-07-25 17:30:58'),
(111, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:31:01', '2022-07-25 17:31:01'),
(112, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"dsfds\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:31:13', '2022-07-25 17:31:13'),
(113, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:31:14', '2022-07-25 17:31:14'),
(114, 1, 'admin/invoices/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:31:21', '2022-07-25 17:31:21'),
(115, 1, 'admin/invoices/8/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 17:31:55', '2022-07-25 17:31:55'),
(116, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:31:56', '2022-07-25 17:31:56'),
(117, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:32:01', '2022-07-25 17:32:01'),
(118, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:32:05', '2022-07-25 17:32:05'),
(119, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"dffgdfg\",\"customer_phone\":\"fdfgffg\",\"customer_email\":\"doreen.oppong@stu.ucc.edu.gh\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:32:21', '2022-07-25 17:32:21'),
(120, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:32:21', '2022-07-25 17:32:21'),
(121, 1, 'admin/invoices/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:32:54', '2022-07-25 17:32:54'),
(122, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:32:58', '2022-07-25 17:32:58'),
(123, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:44:43', '2022-07-25 17:44:43'),
(124, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:44:45', '2022-07-25 17:44:45'),
(125, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:44:49', '2022-07-25 17:44:49'),
(126, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:44:50', '2022-07-25 17:44:50'),
(127, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:44:55', '2022-07-25 17:44:55'),
(128, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:44:56', '2022-07-25 17:44:56'),
(129, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:44:59', '2022-07-25 17:44:59'),
(130, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:45:00', '2022-07-25 17:45:00'),
(131, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 17:45:05', '2022-07-25 17:45:05'),
(132, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:45:06', '2022-07-25 17:45:06'),
(133, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:45:08', '2022-07-25 17:45:08'),
(134, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenzer\",\"customer_phone\":\"234324\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:45:24', '2022-07-25 17:45:24'),
(135, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:45:24', '2022-07-25 17:45:24'),
(136, 1, 'admin/invoices/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:45:29', '2022-07-25 17:45:29'),
(137, 1, 'admin/invoices/10/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 17:50:12', '2022-07-25 17:50:12'),
(138, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:50:17', '2022-07-25 17:50:17'),
(139, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:50:21', '2022-07-25 17:50:21'),
(140, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:50:34', '2022-07-25 17:50:34'),
(141, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:50:34', '2022-07-25 17:50:34'),
(142, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:57:09', '2022-07-25 17:57:09'),
(143, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdfs\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 17:57:25', '2022-07-25 17:57:25'),
(144, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 17:57:26', '2022-07-25 17:57:26'),
(145, 1, 'admin/invoices/12', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:57:36', '2022-07-25 17:57:36'),
(146, 1, 'admin/invoices/12', 'GET', '127.0.0.1', '[]', '2022-07-25 17:59:20', '2022-07-25 17:59:20'),
(147, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 17:59:22', '2022-07-25 17:59:22'),
(148, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:00:15', '2022-07-25 18:00:15'),
(149, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:00:30', '2022-07-25 18:00:30'),
(150, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:00:47', '2022-07-25 18:00:47'),
(151, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"12\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 18:05:44', '2022-07-25 18:05:44'),
(152, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:05:45', '2022-07-25 18:05:45'),
(153, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 18:05:49', '2022-07-25 18:05:49'),
(154, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:05:50', '2022-07-25 18:05:50'),
(155, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"10\",\"_model\":\"App_Models_Invoice\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-25 18:05:55', '2022-07-25 18:05:55'),
(156, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:05:55', '2022-07-25 18:05:55'),
(157, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:05:58', '2022-07-25 18:05:58'),
(158, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:06:12', '2022-07-25 18:06:12'),
(159, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:06:13', '2022-07-25 18:06:13'),
(160, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:09:13', '2022-07-25 18:09:13'),
(161, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:09:18', '2022-07-25 18:09:18'),
(162, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"sad\",\"customer_phone\":\"asdas\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:09:29', '2022-07-25 18:09:29'),
(163, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:09:30', '2022-07-25 18:09:30'),
(164, 1, 'admin/invoices/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:09:36', '2022-07-25 18:09:36'),
(165, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:09:45', '2022-07-25 18:09:45'),
(166, 1, 'admin/invoices/14', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:09:48', '2022-07-25 18:09:48'),
(167, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:09:51', '2022-07-25 18:09:51'),
(168, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:10:46', '2022-07-25 18:10:46'),
(169, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:10:49', '2022-07-25 18:10:49'),
(170, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"sdf\",\"customer_phone\":\"sdf\",\"customer_email\":\"doreen.oppong@stu.ucc.edu.gh\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:11:13', '2022-07-25 18:11:13'),
(171, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:11:13', '2022-07-25 18:11:13'),
(172, 1, 'admin/invoices/13', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:11:24', '2022-07-25 18:11:24'),
(173, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:11:28', '2022-07-25 18:11:28'),
(174, 1, 'admin/invoices/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:11:30', '2022-07-25 18:11:30'),
(175, 1, 'admin/invoices/13/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 18:15:41', '2022-07-25 18:15:41'),
(176, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:15:51', '2022-07-25 18:15:51'),
(177, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:15:55', '2022-07-25 18:15:55'),
(178, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdffgdffg\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:16:07', '2022-07-25 18:16:07'),
(179, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:16:08', '2022-07-25 18:16:08'),
(180, 1, 'admin/invoices/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:16:12', '2022-07-25 18:16:12'),
(181, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:16:16', '2022-07-25 18:16:16'),
(182, 1, 'admin/invoices/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:16:19', '2022-07-25 18:16:19'),
(183, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:16:23', '2022-07-25 18:16:23'),
(184, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:21:08', '2022-07-25 18:21:08'),
(185, 1, 'admin/invoices/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:21:19', '2022-07-25 18:21:19'),
(186, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:21:22', '2022-07-25 18:21:22'),
(187, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:21:24', '2022-07-25 18:21:24'),
(188, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:21:36', '2022-07-25 18:21:36'),
(189, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:21:36', '2022-07-25 18:21:36'),
(190, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:22:21', '2022-07-25 18:22:21'),
(191, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:22:25', '2022-07-25 18:22:25'),
(192, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:22:38', '2022-07-25 18:22:38'),
(193, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:22:38', '2022-07-25 18:22:38'),
(194, 1, 'admin/invoices/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:22:49', '2022-07-25 18:22:49'),
(195, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:22:51', '2022-07-25 18:22:51'),
(196, 1, 'admin/invoices/13,14,15,16,17,18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\"}', '2022-07-25 18:24:32', '2022-07-25 18:24:32'),
(197, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:24:33', '2022-07-25 18:24:33'),
(198, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:24:36', '2022-07-25 18:24:36'),
(199, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"ertrert\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:24:50', '2022-07-25 18:24:50'),
(200, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:24:51', '2022-07-25 18:24:51'),
(201, 1, 'admin/invoices/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:25:07', '2022-07-25 18:25:07'),
(202, 1, 'admin/invoices/19/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 18:25:26', '2022-07-25 18:25:26'),
(203, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:25:30', '2022-07-25 18:25:30'),
(204, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:25:31', '2022-07-25 18:25:31'),
(205, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"ffgf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:25:43', '2022-07-25 18:25:43'),
(206, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:25:44', '2022-07-25 18:25:44'),
(207, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:27:12', '2022-07-25 18:27:12'),
(208, 1, 'admin/invoices/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:16', '2022-07-25 18:27:16'),
(209, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:18', '2022-07-25 18:27:18'),
(210, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:20', '2022-07-25 18:27:20'),
(211, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:23', '2022-07-25 18:27:23'),
(212, 1, 'admin/invoices/19,20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\"}', '2022-07-25 18:27:28', '2022-07-25 18:27:28'),
(213, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:29', '2022-07-25 18:27:29'),
(214, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:31', '2022-07-25 18:27:31'),
(215, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:27:49', '2022-07-25 18:27:49'),
(216, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:27:49', '2022-07-25 18:27:49'),
(217, 1, 'admin/invoices/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:27:53', '2022-07-25 18:27:53'),
(218, 1, 'admin/invoices/21/edit', 'GET', '127.0.0.1', '[]', '2022-07-25 18:33:35', '2022-07-25 18:33:35'),
(219, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-25 18:34:35', '2022-07-25 18:34:35'),
(220, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:34:39', '2022-07-25 18:34:39'),
(221, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:34:42', '2022-07-25 18:34:42'),
(222, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"as\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"3SLkEBkGXu3titHsC1x36DJ70VWBr57LaUyO4UD1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-25 18:34:52', '2022-07-25 18:34:52'),
(223, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-25 18:34:53', '2022-07-25 18:34:53'),
(224, 1, 'admin/invoices/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-25 18:34:57', '2022-07-25 18:34:57'),
(225, 1, 'admin/invoices/22/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 02:18:23', '2022-07-26 02:18:23'),
(226, 1, 'admin/invoices/22', 'PUT', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"as\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_method\":\"PUT\"}', '2022-07-26 02:18:50', '2022-07-26 02:18:50'),
(227, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 02:18:52', '2022-07-26 02:18:52'),
(228, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"22\",\"_model\":\"App_Models_Invoice\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-07-26 02:22:25', '2022-07-26 02:22:25'),
(229, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 02:22:26', '2022-07-26 02:22:26'),
(230, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 02:26:24', '2022-07-26 02:26:24'),
(231, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 02:26:29', '2022-07-26 02:26:29'),
(232, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 02:26:33', '2022-07-26 02:26:33'),
(233, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 02:35:46', '2022-07-26 02:35:46'),
(234, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 02:35:49', '2022-07-26 02:35:49'),
(235, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 02:35:52', '2022-07-26 02:35:52'),
(236, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 02:35:55', '2022-07-26 02:35:55'),
(237, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"ewrwert\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 03:01:50', '2022-07-26 03:01:50'),
(238, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:01:51', '2022-07-26 03:01:51'),
(239, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:03:32', '2022-07-26 03:03:32'),
(240, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"the customer name\",\"customer_phone\":\"034234234835\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 03:05:18', '2022-07-26 03:05:18'),
(241, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:05:19', '2022-07-26 03:05:19'),
(242, 1, 'admin/invoices/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:05:37', '2022-07-26 03:05:37'),
(243, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:10:33', '2022-07-26 03:10:33'),
(244, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:10:42', '2022-07-26 03:10:42'),
(245, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 03:17:11', '2022-07-26 03:17:11'),
(246, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 03:25:52', '2022-07-26 03:25:52'),
(247, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"asdsdasdad\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 03:26:03', '2022-07-26 03:26:03'),
(248, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:26:04', '2022-07-26 03:26:04'),
(249, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:29:11', '2022-07-26 03:29:11'),
(250, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"dfh\",\"customer_phone\":\"dffbdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 03:29:21', '2022-07-26 03:29:21'),
(251, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:29:22', '2022-07-26 03:29:22'),
(252, 1, 'admin/invoices/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:29:26', '2022-07-26 03:29:26'),
(253, 1, 'admin/invoices/26/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 03:31:48', '2022-07-26 03:31:48'),
(254, 1, 'admin/invoices/26', 'PUT', '127.0.0.1', '{\"customer_name\":\"dfh\",\"customer_phone\":\"dffbdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\\/create\"}', '2022-07-26 03:31:59', '2022-07-26 03:31:59'),
(255, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 03:32:00', '2022-07-26 03:32:00'),
(256, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:32:04', '2022-07-26 03:32:04'),
(257, 1, 'admin/invoices/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:32:08', '2022-07-26 03:32:08'),
(258, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:32:11', '2022-07-26 03:32:11'),
(259, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:34:23', '2022-07-26 03:34:23'),
(260, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdff\",\"customer_email\":\"doreen.oppong@stu.ucc.edu.gh\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 03:34:41', '2022-07-26 03:34:41'),
(261, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:34:41', '2022-07-26 03:34:41'),
(262, 1, 'admin/invoices/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:34:48', '2022-07-26 03:34:48'),
(263, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:34:50', '2022-07-26 03:34:50'),
(264, 1, 'admin/invoices/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:34:53', '2022-07-26 03:34:53'),
(265, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:34:56', '2022-07-26 03:34:56'),
(266, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:41:23', '2022-07-26 03:41:23'),
(267, 1, 'admin/invoices/21,23,24,25,26,27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 03:41:30', '2022-07-26 03:41:30'),
(268, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:41:31', '2022-07-26 03:41:31'),
(269, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:41:33', '2022-07-26 03:41:33'),
(270, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"eqfeqwf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 03:41:44', '2022-07-26 03:41:44'),
(271, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 03:41:44', '2022-07-26 03:41:44'),
(272, 1, 'admin/invoices/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 03:41:52', '2022-07-26 03:41:52'),
(273, 1, 'admin/invoices/28/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 03:43:02', '2022-07-26 03:43:02'),
(274, 1, 'admin/invoices/28/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 04:01:27', '2022-07-26 04:01:27'),
(275, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:01:31', '2022-07-26 04:01:31'),
(276, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:01:33', '2022-07-26 04:01:33'),
(277, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:13:29', '2022-07-26 04:13:29'),
(278, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"5656565\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\\/28\\/edit\"}', '2022-07-26 04:13:53', '2022-07-26 04:13:53'),
(279, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:13:56', '2022-07-26 04:13:56'),
(280, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:16:59', '2022-07-26 04:16:59'),
(281, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 04:17:15', '2022-07-26 04:17:15'),
(282, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:17:16', '2022-07-26 04:17:16'),
(283, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:19:11', '2022-07-26 04:19:11'),
(284, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"wererer\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 04:19:29', '2022-07-26 04:19:29'),
(285, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:19:30', '2022-07-26 04:19:30'),
(286, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:21:30', '2022-07-26 04:21:30'),
(287, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 04:21:46', '2022-07-26 04:21:46'),
(288, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:22:08', '2022-07-26 04:22:08'),
(289, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:26:02', '2022-07-26 04:26:02'),
(290, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfdfs\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 04:26:15', '2022-07-26 04:26:15'),
(291, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:26:37', '2022-07-26 04:26:37'),
(292, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:26:43', '2022-07-26 04:26:43'),
(293, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:26:45', '2022-07-26 04:26:45'),
(294, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:26:55', '2022-07-26 04:26:55'),
(295, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:27:17', '2022-07-26 04:27:17'),
(296, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:28:38', '2022-07-26 04:28:38'),
(297, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:28:40', '2022-07-26 04:28:40'),
(298, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 04:29:23', '2022-07-26 04:29:23'),
(299, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 04:29:34', '2022-07-26 04:29:34'),
(300, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:29:35', '2022-07-26 04:29:35'),
(301, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:32:23', '2022-07-26 04:32:23'),
(302, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"aseewe\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:32:50', '2022-07-26 04:32:50'),
(303, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"aseewe\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:32:53', '2022-07-26 04:32:53'),
(304, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"aseewe\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:32:57', '2022-07-26 04:32:57'),
(305, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"aseewe\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:33:00', '2022-07-26 04:33:00'),
(306, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:33:30', '2022-07-26 04:33:30'),
(307, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:33:32', '2022-07-26 04:33:32'),
(308, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dsffd\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:33:42', '2022-07-26 04:33:42'),
(309, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dsffd\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:33:47', '2022-07-26 04:33:47'),
(310, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dsffd\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:33:50', '2022-07-26 04:33:50'),
(311, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dsffd\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:34:25', '2022-07-26 04:34:25');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(312, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:34:28', '2022-07-26 04:34:28'),
(313, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:34:32', '2022-07-26 04:34:32'),
(314, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:34:41', '2022-07-26 04:34:41'),
(315, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:34:54', '2022-07-26 04:34:54'),
(316, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:34:55', '2022-07-26 04:34:55'),
(317, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:36:38', '2022-07-26 04:36:38'),
(318, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:36:40', '2022-07-26 04:36:40'),
(319, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"asdds\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:36:51', '2022-07-26 04:36:51'),
(320, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:36:51', '2022-07-26 04:36:51'),
(321, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 04:37:29', '2022-07-26 04:37:29'),
(322, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"this\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 04:37:42', '2022-07-26 04:37:42'),
(323, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 04:37:43', '2022-07-26 04:37:43'),
(324, 1, 'admin/invoices/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:02:22', '2022-07-26 06:02:22'),
(325, 1, 'admin/invoices/28', 'PUT', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"eqfeqwf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 06:02:25', '2022-07-26 06:02:25'),
(326, 1, 'admin/invoices/28', 'GET', '127.0.0.1', '[]', '2022-07-26 06:02:25', '2022-07-26 06:02:25'),
(327, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:02:29', '2022-07-26 06:02:29'),
(328, 1, 'admin/invoices/28,29,30,31', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\"}', '2022-07-26 06:02:46', '2022-07-26 06:02:46'),
(329, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:02:47', '2022-07-26 06:02:47'),
(330, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:03:08', '2022-07-26 06:03:08'),
(331, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:05:14', '2022-07-26 06:05:14'),
(332, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-26 06:06:17', '2022-07-26 06:06:17'),
(333, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":3},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-07-26 06:06:29', '2022-07-26 06:06:29'),
(334, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:06:30', '2022-07-26 06:06:30'),
(335, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-26 06:06:34', '2022-07-26 06:06:34'),
(336, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:06:37', '2022-07-26 06:06:37'),
(337, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:06:40', '2022-07-26 06:06:40'),
(338, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:07:05', '2022-07-26 06:07:05'),
(339, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:07:07', '2022-07-26 06:07:07'),
(340, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:07:10', '2022-07-26 06:07:10'),
(341, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:07:15', '2022-07-26 06:07:15'),
(342, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"Mobile Developer\",\"name\":\"Mobile Developer\",\"permissions\":[\"2\",\"5\",null],\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2022-07-26 06:08:30', '2022-07-26 06:08:30'),
(343, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2022-07-26 06:08:31', '2022-07-26 06:08:31'),
(344, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:08:38', '2022-07-26 06:08:38'),
(345, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:08:40', '2022-07-26 06:08:40'),
(346, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"ebenezer\",\"name\":\"ebenezer\",\"password\":\"password\",\"password_confirmation\":\"password\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"rt4XpIuZP1afPUcJ86QnnniSmgMTsCJaTSTUvThy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2022-07-26 06:09:16', '2022-07-26 06:09:16'),
(347, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-07-26 06:09:18', '2022-07-26 06:09:18'),
(348, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-07-26 06:09:21', '2022-07-26 06:09:21'),
(349, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:09:26', '2022-07-26 06:09:26'),
(350, 2, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 06:09:37', '2022-07-26 06:09:37'),
(351, 2, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:09:48', '2022-07-26 06:09:48'),
(352, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:09:51', '2022-07-26 06:09:51'),
(353, 2, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:09:55', '2022-07-26 06:09:55'),
(354, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:09:57', '2022-07-26 06:09:57'),
(355, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:10:02', '2022-07-26 06:10:02'),
(356, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 06:10:12', '2022-07-26 06:10:12'),
(357, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:10:19', '2022-07-26 06:10:19'),
(358, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:10:23', '2022-07-26 06:10:23'),
(359, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"Mobile Developer\",\"name\":\"Mobile Developer\",\"permissions\":[\"2\",\"3\",null],\"_token\":\"N9FR0FUE8pzTl2xY5mVoU9qNqRAUdfGo7f1ynnpu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2022-07-26 06:11:02', '2022-07-26 06:11:02'),
(360, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2022-07-26 06:11:03', '2022-07-26 06:11:03'),
(361, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:11:07', '2022-07-26 06:11:07'),
(362, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:11:10', '2022-07-26 06:11:10'),
(363, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"ebenezer\",\"name\":\"ebenezer\",\"password\":\"$2y$10$B8heMlRBWyaQtgaUcKyxNur1NiJ83vNmADahcEoKzX9hqRcp92.qy\",\"password_confirmation\":\"$2y$10$B8heMlRBWyaQtgaUcKyxNur1NiJ83vNmADahcEoKzX9hqRcp92.qy\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"3\",null],\"_token\":\"N9FR0FUE8pzTl2xY5mVoU9qNqRAUdfGo7f1ynnpu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2022-07-26 06:11:51', '2022-07-26 06:11:51'),
(364, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-07-26 06:11:52', '2022-07-26 06:11:52'),
(365, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:11:56', '2022-07-26 06:11:56'),
(366, 2, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 06:12:07', '2022-07-26 06:12:07'),
(367, 2, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:12:10', '2022-07-26 06:12:10'),
(368, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 06:12:13', '2022-07-26 06:12:13'),
(369, 2, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:19:44', '2022-07-26 13:19:44'),
(370, 2, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:19:53', '2022-07-26 13:19:53'),
(371, 2, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:20:02', '2022-07-26 13:20:02'),
(372, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:20:08', '2022-07-26 13:20:08'),
(373, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:20:21', '2022-07-26 13:20:21'),
(374, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:20:25', '2022-07-26 13:20:25'),
(375, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:23:00', '2022-07-26 13:23:00'),
(376, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dasffaddf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:23:23', '2022-07-26 13:23:23'),
(377, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:23:34', '2022-07-26 13:23:34'),
(378, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:23:58', '2022-07-26 13:23:58'),
(379, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"adfafdf\",\"customer_phone\":\"asdadf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 13:24:13', '2022-07-26 13:24:13'),
(380, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:24:36', '2022-07-26 13:24:36'),
(381, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:33:38', '2022-07-26 13:33:38'),
(382, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:35:05', '2022-07-26 13:35:05'),
(383, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:35:13', '2022-07-26 13:35:13'),
(384, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:35:29', '2022-07-26 13:35:29'),
(385, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:35:51', '2022-07-26 13:35:51'),
(386, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:38:54', '2022-07-26 13:38:54'),
(387, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:38:57', '2022-07-26 13:38:57'),
(388, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:38:59', '2022-07-26 13:38:59'),
(389, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:39:13', '2022-07-26 13:39:13'),
(390, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:39:35', '2022-07-26 13:39:35'),
(391, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:40:39', '2022-07-26 13:40:39'),
(392, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"adsad\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 13:41:07', '2022-07-26 13:41:07'),
(393, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:41:29', '2022-07-26 13:41:29'),
(394, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:47:02', '2022-07-26 13:47:02'),
(395, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:47:05', '2022-07-26 13:47:05'),
(396, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:47:07', '2022-07-26 13:47:07'),
(397, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:47:25', '2022-07-26 13:47:25'),
(398, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:47:27', '2022-07-26 13:47:27'),
(399, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:49:50', '2022-07-26 13:49:50'),
(400, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:49:53', '2022-07-26 13:49:53'),
(401, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:49:55', '2022-07-26 13:49:55'),
(402, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:50:08', '2022-07-26 13:50:08'),
(403, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:50:09', '2022-07-26 13:50:09'),
(404, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:51:18', '2022-07-26 13:51:18'),
(405, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:51:21', '2022-07-26 13:51:21'),
(406, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:51:23', '2022-07-26 13:51:23'),
(407, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:51:34', '2022-07-26 13:51:34'),
(408, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:51:35', '2022-07-26 13:51:35'),
(409, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 13:57:10', '2022-07-26 13:57:10'),
(410, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:57:13', '2022-07-26 13:57:13'),
(411, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 13:57:15', '2022-07-26 13:57:15'),
(412, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 13:57:34', '2022-07-26 13:57:34'),
(413, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:57:35', '2022-07-26 13:57:35'),
(414, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 13:58:58', '2022-07-26 13:58:58'),
(415, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 13:58:59', '2022-07-26 13:58:59'),
(416, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:15:47', '2022-07-26 14:15:47'),
(417, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"sadds\",\"customer_phone\":\"sd\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 14:16:03', '2022-07-26 14:16:03'),
(418, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:16:04', '2022-07-26 14:16:04'),
(419, 1, 'admin/invoices/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:17:42', '2022-07-26 14:17:42'),
(420, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 14:19:03', '2022-07-26 14:19:03'),
(421, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:19:06', '2022-07-26 14:19:06'),
(422, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:19:08', '2022-07-26 14:19:08'),
(423, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:19:10', '2022-07-26 14:19:10'),
(424, 1, 'admin/invoices/32,33,34,35,36,37,38,39,40,41,42,43,44,45,46', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 14:19:18', '2022-07-26 14:19:18'),
(425, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:19:20', '2022-07-26 14:19:20'),
(426, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:19:23', '2022-07-26 14:19:23'),
(427, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 14:19:33', '2022-07-26 14:19:33'),
(428, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:19:34', '2022-07-26 14:19:34'),
(429, 1, 'admin/invoices/47/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:19:41', '2022-07-26 14:19:41'),
(430, 1, 'admin/invoices/47/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 14:20:22', '2022-07-26 14:20:22'),
(431, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:20:36', '2022-07-26 14:20:36'),
(432, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:24:48', '2022-07-26 14:24:48'),
(433, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:25:12', '2022-07-26 14:25:12'),
(434, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:25:15', '2022-07-26 14:25:15'),
(435, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:25:51', '2022-07-26 14:25:51'),
(436, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 14:26:02', '2022-07-26 14:26:02'),
(437, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:26:04', '2022-07-26 14:26:04'),
(438, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:26:06', '2022-07-26 14:26:06'),
(439, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:26:07', '2022-07-26 14:26:07'),
(440, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:27:31', '2022-07-26 14:27:31'),
(441, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:27:34', '2022-07-26 14:27:34'),
(442, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 14:27:45', '2022-07-26 14:27:45'),
(443, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 14:27:46', '2022-07-26 14:27:46'),
(444, 1, 'admin/invoices/48/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:28:27', '2022-07-26 14:28:27'),
(445, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 14:42:18', '2022-07-26 14:42:18'),
(446, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:42:20', '2022-07-26 14:42:20'),
(447, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 14:42:23', '2022-07-26 14:42:23'),
(448, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 14:42:36', '2022-07-26 14:42:36'),
(449, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:42:37', '2022-07-26 14:42:37'),
(450, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:42:53', '2022-07-26 14:42:53'),
(451, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:43:18', '2022-07-26 14:43:18'),
(452, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:43:45', '2022-07-26 14:43:45'),
(453, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 14:44:05', '2022-07-26 14:44:05'),
(454, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:44:07', '2022-07-26 14:44:07'),
(455, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:45:14', '2022-07-26 14:45:14'),
(456, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 14:45:30', '2022-07-26 14:45:30'),
(457, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:45:30', '2022-07-26 14:45:30'),
(458, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:49:34', '2022-07-26 14:49:34'),
(459, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 14:49:50', '2022-07-26 14:49:50'),
(460, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 14:49:51', '2022-07-26 14:49:51'),
(461, 1, 'admin/invoices/48/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 15:14:19', '2022-07-26 15:14:19'),
(462, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:14:24', '2022-07-26 15:14:24'),
(463, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:14:25', '2022-07-26 15:14:25'),
(464, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:14:40', '2022-07-26 15:14:40'),
(465, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:15:02', '2022-07-26 15:15:02'),
(466, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:19:54', '2022-07-26 15:19:54'),
(467, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:20:10', '2022-07-26 15:20:10'),
(468, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:20:27', '2022-07-26 15:20:27'),
(469, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:21:44', '2022-07-26 15:21:44'),
(470, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:22:06', '2022-07-26 15:22:06'),
(471, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:22:16', '2022-07-26 15:22:16'),
(472, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:22:19', '2022-07-26 15:22:19'),
(473, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:22:32', '2022-07-26 15:22:32'),
(474, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:22:36', '2022-07-26 15:22:36'),
(475, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:25:45', '2022-07-26 15:25:45'),
(476, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:26:05', '2022-07-26 15:26:05'),
(477, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:26:09', '2022-07-26 15:26:09'),
(478, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:30:15', '2022-07-26 15:30:15'),
(479, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:30:16', '2022-07-26 15:30:16'),
(480, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:30:35', '2022-07-26 15:30:35'),
(481, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:30:36', '2022-07-26 15:30:36'),
(482, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:31:41', '2022-07-26 15:31:41'),
(483, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:31:44', '2022-07-26 15:31:44'),
(484, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:31:56', '2022-07-26 15:31:56'),
(485, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:31:57', '2022-07-26 15:31:57'),
(486, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:33:49', '2022-07-26 15:33:49'),
(487, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:34:02', '2022-07-26 15:34:02'),
(488, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:34:03', '2022-07-26 15:34:03'),
(489, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:34:57', '2022-07-26 15:34:57'),
(490, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:35:09', '2022-07-26 15:35:09'),
(491, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:35:10', '2022-07-26 15:35:10'),
(492, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:35:35', '2022-07-26 15:35:35'),
(493, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:35:48', '2022-07-26 15:35:48'),
(494, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:36:01', '2022-07-26 15:36:01'),
(495, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:36:58', '2022-07-26 15:36:58'),
(496, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:37:02', '2022-07-26 15:37:02'),
(497, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:37:12', '2022-07-26 15:37:12'),
(498, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:37:27', '2022-07-26 15:37:27'),
(499, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:37:29', '2022-07-26 15:37:29'),
(500, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:37:32', '2022-07-26 15:37:32'),
(501, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:37:59', '2022-07-26 15:37:59'),
(502, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:38:00', '2022-07-26 15:38:00'),
(503, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:42:19', '2022-07-26 15:42:19'),
(504, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:42:32', '2022-07-26 15:42:32'),
(505, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:42:40', '2022-07-26 15:42:40'),
(506, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:45:12', '2022-07-26 15:45:12'),
(507, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:45:49', '2022-07-26 15:45:49'),
(508, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:46:01', '2022-07-26 15:46:01'),
(509, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:46:05', '2022-07-26 15:46:05'),
(510, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:48:31', '2022-07-26 15:48:31'),
(511, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:48:44', '2022-07-26 15:48:44'),
(512, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:48:45', '2022-07-26 15:48:45'),
(513, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:49:30', '2022-07-26 15:49:30'),
(514, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:49:42', '2022-07-26 15:49:42'),
(515, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:49:44', '2022-07-26 15:49:44'),
(516, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:51:23', '2022-07-26 15:51:23'),
(517, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:51:25', '2022-07-26 15:51:25'),
(518, 1, 'admin/invoices/47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:51:31', '2022-07-26 15:51:31'),
(519, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:51:35', '2022-07-26 15:51:35'),
(520, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 15:51:37', '2022-07-26 15:51:37'),
(521, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 15:51:50', '2022-07-26 15:51:50'),
(522, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:52:03', '2022-07-26 15:52:03'),
(523, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 15:52:14', '2022-07-26 15:52:14'),
(524, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 15:52:29', '2022-07-26 15:52:29'),
(525, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 15:52:33', '2022-07-26 15:52:33'),
(526, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 16:03:14', '2022-07-26 16:03:14'),
(527, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 16:03:28', '2022-07-26 16:03:28'),
(528, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 16:03:29', '2022-07-26 16:03:29'),
(529, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 16:03:45', '2022-07-26 16:03:45'),
(530, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 16:04:01', '2022-07-26 16:04:01'),
(531, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:04:05', '2022-07-26 16:04:05'),
(532, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:05:17', '2022-07-26 16:05:17'),
(533, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 16:05:35', '2022-07-26 16:05:35'),
(534, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:05:39', '2022-07-26 16:05:39'),
(535, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:06:50', '2022-07-26 16:06:50'),
(536, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:06:53', '2022-07-26 16:06:53'),
(537, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:08:10', '2022-07-26 16:08:10'),
(538, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 16:08:28', '2022-07-26 16:08:28'),
(539, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 16:08:29', '2022-07-26 16:08:29'),
(540, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 16:08:52', '2022-07-26 16:08:52'),
(541, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 16:08:53', '2022-07-26 16:08:53'),
(542, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-26 16:11:01', '2022-07-26 16:11:01'),
(543, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 16:11:14', '2022-07-26 16:11:14'),
(544, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:11:18', '2022-07-26 16:11:18'),
(545, 1, 'admin/invoices/32/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 16:16:17', '2022-07-26 16:16:17'),
(546, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:16:36', '2022-07-26 16:16:36'),
(547, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 16:16:50', '2022-07-26 16:16:50'),
(548, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:16:54', '2022-07-26 16:16:54'),
(549, 1, 'admin/invoices/67/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:28:04', '2022-07-26 16:28:04'),
(550, 1, 'admin/invoices/67', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:28:15', '2022-07-26 16:28:15'),
(551, 1, 'admin/invoices/67/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:28:22', '2022-07-26 16:28:22'),
(552, 1, 'admin/invoices/67', 'PUT', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"sdfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\\/67\"}', '2022-07-26 16:28:29', '2022-07-26 16:28:29'),
(553, 1, 'admin/invoices/67', 'GET', '127.0.0.1', '[]', '2022-07-26 16:28:33', '2022-07-26 16:28:33'),
(554, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:28:41', '2022-07-26 16:28:41'),
(555, 1, 'admin/invoices/67,68,69,70,71,72,73,74,75', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\"}', '2022-07-26 16:28:59', '2022-07-26 16:28:59'),
(556, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:29:01', '2022-07-26 16:29:01'),
(557, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:29:06', '2022-07-26 16:29:06'),
(558, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"dfsdf\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"AvSCXRHinvBDPGUTBPJx3xZuonS0wOVlU4kLCgyj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-26 16:29:26', '2022-07-26 16:29:26'),
(559, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:29:31', '2022-07-26 16:29:31'),
(560, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 16:30:10', '2022-07-26 16:30:10'),
(561, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:38:26', '2022-07-26 16:38:26'),
(562, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:38:44', '2022-07-26 16:38:44'),
(563, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:38:50', '2022-07-26 16:38:50'),
(564, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:38:56', '2022-07-26 16:38:56'),
(565, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:38:59', '2022-07-26 16:38:59'),
(566, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2022-07-26 16:39:07', '2022-07-26 16:39:07'),
(567, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 16:50:40', '2022-07-26 16:50:40'),
(568, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:50:48', '2022-07-26 16:50:48'),
(569, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:52:10', '2022-07-26 16:52:10'),
(570, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:54:32', '2022-07-26 16:54:32'),
(571, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:56:06', '2022-07-26 16:56:06'),
(572, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:56:29', '2022-07-26 16:56:29'),
(573, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:57:22', '2022-07-26 16:57:22'),
(574, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:57:48', '2022-07-26 16:57:48'),
(575, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:58:02', '2022-07-26 16:58:02'),
(576, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 16:59:14', '2022-07-26 16:59:14'),
(577, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:00:18', '2022-07-26 17:00:18'),
(578, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:01:04', '2022-07-26 17:01:04'),
(579, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:01:41', '2022-07-26 17:01:41'),
(580, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:02:17', '2022-07-26 17:02:17'),
(581, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:03:01', '2022-07-26 17:03:01'),
(582, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:03:26', '2022-07-26 17:03:26'),
(583, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:03:51', '2022-07-26 17:03:51'),
(584, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:04:17', '2022-07-26 17:04:17'),
(585, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:04:30', '2022-07-26 17:04:30'),
(586, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:04:48', '2022-07-26 17:04:48'),
(587, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:05:07', '2022-07-26 17:05:07'),
(588, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:05:40', '2022-07-26 17:05:40'),
(589, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:06:10', '2022-07-26 17:06:10'),
(590, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:07:15', '2022-07-26 17:07:15'),
(591, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:09:07', '2022-07-26 17:09:07'),
(592, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:09:35', '2022-07-26 17:09:35'),
(593, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:09:54', '2022-07-26 17:09:54'),
(594, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:10:24', '2022-07-26 17:10:24'),
(595, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:11:06', '2022-07-26 17:11:06'),
(596, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:12:07', '2022-07-26 17:12:07'),
(597, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:12:35', '2022-07-26 17:12:35'),
(598, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:12:48', '2022-07-26 17:12:48'),
(599, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:13:01', '2022-07-26 17:13:01'),
(600, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:14:12', '2022-07-26 17:14:12'),
(601, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:15:37', '2022-07-26 17:15:37'),
(602, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:17:33', '2022-07-26 17:17:33'),
(603, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:18:00', '2022-07-26 17:18:00'),
(604, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:18:19', '2022-07-26 17:18:19'),
(605, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:18:43', '2022-07-26 17:18:43'),
(606, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:18:48', '2022-07-26 17:18:48'),
(607, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 17:19:06', '2022-07-26 17:19:06'),
(608, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:19:13', '2022-07-26 17:19:13'),
(609, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:19:20', '2022-07-26 17:19:20'),
(610, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-26 17:22:54', '2022-07-26 17:22:54'),
(611, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:23:09', '2022-07-26 17:23:09'),
(612, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:23:16', '2022-07-26 17:23:16'),
(613, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"All Proforma\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/invoices\",\"roles\":[null],\"permission\":null,\"_token\":\"bHqJJ4D9dEnfmOUgRJPDQfmSE3h04GCtwdWsRllA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-07-26 17:23:28', '2022-07-26 17:23:28'),
(614, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-26 17:23:29', '2022-07-26 17:23:29'),
(615, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-26 17:23:32', '2022-07-26 17:23:32'),
(616, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:23:39', '2022-07-26 17:23:39'),
(617, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 17:24:37', '2022-07-26 17:24:37'),
(618, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:25:07', '2022-07-26 17:25:07'),
(619, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:27:12', '2022-07-26 17:27:12'),
(620, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:27:48', '2022-07-26 17:27:48'),
(621, 1, 'admin/invoices/76/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:28:41', '2022-07-26 17:28:41'),
(622, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:29:42', '2022-07-26 17:29:42'),
(623, 1, 'admin/invoices/76', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:31:29', '2022-07-26 17:31:29'),
(624, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:31:36', '2022-07-26 17:31:36'),
(625, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:31:43', '2022-07-26 17:31:43'),
(626, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:31:53', '2022-07-26 17:31:53'),
(627, 1, 'admin/invoices/76/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:31:57', '2022-07-26 17:31:57'),
(628, 1, 'admin/invoices/76/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 17:35:43', '2022-07-26 17:35:43'),
(629, 1, 'admin/invoices/76', 'PUT', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"0243975304_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"bHqJJ4D9dEnfmOUgRJPDQfmSE3h04GCtwdWsRllA\",\"_method\":\"PUT\"}', '2022-07-26 17:36:45', '2022-07-26 17:36:45'),
(630, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-26 17:36:53', '2022-07-26 17:36:53'),
(631, 1, 'admin/invoices/76/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:39:33', '2022-07-26 17:39:33'),
(632, 1, 'admin/invoices/76/edit', 'GET', '127.0.0.1', '[]', '2022-07-26 17:44:31', '2022-07-26 17:44:31'),
(633, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:44:33', '2022-07-26 17:44:33'),
(634, 1, 'admin/invoices/76/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:44:41', '2022-07-26 17:44:41'),
(635, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-26 17:44:58', '2022-07-26 17:44:58'),
(636, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-27 23:01:55', '2022-07-27 23:01:55'),
(637, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-27 23:02:00', '2022-07-27 23:02:00'),
(638, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:02:13', '2022-07-27 23:02:13'),
(639, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:02:26', '2022-07-27 23:02:26'),
(640, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"0243975304_\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-27 23:03:00', '2022-07-27 23:03:00'),
(641, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-27 23:03:05', '2022-07-27 23:03:05'),
(642, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-27 23:03:09', '2022-07-27 23:03:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(643, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-27 23:20:18', '2022-07-27 23:20:18'),
(644, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-27 23:20:19', '2022-07-27 23:20:19'),
(645, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:20:28', '2022-07-27 23:20:28'),
(646, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:20:30', '2022-07-27 23:20:30'),
(647, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:40:31', '2022-07-27 23:40:31'),
(648, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:53:35', '2022-07-27 23:53:35'),
(649, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-27 23:53:44', '2022-07-27 23:53:44'),
(650, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 00:06:21', '2022-07-28 00:06:21'),
(651, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:12:32', '2022-07-28 01:12:32'),
(652, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer\",\"customer_phone\":\"0243975304_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:12:56', '2022-07-28 01:12:56'),
(653, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:13:05', '2022-07-28 01:13:05'),
(654, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:19:37', '2022-07-28 01:19:37'),
(655, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"43534345445\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:19:59', '2022-07-28 01:19:59'),
(656, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 01:20:04', '2022-07-28 01:20:04'),
(657, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"43534345445\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 01:20:40', '2022-07-28 01:20:40'),
(658, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 01:20:41', '2022-07-28 01:20:41'),
(659, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"43534345445\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 01:35:13', '2022-07-28 01:35:13'),
(660, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:35:19', '2022-07-28 01:35:19'),
(661, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:36:10', '2022-07-28 01:36:10'),
(662, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer\",\"customer_phone\":\"23543245252\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:36:27', '2022-07-28 01:36:27'),
(663, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:36:31', '2022-07-28 01:36:31'),
(664, 1, 'admin/invoices/76,77,78,79,80,81,82', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 01:38:06', '2022-07-28 01:38:06'),
(665, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:38:08', '2022-07-28 01:38:08'),
(666, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:38:10', '2022-07-28 01:38:10'),
(667, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"45345435454\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:38:27', '2022-07-28 01:38:27'),
(668, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:38:31', '2022-07-28 01:38:31'),
(669, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:39:18', '2022-07-28 01:39:18'),
(670, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"from the estech\",\"customer_phone\":\"23243252355\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:39:43', '2022-07-28 01:39:43'),
(671, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:39:48', '2022-07-28 01:39:48'),
(672, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:43:59', '2022-07-28 01:43:59'),
(673, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34254346334\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:44:33', '2022-07-28 01:44:33'),
(674, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 01:44:34', '2022-07-28 01:44:34'),
(675, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34254346334\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 01:45:01', '2022-07-28 01:45:01'),
(676, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:45:07', '2022-07-28 01:45:07'),
(677, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:45:33', '2022-07-28 01:45:33'),
(678, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34545345434\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:45:47', '2022-07-28 01:45:47'),
(679, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:45:53', '2022-07-28 01:45:53'),
(680, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:48:24', '2022-07-28 01:48:24'),
(681, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"4545_______\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:48:39', '2022-07-28 01:48:39'),
(682, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:48:43', '2022-07-28 01:48:43'),
(683, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:50:04', '2022-07-28 01:50:04'),
(684, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer\",\"customer_phone\":\"34324234423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:50:23', '2022-07-28 01:50:23'),
(685, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:50:28', '2022-07-28 01:50:28'),
(686, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:51:01', '2022-07-28 01:51:01'),
(687, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"223322332__\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:51:15', '2022-07-28 01:51:15'),
(688, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:51:21', '2022-07-28 01:51:21'),
(689, 1, 'admin/invoices/83,84,85,86,87,88,89,90', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 01:52:59', '2022-07-28 01:52:59'),
(690, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:53:00', '2022-07-28 01:53:00'),
(691, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:53:02', '2022-07-28 01:53:02'),
(692, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer\",\"customer_phone\":\"33333223___\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:53:25', '2022-07-28 01:53:25'),
(693, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 01:53:30', '2022-07-28 01:53:30'),
(694, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 01:59:28', '2022-07-28 01:59:28'),
(695, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer gyamfi\",\"customer_phone\":\"34534543445\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 01:59:53', '2022-07-28 01:59:53'),
(696, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 02:00:00', '2022-07-28 02:00:00'),
(697, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:06:32', '2022-07-28 02:06:32'),
(698, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543453453\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 02:06:56', '2022-07-28 02:06:56'),
(699, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 02:07:03', '2022-07-28 02:07:03'),
(700, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:07:37', '2022-07-28 02:07:37'),
(701, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23434342343\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 02:07:55', '2022-07-28 02:07:55'),
(702, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 02:08:04', '2022-07-28 02:08:04'),
(703, 1, 'admin/invoices/91,92,93,94', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 02:19:04', '2022-07-28 02:19:04'),
(704, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:19:05', '2022-07-28 02:19:05'),
(705, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:21:45', '2022-07-28 02:21:45'),
(706, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"25235255552\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 02:22:05', '2022-07-28 02:22:05'),
(707, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 02:22:12', '2022-07-28 02:22:12'),
(708, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:25:22', '2022-07-28 02:25:22'),
(709, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423443223\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 02:25:41', '2022-07-28 02:25:41'),
(710, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 02:25:42', '2022-07-28 02:25:42'),
(711, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423443223\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 02:29:14', '2022-07-28 02:29:14'),
(712, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 02:29:21', '2022-07-28 02:29:21'),
(713, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:32:00', '2022-07-28 02:32:00'),
(714, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"24523452355\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 02:32:15', '2022-07-28 02:32:15'),
(715, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 02:32:16', '2022-07-28 02:32:16'),
(716, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"24523452355\",\"customer_email\":\"ebenezer.vonntech@gmail.com\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 02:43:00', '2022-07-28 02:43:00'),
(717, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 02:43:05', '2022-07-28 02:43:05'),
(718, 1, 'admin/invoices/95,96,97', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 02:44:34', '2022-07-28 02:44:34'),
(719, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:44:35', '2022-07-28 02:44:35'),
(720, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 02:46:25', '2022-07-28 02:46:25'),
(721, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 02:46:39', '2022-07-28 02:46:39'),
(722, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 02:46:40', '2022-07-28 02:46:40'),
(723, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 02:51:51', '2022-07-28 02:51:51'),
(724, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 02:51:52', '2022-07-28 02:51:52'),
(725, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 02:55:36', '2022-07-28 02:55:36'),
(726, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 02:55:37', '2022-07-28 02:55:37'),
(727, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 03:08:37', '2022-07-28 03:08:37'),
(728, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 03:08:38', '2022-07-28 03:08:38'),
(729, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 03:09:00', '2022-07-28 03:09:00'),
(730, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:09:05', '2022-07-28 03:09:05'),
(731, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:16:04', '2022-07-28 03:16:04'),
(732, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543453545\",\"customer_email\":\"ebenezer.gymafi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 03:16:15', '2022-07-28 03:16:15'),
(733, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 03:16:16', '2022-07-28 03:16:16'),
(734, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543453545\",\"customer_email\":\"ebenezer.gymafi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 03:18:38', '2022-07-28 03:18:38'),
(735, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 03:18:43', '2022-07-28 03:18:43'),
(736, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543453545\",\"customer_email\":\"ebenezer.gymafi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 03:19:48', '2022-07-28 03:19:48'),
(737, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:19:56', '2022-07-28 03:19:56'),
(738, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:20:33', '2022-07-28 03:20:33'),
(739, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer gyamfi\",\"customer_phone\":\"4534534553_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 03:20:55', '2022-07-28 03:20:55'),
(740, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:21:03', '2022-07-28 03:21:03'),
(741, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:21:27', '2022-07-28 03:21:27'),
(742, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 03:21:45', '2022-07-28 03:21:45'),
(743, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 03:21:49', '2022-07-28 03:21:49'),
(744, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\"}', '2022-07-28 03:26:20', '2022-07-28 03:26:20'),
(745, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:26:28', '2022-07-28 03:26:28'),
(746, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:27:39', '2022-07-28 03:27:39'),
(747, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"ebenezer gyamfi\",\"customer_phone\":\"12341344123\",\"customer_email\":\"ebenezer.gymafi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 03:27:54', '2022-07-28 03:27:54'),
(748, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:27:59', '2022-07-28 03:27:59'),
(749, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:28:46', '2022-07-28 03:28:46'),
(750, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"232434_____\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"JKecWw9urOU0D5NpjGrkwFEP3xLmcElBsFqRkTzy\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 03:29:03', '2022-07-28 03:29:03'),
(751, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:29:07', '2022-07-28 03:29:07'),
(752, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-28 03:34:18', '2022-07-28 03:34:18'),
(753, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:34:25', '2022-07-28 03:34:25'),
(754, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 03:34:27', '2022-07-28 03:34:27'),
(755, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543634634\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 03:34:40', '2022-07-28 03:34:40'),
(756, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 03:34:47', '2022-07-28 03:34:47'),
(757, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:01:29', '2022-07-28 04:01:29'),
(758, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"44_________\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:01:50', '2022-07-28 04:01:50'),
(759, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:01:56', '2022-07-28 04:01:56'),
(760, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:07:04', '2022-07-28 04:07:04'),
(761, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423343\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:07:26', '2022-07-28 04:07:26'),
(762, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:07:30', '2022-07-28 04:07:30'),
(763, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:08:37', '2022-07-28 04:08:37'),
(764, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"56546456466\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:08:49', '2022-07-28 04:08:49'),
(765, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:08:54', '2022-07-28 04:08:54'),
(766, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:09:00', '2022-07-28 04:09:00'),
(767, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:16:15', '2022-07-28 04:16:15'),
(768, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:16:17', '2022-07-28 04:16:17'),
(769, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34544354453\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:16:34', '2022-07-28 04:16:34'),
(770, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:16:37', '2022-07-28 04:16:37'),
(771, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:18:46', '2022-07-28 04:18:46'),
(772, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"35434545433\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:19:19', '2022-07-28 04:19:19'),
(773, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:19:24', '2022-07-28 04:19:24'),
(774, 1, 'admin/invoices/98,99,100,101,102,103,104,105,106,107,108', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:20:03', '2022-07-28 04:20:03'),
(775, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:20:04', '2022-07-28 04:20:04'),
(776, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:20:07', '2022-07-28 04:20:07'),
(777, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"54565464566\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:20:23', '2022-07-28 04:20:23'),
(778, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:20:26', '2022-07-28 04:20:26'),
(779, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"54565464566\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:21:44', '2022-07-28 04:21:44'),
(780, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:21:50', '2022-07-28 04:21:50'),
(781, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:23:24', '2022-07-28 04:23:24'),
(782, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34534534534\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:23:35', '2022-07-28 04:23:35'),
(783, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:23:47', '2022-07-28 04:23:47'),
(784, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:24:39', '2022-07-28 04:24:39'),
(785, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:25:36', '2022-07-28 04:25:36'),
(786, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23432423___\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:25:51', '2022-07-28 04:25:51'),
(787, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:25:52', '2022-07-28 04:25:52'),
(788, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:26:22', '2022-07-28 04:26:22'),
(789, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"525554_____\",\"customer_email\":\"doreenoppong24@gmail.com\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:26:32', '2022-07-28 04:26:32'),
(790, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:26:33', '2022-07-28 04:26:33'),
(791, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:26:37', '2022-07-28 04:26:37'),
(792, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:29:03', '2022-07-28 04:29:03'),
(793, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:32:12', '2022-07-28 04:32:12'),
(794, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"43544354___\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:32:24', '2022-07-28 04:32:24'),
(795, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:32:28', '2022-07-28 04:32:28'),
(796, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:38:28', '2022-07-28 04:38:28'),
(797, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543455___\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:38:41', '2022-07-28 04:38:41'),
(798, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:38:42', '2022-07-28 04:38:42'),
(799, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543455___\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:40:27', '2022-07-28 04:40:27'),
(800, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:40:28', '2022-07-28 04:40:28'),
(801, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:40:33', '2022-07-28 04:40:33'),
(802, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"geedff\",\"customer_phone\":\"23423______\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:40:51', '2022-07-28 04:40:51'),
(803, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:40:52', '2022-07-28 04:40:52'),
(804, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"geedff\",\"customer_phone\":\"23423______\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:42:46', '2022-07-28 04:42:46'),
(805, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:42:47', '2022-07-28 04:42:47'),
(806, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"geedff\",\"customer_phone\":\"23423______\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:49:37', '2022-07-28 04:49:37'),
(807, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:49:42', '2022-07-28 04:49:42'),
(808, 1, 'admin/invoices/118/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:51:28', '2022-07-28 04:51:28'),
(809, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:51:52', '2022-07-28 04:51:52'),
(810, 1, 'admin/invoices/109,110,111,112,113,114,115,116,117,118', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:52:38', '2022-07-28 04:52:38'),
(811, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:52:39', '2022-07-28 04:52:39'),
(812, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:52:54', '2022-07-28 04:52:54'),
(813, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:54:25', '2022-07-28 04:54:25'),
(814, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:54:27', '2022-07-28 04:54:27'),
(815, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543463463\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:54:39', '2022-07-28 04:54:39'),
(816, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:54:44', '2022-07-28 04:54:44'),
(817, 1, 'admin/invoices/119', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:54:48', '2022-07-28 04:54:48'),
(818, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:54:49', '2022-07-28 04:54:49'),
(819, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:56:05', '2022-07-28 04:56:05'),
(820, 1, 'admin/invoices/119', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:56:09', '2022-07-28 04:56:09'),
(821, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:56:10', '2022-07-28 04:56:10'),
(822, 1, 'admin/invoices/119', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:56:28', '2022-07-28 04:56:28'),
(823, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 04:56:29', '2022-07-28 04:56:29'),
(824, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 04:58:54', '2022-07-28 04:58:54'),
(825, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"3454345435_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 04:59:06', '2022-07-28 04:59:06'),
(826, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:59:06', '2022-07-28 04:59:06'),
(827, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"3454345435_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 04:59:53', '2022-07-28 04:59:53'),
(828, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 04:59:54', '2022-07-28 04:59:54'),
(829, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"3454345435_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 05:00:42', '2022-07-28 05:00:42'),
(830, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 05:00:43', '2022-07-28 05:00:43'),
(831, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"3454345435_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 05:03:55', '2022-07-28 05:03:55'),
(832, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '[]', '2022-07-28 05:03:56', '2022-07-28 05:03:56'),
(833, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"3454345435_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\"}', '2022-07-28 05:04:17', '2022-07-28 05:04:17'),
(834, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 05:04:27', '2022-07-28 05:04:27'),
(835, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 05:10:23', '2022-07-28 05:10:23'),
(836, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"12dvs\",\"customer_phone\":\"1234124____\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"tojEeViz37vU6iVW8ibnqzAPiZ5NM5ExIja8sPuX\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 05:10:42', '2022-07-28 05:10:42'),
(837, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 05:10:43', '2022-07-28 05:10:43'),
(838, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:28:44', '2022-07-28 06:28:44'),
(839, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-28 06:30:37', '2022-07-28 06:30:37'),
(840, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:31:42', '2022-07-28 06:31:42'),
(841, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:45:08', '2022-07-28 06:45:08'),
(842, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423452552\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:45:29', '2022-07-28 06:45:29'),
(843, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:45:33', '2022-07-28 06:45:33'),
(844, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:48:25', '2022-07-28 06:48:25'),
(845, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"43436346634\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:48:41', '2022-07-28 06:48:41'),
(846, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:48:42', '2022-07-28 06:48:42'),
(847, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:49:59', '2022-07-28 06:49:59'),
(848, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"23423423423\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:50:23', '2022-07-28 06:50:23'),
(849, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:50:27', '2022-07-28 06:50:27'),
(850, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:51:53', '2022-07-28 06:51:53'),
(851, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"35634634663\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:52:07', '2022-07-28 06:52:07'),
(852, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:52:09', '2022-07-28 06:52:09'),
(853, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:53:31', '2022-07-28 06:53:31'),
(854, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"wer\",\"customer_phone\":\"23434______\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:53:46', '2022-07-28 06:53:46'),
(855, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:53:50', '2022-07-28 06:53:50'),
(856, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:55:42', '2022-07-28 06:55:42'),
(857, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"456566_____\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:55:55', '2022-07-28 06:55:55'),
(858, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:55:56', '2022-07-28 06:55:56'),
(859, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 06:56:46', '2022-07-28 06:56:46'),
(860, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34543454543\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 06:56:58', '2022-07-28 06:56:58'),
(861, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 06:57:02', '2022-07-28 06:57:02'),
(862, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 07:05:05', '2022-07-28 07:05:05'),
(863, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34544354345\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 07:05:19', '2022-07-28 07:05:19'),
(864, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 07:05:24', '2022-07-28 07:05:24'),
(865, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 07:06:18', '2022-07-28 07:06:18'),
(866, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Doreen Oppong\",\"customer_phone\":\"34534555544\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 07:11:17', '2022-07-28 07:11:17'),
(867, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 07:11:21', '2022-07-28 07:11:21'),
(868, 1, 'admin/invoices/119,120,121,122,123,124,125,126,127,128,129,130', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ehFcd63MK7cq5yv9rfyptDtYSt9jhPzHYoFV2cRZ\"}', '2022-07-28 07:13:23', '2022-07-28 07:13:23'),
(869, 1, 'admin/invoices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 07:13:25', '2022-07-28 07:13:25'),
(870, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 11:14:40', '2022-07-28 11:14:40'),
(871, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 11:16:11', '2022-07-28 11:16:11'),
(872, 1, 'admin/invoices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-28 11:21:50', '2022-07-28 11:21:50'),
(873, 1, 'admin/invoices', 'POST', '127.0.0.1', '{\"customer_name\":\"Ebenezer Gyamfi\",\"customer_phone\":\"0243975304_\",\"customer_email\":\"ebenezer.gyamfi@regent.edu.gh\",\"_token\":\"Br3VQmATPaMwbqwgFSPYgWmeHAPXT9ooTZFLfqCF\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/invoices\"}', '2022-07-28 11:22:18', '2022-07-28 11:22:18'),
(874, 1, 'admin/invoices', 'GET', '127.0.0.1', '[]', '2022-07-28 11:22:32', '2022-07-28 11:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-07-25 15:24:40', '2022-07-25 15:24:40'),
(2, 'Mobile Developer', 'Mobile Developer', '2022-07-26 06:08:30', '2022-07-26 06:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$2gadz453U.UHQcxR3tCSGuOav7hpZ2b6Cz0h2jGZkD4gAs.q31sce', 'Administrator', 'images/d5cd57ca149376e108e9ccf9778882e7.jpg', 'CZVdyxfRwHoMF9QxyCAaOTrPQ6x8h1Pu7kY3vPLZWYmy5MY9i3ZLTEANLvI4', '2022-07-25 15:24:40', '2022-07-25 15:56:59'),
(2, 'ebenezer', '$2y$10$B8heMlRBWyaQtgaUcKyxNur1NiJ83vNmADahcEoKzX9hqRcp92.qy', 'ebenezer', NULL, 'ly92j9nWEcrTFLR2RYGCfoDLpJ0MpshIHSlrTONDc4nZeIOSsB5POTznQnv3', '2022-07-26 06:09:17', '2022-07-26 06:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, NULL),
(2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `customer_phone`, `customer_email`, `customer_file`, `created_at`, `updated_at`) VALUES
(131, 'Ebenezer Gyamfi', '0243975304_', 'ebenezer.gyamfi@regent.edu.gh', 'files/cv_official.pdf', '2022-07-28 11:22:31', '2022-07-28 11:22:31');

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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_25_092142_create_invoices_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=875;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
