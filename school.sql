-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 01:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_employee_salaries`
--

INSERT INTO `account_employee_salaries` (`id`, `employee_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(13, 26, '2021-08', 65000, '2021-08-17 22:42:39', '2021-08-17 22:42:39'),
(14, 29, '2021-08', 19333.333333333, '2021-08-17 22:42:40', '2021-08-17 22:42:40'),
(15, 31, '2021-08', 18760, '2021-08-17 22:42:40', '2021-08-17 22:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_other_costs`
--

INSERT INTO `account_other_costs` (`id`, `date`, `amount`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '2021-08-16', 1000, 'This is for the mess charges', '202108160927images (5).jpeg', '2021-08-16 16:27:44', '2021-08-16 16:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `account_student_fees`
--

CREATE TABLE `account_student_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_student_fees`
--

INSERT INTO `account_student_fees` (`id`, `year_id`, `class_id`, `student_id`, `fee_category_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 6, 1, '2021-08', 950, '2021-08-16 16:23:19', '2021-08-16 16:23:19'),
(2, 6, 1, 7, 1, '2021-08', 950, '2021-08-16 16:23:19', '2021-08-16 16:23:19'),
(3, 6, 1, 8, 1, '2021-08', 950, '2021-08-16 16:23:19', '2021-08-16 16:23:19'),
(4, 6, 1, 9, 1, '2021-08', 950, '2021-08-16 16:23:19', '2021-08-16 16:23:19'),
(5, 6, 1, 10, 1, '2021-08', 950, '2021-08-16 16:23:19', '2021-08-16 16:23:19'),
(6, 6, 10, 19, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(7, 6, 10, 20, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(8, 6, 10, 21, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(9, 6, 10, 22, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(10, 6, 10, 23, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(11, 6, 10, 24, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(12, 6, 10, 19, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(13, 6, 10, 19, 1, '2021-08', 1900, '2021-08-16 16:24:17', '2021-08-16 16:24:17'),
(28, 6, 10, 19, 3, '2021-08', 760, '2021-08-16 17:46:18', '2021-08-16 17:46:18'),
(29, 6, 10, 20, 3, '2021-08', 760, '2021-08-16 17:46:19', '2021-08-16 17:46:19'),
(30, 6, 10, 22, 3, '2021-08', 760, '2021-08-16 17:46:19', '2021-08-16 17:46:19'),
(31, 6, 10, 19, 3, '2021-08', 760, '2021-08-16 17:46:19', '2021-08-16 17:46:19'),
(32, 6, 10, 19, 3, '2021-08', 760, '2021-08-16 17:46:19', '2021-08-16 17:46:19'),
(33, 6, 4, 13, 1, '2021-08', 950, '2021-08-17 18:08:03', '2021-08-17 18:08:03'),
(34, 6, 10, 19, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(35, 6, 10, 20, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(36, 6, 10, 21, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(37, 6, 10, 22, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(38, 6, 10, 23, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(39, 6, 10, 24, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(40, 6, 10, 19, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(41, 6, 10, 19, 2, '2021-08', 2090, '2021-08-17 18:09:37', '2021-08-17 18:09:37'),
(47, 6, 1, 6, 2, '2021-08', 475, '2021-08-17 22:44:27', '2021-08-17 22:44:27'),
(48, 6, 1, 7, 2, '2021-08', 475, '2021-08-17 22:44:27', '2021-08-17 22:44:27'),
(49, 6, 1, 8, 2, '2021-08', 475, '2021-08-17 22:44:27', '2021-08-17 22:44:27'),
(50, 6, 1, 10, 2, '2021-08', 475, '2021-08-17 22:44:27', '2021-08-17 22:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 1, 1, 1, 1, '2021-08-14 16:19:00', '2021-08-14 16:19:00'),
(3, 6, 1, 1, 6, 1, 1, '2021-08-16 14:01:59', '2021-08-16 14:14:44'),
(4, 7, 2, 1, 6, 1, 1, '2021-08-16 14:04:02', '2021-08-16 14:14:44'),
(5, 8, 3, 1, 6, 1, 1, '2021-08-16 14:04:41', '2021-08-16 14:14:44'),
(7, 10, 5, 1, 6, 1, 1, '2021-08-16 14:05:48', '2021-08-16 14:14:44'),
(13, 16, NULL, 7, 6, 1, 1, '2021-08-16 14:08:17', '2021-08-16 14:08:17'),
(14, 17, NULL, 8, 6, 1, 1, '2021-08-16 14:08:25', '2021-08-16 14:08:25'),
(15, 18, NULL, 9, 6, 1, 1, '2021-08-16 14:08:37', '2021-08-16 14:08:37'),
(16, 19, 1, 10, 6, 3, 1, '2021-08-16 14:08:50', '2021-08-16 14:25:59'),
(17, 20, 2, 10, 6, 3, 1, '2021-08-16 14:09:45', '2021-08-16 14:25:59'),
(18, 21, 3, 10, 6, 3, 1, '2021-08-16 14:10:09', '2021-08-16 14:25:59'),
(20, 23, 4, 10, 6, 3, 1, '2021-08-16 14:10:45', '2021-08-16 14:25:59'),
(21, 24, 5, 10, 6, 3, 1, '2021-08-16 14:11:02', '2021-08-16 14:25:59'),
(25, 33, 1, 11, 6, 1, 1, '2021-08-24 18:01:35', '2021-08-24 19:33:51'),
(26, 34, 2, 11, 6, 1, 1, '2021-08-24 18:02:07', '2021-08-24 19:33:51'),
(27, 35, 3, 11, 6, 1, 1, '2021-08-24 18:02:29', '2021-08-24 19:33:51'),
(28, 36, 4, 11, 6, 1, 1, '2021-08-24 18:02:41', '2021-08-24 19:33:52'),
(29, 37, 5, 11, 6, 1, 1, '2021-08-24 18:03:28', '2021-08-24 19:33:52'),
(30, 38, 6, 11, 6, 1, 1, '2021-08-24 18:03:45', '2021-08-24 19:33:52'),
(40, 48, 7, 11, 6, 1, 1, '2021-08-24 19:32:47', '2021-08-24 19:33:52'),
(41, 49, NULL, 2, 6, 1, 1, '2021-08-24 19:33:24', '2021-08-24 19:33:24'),
(42, 50, NULL, 2, 6, 1, 1, '2021-08-24 23:31:36', '2021-08-24 23:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 100, 40, 20, '2021-08-16 13:42:18', '2021-08-16 13:42:18'),
(2, 1, 3, 100, 40, 20, '2021-08-16 13:42:18', '2021-08-16 13:42:18'),
(3, 1, 1, 100, 40, 20, '2021-08-16 13:42:18', '2021-08-16 13:42:18'),
(4, 1, 7, 100, 40, 20, '2021-08-16 13:42:18', '2021-08-16 13:42:18'),
(5, 1, 6, 100, 40, 20, '2021-08-16 13:42:18', '2021-08-16 13:42:18'),
(6, 2, 2, 100, 40, 20, '2021-08-16 13:43:56', '2021-08-16 13:43:56'),
(7, 2, 3, 100, 40, 20, '2021-08-16 13:43:56', '2021-08-16 13:43:56'),
(8, 2, 1, 100, 40, 20, '2021-08-16 13:43:56', '2021-08-16 13:43:56'),
(9, 2, 7, 100, 40, 20, '2021-08-16 13:43:56', '2021-08-16 13:43:56'),
(10, 2, 6, 100, 40, 20, '2021-08-16 13:43:56', '2021-08-16 13:43:56'),
(11, 2, 4, 100, 40, 20, '2021-08-16 13:43:56', '2021-08-16 13:43:56'),
(12, 3, 1, 100, 40, 20, '2021-08-16 13:44:44', '2021-08-16 13:44:44'),
(13, 3, 2, 100, 40, 20, '2021-08-16 13:44:44', '2021-08-16 13:44:44'),
(14, 3, 3, 100, 40, 20, '2021-08-16 13:44:44', '2021-08-16 13:44:44'),
(15, 3, 4, 100, 40, 20, '2021-08-16 13:44:44', '2021-08-16 13:44:44'),
(16, 3, 5, 100, 40, 20, '2021-08-16 13:44:44', '2021-08-16 13:44:44'),
(17, 4, 5, 100, 40, 20, '2021-08-16 13:45:34', '2021-08-16 13:45:34'),
(18, 4, 3, 100, 40, 20, '2021-08-16 13:45:35', '2021-08-16 13:45:35'),
(19, 4, 5, 100, 40, 20, '2021-08-16 13:45:35', '2021-08-16 13:45:35'),
(20, 4, 9, 100, 40, 20, '2021-08-16 13:45:35', '2021-08-16 13:45:35'),
(21, 4, 6, 100, 40, 20, '2021-08-16 13:45:35', '2021-08-16 13:45:35'),
(22, 5, 2, 100, 40, 20, '2021-08-16 13:46:01', '2021-08-16 13:46:01'),
(23, 5, 6, 100, 40, 20, '2021-08-16 13:46:01', '2021-08-16 13:46:01'),
(24, 6, 6, 100, 40, 20, '2021-08-16 13:46:15', '2021-08-16 13:46:15'),
(25, 7, 6, 100, 40, 20, '2021-08-16 13:46:39', '2021-08-16 13:46:39'),
(26, 7, 1, 100, 40, 20, '2021-08-16 13:46:39', '2021-08-16 13:46:39'),
(27, 8, 1, 100, 40, 20, '2021-08-16 13:46:56', '2021-08-16 13:46:56'),
(28, 9, 6, 100, 40, 20, '2021-08-16 13:47:36', '2021-08-16 13:47:36'),
(29, 9, 8, 100, 40, 20, '2021-08-16 13:47:37', '2021-08-16 13:47:37'),
(30, 9, 9, 100, 40, 20, '2021-08-16 13:47:37', '2021-08-16 13:47:37'),
(31, 9, 10, 100, 40, 20, '2021-08-16 13:47:37', '2021-08-16 13:47:37'),
(38, 11, 6, 100, 40, 20, '2021-08-24 17:58:29', '2021-08-24 17:58:29'),
(39, 11, 1, 100, 40, 20, '2021-08-24 17:58:30', '2021-08-24 17:58:30'),
(40, 11, 2, 100, 40, 20, '2021-08-24 17:58:30', '2021-08-24 17:58:30'),
(41, 11, 10, 100, 40, 20, '2021-08-24 17:58:30', '2021-08-24 17:58:30'),
(42, 11, 5, 75, 30, 15, '2021-08-24 17:58:30', '2021-08-24 17:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Principal', '2021-08-14 16:17:50', '2021-08-16 13:48:44'),
(2, 'Voice Principal', '2021-08-14 16:17:56', '2021-08-16 13:49:06'),
(4, 'Teacher', '2021-08-14 16:18:10', '2021-08-14 16:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50, '2021-08-14 16:19:00', '2021-08-14 16:19:00'),
(2, 2, 1, 50, '2021-08-14 16:19:28', '2021-08-14 16:19:28'),
(3, 3, 1, 5, '2021-08-16 14:01:59', '2021-08-16 14:01:59'),
(4, 4, 1, 5, '2021-08-16 14:04:02', '2021-08-16 14:04:02'),
(5, 5, 1, 5, '2021-08-16 14:04:41', '2021-08-16 14:04:41'),
(6, 6, 1, 5, '2021-08-16 14:05:21', '2021-08-16 14:05:21'),
(7, 7, 1, 5, '2021-08-16 14:05:48', '2021-08-16 14:05:48'),
(8, 8, 1, 5, '2021-08-16 14:07:11', '2021-08-16 14:07:11'),
(10, 10, 1, 5, '2021-08-16 14:07:43', '2021-08-16 14:07:43'),
(11, 11, 1, 5, '2021-08-16 14:07:59', '2021-08-16 14:07:59'),
(12, 12, 1, 5, '2021-08-16 14:08:08', '2021-08-16 14:08:08'),
(13, 13, 1, 5, '2021-08-16 14:08:17', '2021-08-16 14:08:17'),
(14, 14, 1, 5, '2021-08-16 14:08:25', '2021-08-16 14:08:25'),
(16, 16, 1, 5, '2021-08-16 14:08:50', '2021-08-16 14:08:50'),
(17, 17, 1, 5, '2021-08-16 14:09:45', '2021-08-16 14:09:45'),
(18, 18, 1, 5, '2021-08-16 14:10:09', '2021-08-16 14:10:09'),
(19, 19, 1, 5, '2021-08-16 14:10:28', '2021-08-16 14:10:28'),
(20, 20, 1, 5, '2021-08-16 14:10:45', '2021-08-16 14:10:45'),
(21, 21, 1, 5, '2021-08-16 14:11:02', '2021-08-16 14:11:02'),
(22, 22, 1, 5, '2021-08-16 14:11:38', '2021-08-16 14:11:38'),
(23, 23, 1, 5, '2021-08-16 14:12:35', '2021-08-16 14:12:35'),
(24, 24, 1, 5, '2021-08-23 18:49:04', '2021-08-23 18:49:04'),
(25, 25, 1, 0, '2021-08-24 18:01:35', '2021-08-24 18:01:35'),
(26, 26, 1, 0, '2021-08-24 18:02:07', '2021-08-24 18:02:07'),
(27, 27, 1, 0, '2021-08-24 18:02:29', '2021-08-24 18:02:29'),
(28, 28, 1, 0, '2021-08-24 18:02:41', '2021-08-24 18:02:41'),
(29, 29, 1, 0, '2021-08-24 18:03:28', '2021-08-24 18:03:28'),
(30, 30, 1, 0, '2021-08-24 18:03:45', '2021-08-24 18:03:45'),
(31, 31, 1, 0, '2021-08-24 18:04:20', '2021-08-24 18:04:20'),
(32, 32, 1, 0, '2021-08-24 18:05:11', '2021-08-24 18:05:11'),
(33, 33, 1, 0, '2021-08-24 18:47:09', '2021-08-24 18:47:09'),
(34, 34, 1, 0, '2021-08-24 18:56:52', '2021-08-24 18:56:52'),
(38, 38, 1, 0, '2021-08-24 19:19:35', '2021-08-24 19:19:35'),
(39, 39, 1, 0, '2021-08-24 19:28:20', '2021-08-24 19:28:20'),
(40, 40, 1, 0, '2021-08-24 19:32:47', '2021-08-24 19:32:47'),
(41, 41, 1, 0, '2021-08-24 19:33:24', '2021-08-24 19:33:24'),
(42, 42, 1, 0, '2021-08-24 23:31:36', '2021-08-24 23:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(1, 25, '2021-08-16', 'Leave', '2021-08-16 15:59:22', '2021-08-16 15:59:22'),
(2, 26, '2021-08-16', 'Present', '2021-08-16 15:59:22', '2021-08-16 15:59:22'),
(3, 27, '2021-08-16', 'Absent', '2021-08-16 15:59:22', '2021-08-16 15:59:22'),
(4, 28, '2021-08-16', 'Present', '2021-08-16 15:59:22', '2021-08-16 15:59:22'),
(5, 29, '2021-08-16', 'Absent', '2021-08-16 15:59:22', '2021-08-16 15:59:22'),
(6, 30, '2021-08-16', 'Leave', '2021-08-16 15:59:23', '2021-08-16 15:59:23'),
(7, 31, '2021-08-16', 'Present', '2021-08-16 15:59:23', '2021-08-16 15:59:23'),
(8, 25, '2021-08-17', 'Present', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(9, 26, '2021-08-17', 'Present', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(10, 27, '2021-08-17', 'Leave', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(11, 28, '2021-08-17', 'Present', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(12, 29, '2021-08-17', 'Present', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(13, 30, '2021-08-17', 'Leave', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(14, 31, '2021-08-17', 'Absent', '2021-08-17 18:05:26', '2021-08-17 18:05:26'),
(15, 25, '2021-08-18', 'Present', '2021-08-17 22:41:33', '2021-08-17 22:41:33'),
(16, 26, '2021-08-18', 'Present', '2021-08-17 22:41:33', '2021-08-17 22:41:33'),
(17, 27, '2021-08-18', 'Present', '2021-08-17 22:41:33', '2021-08-17 22:41:33'),
(18, 28, '2021-08-18', 'Present', '2021-08-17 22:41:33', '2021-08-17 22:41:33'),
(19, 29, '2021-08-18', 'Leave', '2021-08-17 22:41:33', '2021-08-17 22:41:33'),
(20, 30, '2021-08-18', 'Present', '2021-08-17 22:41:34', '2021-08-17 22:41:34'),
(21, 31, '2021-08-18', 'Absent', '2021-08-17 22:41:34', '2021-08-17 22:41:34'),
(22, 25, '1970-01-01', 'Present', '2021-08-18 12:46:09', '2021-08-18 12:46:09'),
(23, 26, '1970-01-01', 'Leave', '2021-08-18 12:46:10', '2021-08-18 12:46:10'),
(24, 27, '1970-01-01', 'Present', '2021-08-18 12:46:10', '2021-08-18 12:46:10'),
(25, 28, '1970-01-01', 'Present', '2021-08-18 12:46:10', '2021-08-18 12:46:10'),
(26, 29, '1970-01-01', 'Present', '2021-08-18 12:46:10', '2021-08-18 12:46:10'),
(27, 30, '1970-01-01', 'Present', '2021-08-18 12:46:10', '2021-08-18 12:46:10'),
(28, 31, '1970-01-01', 'Absent', '2021-08-18 12:46:10', '2021-08-18 12:46:10'),
(29, 25, '2021-08-19', 'Present', '2021-08-18 12:46:53', '2021-08-18 12:46:53'),
(30, 26, '2021-08-19', 'Leave', '2021-08-18 12:46:53', '2021-08-18 12:46:53'),
(31, 27, '2021-08-19', 'Present', '2021-08-18 12:46:53', '2021-08-18 12:46:53'),
(32, 28, '2021-08-19', 'Present', '2021-08-18 12:46:53', '2021-08-18 12:46:53'),
(33, 29, '2021-08-19', 'Leave', '2021-08-18 12:46:53', '2021-08-18 12:46:53'),
(34, 30, '2021-08-19', 'Present', '2021-08-18 12:46:53', '2021-08-18 12:46:53'),
(35, 31, '2021-08-19', 'Absent', '2021-08-18 12:46:53', '2021-08-18 12:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 28, 2, '2021-08-17', '2021-08-20', '2021-08-17 18:05:00', '2021-08-17 18:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sallary_logs`
--

CREATE TABLE `employee_sallary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=User_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_salary` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_sallary_logs`
--

INSERT INTO `employee_sallary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_salary`, `created_at`, `updated_at`) VALUES
(1, 25, 50000, 50000, 0, '2018-01-16', '2021-08-16 15:47:21', '2021-08-16 15:47:21'),
(2, 26, 30000, 30000, 0, '2018-01-16', '2021-08-16 15:48:17', '2021-08-16 15:48:17'),
(3, 27, 20000, 20000, 0, '2018-01-16', '2021-08-16 15:48:51', '2021-08-16 15:48:51'),
(4, 28, 20000, 20000, 0, '2018-01-16', '2021-08-16 15:49:27', '2021-08-16 15:49:27'),
(5, 29, 20000, 20000, 0, '2018-01-16', '2021-08-16 15:49:44', '2021-08-16 15:49:44'),
(6, 30, 20000, 20000, 0, '2018-01-16', '2021-08-16 15:49:57', '2021-08-16 15:49:57'),
(7, 31, 20000, 20000, 0, '2018-01-16', '2021-08-16 15:50:10', '2021-08-16 15:50:10'),
(9, 25, 50000, 100000, 50000, '2021-08-16', '2021-08-16 15:57:21', '2021-08-16 15:57:21'),
(10, 27, 20000, 20010, 10, '1970-01-01', '2021-08-16 15:57:35', '2021-08-16 15:57:35'),
(11, 27, 20010, 21000, 990, '1970-01-01', '2021-08-16 15:57:55', '2021-08-16 15:57:55'),
(12, 31, 20000, 20100, 100, '2021-08-17', '2021-08-17 22:40:53', '2021-08-17 22:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st Term', '2021-08-14 16:16:55', '2021-08-16 12:49:00'),
(2, '2nd Term', '2021-08-14 16:17:04', '2021-08-16 12:49:10'),
(3, '3rd Term', '2021-08-16 12:49:20', '2021-08-16 12:49:39');

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
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration Fee', '2021-08-14 16:15:31', '2021-08-14 16:15:31'),
(2, 'Monthly fee', '2021-08-14 16:15:42', '2021-08-14 16:15:42'),
(3, 'Exam Fee', '2021-08-14 16:15:54', '2021-08-14 16:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 1000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(6, 1, 2, 1000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(7, 1, 3, 1000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(8, 1, 4, 1000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(9, 1, 5, 1000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(10, 1, 6, 1500, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(11, 1, 7, 1500, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(12, 1, 8, 1500, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(13, 1, 9, 2000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(14, 1, 10, 2000, '2021-08-16 12:44:35', '2021-08-16 12:44:35'),
(22, 2, 1, 500, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(23, 2, 2, 500, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(24, 2, 3, 800, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(25, 2, 4, 900, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(26, 2, 5, 1000, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(27, 2, 6, 1200, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(28, 2, 7, 1300, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(29, 2, 8, 1500, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(30, 2, 9, 2000, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(31, 2, 10, 2200, '2021-08-16 12:46:26', '2021-08-16 12:46:26'),
(32, 3, 1, 200, '2021-08-16 12:48:07', '2021-08-16 12:48:07'),
(33, 3, 2, 200, '2021-08-16 12:48:07', '2021-08-16 12:48:07'),
(34, 3, 3, 300, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(35, 3, 4, 300, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(36, 3, 5, 300, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(37, 3, 6, 500, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(38, 3, 7, 500, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(39, 3, 8, 500, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(40, 3, 9, 800, '2021-08-16 12:48:08', '2021-08-16 12:48:08'),
(41, 3, 10, 800, '2021-08-16 12:48:08', '2021-08-16 12:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Personal Issue', '2021-08-16 15:58:47', '2021-08-16 15:58:47'),
(2, 'For Visiting', '2021-08-17 18:05:00', '2021-08-17 18:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_grades`
--

INSERT INTO `marks_grades` (`id`, `grade_name`, `grade_point`, `start_marks`, `end_marks`, `start_point`, `end_point`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'A+', '5', '87', '100', '4', '5', 'Outstanding', '2021-08-16 16:11:48', '2021-08-16 16:22:18'),
(2, 'A', '5', '80', '87', '3.5', '4', 'Excellent', '2021-08-16 16:12:47', '2021-08-16 16:22:05'),
(3, 'B+', '5', '72', '80', '3', '3.5', 'Very Good', '2021-08-16 16:13:14', '2021-08-16 16:21:52'),
(4, 'B', '5', '65', '72', '2.5', '3', 'Good', '2021-08-16 16:14:03', '2021-08-16 16:21:30'),
(5, 'C+', '5', '50', '65', '2', '2.5', 'Star', '2021-08-16 16:14:28', '2021-08-16 16:21:39'),
(6, 'C', '5', '40', '50', '1', '2', 'Satisfactory', '2021-08-16 16:14:57', '2021-08-16 16:21:13'),
(7, 'D', '5', '0', '40', '0', '1', 'Fail', '2021-08-16 16:21:04', '2021-08-16 16:21:04');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_23_192918_create_sessions_table', 1),
(7, '2020_11_27_191622_create_student_classes_table', 1),
(8, '2020_11_27_201955_create_student_years_table', 1),
(9, '2020_11_27_205317_create_student_groups_table', 1),
(10, '2020_11_27_212648_create_student_shifts_table', 1),
(11, '2020_11_28_184513_create_fee_categories_table', 1),
(12, '2020_11_28_193421_create_fee_category_amounts_table', 1),
(13, '2020_11_29_190907_create_exam_types_table', 1),
(14, '2020_11_29_193820_create_school_subjects_table', 1),
(15, '2020_11_30_192807_create_assign_subjects_table', 1),
(16, '2020_11_30_211919_create_designations_table', 1),
(17, '2020_12_02_191137_create_assign_students_table', 1),
(18, '2020_12_02_191735_create_discount_students_table', 1),
(19, '2020_12_09_192120_create_employee_sallary_logs_table', 1),
(20, '2020_12_11_205416_create_leave_purposes_table', 1),
(21, '2020_12_11_210033_create_employee_leaves_table', 1),
(22, '2020_12_13_192045_create_employee_attendances_table', 1),
(23, '2020_12_15_214223_create_student_marks_table', 1),
(24, '2020_12_16_202402_create_marks_grades_table', 1),
(25, '2020_12_18_191232_create_account_student_fees_table', 1),
(26, '2020_12_18_212912_create_account_employee_salaries_table', 1),
(27, '2020_12_20_192742_create_account_other_costs_table', 1);

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
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Maths', '2021-08-14 16:17:17', '2021-08-16 13:39:00'),
(2, 'English', '2021-08-14 16:17:24', '2021-08-14 16:17:24'),
(3, 'Urdu', '2021-08-14 16:17:36', '2021-08-14 16:17:36'),
(4, 'Islamiyat', '2021-08-16 13:39:24', '2021-08-16 13:39:24'),
(5, 'Pakistan Studey', '2021-08-16 13:39:36', '2021-08-16 13:39:36'),
(6, 'Computer Science', '2021-08-16 13:39:45', '2021-08-16 13:39:45'),
(7, 'Science', '2021-08-16 13:40:04', '2021-08-16 13:40:04'),
(8, 'Biology', '2021-08-16 13:40:12', '2021-08-16 13:40:12'),
(9, 'Chemistry', '2021-08-16 13:40:19', '2021-08-16 13:40:19'),
(10, 'Physics', '2021-08-16 13:40:26', '2021-08-16 13:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zy0V8ZjT3bvKMBtYHDBwcTEcuzVbSnx3IJwYFuZx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaXBGbElzbkFGT3hSR1g1U0xKcDJ4SE9tRnpiUEVBRERTMFQzZ1drRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkaXVuR3d4NWdTaVd2czlSYU44TnFyLkZuQXBGTG1ZN0FiVmllZWNaV3pSbDBhYi9iaC84NW0iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGl1bkd3eDVnU2lXdnM5UmFOOE5xci5GbkFwRkxtWTdBYlZpZWVjWld6UmwwYWIvYmgvODVtIjt9', 1632827585);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `class_id` int(11) DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `taker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `student_id`, `class_id`, `year_id`, `date`, `taker`, `attend_status`, `created_at`, `updated_at`) VALUES
(269, 3, 1, 6, '2021-08-24', 'Imran khan', 'Present', '2021-08-24 19:34:16', '2021-08-24 19:34:16'),
(270, 4, 1, 6, '2021-08-24', 'Imran khan', 'Absent', '2021-08-24 19:34:16', '2021-08-24 19:34:16'),
(271, 5, 1, 6, '2021-08-24', 'Imran khan', 'Present', '2021-08-24 19:34:16', '2021-08-24 19:34:16'),
(273, 7, 1, 6, '2021-08-24', 'Imran khan', 'Present', '2021-08-24 19:34:16', '2021-08-24 19:34:16'),
(274, 25, 11, 6, '2021-08-24', 'Imran khan', 'Present', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(275, 26, 11, 6, '2021-08-24', 'Imran khan', 'Leave', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(276, 27, 11, 6, '2021-08-24', 'Imran khan', 'Absent', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(277, 28, 11, 6, '2021-08-24', 'Imran khan', 'Present', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(278, 29, 11, 6, '2021-08-24', 'Imran khan', 'Leave', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(279, 30, 11, 6, '2021-08-24', 'Imran khan', 'Leave', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(280, 40, 11, 6, '2021-08-24', 'Imran khan', 'Present', '2021-08-24 19:34:39', '2021-08-24 19:34:39'),
(282, 3, 1, 6, '2021-08-25', 'Imran khan', 'Present', '2021-08-24 23:30:01', '2021-08-24 23:30:01'),
(283, 4, 1, 6, '2021-08-25', 'Imran khan', 'Leave', '2021-08-24 23:30:01', '2021-08-24 23:30:01'),
(284, 5, 1, 6, '2021-08-25', 'Imran khan', 'Present', '2021-08-24 23:30:01', '2021-08-24 23:30:01'),
(285, 6, 1, 6, '2021-08-25', 'Imran khan', 'Leave', '2021-08-24 23:30:01', '2021-08-24 23:30:01'),
(286, 7, 1, 6, '2021-08-25', 'Imran khan', 'Absent', '2021-08-24 23:30:01', '2021-08-24 23:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Class 1', '2021-08-14 16:14:32', '2021-08-17 17:55:30'),
(2, 'Class 2', '2021-08-14 16:14:41', '2021-08-17 17:55:36'),
(3, 'Class 3', '2021-08-16 12:38:42', '2021-08-17 17:55:42'),
(4, 'Class 4', '2021-08-16 12:38:48', '2021-08-17 17:55:48'),
(5, 'Class 5', '2021-08-16 12:38:54', '2021-08-17 17:55:55'),
(6, 'Class 6', '2021-08-16 12:39:00', '2021-08-17 17:56:02'),
(7, 'Class 7', '2021-08-16 12:39:06', '2021-08-17 17:56:09'),
(8, 'Class 8', '2021-08-16 12:39:12', '2021-08-17 17:56:16'),
(9, 'Class 9', '2021-08-16 12:39:25', '2021-08-17 17:56:23'),
(11, 'Class 10', '2021-08-24 17:54:48', '2021-08-24 17:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Science', '2021-08-14 16:15:06', '2021-08-16 12:41:10'),
(2, 'Arts', '2021-08-16 12:41:17', '2021-08-16 12:41:17'),
(3, 'Modern Science (Computer Science)', '2021-08-16 12:41:39', '2021-08-16 12:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assign_subject_id` int(11) DEFAULT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `id_no`, `year_id`, `class_id`, `assign_subject_id`, `exam_type_id`, `marks`, `created_at`, `updated_at`) VALUES
(48, 6, '20220004', 6, 1, 1, 1, 68, '2021-08-24 13:13:08', '2021-08-24 13:13:08'),
(49, 7, '20220007', 6, 1, 1, 1, 78, '2021-08-24 13:13:08', '2021-08-24 13:13:08'),
(50, 8, '20220008', 6, 1, 1, 1, 89, '2021-08-24 13:13:08', '2021-08-24 13:13:08'),
(51, 9, '20220009', 6, 1, 1, 1, 98, '2021-08-24 13:13:08', '2021-08-24 13:13:08'),
(52, 10, '20220010', 6, 1, 1, 1, 89, '2021-08-24 13:13:08', '2021-08-24 13:13:08'),
(53, 11, '20220011', 6, 2, 6, 1, 48, '2021-08-24 13:15:03', '2021-08-24 13:15:03'),
(54, 6, '20220004', 6, 1, 2, 1, 48, '2021-08-24 13:15:49', '2021-08-24 13:15:49'),
(55, 7, '20220007', 6, 1, 2, 1, 98, '2021-08-24 13:15:49', '2021-08-24 13:15:49'),
(56, 8, '20220008', 6, 1, 2, 1, 98, '2021-08-24 13:15:49', '2021-08-24 13:15:49'),
(57, 9, '20220009', 6, 1, 2, 1, 99, '2021-08-24 13:15:49', '2021-08-24 13:15:49'),
(58, 10, '20220010', 6, 1, 2, 1, 99, '2021-08-24 13:15:49', '2021-08-24 13:15:49'),
(59, 18, '20220018', 6, 9, 28, 1, 100, '2021-08-24 13:16:07', '2021-08-24 13:16:07'),
(60, 6, '20220004', 6, 1, 3, 1, 29, '2021-08-24 14:06:08', '2021-08-24 14:06:08'),
(61, 7, '20220007', 6, 1, 3, 1, 40, '2021-08-24 14:06:08', '2021-08-24 14:06:08'),
(62, 8, '20220008', 6, 1, 3, 1, 48, '2021-08-24 14:06:08', '2021-08-24 14:06:08'),
(63, 9, '20220009', 6, 1, 3, 1, 100, '2021-08-24 14:06:08', '2021-08-24 14:06:08'),
(64, 10, '20220010', 6, 1, 3, 1, 100, '2021-08-24 14:06:08', '2021-08-24 14:06:08'),
(65, 6, '20220004', 6, 1, 4, 1, 32, '2021-08-24 14:06:38', '2021-08-24 14:06:38'),
(66, 7, '20220007', 6, 1, 4, 1, 98, '2021-08-24 14:06:38', '2021-08-24 14:06:38'),
(67, 8, '20220008', 6, 1, 4, 1, 99, '2021-08-24 14:06:38', '2021-08-24 14:06:38'),
(68, 9, '20220009', 6, 1, 4, 1, 48, '2021-08-24 14:06:39', '2021-08-24 14:06:39'),
(69, 10, '20220010', 6, 1, 4, 1, 23, '2021-08-24 14:06:39', '2021-08-24 14:06:39'),
(75, 6, '20220004', 6, 1, 5, 1, 39, '2021-08-24 14:11:00', '2021-08-24 14:11:00'),
(76, 7, '20220007', 6, 1, 5, 1, 48, '2021-08-24 14:11:00', '2021-08-24 14:11:00'),
(77, 8, '20220008', 6, 1, 5, 1, 100, '2021-08-24 14:11:00', '2021-08-24 14:11:00'),
(78, 9, '20220009', 6, 1, 5, 1, 98, '2021-08-24 14:11:00', '2021-08-24 14:11:00'),
(79, 10, '20220010', 6, 1, 5, 1, 99, '2021-08-24 14:11:00', '2021-08-24 14:11:00'),
(80, 33, '20220025', 6, 11, 38, 1, 99, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(81, 34, '20220034', 6, 11, 38, 1, 98, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(82, 35, '20220035', 6, 11, 38, 1, 28, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(83, 36, '20220036', 6, 11, 38, 1, 48, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(84, 37, '20220037', 6, 11, 38, 1, 23, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(85, 38, '20220038', 6, 11, 38, 1, 68, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(86, 39, '20220039', 6, 11, 38, 1, 98, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(87, 40, '20220040', 6, 11, 38, 1, 78, '2021-08-24 18:08:01', '2021-08-24 18:08:01'),
(88, 33, '20220025', 6, 11, 39, 1, 48, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(89, 34, '20220034', 6, 11, 39, 1, 23, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(90, 35, '20220035', 6, 11, 39, 1, 99, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(91, 36, '20220036', 6, 11, 39, 1, 100, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(92, 37, '20220037', 6, 11, 39, 1, 99, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(93, 38, '20220038', 6, 11, 39, 1, 98, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(94, 39, '20220039', 6, 11, 39, 1, 23, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(95, 40, '20220040', 6, 11, 39, 1, 98, '2021-08-24 18:11:06', '2021-08-24 18:11:06'),
(96, 33, '20220025', 6, 11, 40, 1, 48, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(97, 34, '20220034', 6, 11, 40, 1, 99, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(98, 35, '20220035', 6, 11, 40, 1, 48, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(99, 36, '20220036', 6, 11, 40, 1, 48, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(100, 37, '20220037', 6, 11, 40, 1, 40, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(101, 38, '20220038', 6, 11, 40, 1, 48, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(102, 39, '20220039', 6, 11, 40, 1, 99, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(103, 40, '20220040', 6, 11, 40, 1, 23, '2021-08-24 18:12:25', '2021-08-24 18:12:25'),
(112, 33, '20220025', 6, 11, 41, 1, 40, '2021-08-24 18:13:32', '2021-08-24 18:13:32'),
(113, 34, '20220034', 6, 11, 41, 1, 23, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(114, 35, '20220035', 6, 11, 41, 1, 26, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(115, 36, '20220036', 6, 11, 41, 1, 28, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(116, 37, '20220037', 6, 11, 41, 1, 23, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(117, 38, '20220038', 6, 11, 41, 1, 32, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(118, 39, '20220039', 6, 11, 41, 1, 21, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(119, 40, '20220040', 6, 11, 41, 1, 1, '2021-08-24 18:13:33', '2021-08-24 18:13:33'),
(120, 33, '20220025', 6, 11, 42, 1, 34, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(121, 34, '20220034', 6, 11, 42, 1, 45, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(122, 35, '20220035', 6, 11, 42, 1, 65, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(123, 36, '20220036', 6, 11, 42, 1, 74, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(124, 37, '20220037', 6, 11, 42, 1, 48, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(125, 38, '20220038', 6, 11, 42, 1, 10, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(126, 39, '20220039', 6, 11, 42, 1, 24, '2021-08-24 18:14:18', '2021-08-24 18:14:18'),
(127, 40, '20220040', 6, 11, 42, 1, 18, '2021-08-24 18:14:18', '2021-08-24 18:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Morning', '2021-08-14 16:15:16', '2021-08-16 12:42:17'),
(2, 'Evening', '2021-08-16 12:42:26', '2021-08-16 12:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `student_years`
--

CREATE TABLE `student_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_years`
--

INSERT INTO `student_years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, '2018', '2021-08-16 12:40:10', '2021-08-16 12:40:10'),
(3, '2019', '2021-08-16 12:40:18', '2021-08-16 12:40:18'),
(4, '2020', '2021-08-16 12:40:24', '2021-08-16 12:40:24'),
(5, '2021', '2021-08-16 12:40:32', '2021-08-16 12:40:32'),
(6, '2022', '2021-08-16 12:40:47', '2021-08-16 12:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student,Employee,Admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of sotware,operator=computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Imran khan', 'admin@gmail.com', NULL, '$2y$10$iunGwx5gSiWvs9RaN8Nqr.FnApFLmY7AbVieecZWzRl0ab/bh/85m', NULL, NULL, '03439858580', 'mathra peshawar, kpk, pakistan', 'Male', '202108160536profile.jpg', NULL, NULL, NULL, NULL, NULL, '12345678', 'Admin', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 12:34:17', '2021-08-16 13:13:32'),
(3, 'Student', 'Imran khan', NULL, NULL, '$2y$10$8AKbFCG/epzNcccEDXAZNurqwJtSLM7xCzGVgYNhh5aXFbjXI/SbK', NULL, NULL, '03439858580', 'mathra peshawar', 'Male', '202108140919images (18).jpeg', 'Imran', 'Kashamala tror mor', 'Islam', '20210001', '2021-08-16', '3851', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-14 16:19:00', '2021-08-14 16:19:00'),
(5, 'Admin', 'Luqman', 'luqman.labra@gmail.com', NULL, '$2y$10$OckQGI26JKjl4A1yTbSPYuR0hPFLBMcO.xEKiqNbVHLQluUGMwjwa', NULL, NULL, '65564564564', 'jfdjkjdklasfdfsa dsafd', 'Male', '202108180632images (23).jpeg', NULL, NULL, NULL, NULL, NULL, '644', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 13:29:36', '2021-08-18 13:32:54'),
(6, 'Student', 'Ali', NULL, NULL, '$2y$10$gsYaB5O.sN/DmGFaIy5dYOt89mN6AgVl.I0RNbKIYNkhCiSJrWgye', NULL, NULL, '92 885 9594684', 'Peshawar, KPK, Pakistan', 'Male', '202108160701images (25).jpeg', 'Aslam', 'Sara', 'Islam', '20220004', '2016-12-17', '1777', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:01:59', '2021-08-16 14:01:59'),
(7, 'Student', 'Abdullah', NULL, NULL, '$2y$10$IDNw.gT8SauI5o/g9ehEIupjd2WjdCJ3zOrrNITVbEwGUxGaKEpH2', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Male', '202108160706images (19).jpeg', 'Aslam', 'Sana', 'Islam', '20220007', '2016-12-18', '2844', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:04:02', '2021-08-16 14:06:08'),
(8, 'Student', 'Amna', NULL, NULL, '$2y$10$LOV6NlJESI0dsZpGPcd9QuQ0s9LOx.wLlc9Xy6YKG4Lrt.s/X7kqW', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Male', '202108160704images (7).jpeg', 'Aslam Ali', 'sana gul', 'Islam', '20220008', '2016-12-12', '5318', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:04:41', '2021-08-16 14:04:41'),
(10, 'Student', 'Zeerak', NULL, NULL, '$2y$10$uvOnwe8z8iytWC9VHgEmMO/KFo.kvZbkYRBHndIa1MgIwNwF4QqUe', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108160705images (18).jpeg', 'Shah', 'Sana Khan', 'Islam', '20220010', '2016-12-12', '2716', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:05:48', '2021-08-16 14:05:48'),
(16, 'Student', 'Hannah', NULL, NULL, '$2y$10$xquf.VkRh5L7IsVQh9CIW.e7yRmGKBeARNsnZX9DC5zF5LcNR/pmi', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108160708Screenshot_2020-04-26-20-14-40-1.png', 'Shah', 'Miss Khan', 'Islam', '20220016', '2016-12-12', '4931', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:08:17', '2021-08-16 14:08:17'),
(17, 'Student', 'Hannah', NULL, NULL, '$2y$10$l4fJS8ppn2Grobh0DzoMteVTcWtq6RqRdd8vifzdcH8O97l7aFkSK', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108160708images (22).jpeg', 'Shah', 'Miss Khan', 'Islam', '20220017', '2016-12-12', '6820', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:08:25', '2021-08-16 14:08:25'),
(18, 'Student', 'Hannah', NULL, NULL, '$2y$10$q4bTXWcEwpdx9lrJhKlAa.3ND6Gp3TdvJm62Ipn5Cz6tdfMkpmswW', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108160708images (20).jpeg', 'Shah', 'Miss Khan', 'Islam', '20220018', '2016-12-12', '859', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:08:37', '2021-08-16 14:08:37'),
(19, 'Student', 'Kasmala', NULL, NULL, '$2y$10$bFcsopi/GPrjUD4RGXzmbuUqic0iqq/WM2wJSRSvTe9sCSzV12vJW', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108160713unnamed.jpg', 'Shah', 'Miss Khan', 'Islam', '20220019', '2016-12-12', '7128', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:08:50', '2021-08-16 14:13:42'),
(21, 'Student', 'Abdullah', NULL, NULL, '$2y$10$j0gKiYb52affw/zmroTAleq4FmswzNOstDynm3.fRYykg8v26VxD.', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Male', '202108160710images (21).jpeg', 'Shah i', 'Miss Khan', 'Islam', '20220021', '2016-12-12', '8132', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:10:09', '2021-08-16 14:10:09'),
(22, 'Student', 'Imran Khan', NULL, NULL, '$2y$10$ZIKWFTrDLwSUBIUE3s7R6OKvoWIHvS1ZShuFYMr3q9pZmLGIUSC2C', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Male', '202108160710images (9).jpeg', 'Shah i', 'Miss Khan', 'Islam', '20220022', '2016-12-12', '9260', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:10:28', '2021-08-16 14:10:28'),
(23, 'Student', 'Ashraf', NULL, NULL, '$2y$10$AQ8Z.qUE8rZbmaECeuUQDOqTRGQT2DmtqvIoVt2hVaKo1DodvvR3O', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Male', '202108160710images (22).jpeg', 'Shah i', 'Miss Khan', 'Islam', '20220023', '2016-12-12', '3183', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:10:44', '2021-08-16 14:10:44'),
(24, 'Student', 'Maryam', NULL, NULL, '$2y$10$IIGlE1H6JG08fkKr8ts8b.AVoQUQQt5gONZayoUpI5gKFdJ1mzB86', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108160711images (16).jpeg', 'Shah i', 'Miss Khan', 'Islam', '20220024', '2016-12-12', '1573', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-16 14:11:02', '2021-08-16 14:11:02'),
(25, 'employee', 'Imran khan', NULL, NULL, '$2y$10$7955hJ6kSLtjQ6oSojKW7O5.Roe3Y4gdWv5q7zom.KqyrgraNA1v.', NULL, NULL, '03439858580', 'mathra peshawar', 'Male', '202108160847profile.jpg', 'Fazal', 'Miss Khan', 'Islam', '2018010001', '2001-06-06', '644', NULL, '2018-01-16', 1, 100000, 1, NULL, NULL, NULL, '2021-08-16 15:47:21', '2021-08-16 15:57:21'),
(26, 'employee', 'Shams khan', NULL, NULL, '$2y$10$PAmi8UmSEfrfmlcSu/MZMudQ0ZKnqR3chd4rYfwaW.BthTF.brMaq', NULL, NULL, '03439858580', 'mathra peshawar', 'Male', '202108160848images (0).jpeg', 'Fazaluldin', 'Miss Khan', 'Islam', '2018010026', '2001-06-16', '3631', NULL, '2018-01-16', 2, 65000, 1, NULL, NULL, NULL, '2021-08-16 15:48:17', '2021-08-16 15:51:03'),
(27, 'employee', 'Kamran khan', NULL, NULL, '$2y$10$PvjeCQoGarpdb7nLRt/.QOoIQ6qMToJxpnASstegr798jOtOf4eJO', NULL, NULL, '03439858580', 'mathra peshawar', 'Male', '202108160848images (20).jpeg', 'Fazaluldin', 'Miss Khan', 'Islam', '2018010027', '2001-06-16', '9614', NULL, '2018-01-16', 4, 21000, 1, NULL, NULL, NULL, '2021-08-16 15:48:51', '2021-08-16 15:57:55'),
(28, 'employee', 'Misses Meara Khan', NULL, NULL, '$2y$10$K8PY5k8sL36yxsmvgMYXFun6Qhshjb/k2uek7g.Ve9DZoWato1DUi', NULL, NULL, '03439858580', 'mathra peshawar', 'Female', '202108160849images (18).jpeg', 'Fazaluldin', 'Miss Khan', 'Islam', '2018010028', '2001-06-16', '1583', NULL, '2018-01-16', 4, 20000, 1, NULL, NULL, NULL, '2021-08-16 15:49:27', '2021-08-16 15:49:27'),
(29, 'employee', 'Misses Kalsom Khan', NULL, NULL, '$2y$10$N/IUgu7iUXg.Dc6mmkuOgeBBpIIcxpuceS6Ia54HgbSvHhyK5bP3q', NULL, NULL, '03439858580', 'mathra peshawar', 'Female', '202108160849images (17).jpeg', 'Fazaluldin', 'Miss Khan', 'Islam', '2018010029', '2001-06-16', '7841', NULL, '2018-01-16', 4, 20000, 1, NULL, NULL, NULL, '2021-08-16 15:49:44', '2021-08-16 15:49:44'),
(30, 'employee', 'Misses Zubaida Khan', NULL, NULL, '$2y$10$leTD02uWjvz3HvuT0llPm..Mhhf6tGWgggmJALSA6ABmedpGBJV/C', NULL, NULL, '03439858580', 'mathra peshawar', 'Female', '202108160849images (17).jpeg', 'Fazaluldin', 'Miss Khan', 'Islam', '2018010030', '2001-06-16', '619', NULL, '2018-01-16', 4, 20000, 1, NULL, NULL, NULL, '2021-08-16 15:49:57', '2021-08-16 15:49:57'),
(31, 'employee', 'Misses ESha Khan', NULL, NULL, '$2y$10$AA1IpkbWFj5iSkrfqKK.8eO8iA2dFHlRDbrUCs3pBwdyDXIEn7u/m', NULL, NULL, '03439858580', 'mathra peshawar', 'Female', '202108160850images (19).jpeg', 'Fazaluldin', 'Miss Khan', 'Islam', '2018010031', '2001-06-16', '3540', NULL, '2018-01-16', 4, 20100, 1, NULL, NULL, NULL, '2021-08-16 15:50:10', '2021-08-17 22:40:53'),
(32, 'Admin', 'Naseer', 'nsr@gmail.com', NULL, '$2y$10$m6S8AhkuwH2k07/u4sfXZOmbtshvmsddhoO3M..nhJCQz0Fr4EeGK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3809', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-17 17:38:56', '2021-08-17 17:54:33'),
(33, 'Student', 'Imran Khan', NULL, NULL, '$2y$10$y4zrj7DXw6G5whqdNSY8xuh5E8Hy1zXbo0aWgjxzn0a87a7LXa/3a', NULL, NULL, '+92 343 9858580', 'Mathra warsak road Peshawar', 'Male', '202108241101images (4).jpeg', 'Fazal M.Khan', 'Ammi Jan', 'Islam', '20220025', '2002-02-10', '9494', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:01:35', '2021-08-24 18:01:35'),
(34, 'Student', 'Abdullah', NULL, NULL, '$2y$10$iTRi9MDh.NHMN/oMKtHh/u8IzXmz3EPT.GEElDnRzh8fSB4ArhWUm', NULL, NULL, '+92 343 0000000', 'Mathra warsak road Peshawar', 'Male', '202108241102images (0).jpeg', 'Fazal M.Khan', 'Ammi Jan', 'Islam', '20220034', '2002-02-10', '3686', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:02:07', '2021-08-24 18:02:07'),
(35, 'Student', 'Owais', NULL, NULL, '$2y$10$uU/c2jMuphkg9HCvITq2qe3jZneHccvqqCz5nmWlHNVWa4orKkDIq', NULL, NULL, '+92 343 0000000', 'Mathra warsak road Peshawar', 'Male', '202108241102download.jpeg', 'Fazal M.Khan', 'Ammi Jan', 'Islam', '20220035', '2002-02-10', '2735', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:02:29', '2021-08-24 18:02:29'),
(36, 'Student', 'Shams khan', NULL, NULL, '$2y$10$Dg9dNEFKk21jPeRElQToV.oSaHNUV/fBWH42k/ON66we8hA6fbppC', NULL, NULL, '+92 343 0000000', 'Mathra warsak road Peshawar', 'Male', '202108241102images (21).jpeg', 'Fazal M.Khan', 'Ammi Jan', 'Islam', '20220036', '2002-02-10', '8611', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:02:41', '2021-08-24 18:02:41'),
(37, 'Student', 'Amna Gul', NULL, NULL, '$2y$10$qmG7owb.zAoIJEFGd3jz/O16TRa9IsvhR55a4Ztkh7HsIxvl5/V1m', NULL, NULL, '+92 343 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108241103images (18).jpeg', 'Fazal M.Khan', 'Ammi Jan', 'Hindu', '20220037', '2002-02-10', '8535', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:03:28', '2021-08-24 18:03:28'),
(38, 'Student', 'Sanya mirza', NULL, NULL, '$2y$10$1LVcyX49yZyFWF6ZZpb4R.inLSyqnDJqZowfPWQZmfclRsauf/OXS', NULL, NULL, '+92 343 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108241103images (19).jpeg', 'Fazal M.Khan', 'Ammi Jan', 'Hindu', '20220038', '2002-02-10', '6568', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:03:45', '2021-08-24 18:03:45'),
(44, 'Student', 'Hinnah', NULL, NULL, '$2y$10$3vNyBXpbaq3HLvtqy4yO1e.iaK0//E6T4TMtXdf0y0wq8H9C2ytpC', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', NULL, 'Shah', 'Miss Khan', 'Islam', '20220043', '2016-12-12', '6237', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 18:57:59', '2021-08-24 18:57:59'),
(45, 'Student', 'Alsa', NULL, NULL, '$2y$10$ekQWG4zQUSp/Iq0hRTGoduX0jSMfQL4M5YgUj2YTouQ379o8eFTWG', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108241202images (18).jpeg', 'Shah', 'Miss Khan', 'Islam', '20220045', '2016-12-12', '2953', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 19:02:16', '2021-08-24 19:02:16'),
(48, 'Student', 'Alsa', NULL, NULL, '$2y$10$oLLMFZVac1Dtgqh1bdP0QOCtbZCjB1s/IX5GUvBRCZuhRDujM0J56', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108241232images (19).jpeg', 'Shah', 'Miss Khan', 'Christan', '20220046', '2016-12-12', '2080', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 19:32:47', '2021-08-24 19:32:47'),
(49, 'Student', 'Imran khan', NULL, NULL, '$2y$10$fu/IgygP9B/gbSBXY7x8n.jP/KqEZIgQJce5kIUjma9DVaABzmlJq', NULL, NULL, '03439858580', 'mathra peshawar', 'Male', '202108241233images (20).jpeg', 'Shah', 'Ammi Jan', 'Islam', '20220049', '1970-01-07', '6551', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 19:33:24', '2021-08-24 19:33:24'),
(50, 'Student', 'Alsa', NULL, NULL, '$2y$10$02UlMgQYA9bZ34Y/qSRsCO2ruPsq58WSs1Ae0nLD8nbpiWRDrTaV.', NULL, NULL, '92 000 0000000', 'Peshawar, KPK, Pakistan', 'Female', '202108241631images (17).jpeg', 'Aslam Ali', 'Sana Khan', 'Islam', '20220050', '2016-12-12', '8930', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-08-24 23:31:36', '2021-08-24 23:31:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
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
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_subjects_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `student_years`
--
ALTER TABLE `student_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_years_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_years`
--
ALTER TABLE `student_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
