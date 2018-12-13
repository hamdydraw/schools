-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2018 at 12:05 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sasbit_school_doraluloom`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicholidays`
--

CREATE TABLE `academicholidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('day','date') COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academicholidays',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `academic_start_date` date NOT NULL,
  `academic_end_date` date NOT NULL,
  `total_semesters` tinyint(2) DEFAULT '1',
  `show_in_list` tinyint(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`id`, `academic_year_title`, `slug`, `academic_start_date`, `academic_end_date`, `total_semesters`, `show_in_list`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, '2018-2019', '2018-2019891', '2018-05-01', '2019-05-15', 2, 1, '2017-08-09 01:29:03', '2018-05-23 10:15:42', '2.90.159.160', NULL, NULL, 1790, 2, 'academics', 1),
(6, '2019-2020', '2019-20201546', '2018-01-09', '2019-05-23', 2, 0, '2017-12-24 00:43:45', '2018-05-23 09:57:49', '51.36.107.183', NULL, NULL, 1790, 2, 'academics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academics_dues`
--

CREATE TABLE `academics_dues` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics_dues',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics_dues`
--

INSERT INTO `academics_dues` (`id`, `title`, `slug`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(11, 'الرسوم الدراسية', '27bfe303875d42b7ab1165fb1c003bd556f866a9233', NULL, '2018-04-06 08:40:51', '2018-04-06 09:07:10', NULL, '51.39.71.175', 1790, NULL, 1, 'academics_dues', 1),
(12, 'المواصلات.', '47653c453dbe3e326b4bd41e11ff06e86aad8d1d1318', NULL, '2018-04-06 08:41:04', '2018-04-08 03:32:45', '51.36.99.186', '51.39.71.175', 1790, 1790, 2, 'academics_dues', 1),
(13, 'الزي الموحد.', 'a4f30a1314ec6a6b7ef774cd731601c132136340154', NULL, '2018-04-06 08:41:16', '2018-04-11 07:52:56', '51.36.108.22', '51.39.71.175', 1790, 1790, 2, 'academics_dues', 1),
(14, 'الأنشطة', '634e2ff4aef4a9f1203e9cb416fc9484bc1d5ba3402', NULL, '2018-04-06 08:41:30', '2018-04-07 12:11:34', '51.36.99.186', '51.39.71.175', 1790, 1790, 2, 'academics_dues', 1),
(15, 'الخدمات الالكترونية', '22d9adecdfe58805a10584a36eabb19968eea5e53029', NULL, '2018-04-07 12:08:49', '2018-04-07 12:21:29', '51.36.99.186', '51.36.99.186', 1790, 1790, 2, 'academics_dues', 1),
(16, 'كتب دراسية', 'a8c315f4598e2100d26ffd8a7fa753daac192d2d869', NULL, '2018-05-23 10:18:11', '2018-05-23 10:18:11', NULL, '2.90.159.160', 1790, NULL, 1, 'academics_dues', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academics_dues_pivot`
--

CREATE TABLE `academics_dues_pivot` (
  `id` int(11) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_parent` bigint(20) UNSIGNED NOT NULL,
  `due_id` int(11) UNSIGNED DEFAULT NULL,
  `due_value` int(8) DEFAULT NULL,
  `due_type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics_dues_pivot',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics_semesters`
--

CREATE TABLE `academics_semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `sem_num` int(3) NOT NULL,
  `sem_start_date` datetime NOT NULL,
  `sem_end_date` datetime NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics_semesters',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics_semesters`
--

INSERT INTO `academics_semesters` (`id`, `academic_id`, `sem_num`, `sem_start_date`, `sem_end_date`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`, `record_status`, `table_name`, `branch_id`) VALUES
(39, 6, 1, '2018-09-01 00:00:00', '2019-01-14 00:00:00', NULL, '51.36.107.183', 1790, NULL, '2018-05-22 23:27:49', '0000-00-00 00:00:00', 1, 'academics_semesters', 1),
(40, 6, 2, '2019-01-15 00:00:00', '2019-05-23 00:00:00', NULL, '51.36.107.183', 1790, NULL, '2018-05-22 23:27:49', '0000-00-00 00:00:00', 1, 'academics_semesters', 1),
(47, 1, 1, '2018-05-01 00:00:00', '2019-04-11 00:00:00', NULL, '2.90.159.160', 1790, NULL, '2018-05-22 23:45:42', '0000-00-00 00:00:00', 1, 'academics_semesters', 1),
(48, 1, 2, '2019-04-12 00:00:00', '2019-05-15 00:00:00', NULL, '2.90.159.160', 1790, NULL, '2018-05-22 23:45:42', '0000-00-00 00:00:00', 1, 'academics_semesters', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academic_course`
--

CREATE TABLE `academic_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academic_course',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_course`
--

INSERT INTO `academic_course` (`id`, `academic_id`, `course_id`, `course_parent_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(352, 6, 17, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(353, 6, 18, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(354, 6, 19, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(355, 6, 20, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(356, 6, 21, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(357, 6, 22, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(358, 6, 23, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(359, 6, 24, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(360, 6, 25, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(361, 6, 26, 0, '2018-04-22 07:47:13', '2018-04-22 07:47:13', NULL, '51.36.68.102', 1790, NULL, 1, 'academic_course', 1),
(442, 1, 15, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(443, 1, 16, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(444, 1, 17, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(445, 1, 18, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(446, 1, 19, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(447, 1, 20, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(448, 1, 21, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(449, 1, 22, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(450, 1, 23, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(451, 1, 24, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(452, 1, 25, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(453, 1, 26, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(454, 1, 27, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1),
(455, 1, 57, 0, '2018-08-26 00:51:32', '2018-10-31 07:31:05', NULL, '::1', 1790, NULL, 3, 'academic_course', 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activity_log',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'authors',
  `branch_id` smallint(6) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `gender`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'احسان عبد القدوس', 'ahsan-aabd-alkdos660', 'male', '', 1790, '2018-02-22 07:22:00', '2018-03-26 06:35:29', NULL, '51.39.70.14', 1790, NULL, 2, 'authors', 1);

-- --------------------------------------------------------

--
-- Table structure for table `autocall_requests`
--

CREATE TABLE `autocall_requests` (
  `id` int(11) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `request_date` date NOT NULL,
  `request_status` int(11) NOT NULL COMMENT '0 - > new request 1 -> student is called ',
  `leave_status` int(11) NOT NULL COMMENT '0 - > student is inside school 1 -> student is left',
  `autocall_counter` int(11) DEFAULT '0',
  `leave_time` time DEFAULT NULL,
  `request_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_bin NOT NULL DEFAULT 'autocall_requests'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_type` enum('questions') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'questions',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bookmarks',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `slug` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'branch'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `slug`, `name`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`) VALUES
(1, 'sasbit_school123', 'مدارس الأنجال الاهلية بنين', '2018-04-09 08:08:13', '2018-06-05 02:04:49', '82.147.193.156', NULL, 1790, 1790, 2, 'branch'),
(2, 'second-school526-c24cd50742c9511ffad669cf0f06f28da949f7ef', 'مدارس الأنجال الاهلية بنات', '2018-04-09 16:59:18', '2018-04-28 10:15:21', '51.39.99.5', '::1', 1790, 1790, 2, 'branch');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'categories',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `slug`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'عربي', 'Active', 'aarby2490', '2017-10-12 07:41:34', '2018-08-05 22:34:33', '37.124.118.74', NULL, NULL, 1790, 2, 'categories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `certificateissues`
--

CREATE TABLE `certificateissues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `roll_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `academic_year_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `certificate_data` text COLLATE utf8_unicode_ci,
  `certificate_type` enum('bonafide','tc') COLLATE utf8_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issued_by` bigint(20) UNSIGNED NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semister` int(11) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'certificateissues',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificatetemplates`
--

CREATE TABLE `certificatetemplates` (
  `id` int(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `type` enum('content','header','footer','independent') NOT NULL,
  `updated_by` int(50) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'certificatetemplates',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'countries',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`, `record_status`, `table_name`, `branch_id`) VALUES
(251, 'SA', 'Saudi_Arabia', NULL, NULL, 0, 0, '2018-02-22 03:00:03', '2018-02-20 14:44:14', 1, 'countries', 1),
(252, 'AL', 'Albania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(253, 'DZ', 'Algeria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(254, 'DS', 'American_Samoa', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(255, 'AD', 'Andorra', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(256, 'AO', 'Angola', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(257, 'AI', 'Anguilla', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(258, 'AQ', 'Antarctica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(259, 'AG', 'Antigua_and_Barbuda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(260, 'AR', 'Argentina', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(261, 'AM', 'Armenia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(262, 'AW', 'Aruba', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(263, 'AU', 'Australia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(264, 'AT', 'Austria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(265, 'AZ', 'Azerbaijan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(266, 'BS', 'Bahamas', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(267, 'BH', 'Bahrain', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(268, 'BD', 'Bangladesh', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(269, 'BB', 'Barbados', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(270, 'BY', 'Belarus', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(271, 'BE', 'Belgium', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(272, 'BZ', 'Belize', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(273, 'BJ', 'Benin', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(274, 'BM', 'Bermuda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(275, 'BT', 'Bhutan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(276, 'BO', 'Bolivia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(277, 'BA', 'Bosnia_and_Herzegovina', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(278, 'BW', 'Botswana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(279, 'BV', 'Bouvet_Island', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(280, 'BR', 'Brazil', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(281, 'IO', 'British_Indian_Ocean_Territory', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(282, 'BN', 'Brunei_Darussalam', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(283, 'BG', 'Bulgaria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(284, 'BF', 'Burkina_Faso', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(285, 'BI', 'Burundi', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(286, 'KH', 'Cambodia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(287, 'CM', 'Cameroon', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(288, 'CA', 'Canada', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(289, 'CV', 'Cape_Verde', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(290, 'KY', 'Cayman_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(291, 'CF', 'Central_African_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(292, 'TD', 'Chad', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(293, 'CL', 'Chile', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(294, 'CN', 'China', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(295, 'CX', 'Christmas_Island', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(296, 'CC', 'Cocos_Keeling_Islands', NULL, NULL, 0, 0, '2018-02-22 03:50:23', '2018-02-20 14:44:14', 1, 'countries', 1),
(297, 'CO', 'Colombia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(298, 'KM', 'Comoros', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(299, 'CG', 'Congo', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(300, 'CK', 'Cook_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(301, 'CR', 'Costa_Rica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(302, 'HR', 'Croatia_Hrvatska', NULL, NULL, 0, 0, '2018-02-22 03:50:41', '2018-02-20 14:44:14', 1, 'countries', 1),
(303, 'CU', 'Cuba', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(304, 'CY', 'Cyprus', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(305, 'CZ', 'Czech_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(306, 'DK', 'Denmark', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(307, 'DJ', 'Djibouti', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(308, 'DM', 'Dominica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(309, 'DO', 'Dominican_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(310, 'TP', 'East_Timor', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(311, 'EC', 'Ecuador', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(312, 'EG', 'Egypt', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(313, 'SV', 'El_Salvador', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(314, 'GQ', 'Equatorial_Guinea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(315, 'ER', 'Eritrea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(316, 'EE', 'Estonia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(317, 'ET', 'Ethiopia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(318, 'FK', 'Falkland_Islands_Malvinas', NULL, NULL, 0, 0, '2018-02-22 03:50:48', '2018-02-20 14:44:14', 1, 'countries', 1),
(319, 'FO', 'Faroe_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(320, 'FJ', 'Fiji', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(321, 'FI', 'Finland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(322, 'FR', 'France', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(323, 'FX', 'France_Metropolitan', NULL, NULL, 0, 0, '2018-02-22 03:59:58', '2018-02-20 14:44:14', 1, 'countries', 1),
(324, 'GF', 'French_Guiana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(325, 'PF', 'French_Polynesia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(326, 'TF', 'French_Southern_Territories', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(327, 'GA', 'Gabon', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(328, 'GM', 'Gambia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(329, 'GE', 'Georgia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(330, 'DE', 'Germany', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(331, 'GH', 'Ghana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(332, 'GI', 'Gibraltar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(333, 'GK', 'Guernsey', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(334, 'GR', 'Greece', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(335, 'GL', 'Greenland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(336, 'GD', 'Grenada', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(337, 'GP', 'Guadeloupe', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(338, 'GU', 'Guam', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(339, 'GT', 'Guatemala', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(340, 'GN', 'Guinea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(341, 'GW', 'Guinea_Bissau', NULL, NULL, 0, 0, '2018-02-22 04:00:20', '2018-02-20 14:44:14', 1, 'countries', 1),
(342, 'GY', 'Guyana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(343, 'HT', 'Haiti', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(344, 'HM', 'Heard_and_Mc_Donald_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(345, 'HN', 'Honduras', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(346, 'HK', 'Hong_Kong', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(347, 'HU', 'Hungary', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(348, 'IS', 'Iceland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(349, 'IN', 'India', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(350, 'IM', 'Isle_of_Man', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(351, 'ID', 'Indonesia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(352, 'IR', 'Iran_Islamic_Republic_of', NULL, NULL, 0, 0, '2018-02-22 03:51:11', '2018-02-20 14:44:14', 1, 'countries', 1),
(353, 'IQ', 'Iraq', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(354, 'IE', 'Ireland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(355, 'IL', 'Israel', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(356, 'IT', 'Italy', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(357, 'CI', 'Ivory_Coast', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(358, 'JE', 'Jersey', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(359, 'JM', 'Jamaica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(360, 'JP', 'Japan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(361, 'JO', 'Jordan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(362, 'KZ', 'Kazakhstan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(363, 'KE', 'Kenya', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(364, 'KI', 'Kiribati', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(365, 'KP', 'Korea_Democratic_Peoples_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:01:16', '2018-02-20 14:44:14', 1, 'countries', 1),
(366, 'KR', 'Korea_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:01:21', '2018-02-20 14:44:14', 1, 'countries', 1),
(367, 'XK', 'Kosovo', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(368, 'KW', 'Kuwait', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(369, 'KG', 'Kyrgyzstan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(370, 'LA', 'Lao_Peoples_Democratic_Republic', NULL, NULL, 0, 0, '2018-02-22 03:51:27', '2018-02-20 14:44:14', 1, 'countries', 1),
(371, 'LV', 'Latvia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(372, 'LB', 'Lebanon', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(373, 'LS', 'Lesotho', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(374, 'LR', 'Liberia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(375, 'LY', 'Libyan_Arab_Jamahiriya', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(376, 'LI', 'Liechtenstein', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(377, 'LT', 'Lithuania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(378, 'LU', 'Luxembourg', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(379, 'MO', 'Macau', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(380, 'MK', 'Macedonia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(381, 'MG', 'Madagascar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(382, 'MW', 'Malawi', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(383, 'MY', 'Malaysia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(384, 'MV', 'Maldives', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(385, 'ML', 'Mali', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(386, 'MT', 'Malta', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(387, 'MH', 'Marshall_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(388, 'MQ', 'Martinique', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(389, 'MR', 'Mauritania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(390, 'MU', 'Mauritius', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(391, 'TY', 'Mayotte', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(392, 'MX', 'Mexico', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(393, 'FM', 'Micronesia_Federated_States_of', NULL, NULL, 0, 0, '2018-02-22 04:02:08', '2018-02-20 14:44:14', 1, 'countries', 1),
(394, 'MD', 'Moldova_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:02:12', '2018-02-20 14:44:14', 1, 'countries', 1),
(395, 'MC', 'Monaco', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(396, 'MN', 'Mongolia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(397, 'ME', 'Montenegro', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(398, 'MS', 'Montserrat', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(399, 'MA', 'Morocco', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(400, 'MZ', 'Mozambique', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(401, 'MM', 'Myanmar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(402, 'NA', 'Namibia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(403, 'NR', 'Nauru', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(404, 'NP', 'Nepal', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(405, 'NL', 'Netherlands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(406, 'AN', 'Netherlands_Antilles', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(407, 'NC', 'New_Caledonia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(408, 'NZ', 'New_Zealand', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(409, 'NI', 'Nicaragua', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(410, 'NE', 'Niger', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(411, 'NG', 'Nigeria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(412, 'NU', 'Niue', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(413, 'NF', 'Norfolk_Island', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(414, 'MP', 'Northern_Mariana_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(415, 'NO', 'Norway', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(416, 'OM', 'Oman', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(417, 'PK', 'Pakistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(418, 'PW', 'Palau', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(419, 'PS', 'Palestine', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(420, 'PA', 'Panama', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(421, 'PG', 'Papua_New_Guinea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(422, 'PY', 'Paraguay', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(423, 'PE', 'Peru', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(424, 'PH', 'Philippines', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(425, 'PN', 'Pitcairn', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(426, 'PL', 'Poland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(427, 'PT', 'Portugal', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(428, 'PR', 'Puerto_Rico', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(429, 'QA', 'Qatar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(430, 'RE', 'Reunion', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(431, 'RO', 'Romania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(432, 'RU', 'Russian_Federation', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(433, 'RW', 'Rwanda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(434, 'KN', 'Saint_Kitts_and_Nevis', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(435, 'LC', 'Saint_Lucia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(436, 'VC', 'Saint_Vincent_and_the_Grenadines', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(437, 'WS', 'Samoa', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(438, 'SM', 'San_Marino', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(439, 'ST', 'Sao_Tome_and_Principe', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(440, 'SN', 'Senegal', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(441, 'RS', 'Serbia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(442, 'SC', 'Seychelles', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(443, 'SL', 'Sierra_Leone', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(444, 'SG', 'Singapore', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(445, 'SK', 'Slovakia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(446, 'SI', 'Slovenia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(447, 'SB', 'Solomon_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(448, 'SO', 'Somalia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(449, 'ZA', 'South_Africa', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(450, 'GS', 'South_Georgia_South_Sandwich_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(451, 'ES', 'Spain', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(452, 'LK', 'Sri_Lanka', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(453, 'SH', 'St_Helena', NULL, NULL, 0, 0, '2018-02-22 04:04:41', '2018-02-20 14:44:14', 1, 'countries', 1),
(454, 'PM', 'St_Pierre_and_Miquelon', NULL, NULL, 0, 0, '2018-02-22 04:04:44', '2018-02-20 14:44:14', 1, 'countries', 1),
(455, 'SD', 'Sudan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(456, 'SR', 'Suriname', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(457, 'SJ', 'Svalbard_and_Jan_Mayen_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(458, 'SZ', 'Swaziland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(459, 'SE', 'Sweden', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(460, 'CH', 'Switzerland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(461, 'SY', 'Syrian_Arab_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(462, 'TW', 'Taiwan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(463, 'TJ', 'Tajikistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(464, 'TZ', 'Tanzania_United_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:04:28', '2018-02-20 14:44:14', 1, 'countries', 1),
(465, 'TH', 'Thailand', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(466, 'TG', 'Togo', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(467, 'TK', 'Tokelau', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(468, 'TO', 'Tonga', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(469, 'TT', 'Trinidad_and_Tobago', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(470, 'TN', 'Tunisia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(471, 'TR', 'Turkey', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(472, 'TM', 'Turkmenistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(473, 'TC', 'Turks_and_Caicos_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(474, 'TV', 'Tuvalu', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(475, 'UG', 'Uganda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(476, 'UA', 'Ukraine', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(477, 'AE', 'United_Arab_Emirates', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(478, 'GB', 'United_Kingdom', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(479, 'US', 'United_States', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(480, 'UM', 'United_States_minor_outlying_islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(481, 'UY', 'Uruguay', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(482, 'UZ', 'Uzbekistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(483, 'VU', 'Vanuatu', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(484, 'VA', 'Vatican_City_State', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(485, 'VE', 'Venezuela', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(486, 'VN', 'Vietnam', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(487, 'VG', 'Virgin_Islands_British', NULL, NULL, 0, 0, '2018-02-22 03:52:07', '2018-02-20 14:44:14', 1, 'countries', 1),
(488, 'VI', 'Virgin_Islands_US', NULL, NULL, 0, 0, '2018-02-22 03:52:13', '2018-02-20 14:44:14', 1, 'countries', 1),
(489, 'WF', 'Wallis_and_Futuna_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(490, 'EH', 'Western_Sahara', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(491, 'YE', 'Yemen', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(492, 'YU', 'Yugoslavia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(493, 'ZR', 'Zaire', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(494, 'ZM', 'Zambia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(495, 'ZW', 'Zimbabwe', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 'countries', 1),
(496, 'AF', 'Afghanistan', NULL, NULL, 0, 0, '2018-02-22 02:59:55', '2018-02-20 14:44:14', 1, 'countries', 1);

-- --------------------------------------------------------

--
-- Table structure for table `couponcodes`
--

CREATE TABLE `couponcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('value','percent') COLLATE utf8_unicode_ci NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `minimum_bill` decimal(10,2) NOT NULL,
  `discount_maximum_amount` decimal(10,2) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `usage_limit` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_code_applicability` text COLLATE utf8_unicode_ci,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'couponcodes',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couponcodes_usage`
--

CREATE TABLE `couponcodes_usage` (
  `id` bigint(20) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_cost` decimal(10,2) NOT NULL,
  `total_invoice_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'couponcodes_usage',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `course_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course_dueration` int(11) NOT NULL,
  `is_having_semister` tinyint(4) NOT NULL DEFAULT '1',
  `is_having_elective_subjects` tinyint(4) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'courses',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `parent_id`, `category_id`, `course_title`, `slug`, `course_dueration`, `is_having_semister`, `is_having_elective_subjects`, `description`, `status`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(15, 0, 1, 'الروضة1', 'alrod1550-bd86a25c81bd3c2ff8ffa3bc8afbef0c717505c6', 1, 1, 0, '', 'Active', '2018-04-15 07:46:33', '2018-05-19 10:49:11', '2.88.151.175', '51.36.111.15', 1790, 1790, 2, 'courses', 1),
(16, 0, 1, 'الروضة2', 'alrod22631-10c484c2e0090fa4cb7b9a3f590066de0b01e13', 1, 1, 0, '', 'Active', '2018-04-15 07:46:57', '2018-05-19 10:49:32', '2.88.151.175', '51.36.111.15', 1790, 1790, 2, 'courses', 1),
(17, 0, 1, 'الصف الأول الإبتدائي', 'alsf-alaol-alebtdaey-6d7c8f861b0639ae575402b7f9b12', 1, 1, 0, '', 'Active', '2017-10-13 08:58:38', '2017-10-13 08:58:38', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(18, 0, 1, 'الصف الثاني الإبتدائي', 'alsf-althany-alebtdaey-48f57ae31d7075a793eb706a6f3', 1, 1, 0, '', 'Active', '2017-10-13 08:59:57', '2017-10-13 08:59:57', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(19, 0, 1, 'الصف الثالث الإبتدائي ', 'alsf-althalth-alebtdaey-13736dd6ee4642c554b4b4f4dc', 1, 1, 0, '', 'Active', '2017-10-13 09:01:34', '2017-10-13 09:01:34', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(20, 0, 1, 'الصف الرابع الإبتدائي', 'alsf-alrabaa-alebtdaey-62743f4ae1f8344d23dcc61a316', 1, 1, 0, '', 'Active', '2017-10-13 09:02:11', '2017-10-13 09:02:11', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(21, 0, 1, 'الصف الخامس الإبتدائي', 'alsf-alkhams-alebtdaey-6d3f905a074b8d40a6f8a4fd8a1', 1, 1, 0, '', 'Active', '2017-10-13 09:02:37', '2017-10-13 09:02:37', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(22, 0, 1, 'الصف السادس الإبتدائي', 'alsf-alsads-alebtdaey-213c9c6981d024aae1ef62c19c30', 1, 1, 0, '', 'Active', '2017-10-13 09:03:15', '2017-10-13 09:03:15', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(23, 0, 1, 'الصف الاول المتوسط ', 'alsf-alaol-almtost-910bc313b928127f59550ef76294d9b', 1, 1, 0, '', 'Active', '2017-10-13 09:03:42', '2017-10-13 09:03:42', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(24, 0, 1, 'الصف الثاني المتوسط ', 'alsf-althany-almtost-a397216277d4a2144cc0cbb791381', 1, 1, 0, '', 'Active', '2017-10-13 09:04:17', '2017-10-13 09:04:17', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(25, 0, 1, 'الصف الثالث المتوسط ', 'alsf-althalth-almtost-5c3b6780a224eb20884cf97194ea', 1, 1, 0, '', 'Active', '2017-10-13 09:05:04', '2017-10-13 09:05:04', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(26, 0, 1, 'الصف الاول الثانوي', 'alsf-alaol-althanoy-d75e76dd969c3710c5bd7598ca641f', 1, 1, 0, '', 'Active', '2017-10-13 09:05:43', '2017-10-13 09:05:43', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(27, 0, 1, 'الصف الثاني الثانوي علوم طبيعية (علمي)', 'alsf-althany-althanoy-aalom-tbyaay-aalmy1029-6e273', 1, 1, 0, '', 'Active', '2017-10-13 09:06:25', '2018-04-21 20:59:28', '51.36.68.102', NULL, NULL, 1790, 2, 'courses', 1),
(28, 0, 1, 'الصف الثاني الثانوي علوم شرعية (أدبي)', 'alsf-althany-althanoy-aalom-shraay-adby1201-cbe250', 1, 1, 0, '', 'Active', '2017-10-13 09:06:34', '2018-04-21 20:59:55', '51.36.68.102', NULL, NULL, 1790, 2, 'courses', 1),
(29, 17, 1, 'أول أ', 'aol-a1051-00f33a1fee29fca4ba88a593fd1b1454de146948', 1, 1, 0, 'esfqwer', 'Active', '2017-10-13 09:10:17', '2018-05-19 10:56:52', '2.88.151.175', NULL, NULL, 1790, 2, 'courses', 1),
(30, 17, 1, 'أول ب', 'aol-b2615-e0b0d0f292e52073523a53aeab9448062ece6b37', 1, 1, 0, '', 'Active', '2017-10-13 09:11:46', '2018-05-19 10:57:24', '2.88.151.175', NULL, NULL, 1790, 2, 'courses', 1),
(31, 18, 1, 'ثاني أ', 'thany-a-86bea6e104d2beba4a8a5324a8c5d9d7debef392', 1, 1, 0, '', 'Active', '2017-10-13 09:14:25', '2017-10-13 09:14:25', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(32, 18, 1, 'ثاني ب', 'thany-b-dc7f76ce9dc4f3d572001f8aeb885172b8ab0c40', 1, 1, 0, '', 'Active', '2017-10-13 09:14:30', '2017-10-13 09:14:30', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(33, 19, 1, 'ثالث أ', 'thalth-a-47905e9f2743be208c32aec60590091cc111a118', 1, 1, 0, '', 'Active', '2017-10-13 09:14:52', '2017-10-13 09:14:52', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(34, 19, 1, 'ثالث ب', 'thalth-b-0b706fc244392c937d418a1db10000ecce33fa41', 1, 1, 0, '', 'Active', '2017-10-13 09:15:09', '2017-10-13 09:15:09', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(35, 20, 1, 'رابع أ', 'rabaa-a-b70be0a5566736e86fb4a2ff9eab9eee57fb8f3c', 1, 1, 0, '', 'Active', '2017-10-13 09:15:24', '2017-10-13 09:15:24', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(36, 20, 1, 'رابع ب', 'rabaa-b-f6ca5a1ba838e74b70f9afb740d13b6774713f56', 1, 1, 0, '', 'Active', '2017-10-13 09:15:43', '2017-10-13 09:15:43', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(37, 21, 1, 'خامس أ', 'khams-a-bad0ec08de28c9d7f936ec0a14878b87c2743b5d', 1, 1, 0, '', 'Active', '2017-10-13 09:16:01', '2017-10-13 09:16:01', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(38, 21, 1, 'خامس ب', 'khams-b-3070fa166bc9d842bbf0fd4c1b5480578d68283b', 1, 1, 0, '', 'Active', '2017-10-13 09:16:21', '2017-10-13 09:16:21', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(39, 22, 1, 'سادس أ', 'sads-a-d5893c007a63f428b90b87d6a1c05b12719fcef1', 1, 1, 0, '', 'Active', '2017-10-13 09:16:38', '2017-10-13 09:16:38', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(40, 22, 1, 'سادس ب', 'sads-b-58234a415d3b8e0302af053d804863d447a04967', 1, 1, 0, '', 'Active', '2017-10-13 09:16:50', '2017-10-13 09:16:50', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(41, 23, 1, 'أول متوسط  أ', 'aol-mtost-a833-abfa4962eee387f978e34d4329488da0f46', 1, 1, 0, '', 'Active', '2017-10-13 09:18:39', '2018-05-19 10:54:45', '2.88.151.175', NULL, NULL, 1790, 2, 'courses', 1),
(42, 23, 1, 'أول متوسط ب', 'aol-mtost-b737-3fa19e830e90c71a8a5f1f9bfdc37d061cb', 1, 1, 0, '', 'Active', '2017-10-13 09:22:04', '2018-05-19 10:55:23', '2.88.151.175', NULL, NULL, 1790, 2, 'courses', 1),
(43, 24, 1, 'ثاني متوسط أ', 'thany-mtost-a-49562d204fa156d217f30650f2eab9b66352', 1, 1, 0, '', 'Active', '2017-10-13 09:22:32', '2017-10-13 09:22:32', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(44, 24, 1, 'ثاني متوسط ب', 'thany-mtost-b-d901d0d761b0372e328f6461f1098cfb8bf8', 1, 1, 0, '', 'Active', '2017-10-13 09:22:37', '2017-10-13 09:22:37', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(45, 25, 1, 'ثالث متوسط أ', 'thalth-mtost-a-3aa36076cf9a72af8882d669bf2a903ce49', 1, 1, 0, '', 'Active', '2017-10-13 09:23:11', '2017-10-13 09:23:11', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(46, 25, 1, 'ثالث متوسط ب', 'thalth-mtost-b-14a84194e74e7a1e72cb669f2636bfeed22', 1, 1, 0, '', 'Active', '2017-10-13 09:23:28', '2017-10-13 09:23:28', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(47, 26, 1, 'أول ثانوي أ', 'aol-thanoy-a2559-3091f3d4844e13d0fd42977a83911a038', 1, 1, 0, '', 'Active', '2017-10-13 09:23:52', '2018-05-19 10:55:50', '2.88.151.175', NULL, NULL, 1790, 2, 'courses', 1),
(48, 26, 1, 'أول ثانوي ب', 'aol-thanoy-b1191-86ab8ca2c01aa55bfa52e5acabd09058e', 1, 1, 0, '', 'Active', '2017-10-13 09:24:03', '2018-05-19 10:56:14', '2.88.151.175', NULL, NULL, 1790, 2, 'courses', 1),
(49, 27, 1, 'ثاني ثانوي أ', 'thany-thanoy-a-8a1d50b5d83448c1811b6666223f9ba19ce', 1, 1, 0, '', 'Active', '2017-10-13 09:24:21', '2017-10-13 09:24:21', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(50, 27, 1, 'ثاني ثانوي ب', 'thany-thanoy-b-bdb482bbf0a3bc895071975ab30485891aa', 1, 1, 0, '', 'Active', '2017-10-13 09:24:31', '2017-10-13 09:24:31', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(53, 18, 1, 'ثانى ج', 'than-j-72d4743ee2faa0196f0e885a342e2cbaf12db63c', 1, 1, 0, '', 'Active', '2017-12-24 01:03:38', '2018-03-26 06:26:01', NULL, NULL, NULL, NULL, 2, 'courses', 1),
(56, 0, 1, 'الصف الثاني الثانوي علوم إدارية', 'alsf-althany-althanoy-aalom-edary786-48655eaab086f', 1, 1, 0, '', 'Active', '2018-04-21 21:23:59', '2018-05-19 10:53:12', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(57, 0, 1, 'الصف الثالث الثانوي علوم طبيعية (علمي)', 'alsf-althalth-althanoy-aalom-tbyaay-aalmy1444-0dc4', 1, 1, 0, '', 'Active', '2018-04-21 21:24:51', '2018-04-21 21:24:51', NULL, '51.36.68.102', 1790, NULL, 1, 'courses', 1),
(58, 0, 1, 'الصف الثالث الثانوي علوم شرعية (أدبي)', 'alsf-althalth-althanoy-aalom-shraay-adby1582-fda2d', 1, 1, 0, '', 'Active', '2018-04-21 21:25:12', '2018-05-19 10:52:57', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(59, 0, 1, 'الصف الثالث الثانوي علوم إدارية', 'alsf-althalth-althanoy-aalom-edary155-c3f99aa3dc69', 1, 1, 0, '', 'Active', '2018-04-21 21:25:22', '2018-05-19 10:52:42', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(60, 0, 1, ' الثانوية مقررات علوم إنسانية', 'althanoy-mkrrat-aalom-ensany741-bdeb1a2bf62aebea39', 1, 1, 0, '', 'Active', '2018-04-21 22:00:33', '2018-05-19 10:52:35', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(61, 0, 1, 'الثانوية مقررات علوم طبيعية', 'althanoy-mkrrat-aalom-tbyaay1354-7cabfe5377ed381a8', 1, 1, 0, '', 'Active', '2018-04-21 22:01:56', '2018-05-19 10:52:27', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(62, 0, 1, 'الثانوية مقررات المسار المشترك', 'althanoy-mkrrat-almsar-almshtrk703-74411d4a3b4eb58', 1, 1, 0, '', 'Active', '2018-04-21 22:02:20', '2018-05-19 10:52:17', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(63, 0, 1, 'الثانوية مقررات المسار الاختياري', 'althanoy-mkrrat-almsar-alakhtyary473-3f2f07436164e', 1, 1, 0, '', 'Active', '2018-04-21 22:02:38', '2018-05-19 10:52:08', NULL, '51.36.68.102', 1790, NULL, 3, 'courses', 1),
(82, 26, 1, 'أول ثانوي ج', 'aol-thanoy-j1146-6db7d322f6d9389a1f54ace497773f46a', 1, 1, 0, '', 'Active', '2018-05-19 11:04:42', '2018-05-19 11:05:23', '2.88.151.175', '2.88.151.175', 1790, 1790, 2, 'courses', 1),
(83, 27, 1, 'الثاني الثانوي ج', 'althany-althanoy-j1404-e8e5f6d53fe634f688336ef7c74', 1, 1, 0, '', 'Active', '2018-05-19 11:06:07', '2018-05-19 11:06:07', NULL, '2.88.151.175', 1790, NULL, 1, 'courses', 1),
(84, 57, 1, 'الثالث الثانوي أ', 'althalth-althanoy-a556-0e372c8fb1fa7a17e816feb3985', 1, 1, 0, '', 'Active', '2018-05-19 11:07:21', '2018-05-19 11:07:21', NULL, '2.88.151.175', 1790, NULL, 1, 'courses', 1),
(85, 57, 1, 'الثالث الثانوي ب', 'althalth-althanoy-b386-e74f144b4ca158e216abb3b4d0e', 1, 1, 0, '', 'Active', '2018-05-19 11:07:43', '2018-05-19 11:07:43', NULL, '2.88.151.175', 1790, NULL, 1, 'courses', 1),
(86, 0, 1, 'فصل تجريبي ', 'fsl-tjryby2227-d8220d0c5b972ed12de181d31cce06c6710', 1, 1, 0, 'فصل تجريبي لدورة المعلمين والمعلمات', 'Active', '2018-08-05 22:10:42', '2018-08-06 08:12:57', NULL, '37.124.118.74', 1790, NULL, 3, 'courses', 1),
(87, 86, 1, 'فصل تجريبي بنين', 'fsl-tjryby-bnyn1106-b8747cba9d304283328be294b901b7', 1, 1, 0, 'فصل تجريبي بنين', 'Active', '2018-08-05 22:25:29', '2018-08-06 08:12:14', NULL, '37.124.118.74', 1790, NULL, 3, 'courses', 1),
(88, 86, 1, 'فصل تجريبي بنات', 'fsl-tjryby-bnat1501-909d3f62aca75d1b40e118598e3648', 1, 1, 0, 'فصل تجريبي بنات', 'Active', '2018-08-05 22:28:26', '2018-08-06 08:12:39', NULL, '37.124.118.74', 1790, NULL, 3, 'courses', 1),
(89, 22, 1, 'فصل تجريبي بنين', 'fsl-tjryby-bnyn797-1e8600ba4ec1c360391a3b3da2e894c', 1, 1, 0, 'فصل تجريبي بنين', 'Active', '2018-08-06 08:14:13', '2018-08-06 08:14:13', NULL, '37.124.118.74', 1790, NULL, 1, 'courses', 1),
(90, 22, 1, 'فصل تجريبي بنات', 'fsl-tjryby-bnat2645-25d307b069c62ac6c6fabed358a8c9', 1, 1, 0, 'فصل تجريبي بنات', 'Active', '2018-08-06 08:14:59', '2018-08-06 08:14:59', NULL, '37.124.118.74', 1790, NULL, 1, 'courses', 1),
(91, 24, 1, 'ثاني متوسط ج', 'thany-mtost-j1587-cee654b3c79a9b65819cf5770e7f5bb9', 1, 1, 0, '', 'Active', '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'courses', 2),
(109, 15, 1, 'الألوان', 'alaloan866-396096823c452fb578c1338aee61cebdb72aa8f', 1, 1, 0, '', 'Active', '2018-11-07 07:17:09', '2018-11-07 07:17:09', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(110, 15, 1, 'البلونات', 'alblonat28-4e13cccf576e56853e5f132034cd1133eea93b3', 1, 1, 0, '', 'Active', '2018-11-07 07:17:32', '2018-11-07 07:17:32', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(111, 15, 1, 'الشمس', 'alshms1064-409e1f9eaf6daf864e52a070f4eeaf6a5de8d55', 1, 1, 0, '', 'Active', '2018-11-07 07:17:52', '2018-11-07 07:17:52', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(112, 15, 1, 'الغيوم', 'alghyom2781-fb74965d8636c08d7e35e5fe0df8e5aa5e9d9f', 1, 1, 0, '', 'Active', '2018-11-07 07:18:12', '2018-11-07 07:18:12', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(113, 15, 1, 'الفضاء', 'alfda1848-195b0d2b47e398223bc1b188d0ce68e8bbd33a40', 1, 1, 0, '', 'Active', '2018-11-07 07:18:30', '2018-11-07 07:18:30', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(114, 15, 1, 'القمر', 'alkmr1562-738ab1518c19b321d61defda44bce36335b7b2d8', 1, 1, 0, '', 'Active', '2018-11-07 07:18:46', '2018-11-07 07:18:46', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(115, 15, 1, 'النجوم', 'alnjom1283-85180d72b556f45c5b04e72f29d98fc0b45ec98', 1, 1, 0, '', 'Active', '2018-11-07 07:19:08', '2018-11-07 07:19:08', NULL, '37.125.33.126', 1790, NULL, 1, 'courses', 2),
(116, 16, 1, 'العصافير', 'alaasafyr845-78f7e7b1dc9a900c49783469a95e6f2e41346', 1, 1, 0, '', 'Active', '2018-12-01 11:15:55', '2018-12-01 11:15:55', NULL, '37.124.115.27', 1790, NULL, 1, 'courses', 2),
(117, 16, 1, 'الصيف', 'alsyf1036-d8d8ecbee38d16e98efbd0be66dfb5cf1f9166af', 1, 1, 0, '', 'Active', '2018-12-01 11:16:24', '2018-12-01 11:16:24', NULL, '37.124.115.27', 1790, NULL, 1, 'courses', 2),
(118, 16, 1, 'الشتاء', 'alshta1808-0de9ecfb897990df43a74354724a3ff08f89d14', 1, 1, 0, '', 'Active', '2018-12-01 11:16:56', '2018-12-01 11:16:56', NULL, '37.124.115.27', 1790, NULL, 1, 'courses', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coursesemisters`
--

CREATE TABLE `coursesemisters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `total_semisters` int(10) UNSIGNED NOT NULL,
  `current_semester` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'coursesemisters',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coursesemisters`
--

INSERT INTO `coursesemisters` (`id`, `course_id`, `year`, `total_semisters`, `current_semester`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(13, 17, 1, 2, 0, '2017-10-13 14:10:17', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(14, 18, 1, 2, 0, '2017-10-13 14:11:46', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(15, 19, 1, 2, 0, '2017-10-13 14:14:25', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(16, 20, 1, 2, 0, '2017-10-13 14:14:30', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(17, 21, 1, 2, 0, '2017-10-13 14:14:52', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(18, 22, 1, 2, 0, '2017-10-13 14:15:09', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(19, 23, 1, 2, 0, '2017-10-13 14:15:24', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(20, 24, 1, 2, 0, '2017-10-13 14:15:43', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(21, 25, 1, 2, 0, '2017-10-13 14:16:01', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(22, 26, 1, 2, 0, '2017-10-13 14:16:21', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(23, 27, 1, 2, 0, '2017-10-13 14:16:38', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(24, 28, 1, 2, 0, '2017-10-13 14:16:50', '2018-08-26 00:33:39', '::1', NULL, NULL, 1790, 2, 'coursesemisters', 1),
(26, 15, 1, 2, 0, '2017-10-13 14:10:17', '2018-08-26 00:33:39', '::1', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(27, 16, 1, 2, 0, '2017-10-13 14:10:17', '2018-08-26 00:33:39', '::1', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(28, 56, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(29, 57, 1, 2, 0, '2017-10-13 14:10:17', '2018-08-26 00:33:39', '::1', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(30, 58, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(31, 59, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(32, 60, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(33, 61, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(34, 62, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(35, 63, 1, 2, 0, '2017-10-13 14:10:17', '2018-05-23 10:00:09', '2.90.159.160', '51.39.99.5', 1790, 1790, 2, 'coursesemisters', 1),
(48, 82, 1, 2, 0, '2018-05-19 11:04:42', '2018-05-19 11:05:23', NULL, '2.88.151.175', 1790, NULL, 3, 'coursesemisters', 1),
(49, 83, 1, 2, 0, '2018-05-19 11:06:07', '2018-05-19 11:06:07', NULL, '2.88.151.175', 1790, NULL, 1, 'coursesemisters', 1),
(50, 84, 1, 2, 0, '2018-05-19 11:07:21', '2018-05-19 11:07:21', NULL, '2.88.151.175', 1790, NULL, 1, 'coursesemisters', 1),
(51, 85, 1, 2, 0, '2018-05-19 11:07:43', '2018-05-19 11:07:43', NULL, '2.88.151.175', 1790, NULL, 1, 'coursesemisters', 1),
(52, 86, 1, 2, 0, '2018-08-05 22:10:42', '2018-08-05 22:10:42', NULL, '37.124.118.74', 1790, NULL, 1, 'coursesemisters', 1),
(53, 87, 1, 2, 0, '2018-08-05 22:25:29', '2018-08-05 22:25:29', NULL, '37.124.118.74', 1790, NULL, 1, 'coursesemisters', 1),
(54, 88, 1, 2, 0, '2018-08-05 22:28:26', '2018-08-05 22:28:26', NULL, '37.124.118.74', 1790, NULL, 1, 'coursesemisters', 1),
(55, 89, 1, 2, 0, '2018-08-06 08:14:13', '2018-08-06 08:14:13', NULL, '37.124.118.74', 1790, NULL, 1, 'coursesemisters', 1),
(56, 90, 1, 2, 0, '2018-08-06 08:14:59', '2018-08-06 08:14:59', NULL, '37.124.118.74', 1790, NULL, 1, 'coursesemisters', 1),
(57, 91, 1, 2, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'coursesemisters', 2),
(75, 109, 1, 2, 0, '2018-11-07 07:17:09', '2018-11-07 07:17:09', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(76, 110, 1, 2, 0, '2018-11-07 07:17:32', '2018-11-07 07:17:32', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(77, 111, 1, 2, 0, '2018-11-07 07:17:52', '2018-11-07 07:17:52', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(78, 112, 1, 2, 0, '2018-11-07 07:18:12', '2018-11-07 07:18:12', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(79, 113, 1, 2, 0, '2018-11-07 07:18:30', '2018-11-07 07:18:30', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(80, 114, 1, 2, 0, '2018-11-07 07:18:46', '2018-11-07 07:18:46', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(81, 115, 1, 2, 0, '2018-11-07 07:19:08', '2018-11-07 07:19:08', NULL, '37.125.33.126', 1790, NULL, 1, 'coursesemisters', 2),
(82, 116, 1, 2, 0, '2018-12-01 11:15:55', '2018-12-01 11:15:55', NULL, '37.124.115.27', 1790, NULL, 1, 'coursesemisters', 2),
(83, 117, 1, 2, 0, '2018-12-01 11:16:24', '2018-12-01 11:16:24', NULL, '37.124.115.27', 1790, NULL, 1, 'coursesemisters', 2),
(84, 118, 1, 2, 0, '2018-12-01 11:16:56', '2018-12-01 11:16:56', NULL, '37.124.115.27', 1790, NULL, 1, 'coursesemisters', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_subject`
--

CREATE TABLE `course_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `sessions_needed` int(11) NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course_subject',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(677, '2908e7b76a6805acc5e38e6e1306c0e6151165ce490', 1, 17, 29, 1, 1, 34, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(678, 'b08c37fd8be7bde651cc391f7dfd3aa5497592592347', 1, 17, 30, 1, 1, 34, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(679, '6d037dcc0b55d77970288b878e07eb690c4df4bf818', 1, 17, 29, 1, 1, 36, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(680, '48d997f438f7719ae5fa9bd8a5b219192713ce882208', 1, 17, 30, 1, 1, 36, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(681, 'b1ae08485808c674ca125ca8e851c35166c4fbf21642', 1, 17, 29, 1, 1, 37, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(682, 'fb9e9ce6acde0b33afb71547c0d1bfdc6f78b1842654', 1, 17, 30, 1, 1, 37, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(683, '414d4cf9a4bca354295d494b508bf4371e12af011964', 1, 17, 29, 1, 1, 38, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(684, '9ea03f2d6325da0c8e7e2c882cffdc9c5fb80cf62906', 1, 17, 30, 1, 1, 38, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(685, '0c82db829f476647f6ffbdd12938ce9245e029002472', 1, 17, 29, 1, 1, 39, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(686, '80769462797f1b181791f536ff66d3a1758aedfd2738', 1, 17, 30, 1, 1, 39, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(687, 'da8858c78c57c31ded983c12e3fee3f365400dfb961', 1, 17, 29, 1, 1, 40, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(688, '756769b03df0f216c6e780eddcddb72845a5b45e2075', 1, 17, 30, 1, 1, 40, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(689, '0295698121e076ebf0bcbb313b75f6d60986c9b12415', 1, 17, 29, 1, 1, 41, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(690, '52a89c2b3736dbae6d7cd3989e73cca28ab9e33d2985', 1, 17, 30, 1, 1, 41, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(691, '31a2a4e0ff3cd481ba51cb479e965e90572daabf144', 1, 17, 29, 1, 1, 42, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(692, '80141013bbec4a84e7acd7d7c797c2158268093c1650', 1, 17, 30, 1, 1, 42, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(693, 'f2cb00dd4732a39d1750fc6303d42f825b97f435646', 1, 17, 29, 1, 1, 43, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(694, '69a82a37ea77e48d5d337ba2ce1a59cfcd4cc72e454', 1, 17, 30, 1, 1, 43, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(695, 'd0712341c3c709341eb57c1fb8045f89490d11ee2269', 1, 17, 29, 1, 1, 44, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(696, '371e606bec52a41065b28a986a26345cc22a01861074', 1, 17, 30, 1, 1, 44, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(697, 'f1b6fbb4c5aa20a947c1c2faf566082efa5b6e9f231', 1, 17, 29, 1, 1, 45, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(698, 'df33120b12072db4050bb29d9e9c945a20ea048b667', 1, 17, 30, 1, 1, 45, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(699, 'ed6ee1fa77b4dc5d9c52f0f77858a56038bed2e5140', 1, 17, 29, 1, 1, 58, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(700, 'b83c571f5a8c2d03067c29df2206085dc76716a51599', 1, 17, 30, 1, 1, 58, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(701, 'b451406376bebb803c9a328bc6f0a33379fb911c2339', 1, 17, 29, 1, 2, 34, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(702, 'dd6bb990610fd38d303d18049b6b5615da91615f1239', 1, 17, 30, 1, 2, 34, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(703, 'b1025c0c06adc6c303f341520943fb0b8ee31efb336', 1, 17, 29, 1, 2, 36, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(704, 'd1a1fd5cdc249003063ee49783a6d66768a05bf850', 1, 17, 30, 1, 2, 36, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(705, '41c9efaa7943318ad4070a63a6f463a260388f7d2342', 1, 17, 29, 1, 2, 37, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(706, '66899a8f7e3dc7d3910276fbb40d79f1ab79ff0c833', 1, 17, 30, 1, 2, 37, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(707, 'cf200fa4e7c21014440bec389f1dbae6249ebb061871', 1, 17, 29, 1, 2, 38, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(708, 'b0a1aa5e00b4963c4bb2b74ddb35a3ee065f56382830', 1, 17, 30, 1, 2, 38, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(709, '5c194c660fb0e59da6a7783b6a0e5c3ae494917a150', 1, 17, 29, 1, 2, 40, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(710, 'd4b20d14c9a7c2710106626d9d50c42ac21218f42686', 1, 17, 30, 1, 2, 40, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(711, 'e5274aa67adfb6e20753444826392a754ec77c4b2007', 1, 17, 29, 1, 2, 41, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(712, 'dfe0405c2956126bd3772a4ea5cc2b28fc4007f21789', 1, 17, 30, 1, 2, 41, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(713, '8dffd1f0868c11ef4d472601c21b06db5bc3d0cd2309', 1, 17, 29, 1, 2, 42, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(714, '65c19dad6dfc91326d7e9cf2d8ef53e1e7a8506e941', 1, 17, 30, 1, 2, 42, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(715, 'bcbef29fe27820ee17d1552cbf186fedf8f52cb91664', 1, 17, 29, 1, 2, 43, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(716, '01fed6a610a22e343c4df693442963878eb582ad1750', 1, 17, 30, 1, 2, 43, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(717, 'e19d3ef1e3bac0bcd82e012fbe593cd90e08f2a9648', 1, 17, 29, 1, 2, 44, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(718, '58526f1fae36318151a917c6f440a264fead8ef42623', 1, 17, 30, 1, 2, 44, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(719, '2949ce0a2caf39b1d59f25a7163f2c9c394313fa795', 1, 17, 29, 1, 2, 45, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(720, 'c7c3bf357364e1f7f7997db1df2a6ec1a032a93132', 1, 17, 30, 1, 2, 45, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(721, '1e9b2059baf0a5e935e3f20e2b90d4ac17cf88e42577', 1, 17, 29, 1, 2, 58, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:49:50', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(722, '77db33276f66c9b64c2c9c2d504bbe99daa7cf3b936', 1, 17, 30, 1, 2, 58, 60, 0, 0, '2018-08-26 00:28:43', '2018-12-09 19:46:11', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(723, 'b4a185841497d48207a97e3df09ce452a9a470ce1680', 1, 18, 31, 1, 1, 34, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(724, '863ed1dadd7193d47f51f464619105bf3c86e430193', 1, 18, 32, 1, 1, 34, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(725, 'a94819314fd2346a3a8462d2a2730f8d2a1ed5301387', 1, 18, 53, 1, 1, 34, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(726, 'e835f3d8137d68de74f24578c2f0c9ff60f1c92e918', 1, 18, 31, 1, 1, 36, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(727, 'c6e4059a503918bf94cc2d83244af94c279194e71264', 1, 18, 32, 1, 1, 36, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(728, '7fdf42914300fc1e52bf75ca0c4c02fae8164a5a1616', 1, 18, 53, 1, 1, 36, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(729, 'a68a379dda49ccd12568705a35e55e3c8614b4931582', 1, 18, 31, 1, 1, 37, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(730, '1544bfcc19bb461116f8c376da7c0409510e47c61401', 1, 18, 32, 1, 1, 37, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(731, 'f734d5f8b66481d060555574ce0f3b7c7e872fd1184', 1, 18, 53, 1, 1, 37, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(732, '9507962d02fc95df033ad73bc878a1c7b38176a5891', 1, 18, 31, 1, 1, 38, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(733, '831d7164b3e70ec2781d6345ba528b113a65a01f2637', 1, 18, 32, 1, 1, 38, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(734, '09539974d0daca0ad1061c14d284b7fb389c0b35518', 1, 18, 53, 1, 1, 38, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(735, '723e39d350b591b94e16544922092a1992711888938', 1, 18, 31, 1, 1, 40, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(736, '1014e55d983b7e292e13a11c61fef59a79afd7f01949', 1, 18, 32, 1, 1, 40, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(737, '7f4c7d873f0e3bd68d037a75bf922ae1f8d8af691348', 1, 18, 53, 1, 1, 40, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(738, '00ccc8b634d40bfb1b74c23816a6478db5de31f62807', 1, 18, 31, 1, 1, 41, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(739, '42c9eb633623fb550f62136d8b2588951cee73921749', 1, 18, 32, 1, 1, 41, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(740, '6b7d38f9c7a4b5beab768fbf388deca05e28232d1495', 1, 18, 53, 1, 1, 41, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(741, 'a90b0a836323e971679dcc106f6747177b15d5ba2462', 1, 18, 31, 1, 1, 42, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(742, 'b03e9cbf3e8db866f918da7b102f8028bb3022c7725', 1, 18, 32, 1, 1, 42, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(743, '5a79434643c18f8f068f7263a1ac64f2cec354ac254', 1, 18, 53, 1, 1, 42, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(744, 'f1afc6a38bdc99610f813e15fb997d78bd3e8f371741', 1, 18, 31, 1, 1, 43, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(745, '78c9fcfacf2022f403775b1fa0548c910f5446471663', 1, 18, 32, 1, 1, 43, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(746, '3d58844db8747187520fdfce8b254be5a1839e641916', 1, 18, 53, 1, 1, 43, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(747, 'bb563c3b23d04ef90ab5dd7fc79798bab50ff1a3461', 1, 18, 31, 1, 1, 44, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(748, '24307ff2a2d8daf63e1ff3ea80000ca9145094da2309', 1, 18, 32, 1, 1, 44, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(749, '61db106f1850558ab18f389c74b9259b4e2ca79a1508', 1, 18, 53, 1, 1, 44, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(750, 'e23b74867b99279a7449c8e5a8de95d3bb05c93a1253', 1, 18, 31, 1, 1, 45, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(751, '28ec26378bf1a3341f7e9208019ac0b994a2e8962339', 1, 18, 32, 1, 1, 45, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(752, '8d270bf565c516fb8d1ba87ffd74cb3a7334f9ea1055', 1, 18, 53, 1, 1, 45, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(753, '611b79d9ab7b324a85df358abf4bc12c54a0c3ae2186', 1, 18, 31, 1, 2, 34, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(754, 'af89044ec7e669929e5eb2bbf9f292157479f699988', 1, 18, 32, 1, 2, 34, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(755, 'ad70d879885a30011869ddb845da6194b3694b601245', 1, 18, 53, 1, 2, 34, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(756, 'bdb3bf31fe447115250ab666dd9c737fcb7cc747543', 1, 18, 31, 1, 2, 36, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(757, 'a880b9c7a64bfc0379ea226c81b9d4cddb23a19d1903', 1, 18, 32, 1, 2, 36, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(758, '767de743a688f58787c90dd7dcac6814fbc956162506', 1, 18, 53, 1, 2, 36, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(759, '97223b90d258b52b978979e3df6ea806f06cfa7f2156', 1, 18, 31, 1, 2, 37, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(760, 'b98fb694a6037eb5a4fc9e1db370bffaa335513f455', 1, 18, 32, 1, 2, 37, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(761, 'c9236fc523354800e3d661169437094fe47b7fe3877', 1, 18, 53, 1, 2, 37, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(762, '53fca87bc2e8edfdadeeb83eb73aaae07789b3f42338', 1, 18, 31, 1, 2, 38, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(763, 'fef54c62c3708ec29375060c720dd6980e18090f1344', 1, 18, 32, 1, 2, 38, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(764, '776628494d88aa1c7e85cc1bc33922865cbaf68b484', 1, 18, 53, 1, 2, 38, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(765, '553346abc85da8d944fb0444991627c4774cb6a72854', 1, 18, 31, 1, 2, 40, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(766, 'a2b9285f4b7347678c1b5e2e7fcaa7541a76083e2280', 1, 18, 32, 1, 2, 40, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(767, '4f6a47c1641d73d2fb0ce738e100fe57fe537db22431', 1, 18, 53, 1, 2, 40, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(768, 'db54423a2f38c990fd8eeb4ef49f6442a7e387c71172', 1, 18, 31, 1, 2, 41, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(769, '2b59484e9df7c4c8c1f13b2edaa8ce7381f996172056', 1, 18, 32, 1, 2, 41, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(770, 'f6e6a8759dc791bc9b156b04d38d2d195ffbb5291149', 1, 18, 53, 1, 2, 41, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(771, '8734c22210041deacaa2a72d7fac810f79c40de42665', 1, 18, 31, 1, 2, 42, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(772, 'fe34e594ed90f0fed2a46d8bbaa0d18d744044951488', 1, 18, 32, 1, 2, 42, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(773, '86f7671c1db7b73a30f419c261ec572bbf41df821872', 1, 18, 53, 1, 2, 42, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(774, '2aac0ada3cc4d0348ec60410c8655b54e4be87d32916', 1, 18, 31, 1, 2, 43, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(775, '06b51f2cbbc5269714d874d326a5c776a626735c198', 1, 18, 32, 1, 2, 43, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(776, '65a04616c5c3f9ae76b8239e660e032f8f0a4a6c505', 1, 18, 53, 1, 2, 43, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(777, 'd085ef01cc243ff6c8facbe93fdcc9bf17be42941801', 1, 18, 31, 1, 2, 44, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(778, 'f6735d38d92faa514b0ff35043d4d6e6985cd55e656', 1, 18, 32, 1, 2, 44, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(779, '5134b752b2506e1e26981a35ca88f3bbee52a5722811', 1, 18, 53, 1, 2, 44, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(780, '22b387941952f3a5ae498e7e6bea7f4f54c9f66f278', 1, 18, 31, 1, 2, 45, 60, 0, 0, '2018-08-26 00:31:04', '2018-12-09 20:40:08', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(781, 'c04d2d11af7018940b236767dd57f3a72b82dc121907', 1, 18, 32, 1, 2, 45, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(782, '8191430db32ad32e5359fa22bbbf02d5fa0b1be42119', 1, 18, 53, 1, 2, 45, 60, 0, 0, '2018-08-26 00:31:04', '2018-08-26 00:31:04', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(783, 'b9253e1f956e8afd3b6bcd1cdc6305c1f708fb322036', 1, 19, 33, 1, 1, 34, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:56:57', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(784, '8477f7d918cf66cabe2cd7fd78d0a0251fc65ba92189', 1, 19, 34, 1, 1, 34, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(785, 'abdef52c6036f966695556bfcc62a50ca6243fe72637', 1, 19, 33, 1, 1, 36, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:56:57', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(786, 'a059e435668e936547f15870814280d763e4eb6d344', 1, 19, 34, 1, 1, 36, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(787, 'bf9aec5aaadc3f4d2159f9f11ad661f824352b5e836', 1, 19, 33, 1, 1, 37, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(788, 'b80e67d03f5724398743c005a4d909116bb901521862', 1, 19, 34, 1, 1, 37, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(789, '117491afd55f8aa0088e57ac447ba2d221bd241a1117', 1, 19, 33, 1, 1, 38, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(790, 'f4b4b7bf4c9e32f7241700ff3a0a66e71f4585202494', 1, 19, 34, 1, 1, 38, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(791, 'f6e69f9141a9790bd513ab51db2a49aa368dc1441533', 1, 19, 33, 1, 1, 40, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(792, '3c9ac6a16409ca6b1f9b7cb024cae532abcea1b6766', 1, 19, 34, 1, 1, 40, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(793, '9abc7c0643855aad67f6841cfa36d487fa01149f2722', 1, 19, 33, 1, 1, 41, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:56:57', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(794, 'ed1c9b42dc3a95264907899b5fec0c00f1d05f6b201', 1, 19, 34, 1, 1, 41, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(795, '20daa50efdbcff9fe6dca78d9c694725e24d23821853', 1, 19, 33, 1, 1, 42, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(796, '82baa4107c6e92c5062cf20d6e4dd01a888b22c82305', 1, 19, 34, 1, 1, 42, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(797, '88d1c965e162a1be1583f4caace69e0c3e799e251618', 1, 19, 33, 1, 1, 43, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(798, 'acfc3425adfcdeb8ddbaaf30e4741f08d35459061088', 1, 19, 34, 1, 1, 43, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(799, 'caabe50d364cdca481f1587c0dbbfda37a71a3541279', 1, 19, 33, 1, 1, 44, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(800, '84fc2b70b0cc73b6dcab5e661a413a8c3d73efa92848', 1, 19, 34, 1, 1, 44, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(801, 'f036ad8dc9e0d17dfdbf3aa6e8e8523f1aa0e38b41', 1, 19, 33, 1, 1, 45, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(802, '1b8756f41339a204dee79101b5065fc2390145141124', 1, 19, 34, 1, 1, 45, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(803, 'a74752144f5ff60acb0cdb1b6e3709797d4591db2899', 1, 19, 33, 1, 2, 34, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:56:57', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(804, 'cb1524d52ddbe0ee3a45973af8f72f1cddade5542079', 1, 19, 34, 1, 2, 34, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(805, 'bda788d893b7c549f57dbecbbb1c17c3768cd0db1264', 1, 19, 33, 1, 2, 36, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:56:57', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(806, '2087c827ad83f70fa60f04604e41b53d38f0173c1790', 1, 19, 34, 1, 2, 36, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(807, '4be61ac512a4f58d52d323fe2ca763dc431f15d91378', 1, 19, 33, 1, 2, 37, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(808, 'ed58113acc89dccef7a05df9d318bd79207e2743134', 1, 19, 34, 1, 2, 37, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(809, 'f0572a51388ff76b093c04703ab5c0cc3fc2e6d11980', 1, 19, 33, 1, 2, 38, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(810, 'c93a0f9454c7e1447211b7c431577685215658c4867', 1, 19, 34, 1, 2, 38, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(811, '424747b3044cae1d0dad28ec9b032b966428abf02668', 1, 19, 33, 1, 2, 40, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(812, 'b96958547a934d41b33c52cc6c69c1d67ddf21a72939', 1, 19, 34, 1, 2, 40, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(813, '82f4069416b2666f32eb08c46655705d7b51370b2313', 1, 19, 33, 1, 2, 41, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:57:27', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(814, '0c0c35c113abe43a437133f2e0c1b033eef9484c1673', 1, 19, 34, 1, 2, 41, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(815, 'c84ab6b456043f6f6057f803fda76f3d3b1c55142098', 1, 19, 33, 1, 2, 42, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(816, 'ffe60d5d18650cc5a543f86788ea15406c48c93e1919', 1, 19, 34, 1, 2, 42, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(817, '652967e44532588ec87e5e754c45c68a18095b112014', 1, 19, 33, 1, 2, 43, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(818, 'ad4577d8ffbe9615625e7aad7aba5d03d39320ba2932', 1, 19, 34, 1, 2, 43, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(819, 'b32999f1d66910c48f085a57c74c24a18dc95f16751', 1, 19, 33, 1, 2, 44, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:55:53', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(820, '041b60fb7a6ec376ce04bcd3406c095a9f6cd9fc101', 1, 19, 34, 1, 2, 44, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(821, 'cc8d29888150fa8ce9deadfdd491348c6df35fcd2395', 1, 19, 33, 1, 2, 45, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 21:57:21', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(822, '7786dbe0e979d5f083e9996b5355c0dad8edd7bd2281', 1, 19, 34, 1, 2, 45, 60, 0, 0, '2018-08-26 00:32:46', '2018-12-09 22:04:10', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(823, '604c26940fe4118f8adc7c7387e63e96e2cd9f7b865', 1, 20, 35, 1, 1, 34, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(824, '07ed0604ab34d5f01e851dc2407177c58d9b7d6e2086', 1, 20, 36, 1, 1, 34, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(825, 'b7f4e17af6a1d37340a58419aeb55d0fecfc06552480', 1, 20, 35, 1, 1, 37, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(826, 'b576d93634f71f4422c711625c4927d9f84d1eb32716', 1, 20, 36, 1, 1, 37, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(827, 'a9863d953a31204898a2776b0f263536558f652f1361', 1, 20, 35, 1, 1, 38, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(828, 'c561c105e0917c092b6c87bac3b0a0d13db05a5b1067', 1, 20, 36, 1, 1, 38, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(829, '8e91a086bc576e5b238e6fa0b66eceefe6109944774', 1, 20, 35, 1, 1, 40, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(830, 'c6d087673b34ef41e822c9d95e8c13cdaa3d8c1b2637', 1, 20, 36, 1, 1, 40, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(831, '0187ae6bfce9945876e1e561dfd0558cc3c0dcd2885', 1, 20, 35, 1, 1, 41, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(832, 'd3407ef62cf6575dad6efebbee3f75489059d046812', 1, 20, 36, 1, 1, 41, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(833, '61d08af24f3ac3eb52bd6475f5765ea0f6151974731', 1, 20, 35, 1, 1, 42, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(834, 'efab379778d578a9496c81791dfbc17a7c3b3a34754', 1, 20, 36, 1, 1, 42, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(835, 'a814cd1b5f226e7df26065c5a43f1480c21602452889', 1, 20, 35, 1, 1, 43, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(836, '397d5d4e7e980b489ab6e7b99b69fb2d19bd67ab1993', 1, 20, 36, 1, 1, 43, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(837, 'c6f4f0a265360e464d70fe05aa4897821887db242542', 1, 20, 35, 1, 1, 44, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(838, 'c53cdb248c51c262736ae11680232b907f42372e1237', 1, 20, 36, 1, 1, 44, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(839, 'c5727fc6ae6ca3c00643138e79b88429e65b8d8a2124', 1, 20, 35, 1, 1, 45, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(840, '9ed382b26043a938b0e257dd44cc77a9fdd5fe2c1491', 1, 20, 36, 1, 1, 45, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(841, '29a20bba03f99c3e14fe559fe377c5fa0a053ac22101', 1, 20, 35, 1, 1, 46, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(842, '056b62fdc4e6a019204a240ba3b68665dd2f1cef1762', 1, 20, 36, 1, 1, 46, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(843, '2be0af33bbe9c6fc111ceb74a275d4c223048bea1400', 1, 20, 35, 1, 1, 47, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(844, '01d3f110b6aa697a214387a1badbdfe1d482f4211384', 1, 20, 36, 1, 1, 47, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(845, '59b931d5363939c5cabdebcee8bdbea4c9d9b857405', 1, 20, 35, 1, 1, 48, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(846, 'c14ec7fa5c631302cdc2e273d1032d0db57e45e5468', 1, 20, 36, 1, 1, 48, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(847, '2226498d5c93c4428eca927b097da724bd33908d273', 1, 20, 35, 1, 1, 49, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(848, 'f96bf4190d51824878eef6f34295fff32f804ab02417', 1, 20, 36, 1, 1, 49, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(849, '8faa506ddf571ba1654b65d06010a53c0ed1deea369', 1, 20, 35, 1, 1, 50, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(850, '91d0fa50900cf25d1a2a68709ee893c0d4129f761021', 1, 20, 36, 1, 1, 50, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(851, '701ac025c0a05bb726b72c3f9aec4e83e5338a1b2515', 1, 20, 35, 1, 1, 51, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(852, '52c60c8b71208d6159ce434d7eba5d33889b7eb32762', 1, 20, 36, 1, 1, 51, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(853, '8506ee9d68156ca8af5f302c15472337667a00ab271', 1, 20, 35, 1, 1, 52, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(854, 'e964abd9e19680b01554e77f562a2ba7b45ddb48349', 1, 20, 36, 1, 1, 52, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(855, '1f99e6284691f860e5f80dfd2d81a5bc461375061817', 1, 20, 35, 1, 2, 34, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(856, '20be30d243425c7d5280fe0f8b0bc265a84348552749', 1, 20, 36, 1, 2, 34, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(857, '07de475651e642b47462441dff6342c48bb8154a34', 1, 20, 35, 1, 2, 37, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(858, 'c8282e9d10ac9ae920158d682e5cdbb39e067f87148', 1, 20, 36, 1, 2, 37, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(859, '9924f35bf09e490cb512684b211a93073053aad4786', 1, 20, 35, 1, 2, 38, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(860, '8b5d6212135a255eb911cb0c233b1f3aa293eb50805', 1, 20, 36, 1, 2, 38, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(861, 'f7b7fc4a01a866292ab105b3880fca5fe91a3ae62783', 1, 20, 35, 1, 2, 40, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(862, '905494564b86baccd4fd7a50eea6e65c1a6e91851669', 1, 20, 36, 1, 2, 40, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(863, '24bc51b9741700b28f9aff21a1d556cc66c169951615', 1, 20, 35, 1, 2, 41, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(864, '25c3747680416ff83178be9f87f2cd8f8d27d19d483', 1, 20, 36, 1, 2, 41, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(865, '2cd558cdef786064502a1efef9eb8ef51dfabafd2420', 1, 20, 35, 1, 2, 42, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(866, '6fdac502c02f4ecefd1a7938d49196cd489d35991474', 1, 20, 36, 1, 2, 42, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(867, 'dd66e04291d4123ef5582b4d8920863c944cdc252473', 1, 20, 35, 1, 2, 43, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(868, '7c1678dfbb1efe719787914bf5c174a723531d2f1931', 1, 20, 36, 1, 2, 43, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(869, '7c1881339297ddeda5bd57f8958300b3f76486f32708', 1, 20, 35, 1, 2, 44, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(870, 'be61c370f5ef09534b2c6d043769f749ca8a94801567', 1, 20, 36, 1, 2, 44, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(871, 'f4a4bbcfe2c3be1832e7cd265bcbda34ffbb0bc1392', 1, 20, 35, 1, 2, 45, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:17', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(872, '0d1610580bd1786f03514cc1afca8734b89bb27a1779', 1, 20, 36, 1, 2, 45, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(873, 'adeba2c01168fca4b5e1a1c1de2ca7d0cf058242298', 1, 20, 35, 1, 2, 46, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(874, 'a6fce1866cade4d96dfdbf476b4e5c856ef7398d1790', 1, 20, 36, 1, 2, 46, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(875, 'bb69a229a455c46a544e0f8937f8b80b3c2ac98f132', 1, 20, 35, 1, 2, 47, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(876, 'dd0ff99ceb6dd7950d9ee0c6e847c317d934349e701', 1, 20, 36, 1, 2, 47, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(877, 'f0c8555a86b0c6714f188b3402b6195025c66d2c2255', 1, 20, 35, 1, 2, 48, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(878, '2f46761f4af592f758b6e874768d845bc13dcc22402', 1, 20, 36, 1, 2, 48, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(879, '86b832084d6a849ba732194df37c418abfd5f47387', 1, 20, 35, 1, 2, 49, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(880, '60e195c772b98e4d72b71a6f055d33cab4d188ab2621', 1, 20, 36, 1, 2, 49, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(881, 'b8e7e7291101994f254557bf123f5209476025cc1420', 1, 20, 35, 1, 2, 50, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(882, 'b639e8709742aac5c9521a6ba0e6a670ef94c83d2599', 1, 20, 36, 1, 2, 50, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(883, '65ccdfab4712e6de1b60708ef37cf8a1bc0293862352', 1, 20, 35, 1, 2, 51, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(884, 'f00596b52b79099c7316c37a233087ec69b188501689', 1, 20, 36, 1, 2, 51, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(885, '9dd411fbcce23c96c474b55d040897aa1ffaf9852945', 1, 20, 35, 1, 2, 52, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-11 19:06:18', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(886, '2619e3b675e7beb9c016764f3ff1866ed09b8d381139', 1, 20, 36, 1, 2, 52, 60, 0, 0, '2018-08-26 00:34:31', '2018-12-03 08:53:06', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(887, 'f32b41326c7209a825e2df3c4260d69a6e68622b1331', 1, 21, 37, 1, 1, 34, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(888, '98b551cf1653b0a30e35e8fd457b9ac26690a9e71063', 1, 21, 38, 1, 1, 34, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(889, 'd9ea177043318498fa598e600ac713345f3be10f76', 1, 21, 37, 1, 1, 37, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(890, 'b815c6a516a9fbf145844843914835589e88b57d2573', 1, 21, 38, 1, 1, 37, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(891, '7327940ae18baa7042f03d44a824f9e58186d1311603', 1, 21, 37, 1, 1, 38, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(892, '99890ecf6e7b6e1818a3aa12a3230ba67758e2961977', 1, 21, 38, 1, 1, 38, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(893, 'd4314ef195b523f91cc8039a80676663577d033e2049', 1, 21, 37, 1, 1, 40, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(894, 'd6e3b810c59caaac18c33f9d4ea8c506c06c3633729', 1, 21, 38, 1, 1, 40, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(895, 'dd7e6833cb5b81c6c7098cc6199b8958ae8bf9f32429', 1, 21, 37, 1, 1, 41, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(896, '347ec93ad5374bb0ed1c4b6831f69d52c0a2a2b62924', 1, 21, 38, 1, 1, 41, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(897, 'ef1070c22f3b14b8419875955a2a551e5a784f7d37', 1, 21, 37, 1, 1, 42, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(898, 'f1cba955c79e90672b7dba6b5c4984333e918a18742', 1, 21, 38, 1, 1, 42, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(899, 'd3c9bc6fb7f6a9abbfbbd59c44a46ef3a9f175cf377', 1, 21, 37, 1, 1, 43, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(900, '90cdcf6e390e5500e6e58296b264f44ccc6869ec2889', 1, 21, 38, 1, 1, 43, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(901, 'e3d46028c315bec33072e1b401b2a5f1c49f1a5b3019', 1, 21, 37, 1, 1, 44, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:38:14', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(902, 'e1b90adfc23fcdfc0537402481457e5181df7ac92805', 1, 21, 38, 1, 1, 44, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(903, '514843f132361a606380bb2741fda8b6d6e45d7e1030', 1, 21, 37, 1, 1, 45, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(904, '2d319180b2fa9a8a2c0c933bbe883a7d38b90a052045', 1, 21, 38, 1, 1, 45, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(905, '9f52cfa51d6564e333df5961211b189011eaf031924', 1, 21, 37, 1, 1, 46, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(906, '64b78f489eb7d68762f19c84a646c6c6e966b4d3664', 1, 21, 38, 1, 1, 46, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(907, '96cf991daf8ad9c2c142a663ff1b139b39487913502', 1, 21, 37, 1, 1, 47, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(908, '2a8c211794b0d5c8ccbaa924a0c73901fdcf1a722793', 1, 21, 38, 1, 1, 47, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(909, 'f69eb4c5afcfbfafef71cc747f6b8a666d4971e0549', 1, 21, 37, 1, 1, 48, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(910, 'a81136acf11908a793e9435ac91e17d22642bc8f697', 1, 21, 38, 1, 1, 48, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(911, '6683a4f58d619b10ce484f445e06dfb9ad716765267', 1, 21, 37, 1, 1, 49, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(912, '9fab8063419a2a03a97ac6bf2c036f55fed808c22348', 1, 21, 38, 1, 1, 49, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(913, '314477c9c9131126ab83844defd2c8a6cc435a001351', 1, 21, 37, 1, 1, 50, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(914, '72738ae2cc2fa05e2914ba881ff3080076c6db8748', 1, 21, 38, 1, 1, 50, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(915, '1036857a3fa84e0d7166cddefd52df547305ac4e2623', 1, 21, 37, 1, 1, 51, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(916, '8309399b0905be1345d52b508ea83522c7e6d40e227', 1, 21, 38, 1, 1, 51, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(917, '6fddb3621e4482b033f2b4e266a5f69bc683f5ab2164', 1, 21, 37, 1, 1, 52, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(918, '9e621ac5a703b904c814ad2bd219b54bda1970cb924', 1, 21, 38, 1, 1, 52, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(919, '61d4d673e72e915ff76e1bbcf9baeb0736fa99f71287', 1, 21, 37, 1, 1, 146, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(920, '0226c9c002eeff4b18d44022d951fae864ede5db2238', 1, 21, 38, 1, 1, 146, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(921, '381a6a803e85637d24c92c4f4a1bfc3cf6c6316d467', 1, 21, 37, 1, 2, 34, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(922, '5a1bf5acaf629fd8d4764f9d3522cf504b004b812888', 1, 21, 38, 1, 2, 34, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(923, '2ec61a5b568fd4ae83de4a8a9ffcd5937bdb061b1185', 1, 21, 37, 1, 2, 37, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(924, '0dd60908890ab0e59d433eaa38d94b574d7776c72513', 1, 21, 38, 1, 2, 37, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(925, '1a5f0c83cf28256745dbdbd1f56d59742374a3f3587', 1, 21, 37, 1, 2, 38, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(926, 'd6409cbb8a2e311b2b1bdba430228e4a30cef326583', 1, 21, 38, 1, 2, 38, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(927, '94035bc1acdad532e7e2776ca254d5096e49d3cd2406', 1, 21, 37, 1, 2, 40, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(928, '6407dc2c7c23ca0627f7289fcf842a62e47c2be3621', 1, 21, 38, 1, 2, 40, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(929, 'fdd25ba02d85f18d1a52b3c1119d32825e9e7bb71323', 1, 21, 37, 1, 2, 41, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(930, '11af021d9bec0d1d4985a2c68cb74d4ed990afda2781', 1, 21, 38, 1, 2, 41, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(931, 'dd8e60ff4386859e1f06b9ba0abcd42d7642c9d9479', 1, 21, 37, 1, 2, 42, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(932, 'a52602623e0130ca3a569ea8c09f03ade2e8b9c61312', 1, 21, 38, 1, 2, 42, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(933, '67d4874a2eac43e1386b75c58805327685151de52556', 1, 21, 37, 1, 2, 43, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(934, '1e65706854e40145d5a37270d896ba6492a178b71506', 1, 21, 38, 1, 2, 43, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(935, 'f3141466ce05c0aa1c69fb7ed739a2ac3bc6f706327', 1, 21, 37, 1, 2, 44, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(936, '3c902c32d3363d6f521ff8685ef4102bcda4c731449', 1, 21, 38, 1, 2, 44, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(937, '0bf307551cb9e98f9d01e1926c29e69eee6cf3a42168', 1, 21, 37, 1, 2, 45, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(938, '3336b1358cfb44e510d6b3a874a289e0b6eef894826', 1, 21, 38, 1, 2, 45, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(939, 'a7acd677599debefef669bc2cd5fdc84326af6da212', 1, 21, 37, 1, 2, 46, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(940, '5b0cc08e40fa04d330431ae1b10f789c0a2090b02714', 1, 21, 38, 1, 2, 46, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1);
INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(941, 'b22c500f92584ac84743bb0a2c2a6a8b289ffc311521', 1, 21, 37, 1, 2, 47, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(942, 'b32286ff9916bcf9e6bf7670f17682e3356e3d3e477', 1, 21, 38, 1, 2, 47, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(943, '2ae20801a0deec5cb33bfcd3cebd6c5436ffb9e32031', 1, 21, 37, 1, 2, 48, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(944, 'a2257c45c2711147610a989a2808c8140305684f2869', 1, 21, 38, 1, 2, 48, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(945, '3ce29c466db4ccbae92021254ce3e3a8989da16b522', 1, 21, 37, 1, 2, 49, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(946, '92d203d6aa259098acbecccd909a275b3546bfbc1624', 1, 21, 38, 1, 2, 49, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(947, 'bba550e9af693d7177b4870923a3415f517f55c066', 1, 21, 37, 1, 2, 50, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(948, '365cb62deb2e548657ac1f975ba3ae5e996cb7aa2684', 1, 21, 38, 1, 2, 50, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(949, '4dc9c10ae15befa2c31410ed1014e3d88a2424b62545', 1, 21, 37, 1, 2, 51, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(950, 'cc429239e1604fc9fadd49ef63117c246950212a1351', 1, 21, 38, 1, 2, 51, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:42:41', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(951, '4ef251c38edbba4068c6ddaad3327df07ddf408b1892', 1, 21, 37, 1, 2, 53, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(952, '1fee95f93a29cfef3fed95d7455d4ea5d2b198923009', 1, 21, 38, 1, 2, 53, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(953, '293440163d55aa6ae68ac90919ffa85d0bb3ef2d1208', 1, 21, 37, 1, 2, 146, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 20:37:41', '86.51.184.42', '::1', 1790, 1790, 2, 'course_subject', 1),
(954, '14bc1e5df54213d1a90b32c615312aa6e760c14f46', 1, 21, 38, 1, 2, 146, 60, 0, 0, '2018-08-26 00:36:05', '2018-12-11 21:46:51', '89.237.145.114', '::1', 1790, 1790, 2, 'course_subject', 1),
(955, 'f57a18d15365746aeab032d91a1745fe699824bc677', 1, 22, 39, 1, 1, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(956, '6c3187f50ecd2d011240e06b90809cae0480f1bb1690', 1, 22, 40, 1, 1, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(957, 'c1824e117aa10287f58136998760f1c14299ec0e2159', 1, 22, 89, 1, 1, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(958, 'd9fed76c15aa98ca08abeffb80117a757ee8e9b0778', 1, 22, 90, 1, 1, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(959, '139b6a109bba85e822a29ac1d51f08107b56c1132078', 1, 22, 39, 1, 1, 37, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(960, '0c13b34b0dbd968bfc3fb9e023f88dac89ea2fe12449', 1, 22, 40, 1, 1, 37, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(961, 'b501d6febe763128393c9682ffb5f8d651c1d9841120', 1, 22, 89, 1, 1, 37, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(962, '4c187925843dea3a78aebd1b4eddbf712b43090b1672', 1, 22, 90, 1, 1, 37, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(963, '1a469cb9b632f2eb2f8e865702d13e35f2186216105', 1, 22, 39, 1, 1, 38, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(964, '89710fd372c0fbfc45adb4bf3b1675be031cf1991035', 1, 22, 40, 1, 1, 38, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(965, 'e58f23f965bce55eede456ca00678da51050430a1282', 1, 22, 89, 1, 1, 38, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(966, '3d9d14ee9ec788463f34f3791599f024868169f72388', 1, 22, 90, 1, 1, 38, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(967, 'a60fb7683c9e6ba8564ab5cf75d9f37dcb4caa1b1607', 1, 22, 39, 1, 1, 40, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(968, '94b64594f0d76c441f78fb1421cee384871600ff2035', 1, 22, 40, 1, 1, 40, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(969, 'b118ad2110574ab9b3d2934717e4f5c8aa95d8eb1098', 1, 22, 89, 1, 1, 40, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(970, 'f15079bfab7bb7417b31b8d4a07d810f071c252c1478', 1, 22, 90, 1, 1, 40, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(971, '22e7270b0977f26a9ef235daa017217540cce975888', 1, 22, 39, 1, 1, 41, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(972, '5270d470b3e1dd6f81a9f5bb6d7ff98e994e04eb2607', 1, 22, 40, 1, 1, 41, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(973, 'f5f52de9c78ff01f074a303fa515352dfab6ed6651', 1, 22, 89, 1, 1, 41, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(974, '791f0ec5d4a3db5d28c3473d808f7f7ec6b78a742531', 1, 22, 90, 1, 1, 41, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(975, '43d839aefe72219d898c660242a68c2e6ca1ada51266', 1, 22, 39, 1, 1, 42, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(976, 'a3b447e556aeb06c1f52925b78c7874497c8d14f1563', 1, 22, 40, 1, 1, 42, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(977, '29ddeb22d71af68e4d095069d471553f0b02f94b1496', 1, 22, 89, 1, 1, 42, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(978, '189f74651ff0688a1e98865da55d5f400964919c2163', 1, 22, 90, 1, 1, 42, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(979, 'f3debaa465f8149c69b93a48aa0f1681db797cf8361', 1, 22, 39, 1, 1, 43, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(980, '97f4f2d7b210a60dfcc93cc3f6034cb714cf72db1258', 1, 22, 40, 1, 1, 43, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(981, 'c76b4946819a8cc870bcbc0b616dc6b63cc40f002189', 1, 22, 89, 1, 1, 43, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(982, '40bce34e4ae2cc0e964c2f0fe61780ce406f457f2552', 1, 22, 90, 1, 1, 43, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(983, '191b29b9685de83b15a0e4a7aa95deb8ffe2beac285', 1, 22, 39, 1, 1, 44, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(984, '26b2f1b67b9016bf78016ba150c39b90bdff9ff02484', 1, 22, 40, 1, 1, 44, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(985, '0f21dc0d9e05817f9877560773d57ab6c4fca04d127', 1, 22, 89, 1, 1, 44, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(986, 'b1d95dee97752d5e2d29e93beceb121429bcd2a2960', 1, 22, 90, 1, 1, 44, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(987, 'ec9f6c4d359e7a0aa7fa9521b43642a59bb0b1c31143', 1, 22, 39, 1, 1, 45, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(988, '93a8cbdbf0c58e7ac29c1318f352ee27c37e8f212283', 1, 22, 40, 1, 1, 45, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(989, 'd46b808cb6f938379b50ab4237143adddc0aab531735', 1, 22, 89, 1, 1, 45, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(990, 'ec0652d38f98468a9c4f8eb0c9eb5a2c01835c41191', 1, 22, 90, 1, 1, 45, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(991, '513708d168ee9374b2603db83ffce1227ce4ae571701', 1, 22, 39, 1, 1, 46, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(992, '607e1d0d06896616f26f7400340c2be39a1b65832853', 1, 22, 40, 1, 1, 46, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(993, '875af8e4db29915c721b937169bd1e76dc6f588d1861', 1, 22, 89, 1, 1, 46, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(994, 'dc6a82fe1c9f0f45ca24583cc7479cd191ba4fea1804', 1, 22, 90, 1, 1, 46, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(995, '365563fc3886f766baea5f52397197c5c958160d857', 1, 22, 39, 1, 1, 47, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(996, '932075e797c74e1984f0562132f2df73ed0e8270112', 1, 22, 40, 1, 1, 47, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(997, 'c4f1e7d073d3b4ec06f4bf39276afd7cb7cb13c01161', 1, 22, 89, 1, 1, 47, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(998, 'f02916f2c72f3122681aeb7f8b86b414157d91ad2462', 1, 22, 90, 1, 1, 47, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(999, 'dae1fb05c8994f6d3fefcabd72a8e6b6d3361a072145', 1, 22, 39, 1, 1, 48, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1000, '1c766bb1320d0f488b592c6ca003787da68e0f132256', 1, 22, 40, 1, 1, 48, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1001, '277ed0889872c4137fb9a7ad624e1cb482e01b6f909', 1, 22, 89, 1, 1, 48, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1002, '10efe83655980d790bd89d3e00b00354a538a3063030', 1, 22, 90, 1, 1, 48, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1003, '147079df1f6bfcacefc64ac4c385cafc5cfba1a31833', 1, 22, 39, 1, 1, 49, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1004, 'a7775776eccb893545d90fb5a6f2d1e36d9c9226957', 1, 22, 40, 1, 1, 49, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1005, 'e237477aa386b33f37b1e7389b3b2820641fb30c2531', 1, 22, 89, 1, 1, 49, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1006, 'cfe2efa23a7a376c0609211ed1423624a9678a4d69', 1, 22, 90, 1, 1, 49, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1007, 'fe512c530212635e9f155dfa0390b37fb7d5cbf42518', 1, 22, 39, 1, 1, 50, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1008, 'c22b2b881e76eea31adca8058f52f902aed4249e997', 1, 22, 40, 1, 1, 50, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1009, '33d0bc743a0e1c8e129d1a4f83dddc478f68057b2230', 1, 22, 89, 1, 1, 50, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1010, '48885d921099bcf492dae2f8c4cfdac25c28dc2e2877', 1, 22, 90, 1, 1, 50, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1011, '1604d72b2929b634be9e1b4ff16104adb113e0b12252', 1, 22, 39, 1, 1, 51, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1012, 'f7f3d2ac5059ab775c5d9f45a61e4aea3d3a8b551388', 1, 22, 40, 1, 1, 51, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1013, '70545211d49b4e6277f08b956732acf02769d5612398', 1, 22, 89, 1, 1, 51, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1014, 'e845f550ba27afc69f60b195fe67c07dbf88f9592535', 1, 22, 90, 1, 1, 51, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1015, 'fa513921964735b47694c8734310e916fe6d30e6841', 1, 22, 39, 1, 1, 52, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1016, 'c020c455b34b090136b1b44c0df5de68bf5b02df2523', 1, 22, 40, 1, 1, 52, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1017, '80379661026f100d92bca2f84a821b16a2964bb9464', 1, 22, 89, 1, 1, 52, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1018, '8915dea02811fd5273931cbf67960a0e6242fb041982', 1, 22, 90, 1, 1, 52, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1019, 'e6f1ed6bdcc1058bfc8ffb0b417a6ff1228ed99c1775', 1, 22, 39, 1, 1, 58, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1020, 'f0411ea80a34d888ab5a4e0ee1a316d45137e5b62197', 1, 22, 40, 1, 1, 58, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1021, 'fa50eb4f476e1c806d68975b62c7a1a8fea0ac702170', 1, 22, 89, 1, 1, 58, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1022, '34b4ed85e81401bd6df5686532526d9695999e2d446', 1, 22, 90, 1, 1, 58, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1023, 'c10a306f760101e3707ea5dfc62ea853e74d000e2019', 1, 22, 39, 1, 1, 146, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1024, '0200e256c9ae9edecd69adb84acb73e28bc76b1a1000', 1, 22, 40, 1, 1, 146, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1025, '75d964eb5bdbcb91c34b06ff8a5943bc8d876d722247', 1, 22, 89, 1, 1, 146, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1026, 'f9ebb0b20d284e358b733fe13ec8cbffa68772d62874', 1, 22, 90, 1, 1, 146, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1027, '60a81b7a3dc59f443c83cd156dd223b34820e8e01109', 1, 22, 39, 1, 2, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1028, '7f324265a84f6d0e92b990eb9df3d9d0d6289862377', 1, 22, 40, 1, 2, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1029, '6ac29180b478737997a9239ae6fe07554000c5382305', 1, 22, 89, 1, 2, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1030, '60087a5b7b3b4c06598f70dbc25d35084b547598223', 1, 22, 90, 1, 2, 34, 60, 0, 0, '2018-08-26 00:37:14', '2018-08-26 00:37:14', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1031, 'fbcc8c47026ef6743876a367331164d4cb9504422631', 1, 22, 39, 1, 2, 37, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1032, 'c46fa04d6994dc661f863dc55bf39a4e43626cd7183', 1, 22, 40, 1, 2, 37, 60, 0, 0, '2018-08-26 00:37:14', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1033, '3abfa91e95f38903918a33ca7d85c86b07f6f887222', 1, 22, 89, 1, 2, 37, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1034, 'e9861fd56a2b31e81b3147c5a9a115d9f3c923881433', 1, 22, 90, 1, 2, 37, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1035, '24d1b97a8ef3e2c609467030673545b6b00795061138', 1, 22, 39, 1, 2, 38, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1036, '22aa9579a8765140c83b40e7d0a633f92c0819ef2751', 1, 22, 40, 1, 2, 38, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1037, '025ae285691bf3aa31b5db566d5acdb56b8938e11499', 1, 22, 89, 1, 2, 38, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1038, 'e21b5971d5f9616cc8a23821127ce15e22d30585626', 1, 22, 90, 1, 2, 38, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1039, '3e6df5e6c7bb9aae3dd12affa214b1532837524f717', 1, 22, 39, 1, 2, 40, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1040, '4c01d2d4671d542607f160eee8dc14e672838aa6698', 1, 22, 40, 1, 2, 40, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1041, 'd71822c4260ccac79ef3d1aa7d4d73e55baa395a473', 1, 22, 89, 1, 2, 40, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1042, '598a42d29cefe9add083f9ca60d7c7531c1c8c492967', 1, 22, 90, 1, 2, 40, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1043, '161c9ab95971864c348a615fab879ae001ca0ecb2083', 1, 22, 39, 1, 2, 42, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1044, '2b757433337286cd071d554ee79d377da07397452869', 1, 22, 40, 1, 2, 42, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1045, '94bf53b39e99ef4646553615b5e4bcffac376a112472', 1, 22, 89, 1, 2, 42, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1046, '466d56aee8010c19ec07fd7fccdf7e2c22b46b2a2922', 1, 22, 90, 1, 2, 42, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1047, '7c6dc7d16297f81bd818ea9b5b2b0cbafb1d968a2361', 1, 22, 39, 1, 2, 43, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1048, '2db05a974d9f742b0ffac5bf14a7ddc74d752cc32933', 1, 22, 40, 1, 2, 43, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1049, 'fd4222e3628fd7a0a5c1bde8bc3333b233be81b91873', 1, 22, 89, 1, 2, 43, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1050, '9906782e35863588101ec41ab9d1f6e9cd1c3c161106', 1, 22, 90, 1, 2, 43, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1051, 'f242e85a686965736493f95d6a17cdf83ac412132100', 1, 22, 39, 1, 2, 44, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1052, '9fb1b03bf1fd17ab723652b586eaf6a244f354391012', 1, 22, 40, 1, 2, 44, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1053, 'c0cf7349788a66c45a4d96ff41b5545a90b0a5a71549', 1, 22, 89, 1, 2, 44, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1054, '4b02effcc3348a9fe873dbbac193bd5f30e1f18a1089', 1, 22, 90, 1, 2, 44, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1055, 'f58bea7ddc039a47bbbeaf0bc0e3d8789c0d0f752009', 1, 22, 39, 1, 2, 45, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1056, 'b49e80b9c238b430c8ccb55efcbae9a287c58cc8766', 1, 22, 40, 1, 2, 45, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1057, '9f70d3900ce02af7329a52a25ca0e10f47cfb7cb932', 1, 22, 89, 1, 2, 45, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1058, '74fdc461a4050afd7bb80fba60dcfa3a3f71292b88', 1, 22, 90, 1, 2, 45, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1059, 'e61fa6ad54a658f02d13fdd978ad354810720a0c1141', 1, 22, 39, 1, 2, 46, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1060, '68457f36809fedd11f4e5f97990596838c721275206', 1, 22, 40, 1, 2, 46, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1061, '9e1f868d735805104e81bdc573422500a9388f05308', 1, 22, 89, 1, 2, 46, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1062, '5cf66a8de07e36c88ab561fba8f2e43a455cbe15741', 1, 22, 90, 1, 2, 46, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1063, '2e267b20c303bdbd437091e52e9c16c1a117746d387', 1, 22, 39, 1, 2, 47, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1064, '259a1390a4234f51813b9f2c7080a3f5d0f9db47528', 1, 22, 40, 1, 2, 47, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1065, '57f27be312bf3af57b2d49e399ae34d39e2ead9f2172', 1, 22, 89, 1, 2, 47, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1066, '513e8b64345b9a13f89eb7fdc12e05d4c27ef4a91523', 1, 22, 90, 1, 2, 47, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1067, '6722fd22e204a091c99580a00dd36713dc09036e249', 1, 22, 39, 1, 2, 48, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1068, 'd068555a00cd4aed03b5fa3d53517b5b1d9967a9641', 1, 22, 40, 1, 2, 48, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1069, '7a66aeb4780aecc4e3269edfcb5e816b638908eb2146', 1, 22, 89, 1, 2, 48, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1070, '8afe95980706b13859a6fd182c867d41a828a856963', 1, 22, 90, 1, 2, 48, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1071, '1803a4cd4ba18fc05cdac45ba2137009857bd4cb1336', 1, 22, 39, 1, 2, 49, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1072, '985035ca5991e4715f3ce612f2fca15a6b9cbc1e2617', 1, 22, 40, 1, 2, 49, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1073, '6f510e6676793c4ca75f7736da222a408c355c6c900', 1, 22, 89, 1, 2, 49, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1074, '6ce048c31fa35c1049e66d66a0c5ed009e161020389', 1, 22, 90, 1, 2, 49, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1075, 'c71e0d899d13699120219611168bfa63d799e5932455', 1, 22, 39, 1, 2, 50, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1076, 'a36e84be24fd4484a703b3012f8cbee4e3127139341', 1, 22, 40, 1, 2, 50, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1077, '8d8022b539584c67842ece0b419c341e221d02d1281', 1, 22, 89, 1, 2, 50, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1078, '42197eb0fec1ce09228e219ca982cd56a6c355e81785', 1, 22, 90, 1, 2, 50, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1079, 'b4de448eea1210d3f80aff8c1b205b18ad12624c244', 1, 22, 39, 1, 2, 53, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1080, 'cd19365921e50958425070516d581fc690fb39182151', 1, 22, 40, 1, 2, 53, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1081, 'caa23aeeb17a0e7c54e87cb03921f0b48694a9f12888', 1, 22, 89, 1, 2, 53, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1082, '966cde4bd78e4529c84039e11211015df54cd5f52341', 1, 22, 90, 1, 2, 53, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1083, 'b8273c51612b7729a071cf7402e2bb8643b7d8eb133', 1, 22, 39, 1, 2, 58, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:09', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1084, '86e84ec7d23ee6522d10aada6fff5565c73b5d8e1407', 1, 22, 40, 1, 2, 58, 60, 0, 0, '2018-08-26 00:37:15', '2018-12-03 09:00:59', '37.124.115.27', '::1', 1790, 1790, 2, 'course_subject', 1),
(1085, '95463a04984efa8cfd00c83d3f320612f30c6eaa399', 1, 22, 89, 1, 2, 58, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-28 00:48:20', '::1', '::1', 1790, 1790, 2, 'course_subject', 1),
(1086, 'df6d626b9f8c4bf58089cf75c3b8263075b588482140', 1, 22, 90, 1, 2, 58, 60, 0, 0, '2018-08-26 00:37:15', '2018-08-26 00:37:15', NULL, '::1', 1790, NULL, 1, 'course_subject', 1),
(1087, '88d3f2add6fa2fc640e752e8b8986003609181e2250', 1, 23, 41, 1, 1, 34, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1088, '6a3cb41779f8ca04ecd4feb7b789843ed7d11357322', 1, 23, 42, 1, 1, 34, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1089, '689dd0f22b05f7cd8e15072c69835dbecba839281456', 1, 23, 41, 1, 1, 37, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1090, '08839e1bf3936b572e76da346dd2ea2510b2527a2834', 1, 23, 42, 1, 1, 37, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1091, 'd1cdd4dc495e9424bdfd4b9897aa9f45bcd65f92943', 1, 23, 41, 1, 1, 38, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1092, 'd710db04c841635a3e96d0a390d5c0ba2abc8dea1781', 1, 23, 42, 1, 1, 38, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1093, '88f54456de95faac91f489e98595fbf91a70a982473', 1, 23, 41, 1, 1, 40, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1094, 'e2b7db8c1756e25b4e6762c975f3f1437150b94b1904', 1, 23, 42, 1, 1, 40, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1095, 'e8a30ccdc5eab69f341b49b96eaea8e69b0994422264', 1, 23, 41, 1, 1, 41, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1096, '9234538e6229d2652d7a5e1c98a10760ef7965b12403', 1, 23, 42, 1, 1, 41, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1097, '15110e332ae319d751b1a5e2c71c7fbb3bc0f28d1449', 1, 23, 41, 1, 1, 42, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1098, 'bfad1833fc853f7934f4ecaf95ab377544430f8c366', 1, 23, 42, 1, 1, 42, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1099, '24f6257736f79bf0a27166d25c863b6ae4b96270439', 1, 23, 41, 1, 1, 43, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1100, '2f1771d10ca0661ee374f40730e018dc4fa674f72473', 1, 23, 42, 1, 1, 43, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1101, 'f9251638f40f9594bb1294676d6f11b6cd8fec801812', 1, 23, 41, 1, 1, 44, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1102, 'eb04998f64a1dd450777b699d1b93ec40e317c9d1222', 1, 23, 42, 1, 1, 44, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1103, '81269d85578f9ebdc99a045ed86218159a40f5411526', 1, 23, 41, 1, 1, 45, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1104, '954951293c8d714a705a2ac27c03b5ae589a42772605', 1, 23, 42, 1, 1, 45, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1105, 'ec5443231d1beca3a93e15a35663a6fea7f32a7543', 1, 23, 41, 1, 1, 46, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1106, '59661d287ec3f5abf8fbef2e66a0f0ef44424ea31325', 1, 23, 42, 1, 1, 46, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1107, '7334bbcc0aa5f3252210296979bd9ff3b97d9ba12496', 1, 23, 41, 1, 1, 52, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1108, '6b0fb14c726a02e48ef23311cbd537aa9d80c1bd434', 1, 23, 42, 1, 1, 52, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1109, '1ad87c0719528add0b8dc2b25e6c64e65573e9101924', 1, 23, 41, 1, 1, 54, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1110, 'c9dbc1053173702e77686085b385bb3588e607301856', 1, 23, 42, 1, 1, 54, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1111, 'a2b385eec13e3f4ba2cbd7ca3bf197ae24a2a5ee1973', 1, 23, 41, 1, 1, 55, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1112, '754c19d401203c71a105faa3bbd988781b640b96181', 1, 23, 42, 1, 1, 55, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1113, 'cd96599035e49f320beb1d8636dcbf86d91d04251534', 1, 23, 41, 1, 1, 56, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1114, '3a722da22a99e0e8930792bf0758eb1d75ccc7eb1181', 1, 23, 42, 1, 1, 56, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1115, 'c5f63ae9ae81ee9d1dfc5104bb1083eaed5b1cb1669', 1, 23, 41, 1, 1, 57, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1116, '1dfec3ece2fbdeac7265668fe69b9a14caacb3c02388', 1, 23, 42, 1, 1, 57, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1117, '89eaa54905546a108f67a75d1ea6e0c43b4cf9f3217', 1, 23, 41, 1, 1, 58, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1118, 'b9f42a1145d686d21cd386b32e6aa64c1e30bdf4916', 1, 23, 42, 1, 1, 58, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1119, '51c927c20ba1714e04625014916ca0643eeeddef2708', 1, 23, 41, 1, 1, 59, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1120, '7c52b99f06b68fbe91c696e9f370730784560b591670', 1, 23, 42, 1, 1, 59, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1121, '7dd170642fd1b82a8451315b4fd723bb514a639c720', 1, 23, 41, 1, 1, 147, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1122, '25d0e71f7cc3070d170bfe5ed32b3818368fc15f620', 1, 23, 42, 1, 1, 147, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1123, '8fcf52cb2109be55ec69909fb815e400dfb5a598421', 1, 23, 41, 1, 2, 34, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1124, '01e8f0a3569e7257df63de1634697d62b02083571191', 1, 23, 42, 1, 2, 34, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1125, '15745f06062574aece893471782a3964527bec432522', 1, 23, 41, 1, 2, 37, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1126, 'c8417a1f3a9e5bbde248b665eab1479bb880f5162682', 1, 23, 42, 1, 2, 37, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1127, '959f94f7e58170bf7bf80834267d7ed6d38755c0563', 1, 23, 41, 1, 2, 38, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1128, 'd24be1eacf0b9abddc91f00a9842d5a43367ccea940', 1, 23, 42, 1, 2, 38, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1129, '449416bffe1c72e0e666baf7553e6d842374294617', 1, 23, 41, 1, 2, 40, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1130, '6e207ad7a1b4cb94c01b50893554ec585a402a42999', 1, 23, 42, 1, 2, 40, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1131, '869a9806206e04cac29dadd78cf3e05ee0f1530f383', 1, 23, 41, 1, 2, 41, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1132, 'dd3da3ea20163d51ccdc6994e24c3f4ba37794e11827', 1, 23, 42, 1, 2, 41, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1133, 'b7b2f2f5d9a53c9edd4d32e405b253cf5db621992219', 1, 23, 41, 1, 2, 42, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1134, '1c40b7811fa410ee8f3653a6914ad0d264f0e75e1906', 1, 23, 42, 1, 2, 42, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1135, 'dde514d51842eb33875713cdeb9e16be6699ed6b1401', 1, 23, 41, 1, 2, 43, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1136, 'fe25959c1561fb1763f57ff4d774795c67410fea2259', 1, 23, 42, 1, 2, 43, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1137, '6eb575845c1e180a7da10ecd1b07692ac91eab83200', 1, 23, 41, 1, 2, 44, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1138, '8904a2d6b9d2507c27c872889da8c4fea948bda9867', 1, 23, 42, 1, 2, 44, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1139, '9ca2423864aa0bdda3429e98f2a0cd1fcf1c47db2691', 1, 23, 41, 1, 2, 45, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1140, 'c824c0f5e08e8cae16073923bbf77177664d8e652122', 1, 23, 42, 1, 2, 45, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1141, 'fc6fa2a64aac122bbb0e3cfa697c59cd3da4cd232721', 1, 23, 41, 1, 2, 46, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1142, 'c2ac0098949e58d47ca228566e24568d7b15ae681634', 1, 23, 42, 1, 2, 46, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1143, '1a498727c056b3a2a9f8c6cde5750d215d480cb02301', 1, 23, 41, 1, 2, 52, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1144, '0292255117931c1fa438b8c070c230ea124d1eb21225', 1, 23, 42, 1, 2, 52, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1145, '9e885134d562afe7ef8ccf52ef6bae0638f223bb2812', 1, 23, 41, 1, 2, 54, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1146, 'e5608154198cde5d27d00667b86550811a076f442967', 1, 23, 42, 1, 2, 54, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1147, '903fbf1913b26a717b73298f598237a78d25d9c6582', 1, 23, 41, 1, 2, 55, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1148, 'fdf11fa40e367a50e8a484e51185d31e13ad871f3026', 1, 23, 42, 1, 2, 55, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1149, 'ce77ff30e46fe625ffe3f72e5bf988d938ae2519853', 1, 23, 41, 1, 2, 56, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1150, 'b35005ecc1619cda6609318e9e2c091b0a497dcb260', 1, 23, 42, 1, 2, 56, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1151, 'b30e1346d2adab08a02b0a0a6ad68d3f8dafbe1c1665', 1, 23, 41, 1, 2, 57, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1152, '828f309367736aaf3c8433b939427918cf90f7f61571', 1, 23, 42, 1, 2, 57, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1153, '520054382ea901e82ba1541ce48d516ca92499cf877', 1, 23, 41, 1, 2, 58, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1154, '6664a97c6303fe7979e3ba91105fbaf92952500e2084', 1, 23, 42, 1, 2, 58, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1155, '2760fee117122333a99f51e3bf535b955e1638dc2759', 1, 23, 41, 1, 2, 59, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1156, '8f7c31b8161525b27663c4c524d6732398155d5b369', 1, 23, 42, 1, 2, 59, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1157, '76b9ea9e27c845af743ad6981367ca84eea3f05d1735', 1, 23, 41, 1, 2, 147, 60, 0, 0, '2018-08-26 00:39:47', '2018-11-13 09:37:13', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1158, 'bbb03ef80b176835513015033258e604575096e3292', 1, 23, 42, 1, 2, 147, 60, 0, 0, '2018-08-26 00:39:47', '2018-10-31 07:05:10', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1159, 'dde268fb0f2c9f499ac4913967587ec5bb010395477', 1, 24, 43, 1, 1, 34, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1160, '06b8c32e4049206007aa4500584ed53cff19026e1520', 1, 24, 44, 1, 1, 34, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1161, '12060b740ca2c16221ad67e4476816e663e5ffe01223', 1, 24, 43, 1, 1, 37, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1162, 'e00bb0bcd5239c45d85130d98489477aff0458402536', 1, 24, 44, 1, 1, 37, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1163, '3d230c346119fcb6765491e10053523943be82e0361', 1, 24, 43, 1, 1, 38, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1164, '76de29a683088d43ec476bc819d80d23fc66db362929', 1, 24, 44, 1, 1, 38, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1165, 'c95145a87f3c654b438b8da72a3cb669691db4052637', 1, 24, 43, 1, 1, 40, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1166, 'b4c6c4c16c8269a661fbf51c5892fd6414a3a719342', 1, 24, 44, 1, 1, 40, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1167, '42a5eab9244e596a7bf273a13717396944f3c30a1091', 1, 24, 43, 1, 1, 41, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1168, 'f67887cbc32e9004a4470a555bfd744bc7bb96701681', 1, 24, 44, 1, 1, 41, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1169, 'fa1ff8d79919cb5332dfc950eb3a1e9bcf52afd1754', 1, 24, 43, 1, 1, 42, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1170, '3544d6bdd2cd5e7d51626394a49d100158bf5152415', 1, 24, 44, 1, 1, 42, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1171, '54a075f5e86f69f4009dfb41b9da1e69f3d090541896', 1, 24, 43, 1, 1, 43, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1172, '8b50acd95a5c760e97e0098280c62d1748a038f2927', 1, 24, 44, 1, 1, 43, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1173, '495f16022ff9f3c328152835610bf31d7f451293744', 1, 24, 43, 1, 1, 44, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1174, '522fba5bfd19c25d5fa517514e00f478b58e4e3797', 1, 24, 44, 1, 1, 44, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1175, 'dc86fb90acf1af98265b7c273622ba186d03a95c495', 1, 24, 43, 1, 1, 45, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1176, '99bbfc61d465dbda1237d493c26c2ae19e9f1b4225', 1, 24, 44, 1, 1, 45, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1177, '1aa8cfd077d9a9dc445b47face99262ecf2c07221811', 1, 24, 43, 1, 1, 46, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1178, '604b777a028d2ba206e8e13925e3c25f331ba870575', 1, 24, 44, 1, 1, 46, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1179, '2c77962f936841e37f845a55b6c339b3440668472551', 1, 24, 43, 1, 1, 52, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1180, 'ce411df1c4829d5f04504e4daa3f9932345bb9192194', 1, 24, 44, 1, 1, 52, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1181, '8d1a39484989e197e5f877739320ad24105f28b4418', 1, 24, 43, 1, 1, 54, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1182, '518dca5cf28483ff3e73922e698b9dda43a8f6712706', 1, 24, 44, 1, 1, 54, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1183, '62e4a7440717b7f791fce83d935b2a4062284de5102', 1, 24, 43, 1, 1, 55, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1184, 'e17e6de403e5d123db407fd7b93b5df99d2520ef1370', 1, 24, 44, 1, 1, 55, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1185, '1e4a0d1694cbc513fbe1530670cf44a56f9e23de2260', 1, 24, 43, 1, 1, 56, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1186, 'cc2ac226ae3ff609c1ad8079c39f2073cc4c42861595', 1, 24, 44, 1, 1, 56, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1187, 'db7e0d50e11cb48e60c4a196e1f133ab9d7cc3872811', 1, 24, 43, 1, 1, 57, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1188, 'f8f09fb3e77e0b35424e188a1cdfdb12c2ae1cbf2544', 1, 24, 44, 1, 1, 57, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1189, 'a94b2ca5deea02762ceb18df150ff960d277fd2d676', 1, 24, 43, 1, 1, 58, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1190, '2581d764807553488a3184145abdf1a15bd0345e258', 1, 24, 44, 1, 1, 58, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1191, 'febae034db446f6fb56a93745ce61092c64f39a21033', 1, 24, 43, 1, 1, 59, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1192, '010b7228220ec7680ec8c98a9bd4097dd59881571897', 1, 24, 44, 1, 1, 59, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1193, '66342dacf7fe81a649638d35fec99b07a27a02aa2791', 1, 24, 43, 1, 1, 147, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1194, '9622efdf219fed615b9d702906e9a4de66b7d0ca1391', 1, 24, 44, 1, 1, 147, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1195, '5223da54807a31c6b5b1ef51ac0b6312183651b01795', 1, 24, 43, 1, 2, 34, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1196, '166872cbb4bd10323b644c06ee7b3ee0768374442398', 1, 24, 44, 1, 2, 34, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1197, '0697c7f3f31149f9a8c68575a1db079c727a7d551730', 1, 24, 43, 1, 2, 37, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1198, '5eb4c4d7e0cab6cf047fe1d0512f4ddecbdacb122884', 1, 24, 44, 1, 2, 37, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1199, '3748d821193b27b219d245a3f4c60e62eb1302571049', 1, 24, 43, 1, 2, 38, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1200, '57b8df658e85cf9307de1742c9d5b00954a347c12481', 1, 24, 44, 1, 2, 38, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1201, 'd5c095a4027cc90b61c046a32cb8da9b463c63bd269', 1, 24, 43, 1, 2, 40, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1202, '817bd00d818f8ef97190616c47fae88e6347ba492942', 1, 24, 44, 1, 2, 40, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1203, '6d75e628d6f826a61a0cc842939e364be45b95ad378', 1, 24, 43, 1, 2, 41, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1);
INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1204, '48cb89a4af7ccba978e2010330070e422441293e1010', 1, 24, 44, 1, 2, 41, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1205, '5133357499c29306e50e4eded113b7d4802502ef8', 1, 24, 43, 1, 2, 42, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1206, 'fcd2d97585286aeb4b1009ed75273775f4cb5f34870', 1, 24, 44, 1, 2, 42, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1207, 'f5967d0b77fc1006841b16f76168bba9689202f61032', 1, 24, 43, 1, 2, 43, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1208, '64d770adc095f9fa0e17feca0c3a41f5fe7f88c31816', 1, 24, 44, 1, 2, 43, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1209, '39a8116460a2b911b64e0eae4edecc2224c0b1401442', 1, 24, 43, 1, 2, 44, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1210, 'fc195ca8848c93410a1e6e6a2483bf4d84edebf9553', 1, 24, 44, 1, 2, 44, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1211, 'e898eaf9df488ce7fbe719ea3c2460b84ed4caad980', 1, 24, 43, 1, 2, 45, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1212, '0a6f6a72c764bee82e764d82687dbaa21ba8e0d81858', 1, 24, 44, 1, 2, 45, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1213, 'ae1ec7c6a1038b1b4f45c192e89365445bf6dba8228', 1, 24, 43, 1, 2, 46, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1214, '33027dc5a9c6dc67ddce45382389219b9f6886811080', 1, 24, 44, 1, 2, 46, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1215, '9e7192bf2b067ead566436e6358ff4a78d85ef54198', 1, 24, 43, 1, 2, 54, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1216, 'f9df034a68822968412a07a937f0516a12929e292486', 1, 24, 44, 1, 2, 54, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1217, '3adfeab2e056e0f93265e5bf773ed862a98ee1592672', 1, 24, 43, 1, 2, 55, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1218, 'b49f6fed831ae01ba46b0218a0ba179ace5ddbd13007', 1, 24, 44, 1, 2, 55, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1219, 'b4e86e7c6794bcffb1c9512d099c58cfb4f9f5881999', 1, 24, 43, 1, 2, 56, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1220, '2d07c653cf6e85c72904a531240bf0cd0d9055a3318', 1, 24, 44, 1, 2, 56, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1221, '60b9c4eb1e4350d3b24a3cd6db619d6dee9e23c3234', 1, 24, 43, 1, 2, 57, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1222, '0840429b4bda2beef2abdfc10a8c5c19cc8ec7663029', 1, 24, 44, 1, 2, 57, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1223, '2adacbbe9b2b841cb428b804ba9813b9b4e8f2632212', 1, 24, 43, 1, 2, 58, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1224, 'cd497d56579597faeebb09accf17528a5d2286a43023', 1, 24, 44, 1, 2, 58, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1225, 'b597bfbc2065442579903378c869818435c9d52e1389', 1, 24, 43, 1, 2, 59, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1226, '85628e001b1493080694cb3cc63fe1dc0e2f651f977', 1, 24, 44, 1, 2, 59, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1227, 'e44163e194678052ee61fbd8bdb9d790fd98c0c02391', 1, 24, 43, 1, 2, 147, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:06', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1228, 'a66407eb39ec28bb0a99337946a277e1ccbc28e589', 1, 24, 44, 1, 2, 147, 60, 0, 0, '2018-08-26 00:41:40', '2018-10-31 07:06:55', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1229, '0ad1550c325a70c24f86bba5773719e7bb5bd7fb1007', 1, 25, 45, 1, 1, 34, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1230, 'dbcb92b708c3e5c18d5df7da59d4ec812a0b07c61295', 1, 25, 46, 1, 1, 34, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1231, '8b7facc7cd7174881f1d8a34fc1aeb335a401b61981', 1, 25, 45, 1, 1, 37, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1232, 'eea24b385bcd2e83ce1a681f6f459aca6618a9072162', 1, 25, 46, 1, 1, 37, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1233, '9e373c4749322ce01f60adb3d99d6dc6ddb965bd2687', 1, 25, 45, 1, 1, 38, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1234, '0b614af88c5e37066e67febe3f68f15c8705ea782190', 1, 25, 46, 1, 1, 38, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1235, 'f071b088e2d7e55eff0af6a17ea46bf6ebcad1ce1449', 1, 25, 45, 1, 1, 40, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1236, '7a248d38b8ef438d89fb42ff3fa73a1a9d726918267', 1, 25, 46, 1, 1, 40, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1237, '1ad4874f1b5780c3608864d380fdd99eb5ce97a2922', 1, 25, 45, 1, 1, 41, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1238, '31c687685f81b9fc281b5af599d9dca4c495f49c1047', 1, 25, 46, 1, 1, 41, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1239, '6a5c5fa06872bf75f428725b4a235cbdd984c0af1954', 1, 25, 45, 1, 1, 42, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1240, 'dac852fb21dc211f5e686e13eb7c79e5d8d54777842', 1, 25, 46, 1, 1, 42, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1241, '632f0c8c81cd2a7396726c79d4ab2608b87c27362383', 1, 25, 45, 1, 1, 43, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1242, '3f44b94434c7e1ef83b5eab2a349b1aae25d1caa1572', 1, 25, 46, 1, 1, 43, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1243, '212ef62ed2536061ae25839c04c4c384b09824f0246', 1, 25, 45, 1, 1, 44, 60, 0, 0, '2018-08-26 00:43:03', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1244, '2913e56f4e3c32889529dc60192e804d592d16332319', 1, 25, 46, 1, 1, 44, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1245, '1f94ab9031c39cacf8b389a5ba4a345360327a221625', 1, 25, 45, 1, 1, 45, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1246, '5d91f8de3ca547b468b12a633346d45d76713ae31861', 1, 25, 46, 1, 1, 45, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1247, 'cb464598e8caa61986211401b89d3a36c64ee157538', 1, 25, 45, 1, 1, 46, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1248, 'c28bf43cb51301b7037550cdd84c5f7da6d8f9a61655', 1, 25, 46, 1, 1, 46, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1249, 'b519c44168d44f6f7a52241b1a9d9043ea162fc72631', 1, 25, 45, 1, 1, 52, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1250, 'c2393612074cf857b89922949a49470c53fc3c9d3028', 1, 25, 46, 1, 1, 52, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1251, '87f9503088322cbac4c107823d201e7a03d1c3572922', 1, 25, 45, 1, 1, 54, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1252, 'c66270c4287d0def1672d4968288f9b3aedd698a1932', 1, 25, 46, 1, 1, 54, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1253, '79fc4dac806ec4e512e4613facb6b7944425daf42462', 1, 25, 45, 1, 1, 55, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1254, 'b3e832b2179da3c8e02ddb66df2cc9ff131c907d3006', 1, 25, 46, 1, 1, 55, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1255, 'd71d7a258679efaa1832f27da76e6eb8eaf691811313', 1, 25, 45, 1, 1, 56, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1256, '1b189664b8352bf0e599ff8116b8aacc76c81b851550', 1, 25, 46, 1, 1, 56, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1257, '52dfa5e84ab82139aa007ecbb75c5be946297435977', 1, 25, 45, 1, 1, 57, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1258, '5f15c383583ed95386f798a890c031e85bcbbd67892', 1, 25, 46, 1, 1, 57, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1259, 'fa04b0db1570c094cbc60dc4692f18c0c021df912536', 1, 25, 45, 1, 1, 58, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1260, '3ac0c78b7ab756e2c39e3afca3ab61b17de6b9991981', 1, 25, 46, 1, 1, 58, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1261, '202afde5cf5df1124a7cedf5aa0764597440c6c52184', 1, 25, 45, 1, 1, 59, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1262, '15db02dee9868187356a49e3d373041d6c668f4f487', 1, 25, 46, 1, 1, 59, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1263, '644a5393ef9c857beb78b71f86527bf81cec25161113', 1, 25, 45, 1, 1, 147, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1264, '09caf85b552eb481eb739bda30bb34d59b7ca1321841', 1, 25, 46, 1, 1, 147, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1265, '7d0a40e82c3472c3e207635e0c67aadfb6c5d3b52674', 1, 25, 45, 1, 2, 34, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1266, 'c847be025257cb129bb472845ed7fb60984f0e2e2559', 1, 25, 46, 1, 2, 34, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1267, '090b382a2fcfd70c5cfed55a346dd99b5b5d60602106', 1, 25, 45, 1, 2, 37, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1268, 'c123d77325501a2257eb704781b6b0bff24ab45c565', 1, 25, 46, 1, 2, 37, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1269, '840d3f7779d00cd3bde86b05526e4368681d5dc6575', 1, 25, 45, 1, 2, 38, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1270, '9cbe6cf9c20df921e2d75d24ce064eec649c20d21029', 1, 25, 46, 1, 2, 38, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1271, 'cbf75afbe009d33e4cb0ec4d712eb4a23c0bcca11404', 1, 25, 45, 1, 2, 40, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1272, 'eb98de4858630e16bde0ffbf87827175003f184b2956', 1, 25, 46, 1, 2, 40, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1273, 'b9a897cdcb50be263ab08c29c9ec3a94f372e7892598', 1, 25, 45, 1, 2, 41, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1274, 'c759f7f5bde949e8e38228a1647af86163748a811647', 1, 25, 46, 1, 2, 41, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1275, '3bc0c0d62a25be576f880a2e6dc929a3b60b2a142245', 1, 25, 45, 1, 2, 42, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1276, '9d7b8270aab559e5aaf8ac06441db9efbdb122a81193', 1, 25, 46, 1, 2, 42, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1277, '176ac8190775192bd6e49da858614e93e354e618478', 1, 25, 45, 1, 2, 43, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1278, '868c36022bb07c2bbfd9ac8c824a005b06f4ee702780', 1, 25, 46, 1, 2, 43, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1279, 'bd487b6498d73036d2113a0e37b8d57da4e18fcd2845', 1, 25, 45, 1, 2, 44, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1280, '56d9fddc573c908980a91edf14bd84142b87766778', 1, 25, 46, 1, 2, 44, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1281, 'e00f287d36fe64d1337ee383498c2a7f18d4f2842778', 1, 25, 45, 1, 2, 45, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1282, 'c5de5f9494da6f4c9057b7fa43ef193edcf780fe2737', 1, 25, 46, 1, 2, 45, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1283, 'e894d795629e5e178cfb4f55795cf73345a004c52008', 1, 25, 45, 1, 2, 46, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1284, 'ba6b646d5ff615ce57382ab97395b9f1fe53313f2210', 1, 25, 46, 1, 2, 46, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1285, 'd6c55cf9b78e79873daca1bee241e9957f18ebf62712', 1, 25, 45, 1, 2, 52, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1286, '018f4cf1a10afa35c11e3df8eb56e97928194792290', 1, 25, 46, 1, 2, 52, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1287, 'e94c37a5dbab5dfd227e90aee51386c964876199729', 1, 25, 45, 1, 2, 54, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1288, 'cc88485c583fe61229aea9b6e1e218557fa0c6e4659', 1, 25, 46, 1, 2, 54, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1289, '3a77792ed2c0d9ee2132e7f34ac7090db99862c61180', 1, 25, 45, 1, 2, 55, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1290, 'e1e1a60b4ea0a3f9268500b72b047a5fed39ead6235', 1, 25, 46, 1, 2, 55, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1291, '42caa0373231b8fd88193556bd49a3565480dc412638', 1, 25, 45, 1, 2, 56, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1292, '105a81fc271ac3f573e50cf8ea05e81c7330f9c0334', 1, 25, 46, 1, 2, 56, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1293, '57b1b65659c7a0b2559dc4b023bed5f73362f6fe719', 1, 25, 45, 1, 2, 57, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1294, '1dfea81c74661e136f78a8f62af9957e7b5fc7cc720', 1, 25, 46, 1, 2, 57, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1295, '9e20e9f7b0967256a5c35e16be3546d1a53023982173', 1, 25, 45, 1, 2, 58, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1296, 'b198bcee0eaf2c688226941131b397839a8676f8362', 1, 25, 46, 1, 2, 58, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1297, '5a25030d3a96fc318ace15b8649f24ecd759b59c249', 1, 25, 45, 1, 2, 59, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1298, '26707a1fbf444bc10a71e5fb10415369207a68f01248', 1, 25, 46, 1, 2, 59, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1299, '257e5493ea6dbe12c4ec0a3b898d54cb137b4ddd925', 1, 25, 45, 1, 2, 147, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:07:35', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1300, '33d553fec809df1c5ab3917556fd4063fcc08251822', 1, 25, 46, 1, 2, 147, 60, 0, 0, '2018-08-26 00:43:04', '2018-10-31 07:08:23', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1301, '58b01d2a745fbabe7f7eed2e6e467288abf06ed52275', 1, 26, 47, 1, 1, 34, 60, 0, 0, '2018-08-26 00:43:58', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1302, '656bba751e6d87df91b5f4034e554fbb0aeea2762327', 1, 26, 48, 1, 1, 34, 60, 0, 0, '2018-08-26 00:43:58', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1303, '151f5b799ffa2ff7e7b3bf368ac049f41727ca45748', 1, 26, 82, 1, 1, 34, 60, 0, 0, '2018-08-26 00:43:58', '2018-10-29 07:59:33', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1304, '9989f6e007e7dca2f420ba7c0b4d8fa39cb123641843', 1, 26, 47, 1, 1, 37, 60, 0, 0, '2018-08-26 00:43:58', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1305, 'f709675bff94377e02d9cf77bf93f3e378f77025943', 1, 26, 48, 1, 1, 37, 60, 0, 0, '2018-08-26 00:43:58', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1306, '987c07590e7631ecb8ea17cef76dc109ed8afa132990', 1, 26, 82, 1, 1, 37, 60, 0, 0, '2018-08-26 00:43:58', '2018-10-29 07:59:33', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1307, 'bc4baf9e429e865a77eaeb9fdf83f9405529a9fb5', 1, 26, 47, 1, 1, 41, 60, 0, 0, '2018-08-26 00:43:58', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1308, '3d1c97b5b4402b0b56271a72fb303e861ca2db9f1419', 1, 26, 48, 1, 1, 41, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1309, 'ee5653d72c4201781192cf8179b8b6141e6693892740', 1, 26, 82, 1, 1, 41, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:33', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1310, '6bba11b83ee93ee5dedf705bc35ef2810c1f8fdf2847', 1, 26, 47, 1, 1, 43, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1311, 'd75250b8465f96b9162387eeed69a755e5668cad1494', 1, 26, 48, 1, 1, 43, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1312, 'ca6b2bd5b8e2e755053ad89fa15b08db12cd192b2487', 1, 26, 82, 1, 1, 43, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1313, '9d80889e395a9c7c0f7c98554247c8764f8aa6652554', 1, 26, 47, 1, 1, 44, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1314, 'ba5afa7fd78d955159c5f5902d91815089ececd2471', 1, 26, 48, 1, 1, 44, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1315, '6be69f7d05e386bd5978d33ff4414d302530ecda1666', 1, 26, 82, 1, 1, 44, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1316, 'f4b5747625ceb4545bdd95033853c56d584077b62236', 1, 26, 47, 1, 1, 58, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1317, 'dec8e0c28db97aab47d6f19544f7ede84436c24d759', 1, 26, 48, 1, 1, 58, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1318, '8a51d65490466d152562bf00824639ea5b95fc522392', 1, 26, 82, 1, 1, 58, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1319, '677d5a6868abacb929b2be417ec6c9f881a353442892', 1, 26, 47, 1, 1, 60, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1320, '84acd2f8cc4b8dff1e030ada94d03c74f20bcf4a1936', 1, 26, 48, 1, 1, 60, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1321, '857321367c3d6eaebba5e013b6b69c5d0c32c7c32625', 1, 26, 82, 1, 1, 60, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1322, '582d6d958350fc0d4387141bb9e9ae5e3a7f271d2499', 1, 26, 47, 1, 1, 61, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1323, 'e9862a8a50101a88cab991058d81234458c5f77d2268', 1, 26, 48, 1, 1, 61, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1324, '3118dce600f959998d9b5e7ad26b387308f10b77313', 1, 26, 82, 1, 1, 61, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1325, '092bd04501487eb8541a3c50a21870716a23b1ba189', 1, 26, 47, 1, 1, 62, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1326, 'e0395cd3c0d5a080cb3affa85f7d46ce3e6d9c781410', 1, 26, 48, 1, 1, 62, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1327, '33cc8748f9c4d060d606e84b42add29149794285673', 1, 26, 82, 1, 1, 62, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1328, '60000057ec8bf6cb0aaee12377b4c75e40be4711436', 1, 26, 47, 1, 1, 63, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1329, '1c6f133bf0e61bd339717e874015b46ea45b06f72656', 1, 26, 48, 1, 1, 63, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1330, 'c6af4b0c1482045ae88a3d3bd7f94e765a2332741595', 1, 26, 82, 1, 1, 63, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1331, '8896da7665bae3d996468720f6eea1cc1a6a3ec61256', 1, 26, 47, 1, 1, 64, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1332, '6578123ed532677902eef5b86506e85008b5c8ed1900', 1, 26, 48, 1, 1, 64, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1333, '89c63a03fe47ee2478044c56ed755d5faba37be0891', 1, 26, 82, 1, 1, 64, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1334, '3fbdc3fe808cccd0c98a4f11d0919c45242bf09e2001', 1, 26, 47, 1, 1, 65, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1335, '64ec1832e04c8d5de8d90f771c70aaf742f6c65a713', 1, 26, 48, 1, 1, 65, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1336, '0765f6e1fd272112ce409beb10d89de1fb4b58fc1832', 1, 26, 82, 1, 1, 65, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1337, 'e5d87e50929e16eb18e326b81e944bd4c3abaa8b1961', 1, 26, 47, 1, 1, 66, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1338, 'd78b2d36578a7446c304b0c7457b2ed627a343f1715', 1, 26, 48, 1, 1, 66, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1339, 'b2ba8a5029ddcd14ce5f7c848b2c369370d2df60220', 1, 26, 82, 1, 1, 66, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1340, 'f27b9cb60e9dce27dbf31a67945082cde73677381670', 1, 26, 47, 1, 1, 67, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1341, '19a72b56d0109a31257f5c239814be63f9241764532', 1, 26, 48, 1, 1, 67, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1342, '1dbd6d510ed19e437cead73194322666ce4ed78f1712', 1, 26, 82, 1, 1, 67, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1343, '6b2945c3bf44a2f2e06274edc6763e88fa41e4591127', 1, 26, 47, 1, 1, 68, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1344, '041e9be41b0de2d7ce288b1777ea2d152674353c55', 1, 26, 48, 1, 1, 68, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1345, '1e9fa8a535978a0e471186eacce158e9ecf63c4a2181', 1, 26, 82, 1, 1, 68, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1346, 'ee5d4d91b31ebe4ca497c6865fe205465543c02b2790', 1, 26, 47, 1, 1, 69, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1347, '24e65386e9a661f490f5c6b18fddd864f87c569d2289', 1, 26, 48, 1, 1, 69, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1348, 'b2471b199645df22bde2e4ccea0d3b81995eb70d2937', 1, 26, 82, 1, 1, 69, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1349, '3fdb4a0f956ca8740beecd9cc875242ec6db76212152', 1, 26, 47, 1, 1, 70, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1350, 'b0a82f8798d2a7d226c66c4e12156c7ece4a87122151', 1, 26, 48, 1, 1, 70, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1351, '3587c4c1274c7e0baa23f0fd2639d2f7af1bff221843', 1, 26, 82, 1, 1, 70, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1352, '4febe21f9e590bd1f3263e0be7dba44180b655a31746', 1, 26, 47, 1, 1, 71, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1353, 'c089c33e710034e01a04f966fb038ed27292ff461619', 1, 26, 48, 1, 1, 71, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1354, '3802614f5e6d03a871cafbcc5456358c4c2e26341080', 1, 26, 82, 1, 1, 71, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1355, 'a769609b50452192a1b6dec5050107b4010307e82057', 1, 26, 47, 1, 1, 72, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1356, '293ad5a8a28f15f2224c4995681f0b4a1fa91a881806', 1, 26, 48, 1, 1, 72, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1357, 'eaa366fb3b62a2607259ae3103f1d1478ba621152487', 1, 26, 82, 1, 1, 72, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1358, '2cb807c643d0333e8b72f2cbeccda393b615dc482727', 1, 26, 47, 1, 1, 147, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1359, '01851ea4cfccdd4e89f51587bea27271a0b68d882240', 1, 26, 48, 1, 1, 147, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1360, '546b283fd178770990f39ec6209b414d3c95fe5e2113', 1, 26, 82, 1, 1, 147, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1361, 'e87fad4f8bfff74c932ee375e1f41184c63321c21292', 1, 26, 47, 1, 2, 37, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1362, '946b28979e0efa95d701e6db5d5f054197a1ee01465', 1, 26, 48, 1, 2, 37, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1363, 'b484225cd2b025eaa64ac8df9a69ed3bf3cbc9cf982', 1, 26, 82, 1, 2, 37, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1364, '51dcbaacb83b63440489f7e5a18ed8b6631dec552181', 1, 26, 47, 1, 2, 43, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1365, '3e747ad2c89d1589b244df9bed0a19be3203ad222464', 1, 26, 48, 1, 2, 43, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1366, 'b269658c94d73bcca157fcd67a6f937082e762ed1692', 1, 26, 82, 1, 2, 43, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1367, '6ae3f919c68e52553ecd3d8e602d555cf7fd9772983', 1, 26, 47, 1, 2, 44, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1368, '816b7094519c507ded02bbdde48ff8e949de06911395', 1, 26, 48, 1, 2, 44, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1369, 'c829e4f0b3a78dc9420a818f4a441dcd218c53f92405', 1, 26, 82, 1, 2, 44, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1370, '9105ded9911413e281339cf8f0efd915a96511431200', 1, 26, 47, 1, 2, 46, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1371, '94efa3fd1498513e8d9d104ac85e20360da301a935', 1, 26, 48, 1, 2, 46, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1372, '7779f7d6db2960dc0818e4b55503cdb305840a972935', 1, 26, 82, 1, 2, 46, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1373, 'ff4caaf43d899f5895db7125d9992cc4f044789e2910', 1, 26, 47, 1, 2, 55, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1374, '445c37f0aacbde67539f3e643495f9473de93d5a1159', 1, 26, 48, 1, 2, 55, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1375, '51f922b3bda7aa922a4545098195b3cb3e4da4d12988', 1, 26, 82, 1, 2, 55, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1376, '59c405ac270f1847b2af16144bcb8f6154a7166f2060', 1, 26, 47, 1, 2, 58, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1377, 'c8b1cd444233868e927f9273931c4db11ce2f910919', 1, 26, 48, 1, 2, 58, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1378, '75d9701d5d1b2e75ab14bf31d14b2f4215b8ed1e2246', 1, 26, 82, 1, 2, 58, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1379, '9b5809dc425c1da4c8437a6542f91865d24e27971966', 1, 26, 47, 1, 2, 60, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1380, '425df4d2fc6cb113a790205395a8b8bcb37db51041', 1, 26, 48, 1, 2, 60, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1381, '8476a47093fc8527dce741284cdd92aca44ab1ec1366', 1, 26, 82, 1, 2, 60, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1382, '98cff4c1dbe4f6a26916ec7a02c1a10df9551902779', 1, 26, 47, 1, 2, 61, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1383, '7362a42c51972f672be14948a90333d2441ee19b1785', 1, 26, 48, 1, 2, 61, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1384, 'dd6f7ca9074fe160072f19a1d638e655b41b4e3c2983', 1, 26, 82, 1, 2, 61, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1385, '3fedb46d301f5651c5a6b8cc637ecafcb442a86d1856', 1, 26, 47, 1, 2, 62, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1386, '686423c25fe5657e3c7806fcbdea1eb8acce45d3811', 1, 26, 48, 1, 2, 62, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1387, '727f38f7bce31a0c5adef896f6c1b29c2ad3cd471759', 1, 26, 82, 1, 2, 62, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1388, '9508a1773ff1f95d3bfca176d42ef654bfd3b4e51313', 1, 26, 47, 1, 2, 63, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1389, 'b352862310e012af360d310ab85efea556e4d1f0508', 1, 26, 48, 1, 2, 63, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1390, 'e9cedeff1f8c10eb9afb1b970df71510e31e1852968', 1, 26, 82, 1, 2, 63, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1391, '3d173b8f5b4b590117fdc21773b3e9354dc5f276395', 1, 26, 47, 1, 2, 65, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1392, '81dad18a9adc22a4ecaabb7d20750bd2eb5c95e41798', 1, 26, 48, 1, 2, 65, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1393, 'c543733b61688941a8e42597879ec52d390f68051431', 1, 26, 82, 1, 2, 65, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1394, '1875401c68264105edba5b1b2ca04d2f66b2cbbb1375', 1, 26, 47, 1, 2, 69, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1395, 'd46b1ff9f776f0c95b45a79e83b5af27d37d569f948', 1, 26, 48, 1, 2, 69, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1396, 'a2759d6545f7fe71cbc9881a1b0c8eba9673bf9d864', 1, 26, 82, 1, 2, 69, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1397, 'b49b10d891090d451040a38b8971777b73c7537a37', 1, 26, 47, 1, 2, 70, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1398, '2f8bde921c52a5acb126017ce08fde3e3a7872f71928', 1, 26, 48, 1, 2, 70, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1399, '2743ff2d36c000ce32166dfaf313de5503bf527f2257', 1, 26, 82, 1, 2, 70, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1400, '2484d548e1a34bc491dd3ee9eab2b0375a2d24882439', 1, 26, 47, 1, 2, 71, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1401, 'dd675d68bd14686a40cccf3e9d327bd853cb2c1498', 1, 26, 48, 1, 2, 71, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1402, '1091f368800fead0df918bf7f41dcc1f326360012289', 1, 26, 82, 1, 2, 71, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1403, 'bf62e3fd4028eef1a1309b921d66a0d8307c36d02343', 1, 26, 47, 1, 2, 72, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1404, 'dd7bfce965c4c12ea0235b1820782160a0cd05b93005', 1, 26, 48, 1, 2, 72, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1405, '51797fa5fb318377f6e86e0d4ce8bb6639263849418', 1, 26, 82, 1, 2, 72, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1406, 'd7e4bb4ac0241f5de847c4ee2ec22cbf313b5c752300', 1, 26, 47, 1, 2, 73, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1407, '5a060ea5e8ac86b8a54135ec4b3966279fc32d9b2034', 1, 26, 48, 1, 2, 73, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1408, 'b5a64517144888ed87e4a5a3be529d7c032831e81334', 1, 26, 82, 1, 2, 73, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1409, 'fbb7c47d2a559b7552d146fea8c11393a042d1f11516', 1, 26, 47, 1, 2, 75, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1410, 'eacab0b1358e703109b528c6794050e7e76498c7970', 1, 26, 48, 1, 2, 75, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1411, 'f3b82202b731e552fd0ba82c15d653be7ad346221372', 1, 26, 82, 1, 2, 75, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1412, '66292fb2004093d47ea31b87e93a38a185d64cb12879', 1, 26, 47, 1, 2, 76, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1413, '43f446eb69040ccec766cb9c851a26983ec819b81746', 1, 26, 48, 1, 2, 76, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1414, '942ace65d560e1bac3bfec9c2102b0d2858af298126', 1, 26, 82, 1, 2, 76, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1415, 'c3896bfa19402943df4eb44a3fd62416b1c1db592832', 1, 26, 47, 1, 2, 77, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1416, '7a1350f65158783478f7d8c5d5abc205157c4a56571', 1, 26, 48, 1, 2, 77, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1417, '847d41c02313819b9858d7921608c4826a33d825935', 1, 26, 82, 1, 2, 77, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1418, 'b772a83dd2cedb8c4e6b31bb0d99566b42f864061560', 1, 26, 47, 1, 2, 147, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:16:07', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1419, '432a91fe1e4dee9ea84b7d44cdd1917de0a218de1882', 1, 26, 48, 1, 2, 147, 60, 0, 0, '2018-08-26 00:43:59', '2018-11-10 11:21:18', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1420, 'b83b38e7ebc5a49473a7ec854cac79a0f1fd4dd41440', 1, 26, 82, 1, 2, 147, 60, 0, 0, '2018-08-26 00:43:59', '2018-10-29 07:59:34', '37.124.131.170', '::1', 1790, 1790, 2, 'course_subject', 1),
(1421, 'a720bc2e73a42698a6952dded3cb2d379cc72b2a2525', 1, 27, 49, 1, 1, 34, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1422, '82151c82476aca8438cce79159fadf416cf9a96c2275', 1, 27, 50, 1, 1, 34, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1423, '44fb067616749400f15973a44f1dc6d98391301e207', 1, 27, 83, 1, 1, 34, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:32', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1424, 'dec4c494b908789779d9b7fd9b5245348d32224c925', 1, 27, 49, 1, 1, 37, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1425, '3a6dc68b8166786e86752418456d978bd6abf1c3619', 1, 27, 50, 1, 1, 37, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1426, 'a9d520c8c7427aa9ef4b71f9f1df6400f70a17a51153', 1, 27, 83, 1, 1, 37, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:32', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1427, '7fea5699fa2fdb6392e757339d4183000f72f9001787', 1, 27, 49, 1, 1, 43, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1428, 'dbbf7b7e4f7ce70d2580356cf22d02f9b8897c27654', 1, 27, 50, 1, 1, 43, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1429, '9a3cd1dddbf9a7d676d92d5c551bfa0168ac5d8150', 1, 27, 83, 1, 1, 43, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:32', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1430, '539d398b4e0acc400584b7dcbb3ab21aae11d2521014', 1, 27, 49, 1, 1, 55, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1431, 'd54f488cbefd4e9d9adaa7b0a343e88054fd9f0263', 1, 27, 50, 1, 1, 55, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1432, 'acfa8062b017959756ea60e6fde6ebf4076b2028146', 1, 27, 83, 1, 1, 55, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:32', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1433, '736ddda4d35720efbe66f99d56a28bc34474d50a272', 1, 27, 49, 1, 1, 58, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1434, 'e2cdb6f89b5e860d1564a67a3bd7ee481b238a622403', 1, 27, 50, 1, 1, 58, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1435, '74c7e14198f13acb3f161bcb4dade7bb62c7b905120', 1, 27, 83, 1, 1, 58, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:32', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1436, '370dc4e80ca84a4372f4722d1a7b00365c8d214e687', 1, 27, 49, 1, 1, 60, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1437, '1111d8aa2fa775a285a0800ac2762bfef09b071f1673', 1, 27, 50, 1, 1, 60, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1438, '451d4cbbfe13d00e1f612ea4406082319915e4b92151', 1, 27, 83, 1, 1, 60, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1439, '52b4995ab9d285be73d538669ea3baf4b55068592019', 1, 27, 49, 1, 1, 61, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1440, '3e0eaf6b627d42297bfc0766dd3334dd532fbcb8159', 1, 27, 50, 1, 1, 61, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1441, 'e30c91c5bffea9c31441890969fe90277271977a90', 1, 27, 83, 1, 1, 61, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1442, 'cc33bbb2f844e302758a819486b3c4aada45ddfb360', 1, 27, 49, 1, 1, 62, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1443, 'fe20cb89ca1df8975f575464425a9b7e7dce32157', 1, 27, 50, 1, 1, 62, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1444, '2c13ed15bfc9a0b283eeaa70aabd54d3a81f127c1834', 1, 27, 83, 1, 1, 62, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1445, '842aa429e3dbda3114e4e77f6a66df592fec86a1484', 1, 27, 49, 1, 1, 65, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1446, '88f7448cdf8f7fe9b9ea8c45b71c8eaf201f57c42837', 1, 27, 50, 1, 1, 65, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1447, 'd00a90dee4c283ec804f53836e256f4af979b1912403', 1, 27, 83, 1, 1, 65, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1448, 'ed9823cb5a0f25e87ed81ef0b9bfd407006d2d011416', 1, 27, 49, 1, 1, 71, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1449, 'c6a26fa9a2d56fdf4b65d7c184d4673dbac1d6bf1366', 1, 27, 50, 1, 1, 71, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1450, '31a791ed27d73838b7559510c15055ea5ed406601254', 1, 27, 83, 1, 1, 71, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1451, '38c7d576f1db9615bccfadef9d7559be4076c5882854', 1, 27, 49, 1, 1, 72, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1452, 'e5008bf24d68f9674e23ed3ab66d5ba2473127d6861', 1, 27, 50, 1, 1, 72, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1453, 'bb356d55bce54fcb41d8ccb03e43846eb4146331499', 1, 27, 83, 1, 1, 72, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1454, '27aa1d37c6d6799e59fc323e738dc47e7dc05c3a30', 1, 27, 49, 1, 1, 75, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1455, 'a7fbc2e76363fcdff8618639c864ae9b587bd6991784', 1, 27, 50, 1, 1, 75, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1456, 'c6fcaebefb6efa670167c5b56c5f9681af54593f1115', 1, 27, 83, 1, 1, 75, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1457, '62582062319e700c57f284031ca17305800860b71180', 1, 27, 49, 1, 1, 78, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1458, '3f668e7f1855bf151a32b98554488b8623a8d365541', 1, 27, 50, 1, 1, 78, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1459, '445d654ce7079aba80e3e3c7749e8643e32826f11766', 1, 27, 83, 1, 1, 78, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1460, 'b9ca0bcfc2307ede76c1815cd18d1551f77f51631228', 1, 27, 49, 1, 1, 79, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1461, 'f926e9f35a593d615a1caac219032a3d389531231552', 1, 27, 50, 1, 1, 79, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1462, 'ddcf76a92344096f7dae27a0e03c37c18e7fb79a1826', 1, 27, 83, 1, 1, 79, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1);
INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1463, 'a04e0abc0c4abb6723b75370027a561a2e0e76ce1371', 1, 27, 49, 1, 1, 171, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1464, '4c9b6d162e681c0a21df67743f15686a79dbbb391821', 1, 27, 50, 1, 1, 171, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1465, '7301683c41f6f932b94f61a798989fb0b223392b1199', 1, 27, 83, 1, 1, 171, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1466, 'b6c1fe4b06a40615358cc43b719497d4619301161488', 1, 27, 49, 1, 2, 37, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1467, '6410ff5022b4c2b027d274a80c1800e3801676762506', 1, 27, 50, 1, 2, 37, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1468, 'ade721f3b202faa713a7e9edcb3bd6761d890d642870', 1, 27, 83, 1, 2, 37, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1469, 'f7505d37095a967546a8348063913cd6c855f09c609', 1, 27, 49, 1, 2, 41, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1470, '39d046b4c7805ff587a9eaedbd8aff177f2a04ba1494', 1, 27, 50, 1, 2, 41, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1471, '18f3934faf4a7a2d792d976c03fb76f3e114cfb13026', 1, 27, 83, 1, 2, 41, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1472, '79fe004f9ba1eabd00709c11e8b766c740cde351697', 1, 27, 49, 1, 2, 46, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1473, 'c2eda3c153e2f3f6447a29c083fdfe00d78504a21852', 1, 27, 50, 1, 2, 46, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1474, '050f05794b852ce8e1fd7bcc5723295857d83c893', 1, 27, 83, 1, 2, 46, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1475, '93493e5c2bedc741907e8d898c89bfab614fe8222528', 1, 27, 49, 1, 2, 58, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1476, '0f130a16d6a56b3bc496fd347fb21334789e6ac02333', 1, 27, 50, 1, 2, 58, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1477, '0be43fc8d498422febec3e44e0f37b6a4c7d1f132837', 1, 27, 83, 1, 2, 58, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1478, 'af9aaf6d86f378e1453ee695bd5578d56921ca5a1900', 1, 27, 49, 1, 2, 60, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1479, 'd53279efe18542c29c6c654b13caa82b956efa3c718', 1, 27, 50, 1, 2, 60, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1480, '42ec7fbc4016be048cc1b53db1465fd7ef15791b1173', 1, 27, 83, 1, 2, 60, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1481, '395eaadfe498add2726381c97a2e83bb57a8e0b2124', 1, 27, 49, 1, 2, 61, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1482, '389e0bfd9a86160a96aef3d7d1424091a7449d10541', 1, 27, 50, 1, 2, 61, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1483, 'a701e5d511ea6808b82d1127b7a036dc5e2ee67f2031', 1, 27, 83, 1, 2, 61, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1484, 'd0bcaaa8923fa54b4378582a0da2e40ac03afa6a620', 1, 27, 49, 1, 2, 62, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1485, 'e623b532a9d9c3d53517a6c80e322b20c4c92b3e569', 1, 27, 50, 1, 2, 62, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1486, '99a4d30f1585e9d2e84262a54037ea9ebc2537e2785', 1, 27, 83, 1, 2, 62, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1487, 'e6f29b5d33f510cba9de2e1bc33f1f6762a6166b1733', 1, 27, 49, 1, 2, 65, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1488, '27edacc2558bc4e58207ed5dc52778fccf6bac7c1747', 1, 27, 50, 1, 2, 65, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1489, '0ad5205d00986cd26f26ce5cdc0a68546ebc961a1323', 1, 27, 83, 1, 2, 65, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1490, 'f4a936af25bc0c1a3b02e007c1ab2d0b3c51be81469', 1, 27, 49, 1, 2, 71, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1491, '55e97b57c1b5a0cdf30ff0c6c05ce45d1d6153d92973', 1, 27, 50, 1, 2, 71, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1492, '5781e75a6ae482b9123bd4db882cdfdd3e5944c12872', 1, 27, 83, 1, 2, 71, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1493, 'aecd1e4b58a59eec74aa2440d2409b24d0a1d8672293', 1, 27, 49, 1, 2, 72, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1494, '1c258b41bf22fdda8bc5906faf4b8833e9acf7831313', 1, 27, 50, 1, 2, 72, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1495, '1fe36ea98eaccfcc08cce1f35362e04915faa2461662', 1, 27, 83, 1, 2, 72, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1496, '97aa642235468cffc8a2406b2efdb44772357ebf462', 1, 27, 49, 1, 2, 75, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1497, 'f41c361f9727ab482f2ec796b5f5ba8b889383172799', 1, 27, 50, 1, 2, 75, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1498, '1abb4ce45830029facde4e088a7101d6722c23ea1138', 1, 27, 83, 1, 2, 75, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1499, '4e19661b2573fceece9cd7cd80fe996054fbf1a2302', 1, 27, 49, 1, 2, 86, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1500, '0b207c02673826720b5833c59b667751aa4274db378', 1, 27, 50, 1, 2, 86, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1501, '97370f03d1dbc40c58295db77c3308e6d8e3783f2629', 1, 27, 83, 1, 2, 86, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1502, 'a33de41a8d4cb5cfd326614d9df30a40c4962503297', 1, 27, 49, 1, 2, 87, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1503, 'c7f568248c27662e93f32a8c7e62539526b5ac151073', 1, 27, 50, 1, 2, 87, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1504, '3cec5e426e75a1e44b3eb90ea3d5276b431e41661450', 1, 27, 83, 1, 2, 87, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1505, '13d732327f3f11c219fd5ce92f1c376be3bb3e8a298', 1, 27, 49, 1, 2, 88, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1506, 'f84bb76678dcd51902a3b0df7a2ca19cae881832570', 1, 27, 50, 1, 2, 88, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1507, '29188b1f9ee168d32ea232ef4a40bab4559f7618752', 1, 27, 83, 1, 2, 88, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1508, 'adbf006658b571ea0aed8569b11e7b1ed4998b52105', 1, 27, 49, 1, 2, 89, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:26:47', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1509, '7b09509ef9e80b585e60fd55b2b677883c6da6f62468', 1, 27, 50, 1, 2, 89, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:30:52', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1510, '61174153308b970268b4c2cffb731ea82396be5c1468', 1, 27, 83, 1, 2, 89, 60, 0, 0, '2018-08-26 00:46:08', '2018-11-10 11:36:33', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1511, 'ad6176a1e2692faefbc92e4947f7c82facf093322870', 1, 57, 84, 1, 1, 37, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1512, '846c4fd2d480b0d420ec47cc04eb77bf67c55bd31953', 1, 57, 85, 1, 1, 37, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1513, '40d78801f44955760e3e00a5e8694874f978426d2313', 1, 57, 84, 1, 1, 41, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1514, 'd053f9f7c8ab5de904a9bcb8b426243397fb76512947', 1, 57, 85, 1, 1, 41, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1515, 'bc23f0a7ac1bb6db67fb0494afa501a71624bee6186', 1, 57, 84, 1, 1, 46, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1516, '77d8165c8686bfd20dccfdcc2daf89ef08afac452612', 1, 57, 85, 1, 1, 46, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1517, '1f82d09a237b74cfd782776597f96fe841f215b31376', 1, 57, 84, 1, 1, 58, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1518, 'e80ec9e8737b8853c3707e6b4d86401d610d0f7c164', 1, 57, 85, 1, 1, 58, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1519, '789375ec0751401ff446b9de3eff4c7908966d53333', 1, 57, 84, 1, 1, 60, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1520, 'c64a13e81199699cb1e14df9487356741827c8682360', 1, 57, 85, 1, 1, 60, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1521, '69c259d6e8916e203e1d242dd3aa5f949412d1371426', 1, 57, 84, 1, 1, 61, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1522, '2407728522554cf530b0bd5fde3a62e7900279981761', 1, 57, 85, 1, 1, 61, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1523, '06b5966899094536af2454e14a4699e46811f5d931', 1, 57, 84, 1, 1, 62, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1524, 'a129dd31a3e88bc92ec366d25874adc5c6b2681a2614', 1, 57, 85, 1, 1, 62, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1525, '253bca475a7194b39faeb8bcecb323e62eb6fc2c1656', 1, 57, 84, 1, 1, 64, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1526, 'd7ba699d0d50bc6f8bf5ec0e319c5ecd06fc4c811914', 1, 57, 85, 1, 1, 64, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1527, '86b5e32804304d6f3e238341dc7bc9db01578e3e1652', 1, 57, 84, 1, 1, 65, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1528, '7a8fa6350c18a38365b408a665fdb39fb8f8182b1423', 1, 57, 85, 1, 1, 65, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1529, '17198874e9d19700170ed9becd864bc791b0215f157', 1, 57, 84, 1, 1, 71, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1530, '53c4384532d408b7fb85487a6b339a98cd1332622898', 1, 57, 85, 1, 1, 71, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1531, 'c3076858e55dbb269e32b79c830d6cf3168de08d2299', 1, 57, 84, 1, 1, 72, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1532, 'b272442dccec2ca562d6b56e579abef755761fcb1678', 1, 57, 85, 1, 1, 72, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1533, '46a7814c44812a3620b22e2d7f8465ca44e685a02880', 1, 57, 84, 1, 1, 89, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1534, '40bd7d3439e6c99508cb587b5b438f6a17f1375a1702', 1, 57, 85, 1, 1, 89, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1535, '47d62a1980bc2904c0fa10f1837378859a28ba9f1399', 1, 57, 84, 1, 1, 93, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1536, '19fb7d6a9a93a15cf68607db3a12824932fa7756595', 1, 57, 85, 1, 1, 93, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1537, '1009040545786831db44ab87c678f031e22253b81063', 1, 57, 84, 1, 1, 94, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1538, '55f3b30b67cbae1a0137bce7682fda4930276c1a813', 1, 57, 85, 1, 1, 94, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1539, '4b11e32101e690d64c60fc61874644f5201ffffb2024', 1, 57, 84, 1, 1, 95, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1540, '2ef5138ccaa16fae430416b616ba9c4f1056057558', 1, 57, 85, 1, 1, 95, 60, 0, 0, '2018-08-26 00:50:40', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1541, '5b128e3253503cf16b9261a9a7b94853084d7d4f253', 1, 57, 84, 1, 2, 37, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1542, '8de7c6dde8d779d5a01766e09d41d13bb32cdcab1863', 1, 57, 85, 1, 2, 37, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1543, 'd8999cdc3c3daf2fbc86370fb563ab02e8010e872009', 1, 57, 84, 1, 2, 43, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1544, 'a2732398e6fa040e4c9c85137f0e6aaca2c256282564', 1, 57, 85, 1, 2, 43, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1545, '6e6522504d8ad809d245ec8de377d54200f3b0111780', 1, 57, 84, 1, 2, 58, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1546, '7d1381d60ae80d9428f9fcd37d9d5ce452af54f92192', 1, 57, 85, 1, 2, 58, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1547, 'c9243ba00985f375d63e068de6b00e8717eeb4732145', 1, 57, 84, 1, 2, 60, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1548, 'bdaacf9dc468a13c5304ebede15d8db1456a9d13125', 1, 57, 85, 1, 2, 60, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1549, '6880d15727ad237090ca7024c56cd2553718a0452353', 1, 57, 84, 1, 2, 61, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1550, '93ca8b2cf9171555cd98a2fa6f1c398518ff37b62475', 1, 57, 85, 1, 2, 61, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1551, 'b0a309741d889d1bb00d53d97488dc3f4bbc60682483', 1, 57, 84, 1, 2, 62, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1552, 'fb3191bd55444b44f2974ba4e1566d0bcbb18943748', 1, 57, 85, 1, 2, 62, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1553, 'd9b5d7aca28266c9f27c599b0918dc8fc5727c071205', 1, 57, 84, 1, 2, 65, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1554, '18982d039bb478937524a1b03ffb85f5b19e786a2511', 1, 57, 85, 1, 2, 65, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1555, 'a6f0dcb15182ebcc64249f79c85725f4cd8ba774332', 1, 57, 84, 1, 2, 71, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1556, '9001d37a167eef485bdd2bc44ffba76d2d0a1dc32859', 1, 57, 85, 1, 2, 71, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1557, 'bdf97deebe7553c4e51cc13b118dae44f4f0c53c1395', 1, 57, 84, 1, 2, 72, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1558, '75488c818c2968030b04a02050ebd4424feb593d1981', 1, 57, 85, 1, 2, 72, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1559, '2831147fbc25ed2c362b786cd38e6c2d14ba5e801251', 1, 57, 84, 1, 2, 97, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1560, 'e4b3bcbb9c37bdee2445a90f714887bf1c3f1db31550', 1, 57, 85, 1, 2, 97, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1561, 'ca07b4bd9ca27ae7545dadf7fff5dc478f4b5e321848', 1, 57, 84, 1, 2, 98, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1562, 'd9acfcd07a707361b9f4a97567a66fe791663a2f519', 1, 57, 85, 1, 2, 98, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1563, '263283eb209faec51e120c921a068ac4864f03fd197', 1, 57, 84, 1, 2, 99, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1564, '303981ed992526225e89750649da74c598f428951698', 1, 57, 85, 1, 2, 99, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:01', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1565, 'fc069b2007204841570d6b1b7980dc0fac7df3142219', 1, 57, 84, 1, 2, 101, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1566, '9ba27d25c03523439e387a63e62e9b74f5a614cb1594', 1, 57, 85, 1, 2, 101, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:02', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1567, '98aff89b75921db5104b954f438b11e157f321442290', 1, 57, 84, 1, 2, 102, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1568, '59ebc480c3de4ba085de80b32db481f0348d1fa9252', 1, 57, 85, 1, 2, 102, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:02', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1569, '14201d5d1a915b345c4bd2425b1fce72da9bddcb2404', 1, 57, 84, 1, 2, 173, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:38:35', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1570, '41db5b5b48920fda4db67ed6f8f5b5b03966c0a71283', 1, 57, 85, 1, 2, 173, 60, 0, 0, '2018-08-26 00:50:41', '2018-11-10 11:41:02', '37.124.116.227', '::1', 1790, 1790, 2, 'course_subject', 1),
(1743, 'd3e1dc8b660545321cfec984fbb998e1f9c55c3b299', 1, 24, 91, 1, 1, 34, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1744, '7d162b557c563b728debcc94de2c51f41ee62056672', 1, 24, 91, 1, 1, 37, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1745, '8015016b6f7d7ece21e5fdc85c009b1dc45f06d51721', 1, 24, 91, 1, 1, 38, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1746, '5d5705484fe03e0b6aa1e5f08668958374730b96860', 1, 24, 91, 1, 1, 40, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1747, 'e92252ee8384cc6a598ad818a72c203957af95332589', 1, 24, 91, 1, 1, 41, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1748, '20d5dc4019487c44fc0d308b64100236988161a22338', 1, 24, 91, 1, 1, 42, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1749, 'fb23799a50f0a21dca1e1e548b5de6667732ff9b2315', 1, 24, 91, 1, 1, 43, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1750, '271b170e74a9b5dbfe9cd07c15b6b95ecb4b49be772', 1, 24, 91, 1, 1, 44, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1751, 'ee465f9bebe9c4ad790e67e4bcc04d0d8f2714ad349', 1, 24, 91, 1, 1, 45, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1752, '9c26a4fb2b64cf3e0901351d6bf480bf3ffe18ce1030', 1, 24, 91, 1, 1, 46, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1753, '2e6441df0d0717482420ddd5166e3f3ab898ccf3347', 1, 24, 91, 1, 1, 52, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1754, 'effe0671f641c16a31b769f9528cf90de4ce1d892192', 1, 24, 91, 1, 1, 54, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1755, 'e13eaba25816efa9dce697f0ae9d2501483687b8846', 1, 24, 91, 1, 1, 55, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1756, 'a18fef213fd90c6a79147ff8e75d53cd902188e71918', 1, 24, 91, 1, 1, 56, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1757, '9d8d473996584bfac7657b86309f973d699b0c48690', 1, 24, 91, 1, 1, 57, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1758, '327a41314db14bc927237c8afa2ae50dedf25f58162', 1, 24, 91, 1, 1, 58, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1759, '5167866a1200580ea56fbf2f79b39486eaa37c0b182', 1, 24, 91, 1, 1, 59, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(1760, '7fb53a6e3e5ae76cc3de66cb5e6e25421d87bec02657', 1, 24, 91, 1, 1, 147, 0, 0, 0, '2018-10-08 07:07:36', '2018-10-08 07:07:36', NULL, '37.124.119.129', 1790, NULL, 1, 'course_subject', 2),
(2117, '66a5c016bd0b97ea766bd960f80914c6d4e81bb62489', 1, 20, 35, 1, 1, 58, 60, 0, 0, '2018-10-22 07:01:57', '2018-12-11 19:06:17', '86.51.184.42', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2118, 'dba4ce038b12abe4db458da2d2e0f6af4304e6be2547', 1, 20, 36, 1, 1, 58, 60, 0, 0, '2018-10-22 07:01:57', '2018-12-03 08:53:06', '37.124.115.27', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2119, '46d4174f4d8ce3eebc2ee8a37f5b2fa9947fc4b81630', 1, 20, 35, 1, 2, 58, 60, 0, 0, '2018-10-22 07:01:57', '2018-12-11 19:06:18', '86.51.184.42', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2120, 'fa9aba79c8b5f2a0d6efa597b0f060302b5383b31467', 1, 20, 36, 1, 2, 58, 60, 0, 0, '2018-10-22 07:01:57', '2018-12-03 08:53:06', '37.124.115.27', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2121, 'a9397351bfd46c0a55f77d00a62cdd816179fd612917', 1, 21, 37, 1, 1, 58, 60, 0, 0, '2018-10-22 07:02:41', '2018-12-11 20:37:41', '86.51.184.42', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2122, '6638fd89606c041bc1a7aef8136dde05344fd4a0789', 1, 21, 38, 1, 1, 58, 60, 0, 0, '2018-10-22 07:02:41', '2018-12-11 21:46:51', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2123, 'ca17bb2277c16e0cfebd7eb56d9073f3b1730fb61858', 1, 21, 37, 1, 2, 58, 60, 0, 0, '2018-10-22 07:02:41', '2018-12-11 20:37:41', '86.51.184.42', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2124, '9670f6ba448b67767ae3d18fb4614178eff8b0072214', 1, 21, 38, 1, 2, 58, 60, 0, 0, '2018-10-22 07:02:41', '2018-12-11 21:46:51', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2125, '172bdfdf19ef58bf88cb819b496300ec285feea0751', 1, 18, 31, 1, 1, 58, 60, 0, 0, '2018-10-22 07:03:54', '2018-12-09 20:40:08', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2126, '8af78a1fe6cfeb70706985f6972033c07d00b0071696', 1, 18, 32, 1, 1, 58, 60, 0, 0, '2018-10-22 07:03:54', '2018-10-22 07:03:54', NULL, '37.124.131.170', 1790, NULL, 1, 'course_subject', 1),
(2127, 'c7a1c4662d0416e7da380c76b100adb94773219a346', 1, 18, 53, 1, 1, 58, 60, 0, 0, '2018-10-22 07:03:54', '2018-10-22 07:03:54', NULL, '37.124.131.170', 1790, NULL, 1, 'course_subject', 1),
(2128, 'e8c53543f1d1d19bf75a8d91e43400b9d5a397601458', 1, 18, 31, 1, 2, 58, 60, 0, 0, '2018-10-22 07:03:54', '2018-12-09 20:40:08', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2129, '9f92ae61ffcbd3b18d97c4bf000f5b14ee8d1cd8376', 1, 18, 32, 1, 2, 58, 60, 0, 0, '2018-10-22 07:03:54', '2018-10-22 07:03:54', NULL, '37.124.131.170', 1790, NULL, 1, 'course_subject', 1),
(2130, 'c1be55b2834153f5095ec7a35df36bb0126bd2512085', 1, 18, 53, 1, 2, 58, 60, 0, 0, '2018-10-22 07:03:54', '2018-10-22 07:03:54', NULL, '37.124.131.170', 1790, NULL, 1, 'course_subject', 1),
(2131, 'f95ee05cf35e3499472332a7e7234f31dffd90dc179', 1, 19, 33, 1, 1, 58, 60, 0, 0, '2018-10-22 07:04:19', '2018-12-09 21:55:53', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2132, '223a5ceab72663a180936750366d3641e427ce15258', 1, 19, 34, 1, 1, 58, 60, 0, 0, '2018-10-22 07:04:19', '2018-12-09 22:04:10', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2133, '1f6959f528251a73c1a2f8a47d37fb1c3ed621a8964', 1, 19, 33, 1, 2, 58, 60, 0, 0, '2018-10-22 07:04:20', '2018-12-09 21:55:53', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2134, 'df1594757926bcf6bf1b747379f479b24fdbc022535', 1, 19, 34, 1, 2, 58, 60, 0, 0, '2018-10-22 07:04:20', '2018-12-09 22:04:10', '89.237.145.114', '37.124.131.170', 1790, 1790, 2, 'course_subject', 1),
(2174, '38f1ae50c64740936418fc171a9f61d14c7e7b152270', 1, 20, 35, 1, 1, 176, 60, 0, 0, '2018-11-06 08:42:33', '2018-12-11 19:06:17', '86.51.184.42', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2175, '2a9215fecd8bb863e46ce387c6d854a1541127722129', 1, 20, 36, 1, 1, 176, 60, 0, 0, '2018-11-06 08:42:33', '2018-12-03 08:53:06', '37.124.115.27', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2176, '62d56d4491d8d250f7c5102437332a56a753bc121353', 1, 20, 35, 1, 2, 176, 60, 0, 0, '2018-11-06 08:42:33', '2018-12-11 19:06:18', '86.51.184.42', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2177, '8a680809a955f2a0a3b1e14ab2dbc70e2fa589522823', 1, 20, 36, 1, 2, 176, 60, 0, 0, '2018-11-06 08:42:33', '2018-12-03 08:53:06', '37.124.115.27', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2178, '2337cd4ea3b9d1a2405e940f403ebd684716c9de2689', 1, 21, 37, 1, 1, 176, 60, 0, 0, '2018-11-06 08:43:04', '2018-12-11 20:37:41', '86.51.184.42', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2179, '689e2e79ccee78b797c2a6be45cec40dfa6f629c1206', 1, 21, 38, 1, 1, 176, 60, 0, 0, '2018-11-06 08:43:04', '2018-12-11 20:42:41', '89.237.145.114', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2180, '1fc847b147afb4f17ff25bfc330ae91bce40eb102047', 1, 21, 37, 1, 2, 176, 60, 0, 0, '2018-11-06 08:43:04', '2018-12-11 20:37:41', '86.51.184.42', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2181, '667222e432fed1d52cf91524b9217b8854fe4a8783', 1, 21, 38, 1, 2, 176, 60, 0, 0, '2018-11-06 08:43:04', '2018-12-11 20:42:41', '89.237.145.114', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2182, 'b7e9a722dbcf7d0051156126a4004c852b81c8931281', 1, 22, 39, 1, 1, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-12-03 09:00:09', '37.124.115.27', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2183, '35f3a8396f6ddaa571311663a7deb3429074dd9f2937', 1, 22, 40, 1, 1, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-12-03 09:00:59', '37.124.115.27', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2184, '042c12c5fb795a6c4ef41be0017e78d90e94fe54274', 1, 22, 89, 1, 1, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-11-06 08:45:25', NULL, '37.125.33.126', 1790, NULL, 1, 'course_subject', 1),
(2185, '4f722e828ffacbc27eef07d39c2ee545f285406a2166', 1, 22, 90, 1, 1, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-11-06 08:45:25', NULL, '37.125.33.126', 1790, NULL, 1, 'course_subject', 1),
(2186, '080b82193b7251ce09bf85be2d605092ccdb7e4a2225', 1, 22, 39, 1, 2, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-12-03 09:00:09', '37.124.115.27', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2187, 'e8ba120c696a2208ea8f19f89e891b9023142daf98', 1, 22, 40, 1, 2, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-12-03 09:00:59', '37.124.115.27', '37.125.33.126', 1790, 1790, 2, 'course_subject', 1),
(2188, '6566c18eb420a1caa6cffee65a7aab4e6f6aac00110', 1, 22, 89, 1, 2, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-11-06 08:45:25', NULL, '37.125.33.126', 1790, NULL, 1, 'course_subject', 1),
(2189, 'eea3654b80cc2e4cc1cdc458db32c082be8ca6bc468', 1, 22, 90, 1, 2, 176, 60, 0, 0, '2018-11-06 08:45:25', '2018-11-06 08:45:25', NULL, '37.125.33.126', 1790, NULL, 1, 'course_subject', 1),
(2302, '5eaae53eb3b240b14c6cf58bff47a2a94c60546a2879', 1, 17, 29, 1, 1, 178, 60, 0, 0, '2018-12-05 16:36:26', '2018-12-09 19:49:50', '86.51.184.42', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2303, '04893441de532864383c38e81c9c0fa41b4d8aac1355', 1, 17, 30, 1, 1, 178, 60, 0, 0, '2018-12-05 16:36:26', '2018-12-09 19:46:11', '86.51.184.42', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2304, '0a9e0740d9bf94a845836c46fba99f5f3d8c0f481045', 1, 17, 29, 1, 2, 178, 60, 0, 0, '2018-12-05 16:36:26', '2018-12-09 19:49:50', '86.51.184.42', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2305, '71e9f4940f2498ec5e9813bb8c8eb5fec37901a32721', 1, 17, 30, 1, 2, 178, 60, 0, 0, '2018-12-05 16:36:26', '2018-12-09 19:46:11', '86.51.184.42', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2306, '15ca5d9da5aedeb19ccb08cdcd4e3cf3d6e9533d1703', 1, 18, 31, 1, 1, 178, 60, 0, 0, '2018-12-09 20:08:09', '2018-12-09 20:40:08', '89.237.145.114', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2307, '37af90d392566bd42badb2a85e2312edbfa8b8011274', 1, 18, 32, 1, 1, 178, 60, 0, 0, '2018-12-09 20:08:09', '2018-12-09 20:08:09', NULL, '86.51.184.42', 1790, NULL, 1, 'course_subject', 2),
(2308, '71534be3556fdc3942840e375c2798a0233e25a31415', 1, 18, 53, 1, 1, 178, 60, 0, 0, '2018-12-09 20:08:09', '2018-12-09 20:08:09', NULL, '86.51.184.42', 1790, NULL, 1, 'course_subject', 2),
(2309, '5c424bbe21f900e4e1047bdc756fafb029d54dcb1817', 1, 18, 31, 1, 2, 178, 60, 0, 0, '2018-12-09 20:08:09', '2018-12-09 20:40:08', '89.237.145.114', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2310, '17daf6e31f55d67acfd711676fa4ea173bd600ad2790', 1, 18, 32, 1, 2, 178, 60, 0, 0, '2018-12-09 20:08:09', '2018-12-09 20:08:09', NULL, '86.51.184.42', 1790, NULL, 1, 'course_subject', 2),
(2311, '19d76a1fd37bf0a180a599aedc12715cd512686c1125', 1, 18, 53, 1, 2, 178, 60, 0, 0, '2018-12-09 20:08:09', '2018-12-09 20:08:09', NULL, '86.51.184.42', 1790, NULL, 1, 'course_subject', 2),
(2312, 'c118b728ca72fcc235f741b97b75ac6e38091e4a2256', 1, 19, 33, 1, 1, 178, 60, 0, 0, '2018-12-09 21:51:27', '2018-12-09 21:55:53', '89.237.145.114', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2313, '19e68f55c2049288940f3a2d86122b9e0dee76a82762', 1, 19, 34, 1, 1, 178, 60, 0, 0, '2018-12-09 21:51:27', '2018-12-09 22:04:10', '89.237.145.114', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2314, 'b77ce47c11569da3660d90bbe5891aac252836101047', 1, 19, 33, 1, 2, 178, 60, 0, 0, '2018-12-09 21:51:27', '2018-12-09 21:55:53', '89.237.145.114', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2),
(2315, '7cc67e821962db29f5bc7bb2c9e875a1aaa4bef12144', 1, 19, 34, 1, 2, 178, 60, 0, 0, '2018-12-09 21:51:27', '2018-12-09 22:04:10', '89.237.145.114', '86.51.184.42', 1790, 1790, 2, 'course_subject', 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'departments',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dues_purchase`
--

CREATE TABLE `dues_purchase` (
  `id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `academic_id` int(5) NOT NULL,
  `semister` int(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specifications` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dues_purchase',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

CREATE TABLE `emailtemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('header','footer','content') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'content',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `from_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `record_updated_by` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'emailtemplates',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emailtemplates`
--

INSERT INTO `emailtemplates` (`id`, `title`, `slug`, `type`, `subject`, `content`, `from_email`, `from_name`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'header', 'header', 'content', 'الهيدر', '<!-- Start of preheader -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody><!-- Spacing -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n					<tr>\r\n						<td>اذا لم تستطع مشاهدة الرسالة من فضلك <a href=\"#\"> اضفط هنا </a></td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- End of preheader --><!-- start of header -->\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody>\r\n					<tr>\r\n						<td><!-- logo -->\r\n						<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:280px\">\r\n							<tbody>\r\n								<tr>\r\n									<td>\r\n									<p><a href=\"#\"><img alt=\"logo\" src=\"http://school.sasbit.com/images/logo.png\" style=\"height:57px; width:180px\" /> </a></p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<!-- End of logo --><!-- menu -->\r\n\r\n						<table align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:280px\">\r\n							<tbody>\r\n								<tr>\r\n									<td><a href=\"http://school.sasbit.com/login\">تسجيل الدخول&nbsp;</a> | <a href=\"http://sasbit.com/public/?page=About_SasBit&amp;lang=ar\"> عن ساسبت&nbsp;</a></td>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<!-- End of Menu --></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- end of header -->', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-19 06:23:14', '2018-03-09 07:30:04', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(2, 'footer', 'footer', 'footer', 'الفوتر', '<!-- Start of preheader -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody><!-- Spacing -->\r\n					<tr>\r\n						<td>شكرا لاستخدامكم نظام ساسب للتعليم الالكتروني</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- End of preheader -->', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-19 06:24:08', '2018-03-09 07:29:59', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(3, 'exam-result', 'exam-result', 'content', 'قسم نتائج الاختبارات', '<p>شكرا على دخول الاختبار نرجو الدخول على نظام التعليم الالكتروني للاطلاع على نتائج الاختبارات</p>\r\n\r\n<p>http://school.sasbit.com/</p>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-19 06:37:51', '2018-03-09 07:29:54', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(4, 'registration', 'registration', 'content', 'بيانات التسجيل فى نظام ساسبت', '<!-- Full + text -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:540px\">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style=\"text-align:left\">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style=\"text-align:left\">\r\n									<p>Dear ,<br />\r\n									You have successfully registered with Academia.</p>\r\n\r\n									<p>The credentials are</p>\r\n\r\n									<p>Username: /</p>\r\n\r\n									<p>Password:</p>\r\n\r\n									<p>Enjoy the facilities provided by our system.</p>\r\n\r\n									<p>Please contact admin for further details.</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:30px\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"background-color:#0db9ea; text-align:justify\"><a href=\"#\">Read More</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-29 03:48:18', '2018-03-09 07:08:17', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(5, 'subscription', 'subscription', 'content', 'تمت عملية التسجيل بنجاح', '<!-- Full + text -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:540px\">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style=\"text-align:left\">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style=\"text-align:left\">Dear ,<br />\r\n									You have successfully subscribed to plan with transaction 1. Enjoy the facilities provided by our system.</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:30px\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"background-color:#0db9ea; text-align:center\"><a href=\"#\">Read More</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-08-03 01:00:58', '2018-03-09 07:30:08', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(6, 'offline_subscription_failed', 'offline-subscription-failed', 'content', 'مشكلة فى عملية الدفع', '<!-- Full + text -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:540px\">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style=\"text-align:left\">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style=\"text-align:left\">\r\n									<p>مرحبا ,</p>\r\n\r\n									<p>حدثت مشكلة فى عملية الدفع التقليدي</p>\r\n\r\n									<p>من فضلك تواصل مع مدير نظام التعليم الالكتروني او قسم العلاقات العامة بالمدرسة</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:30px\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"background-color:#0db9ea; text-align:center\"><a href=\"http://school.sasbit.com\">الدخول على النظام</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-10-15 10:31:47', '2018-03-09 07:02:57', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(7, 'offline_subscription_success', 'offline-subscription-success', 'content', 'تمت عملية الدفع بنجاح', '<!-- Full + text -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:540px\">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style=\"text-align:left\">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style=\"text-align:left\">\r\n									<p>مرحبا&nbsp;,<br />\r\n									شكرا لك على السداد لقد تمت العملية بنجاح&nbsp;</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:30px\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"background-color:rgb(13, 185, 234); text-align:justify\"><a href=\"http://school.sasbit.com\">الدخول على النظام</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-10-15 10:35:32', '2018-03-09 07:06:03', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(8, 'subscription_success', 'subscription-success', 'content', 'Your Subscription was Success', '<!-- Full + text -->\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:580px\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:540px\">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style=\"text-align:left\">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style=\"text-align:left\">\r\n									<p>Dear ,<br />\r\n									Your subscription to plan is success. &nbsp;</p>\r\n\r\n									<p>Please contact admin for further details.</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:30px\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"background-color:#0db9ea; text-align:justify\"><a href=\"#\">Read More</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-10-19 15:31:21', '2018-03-09 07:30:50', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(9, 'messages', 'messages1225', 'content', 'رسالة جديدة من البريد الداخلي', '<p>السلام عليكم&nbsp;</p>\r\n\r\n<p>عزيز {$reciver},<br />\r\n<br />\r\n{$sender} ({$sender_type}) ارسل لك رسالة على نظام التعليم الالكتروني<br />\r\n<br />\r\n<strong>{$message_subject}</strong><br />\r\n<br />\r\n{$message_body}</p>\r\n\r\n<p><br />\r\nنرجو الاطلاع&nbsp; على البريد الداخلى فى النظام على الرابط التالي&nbsp;</p>\r\n\r\n<p>http://al-anjal.sasbit.com</p>\r\n', 'school@sasbit.com', 'نظام التعليم الالكتروني', 7566, '2018-11-27 19:32:41', '2018-11-30 07:04:16', '51.36.209.68', '::1', 1790, 7566, 2, 'emailtemplates', 1);

-- --------------------------------------------------------

--
-- Table structure for table `examseries`
--

CREATE TABLE `examseries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `cost` decimal(10,2) NOT NULL,
  `validity` int(11) NOT NULL,
  `total_exams` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'examseries',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examseries_data`
--

CREATE TABLE `examseries_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `examseries_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'examseries_data',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examtoppers`
--

CREATE TABLE `examtoppers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `percentage` decimal(10,2) NOT NULL,
  `rank` int(11) NOT NULL,
  `quiz_result_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'examtoppers',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'feedbacks',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `percentage_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage_from` decimal(10,2) NOT NULL,
  `percentage_to` decimal(10,2) NOT NULL,
  `grade_points` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'grades',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `percentage_title`, `grade_title`, `percentage_from`, `percentage_to`, `grade_points`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'Distinction', 'A+', '75.00', '100.00', '10.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 'grades', 1),
(2, 'First Class', 'A', '60.00', '74.99', '9.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 'grades', 1),
(3, 'Second Class', 'B', '50.00', '59.99', '7.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 'grades', 1),
(4, 'Third Class', 'C', '35.00', '49.99', '6.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 'grades', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'groups',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeworks_student`
--

CREATE TABLE `homeworks_student` (
  `id` int(11) NOT NULL,
  `slug` varchar(220) COLLATE utf8_bin NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `homeworks_student_replay`
--

CREATE TABLE `homeworks_student_replay` (
  `id` int(11) NOT NULL,
  `homeworks_student_id` int(11) NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `massage` text COLLATE utf8_bin,
  `file` varchar(220) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `home_works`
--

CREATE TABLE `home_works` (
  `id` int(11) NOT NULL,
  `slug` varchar(220) COLLATE utf8_bin NOT NULL,
  `title` varchar(220) COLLATE utf8_bin NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `year` bigint(20) UNSIGNED NOT NULL,
  `sem` int(11) NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `explanation` text COLLATE utf8_bin NOT NULL,
  `file` varchar(220) COLLATE utf8_bin NOT NULL,
  `file_ext` varchar(220) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by_ip` varchar(220) COLLATE utf8_bin NOT NULL,
  `created_by_ip` varchar(220) COLLATE utf8_bin NOT NULL,
  `created_by_user` bigint(20) NOT NULL,
  `updated_by_user` bigint(20) NOT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(220) COLLATE utf8_bin NOT NULL DEFAULT 'home_works'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'instructions',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'التعليمات', 'altaalymat', '<p>من فضلك قم بقراءة الاسئلة بشكل جيد وقم بالاجابة عليها وحالة عدم التاكد من الاجابة الصحيحة يمكنك الانتقال الى الاسئلة التالية واجابتها ومن ثم العودة مره اخري الى السؤال السابق.</p>\r\n\r\n<p><strong>قبل بدء الاختبار:</strong></p>\r\n\r\n<p>1. تأكد من أن لديك اتصال إنترنت جيد. .</p>\r\n\r\n<p>2 لا يجوز للطالب استخدام كتابه الدراسي أو الملازم الدراسية أو تلقي المساعدة من المراقب&nbsp;أو أي مصدر خارجي آخر.</p>\r\n\r\n<p>3- ستجرى الاختبارات خلال المواعيد المحددة في جدول الاختبارات.</p>\r\n', '2016-06-08 03:32:59', '2018-03-31 06:12:46', '51.39.112.170', NULL, NULL, 1790, 2, 'instructions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_rtl` int(11) NOT NULL,
  `is_default` tinyint(2) NOT NULL DEFAULT '0',
  `phrases` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'languages',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `slug`, `code`, `is_rtl`, `is_default`, `phrases`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(9, 'English', 'english1530', 'en', 0, 0, '{\"games_played_or_extra-curricular_activities\":\"Games Played Or Extra-curricular Activities\",\"general_conduct\":\"General Conduct\",\"date_of_application_for_certificate\":\"Date Of Application For Certificate\",\"date_of_issue_certificate\":\"Date Of Issue Certificate\",\"reason_for_leaving_the_school\":\"Reason For Leaving The School\",\"any_other_remarks\":\"Any Other Remarks\",\"print\":\"Print\",\"date\":\"Date\",\"serial_no:\":\"Serial No:\",\"admission_no:\":\"Admission No:\",\"name_of_the_pupil\":\"Name Of The Pupil\",\"fathers\\/guardians_name\":\"Fathers\\/guardians Name\",\"mothers_name\":\"Mothers Name\",\"nationality\":\"Nationality\",\"candidate_belongs_to_schedule_caste_or_schedule_tribe\":\"Candidate Belongs To Schedule Caste Or Schedule Tribe\",\"date_of_first_admission_in_the_school_with_class\":\"Date Of First Admission In The School With Class\",\"date_of_birth_according_to_the_admission_register\":\"Date Of Birth According To The Admission Register\",\"class_in_which_the_last_studied_with_name\":\"Class In Which The Last Studied With Name\",\"school\\/board_annual_examination_last_taken_and_result\":\"School\\/board Annual Examination Last Taken And Result\",\"whether_failed,_if_once\\/twice_in_the_same_class\":\"Whether Failed, If Once\\/twice In The Same Class\",\"whether_qualified_for_promotion_to_higer_class_if_so,_to_which_class\":\"Whether Qualified For Promotion To Higer Class If So, to Which Class\",\"total_number_no_of_working_days\":\"Total Number No Of Working Days\",\"total_number_no_of_days_present\":\"Total Number No.of Days Present\",\"whether_n_c_c_cadet\\/boy_scout\\/_girls_guide\":\"Whether N C C Cadet\\/boy Scout\\/ Girls Guide\",\"whether_ncc_cadet\\/boy_scout\\/_girls_guide\":\"Whether Ncc Cadet\\/boy Scout\\/ Girls Guide\",\"whether_ncc_cadet\\/_boy_scout\\/_girls_guide\":\"Whether Ncc Cadet\\/ Boy Scout\\/ Girls Guide\",\"whether_n_c_c_cadet\\/_boy_scout\\/_girls_guide\":\"Whether N C C Cadet\\/ Boy Scout\\/ Girls Guide\",\"whether_n_cc_cadet\\/_boy_scout\\/_girls_guide\":\"Whether N.cc Cadet\\/ Boy Scout\\/ Girls Guide\",\"bonafide_certificate\":\"Bonafide Certificate\",\"select\":\"Select\",\"academic_operations\":\"School Operations\",\"certificates_dashboard\":\"Certificates Dashboard\",\"select_details\":\"Select Details\",\"certificate_type\":\"Certificate Type\",\"search\":\"Search\",\"image\":\"Image\",\"name\":\"Name\",\"roll_no\":\"Roll No\",\"admission_no\":\"Admission No\",\"class\":\"Class\",\"year\":\"Year\",\"semester\":\"Semester\",\"are_you_sure\":\"Are You Sure\",\"yes\":\"Yes\",\"delete_it\":\"Delete It\",\"no\":\"No\",\"cancel_please\":\"Cancel Please\",\"cancelled\":\"Cancelled\",\"your_record_is_safe\":\"Your Record Is Safe\",\"search_student\":\"Search Student\",\"latest_users\":\"Latest Users\",\"was_joined_as\":\"Was Joined As\",\"see_more\":\"See More\",\"my_profile\":\"My Profile\",\"change_password\":\"Change Password\",\"feedback\":\"Feedback\",\"notifications\":\"Notifications\",\"messages\":\"Messages\",\"languages\":\"Languages\",\"logout\":\"Logout\",\"dashboard\":\" Dashboard\",\"users\":\"Users\",\"attendance\":\"Attendance\",\"certificates\":\"Certificates\",\"transfers\":\"Student Transfers\",\"timetable\":\"Timetable\",\"offline_exams_\":\"Exams \",\"class_attendance_report\":\"Class Attendance Report\",\"class_marks_report\":\"Class Marks Report\",\"exams\":\"Exams\",\"categories\":\" Categories\",\"question_bank\":\"Question Bank\",\"quiz\":\"Quiz\",\"exam_series\":\"Exam Series\",\"instructions\":\"Instructions\",\"coupons\":\"Coupons\",\"list\":\"List\",\"add\":\"Add\",\"contents\":\"Contents\",\"series\":\" Series\",\"master_settings\":\"Master Settings\",\"settings\":\"Settings\",\"religions_master\":\"Religions\",\"categories_master\":\"School Categories\",\"academics_master\":\"School Master\",\"courses_master\":\"Grades\",\"course_subjects\":\"Grade Subjects\",\"certificate_templates\":\"Certificate Templates\",\"email_templates\":\"Email Templates\",\"payment_reports\":\"Payment Reports\",\"online_payments\":\"Online Payments\",\"offline_payments\":\"Offline Payments\",\"export\":\"Export\",\"certificate_issues_histroy\":\"Certificate Issues Histroy\",\"select_user_to_view_details\":\"Select User To View Details\",\"purpose\":\"Purpose\",\"please_wait\":\"Please Wait\",\"invalid_setting\":\"Invalid Setting\",\"id_cards\":\"Id Cards\",\"lets_start\":\"Lets Start\",\"bonafide_certificates\":\"Bonafide Certificates\",\"user_statistics\":\"User Statistics\",\"success\":\"Success\",\"pending\":\"Pending\",\"total\":\"Total\",\"overall_statistics\":\"Overall Statistics\",\"payments_reports_in\":\"Payments Reports In\",\"demanding_quizzes\":\"Demanding Quizzes\",\"demanding\":\"Demanding\",\"quizzes\":\"Quizzes\",\"view_all\":\"View All\",\"academics\":\"Study Years\",\"library\":\"Library\",\"courses\":\"Grades\",\"quizzes_usage\":\"Quizzes Usage\",\"paid_quizzes_usage\":\"Paid Quizzes Usage\",\"academic_operations_dashboard\":\"School Operations Dashboard\",\"offline_exams\":\"Offline Exams\",\"orientation\":\"Orientation\",\"update\":\"Update\",\"create\":\"Create\",\"key\":\"Key\",\"setting_key\":\"Setting Key\",\"tool_tip\":\"Tool Tip\",\"type\":\"Type\",\"total_options\":\"Total Options\",\"description\":\"Description\",\"option_value\":\"Option Value\",\"option_text\":\"Option Text\",\"make_default\":\"Make Default\",\"record_updated_successfully\":\"Record Updated Successfully\",\"zoomfactor\":\"Zoomfactor\",\"margin\":\"Margin\",\"format\":\"Format\",\"printable_file\":\"Printable File\",\"id_card_generation\":\"Id Card Generation\",\"print_header\":\"Print Header\",\"print_footer\":\"Print Footer\",\"print_date\":\"Print Date\",\"print_reference_number\":\"Print Reference Number\",\"module\":\"Module\",\"action\":\"Action\",\"edit\":\"Edit\",\"view\":\"View\",\"logo\":\"Logo\",\"content\":\" Content\",\"left_sign_image\":\"Left Sign Image\",\"right_sign_image\":\"Right Sign Image\",\"left_sign_name\":\"Left Sign Name\",\"right_sign_name\":\"Right Sign Name\",\"left_sign_designation\":\"Left Sign Designation\",\"right_sign_designation\":\"Right Sign Designation\",\"watermark_image\":\"Watermark Image\",\"bottom_middle_logo\":\"Bottom Middle Logo\",\"add_setting\":\"Add Setting\",\"title\":\"Title\",\"introduction\":\"Introduction\",\"description_of_the_topic\":\"Description Of The Topic\",\"record_added_successfully\":\"Record Added Successfully\",\"no_settings_available\":\"No Settings Available\",\"right_designation\":\"Right Designation\",\"exams_dashboard\":\"Exams Dashboard\",\"exam-series\":\"Exam-series\",\"quiz_categories\":\"Quiz Categories\",\"category\":\"Category\",\"you_will_not_be_able_to_recover_this_record\":\"You Will Not Be Able To Recover This Record\",\"deleted\":\"Deleted\",\"sorry\":\"Sorry\",\"cannot_delete_this_record_as\":\"Cannot Delete This Record As\",\"your_record_has_been_deleted\":\"Your Record Has Been Deleted\",\"delete\":\"Delete\",\"create_series\":\"Create Series\",\"duration\":\"Duration\",\"is_paid\":\"Is Paid\",\"total_marks\":\"Total Marks\",\"update_questions\":\"Update Questions\",\"free\":\"Free\",\"paid\":\"Paid\",\"create_quiz\":\"Create Quiz\",\"quiz_title\":\"Quiz Title\",\"this_field_is_required\":\"This Field Is Required\",\"the_text_is_too_short\":\"The Text Is Too Short\",\"the_text_is_too_long\":\"The Text Is Too Long\",\"subject\":\"Subject\",\"select_subject\":\"Select Subject\",\"online\":\"Online\",\"offline\":\"Offline\",\"quiz_type\":\"Quiz Type\",\"select_type\":\"Select Type\",\"offline_category\":\"Offline Category\",\"enter_value_in_minutes\":\"Enter Value In Minutes\",\"please_enter_valid_number\":\"Please Enter Valid Number\",\"it_will_be_updated_by_adding_the_questions\":\"It Will Be Updated By Adding The Questions\",\"pass_percentage\":\"Pass Percentage\",\"negative_mark\":\"Negative Mark\",\"instructions_page\":\"Instructions Page\",\"start_date\":\"Start Date\",\"end_date\":\"End Date\",\"validity\":\"Validity\",\"validity_in_days\":\"Validity In Days\",\"cost\":\"Cost\",\"specific_classes\":\"Specific Classes\",\"applicable_to_specific\":\"Applicable To Specific\",\"academic_year\":\"Study Year\",\"course\":\"Class\",\"already_item_available\":\"Already Item Available\",\"item_removed_successfully\":\"Item Removed Successfully\",\"update_questions_for\":\"Update Questions For\",\"subjects\":\"Subjects\",\"difficulty\":\"Difficulty\",\"easy\":\"Easy\",\"medium\":\"Medium\",\"hard\":\"Hard\",\"question_type\":\"Question Type\",\"single_answer\":\"Single Answer\",\"multi_answer\":\"Multi Answer\",\"fill_in_the_blanks\":\"Fill In The Blanks\",\"match_the_following\":\"Match The Following\",\"paragraph\":\"Paragraph\",\"video\":\"Video\",\"search_term\":\"Search Term\",\"enter_search_term\":\"Enter Search Term\",\"question\":\"Question\",\"marks\":\"Marks\",\"saved_questions\":\"Saved Questions\",\"remove_all\":\"Remove All\",\"edit_quiz\":\"Edit Quiz\",\"right_side_name\":\"Right Side Name\",\"right_side_sign\":\"Right Side Sign\",\"bonafide_\\/_tc_certificates\":\"Bonafide \\/ Tc Certificates\",\"bonafide_\\/_transfer_certificates\":\"Bonafide \\/ Transfer Certificates\",\"bonafide_\\/_transfer_certificate\":\"Bonafide \\/ Transfer Certificate\",\"users_dashboard\":\"Users Dashboard\",\"owners\":\"Owners\",\"admins\":\"Admins\",\"students\":\"Students\",\"staff\":\"Teacher\",\"librarians\":\"Librarians\",\"assistant_librarians\":\"Assistant Librarians\",\"parents\":\"Parents\",\"all_users\":\"All Users\",\"create_user\":\"Create User\",\"100\":\"100\",\"update_offline_exams_marks\":\"Update Offline Exams Marks\",\"import_excel\":\"Import Excel\",\"exam\":\"Exam\",\"year_and_semester\":\"Year And Semester\",\"maximum_marks\":\"Maximum Marks\",\"update_marks\":\"Update Marks\",\"select_offline_exams_details\":\"Select Offline Exams Details\",\"offline_exmas\":\"Offline Exmas\",\"selection_details\":\"Selection Details\",\"branch\":\"Grade\",\"get_details\":\"Get Details\",\"offline_exam_details\":\"Offline Exam Details\",\"marks_for\":\"Marks For\",\"sno\":\"Sno\",\"photo\":\"Photo\",\"marks_obtained\":\"Marks Obtained\",\"exam_status\":\"Exam Status\",\"pass\":\"Pass\",\"fail\":\"Fail\",\"reference_no\":\"Reference No\",\"oops___!\":\"Oops...!\",\"no_students_available\":\"No Students Available\",\"right_side_designation\":\"Right Side Designation\",\"edit_settings\":\"Edit Settings\",\"offline_exams_categories\":\"Offline Exams Categories\",\"offline_quiz_categories\":\"Offline Quiz Categories\",\"category_name\":\"Category Name\",\"add_category\":\"Add Category\",\"invalid_input\":\"Invalid Input\",\"edit_category\":\"Edit Category\",\"offline_exmas_quiz_categories\":\"Offline Exmas Quiz Categories\",\"offline_exmas_categories\":\"Offline Exmas Categories\",\"add_user\":\"Add User\",\"staff_id\":\"Teacher Id\",\"job_title\":\"Job Title\",\"email\":\"Email\",\"edit_details\":\"Edit Details\",\"teacher\":\"Teacher\",\"staff_profile\":\"Teacher Profile\",\"staff_list\":\"Teacher List\",\"profile\":\"Profile\",\"general_details\":\"General Details\",\"personal_details\":\"Personal Details\",\"contact_details\":\"Contact Details\",\"date_of_join\":\"Date Of Join\",\"qualification\":\"Qualification\",\"experience_(years)\":\"Experience (years)\",\"experience_(months)\":\"Experience (months)\",\"experience_information\":\"Experience Information\",\"other_information\":\"Other Information\",\"first_name\":\"First Name\",\"middle_name\":\"Middle Name\",\"last_name\":\"Last Name\",\"date_of_birth\":\"Date Of Birth\",\"gender\":\"Gender\",\"male\":\"Male\",\"female\":\"Female\",\"blood_group\":\"Blood Group\",\"fathers_name\":\"Fathers Name\",\"mother_tongue\":\"Mother Tongue\",\"address_lane1\":\"Address Lane1\",\"address_lane2\":\"Address Lane2\",\"city\":\"City\",\"state\":\"State\",\"country\":\"Country\",\"zipcode\":\"Zipcode\",\"mobile\":\"Mobile\",\"home_phone\":\"Home Phone\",\"father\\/guardian_name\":\"Father\\/guardian Name\",\"father_\\/_guardian_name\":\"Father \\/ Guardian Name\",\"mother_name\":\"Mother Name\",\"school_\\/_board_annual_examination_last_taken_and_result\":\"School \\/ Board Annual Examination Last Taken And Result\",\"whether_failed,__if_once_\\/_twice_in_the_same_class\":\"Whether Failed, If Once \\/ Twice In The Same Class\",\"left_side_name\":\"Left Side Name\",\"show_left_side_name\":\"Show Left Side Name\",\"show_left_side_designation\":\"Show Left Side Designation\",\"show_left_side_image\":\"Show Left Side Image\",\"whether_qualified_for_promotion_to_higer_class_if_so,__to_which_class\":\"Whether Qualified For Promotion To Higer Class If So, To Which Class\",\"show_middle_name\":\"Show Middle Name\",\"show_left_side_sign\":\"Show Left Side Sign\",\"total_number_no_of_present_days\":\"Total Number No Of Present Days\",\"show_middle_designation\":\"Show Middle Designation\",\"show_middle_sign\":\"Show Middle Sign\",\"whether_ncc_cadet_\\/_boy_scout\\/_girls_guide\":\"Whether Ncc Cadet \\/ Boy Scout\\/ Girls Guide\",\"show_right_side_name\":\"Show Right Side Name\",\"show_right_side_designation\":\"Show Right Side Designation\",\"games_played_or_extra-_curricular_activities\":\"Games Played Or Extra- Curricular Activities\",\"show_right_side_sign\":\"Show Right Side Sign\",\"water_mark_image\":\"Water Mark Image\",\"show_watermark\":\"Show Watermark\",\"name_of_student\":\"Name Of Student\",\"father_guardian_name\":\"Father Guardian Name\",\"candidate_caste\":\"Candidate Caste\",\"date_of_admission_with_class\":\"Date Of Admission With Class\",\"last_class_studied\":\"Last Class Studied\",\"last_taken_exam_and_result\":\"Last Taken Exam And Result\",\"whether_failed_if_once_twice_in_the_same_class\":\"Whether Failed If Once Twice In The Same Class\",\"promotion_class\":\"Transfered to Class\",\"total_working_days\":\"Total Working Days\",\"total_present_days\":\"Total Present Days\",\"ncc_boy_scout_girls_guide\":\"Ncc Boy Scout Girls Guide\",\"games_played_or_extra_curricular_activities\":\"Games Played Or Extra Curricular Activities\",\"date_of_apply\":\"Date Of Apply\",\"date_of_issue\":\"Date Of Issue\",\"reason\":\"Reason\",\"remarks\":\"Remarks\",\"import_marks\":\"Import Marks\",\"download_template\":\"Download Template\",\"upload\":\"Upload\",\"information_helper_for_excel_data\":\"Information Helper For Excel Data\",\"file_type_not_allowed\":\"File Type Not Allowed\",\"marks_report\":\"Marks Report\",\"total_class\":\"Total Class\",\"present\":\"Present\",\"absent\":\"Absent\",\"leave\":\"Leave\",\"no_data_available\":\"No Data Available\",\"student\":\"Student\",\"year-semester\":\"Year-semester\",\"admission_details\":\"Admission Details\",\"correct\":\"Correct\",\"wrong\":\"Wrong\",\"not_answered\":\"Not Answered\",\"overall_performance\":\"Overall Performance\",\"performance\":\"Performance\",\"best_performance_in_all_quizzes\":\"Best Performance In All Quizzes\",\"details\":\"Details\",\"student_users\":\"Student Users\",\"details_of\":\"Details Of\",\"reports\":\"Reports\",\"exam_history\":\"Exam History\",\"view_details\":\"View Details\",\"by_exam\":\"By Exam\",\"by_subject\":\"By Subject\",\"subscriptions\":\"Subscriptions\",\"certificate_settings\":\"Certificate Settings\",\"bonafide_certificates_contents\":\"Bonafide Certificates Contents\",\"bonafide_certificates_fields\":\"Bonafide Certificates Fields\",\"transfer_certificates_contents\":\"Transfer Certificates Contents\",\"transfer_certificates_fields\":\"Transfer Certificates Fields\",\"id_cards_contents\":\"Id Cards Contents\",\"id_cards_fields\":\"Id Cards Fields\",\"transfer_certificates_content\":\"Transfer Certificates Content\",\"transfer_certificates_cont\":\"Transfer Certificates Cont\",\"transfer_certificates_conten\":\"Transfer Certificates Conten\",\"bonafide_certificates_conten\":\"Bonafide Certificates Conten\",\"bonafide_certificate_content\":\"Bonafide Certificate Content\",\"transfer_certificate_content\":\"Transfer Certificate Content\",\"bonafide_certificatet_fields\":\"Bonafide Certificatet Fields\",\"bonafide_certificatet_con\":\"Bonafide Certificatet Con\",\"bonafide_certificatet_cont\":\"Bonafide Certificatet Cont\",\"bonafide_certificatet_conten\":\"Bonafide Certificatet Conten\",\"bonafide_certificate_conten\":\"Bonafide Certificate Conten\",\"bonafide_certificate_fields\":\"Bonafide Certificate Fields\",\"transfer_certificate_fields\":\"Transfer Certificate Fields\",\"id_card_contents\":\"Id Card Contents\",\"id_card_fields\":\"Id Card Fields\",\"question_subjects\":\"Question Subjects\",\"import_questions\":\"Import Questions\",\"add_subject\":\"Add Subject\",\"code\":\"Code\",\"view_questions\":\"View Questions\",\"bonafide_certificate_settings\":\"Bonafide Certificate Settings\",\"transfer_certificate_settings\":\"Transfer Certificate Settings\",\"total_exams\":\"Total Exams\",\"total_questions\":\"Total Questions\",\"update_quizzes\":\"Update Quizzes\",\"bonafide_certificate_seting\":\"Bonafide Certificate Seting\",\"bonafide__contents\":\"Bonafide Contents\",\"bonafide_settings\":\"Bonafide Settings\",\"mastersettings_dashboard\":\"Main Settings Dashboard\",\"religions\":\"Religions\",\"start_time\":\"Start Time\",\"end_time\":\"End Time\",\"default_sessions_needed\":\"Default Sessions Needed\",\"iamge\":\"Iamge\",\"student_profile\":\"Student Profile\",\"students_list\":\"Students List\",\"parent_login\":\"Parent Login\",\"info\":\"Info\",\"once_saved_the_admission_details_cannot_be_edited%0D%0A\":\"Once Saved The Admission Details Cannot Be Edited\",\"present_academic_details\":\"Present Study Year Details\",\"current_academic_year\":\"Current Study Year\",\"current_branch\":\"Current Grade\",\"current_course\":\"Current Grade\",\"previous_educational_details\":\"Previous Educational Details\",\"highest_qualification\":\"Highest Qualification\",\"percentage\":\"Percentage\",\"year_passed\":\"Year Passed\",\"previous_institute_name\":\"Previous Institute Name\",\"institute_address\":\"Institute Address\",\"religion\":\"Religion\",\"guardian_name\":\"Guardian Name\",\"guardian_phone\":\"Guardian Phone\",\"relationship_with_guardian\":\"Relationship With Guardian\",\"guardian_email\":\"Guardian Email\",\"parent_login_details\":\"Parent Login Details\",\"parent_name\":\"Parent Name\",\"parent_user_name\":\"Parent User Name\",\"parent_email\":\"Parent Email\",\"password\":\"Password\",\"staff_users\":\"Teachers\",\"lesson_plans\":\"Lesson Plans\",\"subject_preferences\":\"Subject Preferences\",\"student_attendance\":\"Student Attendance\",\"payment_statistics\":\"Payment Statistics\",\"payment_monthly_statistics\":\"Payment Monthly Statistics\",\"particulars\":\"Particulars\",\"general_instructions\":\"General Instructions\",\"attendance_date\":\"Attendance Date\",\"from\":\"From\",\"to\":\"To\",\"lesson_plans_for\":\"Lesson Plans For\",\"no_topics_available\":\"No Topics Available\",\"transfer_details\":\"Transfer Details\",\"edit_user\":\"Edit User\",\"username\":\"Username\",\"please_enter_valid_email\":\"Please Enter Valid Email\",\"role\":\"Role\",\"select_role\":\"Select Role\",\"phone\":\"Phone\",\"please_enter_10-15_digit_mobile_number\":\"Please Enter 10-15 Digit Mobile Number\",\"please_enter_valid_phone_number\":\"Please Enter Valid Phone Number\",\"billing_address\":\"Billing Address\",\"please_enter_your_address\":\"Please Enter Your Address\",\"exam_analysis_by_attempts\":\"Exam Analysis By Attempts\",\"attempts\":\"Attempts\",\"of\":\"Of\",\"mins\":\"Mins\",\"exam_attempts_and_score\":\"Exam Attempts And Score\",\"quiz_attempts\":\"Quiz Attempts\",\"result\":\"Result\",\"view_answers\":\"View Answers\",\"generate_certificate\":\"Generate Certificate\",\"answers\":\"Answers\",\"analysis\":\"Analysis\",\"time_limit\":\"Time Limit\",\"time_taken\":\"Time Taken\",\"previous\":\"Previous\",\"next\":\"Next\",\"timetable_for\":\"Timetable For\",\"sun\":\"Sun\",\"mon\":\"Mon\",\"tue\":\"Tue\",\"wed\":\"Wed\",\"thu\":\"Thu\",\"fri\":\"Fri\",\"sat\":\"Sat\",\"timetable_for_\":\"Timetable For \",\"leisure\":\"Leisure\",\"lab\":\"Lab\",\"completed_topics_list\":\"Completed Topics List\",\"no_list_available\":\"No List Available\",\"select_other_class\":\"Select Other Class\",\"please_select_the_details\":\"Please Select The Details\",\"preferred_subjects\":\"Preferred Subjects\",\"elective\":\"Elective\",\"summary\":\"Summary\",\"labs\":\"Labs\",\"electives\":\"Electives\",\"subjects_list\":\"Subjects List\",\"success___!\":\"Success...!\",\"records_updated_successfully\":\"Records Updated Successfully\",\"students_dashboard\":\"Students Dashboard\",\"view_students\":\"View Students\",\"overall_subject_wise_analysis\":\"Overall Subject Wise Analysis\",\"marks_details\":\"Marks Details\",\"no_data_available_with_the_selection\":\"No Data Available With The Selection\",\"leasure\":\"Leasure\",\"break\":\"Break\",\"printed_on:_\":\"Printed On: \",\"attendance_details\":\"Attendance Details\",\"view_summary\":\"View Summary\",\"attendance_summary\":\"Attendance Summary\",\"total_classes\":\"Total Classes\",\"its_okay\":\"Its Okay\",\"topics_completed\":\"Topics Completed\",\"transfer_list\":\"Transfer List\",\"semister\":\"Semister\",\"current_year\":\"Current Year\",\"current_semister\":\"Current Semister\",\"admin\":\"Admin\",\"ooops__\":\"Ooops..\",\"please_select_any_users\":\"Please Select Any Users\",\"emergency_no\":\"Emergency No\",\"no_users_available\":\"No Users Available\",\"from(admission_year-course-year-semester)\":\"From(admission Year-course-year-semester)\",\"from_(_admission_year-course-year-semester)\":\"From ( Admission Year-course-year-semester)\",\"from_(_admission_year-_course-_year-_semester)\":\"From ( Admission Year- Course- Year- Semester)\",\"to_(_admission_year-_course-_year-_semester)\":\"To ( Admission Year- Course- Year- Semester)\",\"transfers_list\":\"Transfers List\",\"from_(_admission_year-_course-_year-_semester)<\\/i>_\":\"From ( Admission Year- Course- Year- Semester)<\\/i> \",\"from_(_admission_year-_course)\":\"From ( Admission Year- Course)\",\"to_(_admission_year-_course)\":\"To ( Admission Year- Course)\",\"from_(_admission_year)\":\"From ( Admission Year)\",\"to_(_admission_year)\":\"To ( Admission Year)\",\"modules_helper\":\"Modules Helper\",\"help_link_text\":\"Help Link Text\",\"status\":\"Status\",\"add_helper\":\"Add Helper\",\"help_me\":\"Help Me\",\"is_enabled\":\"Is Enabled\",\"keyboard\":\"Keyboard\",\"backdrop\":\"Backdrop\",\"steps\":\"Steps\",\"element_id\":\"Element Id\",\"placement\":\"Placement\",\"sort_order\":\"Sort Order\",\"add_to_list\":\"Add To List\",\"element\":\"Element\",\"student_promotions\":\"Student Transfers\",\"cancel\":\"Cancel\",\"confirm\":\"Confirm\",\"is_completed\":\"Is Completed\",\"transfer_to_course\":\"Transfer To Grade\",\"transfer_to_year\":\"Transfer To Year\",\"transfer_to_semister\":\"Transfer To Semister\",\"promoted\":\"Transfered\",\"detained\":\"Detained\",\"course_completed\":\"Grade Completed\",\"transfer\":\"Transfer\",\"create_category\":\"Create Category\",\"enter_category_name\":\"Enter Category Name\",\"record_added_successfully_with_password_\":\"Record Added Successfully With Password \",\"%0D%0Acannot_send_email_to_user,_please_check_your_server_settings\":\"cannot Send Email To User, Please Check Your Server Settings\",\"timings_set\":\"Timings Set\",\"create_timetable\":\"Create Timetable\",\"timing_sets\":\"Timing Sets\",\"timetable_dashboard\":\"Timetable Dashboard\",\"prepare_timetable\":\"Prepare Timetable\",\"day\":\"Day\",\"remove\":\"Remove\",\"print_timetable\":\"Print Timetable\",\"enter_notes\":\"Enter Notes\",\"this_will_be_displayed_bottom_of_the_timetable\":\"This Will Be Displayed Bottom Of The Timetable\",\"schedule_table\":\"Schedule Table\",\"attendance_report\":\"Attendance Report\",\"subjects_reports\":\"Subjects Reports\",\"view_analysis\":\"View Analysis\",\"view_report\":\"View Report\",\"my_bookmarks\":\"My Bookmarks\",\"scheduled_exams\":\"Scheduled Exams\",\"by_subjcet\":\"By Subjcet\",\"history\":\"History\",\"lms\":\"Lms\",\"quizzes_dashboard\":\"Quizzes Dashboard\",\"student_list\":\"Student List\",\"payments\":\"Payments\",\"viewww\":\"Viewww\",\"all_exams\":\"All Exams\",\"dueration\":\"Dueration\",\"take_exam\":\"Take Exam\",\"select_template\":\"Select Template\",\"please_read_the_instructions_carefully\":\"Please Read The Instructions Carefully\",\"exam_name\":\"Exam Name\",\"please_accept_terms_and_conditions\":\"Please Accept Terms And Conditions\",\"start_exam\":\"Start Exam\",\"enable_back_side\":\"Enable Back Side\",\"days\":\"Days\",\"top_logo\":\"Top Logo\",\"account_settings\":\"Account Settings\",\"quiz_and_exam_series\":\"Quiz And Exam Series\",\"lms_categories\":\"Lms Categories\",\"academic_years\":\"Study Years\",\"courses_dashboard\":\"Grades Dashboard\",\"allocate_courses\":\"Allocate Grades\",\"academic_courses\":\"School Grades\",\"course_list\":\"Grade List\",\"record_deleted_successfully\":\"Record Deleted Successfully\",\"page_not_found\":\"Page Not Found\",\"ooops___!\":\"Ooops...!\",\"ooops__!\":\"Ooops..!\",\"you_have_no_permission_to_access\":\"You Have No Permission To Access\",\"no_topics_availble\":\"No Topics Availble\",\"topics\":\"Topics\",\"import_topics\":\"Import Topics\",\"add_course\":\"Add Grade and Class\",\"subject_master\":\"Subjects\",\"subject_topics\":\"Subject Topics\",\"allocate_subject_to_course\":\"Allocate Subject To Grade\",\"allocate_staff_to_course\":\"Allocate Teacher To Grade\",\"topics_list\":\"Topics List\",\"import\":\"Import\",\"parent\":\"Parent\",\"topic_(id)\":\"Topic (id)\",\"front_first_item\":\"Front First Item\",\"allocate_staff_to_subject\":\"Allocate Teacher To Subject\",\"allocate_staff_to_courses\":\"Allocate Teacher To Grades\",\"add_or_edit_course_subjects\":\"Add Or Edit Grade Subjects\",\"allocate_staff\":\"Allocate Teacher\",\"subject_title\":\"Subject Title\",\"subject_code\":\"Subject Code\",\"pass_marks\":\"Pass Marks\",\"is_lab\":\"Is Lab\",\"is_elective\":\"Is Elective\",\"view_topics\":\"View Topics\",\"import_users\":\"Import Users\",\"front_second_item\":\"Front Second Item\",\"front_third_item\":\"Front Third Item\",\"front_fourth_item\":\"Front Fourth Item\",\"front_fifth_item\":\"Front Fifth Item\",\"front_sixth_item\":\"Front Sixth Item\",\"front_seventh_item\":\"Front Seventh Item\",\"front_total_fields\":\"Front Total Fields\",\"back_first_item_title\":\"Back First Item Title\",\"front_first_item_title\":\"Front First Item Title\",\"front_second_item_title\":\"Front Second Item Title\",\"front_third_item_title\":\"Front Third Item Title\",\"front_fourth_item_title\":\"Front Fourth Item Title\",\"front_fifth_item_title\":\"Front Fifth Item Title\",\"front_sixth_item_title\":\"Front Sixth Item Title\",\"front_seventh_item_title\":\"Front Seventh Item Title\",\"coupon_codes\":\"Coupon Codes\",\"discount\":\"Discount\",\"minimum_bill\":\"Minimum Bill\",\"maximum_discount\":\"Maximum Discount\",\"limit\":\"Limit\",\"back_first_item_text\":\"Back First Item Text\",\"back_second_item_title\":\"Back Second Item Title\",\"back_second_item_text\":\"Back Second Item Text\",\"time_spent_on_correct_answers\":\"Time Spent On Correct Answers\",\"time_spent_on_wrong_answers\":\"Time Spent On Wrong Answers\",\"overall_marks_analysis\":\"Overall Marks Analysis\",\"time\":\"Time\",\"spent_on_correct\":\"Spent On Correct\",\"spent_on_wrong\":\"Spent On Wrong\",\"spent_time\":\"Spent Time\",\"total_time\":\"Total Time\",\"time_is_shown_in_seconds\":\"Time Is Shown In Seconds\",\"back_third_item_title\":\"Back Third Item Title\",\"back_third_item_text\":\"Back Third Item Text\",\"back_fourth_item_title\":\"Back Fourth Item Title\",\"back_fourth_item_text\":\"Back Fourth Item Text\",\"clear_answer\":\"Clear Answer\",\"bookmarks\":\"Bookmarks\",\"exam_duration\":\"Exam Duration\",\"hints\":\"Hints\",\"unbookmark_this_question\":\"Unbookmark This Question\",\"bookmark_this_question\":\"Bookmark This Question\",\"mark_for_review\":\"Mark For Review\",\"finish\":\"Finish\",\"warning\":\"Warning\",\"do_not_press_back\\/refresh_button\":\"Do Not Press Back\\/refresh Button\",\"answered\":\"Answered\",\"marked\":\"Marked\",\"not_visited\":\"Not Visited\",\"consumed_time\":\"Consumed Time\",\"result_for\":\"Result For\",\"score\":\"Score\",\"view_key\":\"View Key\",\"allocate_subjects\":\"Allocate Subjects\",\"no_staff_alotted\":\"No Teacher Alocatted\",\"no_subjects_selected\":\"No Subjects Selected\",\"id\":\"Id\",\"course_name\":\"Grade Name\",\"grade_type\":\"Grade Type\",\"edit_semisters\":\"Edit Semisters\",\"years\":\"Years\",\"add_religion\":\"Add Religion\",\"owner\":\"Owner\",\"total_items\":\"Total Items\",\"update_lms\":\"Update Lms\",\"examseries\":\"Examseries\",\"create_coupon\":\"Create Coupon\",\"coupon_code\":\"Coupon Code\",\"value\":\"Value\",\"percent\":\"Percent\",\"discount_type\":\"Discount Type\",\"discount_value\":\"Discount Value\",\"enter_value\":\"Enter Value\",\"enter_minimum_bill\":\"Enter Minimum Bill\",\"discount_maximum_amount\":\"Discount Maximum Amount\",\"enter_maximum_amount\":\"Enter Maximum Amount\",\"valid_from\":\"Valid From\",\"valid_to\":\"Valid To\",\"usage_limit\":\"Usage Limit\",\"enter_usage_limit_per_user\":\"Enter Usage Limit Per User\",\"from_email\":\"From Email\",\"from_name\":\"From Name\",\"export_payments_report\":\"Export Payments Report\",\"export_payment_records\":\"Export Payment Records\",\"download_excel\":\"Download Excel\",\"all_records\":\"All Records\",\"from_date\":\"From Date\",\"to_date\":\"To Date\",\"payment_type\":\"Payment Type\",\"all\":\"All\",\"payment_status\":\"Payment Status\",\"select_parent\":\"Select Parent\",\"course_title\":\"Grade Title\",\"course_code\":\"Grade Code\",\"duration_in_years\":\"Duration In Years\",\"grade_system\":\"Grade System\",\"is_having_semisters\":\"Is Having Semisters\",\"is_having_electives\":\"Is Having Electives\",\"add_subjects_to_course\":\"Add Subjects To Grade\",\"courses_list\":\"Grades List\",\"load\":\"Load\",\"add_subject_to_course\":\"Add Subject To Grade\",\"number_of_sessions_needed\":\"Number Of Sessions Needed\",\"template_1_logo\":\"Template 1 Logo\",\"institute_title\":\"Institute Title\",\"create_set\":\"Create Set\",\"academic_operatons\":\"School Operatons\",\"period_name\":\"Period Name\",\"enter_period_name\":\"Enter Period Name\",\"start_time_cannot_be_greater_than_or_equal_to_end_time\":\"Start Time Cannot Be Greater Than Or Equal To End Time\",\"start_time_must_be_greater_to_previous_end_time\":\"Start Time Must Be Greater To Previous End Time\",\"time_spent_correct_answers\":\"Time Spent Correct Answers\",\"time_spent_wrong_answers\":\"Time Spent Wrong Answers\",\"subject_wise_analysis\":\"Subject Wise Analysis\",\"in\":\"In\",\"attendance_for\":\"Attendance For\",\"notes\":\"Notes\",\"create_message\":\"Create Message\",\"inbox\":\"Inbox\",\"compose\":\"Compose\",\"send_message\":\"Send Message\",\"questions\":\"Questions\",\"fill_the_blanks\":\"Fill The Blanks\",\"first_admission_in_the_school\":\"First Admission In The School\",\"date_of_first_admission_in_the_school\":\"Date Of First Admission In The School\",\"first_admission_class_in_the_school_with_name\":\" First Admission Class In The School With Name\",\"completed\":\"Completed\",\"internal_marks\":\"Internal Marks\",\"external_marks\":\"External Marks\",\"please_enter_valid_internal_marks\":\"Please Enter Valid Internal Marks\",\"please_enter_valid_external_marks\":\"Please Enter Valid External Marks\",\"please_enter_valid_maximum_marks\":\"Please Enter Valid Maximum Marks\",\"please_enter_valid_pass_marks\":\"Please Enter Valid Pass Marks\",\"pass_marks_cannot_be_greater_than_maximum_marks\":\"Pass Marks Cannot Be Greater Than Maximum Marks\",\"add_topic\":\"Add Topic\",\"topic_name\":\"Topic Name\",\"category_deleted_successfully\":\"Category Deleted Successfully\",\"add_academic\":\"Add Study Year\",\"academic_title\":\"Title\",\"show_in_list\":\"Show In List\",\"payu\":\"Payu\",\"paypal\":\"Paypal\",\"messaging\":\"Messaging\",\"offline_payment\":\"Offline Payment\",\"push_notifications\":\"Push Notifications\",\"certificate\":\"Certificate\",\"show_foreign_key_constraint\":\"Show Foreign Key Constraint\",\"facebook_login\":\"Facebook Login\",\"google_plus_login\":\"Google Plus Login\",\"old_password\":\"Old Password\",\"the_password_is_too_short\":\"The Password Is Too Short\",\"new_password\":\"New Password\",\"retype_password\":\"Retype Password\",\"password_and_confirm_password_does_not_match\":\"Password And Confirm Password Does Not Match\",\"posted_on\":\"Posted On\",\"send_messageeee\":\"Send Messageeee\",\"please_select_the_recipients\":\"Please Select The Recipients\",\"import_subjects\":\"Import Subjects\",\"children\":\"Children\",\"premium\":\"Premium\",\"subscriptions_list\":\"Subscriptions List\",\"plan_type\":\"Plan Type\",\"paid_from\":\"Paid From\",\"datetime\":\"Datetime\",\"it_includes\":\"It Includes\",\"lms_series\":\"Lms Series\",\"view_more\":\"View More\",\"items\":\"Items\",\"learning_management_series\":\"Learning Management Series\",\"buy_now\":\"Buy Now\",\"checkout\":\"Checkout\",\"item\":\"Item\",\"valid_for\":\"Valid For\",\"enter_coupon_code\":\"Enter Coupon Code\",\"apply\":\"Apply\",\"select_your_child\":\"Select Your Child\",\"click_here_to_update_payment_details\":\"Click Here To Update Payment Details\",\"billing_details\":\"Billing Details\",\"invalid_coupon\":\"Invalid Coupon\",\"hey_you_are_eligible_for_discount\":\"Hey You Are Eligible For Discount\",\"printable__file\":\"Printable File\",\"timetable_settings\":\"Timetable Settings\",\"printed_onnn:_\":\"Printed Onnn: \",\"timetable__contents\":\"Timetable Contents\",\"certificates_settings_dashboard\":\"Certificates Settings Dashboard\",\"hai\":\"Hai\",\"students_list_class_vice\":\"Students List Class Vice\",\"library_dashboard\":\"Library Dashboard\",\"book_returns_student\":\"Book Returns Student\",\"book_returns_staff\":\"Book Returns Teacher\",\"asset_types\":\"Asset Types\",\"master_data\":\"Main Data\",\"publishers\":\"Publishers\",\"authors\":\"Authors\",\"library_users\":\"Library Users\",\"issue_asset\":\"Issue Asset\",\"maximum_allowed\":\"Maximum Allowed\",\"issued\":\"Issued\",\"eligible\":\"Eligible\",\"transactions\":\"Transactions\",\"books_taken\":\"Books Taken\",\"issue_book\":\"Issue Book\",\"general_info\":\"General Info\",\"contace_details\":\"Contace Details\",\"assets_on_issue\":\"Assets On Issue\",\"issued_on\":\"Issued On\",\"due_date\":\"Due Date\",\"library_issues\":\"Library Issues\",\"asset_details\":\"Asset Details\",\"please_enter_asset_reference_number\":\"Please Enter Asset Reference Number\",\"return_on\":\"Return On\",\"book_returns\":\"Book Returns\",\"academic_details\":\"Details\",\"asset_no\":\"Asset No\",\"asset_name\":\"Asset Name\",\"date-_issue\\/_return\":\"Date- Issue\\/ Return\",\"return\":\"Return\",\"department\":\"Department\",\"id_card_settings\":\"Id Card Settings\",\"offline_payment_form\":\"Offline Payment Form\",\"submit\":\"Submit\",\"offline_payment_instructions\":\"Offline Payment Instructions\",\"payment_details\":\"Payment Details\",\"your_request_was_submitted_to_admin\":\"Your Request Was Submitted To Admin\",\"success_list\":\"Success List\",\"user_name\":\"User Name\",\"plan\":\"Plan\",\"payment_gateway\":\"Payment Gateway\",\"updated_at\":\"Updated At\",\"offline_payment_details\":\"Offline Payment Details\",\"coupon_applied\":\"Coupon Applied\",\"after_discount\":\"After Discount\",\"created_at\":\"Created At\",\"comments\":\"Comments\",\"approve\":\"Approve\",\"reject\":\"Reject\",\"close\":\"Close\",\"record_was_updated_successfully\":\"Record Was Updated Successfully\",\"exam_aborted\":\"Exam Aborted\",\"students_completed_list_class_vice\":\"Students Completed List Class Vice\",\"students_completed_list\":\"Students Completed List\",\"course_completed_student_list\":\"Graduated Student List\",\"certificate_generation\":\"Certificate Generation\",\"certificate_for\":\"Certificate For\",\"improper_sheet_uploaded\":\"Improper Sheet Uploaded\",\"report\":\"Report\",\"failed\":\"Failed\",\"address\":\"Address\",\"please_select_required_the_details\":\"Please Select Required The Details\",\"this_record_is_in_use_in_other_modules\":\"This Record Is In Use In Other Modules\",\"date_of_exam\":\"Date Of Exam\",\"topic\":\"Topic\",\"view_all_users\":\"View All Users\",\"available_timesets\":\"Available Timesets\",\"library_masters\":\"Libraries\",\"author\":\"Author\",\"publisher\":\"Publisher\",\"available\":\"Available\",\"edition\":\"Edition\",\"library_assets\":\"Library Assets\",\"eligible_for_fine\":\"Eligible For Fine\",\"fine_per_day\":\"Fine Per Day\",\"qualification_details\":\"Qualification Details\",\"experience\":\"Experience\",\"months\":\"Months\",\"create_asset\":\"Create Asset\",\"asset_type\":\"Asset Type\",\"is_eligible_for_fine\":\"Is Eligible For Fine\",\"is_having_max_fine_limit\":\"Is Having Max Fine Limit\",\"maximum_fine_amount\":\"Maximum Fine Amount\",\"maximum_issuable\":\"Maximum Issuable\",\"maximum_days_to_return\":\"Maximum Days To Return\",\"maximum_advanced_reservations\":\"Maximum Advanced Reservations\",\"edit_asset\":\"Edit Asset\",\"issuable\":\"Issuable\",\"days_to_return\":\"Days To Return\",\"create_master_asset\":\"Create Assets\",\"asset_belongs_to_subject\":\"Asset Belongs To Subject\",\"isbn_number\":\"Isbn Number\",\"actual_price\":\"Actual Price\",\"chargible_price_if_lost\":\"Chargible Price If Lost\",\"create_authors\":\"Create Authors\",\"author_name\":\"Author Name\",\"create_publisher\":\"Create Publisher\",\"assets_publishers\":\"Assets Publishers\",\"publisher_name\":\"Publisher Name\",\"librarian\":\"Librarian\",\"back\":\"Back\",\"collections\":\"Collections\",\"masters\":\"Masters\",\"damaged\":\"Damaged\",\"lost\":\"Lost\",\"generate_collection\":\"Generate Collection\",\"series_prefix\":\"Series Prefix\",\"generate\":\"Generate\",\"maximum_issues_student\":\"Maximum Issues Student\",\"maximum_issues_staff\":\"Maximum Issues Teacher\",\"maximum_days_to_return_student\":\"Maximum Days To Return Student\",\"maximum_days_to_return_staff\":\"Maximum Days To Return Teacher\",\"library_series_prefix\":\"Library Series Prefix\",\"library_series_number_length\":\"Library Series Number Length\",\"topper_percentage\":\"Topper Percentage\",\"barcode\":\"Barcode\",\"edit_master_asset\":\"Edit Asset\",\"your_not_assigned_to_any_class\":\"Your Not Assigned To Any Class\",\"edit_author\":\"Edit Author\",\"course_completed_students_list_class_vice\":\"Graduated Students List \",\"edit_academic\":\"Edit Study Year\",\"edit_course\":\"Edit Grade\",\"reference_no_\":\"Reference No.\",\"eligiblity\":\"Eligiblity\",\"issue\":\"Issue\",\"asset_issued_successfully\":\"Asset Issued Successfully\",\"on_issue\":\"On Issue\",\"edit_subject\":\"Edit Subject\",\"subjects_listtt\":\"Subjects Listtt\",\"edit_topic\":\"Edit Topic\",\"upload_question\":\"Upload Question\",\"supported_formats_are\":\"Supported Formats Are\",\"difficulty_level\":\"Difficulty Level\",\"hint\":\"Hint\",\"explanation\":\"Explanation\",\"time_to_spend\":\"Time To Spend\",\"in_seconds\":\"In Seconds\",\"answer_number\":\"Answer Number\",\"total_correct_answers\":\"Total Correct Answers\",\"total_blank_answers\":\"Total Blank Answers\",\"left_title\":\"Left Title\",\"right_title\":\"Right Title\",\"left_option\":\"Left Option\",\"add_exam_series\":\"Add Exam Series\",\"series_title\":\"Series Title\",\"please_upload_valid_image_type\":\"Please, Upload Valid Image Type\",\"language\":\"Language\",\"default_language\":\"Default Language\",\"students_detained_list\":\"Students Detained List\",\"student_book_return\":\"Student Book Return\",\"staff_book_return\":\"Teacher Book Return\",\"master_setup\":\"School Setup\",\"update_strings\":\"Update Strings\",\"disable\":\"Disable\",\"enable\":\"Enable\",\"set_default\":\"Set Default\",\"latest_students\":\"Latest Students\",\"latest_staff\":\"Latest Teacher\",\"recent_online_payments\":\"Recent Online Payments\",\"recent_offline_payments\":\"Recent Offline Payments\",\"recent_quiz_takers\":\"Recent Quiz Takers\",\"students_list_class_wise\":\"Students List \",\"course_completed_students\":\"Graduated Students\",\"detained_students_list_class_wise\":\"Detained Students List\",\"home_page\":\"Home Page\",\"lms_contents\":\"Lms Contents\",\"students_certificates\":\"Students Certificates\",\"student_certificate\":\"Student Certificate\",\"no_data_available_in_table\":\"No Data Available In Table\",\"show\":\"Show\",\"entries\":\"Entries\",\"showing\":\"Showing\",\"certificates_settings\":\"Certificates Settings\",\"master_setup_dashboard\":\"School Setup Dashboard\",\"total_semesters\":\"Total Semesters\",\"staff_inactive_list\":\"Teacher Inactive List\",\"update_master_setup\":\"Update School Setup\",\"please_update_master_setup_details\":\"Please Update School Setup Details\",\"ok\":\"Ok\",\"note:\":\"Note:\",\"if do not update the student admission details, those students are available in all users list.\":\"If Do Not Update The Student Admission Details, Those Students Are Available In All Users List.\",\"for all users list\":\"For All Users List\",\"click here\":\"Click Here\",\"staff_status\":\"Teacher Status\",\"are_you_sure_to_make_user_active\":\"Are You Sure To Make User Active\",\"are_you_sure_to_make_user_inactive\":\"Are You Sure To Make User Inactive\",\"library_history\":\"Library History\",\"printed_on: \":\"Printed On: \",\"logged_out_successfully\":\"Logged Out Successfully\",\"logged out successfully\":\"Logged Out Successfully\",\"educate\":\"Educate\",\"enlightenment\":\"Enlightenment\",\"enforce\":\"Enforce\",\"login\":\"Login\",\"forgot_password\":\"Forgot Password\",\"number\":\"Number\",\"today\'s_classes\":\"Today\'s Classes\",\"scheduled_exam_marks\":\"Scheduled Exam Marks\",\"quiz_name\":\"Quiz Name\",\"note\":\"Note\",\"if_the_student_admission_details_are_not_updated_those_students_will_be_available_in_all_users_list\":\"If The Student Admission Details Are Not Updated Those Students Will Be Available In All Users List\",\"for_all_users_list\":\"For All Users List\",\"click_here\":\"Click Here\",\"date_time\":\"Date Time\",\"do_you_want_to_promot_them\":\"Do You Want To Transfer Them\",\"do_you_want_to_graduate_them\":\"Do You Want To Graduate Them\",\"promote_all\":\"Transfer All\",\"detain_all\":\"Detain All\",\"no_action\":\"No Action\",\"url\":\"Url\",\"sn\":\"Sn\",\"today_classes\":\"Today Classes\",\"confirm_password\":\"Confirm Password\",\"password_and_confirmation_not_matched\":\"Password And Confirmation Not Matched\",\"change_user_language\":\"Change User Language\",\"efault_sessions_needed\":\"Efault Sessions Needed\",\"nd_time\":\"Nd Time\",\"tart_time\":\"Tart Time\",\"oogle_client_secret\":\"Oogle Client Secret\",\"acebook_client_id\":\"Acebook Client Id\",\"acebook_client_secret\":\"Acebook Client Secret\",\"acebook_redirect_url\":\"Acebook Redirect Url\",\"oogle_client_id\":\"Oogle Client Id\",\"oogle_redirect_url\":\"Oogle Redirect Url\",\"address_1\":\"Address 1\",\"emergency_number\":\"Emergency Number\",\"headquarters\":\"Headquarters\",\"phone_number\":\"Phone Number\",\"website\":\"Website\",\"student_number\":\"Student Number\",\"course_information\":\"Course Information\",\"select_language\":\"Select Language\",\"background_image\":\"Background Image\",\"urrency_symbol\":\"Urrency Symbol\",\"urrent_theme\":\"Urrent Theme\",\"efault_academic_year_id\":\"Default Study Year Id\",\"efault_parent_course_id\":\"Efault Parent Grade Id\",\"ogin_page_title\":\"Ogin Page Title\",\"site_address\":\"Site Address\",\"ite_city\":\"Ite City\",\"ite_country\":\"Ite Country\",\"site_favicon\":\"Site Favicon\",\"site_logo\":\"Site Logo\",\"ite_phone\":\"Ite Phone\",\"ite_state\":\"Ite State\",\"ite_title\":\"Ite Title\",\"ite_zipcode\":\"Ite Zipcode\",\"ystem_timezone\":\"Ystem Timezone\",\"default_theme\":\"Default Theme\",\"green_theme\":\"Green Theme\",\"red_theme\":\"Red Theme\",\"file\":\"File\",\"audio\":\"Audio\",\"video_url\":\"Video Url\",\"iframe\":\"Iframe\",\"audio_url\":\"Audio Url\",\"add_content\":\"Add Content\",\"content_type\":\"Content Type\",\"resource_link\":\"Resource Link\",\"upload_success\":\"Upload Success\",\"gateway\":\"Gateway\",\"printed_on\":\"Printed On\",\"today\":\"Today\",\"login_success\":\"Login Success\",\"lesson_plan_statistics\":\"Lesson Plan Statistics\",\"assistant_librarian\":\"Assistant Librarian\",\"educational_supervisor\":\"Educational Supervisor\",\"id_number\":\"Id Number\",\"skills\":\"Skills\",\"view_record_history\":\"View Record History\",\"add_skills\":\"Add Skills\",\"skill\":\"Skill\",\"new\":\"New\",\"save\":\"Save\",\"assign_teachers_to_supervisors\":\"Assign Teachers To Supervisors\",\"add_semester\":\"Add Semester\",\"semester_start_date\":\"Semester Start Date\",\"semester_end_date\":\"Semester End Date\",\"pending_list\":\"Pending List\",\"educational_level\":\"Educational Level\",\"user_profile\":\"User Profile\",\"roll\":\"Roll\",\"doj\":\"Doj\",\"father\":\"Father\",\"mother\":\"Mother\",\"student_papers_and_achievements\":\"Student Papers And Achievements\",\"progress_report\":\"Progress Report\",\"achievements\":\"Achievements\",\"creator_ip\":\"Creator Ip\",\"updater_ip\":\"Updater Ip\",\"creator_username\":\"Creator Username\",\"updater_username\":\"Updater Username\",\"religion_name\":\"Religion Name\",\"master_asset_details\":\"Master Asset Details\",\"status_details\":\"Status Details\",\"total_\":\"Total \",\"master_asset_name_\":\"Main Asset Name \",\"asset_type_\":\"Asset Type \",\"total_issued_\":\"Total Issued \",\"total_damaged_\":\"Total Damaged \",\"publisher_name_\":\"Publisher Name \",\"total_lost_\":\"Total Lost \",\"edition_\":\"Edition \",\"price\":\"Price\",\"specify_subjects_to_teachers\":\"Specify Subjects To Teachers\",\"staff_toic_plan\":\"Teacher Toic Plan\",\"teacher_students_attendance\":\"Teacher Students Attendance\",\"teachers_timetables\":\"Teachers Timetables\",\"teacher_students_marks\":\"Teacher Students Marks\",\"current_semester\":\"Current Semester\",\"current_grade\":\"Current Grade\",\"current_class\":\"Current Class\",\"the_first\":\"The First\",\"recycle_bin\":\"Recycle Bin\",\"academic_dues\":\"School Dues\",\"educational_supervisors\":\"Educational Supervisors\",\"logged_users\":\"Logged Users\",\"exam_categories\":\"Exam Categories\",\"branches\":\"Branches\",\"school_branch\":\"School Branch\",\"select_branch\":\"Select Branch\",\"select_category\":\"Select Category\",\"for_year\":\"For Year\",\"course_detained_list\":\"Detained List\",\"skills_administration\":\"Student Skills\",\"branches_management\":\"Branches Management\",\"no_item_selected\":\"No Item Selected\",\"cannot_remove_this_item_as_it_is_in_use\":\"Cannot Remove This Item As It Is In Use\",\"secondary_parent\":\"Secondary Parent\",\"attendance_and_departure\":\"Student Attendance \",\"automatic_call\":\"Automatic Call\",\"voice_records_for_students\":\"Records student names\",\"attendance_and_departure_report\":\"Attendance  Report\",\"homeworks\":\"Homeworks\",\"semester_1\":\"Semester 1\",\"edit_instruction\":\"Edit Instruction\",\"fill_in_blanks\":\"Fill In Blanks\",\"right_option\":\"Right Option\",\"answer\":\"Answer\",\"edit_question\":\"Edit Question\",\"are_you_sure_to_make_clear_image\":\"Are You Sure To Make Clear Image\",\"create_new_exam_series\":\"Create New Exam Series\",\"ooops\":\"Ooops\",\"exam_entry_options\":\"Exam Entry Options\",\"once_only\":\"Once Only\",\"more_than_once\":\"More Than Once\",\"secondary_parents\":\"Secondary Parents\",\"time_table_settings\":\"Time Table Settings\",\"transfer_to_class\":\"Transfer To Class\",\"no_action_all\":\"No Action All\",\"homework\":\"Homework\",\"add_homework\":\"Add Homework\",\"teachers\":\"Teachers\",\"branches_list\":\"Branches List\",\"fix_database_tables\":\"Fix Database Tables\",\"bonafide_contents\":\"Bonafide Contents\",\"bonafide_or_transfer_certificate\":\"Bonafide Or Transfer Certificate\",\"add_total_blank_columns\":\"Add Total Blank Columns\",\"print_and_export\":\"Print And Export\",\"exit\":\"Exit\",\"session_number\":\"Session Number\",\"attendance_sheet_for\":\"Attendance Sheet For\",\"attendance_status\":\"Attendance Status\",\"activities\":\"Activities\",\"health_status\":\"Healthy Status\",\"all_here\":\"All Attended\",\"all_absent\":\"All Absent\",\"all_left\":\"All Left\",\"cancel_all\":\"Deselect All\",\"create_question\":\"Create Question\",\"download_single_answer_file\":\"Download Single Answer File\",\"download_multi_answer_file\":\"Download Multi Answer File\",\"download_fill_the_blanks_file\":\"Download Fill The Blanks File\",\"upload_single_answer_file\":\"Upload Single Answer File\",\"upload_multi_answer_file\":\"Upload Multi Answer File\",\"upload_fill_the_blanks_file\":\"Upload Fill The Blanks File\",\"first_term\":\"First Term\",\"list_of_courses\":\"List Of Grades\",\"make_inactive\":\"Make Inactive\",\"assign_teacher_to_supervisor\":\"Assign Teacher To Supervisor\",\"assign_students_to_secondary_parent\":\"Assign Students To Secondary Parent\",\"papers_and_achievements_of_the_student\":\"Student Papers And Achievements \",\"academics_operations\":\"Academics Operations\",\"all_skills\":\"All Skills\",\"skill_name\":\"Skill Name\",\"cannot_remove_this_subject_as_allocated_to_staff\":\"Cannot Remove This Subject As Allocated To Teacher\",\"top_level\":\"Top Level\",\"topic_id\":\"Topic Id\",\"you_have_answered_the_question\":\"You Have Answered The Question\",\"you_have_not_answered_the_question\":\"You Have Not Answered The Question\",\"you_have_answered_the_question_but_have_marked_the_question_for_review\":\"You Have Answered The Question But Have Marked The Question For Review\",\"you_have_not_visited_the_question_yet\":\"You Have Not Visited The Question Yet\",\"the_computer_provided_to_me_is_in_proper_working_condition\":\"The Computer Provided To Me Is In Proper Working Condition\",\"i_have_read_and_understood_the_instructions_given_above\":\"I Have Read And Understood The Instructions Given Above\",\"do_not_press_back_or_refresh_button\":\"Do Not Press Back Or Refresh Button\",\"click_here_to_list_subjects\":\"Click Here To List Subjects\",\"sorry_no_messages_available\":\"Sorry No Messages Available\",\"send_messages\":\"Send Messages\",\"select_user\":\"Select User\",\"message_subject\":\"Message Subject\",\"message_description\":\"Message Description\",\"send\":\"Send\",\"give_feedback\":\"Give Feedback\",\"feedback_form\":\"Feedback Form\",\"feedback_subject\":\"Feedback Subject\",\"feedback_description\":\"Feedback Description\",\"semester_2\":\"Semester 2\",\"student_attendance_of_teacher\":\"Student Attendance Of Teacher\",\"home_work\":\"Home Work\",\"academic_expenses\":\"Academic Expenses\",\"allocation_of_expenses_to_classrooms\":\"Assign dues to grades \",\"add_expenses_items\":\"Add Expenses Items\",\"add_academic_dues\":\"Add Academic Dues\",\"all_academic_dues\":\"All Academic Dues\",\"create_expenses_items\":\"Create Expenses Items\",\"course_parent\":\"Grade\",\"add_new_expenses\":\"Add New Expenses\",\"due_value\":\"Due Value\",\"due_type\":\"Due Type\",\"mandatory\":\"Mandatory\",\"optional\":\"Optional\",\"add_rapid_expenses\":\"Add Rapid Expenses\",\"expenses_items\":\"Expenses Items\",\"all_expenses_items\":\"All Expenses Items\",\"expense_item\":\"Expense Item\",\"latest_quizzes\":\"Latest Quizzes\",\"latest\":\"Latest\",\"no_series_available\":\"No Series Available\",\"to_change_your_settings\":\"To Change Your Settings\",\"site_country\":\"Site Country\",\"currency_symbol\":\"Currency Symbol\",\"current_theme\":\"Current Theme\",\"default_academic_year_id\":\"Default Academic Year Id\",\"default_parent_course_id\":\"Default Parent Course Id\",\"login_page_title\":\"Login Page Title\",\"site_city\":\"Site City\",\"site_logo_attendance_header\":\"Site Logo Attendance Header\",\"site_phone\":\"Site Phone\",\"site_state\":\"Site State\",\"site_title\":\"Site Title\",\"site_zipcode\":\"Site Zipcode\",\"system_timezone\":\"System Timezone\",\"voice_records_for_student\":\"Voice Records For Student\",\"token_mismatch_exception\":\"Token Mismatch Exception\",\"select_topic\":\"Select Topic\",\"saudi_arabia\":\"Saudi Arabia\",\"albania\":\"Albania\",\"algeria\":\"Algeria\",\"american_samoa\":\"American Samoa\",\"andorra\":\"Andorra\",\"angola\":\"Angola\",\"anguilla\":\"Anguilla\",\"antarctica\":\"Antarctica\",\"antigua_and_barbuda\":\"Antigua And Barbuda\",\"argentina\":\"Argentina\",\"armenia\":\"Armenia\",\"aruba\":\"Aruba\",\"australia\":\"Australia\",\"austria\":\"Austria\",\"azerbaijan\":\"Azerbaijan\",\"bahamas\":\"Bahamas\",\"bahrain\":\"Bahrain\",\"bangladesh\":\"Bangladesh\",\"barbados\":\"Barbados\",\"belarus\":\"Belarus\",\"belgium\":\"Belgium\",\"belize\":\"Belize\",\"benin\":\"Benin\",\"bermuda\":\"Bermuda\",\"bhutan\":\"Bhutan\",\"bolivia\":\"Bolivia\",\"bosnia_and_herzegovina\":\"Bosnia And Herzegovina\",\"botswana\":\"Botswana\",\"bouvet_island\":\"Bouvet Island\",\"brazil\":\"Brazil\",\"british_indian_ocean_territory\":\"British Indian Ocean Territory\",\"brunei_darussalam\":\"Brunei Darussalam\",\"bulgaria\":\"Bulgaria\",\"burkina_faso\":\"Burkina Faso\",\"burundi\":\"Burundi\",\"cambodia\":\"Cambodia\",\"cameroon\":\"Cameroon\",\"canada\":\"Canada\",\"cape_verde\":\"Cape Verde\",\"cayman_islands\":\"Cayman Islands\",\"central_african_republic\":\"Central African Republic\",\"chad\":\"Chad\",\"chile\":\"Chile\",\"china\":\"China\",\"christmas_island\":\"Christmas Island\",\"cocos_keeling_islands\":\"Cocos Keeling Islands\",\"colombia\":\"Colombia\",\"comoros\":\"Comoros\",\"congo\":\"Congo\",\"cook_islands\":\"Cook Islands\",\"costa_rica\":\"Costa Rica\",\"croatia_hrvatska\":\"Croatia Hrvatska\",\"cuba\":\"Cuba\",\"cyprus\":\"Cyprus\",\"czech_republic\":\"Czech Republic\",\"denmark\":\"Denmark\",\"djibouti\":\"Djibouti\",\"dominica\":\"Dominica\",\"dominican_republic\":\"Dominican Republic\",\"east_timor\":\"East Timor\",\"ecuador\":\"Ecuador\",\"egypt\":\"Egypt\",\"el_salvador\":\"El Salvador\",\"equatorial_guinea\":\"Equatorial Guinea\",\"eritrea\":\"Eritrea\",\"estonia\":\"Estonia\",\"ethiopia\":\"Ethiopia\",\"falkland_islands_malvinas\":\"Falkland Islands Malvinas\",\"faroe_islands\":\"Faroe Islands\",\"fiji\":\"Fiji\",\"finland\":\"Finland\",\"france\":\"France\",\"france_metropolitan\":\"France Metropolitan\",\"french_guiana\":\"French Guiana\",\"french_polynesia\":\"French Polynesia\",\"french_southern_territories\":\"French Southern Territories\",\"gabon\":\"Gabon\",\"gambia\":\"Gambia\",\"georgia\":\"Georgia\",\"germany\":\"Germany\",\"ghana\":\"Ghana\",\"gibraltar\":\"Gibraltar\",\"guernsey\":\"Guernsey\",\"greece\":\"Greece\",\"greenland\":\"Greenland\",\"grenada\":\"Grenada\",\"guadeloupe\":\"Guadeloupe\",\"guam\":\"Guam\",\"guatemala\":\"Guatemala\",\"guinea\":\"Guinea\",\"guinea_bissau\":\"Guinea Bissau\",\"guyana\":\"Guyana\",\"haiti\":\"Haiti\",\"heard_and_mc_donald_islands\":\"Heard And Mc Donald Islands\",\"honduras\":\"Honduras\",\"hong_kong\":\"Hong Kong\",\"hungary\":\"Hungary\",\"iceland\":\"Iceland\",\"india\":\"India\",\"isle_of_man\":\"Isle Of Man\",\"indonesia\":\"Indonesia\",\"iran_islamic_republic_of\":\"Iran Islamic Republic Of\",\"iraq\":\"Iraq\",\"ireland\":\"Ireland\",\"israel\":\"Israel\",\"italy\":\"Italy\",\"ivory_coast\":\"Ivory Coast\",\"jersey\":\"Jersey\",\"jamaica\":\"Jamaica\",\"japan\":\"Japan\",\"jordan\":\"Jordan\",\"kazakhstan\":\"Kazakhstan\",\"kenya\":\"Kenya\",\"kiribati\":\"Kiribati\",\"korea_democratic_peoples_republic_of\":\"Korea Democratic Peoples Republic Of\",\"korea_republic_of\":\"Korea Republic Of\",\"kosovo\":\"Kosovo\",\"kuwait\":\"Kuwait\",\"kyrgyzstan\":\"Kyrgyzstan\",\"lao_peoples_democratic_republic\":\"Lao Peoples Democratic Republic\",\"latvia\":\"Latvia\",\"lebanon\":\"Lebanon\",\"lesotho\":\"Lesotho\",\"liberia\":\"Liberia\",\"libyan_arab_jamahiriya\":\"Libyan Arab Jamahiriya\",\"liechtenstein\":\"Liechtenstein\",\"lithuania\":\"Lithuania\",\"luxembourg\":\"Luxembourg\",\"macau\":\"Macau\",\"macedonia\":\"Macedonia\",\"madagascar\":\"Madagascar\",\"malawi\":\"Malawi\",\"malaysia\":\"Malaysia\",\"maldives\":\"Maldives\",\"mali\":\"Mali\",\"malta\":\"Malta\",\"marshall_islands\":\"Marshall Islands\",\"martinique\":\"Martinique\",\"mauritania\":\"Mauritania\",\"mauritius\":\"Mauritius\",\"mayotte\":\"Mayotte\",\"mexico\":\"Mexico\",\"micronesia_federated_states_of\":\"Micronesia Federated States Of\",\"moldova_republic_of\":\"Moldova Republic Of\",\"monaco\":\"Monaco\",\"mongolia\":\"Mongolia\",\"montenegro\":\"Montenegro\",\"montserrat\":\"Montserrat\",\"morocco\":\"Morocco\",\"mozambique\":\"Mozambique\",\"myanmar\":\"Myanmar\",\"namibia\":\"Namibia\",\"nauru\":\"Nauru\",\"nepal\":\"Nepal\",\"netherlands\":\"Netherlands\",\"netherlands_antilles\":\"Netherlands Antilles\",\"new_caledonia\":\"New Caledonia\",\"new_zealand\":\"New Zealand\",\"nicaragua\":\"Nicaragua\",\"niger\":\"Niger\",\"nigeria\":\"Nigeria\",\"niue\":\"Niue\",\"norfolk_island\":\"Norfolk Island\",\"northern_mariana_islands\":\"Northern Mariana Islands\",\"norway\":\"Norway\",\"oman\":\"Oman\",\"pakistan\":\"Pakistan\",\"palau\":\"Palau\",\"palestine\":\"Palestine\",\"panama\":\"Panama\",\"papua_new_guinea\":\"Papua New Guinea\",\"paraguay\":\"Paraguay\",\"peru\":\"Peru\",\"philippines\":\"Philippines\",\"pitcairn\":\"Pitcairn\",\"poland\":\"Poland\",\"portugal\":\"Portugal\",\"puerto_rico\":\"Puerto Rico\",\"qatar\":\"Qatar\",\"reunion\":\"Reunion\",\"romania\":\"Romania\",\"russian_federation\":\"Russian Federation\",\"rwanda\":\"Rwanda\",\"saint_kitts_and_nevis\":\"Saint Kitts And Nevis\",\"saint_lucia\":\"Saint Lucia\",\"saint_vincent_and_the_grenadines\":\"Saint Vincent And The Grenadines\",\"samoa\":\"Samoa\",\"san_marino\":\"San Marino\",\"sao_tome_and_principe\":\"Sao Tome And Principe\",\"senegal\":\"Senegal\",\"serbia\":\"Serbia\",\"seychelles\":\"Seychelles\",\"sierra_leone\":\"Sierra Leone\",\"singapore\":\"Singapore\",\"slovakia\":\"Slovakia\",\"slovenia\":\"Slovenia\",\"solomon_islands\":\"Solomon Islands\",\"somalia\":\"Somalia\",\"south_africa\":\"South Africa\",\"south_georgia_south_sandwich_islands\":\"South Georgia South Sandwich Islands\",\"spain\":\"Spain\",\"sri_lanka\":\"Sri Lanka\",\"st_helena\":\"St Helena\",\"st_pierre_and_miquelon\":\"St Pierre And Miquelon\",\"sudan\":\"Sudan\",\"suriname\":\"Suriname\",\"svalbard_and_jan_mayen_islands\":\"Svalbard And Jan Mayen Islands\",\"swaziland\":\"Swaziland\",\"sweden\":\"Sweden\",\"switzerland\":\"Switzerland\",\"syrian_arab_republic\":\"Syrian Arab Republic\",\"taiwan\":\"Taiwan\",\"tajikistan\":\"Tajikistan\",\"tanzania_united_republic_of\":\"Tanzania United Republic Of\",\"thailand\":\"Thailand\",\"togo\":\"Togo\",\"tokelau\":\"Tokelau\",\"tonga\":\"Tonga\",\"trinidad_and_tobago\":\"Trinidad And Tobago\",\"tunisia\":\"Tunisia\",\"turkey\":\"Turkey\",\"turkmenistan\":\"Turkmenistan\",\"turks_and_caicos_islands\":\"Turks And Caicos Islands\",\"tuvalu\":\"Tuvalu\",\"uganda\":\"Uganda\",\"ukraine\":\"Ukraine\",\"united_arab_emirates\":\"United Arab Emirates\",\"united_kingdom\":\"United Kingdom\",\"united_states\":\"United States\",\"united_states_minor_outlying_islands\":\"United States Minor Outlying Islands\",\"uruguay\":\"Uruguay\",\"uzbekistan\":\"Uzbekistan\",\"vanuatu\":\"Vanuatu\",\"vatican_city_state\":\"Vatican City State\",\"venezuela\":\"Venezuela\",\"vietnam\":\"Vietnam\",\"virgin_islands_british\":\"Virgin Islands British\",\"virgin_islands_us\":\"Virgin Islands Us\",\"wallis_and_futuna_islands\":\"Wallis And Futuna Islands\",\"western_sahara\":\"Western Sahara\",\"yemen\":\"Yemen\",\"yugoslavia\":\"Yugoslavia\",\"zaire\":\"Zaire\",\"zambia\":\"Zambia\",\"zimbabwe\":\"Zimbabwe\",\"afghanistan\":\"Afghanistan\",\"once_saved_the_admission_details_cannot_be_edited\":\"Once Saved The Admission Details Cannot Be Edited\",\"current_category\":\"Current Category\",\"address_line_1\":\"Address Line 1\",\"address_line_2\":\"Address Line 2\",\"second_term\":\"Second Term\",\"skip\":\"Skip\",\"admission_number\":\"Admission Number\",\"full_address\":\"Full Address\",\"city_address\":\"City Address\",\"address_of_city_and_state\":\"Address Of City And State\",\"validity_information\":\"Validity Information\",\"mobile_number\":\"Mobile Number\",\"home_phone_number\":\"Home Phone Number\",\"transfer_students\":\"Transfer Students\",\"daily_school_schedule\":\"Daily School Schedule\",\"paid_tests_only\":\"Paid Tests Only\",\"management_of_educational_content\":\"Management Of Educational Content\",\"paid_educational_content_only\":\"Paid Educational Content Only\",\"experimental_tests_only\":\"Experimental Tests Only\",\"language_settings\":\"Language Settings\",\"library_management\":\"Library Management\",\"student_achievement_file_extensions\":\"Student Achievement File Extensions\",\"update_branch\":\"Update Branch\",\"skills_menu\":\"Skills Menu\",\"template_1\":\"Template 1\",\"template_2\":\"Template 2\",\"template\":\"Template\",\"starting_date\":\"Starting Date\",\"finishing_date\":\"Finishing Date\",\"attendance_report_and_departure_from_the_period\":\"Attendance Report And Departure From The Period\",\"corresponding\":\"Corresponding\",\"current_academic_branch\":\"Current Academic Branch\",\"all_payments\":\"All Payments\",\"been_paid\":\"Been Paid\",\"deserved_amount\":\"Deserved Amount\",\"the_amount_paid\":\"The Amount Paid\",\"coupon\":\"Coupon\",\"remaining_amount\":\"Remaining Amount\",\"pay\":\"Pay\",\"parent_purchase\":\"Parent Purchase\",\"mandatory_items\":\"Mandatory Items\",\"optional_items\":\"Optional Items\",\"your_money\":\"Your Money\",\"discount_is\":\"Discount Is\",\"and_it_value\":\"And It Value\",\"payed_successfully\":\"Payed Successfully\",\"payed_before\":\"Payed Before\",\"student_information\":\"Student Information\",\"student_achievements\":\"Student Achievements\",\"deleted_records\":\"Deleted Records\",\"table_name\":\"Table Name\",\"slug\":\"Slug\",\"deleted_at\":\"Deleted At\",\"this_record_will_be_back_in_system\":\"This Record Will Be Back In System\",\"recover_it\":\"Recover It\",\"recovered\":\"Recovered\",\"your_record_has_been_recovered\":\"Your Record Has Been Recovered\",\"retrieve\":\"Retrieve\",\"no_categories_available\":\"No Categories Available\",\"click_here_to_change_your_preferences\":\"Click Here To Change Your Preferences\",\"offline_exam_categories\":\"Offline Exam Categories\",\"assign_lms_items\":\"Assign Lms Items\",\"add_series\":\"Add Series\",\"it_will_be_updated_by_adding_the_lms_items\":\"It Will Be Updated By Adding The Lms Items\",\"short_description\":\"Short Description\",\"first_semester\":\"First Semester\",\"update_series_for\":\"Update Series For\",\"file_type\":\"File Type\",\"saved_items\":\"Saved Items\",\"edit_series\":\"Edit Series\",\"add_notification\":\"Add Notification\",\"send_to\":\"Send To\",\"read_more\":\"Read More\",\"cannot_remove_as_staff_is_assigned_to_classes\":\"Cannot Remove As Staff Is Assigned To Classes\",\"staff_removed_successfully\":\"Staff Removed Successfully\",\"saved_successfully\":\"Saved Successfully\",\"children_analysis\":\"Children Analysis\",\"the_automatic_call_request_was_successfully_sent\":\"The Automatic Call Request Was Successfully Sent\",\"there_is_an_automatic_call_request_and_the_student_is_being_called\":\"There Is An Automatic Call Request And The Student Is Being Called\",\"the_student_is_out_of_school_and_can_not_call_again\":\"The Student Is Out Of School And Can Not Call Again\",\"the_student_is_absent_today\":\"The Student Is Absent Today\",\"the_student_is_left_today\":\"The Student Is Left Today\",\"student_attendance_record_is_not_updated\":\"Student Attendance Record Is Not Updated\",\"automatic_call_requests\":\"Automatic Call Requests\",\"student_record\":\"Student Record\",\"new_name_record\":\"New Name Record\",\"play\":\"Play\",\"pause\":\"Pause\",\"record\":\"Record\",\"stop\":\"Stop\",\"applicable_categories\":\"Applicable Categories\",\"percent_can_not_exceed\":\"Percent Can Not Exceed\",\"detained_student_list\":\"Detained Student List\",\"select_all\":\"Select All\",\"reback_them\":\"Reback Them\",\"you_should_choose_one_student_at_least\":\"You Should Choose One Student At Least\",\"students_have_moved_to_schooling_again\":\"Students Have Moved To Schooling Again\",\"an_error_occurred\":\"An Error Occurred\",\"staff_to_supervisor\":\"Staff To Supervisor\",\"teachers_list\":\"Teachers List\",\"assigned_to_another_supervisor\":\"Assigned To Another Supervisor\",\"invalid_email\":\"Invalid Email\",\"student_guide\":\"Student Guide\",\"password_reset_link_sent_to_email\":\"Password Reset Link Sent To Email\"}', '2016-08-30 00:41:02', '2018-11-09 09:29:52', '51.39.210.166', NULL, NULL, 1790, 2, 'languages', 1);
INSERT INTO `languages` (`id`, `language`, `slug`, `code`, `is_rtl`, `is_default`, `phrases`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(13, 'العربية', 'alaarby', 'ar', 1, 1, '{\"general_conduct\":\"\\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 \\u0627\\u0644\\u0639\\u0627\\u0645\",\"date_of_application_for_certificate\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629\",\"date_of_issue_certificate\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629\",\"reason_for_leaving_the_school\":\"\\u0633\\u0628\\u0628 \\u062a\\u0631\\u0643 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"any_other_remarks\":\"\\u0627\\u0649 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u0627\\u062e\\u0631\\u064a\",\"print\":\"\\u0637\\u0628\\u0627\\u0639\\u0629\",\"date\":\"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e\",\"name_of_the_pupil\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"mothers_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0645\",\"nationality\":\"\\u0627\\u0644\\u062c\\u0646\\u0633\\u064a\\u0629\",\"candidate_belongs_to_schedule_caste_or_schedule_tribe\":\"Candidate Belongs To Schedule Caste Or Schedule Tribe\",\"date_of_first_admission_in_the_school_with_class\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"date_of_birth_according_to_the_admission_register\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f \\u062d\\u0633\\u0628 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"class_in_which_the_last_studied_with_name\":\"Class In Which The Last Studied With Name\",\"total_number_no_of_working_days\":\"\\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a\\u0647\",\"total_number_no_of_days_present\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"select\":\"\\u0627\\u062e\\u062a\\u0631\",\"academic_operations\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"certificates_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\",\"select_details\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"certificate_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629\",\"search\":\"\\u0628\\u062d\\u062b\",\"image\":\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\",\"name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645\",\"roll_no\":\"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\",\"admission_no\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"class\":\"\\u0627\\u0644\\u0641\\u0635\\u0644\",\"year\":\"\\u0627\\u0644\\u0633\\u0646\\u0629\",\"semester\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"are_you_sure\":\"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f\",\"yes\":\"\\u0646\\u0639\\u0645\",\"delete_it\":\"\\u0642\\u0645 \\u0628\\u0627\\u0644\\u062d\\u0630\\u0641\",\"no\":\"\\u0644\\u0627\",\"cancel_please\":\"\\u0631\\u062c\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"cancelled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"your_record_is_safe\":\"\\u0633\\u062c\\u0644\\u0643 \\u0627\\u0645\\u0646\",\"search_student\":\"\\u0627\\u0644\\u0628\\u062d\\u062b \\u0641\\u0649 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"latest_users\":\"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"was_joined_as\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u062a\\u062d\\u0627\\u0642 \\u0643\\u0640\\u0640\",\"see_more\":\"\\u0627\\u0642\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\",\"my_profile\":\"\\u0645\\u0644\\u0641\\u064a \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\",\"change_password\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \",\"feedback\":\"\\u0627\\u0644\\u0623\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a\",\"notifications\":\"\\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\",\"messages\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\",\"languages\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0644\\u063a\\u0629\",\"logout\":\"\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c\",\"dashboard\":\"\\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"users\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"attendance\":\"\\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0648\\u0627\\u0644\\u063a\\u064a\\u0627\\u0628\",\"certificates\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\",\"transfers\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"timetable\":\"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"offline_exams_\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"class_attendance_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0646\\u0633\\u0628\\u0629 \\u062d\\u0636\\u0648\\u0631 \\u0637\\u0644\\u0627\\u0628 \\u0641\\u0635\\u0644\",\"class_marks_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0641\\u0635\\u0644\",\"exams\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"categories\":\"\\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\",\"question_bank\":\"\\u0628\\u0646\\u0643 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629\",\"quiz\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"exam_series\":\"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"instructions\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"coupons\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0633\\u0627\\u0626\\u0645\",\"list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629\",\"add\":\"\\u0625\\u0636\\u0627\\u0641\\u0629\",\"contents\":\" \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"series\":\"\\u0627\\u0644\\u062d\\u0642\\u0627\\u0626\\u0628 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"master_settings\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"settings\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\",\"religions_master\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u062f\\u064a\\u0627\\u0646\",\"categories_master\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"academics_master\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"courses_master\":\" \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"course_subjects\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"certificate_templates\":\"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\",\"email_templates\":\"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0627\\u064a\\u0645\\u064a\\u0644\\u0627\\u062a\",\"payment_reports\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a\",\"online_payments\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \",\"offline_payments\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\",\"export\":\"\\u062a\\u0635\\u062f\\u064a\\u0631\",\"certificate_issues_histroy\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629 \\u0633\\u0627\\u0628\\u0642\\u0627\",\"select_user_to_view_details\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"purpose\":\"\\u0627\\u0644\\u063a\\u0631\\u0636\",\"please_wait\":\"\\u0646\\u0631\\u062c\\u0648 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631\",\"id_cards\":\"\\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"lets_start\":\"\\u0644\\u0646\\u0628\\u062f\\u0623\",\"bonafide_certificates\":\"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 \",\"user_statistics\":\"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"success\":\"Success\",\"pending\":\"\\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631\",\"total\":\"\\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a\",\"overall_statistics\":\"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629\",\"payments_reports_in\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0644\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"demanding_quizzes\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u0637\\u0644\\u0628\\u0647\\u0627\",\"demanding\":\"\\u062a\\u062d\\u062a \\u0627\\u0644\\u0637\\u0644\\u0628\",\"quizzes\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"view_all\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0643\\u0644\",\"academics\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"library\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"courses\":\"\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"quizzes_usage\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"paid_quizzes_usage\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0629\",\"academic_operations_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"offline_exams\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"orientation\":\"\\u0627\\u0644\\u062a\\u0648\\u062c\\u064a\\u0647\",\"update\":\"\\u062a\\u062d\\u062f\\u064a\\u062b\",\"create\":\"\\u0625\\u0636\\u0627\\u0641\\u0629\",\"key\":\"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\",\"setting_key\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a\",\"tool_tip\":\"\\u0646\\u0628\\u0630\\u0629 \\u0645\\u062e\\u062a\\u0635\\u0631\\u0629\",\"type\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"total_options\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0627\\u062a\",\"description\":\"\\u0627\\u0644\\u0634\\u0631\\u062d\",\"option_value\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\",\"option_text\":\"\\u0646\\u0635 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\",\"make_default\":\"\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\",\"record_updated_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"zoomfactor\":\"\\u0639\\u0627\\u0645\\u0644 \\u0627\\u0644\\u062a\\u0643\\u0628\\u064a\\u0631\",\"margin\":\"\\u0627\\u0644\\u0647\\u0627\\u0645\\u0634\",\"format\":\"\\u0627\\u0644\\u062a\\u0646\\u0633\\u064a\\u0642\",\"printable_file\":\"\\u0645\\u0644\\u0641 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629\",\"id_card_generation\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u0648\\u064a\\u0629\",\"print_header\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0631\\u0627\\u0633 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629\",\"print_footer\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0627\\u0633\\u0641\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629\",\"print_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629\",\"print_reference_number\":\"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629\",\"module\":\"\\u0627\\u0644\\u0648\\u062d\\u062f\\u0629\",\"action\":\"\\u0627\\u0644\\u0625\\u062c\\u0631\\u0627\\u0621 \",\"edit\":\"\\u062a\\u0639\\u062f\\u064a\\u0644\",\"view\":\"\\u0639\\u0631\\u0636\",\"logo\":\"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631\",\"content\":\"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a\",\"left_sign_image\":\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631\",\"right_sign_image\":\"\\u0635\\u0648\\u0631\\u0629 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646\",\"left_sign_name\":\"\\u0627\\u0633\\u0645 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631 \",\"right_sign_name\":\"\\u0627\\u0633\\u0645 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646\",\"left_sign_designation\":\"\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631 \",\"right_sign_designation\":\"\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646\",\"watermark_image\":\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629\",\"bottom_middle_logo\":\"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641 \\u0648\\u0641\\u064a \\u0627\\u0644\\u0627\\u0633\\u0641\\u0644\",\"add_setting\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0636\\u0628\\u0637\",\"title\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"introduction\":\"\\u0627\\u0644\\u0645\\u0642\\u062f\\u0645\\u0629\",\"description_of_the_topic\":\"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0633\",\"record_added_successfully\":\"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"no_settings_available\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629\",\"right_designation\":\"\\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u064a\\u0645\\u064a\\u0646\",\"exams_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \",\"exam-series\":\"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"quiz_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"category\":\"\\u0627\\u0644\\u0642\\u0633\\u0645\",\"you_will_not_be_able_to_recover_this_record\":\"\\u0644\\u0646 \\u062a\\u0633\\u062a\\u0637\\u064a\\u0639 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u062c\\u0644 \",\"deleted\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641\",\"sorry\":\"\\u0639\\u0630\\u0631\\u0627\",\"cannot_delete_this_record_as\":\"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0644\\u0627\\u0646\\u0647 \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0641\\u0631\\u0639\\u064a\\u0629 \\u0645\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u064a\\u0629 \\u064a\\u0631\\u062c\\u064a \\u0645\\u0633\\u062d\\u0647\\u0627 \\u0627\\u0648\\u0644\\u0627\",\"your_record_has_been_deleted\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"delete\":\"\\u062d\\u0630\\u0641\",\"create_series\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u062d\\u0642\\u064a\\u0628\\u0629 \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\",\"duration\":\"\\u0627\\u0644\\u0641\\u062a\\u0631\\u0629\",\"is_paid\":\"\\u0645\\u062f\\u0641\\u0648\\u0639\",\"total_marks\":\"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0643\\u0644\\u064a\\u0629\",\"update_questions\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0623\\u0633\\u0626\\u0644\\u0629\",\"free\":\"\\u0645\\u062c\\u0627\\u0646\\u064a\",\"paid\":\"\\u0645\\u062f\\u0641\\u0648\\u0639\",\"create_quiz\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"quiz_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"this_field_is_required\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u062d\\u0642\\u0644 \\u0645\\u0637\\u0644\\u0648\\u0628\",\"the_text_is_too_short\":\"\\u0627\\u0644\\u0646\\u0635 \\u0642\\u0635\\u064a\\u0631 \\u062c\\u062f\\u0627\",\"the_text_is_too_long\":\"\\u0627\\u0644\\u0646\\u0635 \\u0637\\u0648\\u064a\\u0644 \\u062c\\u062f\\u0627\",\"subject\":\"\\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"select_subject\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"online\":\"\\u00a0\\u062d\\u0642\\u064a\\u0642\\u064a\",\"offline\":\"\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\",\"quiz_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"select_type\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0646\\u0648\\u0639\",\"offline_category\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"enter_value_in_minutes\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 \\u0628\\u0627\\u0644\\u062f\\u0642\\u0627\\u0626\\u0642\",\"please_enter_valid_number\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0635\\u062d\\u064a\\u062d\",\"it_will_be_updated_by_adding_the_questions\":\"It Will Be Updated By Adding The Questions\",\"pass_percentage\":\"\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d\",\"negative_mark\":\"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0628\\u0627\\u0644\\u0633\\u0627\\u0644\\u0628 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062e\\u0637\\u0623(\\u0633\\u064a\\u062a\\u0645 \\u0627\\u0644\\u062e\\u0635\\u0645 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629)\",\"instructions_page\":\"\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"start_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629\",\"end_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629\",\"validity\":\"\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629\",\"validity_in_days\":\"\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0627\\u064a\\u0627\\u0645\",\"cost\":\"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629\",\"specific_classes\":\"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"applicable_to_specific\":\"\\u064a\\u0646\\u0637\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0645\\u062d\\u062f\\u062f\",\"academic_year\":\"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"course\":\"\\u0627\\u0644\\u0641\\u0635\\u0644\",\"already_item_available\":\"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0645\\u062a\\u0627\\u062d \\u0641\\u0639\\u0644\\u064a\\u0627\",\"item_removed_successfully\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"update_questions_for\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0644\\u0640\\u0640\",\"subjects\":\"\\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"difficulty\":\"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0635\\u0639\\u0648\\u0628\\u0629\",\"easy\":\"\\u0633\\u0647\\u0644\",\"medium\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\",\"hard\":\"\\u0635\\u0639\\u0628\",\"question_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"single_answer\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u062c\\u0627\\u0628\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0645\\u0646 \\u0645\\u062a\\u0639\\u062f\\u062f\",\"multi_answer\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u062c\\u0627\\u0628\\u0629 \\u0645\\u0646 \\u0645\\u062a\\u0639\\u062f\\u062f\",\"fill_in_the_blanks\":\"\\u0627\\u0645\\u0644\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a\",\"match_the_following\":\"\\u0648\\u0635\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0634\\u0627\\u0628\\u0647\\u0627\\u062a\",\"paragraph\":\"\\u0627\\u0644\\u0641\\u0642\\u0631\\u0629\",\"video\":\"\\u0645\\u0644\\u0641 \\u0641\\u064a\\u062f\\u064a\\u0648\",\"search_term\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0628\\u062d\\u062b\",\"enter_search_term\":\"\\u0627\\u062f\\u062e\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0628\\u062d\\u062b\",\"question\":\"\\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"marks\":\"\\u0627\\u0644\\u0646\\u062a\\u0627\\u0626\\u062c\",\"saved_questions\":\"\\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629\",\"remove_all\":\"\\u062d\\u0630\\u0641 \\u0627\\u0644\\u0643\\u0644\",\"edit_quiz\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"right_side_name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u062c\\u0647\\u0629 \\u064a\\u0645\\u064a\\u0646\",\"right_side_sign\":\"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u062c\\u0647\\u0629 \\u064a\\u0645\\u064a\\u0646\",\"users_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"owners\":\"\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"admins\":\"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646\",\"students\":\"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"staff\":\"\\u0645\\u0639\\u0644\\u0645\",\"librarians\":\"\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0645\\u0631\\u0643\\u0632 \\u0645\\u0635\\u0627\\u062f\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645\",\"assistant_librarians\":\"\\u0623\\u0645\\u064a\\u0646 \\u0645\\u0631\\u0643\\u0632 \\u0645\\u0635\\u0627\\u062f\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645\",\"parents\":\"\\u0623\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0645\\u0648\\u0631\",\"all_users\":\"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"create_user\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"update_offline_exams_marks\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"import_excel\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0645\\u0644\\u0641 \\u0627\\u0643\\u0633\\u0644\",\"exam\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"year_and_semester\":\"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"maximum_marks\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"update_marks\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"select_offline_exams_details\":\"\\u0627\\u062e\\u062a\\u0631 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\",\"offline_exmas\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"selection_details\":\"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \",\"branch\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"get_details\":\"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"offline_exam_details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\",\"marks_for\":\"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0644\\u0640\\u0640\",\"photo\":\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\",\"marks_obtained\":\"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u0635\\u0644 \\u0639\\u0644\\u064a\\u0647\\u0627 \",\"exam_status\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"pass\":\"\\u0646\\u0627\\u062c\\u062d\",\"fail\":\"\\u0631\\u0627\\u0633\\u0628\",\"reference_no\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\",\"no_students_available\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0637\\u0644\\u0627\\u0628 \",\"right_side_designation\":\"\\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646\",\"edit_settings\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\",\"offline_exams_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"offline_quiz_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"category_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0642\\u0633\\u0645\",\"add_category\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u0645\",\"invalid_input\":\"\\u0645\\u062f\\u062e\\u0644 \\u062e\\u0627\\u0637\\u064a\",\"edit_category\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0633\\u0645\",\"offline_exmas_quiz_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"offline_exmas_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"add_user\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"staff_id\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"job_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629\",\"email\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"edit_details\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \",\"teacher\":\"\\u0645\\u0639\\u0644\\u0645\",\"staff_profile\":\"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \",\"staff_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"profile\":\"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\",\"general_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629\",\"personal_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0634\\u062e\\u0635\\u064a\\u0629\",\"contact_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\",\"date_of_join\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0644\\u062a\\u062d\\u0627\\u0642 \",\"qualification\":\"\\u0627\\u0644\\u0645\\u0624\\u0647\\u0644\",\"experience_information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646 \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"other_information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u062e\\u0631\\u064a\",\"first_name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0644\",\"middle_name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0633\\u0637\",\"last_name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\",\"date_of_birth\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\",\"gender\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\",\"male\":\"\\u0630\\u0643\\u0631\",\"female\":\"\\u0627\\u0646\\u062b\\u064a\",\"blood_group\":\"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645\",\"fathers_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0628\",\"mother_tongue\":\"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0627\\u0645\",\"address_lane1\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0637\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644\",\"address_lane2\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0637\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\",\"city\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\",\"state\":\"\\u0627\\u0644\\u062d\\u064a\",\"country\":\"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629\",\"zipcode\":\"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629\",\"mobile\":\"\\u0627\\u0644\\u062c\\u0648\\u0627\\u0644\",\"home_phone\":\"\\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644\",\"mother_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0645\",\"left_side_name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631\",\"show_left_side_name\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631\",\"show_left_side_designation\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 \",\"show_left_side_image\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631\",\"show_middle_name\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641\",\"show_left_side_sign\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 \",\"total_number_no_of_present_days\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"show_middle_designation\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641 \",\"show_middle_sign\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641\",\"show_right_side_name\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646\",\"show_right_side_designation\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 \",\"games_played_or_extra-_curricular_activities\":\"\\u0627\\u0644\\u0627\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0629\",\"show_right_side_sign\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 \",\"water_mark_image\":\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629\",\"show_watermark\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629\",\"name_of_student\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"father_guardian_name\":\"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 \",\"candidate_caste\":\"\\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645\",\"date_of_admission_with_class\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0645\\u0639 \\u0627\\u0644\\u0641\\u0635\\u0644\",\"last_class_studied\":\"\\u0627\\u062e\\u0631 \\u0641\\u0635\\u0644 \\u062a\\u0645 \\u062f\\u0631\\u0627\\u0633\\u062a\\u0629\",\"last_taken_exam_and_result\":\"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u0645 \\u062f\\u062e\\u0648\\u0644\\u0629 \\u0648\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629\",\"whether_failed_if_once_twice_in_the_same_class\":\"Whether Failed If Once Twice In The Same Class\",\"promotion_class\":\"\\u062a\\u0631\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644\",\"total_working_days\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"total_present_days\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"ncc_boy_scout_girls_guide\":\"Ncc Boy Scout Girls Guide\",\"games_played_or_extra_curricular_activities\":\"\\u0627\\u0644\\u0627\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0629\",\"date_of_apply\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645\",\"date_of_issue\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631\",\"reason\":\"\\u0627\\u0644\\u0633\\u0628\\u0628\",\"remarks\":\"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\",\"import_marks\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"download_template\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628\",\"upload\":\"\\u0631\\u0641\\u0639 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"information_helper_for_excel_data\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062a\\u0633\\u0627\\u0639\\u062f\\u0643 \\u0644\\u0641\\u0647\\u0645 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0627\\u0643\\u0633\\u0644\",\"file_type_not_allowed\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u063a\\u064a\\u0631 \\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0647\",\"marks_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"total_class\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u062d\\u0635\\u0635\",\"present\":\"\\u062d\\u0627\\u0636\\u0631\",\"absent\":\"\\u063a\\u0627\\u0626\\u0628\",\"leave\":\"\\u0627\\u0633\\u062a\\u0626\\u0630\\u0646\",\"no_data_available\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629\",\"student\":\"\\u0637\\u0627\\u0644\\u0628\",\"year-semester\":\"\\u0627\\u0644\\u0633\\u0646\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"admission_details\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"correct\":\"\\u0635\\u062d\\u064a\\u062d\",\"wrong\":\"\\u062e\\u0637\\u0623\",\"not_answered\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629\",\"overall_performance\":\"\\u0627\\u0644\\u0627\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0639\\u0627\\u0645\",\"performance\":\"\\u0627\\u0644\\u0627\\u062f\\u0627\\u0621\",\"best_performance_in_all_quizzes\":\"\\u0627\\u0641\\u0636\\u0644 \\u0627\\u062f\\u0627\\u0621 \\u0641\\u0649 \\u0643\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"details\":\"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"student_users\":\"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \",\"details_of\":\"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640\",\"reports\":\"\\u0627\\u0644\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631\",\"exam_history\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629\",\"view_details\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"by_exam\":\"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0628\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"by_subject\":\"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0628\\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"subscriptions\":\"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a\",\"certificate_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629\",\"bonafide_certificates_contents\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificates_fields\":\"\\u062d\\u0642\\u0648\\u0644  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"transfer_certificates_contents\":\"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"transfer_certificates_fields\":\"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"id_cards_contents\":\"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"id_cards_fields\":\"\\u062d\\u0642\\u0648\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"transfer_certificates_content\":\"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"transfer_certificates_cont\":\"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"transfer_certificates_conten\":\"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"bonafide_certificates_conten\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificate_content\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"transfer_certificate_content\":\"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"bonafide_certificatet_fields\":\"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificatet_con\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificatet_cont\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificatet_conten\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificate_conten\":\"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_certificate_fields\":\"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"transfer_certificate_fields\":\"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"id_card_contents\":\"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"id_card_fields\":\"\\u062d\\u0642\\u0648\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"question_subjects\":\"\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"import_questions\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629\",\"add_subject\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0627\\u062f\\u0629\",\"code\":\"\\u0627\\u0644\\u0643\\u0648\\u062f\",\"view_questions\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629\",\"bonafide_certificate_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"transfer_certificate_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"total_exams\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"total_questions\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629\",\"update_quizzes\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0644\\u0644\\u0633\\u0644\\u0633\\u0629\",\"bonafide_certificate_seting\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide__contents\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"bonafide_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"mastersettings_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"religions\":\"\\u0627\\u0644\\u0623\\u062f\\u064a\\u0627\\u0646\",\"start_time\":\"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629\",\"end_time\":\"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629\",\"default_sessions_needed\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629 \",\"iamge\":\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\",\"student_profile\":\"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"students_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"parent_login\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0623\\u0645\\u0631\",\"info\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a\",\"present_academic_details\":\"\\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629\",\"current_academic_year\":\"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629\",\"current_branch\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"current_course\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"previous_educational_details\":\"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629\",\"highest_qualification\":\"\\u0627\\u0644\\u0645\\u0624\\u0647\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u0644\\u064a\\u0627\",\"percentage\":\"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \",\"year_passed\":\"\\u062a\\u0645 \\u0627\\u062c\\u062a\\u064a\\u0627\\u0632 \\u0627\\u0644\\u0633\\u0646\\u0647\",\"previous_institute_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629\",\"institute_address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"religion\":\"\\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0629\",\"guardian_name\":\"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631\",\"guardian_phone\":\"\\u0647\\u0627\\u062a\\u0641 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631\",\"relationship_with_guardian\":\"\\u0635\\u0644\\u0647 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0628\\u0629 \\u0628\\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631\",\"guardian_email\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631\",\"parent_login_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 \",\"parent_name\":\"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631\",\"parent_user_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631\",\"parent_email\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631\",\"password\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"staff_users\":\"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"lesson_plans\":\"\\u062e\\u0637\\u0637 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633\",\"subject_preferences\":\"\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"student_attendance\":\"\\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"payment_statistics\":\"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639\",\"payment_monthly_statistics\":\"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0634\\u0647\\u0631\\u064a\\u0629\",\"particulars\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"general_instructions\":\"\\u0627\\u0631\\u0627\\u0634\\u0627\\u062f\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629\",\"attendance_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"from\":\"\\u0645\\u0646\",\"to\":\"\\u0625\\u0644\\u0649\",\"lesson_plans_for\":\"\\u062e\\u0637\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0633 \\u0644\\u0640\\u0640\",\"no_topics_available\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u062f\\u0631\\u0648\\u0633 \\u0645\\u062a\\u0627\\u062d\\u0629\",\"transfer_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0646\\u0642\\u0644\",\"edit_user\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"username\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"please_enter_valid_email\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"role\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"select_role\":\"\\u0627\\u062e\\u062a\\u0631 \\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"phone\":\"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\",\"please_enter_10-15_digit_mobile_number\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0645\\u0646 \\u0661\\u0660-\\u0661\\u0665 \\u0631\\u0642\\u0645 \\u0644\\u0644\\u062c\\u0648\\u0627\\u0644\",\"please_enter_valid_phone_number\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0633\\u0644\\u064a\\u0645\",\"billing_address\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"please_enter_your_address\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0643\",\"exam_analysis_by_attempts\":\"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"attempts\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a\",\"of\":\"\\u0645\\u0646\",\"mins\":\"\\u062f\\u0642\\u064a\\u0642\\u0629\",\"exam_attempts_and_score\":\"\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0648\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629\",\"quiz_attempts\":\"\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"result\":\"\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629\",\"view_answers\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a\",\"generate_certificate\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0634\\u0647\\u0627\\u062f\\u0629\",\"answers\":\"\\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a\",\"analysis\":\"\\u062a\\u062d\\u0644\\u064a\\u0644\",\"time_limit\":\"\\u062d\\u062f\\u0648\\u062f \\u0627\\u0644\\u0648\\u0642\\u062a\",\"time_taken\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u062e\\u0630 \\u0644\\u0644\\u0625\\u062c\\u0627\\u0628\\u0629 \",\"previous\":\"\\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\",\"next\":\"\\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\",\"timetable_for\":\"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640\",\"sun\":\"\\u0627\\u0644\\u0623\\u062d\\u062f\",\"mon\":\"\\u0627\\u0644\\u0627\\u062b\\u0646\\u064a\\u0646\",\"tue\":\"\\u0627\\u0644\\u062b\\u0644\\u0627\\u062b\\u0627\\u0621\",\"wed\":\"\\u0627\\u0644\\u0627\\u0631\\u0628\\u0639\\u0627\\u0621\",\"thu\":\"\\u0627\\u0644\\u062e\\u0645\\u064a\\u0633\",\"fri\":\"\\u0627\\u0644\\u062c\\u0645\\u0639\\u0629\",\"sat\":\"\\u0627\\u0644\\u0633\\u0628\\u062a\",\"timetable_for_\":\"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640\",\"leisure\":\"\\u0631\\u0627\\u062d\\u0629\",\"lab\":\"\\u0627\\u0644\\u0645\\u062e\\u062a\\u0628\\u0631\",\"completed_topics_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0645\\u0644\\u0629\",\"no_list_available\":\"\\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0627\\u062d\\u0629\",\"select_other_class\":\"\\u0627\\u062e\\u062a\\u0631 \\u0641\\u0635\\u0644 \\u0627\\u062e\\u0631\",\"please_select_the_details\":\"\\u0631\\u062c\\u0627\\u0621\\u0627 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"preferred_subjects\":\"\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"elective\":\"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629\",\"summary\":\"\\u0627\\u0644\\u0645\\u0644\\u062e\\u0635\",\"labs\":\"\\u0627\\u0644\\u0645\\u062e\\u062a\\u0628\\u0631\\u0627\\u062a\",\"electives\":\"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629\",\"subjects_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"records_updated_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"students_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"view_students\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"overall_subject_wise_analysis\":\"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"marks_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"no_data_available_with_the_selection\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"leasure\":\"\\u0631\\u0627\\u062d\\u0629\",\"break\":\"\\u0627\\u0633\\u062a\\u0631\\u0627\\u062d\\u0629\",\"printed_on:_\":\"\\u0637\\u0628\\u0639 \\u0639\\u0644\\u0649:\",\"attendance_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"view_summary\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0644\\u062e\\u0635\",\"attendance_summary\":\"\\u0645\\u0644\\u062e\\u0635 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"total_classes\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635\",\"its_okay\":\"\\u0645\\u0648\\u0627\\u0641\\u0642\",\"topics_completed\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633\",\"transfer_list\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"semister\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"current_year\":\"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629\",\"current_semister\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"admin\":\"\\u0645\\u0634\\u0631\\u0641\",\"ooops__\":\"\\u062e\\u0637\\u0623 \\u0640\\u0640\\u0640\\u0640\\u0640!\",\"please_select_any_users\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0649 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"emergency_no\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0648\\u0627\\u0631\\u0626\",\"no_users_available\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 \",\"transfers_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"modules_helper\":\"\\u0645\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0648\\u062d\\u062f\\u0629\",\"help_link_text\":\"\\u0646\\u0635 \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629\",\"status\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629\",\"add_helper\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u0627\\u0639\\u062f\",\"help_me\":\"\\u0633\\u0627\\u0639\\u062f\\u0646\\u064a\",\"is_enabled\":\"\\u0647\\u0644 \\u0645\\u062a\\u0627\\u062d\",\"keyboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d\",\"backdrop\":\"\\u062e\\u0644\\u0641\\u064a\\u0629\",\"steps\":\"\\u0627\\u0644\\u062e\\u0637\\u0648\\u0627\\u062a\",\"element_id\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631\",\"placement\":\"\\u062a\\u062d\\u062f\\u064a\\u062f \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a\",\"sort_order\":\"\\u0627\\u0645\\u0631 \\u0627\\u0644\\u062a\\u0631\\u062a\\u064a\\u0628\",\"add_to_list\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629\",\"element\":\"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631\",\"student_promotions\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"cancel\":\"\\u0627\\u0644\\u063a\\u0627\\u0621\",\"confirm\":\"\\u062a\\u0623\\u0643\\u064a\\u062f\",\"is_completed\":\"\\u0647\\u0644 \\u062a\\u0648\\u062f \\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0641\\u0635\\u0644 \\u0627\\u0648 \\u0635\\u0641 \\u0627\\u062e\\u0631\\u061f\",\"transfer_to_course\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0635\\u0641 \\u062f\\u0631\\u0627\\u0633\\u064a\",\"transfer_to_year\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"transfer_to_semister\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"promoted\":\"\\u0646\\u0642\\u0644\",\"detained\":\"\\u0627\\u064a\\u0642\\u0627\\u0641\",\"course_completed\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646\",\"transfer\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"create_category\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629\",\"enter_category_name\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629\",\"record_added_successfully_with_password_\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d \\u0645\\u0639 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"timings_set\":\"\\u0636\\u0628\\u0637 \\u0627\\u0648\\u0642\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0635\",\"create_timetable\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"timing_sets\":\"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0635\",\"timetable_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"prepare_timetable\":\"\\u0627\\u0639\\u062f\\u0627\\u062f \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"day\":\"\\u0627\\u0644\\u064a\\u0648\\u0645\",\"remove\":\"\\u062d\\u0630\\u0641\",\"print_timetable\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"enter_notes\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\",\"this_will_be_displayed_bottom_of_the_timetable\":\"\\u0633\\u064a\\u0638\\u0647\\u0631 \\u0630\\u0644\\u0643 \\u0627\\u0633\\u0641\\u0644 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"schedule_table\":\"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"attendance_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"subjects_reports\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"view_analysis\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644\",\"view_report\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0642\\u0631\\u064a\\u0631\",\"my_bookmarks\":\"\\u0645\\u0641\\u0636\\u0644\\u0627\\u062a\\u064a\",\"scheduled_exams\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u062f\\u0648\\u0644\\u0629\",\"by_subjcet\":\"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0628\\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"history\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629\",\"lms\":\"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"quizzes_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"student_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"payments\":\"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a\",\"viewww\":\"\\u0639\\u0631\\u0636\",\"all_exams\":\"\\u0643\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"dueration\":\"\\u0627\\u0644\\u0645\\u062f\\u0629\",\"take_exam\":\"\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"select_template\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628\",\"please_read_the_instructions_carefully\":\"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u0642\\u0631\\u0627 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629\",\"exam_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"please_accept_terms_and_conditions\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0627\\u062d\\u0643\\u0627\\u0645\",\"start_exam\":\"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"enable_back_side\":\"\\u062a\\u0645\\u0643\\u064a\\u0646 \\u0627\\u0644\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"days\":\"\\u0627\\u0644\\u0627\\u064a\\u0627\\u0645\",\"top_logo\":\"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0627\\u062c\\u062f \\u0628\\u0627\\u0644\\u0627\\u0639\\u0644\\u064a\",\"account_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\",\"quiz_and_exam_series\":\"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"lms_categories\":\"\\u0627\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0642\\u0627\\u0626\\u0628 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"academic_years\":\"\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"courses_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"allocate_courses\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \",\"academic_courses\":\"\\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"course_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"record_deleted_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"page_not_found\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\\u0629\",\"you_have_no_permission_to_access\":\"\\u0644\\u064a\\u0633 \\u0644\\u062f\\u064a\\u0643 \\u0635\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644\",\"no_topics_availble\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u062f\\u0631\\u0648\\u0633 \\u0645\\u062a\\u0627\\u062d\\u0629\",\"topics\":\"\\u0627\\u0644\\u062f\\u0631\\u0648\\u0633\",\"import_topics\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u062f\\u0631\\u0648\\u0633\",\"add_course\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"subject_master\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"subject_topics\":\"\\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"allocate_subject_to_course\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"allocate_staff_to_course\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0641\\u0635\\u0644\",\"topics_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633\",\"import\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f\",\"parent\":\"\\u0648\\u0644\\u064a \\u0623\\u0645\\u0631\",\"front_first_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"allocate_staff_to_subject\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"allocate_staff_to_courses\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"add_or_edit_course_subjects\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0648 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0648\\u0627\\u062f \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"allocate_staff\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"subject_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"subject_code\":\"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"pass_marks\":\"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d\",\"is_lab\":\"\\u0647\\u0644 \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0645\\u062e\\u062a\\u0628\\u0631\\u061f\",\"is_elective\":\"\\u0625\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u061f\",\"view_topics\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633\",\"import_users\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"front_second_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_third_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_fourth_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_fifth_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_sixth_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_seventh_item\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_total_fields\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u062d\\u0642\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\\u0629\",\"back_first_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"front_first_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_second_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_third_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_fourth_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_fifth_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_sixth_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"front_seventh_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\",\"coupon_codes\":\"\\u0627\\u0643\\u0648\\u0627\\u062f \\u0627\\u0644\\u0642\\u0633\\u0627\\u0626\\u0645\",\"discount\":\"\\u0627\\u0644\\u062e\\u0635\\u0645\",\"minimum_bill\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\",\"maximum_discount\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u062e\\u0635\\u0645\",\"limit\":\"\\u0627\\u0644\\u062d\\u062f\",\"back_first_item_text\":\"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"back_second_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"back_second_item_text\":\"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"time_spent_on_correct_answers\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629\",\"time_spent_on_wrong_answers\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629\",\"overall_marks_analysis\":\"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0634\\u0627\\u0645\\u0644 \\u0644\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"time\":\"\\u0627\\u0644\\u0648\\u0642\\u062a\",\"spent_on_correct\":\"\\u0645\\u0627 \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\",\"spent_on_wrong\":\"\\u0645\\u0627 \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\",\"spent_time\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u0645\\u0636\\u064a\",\"total_time\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0643\\u0644\\u064a\",\"time_is_shown_in_seconds\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0645\\u0639\\u0631\\u0648\\u0636 \\u0628\\u0627\\u0644\\u062b\\u0648\\u0627\\u0646\\u064a\",\"back_third_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"back_third_item_text\":\"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"back_fourth_item_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"back_fourth_item_text\":\"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\",\"clear_answer\":\"\\u0645\\u0633\\u062d \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629\",\"bookmarks\":\"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629\",\"exam_duration\":\"\\u0645\\u062f\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"hints\":\"\\u0627\\u0644\\u062a\\u0644\\u0645\\u064a\\u062d\\u0627\\u062a\",\"unbookmark_this_question\":\"\\u0627\\u0632\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"bookmark_this_question\":\"\\u0627\\u0636\\u0641 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"mark_for_review\":\"\\u0636\\u0639 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\",\"finish\":\"\\u0627\\u0646\\u0647\\u0627\\u0621\",\"warning\":\"\\u062a\\u062d\\u0630\\u064a\\u0631\",\"answered\":\"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629\",\"marked\":\"\\u062a\\u0645\\u062a \\u0648\\u0636\\u0639 \\u0639\\u0644\\u0627\\u0645\\u0629\",\"not_visited\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0632\\u064a\\u0627\\u0631\\u062a\\u0647\",\"consumed_time\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u0644\\u0643\",\"result_for\":\"\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629 \\u0644\\u0640\\u0640\",\"score\":\"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629\",\"view_key\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \",\"allocate_subjects\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"no_staff_alotted\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062e\\u0635\\u064a\\u0635 \\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"no_subjects_selected\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"id\":\"\\u0627\\u0644\\u0631\\u0642\\u0645\",\"course_name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645\",\"grade_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629\",\"edit_semisters\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"years\":\"\\u0633\\u0646\\u0629\",\"add_religion\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062f\\u064a\\u0646\",\"owner\":\"\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"total_items\":\"\\u0627\\u0644\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0644\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631\",\"update_lms\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"examseries\":\"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"create_coupon\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u064a\\u0645\\u0629\",\"coupon_code\":\"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629\",\"value\":\"\\u0645\\u0628\\u0644\\u063a\",\"percent\":\"\\u0646\\u0633\\u0628\\u0629\",\"discount_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062e\\u0635\\u0645\",\"discount_value\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0645\",\"enter_value\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629\",\"enter_minimum_bill\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u062f\\u0646\\u064a \\u0644\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\",\"discount_maximum_amount\":\"\\u062e\\u0635\\u0645 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u0645\\u0628\\u0644\\u063a\",\"enter_maximum_amount\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u0645\\u0628\\u0644\\u063a\",\"valid_from\":\"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0645\\u0646\",\"valid_to\":\"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0627\\u0644\\u0649\",\"usage_limit\":\"\\u062d\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\",\"enter_usage_limit_per_user\":\"\\u0627\\u062f\\u062e\\u0644 \\u062d\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0644\\u0643\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"from_email\":\"\\u0645\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"from_name\":\"\\u0645\\u0646 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"export_payments_report\":\"\\u062a\\u0635\\u062f\\u064a\\u0631 \\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a\",\"export_payment_records\":\"\\u062a\\u0635\\u062f\\u064a\\u0631 \\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639\",\"download_excel\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0627\\u0643\\u0633\\u0644\",\"all_records\":\"\\u0643\\u0644 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a\",\"from_date\":\"\\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e\",\"to_date\":\"\\u0627\\u0644\\u0649 \\u062a\\u0627\\u0631\\u064a\\u062e\",\"payment_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0641\\u0639\",\"all\":\"\\u0627\\u0644\\u0643\\u0644\",\"payment_status\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639\",\"select_parent\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0627\\u0639\\u0644\\u064a\",\"course_title\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"course_code\":\"\\u0627\\u0644\\u0643\\u0648\\u062f\",\"duration_in_years\":\"\\u0627\\u0644\\u0645\\u062f\\u0629 \\u0628\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a\",\"grade_system\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a\",\"is_having_semisters\":\"\\u0647\\u0644 \\u064a\\u0648\\u062c\\u062f \\u0641\\u0635\\u0648\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"is_having_electives\":\"\\u0647\\u0644 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629\",\"add_subjects_to_course\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"courses_list\":\"\\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"load\":\"\\u062a\\u062d\\u0645\\u064a\\u0644\",\"add_subject_to_course\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"number_of_sessions_needed\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629\",\"template_1_logo\":\"\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 \\u0661 \",\"institute_title\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"create_set\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629\",\"academic_operatons\":\"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"period_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0629\",\"enter_period_name\":\"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0629\",\"start_time_cannot_be_greater_than_or_equal_to_end_time\":\"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0648 \\u064a\\u0633\\u0627\\u0648\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629\",\"start_time_must_be_greater_to_previous_end_time\":\"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u064a\\u062c\\u0628 \\u0627\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628 \\u0631\\u0645\\u0646 \\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\",\"time_spent_correct_answers\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0642\\u0636\\u064a \\u0641\\u064a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u064a\\u0629\",\"time_spent_wrong_answers\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0642\\u0636\\u064a \\u0641\\u064a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629\",\"subject_wise_analysis\":\"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"in\":\"\\u0641\\u0649\",\"attendance_for\":\"\\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0644\\u0640\\u0640\\u0640\",\"notes\":\"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\",\"create_message\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"inbox\":\"\\u0635\\u0646\\u062f\\u0648\\u0642 \\u0627\\u0644\\u0648\\u0627\\u0631\\u062f\",\"compose\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\",\"send_message\":\"\\u0627\\u0631\\u0633\\u0627\\u0644\",\"questions\":\"\\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629\",\"fill_the_blanks\":\"\\u0627\\u0645\\u0644\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a\",\"first_admission_in_the_school\":\"\\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"date_of_first_admission_in_the_school\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"first_admission_class_in_the_school_with_name\":\"\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0645\\u0639 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"completed\":\"\\u0627\\u0646\\u062a\\u0647\\u062a\",\"internal_marks\":\"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629\",\"external_marks\":\"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629\",\"please_enter_valid_internal_marks\":\"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 \",\"please_enter_valid_external_marks\":\"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 \",\"please_enter_valid_maximum_marks\":\"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0642\\u0635\\u0648\\u064a \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 \",\"please_enter_valid_pass_marks\":\"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645\",\"pass_marks_cannot_be_greater_than_maximum_marks\":\"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0642\\u0635\\u0648\\u064a\",\"add_topic\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062f\\u0631\\u0633\",\"topic_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0633\",\"category_deleted_successfully\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0642\\u0633\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"add_academic\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \",\"academic_title\":\"\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"show_in_list\":\"\\u0627\\u0644\\u0639\\u0631\\u0636 \\u0641\\u0649 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629\",\"payu\":\"Payu\",\"paypal\":\"\\u0628\\u0627\\u064a \\u0628\\u0627\\u0644\",\"messaging\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644\",\"offline_payment\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\",\"push_notifications\":\"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\",\"certificate\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\",\"show_foreign_key_constraint\":\"Show Foreign Key Constraint\",\"facebook_login\":\"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u062d\\u0633\\u0627\\u0628 \\u0627\\u0644\\u0641\\u064a\\u0633 \\u0628\\u0648\\u0643\",\"google_plus_login\":\"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u062d\\u0633\\u0627\\u0628 \\u062c\\u0648\\u062c\\u0644 \\u0628\\u0644\\u0633\",\"old_password\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u0642\\u062f\\u064a\\u0645\\u0629\",\"the_password_is_too_short\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u062c\\u062f\\u0627\",\"new_password\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629\",\"retype_password\":\"\\u0627\\u0639\\u062f \\u0627\\u062f\\u062e\\u0627\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \",\"password_and_confirm_password_does_not_match\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0648\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0637\\u0627\\u0628\\u0642\\u0627\\u0646\",\"posted_on\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u062f\\u062e\\u0627\\u0644 \\u0641\\u0649 \",\"send_messageeee\":\"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644\",\"please_select_the_recipients\":\"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0631\\u0633\\u0644 \\u0627\\u0644\\u064a\\u0647\\u0645\",\"import_subjects\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"children\":\"\\u0627\\u0644\\u0627\\u0628\\u0646\\u0627\\u0621\",\"premium\":\"Premium\",\"subscriptions_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a\",\"plan_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062e\\u0637\\u0629\",\"paid_from\":\"\\u0645\\u062f\\u0641\\u0648\\u0639 \\u0645\\u0646\",\"datetime\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0648\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e\",\"it_includes\":\"\\u062a\\u0634\\u0645\\u0644\",\"lms_series\":\"\\u0627\\u0644\\u062d\\u0642\\u0627\\u0626\\u0628 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"view_more\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\",\"items\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631\",\"learning_management_series\":\"\\u0627\\u0644\\u062d\\u0642\\u0627\\u0626\\u0628 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"buy_now\":\"\\u0642\\u0645 \\u0628\\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0646\",\"checkout\":\"\\u0627\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u062f\\u0641\\u0639\",\"item\":\"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631\",\"valid_for\":\"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0644\\u0640\\u0640\\u0640\",\"enter_coupon_code\":\"\\u0627\\u062f\\u062e\\u0644  \\u0643\\u0648\\u062f \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629\",\"apply\":\"\\u062a\\u0642\\u062f\\u0645\",\"select_your_child\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0627\\u0628\\u0646\",\"click_here_to_update_payment_details\":\"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639\",\"billing_details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\",\"invalid_coupon\":\"\\u0642\\u0633\\u064a\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\\u0629\",\"hey_you_are_eligible_for_discount\":\"\\u0645\\u0647\\u0644\\u0627 \\u0623\\u0646\\u062a \\u0645\\u0624\\u0647\\u0644 \\u0644\\u0644\\u062e\\u0635\\u0645\",\"printable__file\":\"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629\",\"timetable_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"printed_onnn:_\":\"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0641\\u0649:\",\"timetable__contents\":\"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"certificates_settings_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\",\"hai\":\"\\u0645\\u0647\\u0644\\u0627\",\"students_list_class_vice\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"library_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"book_returns_student\":\"\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"book_returns_staff\":\"\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"asset_types\":\"\\u0627\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0633\\u062a\\u0648\\u062f\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628\",\"master_data\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"publishers\":\"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\\u0648\\u0646\",\"authors\":\"\\u0627\\u0644\\u0645\\u0624\\u0644\\u0641\\u0648\\u0646\",\"library_users\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"issue_asset\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0645\\u0627\\u062f\\u0629 \\u0627\\u0648 \\u0643\\u062a\\u0627\\u0628\",\"maximum_allowed\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0627\\u0644\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0647\",\"issued\":\"\\u0646\\u0634\\u0631\",\"eligible\":\"\\u0645\\u0624\\u0647\\u0644\",\"transactions\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a\",\"books_taken\":\"\\u0627\\u0644\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0639\\u0627\\u0631\\u0629\",\"issue_book\":\"\\u0627\\u0644\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629\",\"general_info\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629\",\"contace_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\",\"assets_on_issue\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629 \\u0644\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631\",\"issued_on\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631 \\u0641\\u0649 \",\"due_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0633\\u062a\\u062d\\u0642\\u0627\\u0642\",\"library_issues\":\"\\u0627\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"asset_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628\",\"please_enter_asset_reference_number\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a \\u0644\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \",\"return_on\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0641\\u0649 \",\"book_returns\":\"\\u0639\\u0648\\u062f\\u0629 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\",\"academic_details\":\"Academic Details\",\"asset_no\":\"Asset No\",\"asset_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\",\"return\":\"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f\",\"department\":\"\\u0627\\u0644\\u0642\\u0633\\u0645\",\"id_card_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"offline_payment_form\":\"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0645\\u0646\",\"submit\":\"\\u0645\\u0648\\u0627\\u0641\\u0642\",\"offline_payment_instructions\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u0649\",\"payment_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639\",\"your_request_was_submitted_to_admin\":\"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0637\\u0644\\u0628\\u0643 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641\",\"success_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0646\\u0627\\u062c\\u062d\\u0629\",\"user_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"plan\":\"\\u0627\\u0644\\u062e\\u0637\\u0629\",\"payment_gateway\":\"\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639\",\"updated_at\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0641\\u0649 \",\"offline_payment_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\",\"coupon_applied\":\"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629\",\"after_discount\":\"\\u0628\\u0639\\u062f \\u0627\\u0644\\u062e\\u0635\\u0645\",\"created_at\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0641\\u0649 \",\"comments\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a\",\"approve\":\"\\u0627\\u0639\\u062a\\u0645\\u0627\\u062f\",\"reject\":\"\\u0631\\u0641\\u0636\",\"close\":\"\\u0627\\u063a\\u0644\\u0627\\u0642\",\"record_was_updated_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u0646\\u062c\\u0627\\u062d\",\"exam_aborted\":\"\\u062a\\u0645 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"students_completed_list_class_vice\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646\",\"students_completed_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646\",\"course_completed_student_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646\",\"certificate_generation\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0634\\u0647\\u0627\\u062f\\u0629\",\"certificate_for\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0644\\u0640\\u0640\",\"improper_sheet_uploaded\":\"\\u062a\\u0645 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0648\\u0631\\u0642\\u0629 \\u063a\\u064a\\u0631 \\u0644\\u0627\\u0626\\u0642\\u0629\",\"report\":\"\\u0627\\u0644\\u0625\\u0628\\u0644\\u0627\\u063a\",\"failed\":\"\\u0631\\u0633\\u0628\",\"address\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"please_select_required_the_details\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629\",\"this_record_is_in_use_in_other_modules\":\"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u062c\\u0632\\u0621 \\u0627\\u062e\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\",\"date_of_exam\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"topic\":\"\\u0627\\u0644\\u062f\\u0631\\u0633\",\"view_all_users\":\"\\u0639\\u0631\\u0636 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"available_timesets\":\"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629\",\"library_masters\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"author\":\"\\u0627\\u0644\\u0645\\u0624\\u0644\\u0641\",\"publisher\":\"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\",\"available\":\"\\u0645\\u062a\\u0627\\u062d\",\"edition\":\"\\u0625\\u0635\\u062f\\u0627\\u0631\",\"library_assets\":\"\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u064a\\u0629\",\"eligible_for_fine\":\"\\u0645\\u0633\\u062a\\u062d\\u0642 \\u0644\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\",\"fine_per_day\":\"\\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a\\u0629\",\"qualification_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0624\\u0647\\u0644\",\"experience\":\"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"months\":\"\\u0627\\u0644\\u0634\\u0647\\u0648\\u0631\",\"create_asset\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\",\"asset_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\",\"is_eligible_for_fine\":\"\\u0647\\u0644 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\\u061f\",\"is_having_max_fine_limit\":\"\\u0647\\u0644 \\u0648\\u0635\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\",\"maximum_fine_amount\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\",\"maximum_issuable\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631\",\"maximum_days_to_return\":\"\\u0627\\u0642\\u0635\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\",\"maximum_advanced_reservations\":\"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u062d\\u062c\\u0648\\u0632\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645\\u0629\",\"edit_asset\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\",\"issuable\":\"\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0635\\u062f\\u0627\\u0631\",\"days_to_return\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\",\"create_master_asset\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0631\\u0626\\u064a\\u0633\\u064a\",\"asset_belongs_to_subject\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0627\\u0644\\u062a\\u0627\\u0628\\u0639 \\u0644\\u0645\\u0627\\u062f\\u0629 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"isbn_number\":\"\\u0631\\u0642\\u0645 Isbn \",\"actual_price\":\"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\",\"chargible_price_if_lost\":\"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0630\\u0627 \\u062a\\u0645 \\u0636\\u064a\\u0627\\u0639\\u0647\",\"create_authors\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0624\\u0644\\u0641\",\"author_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0641\",\"create_publisher\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0646\\u0627\\u0634\\u0631\",\"assets_publishers\":\"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\\u0648\\u0646\",\"publisher_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\",\"librarian\":\"\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"back\":\"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629\",\"collections\":\"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a\",\"masters\":\"Masters\",\"damaged\":\"\\u0627\\u0644\\u062a\\u0627\\u0644\\u0641\",\"lost\":\"\\u0627\\u0644\\u0645\\u0641\\u0642\\u0648\\u062f\",\"generate_collection\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629\",\"series_prefix\":\"\\u0644\\u0642\\u0628 \\u0627\\u0644\\u0633\\u0644\\u0627\\u0633\\u0644\",\"generate\":\"\\u0627\\u0646\\u0634\\u0627\\u0621\",\"maximum_issues_student\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0644\\u0647\\u0645\",\"maximum_issues_staff\":\"\\u0627\\u062c\\u0645\\u0627\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0644\\u0647\\u0645\",\"maximum_days_to_return_student\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"maximum_days_to_return_staff\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"library_series_prefix\":\"\\u0644\\u0642\\u0628 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"library_series_number_length\":\"\\u0639\\u062f\\u062f \\u0627\\u0631\\u0642\\u0627\\u0645 \\u0633\\u0644\\u0633\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"topper_percentage\":\"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0645\\u0626\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0623\\u0639\\u0644\\u0649\",\"barcode\":\"\\u0628\\u0627\\u0631\\u0643\\u0648\\u062f\",\"edit_master_asset\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\",\"your_not_assigned_to_any_class\":\"\\u0627\\u0646\\u062a \\u063a\\u064a\\u0631 \\u0645\\u0636\\u0627\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0649 \\u0641\\u0635\\u0644\",\"edit_author\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0641\",\"course_completed_students_list_class_vice\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646\",\"edit_academic\":\"\\u062a\\u0639\\u062f\\u064a\\u0644\",\"edit_course\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644\",\"reference_no_\":\"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\",\"eligiblity\":\"\\u0627\\u0644\\u0623\\u062d\\u0642\\u064a\\u0629\",\"issue\":\"\\u0627\\u0635\\u062f\\u0627\\u0631\",\"asset_issued_successfully\":\"\\u062a\\u0645 \\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"on_issue\":\"\\u062a\\u062d\\u062a \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631\",\"edit_subject\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0627\\u062f\\u0629\",\"subjects_listtt\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"edit_topic\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0633\",\"upload_question\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0624\\u0627\\u0644\",\"supported_formats_are\":\"\\u0627\\u0644\\u0627\\u0645\\u062a\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0647 \\u0647\\u064a\",\"difficulty_level\":\"\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0635\\u0639\\u0648\\u0628\\u0629\",\"hint\":\"\\u062a\\u0644\\u0645\\u064a\\u062d\",\"explanation\":\"\\u0627\\u0644\\u0634\\u0631\\u062d\",\"time_to_spend\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0644\\u0627\\u0632\\u0645\",\"in_seconds\":\"\\u0628\\u0627\\u0644\\u062b\\u0648\\u0627\\u0646\\u064a\",\"answer_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629\",\"total_correct_answers\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629\",\"total_blank_answers\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0641\\u0627\\u0631\\u063a\\u0629\",\"left_title\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u064a\\u0633\\u0631\",\"right_title\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u064a\\u0645\\u0646\",\"left_option\":\"\\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u064a\\u0633\\u0631\",\"add_exam_series\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"series_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u062d\\u0642\\u064a\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"please_upload_valid_image_type\":\"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0646\\u0648\\u0639 \\u0635\\u0648\\u0631\\u0629 \\u0635\\u0627\\u0644\\u062d\",\"it_will_be_updated_by_adding_the_exams\":\"\\u0633\\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0629 \\u0628\\u0645\\u062c\\u0631\\u062f \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"short_description\":\"\\u0648\\u0635\\u0641 \\u0642\\u0635\\u064a\\u0631\",\"update_series_for\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u062d\\u0642\\u064a\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"exam_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"saved_exams\":\"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629\",\"add_content\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u062d\\u062a\\u0648\\u064a\",\"content_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a\",\"resource_link\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\",\"lms_file\":\"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"add_lms_series\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062d\\u0642\\u064a\\u0628\\u0629 \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"lms_category\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"it_will_be_updated_by_adding_the_lms_items\":\"\\u0633\\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627 \\u0628\\u0639\\u062f \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"master_setup\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"master_setup_dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"mastersettings_course_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"edit_course_semister\":\" \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"edit_semister\":\" \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u0646\\u0635\\u0641 \\u0633\\u0646\\u0648\\u064a\",\"improper_data_in_the_question\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"record_already_exists_with_this_title\":\"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0628\\u0627\\u0644\\u0641\\u0639\\u0644 \\u0645\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"operations_are_disabled_in_demo_version\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0645\\u0639\\u0637\\u0644\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\",\"no_records_available\":\"No Records Available\",\"no_categories_available\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u0642\\u0633\\u0627\\u0645 \\u0645\\u062a\\u0627\\u062d\\u0629\",\"click_here_to_change_your_preferences\":\"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u062a\\u063a\\u064a\\u064a\\u0631 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0643\",\"language\":\"\\u0627\\u0644\\u0644\\u063a\\u0629\",\"default_language\":\"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629\",\"latest_students\":\"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"latest_staff\":\"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"recent_online_payments\":\"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629\",\"recent_offline_payments\":\"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629\",\"students_detained_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646\",\"student_book_return\":\"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"staff_book_return\":\"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"recent_quiz_takers\":\"\\u0627\\u062e\\u0631 \\u0637\\u0627\\u0644\\u0628 \\u0642\\u0627\\u0645 \\u0628\\u0627\\u0644\\u0625\\u062e\\u062a\\u064a\\u0627\\u0631\",\"library_history\":\"\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"number\":\"\\u0627\\u0644\\u0631\\u0642\\u0645\",\"today\'s_classes\":\"\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"lesson_plan_statistics\":\"\\u0625\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u062e\\u0637\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0633\",\"staff_inactive_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u0645\\u0641\\u0639\\u0644\\u064a\\u0646\",\"update_master_setup\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"please_update_master_setup_details\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"ok\":\"\\u062d\\u0633\\u0646\\u0627\",\"students_list_class_wise\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0628\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"course_completed_students\":\"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644\\u0648\\u0627 \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0627\\u0631\\u0633\\u064a\",\"detained_students_list_class_wise\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646 \\u0628\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"improper_selection\":\"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u063a\\u064a\\u0631 \\u0644\\u0627\\u0626\\u0642\",\"url\":\"\\u0631\\u0627\\u0628\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\",\"all_payments\":\"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a\",\"update_strings\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629  \",\"disable\":\"\\u062a\\u0639\\u0637\\u064a\\u0644\",\"enable\":\"\\u0645\\u0643\\u0646\",\"set_default\":\"\\u0648\\u0636\\u0639 \\u0643\\u0625\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\",\"staff_status\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"are_you_sure_to_make_user_active\":\"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"are_you_sure_to_make_user_inactive\":\"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"time_table_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635\",\"no_item_selected\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0649 \\u0639\\u0646\\u0635\\u0631\",\"cannot_remove_this_item_as_it_is_in_use\":\"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0645\\u0633\\u062d \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0644\\u0627\\u0646\\u0647 \\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\",\"is_having_semesters\":\"\\u0647\\u0644 \\u0644\\u0647 \\u0641\\u0635\\u0648\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"detained_student_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646\",\"make_inactive\":\"\\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644\\u0647\",\"religion_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0647\",\"ooops\":\"\\u0639\\u0630\\u0631\\u0627\",\"for_all_users_list\":\"\\u0644\\u0639\\u0631\\u0636 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"click_here\":\"\\u0627\\u0646\\u0642\\u0631 \\u0647\\u0646\\u0627\",\"date_time\":\"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e \\u0648\\u0627\\u0644\\u0648\\u0642\\u062a\",\"today\":\"\\u0627\\u0644\\u064a\\u0648\\u0645\",\"library_books_details\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628\",\"master_asset_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"issue_on\":\"\\u0645\\u0635\\u062f\\u0631\\u0647 \\u0641\\u0649\",\"password_updated_successfully\":\"\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"offline_exam_categories\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629 \",\"improper_data_submitted\":\"\\u062a\\u0645 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\\u0629\",\"cannot_remove_this_subject_as_allocated_to_staff\":\"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u0644\\u0627\\u0646\\u0647\\u0627 \\u0645\\u062e\\u0635\\u0635\\u0629 \\u0644\\u0645\\u0639\\u0644\\u0645\",\"site_title\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"login_page_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"site_logo\":\"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631\",\"site_address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0646\",\"site_city\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\",\"site_favicon\":\"\\u0627\\u064a\\u0642\\u0648\\u0646\\u0647 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0641\\u0649 \\u0634\\u0631\\u064a\\u0637 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0648\\u064a\\u0646\",\"site_state\":\"\\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0629\",\"site_country\":\"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629\",\"site_zipcode\":\"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\\u064a\",\"site_phone\":\"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\",\"system_timezone\":\"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u062a\",\"background_image\":\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\\u0629\",\"default_academic_year_id\":\"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629\",\"default_parent_course_id\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\",\"current_theme\":\"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"currency_symbol\":\"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629\",\"default_theme\":\"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\",\"green_theme\":\"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u0627\\u062e\\u0636\\u0631\",\"red_theme\":\"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u0627\\u062d\\u0645\\u0631\",\"cannot_remove_as_staff_is_assigned_to_classes\":\"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062d \\u0644\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0645\\u062e\\u0635\\u0635 \\u0644\\u0641\\u0635\\u0648\\u0644\",\"staff_removed_successfully\":\"\\u062a\\u0645 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"please_update_master_setup_details_before_creating_users_\":\"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0642\\u0628\\u0644 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646.\",\"status_changed_successfully\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"make_active\":\"\\u0648\\u0642\\u0641 \\u0627\\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\",\"assets_information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a\",\"edit_branch_and_course\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"add_total_blank_columns\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0639\\u0645\\u062f\\u0629 \\u0641\\u0627\\u0631\\u063a\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644\",\"assistant_librarian\":\"\\u0645\\u0648\\u0638\\u0641 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"template\":\"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628\",\"please_check_your_email_master_settings\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0631\\u0627\\u062c\\u0639 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"roll_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"meta_description\":\"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"meta_keywords\":\"\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0628\\u062d\\u062b\",\"google_analytics\":\"\\u062a\\u062d\\u0644\\u064a\\u0644\\u0627\\u062a \\u062c\\u0648\\u062c\\u0644\",\"edit_template\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628\",\"welcome\":\"\\u0645\\u0631\\u062d\\u0628\\u0627\",\"email_content\":\"\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"select_course\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0635\\u0644\",\"invalid_details_supplied\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062e\\u0627\\u0637\\u0626\\u0629\",\"add_series\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062d\\u0642\\u064a\\u0628\\u0629 \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"scheduled_exam_marks\":\"\\u0646\\u062a\\u0627\\u0626\\u062c \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"no_series_available\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u062d\\u0642\\u0627\\u0626\\u0628 \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629\",\"time_table_is_not_created_for_your_class\":\"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0646\\u0634\\u0627\\u0624\\u0647 \\u0644\\u0641\\u0635\\u0644\\u0643\",\"timingsets_cannot_be_empty\":\"\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0641\\u0627\\u0631\\u063a\\u0629\",\"token_mismatch_exception\":\"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\",\"offline_payment_information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\",\"edit_question\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0633\\u0624\\u0627\\u0644\",\"are_you_sure_to_make_clear_image\":\"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0644\\u0641\",\"clear_image\":\"\\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0644\\u0641\",\"audio\":\"\\u0645\\u0644\\u0641 \\u0635\\u0648\\u062a\\u064a\",\"gateway\":\"\\u0628\\u0648\\u0627\\u0628\\u0629\",\"pending_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631\",\"currency\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0629\",\"account_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\",\"mail_driver\":\"Mail Driver\",\"mail_host\":\"Mail Host\",\"mail_port\":\"Mail Port\",\"mail_username\":\"Mail Username\",\"mail_password\":\"Mail Password\",\"mail_encryption\":\"Mail Encryption\",\"payu_merchant_key\":\"Payu Merchant Key\",\"payu_salt\":\"Payu Salt\",\"payu_working_key\":\"Payu Working Key\",\"payu_testmode\":\"Payu Testmode\",\"you_already_purchased_this_item\":\"\\u0627\\u0646\\u062a \\u0641\\u0639\\u0644\\u064a\\u0627 \\u0642\\u0645\\u062a \\u0628\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621\",\"click_here_to_list_subjects\":\"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f\",\"exam_already_submitted\":\"\\u062a\\u0645 \\u0627\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"quiz_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\",\"create_template\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0642\\u0627\\u0644\\u0628\",\"file_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641\",\"saved_items\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0647\",\"sorry_no_messages_available\":\"\\u0639\\u0641\\u0648\\u0627 \\u0644\\u0627\\u062a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0626\\u0644\",\"undefined_user\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\",\"add_notification\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0634\\u0639\\u0627\\u0631\",\"edit_language\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0644\\u063a\\u0629\",\"language_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0644\\u063a\\u0629\",\"language_code\":\"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0644\\u063a\\u0629\",\"supported_language_codes\":\"\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629\",\"is_rtl\":\"\\u0647\\u0644 \\u0627\\u062a\\u062c\\u0627\\u0647 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 \\u061f\",\"_empty_\":\"\",\"student_book_returns\":\"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0647 \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"are_you_sure_to_return_the_book\":\"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\",\"password_reset_link_sent_to_email\":\"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0627\\u0628\\u0637 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0627\\u064a\\u0645\\u064a\\u0644\\u0643\",\"reset_password\":\"\\u0627\\u0639\\u0627\\u062f\\u0629 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \",\"email_address\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"confirm_password\":\"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \",\"password_changed_successfully\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"latest_quizzes\":\"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"latest\":\"\\u0627\\u0644\\u0627\\u062e\\u064a\\u0631\",\"children_analysis\":\"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0627\\u0628\\u0646\\u0627\\u0621\",\"no_quizzes_available\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629\",\"to_change_your_settings\":\"\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\\u0643\",\"staff_book_returns\":\"\\u0627\\u0631\\u062c\\u0627\\u0639 \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"chargeable_price_if_lost\":\"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u062d\\u0627\\u0644\\u0629 \\u0636\\u064a\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\",\"give_feedback\":\"\\u0634\\u0627\\u0631\\u0643\\u0646\\u0627 \\u0628\\u0631\\u0623\\u064a\\u0643\",\"feedback_form\":\"\\u0627\\u0633\\u062a\\u0645\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a\",\"send\":\"\\u0627\\u0631\\u0633\\u0627\\u0644\",\"edit_religion\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0629\",\"course_parent_id\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"add_language\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0644\\u063a\\u0629\",\"LMS\":\"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"feed_backs\":\"\\u0627\\u0644\\u0622\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a\",\"educate\":\"\\u062a\\u0639\\u0644\\u0645\",\"enlight\":\"ENLIGHT\",\"enforce\":\"\\u0625\\u062a\\u0642\\u0627\\u0646\",\"login\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"forgot_password\":\"\\u0647\\u0644 \\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"enlightenment\":\"\\u0625\\u0628\\u062f\\u0627\\u0639\",\"please_select_academic_year_and_course\":\"\\u064a\\u0631\\u062c\\u0649 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"lms_contents\":\"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"home_page\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"bonafide_transfer_certificates\":\"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"students_certificates\":\"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"student_certificate\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"students_certificate\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"logged_out_successfully\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0628\\u0646\\u062c\\u0627\\u062d\",\"once_saved_the_admission_details_cannot_be_edited\\n\":\"\\u0645\\u0631\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u062a\\u062d\\u0631\\u064a\\u0631\\u0647\\u0627\",\"transfer_certificate\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644\",\"staff_is_busy_for_that_slot\":\"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0645\\u0634\\u063a\\u0648\\u0644 \\u0641\\u0649 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062d\\u0635\\u0647\",\"facebook_client_id\":\"facebook client id\",\"facebook_client_secret\":\"facebook client secret\",\"facebook_redirect_url\":\"facebook redirect url\",\"google_client_id\":\"google client id\",\"google_client_secret\":\"google client secret\",\"google_redirect_url\":\" google redirect url\",\"edit_series\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062d\\u0642\\u064a\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"edit_instruction\":\"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"add_instructions\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"promote_all\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0643\\u0644\",\"detain_all\":\"\\u0627\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u0643\\u0644 \",\"no_action\":\"\\u0628\\u062f\\u0648\\u0646 \\u0627\\u062c\\u0631\\u0627\\u0621 \",\"do_you_want_to_promot_them\":\"\\u0646\\u0642\\u0644 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\\u061f\",\"do_you_want_to_graduate_them\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u062c\\u064a\\u0646\\u061f\",\"select_all\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0643\\u0644\",\"cancel_all\":\"\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0644 \",\"reback_completed\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0639\\u0644\\u0649 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u0629\",\"reback_them\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0639\\u0644\\u0649 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u0629\",\"course_detained_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646\",\"item_is_not_exists\":\"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\",\"error\":\"\\u062d\\u062f\\u062b \\u062e\\u0637\\u0623 \\u0645\\u0627\",\"no_data_available_in_table\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644\",\"show\":\"\\u0639\\u0631\\u0636\",\"entries\":\"\\u0627\\u0644\\u0645\\u062f\\u062e\\u0644\\u0627\\u062a\",\"showing\":\"\\u0639\\u0631\\u0636\",\"password_and_confirmation_not_matched\":\"\\u062e\\u0627\\u0646\\u0629 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0648\\u062e\\u0627\\u0646\\u0629 \\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u0637\\u0627\\u0628\\u0642\\u062a\\u064a\\u0646\",\"is_parent_account_available\":\"\\u0647\\u0644 \\u062d\\u0633\\u0627\\u0628 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 \\u0645\\u062a\\u0627\\u062d\",\"you_should_choose_one_student_at_least\":\"\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0637\\u0627\\u0644\\u0628 \\u0648\\u0627\\u062d\\u062f \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0642\\u0644\",\"students_have_moved_to_schooling_again\":\"\\u0648\\u0642\\u062f \\u0627\\u0646\\u062a\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649\",\"an_error_occurred\":\"\\u062d\\u062f\\u062b \\u062e\\u0637\\u0623 \\u0645\\u0627\",\"completed_students_of_year\":\"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646 \\u0644\\u0644\\u0639\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"for_year\":\"\\u0644\\u0644\\u0639\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"list_of_courses\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\",\"total_semesters\":\"\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"currernt_semester\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"edit_notification\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\",\"read_more\":\"\\u0627\\u0642\\u0631\\u0623 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\",\"certificates_settings\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\",\"add_semester\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0635\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\",\"semester_start_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"semester_end_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"semester_start_date 1\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 1\",\"semester_end_date 1\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 1\",\"semester_start_date 2\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 2\",\"semester_end_date 2\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 2\",\"semester_start_date 3\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 3\",\"semester_end_date 3\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 3\",\"address_middle\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0623\\u0648\\u0633\\u0637\",\"skip\":\"\\u062a\\u062e\\u0637\\u0649\",\"dob\":\"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645\",\"bonafide_certificate\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"messaging_system_for\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u062a\\u0648\\u062f \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644 \\u0644\\u0647\\u0645\",\"edit_coupon\":\"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629\",\"invalid_setting\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062e\\u0627\\u0637\\u0626\\u0629\",\"sn\":\"\\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644\",\"bonafide_or_transfer_certificate\":\"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0648\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"note\":\"\\u0645\\u0644\\u062d\\u0648\\u0638\\u0629\",\"bonafide_contents\":\"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\",\"if_the_student_admission_details_are_not_updated_those_students_will_be_available_in_all_users_list\":\"\\u0625\\u0630\\u0627 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0644\\u0643\\u0644 \\u0637\\u0627\\u0644\\u0628 \\u0641\\u0644\\u0646 \\u062a\\u0638\\u0647\\u0631 \\u0623\\u0633\\u0645\\u0627\\u0624\\u0647\\u0645 \\u0641\\u0649 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0648\\u0644\\u0643\\u0646 \\u0633\\u064a\\u0643\\u0648\\u0646\\u0648\\u0627 \\u0641\\u0649 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"done\":\"\\u0627\\u0646\\u062a\\u0647\\u064a\",\"this_user_is_detained\":\"\\u062a\\u0645 \\u0627\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0627\\u062f\\u0627\\u0631\\u0629\",\"today_classes\":\"\\u062d\\u0635\\u0635 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"change_user_language\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"no_action_all\":\"\\u0628\\u062f\\u0648\\u0646 \\u0625\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0643\\u0644\",\"ibrary_series_number_length\":\"\\u0639\\u062f\\u062f \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u0643\\u062a\\u064a\\u0629\",\"ibrary_series_prefix\":\"\\u0627\\u0644\\u0645\\u0633\\u0645\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629\",\"mail\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \",\"once_saved_the_admission_details_cannot_be_edited\":\"\\u0644\\u0627\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0628\\u0639\\u062f \\u0627\\u062c\\u0631\\u0627\\u0621 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0641\\u0638\",\"address_line_1\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0623\\u0648\\u0644\",\"address_line_2\":\"\\u0633\\u0637\\u0631 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 2\",\"main_branch\":\"\\u0627\\u0644\\u0641\\u0631\\u0639 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\",\"student_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"blood_type\":\"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645\",\"phone_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\",\"web_site\":\"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"admission_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"course_information\":\"\\u0627\\u0644\\u0641\\u0635\\u0644\",\"full_address\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644\",\"city_address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\",\"address_of_city_and_state\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0648\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629\",\"validity_information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629\",\"mobile_number\":\"\\u0627\\u0644\\u062c\\u0648\\u0627\\u0644\",\"home_phone_number\":\"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\",\"address_1\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 1\",\"emergency_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0648\\u0627\\u0631\\u0626\",\"headquarters\":\"\\u0627\\u0644\\u0645\\u0642\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\",\"website\":\"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"template_1\":\"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 1\",\"template_2\":\"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 2\",\"select_language\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629\",\"academic_id\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"course_id\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0641\\u0635\\u0644\",\"topic_id\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0633 (\\u0627\\u0644\\u0631\\u0642\\u0645)\",\"please_type_any_details_for_search\":\"\\u064a\\u0631\\u062c\\u0649 \\u0643\\u062a\\u0627\\u0628\\u0629 \\u0623\\u064a \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0644\\u0644\\u0628\\u062d\\u062b\",\"fill_in_blanks\":\"\\u0625\\u0645\\u0644\\u0623 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a\",\"upload_failed\":\"\\u0644\\u0642\\u062f \\u0641\\u0634\\u0644\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0641\",\"upload_success\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"image_cleared_successfully\":\"\\u062a\\u0645 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"do_not_press_back_or_refresh_button\":\"\\u0644\\u0627 \\u062a\\u0636\\u063a\\u0637 \\u0639\\u0644\\u0649 \\u0632\\u0631 \\u0627\\u0644\\u0631\\u062c\\u0648\\u0639 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b\",\"not_allowed\":\"\\u063a\\u064a\\u0631 \\u0645\\u0633\\u0645\\u0648\\u062d\",\"this_service_is_not_available_now\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u062d\\u0627\\u0644\\u064a\\u0627\",\"semester_1\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 1\",\"semester_2\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 2\",\"file\":\"\\u0645\\u0644\\u0641\",\"video_url\":\"\\u0631\\u0627\\u0628\\u0637 \\u0641\\u064a\\u062f\\u064a\\u0648\",\"iframe\":\"IFRAME\",\"audio_url\":\"\\u0631\\u0627\\u0628\\u0637 \\u0645\\u0644\\u0641 \\u0635\\u0648\\u062a\\u064a\",\"100\":\"100\",\"feedback_submitted_successfully\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d \\u0628\\u0646\\u062c\\u0627\\u062d\",\"feedback_details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\",\"feedbacks\":\"\\u0627\\u0644\\u0622\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a\",\"record_added_successfully_with_password\":\"\\u062a\\u0645 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d \\u0648\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0647\\u064a \",\"send_to\":\"\\u0627\\u0631\\u0633\\u0644 \\u0625\\u0644\\u0649\",\"feedback_subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639 \\u0627\\u0644\\u0625\\u0642\\u062a\\u0631\\u0627\\u062d\",\"feedback_description\":\"\\u0634\\u0631\\u062d \\u0627\\u0644\\u0625\\u0642\\u062a\\u0631\\u0627\\u062d\",\"send_messages\":\"\\u0625\\u0631\\u0633\\u0644 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644\",\"select_user\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"message_subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0644\\u0629\",\"message_description\":\"\\u0646\\u0635 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0644\\u0629\",\"user_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"teachers\":\"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"choose\":\"\\u0623\\u062e\\u062a\\u0631\",\"experience_years\":\"\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"experience_months\":\"\\u062a\\u062c\\u0631\\u0628\\u0629 \\u0623\\u0634\\u0647\\u0631\",\"your_admission_details_are_not_updated\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627\",\"departments\":\"\\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0627\\u062a\",\"create_department\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0625\\u062f\\u0627\\u0631\\u0629\",\"sno\":\"\\u0627\\u0644\\u0631\\u0642\\u0645\",\"slug\":\"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0641\\u0649 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0637\",\"add_department\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629\",\"department_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0642\\u0633\\u0645\",\"department_code\":\"\\u0643\\u0648\\u062f \\u0642\\u0633\\u0645\",\"help_link_url\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629\",\"you_have_answered_the_question\":\"\\u0644\\u0642\\u062f \\u0623\\u062c\\u0628\\u062a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"you_have_not_answered_the_question\":\"\\u0644\\u0645 \\u062a\\u062a\\u0645 \\u0627\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644\",\"you_have_answered_the_question_but_have_marked_the_question_for_review\":\"\\u0644\\u0642\\u062f \\u0623\\u062c\\u0628\\u062a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0648\\u0644\\u0643\\u0646\\u0643 \\u0648\\u0636\\u0639\\u062a \\u0639\\u0644\\u0627\\u0645\\u0647 \\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0639\\u0644\\u064a\\u0629\",\"you_have_not_visited_the_question_yet\":\"\\u0644\\u0645 \\u062a\\u0642\\u0645 \\u0628\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0645\\u0646 \\u0642\\u0628\\u0644\",\"the_computer_provided_to_me_is_in_proper_working_condition\":\"\\u062c\\u0647\\u0627\\u0632 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u0630\\u0649 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0645\\u0629 \\u064a\\u0639\\u0645\\u0644 \\u0628\\u062d\\u0627\\u0644\\u0629 \\u062c\\u064a\\u062f\\u0629\",\"i_have_read_and_understood_the_instructions_given_above\":\"\\u0644\\u0642\\u062f \\u0642\\u0631\\u0623\\u062a \\u0648\\u0641\\u0647\\u0645\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0630\\u0643\\u0648\\u0631\\u0629 \\u0623\\u0639\\u0644\\u0627\\u0647\",\"created_by\":\"\\u0627\\u0636\\u064a\\u0641 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"updated_by\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"creator_ip\":\"\\u0631\\u0642\\u0645 \\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641\",\"updater_ip\":\"\\u0631\\u0642\\u0645 \\u062d\\u0627\\u0633\\u0628 \\u0627\\u062e\\u0631 \\u0645\\u0646 \\u0642\\u0627\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644\",\"smtp\":\"smtp\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"mandrill\",\"ses\":\"\\u0625\\u0633 \\u0625\\u064a \\u0625\\u0633\",\"log\":\"\\u0633\\u062c\\u0644\",\"top_level\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0623\\u0639\\u0644\\u064a\",\"invalid_subject_id\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\",\"view_record_history\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644\",\"creator_username\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0630\\u064a \\u0636\\u0627\\u0641 \\u0627\\u0644\\u0633\\u062c\\u0644\",\"updater_username\":\"\\u0627\\u062e\\u0631 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0639\\u062f\\u0644 \\u0639\\u0644\\u0649  \\u0627\\u0644\\u0633\\u062c\\u0644\",\"id_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"printed_on\":\"\\u0637\\u0628\\u0639 \\u0639\\u0644\\u0649\",\"saudi_arabia\":\"\\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"albania\":\"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\\u0627\",\"algeria\":\"\\u0627\\u0644\\u062c\\u0632\\u0627\\u0626\\u0631\",\"american_samoa\":\"\\u0633\\u0627\\u0645\\u0648\\u0627 \\u0627\\u0644\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\\u0629\",\"andorra\":\"\\u0623\\u0646\\u062f\\u0648\\u0631\\u0627\",\"angola\":\"\\u0623\\u0646\\u063a\\u0648\\u0644\\u0627\",\"anguilla\":\"\\u0623\\u0646\\u063a\\u064a\\u0644\\u0627\",\"antarctica\":\"\\u0627\\u0644\\u0642\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629\",\"antigua_and_barbuda\":\"\\u0623\\u0646\\u062a\\u064a\\u063a\\u0648\\u0627 \\u0648\\u0628\\u0631\\u0628\\u0648\\u062f\\u0627\",\"argentina\":\"\\u0627\\u0644\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646\",\"armenia\":\"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\\u0627\",\"aruba\":\"\\u0623\\u0631\\u0648\\u0628\\u0627\",\"australia\":\"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\\u0627\",\"austria\":\"\\u0627\\u0644\\u0646\\u0645\\u0633\\u0627\",\"azerbaijan\":\"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646\",\"bahamas\":\"\\u0627\\u0644\\u0628\\u0627\\u0647\\u0627\\u0645\\u0627\",\"bahrain\":\"\\u0627\\u0644\\u0628\\u062d\\u0631\\u064a\\u0646\",\"bangladesh\":\"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634\",\"barbados\":\"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633\",\"belarus\":\"\\u0631\\u0648\\u0633\\u064a\\u0627 \\u0627\\u0644\\u0628\\u064a\\u0636\\u0627\\u0621\",\"belgium\":\"\\u0628\\u0644\\u062c\\u064a\\u0643\\u0627\",\"belize\":\"\\u0628\\u0644\\u064a\\u0632\",\"benin\":\"\\u0628\\u0646\\u064a\\u0646\",\"bermuda\":\"\\u0628\\u0631\\u0645\\u0648\\u062f\\u0627\",\"bhutan\":\"\\u0628\\u0648\\u062a\\u0627\\u0646\",\"bolivia\":\"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\\u0627\",\"bosnia_and_herzegovina\":\"\\u0627\\u0644\\u0628\\u0648\\u0633\\u0646\\u0629 \\u0648\\u0627\\u0644\\u0647\\u0631\\u0633\\u0643\",\"botswana\":\"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u0627\",\"bouvet_island\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0628\\u0648\\u0641\\u064a\\u062a\",\"brazil\":\"\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644\",\"british_indian_ocean_territory\":\"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a\",\"brunei_darussalam\":\"\\u0628\\u0631\\u0648\\u0646\\u0627\\u064a \\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0644\\u0627\\u0645\",\"bulgaria\":\"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0627\",\"burkina_faso\":\"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u0627 \\u0641\\u0627\\u0633\\u0648\",\"burundi\":\"\\u0628\\u0648\\u0631\\u0648\\u0646\\u062f\\u064a\",\"cambodia\":\"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\\u0627\",\"cameroon\":\"\\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646\",\"canada\":\"\\u0643\\u0646\\u062f\\u0627\",\"cape_verde\":\"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631\",\"cayman_islands\":\"\\u062c\\u0632\\u0631 \\u0643\\u0627\\u064a\\u0645\\u0627\\u0646\",\"central_african_republic\":\"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0641\\u0631\\u064a\\u0642\\u064a\\u0627 \\u0627\\u0644\\u0648\\u0633\\u0637\\u0649\",\"chad\":\"\\u062a\\u0634\\u0627\\u062f\",\"chile\":\"\\u062a\\u0634\\u064a\\u0644\\u064a\",\"china\":\"\\u0627\\u0644\\u0635\\u064a\\u0646\",\"christmas_island\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0633\\u0645\\u0627\\u0633\",\"cocos_keeling_islands\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633 \\u0643\\u064a\\u0644\\u064a\\u0646\\u063a\",\"colombia\":\"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\\u0627\",\"comoros\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631\",\"congo\":\"\\u0627\\u0644\\u0643\\u0648\\u0646\\u063a\\u0648\",\"cook_islands\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\",\"costa_rica\":\"\\u0643\\u0648\\u0633\\u062a\\u0627 \\u0631\\u064a\\u0643\\u0627\",\"croatia_hrvatska\":\"\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0627 \\u0647\\u0631\\u0641\\u0627\\u062a\\u0633\\u0643\\u0627\",\"cuba\":\"\\u0643\\u0648\\u0628\\u0627\",\"cyprus\":\"\\u0642\\u0628\\u0631\\u0635\",\"czech_republic\":\"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\",\"denmark\":\"\\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\",\"djibouti\":\"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a\",\"dominica\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u0627\",\"dominican_republic\":\"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0645\\u0646\\u064a\\u0643\\u0627\\u0646\",\"east_timor\":\"\\u062a\\u064a\\u0645\\u0648\\u0631 \\u0627\\u0644\\u0634\\u0631\\u0642\\u064a\\u0629\",\"ecuador\":\"\\u0627\\u0644\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631\",\"egypt\":\"\\u0645\\u0635\\u0631\",\"el_salvador\":\"\\u0627\\u0644\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631\",\"equatorial_guinea\":\"\\u063a\\u064a\\u0646\\u064a\\u0627 \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0627\\u0626\\u064a\\u0629\",\"eritrea\":\"\\u0625\\u0631\\u064a\\u062a\\u0631\\u064a\\u0627\",\"estonia\":\"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\\u0627\",\"ethiopia\":\"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\\u0627\",\"falkland_islands_malvinas\":\"\\u062c\\u0632\\u0631 \\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f \\u0645\\u0627\\u0644\\u0641\\u064a\\u0646\\u0627\\u0633\",\"faroe_islands\":\"\\u062c\\u0632\\u0631 \\u0635\\u0646\\u0627\\u0639\\u064a\\u0629\",\"fiji\":\"\\u0641\\u064a\\u062c\\u064a\",\"finland\":\"\\u0641\\u0646\\u0644\\u0646\\u062f\\u0627\",\"france\":\"\\u0641\\u0631\\u0646\\u0633\\u0627\",\"france_metropolitan\":\"\\u0641\\u0631\\u0646\\u0633\\u0627 \\u0645\\u062a\\u0631\\u0648\\u0628\\u0648\\u0644\\u064a\\u062a\\u0627\\u0646\",\"french_guiana\":\"\\u063a\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\",\"french_polynesia\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\",\"french_southern_territories\":\"\\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0644\\u0641\\u0631\\u0646\\u0633\\u0627\",\"gabon\":\"\\u0627\\u0644\\u063a\\u0627\\u0628\\u0648\\u0646\",\"gambia\":\"\\u063a\\u0627\\u0645\\u0628\\u064a\\u0627\",\"georgia\":\"\\u062c\\u0648\\u0631\\u062c\\u064a\\u0627\",\"germany\":\"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0627\",\"ghana\":\"\\u063a\\u0627\\u0646\\u0627\",\"gibraltar\":\"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642\",\"guernsey\":\"\\u063a\\u064a\\u0631\\u0646\\u0633\\u064a\",\"greece\":\"\\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\",\"greenland\":\"\\u0627\\u0644\\u0623\\u0631\\u0636 \\u0627\\u0644\\u062e\\u0636\\u0631\\u0627\\u0621\",\"grenada\":\"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u0627\",\"guadeloupe\":\"\\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628\",\"guam\":\"\\u063a\\u0648\\u0627\\u0645\",\"guatemala\":\"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u0627\",\"guinea\":\"\\u063a\\u064a\\u0646\\u064a\\u0627\",\"guinea_bissau\":\"\\u063a\\u064a\\u0646\\u064a\\u0627 \\u0628\\u064a\\u0633\\u0627\\u0648\",\"guyana\":\"\\u063a\\u064a\\u0627\\u0646\\u0627\",\"haiti\":\"\\u0647\\u0627\\u064a\\u062a\\u064a\",\"heard_and_mc_donald_islands\":\"\\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643 \\u062f\\u0648\\u0646\\u0627\\u0644\\u062f\",\"honduras\":\"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633\",\"hong_kong\":\"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a\",\"hungary\":\"\\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\",\"iceland\":\"\\u0623\\u064a\\u0633\\u0644\\u0646\\u062f\\u0627\",\"india\":\"\\u0627\\u0644\\u0647\\u0646\\u062f\",\"isle_of_man\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0622\\u064a\\u0644 \\u0623\\u0648\\u0641 \\u0645\\u0627\\u0646\",\"indonesia\":\"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u0627\",\"iran_islamic_republic_of\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0625\\u0633\\u0644\\u0627\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\\u0629\",\"iraq\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"ireland\":\"\\u0623\\u064a\\u0631\\u0644\\u0646\\u062f\\u0627\",\"israel\":\"\\u0625\\u0633\\u0631\\u0627\\u0626\\u064a\\u0644\",\"italy\":\"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0627\",\"ivory_coast\":\"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c\",\"jersey\":\"\\u062c\\u064a\\u0631\\u0633\\u064a\",\"jamaica\":\"\\u062c\\u0627\\u0645\\u0627\\u064a\\u0643\\u0627\",\"japan\":\"\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\",\"jordan\":\"\\u0627\\u0644\\u0623\\u0631\\u062f\\u0646\",\"kazakhstan\":\"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646\",\"kenya\":\"\\u0643\\u064a\\u0646\\u064a\\u0627\",\"kiribati\":\"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u0633\",\"korea_democratic_peoples_republic_of\":\"\\u0643\\u0648\\u0631\\u064a\\u0627\\u060c \\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062f\\u064a\\u0645\\u0642\\u0631\\u0627\\u0637\\u064a\\u0629\",\"korea_republic_of\":\"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0643\\u0648\\u0631\\u064a\\u0627\",\"kosovo\":\"\\u0643\\u0648\\u0633\\u0648\\u0641\\u0648\",\"kuwait\":\"\\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\",\"kyrgyzstan\":\"\\u0642\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646\",\"lao_peoples_democratic_republic\":\"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0644\\u0627\\u0648 \\u0627\\u0644\\u062f\\u064a\\u0645\\u0642\\u0631\\u0627\\u0637\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629\",\"latvia\":\"\\u0644\\u0627\\u062a\\u0641\\u064a\\u0627\",\"lebanon\":\"\\u0644\\u0628\\u0646\\u0627\\u0646\",\"lesotho\":\"\\u0644\\u064a\\u0633\\u0648\\u062a\\u0648\",\"liberia\":\"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\\u0627\",\"libyan_arab_jamahiriya\":\"\\u0627\\u0644\\u062c\\u0645\\u0627\\u0647\\u064a\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0644\\u064a\\u0628\\u064a\\u0629\",\"liechtenstein\":\"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u0627\\u064a\\u0646\",\"lithuania\":\"\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0627\",\"luxembourg\":\"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a\",\"macau\":\"\\u0645\\u0627\\u0643\\u0627\\u0648\",\"macedonia\":\"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\\u0627\",\"madagascar\":\"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631\",\"malawi\":\"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a\",\"malaysia\":\"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\\u0627\",\"maldives\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641\",\"mali\":\"\\u0645\\u0627\\u0644\\u064a\",\"malta\":\"\\u0645\\u0627\\u0644\\u0637\\u0627\",\"marshall_islands\":\"\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0631\\u0634\\u0627\\u0644\",\"martinique\":\"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643\",\"mauritania\":\"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u0627\",\"mauritius\":\"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633\",\"mayotte\":\"\\u0645\\u0627\\u064a\\u0648\\u062a\",\"mexico\":\"\\u0627\\u0644\\u0645\\u0643\\u0633\\u064a\\u0643\",\"micronesia_federated_states_of\":\"\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0645\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u0627 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629\",\"moldova_republic_of\":\"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0645\\u0648\\u0644\\u062f\\u0648\\u0641\\u0627\",\"monaco\":\"\\u0645\\u0648\\u0646\\u0627\\u0643\\u0648\",\"mongolia\":\"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\\u0627\",\"montenegro\":\"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\",\"montserrat\":\"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a\",\"morocco\":\"\\u0627\\u0644\\u0645\\u063a\\u0631\\u0628\",\"mozambique\":\"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642\",\"myanmar\":\"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631\",\"namibia\":\"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\\u0627\",\"nauru\":\"\\u0646\\u0627\\u0648\\u0631\\u0648\",\"nepal\":\"\\u0646\\u064a\\u0628\\u0627\\u0644\",\"netherlands\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u0627\",\"netherlands_antilles\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0623\\u0646\\u062a\\u064a\\u0644 \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629\",\"new_caledonia\":\"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629\",\"new_zealand\":\"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0627\\u0646\\u062f\\u0627\",\"nicaragua\":\"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u063a\\u0648\\u0627\",\"niger\":\"\\u0627\\u0644\\u0646\\u064a\\u062c\\u0631\",\"nigeria\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\\u0627\",\"niue\":\"\\u0646\\u064a\\u0648\\u064a\",\"norfolk_island\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u0643\",\"northern_mariana_islands\":\"\\u062c\\u0632\\u0631 \\u0645\\u0631\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0634\\u0645\\u0627\\u0644\\u064a\\u0629\",\"norway\":\"\\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\",\"oman\":\"\\u0633\\u0644\\u0637\\u0646\\u0629 \\u0639\\u0645\\u0627\\u0646\",\"pakistan\":\"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\",\"palau\":\"\\u0628\\u0627\\u0644\\u0627\\u0648\",\"palestine\":\"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\",\"panama\":\"\\u0628\\u0646\\u0627\\u0645\\u0627\",\"papua_new_guinea\":\"\\u0628\\u0627\\u0628\\u0648\\u0627 \\u063a\\u064a\\u0646\\u064a\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629\",\"paraguay\":\"\\u0628\\u0627\\u0631\\u0627\\u063a\\u0648\\u0627\\u064a\",\"peru\":\"\\u0628\\u064a\\u0631\\u0648\",\"philippines\":\"\\u0627\\u0644\\u0641\\u0644\\u0628\\u064a\\u0646\",\"pitcairn\":\"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646\",\"poland\":\"\\u0628\\u0648\\u0644\\u0646\\u062f\\u0627\",\"portugal\":\"\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\",\"puerto_rico\":\"\\u0628\\u0648\\u0631\\u062a\\u0648\\u0631\\u064a\\u0643\\u0648\",\"qatar\":\"\\u062f\\u0648\\u0644\\u0629 \\u0642\\u0637\\u0631\",\"reunion\":\"\\u062c\\u0645\\u0639 \\u0634\\u0645\\u0644\",\"romania\":\"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0627\",\"russian_federation\":\"\\u0627\\u0644\\u0627\\u062a\\u062d\\u0627\\u062f \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\",\"rwanda\":\"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627\",\"saint_kitts_and_nevis\":\"\\u0633\\u0627\\u0646\\u062a \\u0643\\u064a\\u062a\\u0633 \\u0648\\u0646\\u064a\\u0641\\u064a\\u0633\",\"saint_lucia\":\"\\u0627\\u0644\\u0642\\u062f\\u064a\\u0633\\u0629 \\u0644\\u0648\\u0633\\u064a\\u0627\",\"saint_vincent_and_the_grenadines\":\"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646\",\"samoa\":\"\\u0633\\u0627\\u0645\\u0648\\u0627\",\"san_marino\":\"\\u0633\\u0627\\u0646 \\u0645\\u0627\\u0631\\u064a\\u0646\\u0648\",\"sao_tome_and_principe\":\"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a\",\"senegal\":\"\\u0627\\u0644\\u0633\\u0646\\u063a\\u0627\\u0644\",\"serbia\":\"\\u0635\\u0631\\u0628\\u064a\\u0627\",\"seychelles\":\"\\u0633\\u064a\\u0634\\u064a\\u0644\",\"sierra_leone\":\"\\u0633\\u064a\\u0631\\u0627 \\u0644\\u064a\\u0648\\u0646\",\"singapore\":\"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u0629\",\"slovakia\":\"\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0627\",\"slovenia\":\"\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0627\",\"solomon_islands\":\"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646\",\"somalia\":\"\\u0627\\u0644\\u0635\\u0648\\u0645\\u0627\\u0644\",\"south_africa\":\"\\u062c\\u0646\\u0648\\u0628 \\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\\u0627\",\"south_georgia_south_sandwich_islands\":\"\\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u060c \\u062c\\u0648\\u0631\\u062c\\u064a\\u0627\\u060c \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u060c \\u0633\\u0627\\u0646\\u062f\\u0648\\u064a\\u062a\\u0634\\u060c\",\"spain\":\"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0627\",\"sri_lanka\":\"\\u0633\\u064a\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u0627\",\"st_helena\":\"\\u0633\\u062a \\u0647\\u064a\\u0644\\u064a\\u0646\\u0627\",\"st_pierre_and_miquelon\":\"\\u0633\\u0627\\u0646\\u062a \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646\",\"sudan\":\"\\u0633\\u0648\\u062f\\u0627\\u0646\",\"suriname\":\"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645\",\"svalbard_and_jan_mayen_islands\":\"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u062c\\u0627\\u0646 \\u0645\\u0627\\u064a\\u064a\\u0646 \\u0627\\u0644\\u062c\\u0632\\u0631\",\"swaziland\":\"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0627\\u0646\\u062f\",\"sweden\":\"\\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\",\"switzerland\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u0627\",\"syrian_arab_republic\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0648\\u0631\\u064a\\u0629\",\"taiwan\":\"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646\",\"tajikistan\":\"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646\",\"tanzania_united_republic_of\":\"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u0627 \\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u0627 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629\",\"thailand\":\"\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\",\"togo\":\"\\u0644\\u064a\\u0630\\u0647\\u0628\",\"tokelau\":\"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648\",\"tonga\":\"\\u062a\\u0648\\u0646\\u063a\\u0627\",\"trinidad_and_tobago\":\"\\u062a\\u0631\\u064a\\u0646\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648\",\"tunisia\":\"\\u062a\\u0648\\u0646\\u0633\",\"turkey\":\"\\u062f\\u064a\\u0643 \\u0631\\u0648\\u0645\\u064a\",\"turkmenistan\":\"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\",\"turks_and_caicos_islands\":\"\\u062c\\u0632\\u0631 \\u062a\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633\",\"tuvalu\":\"\\u062a\\u0648\\u0641\\u0627\\u0644\\u0648\",\"uganda\":\"\\u0623\\u0648\\u063a\\u0646\\u062f\\u0627\",\"ukraine\":\"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\\u0627\",\"united_arab_emirates\":\"\\u0627\\u0644\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629\",\"united_kingdom\":\"\\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629\",\"united_states\":\"\\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0627\\u0645\\u0631\\u064a\\u0643\\u0627\\u0646\\u064a\\u0629\",\"united_states_minor_outlying_islands\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0628\\u0639\\u064a\\u062f\\u0629 \\u0627\\u0644\\u0635\\u063a\\u0631\\u0649\",\"uruguay\":\"\\u0623\\u0648\\u0631\\u0648\\u063a\\u0648\\u0627\\u064a\",\"uzbekistan\":\"\\u0623\\u0648\\u0632\\u0628\\u0643\\u0633\\u062a\\u0627\\u0646\",\"vanuatu\":\"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u0648\",\"vatican_city_state\":\"\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646\",\"venezuela\":\"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u0627\",\"vietnam\":\"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\",\"virgin_islands_british\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0639\\u0630\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\\u0629\",\"virgin_islands_us\":\"\\u062c\\u0632\\u0631 \\u0641\\u064a\\u0631\\u062c\\u0646 \\u0644\\u0646\\u0627\",\"wallis_and_futuna_islands\":\"\\u062c\\u0632\\u0631 \\u0648\\u0627\\u0644\\u064a\\u0633 \\u0648\\u0641\\u0648\\u062a\\u0648\\u0646\\u0627\",\"western_sahara\":\"\\u0627\\u0644\\u0635\\u062d\\u0631\\u0627\\u0621 \\u0627\\u0644\\u063a\\u0631\\u0628\\u064a\\u0629\",\"yemen\":\"\\u0627\\u0644\\u064a\\u0645\\u0646\",\"yugoslavia\":\"\\u064a\\u0648\\u063a\\u0648\\u0633\\u0644\\u0627\\u0641\\u064a\\u0627\",\"zaire\":\"\\u0632\\u0627\\u0626\\u064a\\u0631\",\"zambia\":\"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627\",\"zimbabwe\":\"\\u0632\\u064a\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a\",\"afghanistan\":\"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\",\"cart_subtotal\":\"\\u0627\\u0644\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a\",\"order_total\":\"\\u0627\\u0644\\u0635\\u0627\\u0641\\u064a\",\"elect_template\":\"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628\",\"educational_level\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"user_profile\":\"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\",\"roll\":\"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\",\"doj\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u0644\\u062a\\u062d\\u0627\\u0642\",\"father\":\"\\u0627\\u0644\\u0623\\u0628\",\"mother\":\"\\u0627\\u0644\\u0627\\u0645\",\"assign_teachers_to_supervisors\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a\",\"educational_supervisor\":\"\\u0645\\u0634\\u0631\\u0641 \\u062a\\u0631\\u0628\\u0648\\u064a\",\"specify_subjects_to_teachers\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"staff_toic_plan\":\"\\u062e\\u0637\\u0637 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"teacher_students_attendance\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"teachers_timetables\":\"\\u062c\\u062f\\u0648\\u0644 \\u062d\\u0635\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"teacher_students_marks\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0645\\u064a\\u0632\\u064a\\u0646\",\"teacher_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"supervisor_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\",\"assign_teachers\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a\",\"staff_to_supervisor\":\"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\",\"teachers_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"skills\":\"\\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"educational_supervisors\":\"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u0648\\u0646 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a\\u0648\\u0646\",\"assign_teachers_to_supervisor\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a\",\"assign_subjects_to_teachers\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"assign_subject_to_teacher\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0645\\u0639\\u0644\\u0645\",\"staff_topic_plan\":\"\\u062e\\u0637\\u0637 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"lesson_plans_of_teacher\":\"\\u062e\\u0637\\u0637 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"students_attendance_of_teacher\":\"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"teacher_timetable\":\"\\u0627\\u0644\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u0632\\u0645\\u0646\\u064a \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"students_marks\":\"\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"all_teachers\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646\",\"assigned_to_another_supervisor\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u062e\\u0631\",\"all_supervisors\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646\",\"transfer_to_class\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u064a \\u0641\\u0635\\u0644\",\"papers_and_achievements_of_the_student\":\"\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"student_papers_and_achievements\":\"\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"progress_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0627\\u0646\\u062c\\u0627\\u0632\",\"achievements\":\"\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"add_document\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0644\\u0641\",\"document\":\"\\u0645\\u0644\\u0641\",\"supported_files\":\"\\u0627\\u0644\\u0645\\u0644\\u0641\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0629\",\"invalid_file_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\",\"application\":\"\\u0627\\u0644\\u0648\\u0636\\u0639\\u064a\\u0629\",\"add_skills\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\",\"skill\":\"\\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\",\"new\":\"\\u062c\\u062f\\u064a\\u062f\",\"save\":\"\\u062d\\u0641\\u0638\",\"invalid_social_login\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\",\"login_success\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"sign_in_with_facebook\":\"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"sign_in_with_google\":\"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0628\\u0631\\u064a\\u062f \\u062c\\u0648\\u062c\\u0644\",\"sandbox\":\"sandbox\",\"live\":\"Live\",\"student_achievement_file_extensions\":\"\\u0627\\u0644\\u0627\\u0645\\u062a\\u062f\\u0627\\u062f\\u062a \\u0627\\u0644\\u0645\\u0633\\u0645\\u0648\\u062d\\u0629 \\u0641\\u0649 \\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"academic_dues\":\"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"academics_operations\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"all_skills\":\"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\",\"skill_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0629\",\"edit_skills\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\",\"updated\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644\",\"skills_updated_successfully\":\"\\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"saved\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0641\\u0638\",\"skills_saved_successfully\":\"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0628\\u0646\\u062c\\u0627\\u062d\",\"admin_and_student\":\"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"admin_and_staff_and_student\":\"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0648\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"all_academic_dues\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"academic_year_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"dues_title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\",\"dues_value\":\"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\",\"dues_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\",\"student_attendance_of_teacher\":\"\\u062a\\u062d\\u0636\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0644\\u0644\\u0637\\u0644\\u0627\\u0628\",\"excellence_level\":\"\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0645\\u064a\\u0632\",\"excellent_level\":\"\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0645\\u062a\\u0627\\u0632\",\"ordinary_level\":\"\\u0637\\u0627\\u0644\\u0628 \\u0639\\u0627\\u062f\\u064a\",\"school_expenses\":\"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"assign_teacher_to_supervisor\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a\",\"daily_school_schedule\":\"\\u0627\\u0644\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a \\u0644\\u0644\\u062d\\u0635\\u0635\",\"experimental_tests_only\":\"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\",\"language_settings\":\"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0644\\u063a\\u0629\",\"library_management\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629\",\"management_of_educational_content\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"paid_educational_content_only\":\"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\",\"paid_tests_only\":\"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0629\",\"transfer_students\":\"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"student_marks\":\"\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"student_achievements\":\"\\u0645\\u0644\\u0641\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"mandatory\":\"\\u0625\\u062c\\u0628\\u0627\\u0631\\u064a\",\"optional\":\"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\",\"add_academic_dues\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"due_value\":\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629\",\"due_type\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\",\"skills_administration\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\",\"student_information\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"current_semester\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"current_grade\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"current_class\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"the_first\":\"\\u0627\\u0644\\u0623\\u0648\\u0644\",\"recycle_bin\":\"\\u0633\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0644\\u0627\\u062a\",\"asset_status\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0635\\u0648\\u0644\",\"improper_data_file_submitted\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0631\\u0633\\u0644 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\\u0629\",\"deleted_records\":\"\\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u062d\\u0630\\u0648\\u0641\\u0629\",\"deleted_at\":\"\\u0627\\u0644\\u0645\\u062d\\u0630\\u0648\\u0641\\u0629 \\u0641\\u064a\",\"retrieve\":\"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\",\"subjectpreferences\":\"\\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0641\\u0636\\u0644\\u0629\",\"record_retrieved_successfully\":\"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"the_second\":\"\\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\",\"deleted_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"academic_dues_of_academic\":\"\\u0627\\u0644\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"create_rapid_expense\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"add_rapid_expenses\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"add_expenses\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"uniform\":\"\\u0627\\u0644\\u0632\\u064a \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\",\"edit_academic_dues\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"table_name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644\",\"updated_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u0646\\u062c\\u0627\\u062d\",\"this_record_will_be_back_in_system\":\"\\u0633\\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0631\\u0647 \\u0627\\u062e\\u0631\\u064a \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\",\"recover_it\":\"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0639\\u0647\\u0627\",\"recovered\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\",\"your_record_has_been_recovered\":\"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"retrieved_successfully\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"all_expenses\":\"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"school_or_board_annual_examination_last_taken_and_result\":\"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0633\\u0646\\u0648\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0649 \\u062a\\u0645 \\u0627\\u062e\\u0630\\u0647\\u0627 \\u0648\\u0627\\u0644\\u0646\\u062a\\u0627\\u0626\\u062c\",\"skill_deleted_successfully\":\"\\u062a\\u0645 \\u062e\\u0630\\u0641 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0647 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"edit_rapid_expenses\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"edit_expenses\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"session_number\":\"\\u0627\\u0644\\u062d\\u0635\\u0629\",\"course_parent\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"add_new_expenses\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u062c\\u062f\\u064a\\u062f\\u0629\",\"saved_successfully\":\"\\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"parent_purchase\":\"\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0645\\u0646 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631\",\"expenses_of\":\"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\",\"payed\":\"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\",\"remained\":\"\\u0627\\u0644\\u0645\\u062a\\u0628\\u0642\\u064a\",\"expenses\":\"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"and_his_value_is\":\"\\u0648\\u0642\\u064a\\u0645\\u062a\\u0647\",\"your_money\":\"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\",\"logged_users\":\"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"users_records\":\"\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"user_ip\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628\",\"first_term\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u0623\\u0648\\u0644\",\"second_term\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\",\"classes\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0635\\u0644\",\"this_student_did_not_take_exams\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0644\\u0645 \\u064a\\u0623\\u062e\\u0630 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"not_exist\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f\",\"students_marks_of_teacher\":\"\\u062f\\u0631\\u062c\\u0627\\u062a \\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \",\"create_expenses_items\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"all_expenses_items\":\"\\u062c\\u0645\\u064a\\u0639 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"delete_all_records\":\"\\u062d\\u0630\\u0641 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a\",\"user_number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"one\":\"\\u0627\\u0644\\u0627\\u0648\\u0644\",\"two\":\"\\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\",\"you_will_not_be_able_to_recover_this_records\":\"\\u0644\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0642\\u0627\\u062f\\u0631\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a\",\"main_topic\":\"\\u0627\\u0644\\u062f\\u0631\\u0633 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a\",\"sub_topic\":\"\\u0627\\u0644\\u062f\\u0631\\u0633 \\u0627\\u0644\\u0641\\u0631\\u0639\\u064a\",\"outstanding_students_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0645\\u064a\\u0632\\u064a\\u0646\",\"excellence_ratio\":\"\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0645\\u064a\\u0632\",\"this_student_did_not_take_this_exam\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0644\\u0645 \\u064a\\u0623\\u062e\\u0630 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"no_subject_available_for_this_teacher\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0627\\u062f\\u0629 \\u0645\\u062e\\u0635\\u0635\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"for\":\"\\u0644\\u0640\\u0640\\u0640\",\"expense_item\":\"\\u0628\\u0646\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"expenses_items\":\"\\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"edit_expense_item\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"minutes\":\"\\u0627\\u0644\\u062f\\u0642\\u0627\\u0626\\u0642\",\"skills_menu\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\",\"select_all_fields_please\":\"\\u0627\\u062e\\u062a\\u0631 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062d\\u0642\\u0648\\u0644 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643\",\"academic_expenses\":\"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"allocation_of_expenses_to_classrooms\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0644\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\",\"add_expenses_items\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"pay\":\"\\u0633\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a\",\"the_amount_paid\":\"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\",\"remaining_amount\":\"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062a\\u0628\\u0642\\u064a\",\"payed_successfully\":\"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f\",\"mandatory_items\":\"\\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0627\\u0644\\u0632\\u0627\\u0645\\u064a\\u0629\",\"payed_before\":\"\\u062a\\u0645 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644\",\"optional_items\":\"\\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629\",\"deserved_amount\":\"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062d\\u0642\",\"cancelled_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0644\\u063a\\u0627\\u0647\",\"must_paid\":\"\\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u062f\\u0641\\u0639\",\"applicable_categories\":\"\\u0641\\u0626\\u0627\\u062a \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\",\"branches\":\"\\u0627\\u0644\\u0641\\u0631\\u0648\\u0639\",\"branches_list\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0641\\u0631\\u0648\\u0639\",\"create_branch\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0641\\u0631\\u0639\",\"update_branch\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0641\\u0631\\u0639\",\"please_update_master_setup_details_before_creating_users\":\"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0642\\u0628\\u0644 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646\",\"discount_is\":\"\\u0627\\u0644\\u062e\\u0635\\u0645 \\u0647\\u0648\",\"and_it_value\":\"\\u0648\\u0642\\u064a\\u0645\\u0629\",\"school_branch\":\"\\u0641\\u0631\\u0639 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"select_branch\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0631\\u0639\",\"fix_database_tables\":\"\\u0625\\u0635\\u0644\\u0627\\u062d \\u062c\\u062f\\u0627\\u0648\\u0644 \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"tables\":\"\\u0627\\u0644\\u062c\\u062f\\u0627\\u0648\\u0644\",\"updated_by_ip\":\"updated_by_ip\",\"created_by_ip\":\"created_by_ip\",\"created_by_user\":\"created_by_user\",\"updated_by_user\":\"updated_by_user\",\"record_status\":\"record_status\",\"branch_id\":\"branch_id\",\"fix_all\":\"\\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0643\\u0644\",\"tables_fixed\":\"\\u0627\\u0644\\u062c\\u062f\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0628\\u062a\\u0629\",\"create_question\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0624\\u0627\\u0644\",\"assign_lms_items\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"first_semester\":\"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0623\\u0648\\u0644\",\"been_paid\":\"\\u062a\\u0645 \\u062f\\u0641\\u0639\",\"coupon\":\"\\u0643\\u0648\\u0628\\u0648\\u0646\",\"percent_can_not_exceed\":\"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0645\\u0626\\u0648\\u064a\\u0629 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u062a\\u062a\\u062c\\u0627\\u0648\\u0632\",\"invalid_email\":\"\\u0628\\u0631\\u064a\\u062f \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u062e\\u0627\\u0637\\u0626\",\"download_single_answer_file\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0625\\u062c\\u0627\\u0628\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\",\"download_multi_answer_file\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u062c\\u0627\\u0628\\u0629\",\"download_fill_the_blanks_file\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0645\\u0644\\u0623 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a\",\"upload_single_answer_file\":\"\\u0631\\u0641\\u0639 \\u0645\\u0644\\u0641 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0625\\u062c\\u0627\\u0628\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\",\"upload_multi_answer_file\":\"\\u0631\\u0641\\u0639 \\u0645\\u0644\\u0641 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u062c\\u0627\\u0628\\u0629\",\"upload_fill_the_blanks_file\":\"\\u0631\\u0641\\u0639 \\u0645\\u0644\\u0641 \\u0627\\u0645\\u0644\\u0623 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a\",\"right_option\":\"\\u0627\\u0644\\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0623\\u064a\\u0645\\u0646\",\"answer\":\"\\u0625\\u062c\\u0627\\u0628\\u0629\",\"submitted\":\"\\u0645\\u0627 \\u062a\\u0645\\u062a \\u0627\\u062c\\u0627\\u0628\\u062a\\u0647\",\"your_answer\":\"\\u0627\\u062c\\u0627\\u0628\\u062a\\u0643\",\"select_category\":\"\\u0627\\u062e\\u062a\\u0631 \\u0645\\u0646 \\u0627\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\",\"branches_management\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0631\\u0648\\u0639\",\"current_academic_branch\":\"\\u0627\\u0644\\u0641\\u0631\\u0639 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"current_category\":\"\\u0627\\u0644\\u0642\\u0633\\u0645 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\",\"attendance_and_departure\":\"\\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0648\\u0627\\u0644\\u0625\\u0646\\u0635\\u0631\\u0627\\u0641\",\"automatic_call\":\"\\u0627\\u0644\\u0646\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0622\\u0644\\u064a\",\"voice_records_for_students\":\"\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a \\u0644\\u0625\\u0633\\u0645\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"attendance_and_departure_report\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0648\\u0627\\u0644\\u0625\\u0646\\u0635\\u0631\\u0627\\u0641\",\"voice_records_for_student\":\"\\u0633\\u062c\\u0644\\u0627\\u062a \\u0635\\u0648\\u062a\\u064a\\u0629 \\u0644\\u0644\\u0637\\u0644\\u0627\\u0628\",\"academic_branch\":\"\\u0627\\u0644\\u0641\\u0631\\u0639 \\u0627\\u0644\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\",\"print_and_export\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u062a\\u0635\\u062f\\u064a\\u0631\",\"import_teacher_data\":\"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"added_to_bookmarks\":\"\\u0623\\u0636\\u064a\\u0641\\u062a \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0625\\u0634\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629\",\"secondary_parents\":\"\\u0623\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0645\\u0648\\u0631\\u0662\",\"secondary_parent\":\"\\u0648\\u0644\\u064a \\u0627\\u0644\\u0623\\u0645\\u0631\\u0662\",\"assign_students_to_secondary_parent\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0644\\u0648\\u0644\\u064a \\u0627\\u0644\\u0623\\u0645\\u0631\\u0662\",\"student_to_secondary_parent\":\"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0644\\u0648\\u0644\\u064a \\u0627\\u0644\\u0623\\u0645\\u0631\\u0662\",\"allocated_students\":\"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062e\\u0635\\u0635\\u064a\\u0646 \\u0644\\u0648\\u0644\\u064a \\u0627\\u0644\\u0623\\u0645\\u0631\",\"all_students\":\"\\u0643\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"student_name\":\"\\u0623\\u0633\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"create_new_exam_series\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0633\\u0644\\u0633\\u0644\\u0629 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\",\"all_here\":\"\\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0643\\u0644\",\"all_absent\":\"\\u063a\\u064a\\u0627\\u0628 \\u0627\\u0644\\u0643\\u0644\",\"all_left\":\"\\u0627\\u0633\\u062a\\u0626\\u0630\\u0627\\u0646 \\u0627\\u0644\\u0643\\u0644\",\"student_record\":\"\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a \\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"new_name_record\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062c\\u062f\\u064a\\u062f\",\"play\":\"\\u062a\\u0634\\u063a\\u064a\\u0644\",\"pause\":\"\\u0627\\u064a\\u0642\\u0627\\u0641 \\u0645\\u0624\\u0642\\u062a\",\"record\":\"\\u062a\\u0633\\u062c\\u064a\\u0644\",\"stop\":\"\\u0625\\u064a\\u0642\\u0627\\u0641\",\"attendance_sheet_for\":\"\\u0648\\u0631\\u0642\\u0629 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0644\",\"attendance_status\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631\",\"activities\":\"\\u0627\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629\",\"health_status\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0635\\u062d\\u064a\\u0629\",\"exit\":\"\\u062e\\u0631\\u0648\\u062c\",\"the_automatic_call_request_was_successfully_sent\":\"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0646\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0644\\u064a .. \\u0648\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u0646\\u062f\\u0627\\u0621\",\"there_is_an_automatic_call_request_and_the_student_is_being_called\":\"\\u064a\\u0648\\u062c\\u062f \\u0637\\u0644\\u0628 \\u0646\\u062f\\u0627\\u0621 \\u0627\\u0644\\u064a \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644\\u0647 \\u0645\\u0633\\u0628\\u0642\\u0627\",\"the_student_is_out_of_school_and_can_not_call_again\":\"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u062e\\u0631\\u0648\\u062c \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"the_student_is_absent_today\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u063a\\u0627\\u0626\\u0628 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"the_student_is_left_today\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0633\\u062a\\u0623\\u0630\\u0646 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"automatic_call_requests\":\"\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0646\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0644\\u064a\",\"request_date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0637\\u0644\\u0628\",\"leave_time\":\"\\u0648\\u0642\\u062a \\u062e\\u0631\\u0648\\u062c \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"automatic_call_times\":\"\\u0639\\u062f\\u062f \\u0645\\u0631\\u0627\\u062a \\u0627\\u0644\\u0646\\u062f\\u0627\\u0621 \\u0639\\u0644\\u064a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\",\"remove_from_bookmarks\":\"Remove From Bookmarks\",\"student_attendance_record_is_not_updated\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u0630 \\u0627\\u0644\\u063a\\u064a\\u0627\\u0628 \\u0644\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0641\\u0649 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"homeworks\":\"\\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\\u0627\\u062a\",\"homework\":\"\\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\",\"add_homework\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0648\\u0627\\u062c\\u0628\",\"home_work\":\"\\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\",\"edit_homework\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0648\\u0627\\u062c\\u0628\",\"starting_date\":\"\\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e\",\"finishing_date\":\"\\u0627\\u0644\\u0649 \\u062a\\u0627\\u0631\\u064a\\u062e\",\"attendance_report_and_departure_from_the_period\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0648\\u0627\\u0644\\u063a\\u064a\\u0627\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u062a\\u0631\\u0629\",\"corresponding\":\"\\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\",\"exam_entry_options\":\"\\u0639\\u062f\\u062f \\u0645\\u0631\\u0627\\u062a \\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\",\"once_only\":\"\\u0645\\u0631\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \",\"more_than_once\":\"\\u0645\\u0631\\u0627\\u062a \\u0645\\u062a\\u0639\\u062f\\u062f\\u0629\",\"select_topic\":\"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u062f\\u0631\\u0633\",\"subject_id\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629\",\"bookmark_already_available\":\"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0641\\u0639\\u0644 \",\"student_guide\":\"\\u0627\\u0644\\u0645\\u0631\\u0634\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\\u064a\",\"sorry_you_have_taken_this_exam_you_cant_enter_again\":\"\\u0639\\u0630\\u0631\\u0627 \\u0644\\u0642\\u062f \\u062a\\u0645 \\u062f\\u062e\\u0648\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0645\\u0646 \\u0642\\u0628\\u0644, \\u0648\\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0639\\u0627\\u062f\\u0629 \\u062f\\u062e\\u0648\\u0644\\u0629\",\"report_of_quiz_results\":\"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0646\\u062a\\u0627\\u0626\\u062c \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"show_students\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628\",\"last_update\":\"\\u0627\\u062e\\u0631 \\u062a\\u062d\\u062f\\u064a\\u062b\",\"download\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0641\",\"replay\":\"\\u0627\\u0644\\u0631\\u062f\\u0648\\u062f\",\"replay_added_successfully\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0631\\u062f \\u0628\\u0646\\u062c\\u0627\\u062d\",\"delete_replay\":\"\\u062d\\u0630\\u0641 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\",\"search_in_inbox\":\"\\u0627\\u0644\\u0628\\u062d\\u062b \\u0641\\u0649 \\u0635\\u0646\\u062f\\u0648\\u0642 \\u0627\\u0644\\u0648\\u0627\\u0631\\u062f\",\"files_uploaded\":\"\\u062a\\u0645 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"return_to_inbox\":\"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0627\\u0644\\u064a \\u0635\\u0646\\u062f\\u0648\\u0642 \\u0627\\u0644\\u0648\\u0627\\u0631\\u062f\",\"forth_period\":\"Forth Period\",\"first_period\":\"First Period\",\"invalid_dates\":\"Invalid Dates\",\"seventh_period\":\"Seventh Period\",\"fifth_period\":\"Fifth Period\",\"sixth_period\":\"Sixth Period\",\"third_period\":\"Third Period\"}', '2017-08-12 00:27:26', '2018-11-30 07:06:32', '51.36.209.68', NULL, NULL, 7566, 2, 'languages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lessionplans`
--

CREATE TABLE `lessionplans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_subject_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `is_completed` tinyint(4) NOT NULL DEFAULT '0',
  `completed_on` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lessionplans',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessionplans`
--

INSERT INTO `lessionplans` (`id`, `course_subject_id`, `topic_id`, `is_completed`, `completed_on`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(46, 1021, 119, 1, '2018-08-29', '2018-08-28 22:17:15', '2018-08-28 22:17:15', NULL, '::1', 1834, NULL, 1, 'lessionplans', 1),
(47, 1019, 116, 1, '2018-11-12', '2018-11-12 09:06:30', '2018-11-12 09:06:32', '37.124.116.227', '37.124.116.227', 1811, 1811, 2, 'lessionplans', 1),
(48, 1019, 118, 1, '2018-11-12', '2018-11-12 09:06:31', '2018-11-12 09:06:33', '37.124.116.227', '37.124.116.227', 1811, 1811, 2, 'lessionplans', 1);

-- --------------------------------------------------------

--
-- Table structure for table `libraryassetinstances`
--

CREATE TABLE `libraryassetinstances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library_prefix` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `series_prefix` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(50) NOT NULL,
  `library_master_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('available','issued','damaged','lost') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'available',
  `asset_type` enum('reference','staff','general') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'general',
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libraryassetinstances',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libraryassettypes`
--

CREATE TABLE `libraryassettypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_eligible_for_fine` tinyint(4) NOT NULL DEFAULT '0',
  `fine_per_day` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_having_max_fine_limit` tinyint(4) NOT NULL DEFAULT '0',
  `maximum_fine_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maximum_issuable` int(50) NOT NULL DEFAULT '2',
  `maximum_days_to_return` int(50) NOT NULL DEFAULT '7',
  `maximum_advanced_reservations` int(50) NOT NULL DEFAULT '10',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libraryassettypes',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `libraryassettypes`
--

INSERT INTO `libraryassettypes` (`id`, `asset_type`, `slug`, `is_eligible_for_fine`, `fine_per_day`, `is_having_max_fine_limit`, `maximum_fine_amount`, `maximum_issuable`, `maximum_days_to_return`, `maximum_advanced_reservations`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'CD', 'cd', 0, '0.00', 0, '0.00', 1, 1, 0, '', 1790, '2017-12-13 23:20:24', '2017-12-13 23:20:24', NULL, NULL, NULL, NULL, 1, 'libraryassettypes', 1),
(3, 'كتب جديدة', 'ktb-jdyd889', 0, '0.00', 0, '0.00', 1, 1, 0, 'سشي', 1790, '2018-03-27 11:03:26', '2018-03-27 11:03:26', NULL, '51.36.126.123', 1790, NULL, 1, 'libraryassettypes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `libraryissues`
--

CREATE TABLE `libraryissues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `master_asset_id` bigint(20) UNSIGNED NOT NULL,
  `library_instance_id` bigint(20) UNSIGNED NOT NULL,
  `library_asset_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `issued_on` datetime NOT NULL,
  `due_date` date NOT NULL,
  `issue_type` enum('issue','renewal','return','lost') COLLATE utf8_unicode_ci NOT NULL,
  `is_late_returned` tinyint(4) NOT NULL DEFAULT '0',
  `days_late` int(11) NOT NULL,
  `total_file` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `is_paid` tinyint(4) NOT NULL DEFAULT '0',
  `paid_datetime` datetime DEFAULT NULL,
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `return_on` datetime DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libraryissues',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `librarymasters`
--

CREATE TABLE `librarymasters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asset_belongs_to_subject` tinyint(4) NOT NULL DEFAULT '0',
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_price` decimal(10,2) NOT NULL,
  `chargible_price_if_lost` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `total_assets_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_assets_available` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_assets_issued` int(50) UNSIGNED NOT NULL DEFAULT '0',
  `total_assets_damaged` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_assets_lost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `other` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'librarymasters',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `librarymasters`
--

INSERT INTO `librarymasters` (`id`, `asset_type_id`, `title`, `slug`, `asset_belongs_to_subject`, `subject_id`, `author_id`, `publisher_id`, `isbn`, `edition`, `actual_price`, `chargible_price_if_lost`, `total_assets_count`, `total_assets_available`, `total_assets_issued`, `total_assets_damaged`, `total_assets_lost`, `image`, `description`, `other`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 1, 'التعليمات', 'altaalymat611', 0, 0, 1, 1, '12312312', '123123123', '200.00', '200.00', 0, 0, 0, 0, 0, '', '', '', 1790, '2018-02-22 07:23:17', '2018-03-26 06:36:01', NULL, '51.39.70.14', 1790, NULL, 2, 'librarymasters', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmscategories`
--

CREATE TABLE `lmscategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmscategories',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmscategories`
--

INSERT INTO `lmscategories` (`id`, `category`, `slug`, `course_id`, `image`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(7, 'مواد الصف الاول الابتدائي', 'moad-alsf-alaol-alabtdaey819-da90309682d055fb9c3ba2a1d8bbe159809aed66', 17, '', '', 1790, '2018-04-12 07:26:48', '2018-10-29 03:25:04', NULL, '51.36.108.22', 1790, NULL, 3, 'lmscategories', 1),
(8, 'الدورات التثقيفية', 'aldorat-altthkyfy1030-2852ac10c3b0ec16062b5a27a9e8a7194a9b7b72', 17, '8-catimage.png', 'شرح تجريبي', 1790, '2018-04-19 15:23:30', '2018-10-29 03:25:15', NULL, '82.147.193.156', 1790, NULL, 3, 'lmscategories', 1),
(10, 'الحاسب الآلي ', 'alhasb-alaaly1502-1fed502a6ec336cf2e6b0f3f4a3196113abf9ce0', 22, '10-catimage.png', '', 1811, '2018-08-08 17:19:41', '2018-10-29 03:25:21', NULL, '86.51.184.42', 1811, NULL, 3, 'lmscategories', 1),
(11, 'test section', 'test-section2875-01e9418a5f7fc99a2cd766b83d4015699170fecc', 22, '11-catimage.png', '', 2235, '2018-08-12 14:52:03', '2018-08-12 14:52:03', NULL, '89.237.145.114', 2235, NULL, 1, 'lmscategories', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lmscontents`
--

CREATE TABLE `lmscontents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `sem_id` int(11) NOT NULL DEFAULT '1',
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL DEFAULT '17',
  `topic_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `content_type` enum('file','video','audio','url','video_url','audio_url','iframe') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'file',
  `is_url` tinyint(1) NOT NULL DEFAULT '0',
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmscontents',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmscontents`
--

INSERT INTO `lmscontents` (`id`, `title`, `slug`, `image`, `academic_id`, `sem_id`, `subject_id`, `course_id`, `topic_id`, `content_type`, `is_url`, `file_path`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(11, 'تعظيم القرآن الكريم', 'taathym-alkraan-alkrym2306-7363f80388fc908b7ee2f0eb943355940dad87c7', '', 1, 1, 34, 17, 48, 'url', 0, 'https://ien.edu.sa/#/lesson/428', '<ul>\r\n	<li>يتوضأ قبل قراءة القرآن الكريم.</li>\r\n	<li>يستعيذ بالله من الشيطان الرجيم عند قراءة القرآن الكريم.</li>\r\n	<li>ينطق البسملة عندما يقرأ من أول السورة.</li>\r\n	<li>ينصت لقراءة القرآن الكريم.</li>\r\n	<li>يطبق الآداب أثناء تلاوة القرآن الكريم.</li>\r\n	<li>يضع المصحف في المكان اللائق به.</li>\r\n</ul>\r\n', 1790, '2018-04-12 09:49:55', '2018-04-14 07:16:00', '51.39.97.99', '51.36.108.22', 1790, 1790, 2, 'lmscontents', 1),
(12, 'من سيرة نبينا محمد صلى الله عليه وسلم صدقه, أمانته, شجاعته', 'mn-syr-nbyna-mhmd-sl-allh-aalyh-oslm-sdkh-amanth-shjaaath2329-ae2f7909b635643f1c149bbfa59815a12b63445a', '', 1, 1, 34, 17, 49, 'url', 0, 'https://ien.edu.sa/#/lesson/429', '<ul>\r\n	<li>يقتدي بالنبي صلى الله عليه وسلم.</li>\r\n	<li>يصلي على النبي حين ورود ذكره الشريف .</li>\r\n	<li>يحب النبي صلى الله عليه وسلم.</li>\r\n	<li>يذكر قصة من سيرة النبي تدل على الصدق أو الأمانة أو الشجاعة.</li>\r\n	<li>يتعرف على اسم والدي النبي صلى الله عليه وسلم.</li>\r\n	<li>يذكر بعض أخلاق النبي صلى الله عليه وسلم.</li>\r\n</ul>\r\n', 1790, '2018-04-14 07:07:11', '2018-04-14 07:18:56', '51.39.97.99', '51.39.97.99', 1790, 1790, 2, 'lmscontents', 1),
(13, 'تصفح مدخل الوحدة الأولى ', 'tsfh-mdkhl-alohd-alaol2827-d9ed187ec54bd7b2faeea065bbc30553535e0af7', '', 1, 1, 36, 17, 61, 'url', 0, 'https://ien.edu.sa//#/lesson/13959', '', 1790, '2018-04-17 07:02:02', '2018-04-17 07:02:02', NULL, '51.39.72.93', 1790, NULL, 1, 'lmscontents', 1),
(14, 'الكاميرة الطائرة داخل المسجد النبوي', 'alkamyr-altaer-dakhl-almsjd-alnboy2718-a8e911108ef3604acfd24e0f4e4504031f597bce', '118503-file-10027.png', 1, 1, 34, 17, 48, 'iframe', 0, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YjTFPK3YMD8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', '<p>هذا شرح للمحتوي التعليمي</p>\r\n', 1790, '2018-04-19 18:26:53', '2018-04-19 18:26:53', NULL, '82.147.193.156', 1790, NULL, 1, 'lmscontents', 1),
(15, 'درس عن ملحقات الحاسب', 'drs-aan-mlhkat-alhasb2792-56dfff7e295dcd633cab08f8186eae33ebe94e30', '', 1, 1, 58, 22, 118, 'video', 0, '58299-file-89133.MOV', '<p>اطلع لفهم ملحا</p>\r\n\r\n<p>ملحقات الحاسب</p>\r\n', 1811, '2018-08-08 20:23:09', '2018-08-08 20:23:09', NULL, '89.237.145.114', 1811, NULL, 1, 'lmscontents', 1),
(16, 'حقيبة تدريبية لتدريب المعلمين', 'hkyb-tdryby-ltdryb-almaalmyn2396-105b721e8f8c930cf91489ecd3079e031bc22256', '85834-file-127483.jpg', 1, 1, 58, 22, 118, 'iframe', 0, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-sjVD8oBBaw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', '<p>ادخال على الرابط السابقة لمشاهدة فيديو عن ملحقات الحاسب الآلي</p>\r\n', 1811, '2018-08-09 07:56:41', '2018-08-12 08:02:44', '37.124.142.244', '37.124.118.74', 1790, 1811, 2, 'lmscontents', 1),
(17, 'test section test 1', 'test-section-test-12554-80c5fcb76c0ea8baffa67e872baa9653e613859a', '', 1, 1, 58, 22, 118, 'file', 0, '17547-file-7280.docx', '<p>details of test section test 1</p>\r\n', 2235, '2018-08-12 17:56:45', '2018-08-12 17:56:45', NULL, '86.51.184.42', 2235, NULL, 1, 'lmscontents', 2),
(18, 'test section1  test 2', 'test-section1-test-21201-82c0134f80f74d9ce5a138b3851667fa31062365', '175538-file-80575.png', 1, 1, 58, 22, 117, 'file', 0, '69085-file-183198.docx', '', 2235, '2018-08-12 18:09:42', '2018-08-12 18:09:42', NULL, '86.51.184.42', 2235, NULL, 1, 'lmscontents', 2),
(19, 'لغة عربية', 'lgh-aarby1132-2f8d0aa0fe43e3335dbc6a137ca86d236339a55b', '', 1, 1, 58, 22, 118, 'file', 0, '25395-file-196927.jpeg', '', 1790, '2018-08-12 20:17:20', '2018-08-12 20:17:20', NULL, '89.237.145.114', 1790, NULL, 1, 'lmscontents', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmsseries`
--

CREATE TABLE `lmsseries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_paid` tinyint(4) NOT NULL DEFAULT '0',
  `cost` decimal(10,2) NOT NULL,
  `validity` int(11) NOT NULL,
  `total_items` int(11) NOT NULL,
  `lms_category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmsseries',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmsseries`
--

INSERT INTO `lmsseries` (`id`, `title`, `slug`, `is_paid`, `cost`, `validity`, `total_items`, `lms_category_id`, `image`, `short_description`, `description`, `start_date`, `end_date`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(5, 'الفقة ', 'alfk2859', 0, '0.00', -1, 2, 7, '', '', '', '2018-04-12', '2018-07-20', 1790, '2018-04-12 07:28:07', '2018-10-29 03:26:39', '51.39.97.99', '51.36.108.22', 1790, 1790, 3, 'lmsseries', 1),
(6, 'اداب الزيارة', 'adab-alzyar1901', 0, '0.00', -1, 3, 8, '6-image.png', '<p>هذا وصف قصير للحقبة الدريبية</p>\r\n', '<p>هذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبيةهذا شرح للحقبة الدريبية</p>\r\n', '2018-04-19', '2018-04-30', 1790, '2018-04-19 15:25:28', '2018-10-29 03:26:46', '82.147.193.156', '82.147.193.156', 1790, 1790, 3, 'lmsseries', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmsseries_data`
--

CREATE TABLE `lmsseries_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lmsseries_id` bigint(20) UNSIGNED NOT NULL,
  `lmscontent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmsseries_data',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages_files`
--

CREATE TABLE `messages_files` (
  `id` int(11) NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(220) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'messenger_messages',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messenger_participants`
--

CREATE TABLE `messenger_participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'messenger_participants',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messenger_threads`
--

CREATE TABLE `messenger_threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'messenger_threads',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'migrations',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `created_at`, `updated_at`, `table_name`, `branch_id`) VALUES
('2014_10_12_000000_create_users_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_10_12_100000_create_password_resets_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_03_064954_create_categories_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_03_065219_create_groups_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_03_065542_create_religions_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_03_124331_entrust_setup_tables', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_04_103906_create_staff_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_04_120754_create_departments_table', 1, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_051533_create_subjects_table', 2, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_055114_create_topics_table', 3, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_060004_create_grades_table', 4, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_061136_create_courses_table', 5, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_061850_create_semisters_table', 5, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_062918_create_academics_table', 6, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_063211_create_academic_courses_table', 7, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_084952_create_course_subject_table', 8, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_08_105532_create_students_table', 9, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_11_063359_create_feecategories_table', 10, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_11_084226_create_feecategories_academiccours_table', 11, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_11_133218_create_feeparticulars_table', 12, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_13_053203_create_feeschedules_table', 13, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_13_054213_create_feeschedules_academiccourses_table', 13, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_15_173616_create_coursesemisters_table', 14, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_21_071054_create_fines_table', 15, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_21_081251_create_feediscounts_table', 16, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_23_054631_create_questionbank_table', 17, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_24_164447_create_libraryassettypes_table', 18, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_25_010303_create_librarymasters_table', 19, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_25_025855_create_authors_table', 20, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_25_025920_create_publishers_table', 20, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_25_142623_create_libraryassetinstances_table', 21, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_28_052506_create_quizcategories_table', 22, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_28_071010_create_quizzes_table', 23, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_06_28_100819_create_questionbank_quizzes_table', 24, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_02_010553_create_libraryissues_table', 24, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_06_014807_create_lmscategories_table', 25, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_06_033653_create_lmscontents_table', 26, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_08_025939_create_subscriptions_table', 27, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_10_28_175635_create_threads_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_10_28_175710_create_messages_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_10_28_180224_create_participants_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_11_03_154831_add_soft_deletes_to_participants_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_11_10_083449_add_nullable_to_last_read_in_participants_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_11_20_131739_alter_last_read_in_participants_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2014_12_04_124531_add_softdeletes_to_threads_table', 28, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_18_091544_create_quizresults_table', 29, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_19_102858_create_emailtemplates_table', 30, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_20_042956_create_activity_log_table', 31, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_27_091354_create_studentpromotions_table', 32, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_07_27_120013_create_studentattendance_table', 33, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_08_02_073034_create_packages_table', 34, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_08_29_043256_create_settings_table', 35, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_02_095405_create_instructions_table', 36, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_05_091459_create_bookmarks_table', 37, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_05_094520_create_examseries_table', 38, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_07_105933_create_examseries_data_table', 39, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_08_101822_create_payments_table', 40, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_13_104746_create_couponcodes_table', 41, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_16_160343_create_lmsseries_table', 42, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_17_052834_create_notifications_table', 43, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_21_105036_create_examtoppers_table', 44, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_09_26_154438_create_feedbacks_table', 45, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_10_13_120753_create_certifacates_table', 46, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_08_154208_create_academicholidays_table', 47, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_11_152540_create_subjectpreferences_table', 48, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_11_170621_create_staffsubjectpreferences_table', 48, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_18_102414_create_lessionplans_table', 49, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_21_150439_create_quizapplicability_table', 50, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_28_155556_create_certificateissues_table', 51, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_11_30_150454_create_timingset_table', 52, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_12_02_053525_create_timingsetdetails_table', 53, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_12_02_144453_create_timingsetmap_table', 54, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2016_12_05_181425_create_timetable_table', 55, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2017_01_02_101856_create_modulehelper_table', 56, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1),
('2017_01_04_181707_create_quizofflinecategories_table', 57, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, 'migrations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modulehelper`
--

CREATE TABLE `modulehelper` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_link_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Help Me',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `steps` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'modulehelper',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modulehelper`
--

INSERT INTO `modulehelper` (`id`, `title`, `slug`, `help_link_text`, `is_enabled`, `settings`, `steps`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'Add Academic', 'add-academic', 'Help', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483355160447\",\"element\":\"#academic_year_title\",\"title\":\"Year Title\",\"content\":\"Academic year title\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1483358089212\",\"element\":\"#dp1\",\"title\":\"Select Start Date\",\"content\":\"Select academic year start date\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1483358142612\",\"element\":\"#dp2\",\"title\":\"Select End Date\",\"content\":\"Select academic year end date\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484648854654\",\"element\":\".helper_step1\",\"title\":\"Show In List\",\"content\":\"Choose To The Year Should Display In,  Academic Year Selection List.\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484644713266\",\"element\":\".helper_step2\",\"title\":\"List\",\"content\":\"Click To See The Academic Years\",\"placement\":\"top\",\"sort_order\":\"5\"}]', '2017-01-02 06:39:45', '2017-01-17 10:28:55', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(2, 'Users List', 'users-list', 'Help Me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483363525771\",\"element\":\".helper_step1\",\"title\":\"Add User\",\"content\":\"Click to add user\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1483363635433\",\"element\":\"#helper_step2\",\"title\":\"View Profile\",\"content\":\"Click on user name to view profile\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1483420107566\",\"element\":\"#helper_step3\",\"title\":\"Do More\",\"content\":\"Click below to do more operations\",\"placement\":\"top\",\"sort_order\":\"3\"}]', '2017-01-02 13:15:47', '2017-01-03 05:29:03', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(3, 'Create User', 'create-user', 'Help Me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483421733646\",\"element\":\"#name\",\"title\":\"Name\",\"content\":\"Enter Name\",\"placement\":\"right\",\"sort_order\":\"1\"},{\"id\":\"1483421780644\",\"element\":\"#username\",\"title\":\"Username\",\"content\":\"Enter Username\",\"placement\":\"right\",\"sort_order\":\"2\"},{\"id\":\"1483421804900\",\"element\":\"#email\",\"title\":\"Email\",\"content\":\"Enter Email\",\"placement\":\"right\",\"sort_order\":\"3\"},{\"id\":\"1483421908275\",\"element\":\"#role_id\",\"title\":\"Role\",\"content\":\"Select the user role\",\"placement\":\"right\",\"sort_order\":\"4\"},{\"id\":\"1483423430397\",\"element\":\"#phone\",\"title\":\"phone\",\"content\":\"enter phone number\",\"placement\":\"right\",\"sort_order\":\"5\"},{\"id\":\"1483423500363\",\"element\":\"#address\",\"title\":\"address\",\"content\":\"enter user address\",\"placement\":\"right\",\"sort_order\":\"6\"},{\"id\":\"1483423542327\",\"element\":\"#image_input\",\"title\":\"image\",\"content\":\"upload the user image\",\"placement\":\"right\",\"sort_order\":\"7\"},{\"id\":\"1483423755786\",\"element\":\".helper_step1\",\"title\":\"all users list\",\"content\":\"to see all users\",\"placement\":\"right\",\"sort_order\":\"8\"}]', '2017-01-03 05:34:43', '2017-01-03 06:09:16', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(4, 'Allocate Certificate', 'allocate-certificate', 'Helpme', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483761469964\",\"element\":\"#certificate_type\",\"title\":\"Certificate Type\",\"content\":\"Select the certificate type\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1483761895748\",\"element\":\"#enter-details\",\"title\":\"Search \",\"content\":\"Search Student\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-07 03:56:50', '2017-01-17 05:51:54', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(5, 'Quiz Category List', 'quiz-category -list', 'Helpme', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483762708819\",\"element\":\".helper_step1\",\"title\":\"Create\",\"content\":\"click to add a category\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1483762822734\",\"element\":\"#helper_step2\",\"title\":\"Do More\",\"content\":\"Click to do more operations\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-07 04:15:29', '2017-01-07 04:23:52', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(6, 'Create Category', 'create-quiz-category', 'Helpme', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483763233670\",\"element\":\"#category\",\"title\":\"Name\",\"content\":\"Enter Category Name\",\"placement\":\"right\",\"sort_order\":\"1\"},{\"id\":\"1483763284879\",\"element\":\"#image_input\",\"title\":\"Image\",\"content\":\"Select the image\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1483763330904\",\"element\":\"#description\",\"title\":\"Description\",\"content\":\"Enter Description\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1483763412227\",\"element\":\".helper_step1\",\"title\":\"List\",\"content\":\"See tha all categories\",\"placement\":\"top\",\"sort_order\":\"4\"}]', '2017-01-07 04:25:22', '2017-01-07 04:30:13', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(7, 'Offline Exams List', 'offlineexams-list', 'Helpme', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1483790037912\",\"element\":\".helper_step1\",\"title\":\"Excel\",\"content\":\"Import excel sheet\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1483790246722\",\"element\":\"#helper_step2\",\"title\":\"Particulars\",\"content\":\"Click to select exam details\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1483790297053\",\"element\":\"#helper_step3\",\"title\":\"Do More\",\"content\":\"Click to do more operations\",\"placement\":\"top\",\"sort_order\":\"3\"}]', '2017-01-07 11:53:18', '2017-01-07 11:58:17', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(8, 'Academic Year', 'academic-year', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484644222708\",\"element\":\".helper_step1\",\"title\":\"Create\",\"content\":\"Add Academic Year\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484644395417\",\"element\":\"#helper_step2\",\"title\":\"View Branches\",\"content\":\"Click on year to view the branches\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484644436772\",\"element\":\"#helper_step3\",\"title\":\"Do More\",\"content\":\"Click to do more operations\",\"placement\":\"top\",\"sort_order\":\"3\"}]', '2017-01-17 09:06:04', '2017-01-17 09:13:58', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(9, 'Courses List', 'courses-list', 'Helpme', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484645288983\",\"element\":\".helper_step1\",\"title\":\"Add Course\",\"content\":\"Click To Add Course\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484645326429\",\"element\":\"#helper_step2\",\"title\":\"Do More\",\"content\":\"Click To Do More Operations\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-17 09:25:53', '2017-01-17 09:30:09', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(10, 'Add Course', 'create-course', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484645608823\",\"element\":\".helper_step1\",\"title\":\"View Courses\",\"content\":\"Click to View Courses.\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484645817343\",\"element\":\"#parent_id\",\"title\":\"Select Parent\",\"content\":\"Click To Select Parent Course. If Parent Course Is Not Avilale Select Option -Parent.\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484646049560\",\"element\":\"#course_title\",\"title\":\"Course Name\",\"content\":\"Click To Enter Course Name.\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484646100461\",\"element\":\"#course_code\",\"title\":\"Course Code.\",\"content\":\"Click To Enter Course Code.\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484646231017\",\"element\":\"#course_duration\",\"title\":\"Course Dueration\",\"content\":\"Click To Select Course Dueration\",\"placement\":\"top\",\"sort_order\":\"5\"},{\"id\":\"1484646285379\",\"element\":\"#grade_system\",\"title\":\"Grade System\",\"content\":\"Click To Select Grade System\",\"placement\":\"top\",\"sort_order\":\"6\"},{\"id\":\"1484646395749\",\"element\":\".helper_step2\",\"title\":\"Choose\",\"content\":\"Choose To Course Having Semister or Not\",\"placement\":\"top\",\"sort_order\":\"7\"},{\"id\":\"1484646608236\",\"element\":\".helper_step3\",\"title\":\"Choose Electives\",\"content\":\"Choose The Course Having Electives Or Not\",\"placement\":\"top\",\"sort_order\":\"8\"},{\"id\":\"1484646662771\",\"element\":\".helper_step4\",\"title\":\"Description\",\"content\":\"Click Enter Some Description About Course\",\"placement\":\"top\",\"sort_order\":\"9\"}]', '2017-01-17 09:31:38', '2017-01-17 09:51:49', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(11, 'Allocate Course To  Academic Year', 'allocate-course-to-academics', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484647503151\",\"element\":\".helper_step1\",\"title\":\"Academic Years\",\"content\":\"Click To View The Academic Years\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484647552794\",\"element\":\".helper_step2\",\"title\":\"Allocate Course\",\"content\":\"Drag The Courses From Course List ,To Academic Year\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-17 09:59:04', '2017-01-17 10:22:51', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(12, 'Subjects List', 'subjects-list', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484649954620\",\"element\":\".helper_step2\",\"title\":\"Create Subject\",\"content\":\"Click To Create A Subject\",\"placement\":\"left\",\"sort_order\":\"2\"},{\"id\":\"1484650003857\",\"element\":\".helper_step1\",\"title\":\"Import\",\"content\":\"Click Import Subjects From Excel Sheet\",\"placement\":\"left\",\"sort_order\":\"1\"},{\"id\":\"1484650035964\",\"element\":\"#helper_step3\",\"title\":\"Do More\",\"content\":\"Click To Do More Operations\",\"placement\":\"left\",\"sort_order\":\"3\"}]', '2017-01-17 10:43:28', '2017-01-17 10:53:43', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(13, 'Create Subject', 'create-subjects', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484650589096\",\"element\":\".helper_step1\",\"title\":\"Subjects List\",\"content\":\"Click To View Subjects List\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484650656766\",\"element\":\"#subject_title\",\"title\":\"Subject Title\",\"content\":\"Click To Enter Subject Title\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484650706217\",\"element\":\"#subject_code\",\"title\":\"Subject Code\",\"content\":\"Click To Enter Subject Code\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484650886605\",\"element\":\".helper_step2\",\"title\":\"Lab Type\",\"content\":\"Choose ,The Subject Is Lab Or Not?\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484650953574\",\"element\":\".helper_step3\",\"title\":\"Elective Type\",\"content\":\"Choose, The Subject Is Elective Or Not?\",\"placement\":\"top\",\"sort_order\":\"5\"},{\"id\":\"1484651013134\",\"element\":\"#internal_marks\",\"title\":\"Internal Marks\",\"content\":\"Click To Enter Internal Marks\",\"placement\":\"top\",\"sort_order\":\"6\"},{\"id\":\"1484651062339\",\"element\":\"#external_marks\",\"title\":\"External Marks\",\"content\":\"Click To Enter External Marks\",\"placement\":\"top\",\"sort_order\":\"7\"},{\"id\":\"1484651125335\",\"element\":\"#maximum_marks\",\"title\":\"Maximum Marks\",\"content\":\"Click To Enter Maximum Marks\",\"placement\":\"top\",\"sort_order\":\"8\"},{\"id\":\"1484651175849\",\"element\":\"#pass_marks\",\"title\":\"Pass Marks\",\"content\":\"Click To Enter Pass Marks\",\"placement\":\"top\",\"sort_order\":\"9\"}]', '2017-01-17 10:54:54', '2017-01-17 11:06:17', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(14, 'Allocate Subject To Course', 'allocate-subject-to-course', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484653645311\",\"element\":\".helper_step1\",\"title\":\"Courses\",\"content\":\"Click To View Courses List\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484653734854\",\"element\":\".helper_step2\",\"title\":\"Allocate Subjects\",\"content\":\"Drag The Subjects From Subject List To Course\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484654108570\",\"element\":\"#sessions\",\"title\":\"Sessions\",\"content\":\"Click To Enter Number of Classes Needed\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484653874173\",\"element\":\".helper_step3\",\"title\":\"Update\",\"content\":\"Click To Update The List\",\"placement\":\"top\",\"sort_order\":\"4\"}]', '2017-01-17 11:43:11', '2017-01-17 11:56:21', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(15, 'Courses List For Staff', 'courses-list-for-staff', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484654588311\",\"element\":\".helper_step1\",\"title\":\"Courses List\",\"content\":\"Add or Edit The Courses\",\"placement\":\"left\",\"sort_order\":\"1\"},{\"id\":\"1484654675870\",\"element\":\"#helper_step2\",\"title\":\"Academic Year\",\"content\":\"Click on Academic Year To Allocate Subject To Staff\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484654708424\",\"element\":\"#helper_step3\",\"title\":\"Do More\",\"content\":\"Click Here To Do More Operations\",\"placement\":\"top\",\"sort_order\":\"3\"}]', '2017-01-17 12:01:42', '2017-01-17 12:05:09', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(16, 'Alloacate Staff To Subjects', 'allocate-staff-to-subjects', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484655088469\",\"element\":\".helper_step2\",\"title\":\"List\",\"content\":\"Click To View Academic Years For Staff Allocation\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484655177303\",\"element\":\".helper_step3\",\"title\":\"Allocate Staff\",\"content\":\"Drag The Staff From Staff List To Course Subjects\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484655222153\",\"element\":\".helper_step4\",\"title\":\"Delete\",\"content\":\"Click To Delete The Allocated Staff\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484655272803\",\"element\":\".helper_step1\",\"title\":\"Update\",\"content\":\"Click To Update The List\",\"placement\":\"top\",\"sort_order\":\"4\"}]', '2017-01-17 12:08:09', '2017-01-17 12:15:06', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(17, 'Topics List', 'topics-list', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484656059663\",\"element\":\".helper_step1\",\"title\":\"Add Topic\",\"content\":\"Create Topic Name\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484656198927\",\"element\":\"#helper_step3\",\"title\":\"Do More\",\"content\":\"Click Here To Do More Options\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484656246383\",\"element\":\".helper_step4\",\"title\":\"Import\",\"content\":\"Click Here To Import Topics List\",\"placement\":\"top\",\"sort_order\":\"3\"}]', '2017-01-17 12:23:04', '2017-01-17 12:31:22', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(18, 'Create Topics', 'create-topics', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484656849524\",\"element\":\".helper_step1\",\"title\":\"Topics\",\"content\":\"Click Here To View The Topics\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484656891857\",\"element\":\"#subject\",\"title\":\"Subject\",\"content\":\"Click Here To Select The Subject\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484656989948\",\"element\":\"#parent\",\"title\":\"Parent Topic\",\"content\":\"Click Here To Select Parent Topic,If Parent Topic Is Not Available Select As Parent.\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484657046000\",\"element\":\"#topic_name\",\"title\":\"Topic Name\",\"content\":\"Click Here To Enter Parent Name\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484657117811\",\"element\":\"#description\",\"title\":\"Description\",\"content\":\"Click To Enter Information About Topic\",\"placement\":\"top\",\"sort_order\":\"5\"}]', '2017-01-17 12:37:33', '2017-01-17 12:46:31', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(19, 'Master SetupDashboard', 'mastersetup-dashboard', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484724527786\",\"element\":\".helper_step1\",\"title\":\"Academic Year\",\"content\":\"Click Here To Do Academic Mangment\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484724571459\",\"element\":\".helper_step2\",\"title\":\"Create Course\",\"content\":\"Click Here To Manage Courses List\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484724607648\",\"element\":\".helper_step3\",\"title\":\"Courses List\",\"content\":\"Click Here To View Courses List\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484724683708\",\"element\":\".helper_step4\",\"title\":\"Subject Master\",\"content\":\"Click Here Create Subjects\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484724732089\",\"element\":\".helper_step5\",\"title\":\"Topics Listq\",\"content\":\"Click Here To Create Topics To Corresponding Subjects\",\"placement\":\"top\",\"sort_order\":\"5\"},{\"id\":\"1484724802692\",\"element\":\".helper_step6\",\"title\":\"Allocate To Course\",\"content\":\"Click Here To Allocate Subject ,To Course and Year\",\"placement\":\"top\",\"sort_order\":\"6\"},{\"id\":\"1484724844202\",\"element\":\".helper_step7\",\"title\":\"Allocate Staff\",\"content\":\"Click Here To Allocate Staff To Course\",\"placement\":\"top\",\"sort_order\":\"7\"}]', '2017-01-18 07:26:47', '2017-01-18 07:34:06', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(20, 'Exams Dashboard', 'exams-dashboard', 'Helpme', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484820063234\",\"element\":\".helper_step1\",\"title\":\"Categories\",\"content\":\"Click here to manage Quiz Categories\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484820113226\",\"element\":\".helper_step2\",\"title\":\"Question Bank\",\"content\":\"Click to Create questions\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484820157271\",\"element\":\".helper_step3\",\"title\":\"Quizzes\",\"content\":\"Click here to manage Quizzes\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484820217628\",\"element\":\".helper_step4\",\"title\":\"Offline Quiz Categories\",\"content\":\"Click to manage offline quiz categories\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484820259113\",\"element\":\".helper_step5\",\"title\":\"Exam Series\",\"content\":\"Click to manage exam series\",\"placement\":\"top\",\"sort_order\":\"5\"},{\"id\":\"1484820308086\",\"element\":\".helper_step6\",\"title\":\"Instructions\",\"content\":\"Click to manage instructions\",\"placement\":\"top\",\"sort_order\":\"6\"}]', '2017-01-19 09:59:35', '2017-01-19 10:05:09', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(21, 'Exams Instructions', 'exams-instructions-list', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484823960618\",\"element\":\".helper_step1\",\"title\":\"Add Instruction\",\"content\":\"Click here to create instruction\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484823992631\",\"element\":\"#helper_step2\",\"title\":\"Do more\",\"content\":\"Click here to do more operations\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-19 11:05:14', '2017-01-19 11:06:48', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(22, 'Add Instruction', 'add-instruction', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '', '2017-01-19 11:08:29', '2017-01-19 11:08:29', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(23, 'Offline Exams Categories', 'list', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484887174961\",\"element\":\".helper_step1\",\"title\":\"Add Category\",\"content\":\"Click to create category\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484887211616\",\"element\":\"#helper_step2\",\"title\":\"Do more\",\"content\":\"Click here to do more operations\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-20 04:38:50', '2017-01-20 04:40:13', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(24, 'Create Offline Exams Categories', 'create-category', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484887761531\",\"element\":\".helper_step1\",\"title\":\"View Categories\",\"content\":\"Click here to view categories\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484887817336\",\"element\":\"#title\",\"title\":\"Title\",\"content\":\"Click to enter Category Name\",\"placement\":\"top\",\"sort_order\":\"2\"}]', '2017-01-20 04:41:40', '2017-01-20 04:50:18', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(25, 'Quizzes List', 'quiz-list', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484891026208\",\"element\":\".helper_step1\",\"title\":\"Add Quiz\",\"content\":\"Click to create Quiz\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484891073119\",\"element\":\".helper_step2\",\"title\":\"Exam Series\",\"content\":\"Click to view exam series\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484891124778\",\"element\":\"#helper_step3\",\"title\":\"Add Questions\",\"content\":\"Click on title to add questions for particular quiz\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484891163681\",\"element\":\"#helper_step4\",\"title\":\"Do more\",\"content\":\"Click here to do more operations\",\"placement\":\"top\",\"sort_order\":\"4\"}]', '2017-01-20 05:41:56', '2017-01-20 05:46:05', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(26, 'SMS Settings', 'sms_settings', 'sms-settings', 0, '{\"sms_driver\":{\"value\":\"nexmo\",\"type\":\"select\",\"extra\":{\"total_options\":\"3\",\"options\":{\"nexmo\":\"NEXMO\",\"plivo\":\"PLIVO\",\"twilio\":\"TWILIO\"}},\"tool_tip\":\"Select SMS driver\"},\"nexmo_key\":{\"value\":\"NEXMO_KEY\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"nexmo\":\"NEXMO\",\"plivo\":\"PLIVO\",\"twilio\":\"TWILIO\"}},\"tool_tip\":\"Nexmo API Key\"},\"nexmo_secret\":{\"value\":\"NEXMO_SECRET\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"nexmo\":\"NEXMO\",\"plivo\":\"PLIVO\",\"twilio\":\"TWILIO\"}},\"tool_tip\":\"Enter Nexmo Secret Key\"},\"plivo_auth_id\":{\"value\":\"PLIVO_AUTH_ID\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"nexmo\":\"NEXMO\",\"plivo\":\"PLIVO\",\"twilio\":\"TWILIO\"}},\"tool_tip\":\"Enter Plivo Auth ID\"},\"plivo_auth_token\":{\"value\":\"PLIVO_AUTH_TOKEN\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"nexmo\":\"NEXMO\",\"plivo\":\"PLIVO\",\"twilio\":\"TWILIO\"}},\"tool_tip\":\"Plivo Auth Token\"},\"twilio_sid\":{\"type\":\"text\",\"value\":\"TWILIO_SID\",\"extra\":\"\",\"tool_tip\":\"Twilio SID\"},\"twilio_token\":{\"type\":\"text\",\"value\":\"TWILIO_TOKEN\",\"extra\":\"\",\"tool_tip\":\"Twilio Token\"}}', 'Contains settings for SMS', '2017-01-25 05:10:09', '2017-01-25 05:30:16', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(27, 'Users Dashboard', 'users-dashborad-list', 'Help me', 1, '{\"keyboard\":1,\"backdrop\":1}', '[{\"id\":\"1484907068366\",\"element\":\".helper_step1\",\"title\":\"Owner\",\"content\":\"Click to view owners list\",\"placement\":\"top\",\"sort_order\":\"1\"},{\"id\":\"1484907100291\",\"element\":\".helper_step2\",\"title\":\"Admin\",\"content\":\"Click to view admins list\",\"placement\":\"top\",\"sort_order\":\"2\"},{\"id\":\"1484907141873\",\"element\":\".helper_step3\",\"title\":\"Students\",\"content\":\"Click to view students list\",\"placement\":\"top\",\"sort_order\":\"3\"},{\"id\":\"1484907161016\",\"element\":\".helper_step4\",\"title\":\"Staff\",\"content\":\"Click to view staff list\",\"placement\":\"top\",\"sort_order\":\"4\"},{\"id\":\"1484907190222\",\"element\":\".helper_step5\",\"title\":\"Librarians\",\"content\":\"Click to view librarians list\",\"placement\":\"top\",\"sort_order\":\"5\"},{\"id\":\"1484907245638\",\"element\":\".helper_step6\",\"title\":\"Assistant Librarian\",\"content\":\"Click to view Assistant Librarians list\",\"placement\":\"top\",\"sort_order\":\"6\"},{\"id\":\"1484907279273\",\"element\":\".helper_step7\",\"title\":\"Parents\",\"content\":\"Click to view parents list\",\"placement\":\"top\",\"sort_order\":\"7\"},{\"id\":\"1484907301656\",\"element\":\".helper_step8\",\"title\":\"All Users\",\"content\":\"Click to view all users list\",\"placement\":\"top\",\"sort_order\":\"8\"},{\"id\":\"1484907331522\",\"element\":\".helper_step9\",\"title\":\"Add  User\",\"content\":\"Click here to Create User\",\"placement\":\"top\",\"sort_order\":\"9\"}]', '2017-01-20 10:08:51', '2017-01-20 10:16:08', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'notifications',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parenttimingsetmap`
--

CREATE TABLE `parenttimingsetmap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET latin1 NOT NULL DEFAULT 'parenttimingsetmap',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'password_resets',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `plan_type` enum('combo','lms','exam','other','academic_expenses') COLLATE utf8_unicode_ci NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_by_parent` tinyint(1) NOT NULL DEFAULT '0',
  `paid_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `coupon_applied` tinyint(4) NOT NULL DEFAULT '0',
  `coupon_id` int(11) NOT NULL,
  `actual_cost` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `after_discount` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other_details` text COLLATE utf8_unicode_ci NOT NULL,
  `transaction_record` text COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_comments` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'payments',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'permissions',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'permission_role',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publishers',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `slug`, `country`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'نجيب محفوط', 'njyb-mhfot2592', 'EG', '', 1790, '2018-02-22 07:21:24', '2018-03-26 06:36:06', NULL, '51.39.70.14', 1790, NULL, 2, 'publishers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE `questionbank` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL DEFAULT '17',
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `sem_id` int(11) NOT NULL DEFAULT '1',
  `question_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_type` enum('radio','checkbox','descriptive','blanks','match','para','video','audio') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'radio',
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `question_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_file_is_url` tinyint(1) NOT NULL DEFAULT '0',
  `total_answers` int(10) UNSIGNED NOT NULL,
  `answers` text COLLATE utf8_unicode_ci NOT NULL,
  `total_correct_answers` int(50) NOT NULL DEFAULT '1',
  `correct_answers` text COLLATE utf8_unicode_ci NOT NULL,
  `marks` int(10) UNSIGNED NOT NULL,
  `time_to_spend` int(11) NOT NULL DEFAULT '1',
  `difficulty_level` enum('easy','medium','hard') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'easy',
  `hint` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8_unicode_ci NOT NULL,
  `explanation_file` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `skill_id` int(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'questionbank',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`id`, `subject_id`, `course_id`, `topic_id`, `academic_id`, `sem_id`, `question_tags`, `slug`, `question_type`, `question`, `question_file`, `question_file_is_url`, `total_answers`, `answers`, `total_correct_answers`, `correct_answers`, `marks`, `time_to_spend`, `difficulty_level`, `hint`, `explanation`, `explanation_file`, `status`, `skill_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(11, 34, 17, 49, 1, 1, '', '2d5083517f43b311fe131e988763aed34cafdff12842', 'blanks', '<p>اسم والد نبينا محمد صلى الله عليه وسلم&nbsp; ... بن عبدالمطلب</p>\r\n', '', 0, 1, '[]', 1, '[{\"answer\":\"\\u0639\\u0628\\u062f\\u0627\\u0644\\u0644\\u0647\"}]', 1, 60, 'easy', '', '', NULL, 1, NULL, '2018-04-12 08:43:06', '2018-04-12 08:43:48', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'questionbank', 1),
(12, 34, 17, 48, 1, 1, '', 'c03f714d08497a0fefbb8e8f69b9398a43668e85482', 'radio', '<p>أحمل المصحف معي في المدرسة وأرسم عليه ما يعجبني</p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u0648\\u0627\\u0628\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\" \\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 60, 'easy', '', '', NULL, 1, NULL, '2018-04-12 08:52:03', '2018-04-12 08:52:03', NULL, '51.36.108.22', 1790, NULL, 1, 'questionbank', 1),
(13, 34, 17, 49, 1, 1, '', '49578bc7941b0f28b57502538f09ef738cbdbaa02224', 'radio', '<p>أقول الحق ولا أخاف إلا الله</p>\r\n', '', 0, 2, '[{\"option_value\":\" \\u0635\\u0648\\u0627\\u0628\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\" \\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:17:09', '2018-04-13 22:17:09', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(14, 34, 17, 49, 1, 1, '', 'f4e1d822fa72647e846e8414e42e9b4e4853d7f9133', 'match', '<p>اسحب العبارة المناسبة من القائمة (ب) تحت ما يناسبها من القائمة (أ)</p>\r\n', '', 0, 3, '{\"left\":{\"title\":\"( \\u0623 )\",\"options\":[\"\\u0623\\u0646\\u0627 \\u0623\\u062d\\u0628 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0644 \\u0635\\u0644\\u0649 \\u0627\\u0644\\u0644\\u0647 \\u0639\\u0644\\u064a\\u0647 \\u0648\\u0633\\u0644\\u0645\",\"\\u0644\\u064a\\u0633 \\u0645\\u0646 \\u0627\\u0644\\u0634\\u062c\\u0627\\u0639\\u0629\",\"\\u0625\\u0630\\u0627 \\u0627\\u0633\\u062a\\u0639\\u0631\\u062a \\u0634\\u064a\\u0626\\u0627\"]},\"right\":{\"title\":\"( \\u0628 )\",\"options\":[\"\\u0623\\u0631\\u062c\\u0639\\u0647 \\u0644\\u0635\\u0627\\u062d\\u0628\\u0629\",\"\\u0648\\u0623\\u0637\\u064a\\u0639\\u0629\",\"\\u0623\\u0646 \\u0623\\u0636\\u0631\\u0628 \\u0627\\u062e\\u064a \\u0627\\u0644\\u0635\\u063a\\u064a\\u0631\"]}}', 3, '[{\"answer\":\"2\"},{\"answer\":\"3\"},{\"answer\":\"1\"}]', 1, 120, 'easy', 'اختر ما يناسب العبارات التالية :', '<p>اختر ما يناسب العبارات التالية :</p>\r\n', NULL, 1, NULL, '2018-04-13 22:26:08', '2018-04-13 22:26:08', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(15, 34, 17, 49, 1, 1, '', '9f8a616c4c63f1a67399bd01eaa4b44f72446ceb2612', 'blanks', '<p>أحرص على&nbsp; ... والسلام على النبي صلى الله عليه وسلم عند ذكره .</p>\r\n', '', 0, 0, '[]', 1, '[{\"answer\":\"\\u0627\\u0644\\u0635\\u0644\\u0627\\u0629\"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:28:18', '2018-04-13 22:28:18', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(16, 34, 17, 49, 1, 1, '', '6c956c5ab361c0ab1b55ea40e76fdc88ecf621012211', 'blanks', '<p>اسم والدة نبينا محمد صلى الله عليه وسلم&nbsp; ... بنت وهب</p>\r\n', '', 0, 1, '[]', 1, '[{\"answer\":\"\\u0622\\u0645\\u0646\\u0629\"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:28:54', '2018-04-17 05:54:39', '51.39.72.93', '51.39.97.99', 1790, 1790, 2, 'questionbank', 1),
(17, 34, 17, 49, 1, 1, '', 'b7be44a6f13d4e9db97150332fd91addbc9870592582', 'checkbox', '<p>حدد الصفات التي يحبها الله ويحبها الناس :</p>\r\n', '', 0, 3, '[{\"option_value\":\" \\u0627\\u0644\\u0634\\u062c\\u0627\\u0639\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\" \\u0627\\u0644\\u0643\\u0630\\u0627\\u0628\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\" \\u0627\\u0644\\u0623\\u0645\\u064a\\u0646\",\"has_file\":0,\"file_name\":\"\"}]', 2, '[{\"answer\":\"1\"},{\"answer\":\"3\"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:31:09', '2018-04-13 22:31:09', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(18, 36, 17, 61, 1, 1, '', 'e02be88f21b93745d5a1f7bf8b50edc0cf27ca261318', 'radio', 'عدد أفراد أسرة عمر: ', '', 0, 3, '[{\"option_value\":\"\\u0623\\u0631\\u0628\\u0639\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0645\\u0633\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0633\\u062a\\u0629\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-17 06:55:06', '2018-04-17 06:55:06', NULL, NULL, NULL, NULL, 1, 'questionbank', 1),
(19, 36, 17, 61, 1, 1, '', 'ce2b735fd74383f8307df3ab8725974974154e312732', 'radio', 'تحدث عن عائلتك أمام زملائك.', '', 0, 2, '[{\"option_value\":\"\\u0635\\u0648\\u0627\\u0628\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-17 06:55:06', '2018-04-17 06:55:06', NULL, NULL, NULL, NULL, 1, 'questionbank', 1),
(20, 36, 17, 61, 1, 1, '', '13bfe79a701ec13ba5eccac8bc2cca5c2138cdc6111', 'radio', '<p>طَلَبَ عُمَرُ وَأَحْلاَمُ مِنْ الله أَنْ:</p>\r\n', '', 0, 3, '[{\"option_value\":\"\\u064a\\u064e\\u0632\\u0650\\u064a\\u062f\\u064e \\u0645\\u0650\\u0646\\u0652 \\u0625\\u0650\\u064a\\u0645\\u064e\\u0627\\u0646\\u0650\\u0647\\u0650\\u0645\\u064e\\u0627.\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u064a\\u064e\\u0634\\u0652\\u0641\\u0650\\u064a\\u064e\\u0647\\u064f\\u0645\\u064e\\u0627.\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u064a\\u064e\\u062c\\u0652\\u0639\\u064e\\u0644\\u064e\\u0647\\u064f\\u0645\\u064e\\u0627 \\u0642\\u064e\\u0648\\u064a\\u0651\\u064e\\u064a\\u0646\\u0650.\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-17 06:55:06', '2018-04-17 06:57:35', '51.39.72.93', NULL, NULL, 1790, 2, 'questionbank', 1),
(21, 58, 22, 115, 1, 1, '', 'fa1c175ef5e66c90ee646f1e2ce4ab274febd4a0731', 'radio', '<p><strong>نظام التشغيل الذي لا يتيح للمستخدم استعمال الفأرة:</strong></p>\r\n', '', 0, 3, '[{\"option_value\":\"\\u062f\\u0648\\u0633  \",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0644\\u064a\\u0646\\u0643\\u0633\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0648\\u064a\\u0646\\u062f\\u0648\\u0632  \",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-06 11:14:12', '2018-11-06 09:05:47', NULL, '37.124.118.74', 1811, NULL, 3, 'questionbank', 1),
(22, 58, 22, 115, 1, 1, '', '3f1e875a6df6a7650dfbcb74a01645bc69449c46430', 'checkbox', '<p><strong>مجموعة من البرامج التي تعمل على تشغيل الحاسب والتحكم في الاعمال التي يقوم بها:</strong></p>\r\n', '', 0, 3, '[{\"option_value\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0645\\u0644\\u062d\\u0642\\u0627\\u062a \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628  \",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"has_file\":0,\"file_name\":\"\"}]', 1, '[{\"answer\":\"1\"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-06 11:15:39', '2018-11-06 09:05:41', '37.124.118.74', '37.124.118.74', 1811, 1811, 3, 'questionbank', 1),
(23, 58, 22, 115, 1, 1, '', 'eb99cea7a6b503d56f91071f028aa277bd0cf1ab1718', 'radio', '<p><strong>جميع مراحل تشغيل الحاسب تتم بشكل يدوي من خلال المستخدم.</strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-06 11:21:36', '2018-11-06 09:05:35', NULL, '37.124.118.74', 1811, NULL, 3, 'questionbank', 1),
(24, 58, 22, 117, 1, 1, '', '5b3f236092aab458d4a1b16c95fda5f9c4731df91497', 'match', '<p><strong>اكتب&nbsp;الرقم المناسب للعمود (أ) من العمود (ب)</strong></p>\r\n', '', 0, 4, '{\"left\":{\"title\":\"\\u0628\",\"options\":[\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631 \\u0648\\u0627\\u0644\\u0631\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0644\\u0646\\u0635\\u0648\\u0635\",\"\\u0644\\u0633\\u0645\\u0627\\u0639 \\u0627\\u0644\\u0623\\u0635\\u0648\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628\",\"\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0648\\u0627\\u0644\\u0623\\u0631\\u0642\\u0627\\u0645\",\"\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0635\\u0648\\u0627\\u062a \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628\"]},\"right\":{\"title\":\"\\u0623\",\"options\":[\"\\u0627\\u0644\\u0634\\u0627\\u0634\\u0629\",\"\\u0627\\u0644\\u0633\\u0645\\u0627\\u0639\\u0627\\u062a\",\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d\",\"\\u0627\\u0644\\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646\"]}}', 4, '[{\"answer\":\"1\"},{\"answer\":\"2\"},{\"answer\":\"3\"},{\"answer\":\"4\"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-06 11:29:42', '2018-11-06 09:05:30', NULL, '37.124.118.74', 1811, NULL, 3, 'questionbank', 1),
(25, 58, 22, 117, 1, 1, '', '305b835c23ac374adcbcce3cfe746925d6333aee2333', 'radio', '<p>ماهي مكونات الحاسب</p>\r\n', '', 0, 3, '[{\"option_value\":\"\\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0639\\u0627\\u062f\\u064a\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0628\\u0631\\u0645\\u062c\\u064a\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0643\\u0644 \\u0645\\u0627 \\u0633\\u0628\\u0642\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-06 17:57:54', '2018-11-06 09:05:22', NULL, '86.51.184.42', 1811, NULL, 3, 'questionbank', 1),
(28, 58, 22, 113, 1, 1, '', 'b4ebe52ef4ec69ab0a6261d5dc0c3b47af5fb859955', 'radio', '<p>see the figure 1&nbsp;</p>\r\n', '89833question197070.png', 0, 1, '[{\"option_value\":\"h\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-08 19:30:17', '2018-11-06 09:05:08', NULL, '86.51.184.42', 1811, NULL, 3, 'questionbank', 1),
(30, 58, 22, 113, 1, 1, '', '6196fdf18c31c982d9a39cddf1d17993aa5270351161', 'match', '<p>موازلل٠٠٠٠٠٠ و ٠٠٠٠٠٠٠٠٠</p>\r\n', '', 0, 3, '{\"left\":{\"title\":\"\\u0628\",\"options\":[\"\\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\",\"\\u0627\\u0628\\u0648 \\u0638\\u0628\\u064a\",\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\"]},\"right\":{\"title\":\"\\u0623\",\"options\":[\"\\u0639\\u0627\\u0635\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629\",\"\\u0639\\u0627\\u0635\\u0645\\u0629 \\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\",\"\\u0639\\u0627\\u0635\\u0645\\u0629 \\u0627\\u0644\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a \"]}}', 3, '[{\"answer\":\"\\u0663\"},{\"answer\":\"\\u0661\"},{\"answer\":\"\\u0662\"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-08 19:34:19', '2018-11-06 09:05:02', NULL, '89.237.145.114', 1811, NULL, 3, 'questionbank', 1),
(31, 58, 22, 114, 1, 1, '', '7160af50e7a239a9b0c13e328dec45165e1f51082482', 'radio', '<p>علامة رفع الأسماء الخمسة</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0627\\u0644\\u0648\\u0627\\u0648\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0623\\u0644\\u0641\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u064a\\u0627\\u0621\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062b\\u0628\\u0648\\u062a \\u0627\\u0644\\u0646\\u064f\\u0651\\u0648\\u0646 \",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-12 19:24:03', '2018-11-06 09:04:40', NULL, '86.51.184.42', 2235, NULL, 3, 'questionbank', 2),
(32, 58, 22, 117, 1, 1, '', 'e0d63585ee152ed44d524568e640e9f11793b5a0871', 'radio', '<p>ولد النبي صلى الله عليه وسلم في جدة</p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0627\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-08-12 19:27:12', '2018-11-06 09:04:34', NULL, '86.51.184.42', 2235, NULL, 3, 'questionbank', 2),
(33, 58, 20, 186, 1, 1, '', '7aef963fec4a5807ab49c04f0ae2ccab6350802a2923', 'radio', '<p>من وحدات الإدخال&nbsp;</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0637\\u0627\\u0628\\u0639\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0634\\u0627\\u0634\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0633\\u0645\\u0627\\u0639\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-11-05 16:22:01', '2018-11-06 09:04:09', NULL, '89.237.145.114', 1811, NULL, 3, 'questionbank', 1),
(34, 58, 23, 151, 1, 1, '', 'a3d2cc08be9f4727e9d7752b6244e89f691f8251499', 'radio', '<p>مجموعة من البرامج التي تقوم بإدارة جهاز الحاسب وتتحكم في عمل المكونات المادية والتطبيقات</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0645\\u064a\\u0643\\u0631\\u0648\\u0633\\u0648\\u0641\\u062a \\u0648\\u0648\\u0631\\u062f\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0642\\u0648\\u0627\\u0639\\u062f \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 60, 'easy', '', '', NULL, 1, NULL, '2018-11-06 06:16:43', '2018-11-06 06:16:43', NULL, '2.89.159.165', 1821, NULL, 1, 'questionbank', 1),
(35, 58, 23, 152, 1, 1, '', '664d4b7325ff310b4d457365d8e8d061747ccf771302', 'radio', '<p>جميع مايلي من مهام نظام التشغيل عدا</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u062a\\u0634\\u063a\\u064a\\u0644 \\u0627\\u0644\\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\\u064a\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0643\\u062a\\u0634\\u0627\\u0641 \\u0627\\u0644\\u0623\\u0639\\u0637\\u0627\\u0644\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0645\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0628\\u064a\\u0639 \\u0648\\u0627\\u0644\\u0634\\u0631\\u0627\\u0621\",\"has_file\":0,\"file_name\":\"\"}]', 1, '4', 1, 60, 'easy', '', '', NULL, 1, NULL, '2018-11-06 06:22:30', '2018-11-06 06:22:30', NULL, '2.89.159.165', 1821, NULL, 1, 'questionbank', 1),
(36, 58, 20, 186, 1, 1, '', '5a0060c2c9adfff8006da87caf799ba5ac3c36b82041', 'radio', '<p>تعتبر من وحدات الإدخال و الإخراج في نفس الوقت</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0627\\u0644\\u0637\\u0627\\u0628\\u0639\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0633\\u0645\\u0627\\u0639\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0634\\u0627\\u0634\\u0629 \\u0627\\u0644\\u0644\\u0645\\u0633\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d\",\"has_file\":0,\"file_name\":\"\"}]', 1, '3', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:15:32', '2018-11-06 09:15:32', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(37, 58, 20, 187, 1, 1, '', '52a355d9501f052784adf6c16ff7a5db25906ef1301', 'radio', '<p>تقاس مساحة العرض على الشاشة بوحدة&nbsp;</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0627\\u0644\\u0641\\u0648\\u0644\\u062a\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0645\\u062a\\u0631\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0628\\u0648\\u0635\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0648\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"}]', 1, '3', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:17:46', '2018-11-06 09:17:46', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(38, 58, 21, 238, 1, 1, '', 'a28180fca5eac386c6136aa45c0993d8bc99788a1277', 'radio', '<p><strong>يمكن حذف الصفوف و الأعمدة من ورقة العمل .</strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:30:18', '2018-11-06 09:30:18', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(39, 58, 21, 240, 1, 1, '', '971c3ef12515cf8cc289cc3e35fa236b9038b001712', 'radio', '<p><strong>لا يمكن دمج عدة خلايا في الجدول و تحويلهم إلى خلية واحدة.</strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:31:34', '2018-11-06 09:31:34', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(40, 58, 22, 116, 1, 1, '', '5b713000fa773e61467967656979145dcecdf7012811', 'radio', '<p><strong>عند تثبيت خلفية لورقة العمل تظهر عند الطباعة &nbsp;&nbsp;.</strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:37:42', '2018-11-06 09:37:42', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(41, 58, 22, 116, 1, 1, '', '76a311c4a61848081cc72c78452e79c62fabcef6928', 'radio', '<p><strong>يتيح برنامج الجداول الإلكترونية إدراج الصور و القصاصات الفنية &nbsp;. </strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:39:10', '2018-11-06 09:39:10', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(42, 58, 26, 291, 1, 1, '', 'c2b79beb3d568f33dbb723f87256ad7db57b5f5d292', 'radio', '<p><strong>جميع لغات البرمجة العالية لها مترجم واحد يقوم بتحويل برامجها.</strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:46:13', '2018-11-06 09:46:13', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(43, 58, 26, 288, 1, 1, '', '41ba1e2590c0036ef11fca54419c36eaa9fd3d97389', 'radio', '<p><strong>جهاز أو نظام واحد فيما يلي يحتوي على نظام تحكم ذي دائرة مغلقة هو :جهاز أو نظام واحد فيما يلي يحتوي على نظام تحكم ذي دائرة مغلقة هو :</strong></p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0645\\u062c\\u0641\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0646\\u0638\\u0627\\u0645 \\u0633\\u0627\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u062a \\u0628\\u0627\\u0644\\u0641\\u0631\\u0646\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062c\\u0647\\u0627\\u0632 \\u0641\\u062a\\u062d \\u0623\\u0628\\u0648\\u0627\\u0628 \\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0646\\u0638\\u0627\\u0645 \\u0625\\u0636\\u0627\\u0621\\u0629 \\u0644\\u0645\\u0628\\u0627\\u062a \\u0627\\u0644\\u0634\\u0648\\u0627\\u0631\\u0639 \\u0628\\u0639\\u062f \\u0627\\u0644\\u063a\\u0631\\u0648\\u0628\",\"has_file\":0,\"file_name\":\"\"}]', 1, '4', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:48:26', '2018-11-06 09:48:26', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(44, 58, 27, 319, 1, 1, '', 'deb8b3c1f82f7fe850f97f8b5d0fe01fa6aaac2b1924', 'radio', '<p><strong>التجسس هو نوع من الاختراق.</strong></p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:53:26', '2018-11-06 09:53:26', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(45, 58, 27, 321, 1, 1, '', 'be1bf196a33c15df7a515601a95f9468849cd9931750', 'radio', '<p><strong>يطلق على الوثيقة الإلكترونية التي تمنح من قبل هيئات عالمية :</strong></p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0627\\u0644\\u0631\\u0642\\u0645\\u064a\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062c\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629  \",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0631\\u0642\\u0645\\u064a\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0634\\u0641\\u064a\\u0631\",\"has_file\":0,\"file_name\":\"\"}]', 1, '3', 1, 3, 'easy', '', '', NULL, 1, NULL, '2018-11-06 09:55:42', '2018-11-06 09:55:42', NULL, '37.127.148.89', 1811, NULL, 1, 'questionbank', 1),
(46, 58, 57, 358, 1, 1, '', '1c6e091a028b7e31a9c0a4c58d2d594ee0c72f311281', 'radio', '<p>من مجالات استخدام الوسائط المتعددة مجال التدريب</p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'medium', '', '', NULL, 1, NULL, '2018-11-07 15:52:11', '2018-11-07 15:52:11', NULL, '89.237.145.114', 1834, NULL, 1, 'questionbank', 1),
(47, 58, 57, 360, 1, 1, '', '8a36aeb8d3213ac066d3b7163ea4db7e2f84528f2126', 'radio', '<p><strong>من أشهر البرامج لتحرير ومعالجة الصور ؟</strong></p>\r\n', '', 0, 3, '[{\"option_value\":\"\\tAudacity\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"Adobe Photoshop\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"Pencil\",\"has_file\":0,\"file_name\":\"\"}]', 1, '2', 1, 120, 'medium', '', '', NULL, 1, NULL, '2018-11-07 18:48:41', '2018-11-07 18:48:41', NULL, '89.237.145.114', 1834, NULL, 1, 'questionbank', 1),
(48, 58, 57, 357, 1, 1, '', '1bfabd386a748ea26b452a7466b7e5181bb829271753', 'radio', '<p><strong>لقطات فلمية متحركة سجلت بطريقة رقمية</strong></p>\r\n', '', 0, 3, '[{\"option_value\":\"\\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0631\\u0633\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u0631\\u0643\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0635\\u0648\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0628\\u062a\\u0629\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'medium', '', '', NULL, 1, NULL, '2018-11-07 18:50:30', '2018-11-07 18:50:30', NULL, '86.51.184.42', 1834, NULL, 1, 'questionbank', 1),
(68, 58, 22, 118, 1, 1, '', '798ff3cd69b432c9afa245e98bb68044fd2a934c1694', 'checkbox', '<p>حدد وحدة الأدخال من مكونات الحاسب التالية</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0637\\u0627\\u0628\\u0639\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0634\\u0627\\u0634\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0641\\u0623\\u0631\\u0629\",\"has_file\":0,\"file_name\":\"\"}]', 2, '[{\"answer\":\"\\u0661\"},{\"answer\":\"\\u0664\"}]', 2, 120, 'medium', '', '', NULL, 1, NULL, '2018-11-11 05:27:16', '2018-11-11 05:27:16', NULL, '37.124.116.227', 1834, NULL, 1, 'questionbank', 1),
(69, 58, 57, 357, 1, 1, '', 'd8984b42e0486b7bff3271064e069687910038611905', 'checkbox', '<p>اختر الإجابة الصحيحة:&nbsp;</p>\r\n\r\n<p>من مدن المملكة العربية السعودية</p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0628\\u063a\\u062f\\u0627\\u062f\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u062f\\u0645\\u0627\\u0645\",\"has_file\":0,\"file_name\":\"\"}]', 2, '[{\"answer\":\"\\u0661\"},{\"answer\":\"\\u0664\"}]', 2, 120, 'easy', '', '', NULL, 1, NULL, '2018-11-11 05:32:57', '2018-11-11 05:34:25', '37.124.116.227', '37.124.116.227', 1834, 1834, 3, 'questionbank', 1),
(92, 58, 24, 629, 1, 1, '', '138e5db1b69ec8afc6766ff061d1b3d0b9bd9fbd1575', 'radio', '<p>من مواصفات العرض التقديمي الجيد استخدام قالب أو تصميم واحد لجميع الشرائح.</p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-11-13 07:01:05', '2018-11-13 07:01:06', NULL, '2.89.164.9', 1821, NULL, 1, 'questionbank', 1),
(93, 58, 24, 629, 1, 1, '', '25e38a9ef818169be66202183cc257d63dd686b02992', 'radio', '<p>من مواصفات العرض التقديمي الجيد أن تحتوي كل شريحة على أكثر من فكرة.</p>\r\n', '', 0, 2, '[{\"option_value\":\"\\u0635\\u062d\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062e\\u0637\\u0623\",\"has_file\":0,\"file_name\":\"\"}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-11-13 07:03:35', '2018-11-13 07:03:35', NULL, '2.89.164.9', 1821, NULL, 1, 'questionbank', 1),
(108, 58, 25, 656, 1, 1, '', '0e773502d3fce18e284d071556ea69f578e9d3c42491', 'radio', '<p><strong>جميع الوثائق التي لها شكل إلكتروني، ويتم الوصول إليها عن طريق الحاسب وتقنياته تُسمى :</strong></p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0645\\u0635\\u0627\\u062f\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\\u0629\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u0628\\u062d\\u0648\\u062b\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0645\\u0635\\u0627\\u062f\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629\",\"has_file\":0,\"file_name\":\"\"}]', 1, '4', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-11-19 06:57:18', '2018-11-19 06:57:18', NULL, '2.89.175.30', 1821, NULL, 1, 'questionbank', 1),
(109, 58, 25, 658, 1, 1, '', '69837d016a9fb78391f242de57ea9a3cf14374d51147', 'radio', '<p><strong>من معايير تقييم مصادر المعلومات على شبكة الإنترنت :</strong></p>\r\n', '', 0, 4, '[{\"option_value\":\"\\u0643\\u062b\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644.\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a\",\"has_file\":0,\"file_name\":\"\"},{\"option_value\":\"\\u0627\\u0644\\u062c\\u0627\\u0630\\u0628\\u064a\\u0629.\",\"has_file\":0,\"file_name\":\"\"}]', 1, '3', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-11-19 06:59:27', '2018-11-19 06:59:27', NULL, '2.89.175.30', 1821, NULL, 1, 'questionbank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questionbank_quizzes`
--

CREATE TABLE `questionbank_quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `questionbank_id` bigint(20) UNSIGNED NOT NULL,
  `quize_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `marks` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'questionbank_quizzes',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionbank_quizzes`
--

INSERT INTO `questionbank_quizzes` (`id`, `questionbank_id`, `quize_id`, `subject_id`, `marks`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(104, 36, 24, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(105, 37, 24, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(108, 40, 27, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(109, 41, 27, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(110, 42, 28, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(111, 43, 28, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(112, 44, 29, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(113, 45, 29, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(114, 38, 26, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(115, 39, 26, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(116, 36, 30, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(117, 34, 30, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(124, 46, 31, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(125, 47, 31, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(126, 48, 31, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(221, 92, 37, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(222, 93, 37, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(235, 108, 40, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(236, 109, 40, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(237, 34, 38, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1),
(238, 35, 38, 58, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'questionbank_quizzes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizapplicability`
--

CREATE TABLE `quizapplicability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) UNSIGNED NOT NULL,
  `semister` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizapplicability',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizapplicability`
--

INSERT INTO `quizapplicability` (`id`, `quiz_id`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(84, 26, 1, 21, 38, 1, 0, '2018-11-06 09:33:46', '2018-11-06 09:33:46', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(85, 26, 1, 21, 37, 1, 0, '2018-11-06 09:33:46', '2018-11-06 09:33:46', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(86, 27, 1, 22, 39, 1, 0, '2018-11-06 09:42:46', '2018-11-06 09:42:46', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(88, 29, 1, 27, 83, 1, 0, '2018-11-06 09:58:43', '2018-11-06 09:58:43', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(91, 30, 1, 20, 35, 1, 0, '2018-11-07 07:50:18', '2018-11-07 07:50:18', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(92, 31, 1, 57, 85, 1, 0, '2018-11-07 19:00:35', '2018-11-07 19:00:35', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(93, 31, 1, 57, 84, 1, 0, '2018-11-07 19:00:35', '2018-11-07 19:00:35', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(94, 28, 1, 26, 47, 1, 0, '2018-11-07 20:51:40', '2018-11-07 20:51:40', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(95, 24, 1, 20, 36, 1, 0, '2018-11-08 19:36:45', '2018-11-08 19:36:45', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(96, 24, 1, 20, 35, 1, 0, '2018-11-08 19:36:45', '2018-11-08 19:36:45', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(123, 38, 6, 23, 42, 1, 0, '2018-11-19 06:43:56', '2018-11-19 06:43:56', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(124, 38, 6, 23, 41, 1, 0, '2018-11-19 06:43:56', '2018-11-19 06:43:56', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(125, 40, 1, 25, 46, 1, 0, '2018-11-19 06:47:12', '2018-11-19 06:47:12', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1),
(126, 40, 1, 25, 45, 1, 0, '2018-11-19 06:47:12', '2018-11-19 06:47:12', NULL, NULL, NULL, NULL, 1, 'quizapplicability', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizcategories`
--

CREATE TABLE `quizcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizcategories',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizcategories`
--

INSERT INTO `quizcategories` (`id`, `category`, `slug`, `course_id`, `image`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(7, 'اختبارات الصف السادس تجريبي', 'akhtbarat-alsf-alsads-tjryby1184', 22, '', 'اختبار الفصل التجريبي', 1811, '2018-08-07 06:24:24', '2018-11-06 09:03:10', NULL, '37.124.118.74', 1811, NULL, 3, 'quizcategories', 1),
(10, 'اختبارات اللغة العربية', 'akhtbarat-allgh-alaarby741', 22, '', '', 2235, '2018-08-12 19:39:38', '2018-08-12 19:39:38', NULL, '86.51.184.42', 2235, NULL, 1, 'quizcategories', 2),
(14, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly1481', 20, '', '', 1811, '2018-11-06 09:18:41', '2018-11-06 09:18:41', NULL, '37.127.148.89', 1811, NULL, 1, 'quizcategories', 1),
(15, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly583', 21, '', '', 1811, '2018-11-06 09:19:04', '2018-11-06 09:19:04', NULL, '37.127.148.89', 1811, NULL, 1, 'quizcategories', 1),
(16, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly2452', 22, '', '', 1811, '2018-11-06 09:19:17', '2018-11-06 09:19:17', NULL, '37.127.148.89', 1811, NULL, 1, 'quizcategories', 1),
(17, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly1996', 26, '', '', 1811, '2018-11-06 09:19:31', '2018-11-06 09:19:31', NULL, '37.127.148.89', 1811, NULL, 1, 'quizcategories', 1),
(18, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly2025', 27, '', '', 1811, '2018-11-06 09:19:43', '2018-11-06 09:19:43', NULL, '37.127.148.89', 1811, NULL, 1, 'quizcategories', 1),
(19, 'أختبارات الحاسب الثالث الثانوي', 'akhtbarat-alhasb-althalth-althanoy2129', 57, '', '', 1834, '2018-11-07 15:47:37', '2018-11-07 15:47:37', NULL, '89.237.145.114', 1834, NULL, 1, 'quizcategories', 1),
(24, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly2533', 23, '', '', 1821, '2018-11-13 06:51:19', '2018-11-13 06:51:19', NULL, '2.89.164.9', 1821, NULL, 1, 'quizcategories', 1),
(25, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly2947', 24, '', '', 1821, '2018-11-13 06:51:35', '2018-11-13 06:51:35', NULL, '2.89.164.9', 1821, NULL, 1, 'quizcategories', 1),
(26, 'اختبارات الحاسب الآلي', 'akhtbarat-alhasb-alaaly1067', 25, '', '', 1821, '2018-11-13 06:51:49', '2018-11-13 06:51:49', NULL, '2.89.164.9', 1821, NULL, 1, 'quizcategories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizofflinecategories`
--

CREATE TABLE `quizofflinecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizofflinecategories',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizofflinecategories`
--

INSERT INTO `quizofflinecategories` (`id`, `title`, `slug`, `status`, `course_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(3, 'الصف الاول الابتدائي الفصل الاول تجريبي', 'alsf-alaol-alabtdaey-alfsl-alaol-tjryby28', 1, 17, '2018-04-14 07:55:20', '2018-08-08 19:48:47', '86.51.184.42', '51.39.97.99', 1790, 1811, 2, 'quizofflinecategories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizresults`
--

CREATE TABLE `quizresults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `marks_obtained` int(10) NOT NULL DEFAULT '0',
  `negative_marks` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_marks` int(10) NOT NULL DEFAULT '0',
  `percentage` decimal(10,2) NOT NULL,
  `exam_status` enum('pass','fail','pending') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `answers` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_analysis` text COLLATE utf8_unicode_ci,
  `correct_answer_questions` text COLLATE utf8_unicode_ci,
  `wrong_answer_questions` text COLLATE utf8_unicode_ci,
  `not_answered_questions` text COLLATE utf8_unicode_ci,
  `time_spent_correct_answer_questions` text COLLATE utf8_unicode_ci NOT NULL,
  `time_spent_wrong_answer_questions` text COLLATE utf8_unicode_ci NOT NULL,
  `time_spent_not_answered_questions` text COLLATE utf8_unicode_ci NOT NULL,
  `percentage_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade_points` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `total_users_for_this_quiz` int(11) DEFAULT NULL,
  `academic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizresults',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('online','offline') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'online',
  `offline` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `online` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dueration` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL DEFAULT '17',
  `is_paid` tinyint(4) NOT NULL DEFAULT '0',
  `cost` decimal(10,2) DEFAULT NULL,
  `validity` int(11) NOT NULL,
  `total_marks` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `having_negative_mark` tinyint(1) NOT NULL DEFAULT '0',
  `negative_mark` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pass_percentage` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish_results_immediately` tinyint(4) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `total_questions` int(50) NOT NULL,
  `instructions_page_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `applicable_to_specific` tinyint(1) NOT NULL DEFAULT '0',
  `offline_quiz_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizzes',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `entry_option` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `slug`, `type`, `offline`, `online`, `dueration`, `category_id`, `subject_id`, `course_id`, `is_paid`, `cost`, `validity`, `total_marks`, `having_negative_mark`, `negative_mark`, `pass_percentage`, `tags`, `publish_results_immediately`, `description`, `total_questions`, `instructions_page_id`, `start_date`, `end_date`, `applicable_to_specific`, `offline_quiz_category_id`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`, `entry_option`) VALUES
(24, 'اختبار حاسب رابع 1', 'akhtbar-hasb-rabaa-12085-dfeada3159a038633bf33af1f6569689e23890f5', 'online', '', '', 15, 14, 2117, 20, 0, '0.00', -1, 2, 1, '0.00', '50.00', '', 1, '', 2, 1, '2018-11-05 23:38:00', '2018-11-30 23:39:00', 1, NULL, 1811, '2018-11-06 08:11:38', '2018-11-08 19:36:45', '86.51.184.42', '37.127.148.89', 1811, 1811, 2, 'quizzes', 1, 2),
(26, 'اختبار حاسب خامس 1', 'akhtbar-hasb-khams-12047-d194fdb128174b73fdf30b6ae5f4100ce6df5f5d', 'online', '', '', 15, 15, 2121, 21, 0, '0.00', -1, 2, 0, '0.00', '50.00', '', 1, '', 2, 1, '2018-11-05 01:01:00', '2018-11-30 01:03:00', 1, NULL, 1811, '2018-11-06 09:33:46', '2018-11-06 18:50:14', '86.51.184.42', '37.127.148.89', 1811, 1811, 2, 'quizzes', 1, 2),
(27, 'اختبار حاسب سادس 1', 'akhtbar-hasb-sads-1801-fe46a279c2e498193c461cec7296dc2244273281', 'online', '', '', 15, 16, 1019, 22, 0, '0.00', -1, 2, 0, '0.00', '50.00', '', 1, '', 2, 1, '2018-11-05 01:11:00', '2018-11-30 01:13:00', 1, NULL, 1811, '2018-11-06 09:42:46', '2018-11-06 09:43:23', '37.127.148.89', '37.127.148.89', 1811, 1811, 2, 'quizzes', 1, 2),
(28, 'اختبار حاسب أول ثانوي 1', 'akhtbar-hasb-aol-thanoy-11411-6fe35207f62134717de33169bbcd9485797d836d', 'online', '', '', 15, 17, 1316, 26, 0, '0.00', -1, 2, 1, '0.00', '50.00', '', 1, '', 2, 1, '2018-11-05 01:18:00', '2018-11-30 01:20:00', 1, NULL, 1811, '2018-11-06 09:50:27', '2018-11-07 20:51:40', '89.237.145.114', '37.127.148.89', 1811, 1811, 2, 'quizzes', 1, 2),
(29, 'اختبار حاسب ثاني ثانوي  1', 'akhtbar-hasb-thany-thanoy-11528-de6c2346b30ada90a75cc1b132e776c1a9884fae', 'online', '', '', 15, 18, 1435, 27, 0, '0.00', -1, 2, 0, '0.00', '50.00', '', 1, '', 2, 1, '2018-11-05 01:25:00', '2018-11-30 01:27:00', 1, NULL, 1811, '2018-11-06 09:58:43', '2018-11-06 10:00:45', '37.127.148.89', '37.127.148.89', 1811, 1811, 2, 'quizzes', 1, 2),
(30, 'اختبار هشام', 'akhtbar-hsham2713-1b613b0d692a8751c1b1c7a6d03d26d3c6579ba7', 'online', '', '', 15, 14, 2117, 20, 0, '0.00', -1, 2, 1, '0.00', '50.00', '', 1, '', 2, 1, '2018-11-06 23:04:00', '2018-11-18 23:04:00', 1, NULL, 1811, '2018-11-07 07:37:26', '2018-11-07 09:01:06', '37.125.33.126', '37.125.33.126', 1811, 1811, 3, 'quizzes', 1, 1),
(31, 'اختبار تجريبي', 'akhtbar-tjryby1144-2f53c709118424e3aa96f25a1b62230a8f832b01', 'online', '', '', 15, 19, 1517, 57, 0, '0.00', -1, 3, 0, '0.00', '50.00', '', 1, '', 3, 1, '2018-11-07 10:28:00', '2018-11-28 10:30:00', 1, NULL, 1834, '2018-11-07 19:00:35', '2018-11-07 19:03:24', '89.237.145.114', '89.237.145.114', 1834, 1834, 2, 'quizzes', 1, 2),
(37, 'الاختبار الأول حاسب 2م ف1', 'alakhtbar-alaol-hasb-2m-f11659-669686b824c746abc40975b8beefc2758ba559d7', 'online', '', '', 1, 25, 1189, 24, 0, '0.00', -1, 2, 1, '40.00', '40.00', '', 1, '', 2, 1, '2018-11-13 22:55:00', '2018-11-20 22:56:00', 1, NULL, 1821, '2018-11-13 07:27:55', '2018-11-13 07:41:33', '2.89.164.9', '2.89.164.9', 1821, 1821, 2, 'quizzes', 1, 1),
(38, 'الاختبار الأول حاسب الأول المتوسط', 'alakhtbar-alaol-hasb-alaol-almtost2601-3f3ab080e6a10502885870d518dec5e6cc75f440', 'online', '', '', 1, 24, 1118, 23, 0, '0.00', -1, 2, 1, '40.00', '40.00', '', 1, '', 2, 1, '2018-11-20 22:11:00', '2018-12-06 22:12:00', 1, NULL, 1821, '2018-11-13 07:29:53', '2018-11-19 07:03:28', '2.89.175.30', '2.89.164.9', 1821, 1821, 2, 'quizzes', 1, 1),
(40, 'الأختبار الأول حاسب 3 م ف 1', 'alakhtbar-alaol-hasb-3-m-f-1358-682a9623bfbe3d7b281d12356e24066fda05e083', 'online', '', '', 10, 26, 1259, 25, 0, '0.00', -1, 2, 1, '39.00', '40.00', '', 1, '', 2, 1, '2018-11-19 22:14:00', '2018-12-06 22:15:00', 1, NULL, 1821, '2018-11-19 06:47:12', '2018-11-19 07:01:22', '2.89.175.30', '2.89.175.30', 1821, 1821, 2, 'quizzes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'religions',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `religion_name`, `status`, `slug`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'مسلم', 'Active', 'mslm', '2017-10-12 07:36:46', '2017-10-12 07:36:46', NULL, NULL, NULL, NULL, 1, 'religions', 1),
(2, 'مسيحي', 'Active', 'msyhy', '2017-10-12 07:36:54', '2018-05-20 09:03:55', NULL, NULL, NULL, NULL, 2, 'religions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'roles',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'owner', 'Owner', 'Owner of this account', '2016-06-08 03:32:59', '2016-06-08 03:32:59', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(2, 'admin', 'Admin', 'Admin of this Account', '2016-06-08 03:33:19', '2016-06-08 03:33:19', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(3, 'staff', 'Staff', 'Staff User', '2016-11-04 23:44:22', '2016-11-04 23:44:22', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(5, 'student', 'Student', 'Student User', '2016-06-08 04:01:54', '2016-06-08 04:01:54', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(6, 'parent', 'Parent User', 'Parent Login', '2016-06-08 07:35:27', '2016-06-08 07:35:27', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(7, 'librarian', 'Librarian', 'Library User', '2016-12-05 18:30:00', '2016-12-05 18:30:00', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(8, 'assistant_librarian', 'Assistant Librarian', 'Assistant Librarian', '2016-12-07 01:45:12', '2016-12-07 01:45:12', NULL, NULL, NULL, NULL, 1, 'roles', 1),
(9, 'educational_supervisor', 'Educational Supervisor', 'Educational Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'roles', 1),
(10, 'secondary_parent', 'Secondary Parent', 'Secondary Parent', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'roles', 1),
(11, 'student_guide', 'Student Guide', 'Guide for Students', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'roles', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'role_user',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`, `record_status`, `table_name`, `branch_id`) VALUES
(1790, 1, NULL, NULL, NULL, NULL, '2018-03-19 22:20:38', '0000-00-00 00:00:00', 3, 'role_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `secondary_parent_student`
--

CREATE TABLE `secondary_parent_student` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `secondary_parent_id` bigint(20) UNSIGNED NOT NULL,
  `record_status` int(11) NOT NULL DEFAULT '1',
  `updated_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `branch_id` smallint(6) DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'secondary_parent_student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semisters`
--

CREATE TABLE `semisters` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `total_semisters` int(11) NOT NULL,
  `semister_prefix` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'semisters',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings_data` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'settings',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `key`, `slug`, `image`, `settings_data`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'إعدادات البريد الألكتروني', 'email_settings', 'email-settings', '', '{\"mail_driver\":{\"value\":\"mail\",\"type\":\"select\",\"extra\":{\"total_options\":\"8\",\"options\":{\"smtp\":\"SMTP\",\"mail\":\"Mail\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"Sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"Mandrill\",\"ses\":\"SES\",\"log\":\"Log\"}},\"tool_tip\":\"Driver\"},\"mail_host\":{\"value\":\"mail.sasbit.com\",\"type\":\"text\",\"extra\":{\"total_options\":\"8\",\"options\":{\"smtp\":\"SMTP\",\"mail\":\"Mail\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"Sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"Mandrill\",\"ses\":\"SES\",\"log\":\"Log\"}},\"tool_tip\":\"Mail Host\"},\"mail_port\":{\"value\":\"110\",\"type\":\"text\",\"extra\":{\"total_options\":\"8\",\"options\":{\"smtp\":\"SMTP\",\"mail\":\"Mail\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"Sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"Mandrill\",\"ses\":\"SES\",\"log\":\"Log\"}},\"tool_tip\":\"Mail Port no\"},\"mail_username\":{\"value\":\"\",\"type\":\"text\",\"extra\":{\"total_options\":\"8\",\"options\":{\"smtp\":\"SMTP\",\"mail\":\"Mail\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"Sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"Mandrill\",\"ses\":\"SES\",\"log\":\"Log\"}},\"tool_tip\":\"Mail Username\"},\"mail_password\":{\"value\":\"\",\"type\":\"password\",\"extra\":{\"total_options\":\"8\",\"options\":{\"smtp\":\"SMTP\",\"mail\":\"Mail\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"Sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"Mandrill\",\"ses\":\"SES\",\"log\":\"Log\"}},\"tool_tip\":\"Password\"},\"mail_encryption\":{\"value\":\"null\",\"type\":\"text\",\"extra\":{\"total_options\":\"8\",\"options\":{\"smtp\":\"SMTP\",\"mail\":\"Mail\",\"sparkpost\":\"Sparkpost\",\"sendmail\":\"Sendmail\",\"mailgun\":\"Mailgun\",\"mandrill\":\"Mandrill\",\"ses\":\"SES\",\"log\":\"Log\"}},\"tool_tip\":\"Mail Encryption\"}}', 'Contains all the settings related to emails', '2016-08-28 23:55:26', '2017-12-31 06:59:03', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(4, 'اعدادات وسيلة الدفع باي بال - PayPal', 'paypal', 'paypal', '', '{\"email\":{\"value\":\"montaserelsawy@gmail.com\",\"type\":\"email\",\"extra\":\"\",\"tool_tip\":\"Paypal Email\"},\"currency\":{\"value\":\"USD\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Default Currency\"},\"image\":{\"value\":\"gYiMM9e5g3H40dz.png\",\"type\":\"file\",\"extra\":\"\",\"tool_tip\":\"Image to display at Paypal payment gateway\"},\"account_type\":{\"value\":\"live\",\"type\":\"select\",\"extra\":{\"total_options\":\"2\",\"options\":{\"sandbox\":\"Sandbox\",\"live\":\"Live\"}},\"tool_tip\":\"Account Type Development (sandbox)\\/ Production (live)\"}}', 'Contains paypal config details', '2016-09-08 03:38:30', '2018-02-01 11:06:50', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(5, 'PayU Settings', 'payu', 'payu', '', '{\"payu_merchant_key\":{\"value\":\"YOUR_PAYU_MERCHANT_KEY\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"PayU Merchent Key\"},\"payu_salt\":{\"value\":\"YOUR_PAYU_SALT\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"PayU Salt\"},\"payu_working_key\":{\"value\":\"YOUR_PAYU_WORKING_KEY\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"PayU Working Key\"},\"payu_testmode\":{\"value\":\"true\",\"type\":\"select\",\"extra\":{\"total_options\":\"2\",\"options\":{\"true\":\"Yes\",\"false\":\"No\"}},\"tool_tip\":\"Set PayU in Test Mode\"}}', 'Payu Settings', '2016-09-09 01:25:33', '2017-03-01 10:23:56', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(6, 'اعدادات الموقع', 'site_settings', 'site-settings', '', '{\"background_image\":{\"value\":\"71mZtKNc3ds9P9L.jpg\",\"type\":\"file\",\"extra\":\"\",\"tool_tip\":\"Front background image\"},\"currency_symbol\":{\"value\":\"\\u0631\\u064a\\u0627\\u0644\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Add your currency symbol\"},\"current_theme\":{\"value\":\"default\",\"type\":\"select\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Select theme\"},\"default_academic_year_id\":{\"value\":\"1\",\"type\":\"number\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Enter default academic year\"},\"default_parent_course_id\":{\"value\":\"1\",\"type\":\"number\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Enter default parent course ID\"},\"login_page_title\":{\"value\":\"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0623\\u0646\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Type Of Education System\"},\"site_address\":{\"value\":\"\",\"type\":\"textarea\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Address\"},\"site_city\":{\"value\":\"\\u0627\\u0644\\u0623\\u062d\\u0633\\u0627\\u0621\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"City\"},\"Site_country\":{\"value\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Country\"},\"site_favicon\":{\"value\":\"ZK4B6RqzibqxAKx.ico\",\"type\":\"file\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Favicon\"},\"site_logo\":{\"value\":\"IF9YjII6mtu7N9g.png\",\"type\":\"file\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Site Logo\"},\"site_logo_attendance_header\":{\"value\":\"neJpsUDg4K7SL9C.png\",\"type\":\"file\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Site Logo\"},\"site_phone\":{\"value\":\"0548300367\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Phone\"},\"site_state\":{\"value\":\"\\u0627\\u0644\\u0634\\u0631\\u0642\\u064a\\u0629\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"State\"},\"site_title\":{\"value\":\"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0623\\u0646\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Site Title\"},\"site_zipcode\":{\"value\":\"41321\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Postal Code\"},\"system_timezone\":{\"value\":\"Asia\\/Riyadh\",\"type\":\"text\",\"extra\":{\"total_options\":\"3\",\"options\":{\"default\":\"Default Theme\",\"red\":\"Red Theme\",\"green\":\"Green Theme\"}},\"tool_tip\":\"Refer http:\\/\\/php.net\\/manual\\/en\\/timezones.php\"}}', 'Here you can manage the title, logo, favicon and all general settings', '2016-09-29 06:46:54', '2018-04-28 11:27:27', '51.39.99.5', NULL, NULL, 1790, 2, 'settings', 1),
(7, 'Seo Settings', 'seo_settings', 'seo-settings-1', '', '{\"google_analytics\":{\"value\":\"\",\"type\":\"textarea\",\"extra\":\"\",\"tool_tip\":\"Update your google analytics code\"},\"meta_description\":{\"value\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0633\\u0627\\u0633\\u0628\\u062a\",\"type\":\"textarea\",\"extra\":\"\",\"tool_tip\":\"Site Meta Description\"},\"meta_keywords\":{\"value\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a, \\u0633\\u0627\\u0633\\u0628\\u062a, \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628, \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 , \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a , \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\\u0627\\u062a , \\u0627\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0645\\u0648\\u0631, \\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643\\u0627\\u062a\",\"type\":\"textarea\",\"extra\":\"\",\"tool_tip\":\"Site Meta Keywords\"}}', 'Contains all SEO settings', '2016-09-30 13:33:46', '2018-02-01 11:08:06', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(8, 'Payment Gateways', 'payment_gateways', 'payment-gateways', '', '{\"offline_payment_information\":{\"value\":\"1) \\u0641\\u0649 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0627\\u0644\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0627\\u0644\\u0628\\u0646\\u0643\\u064a \\u064a\\u0631\\u062c\\u064a \\u0627\\u0631\\u0641\\u0627\\u0642 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0628\\u0639 \\u0627\\u062f\\u0646\\u0627\\u0647 <br>\\r\\n2) \\u0641\\u0649 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0628\\u0634\\u064a\\u0643 \\u0646\\u0631\\u062c\\u0648 \\u0627\\u0631\\u0641\\u0627\\u0642 \\u0631\\u0642\\u0645 \\u0627\\u0644\\u0634\\u064a\\u0643 \\u0648\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0628\\u0646\\u0643 <br>\\r\\n3) \\u0648\\u0633\\u064a\\u0642\\u0648\\u0645 \\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0648\\u0645\\u0646 \\u062b\\u0645 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u062a\\u0649 \\u062a\\u0645 \\u0634\\u0631\\u0627\\u0624\\u0647\\u0627\",\"type\":\"textarea\",\"extra\":\"\",\"tool_tip\":\"Information related to offline payment\"}}', 'Contains all list of payment gateways in the system and the status of availability ', '2016-10-02 09:48:19', '2018-03-23 07:19:41', '51.36.236.99', NULL, NULL, 1790, 2, 'settings', 1),
(9, 'تفعيل وإيقاف الخدمات', 'module', 'module', '', '{\"certificate\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Certificate Module\"},\"coupons\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Coupons Module\"},\"facebook_login\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Facebook Login\"},\"google_plus_login\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Google+ Login\"},\"messaging\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Messaging Module\"},\"offline_payment\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Offline Payment Option\"},\"branches\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Parent Module\"},\"parent\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Parent Module\"},\"paypal\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Paypal Payment Gateway\"},\"payu\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable PayU Payment Gateway\"},\"push_notifications\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Push Notifications\"},\"show_foreign_key_constraint\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"show foreign key constraint message at delete operation\"},\"transfer_students\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable student transter\"},\"daily_school_schedule\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable school schedule\"},\"exams\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable exams\"},\"paid_tests_only\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable paid tests\"},\"management_of_educational_content\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable educational content\"},\"paid_educational_content_only\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable paid content\"},\"experimental_tests_only\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable experimental tests\"},\"language_settings\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Language\"},\"library_Management\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable student Library management\"},\"attendance_and_departure\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Enable\\/Disable Attendance and departure Module\"}}', 'لتفعيل وايقاف تفعيل الخدمات فى نظام التعليم الالكتروني ', '2016-10-12 11:36:22', '2018-04-28 09:50:45', '51.39.99.5', NULL, NULL, 1790, 2, 'settings', 1),
(11, 'إعدادات الشهادة', 'certificate', 'certificate', '', '{\n  \"bottom_middle_logo\": {\n    \"value\": \"Xnbf7A5pUDnseoH.png\",\n    \"type\": \"file\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Bottom middle logo\"\n  },\n  \"content\": {\n    \"value\": \"<span style=\\\"font-size:18px; font-style:italic;\\\">This is to certify that <b style=\\\"padding:0 10px; font-size:22px;\\\">{{$username}}</b> Lorem Ipsum is simply dummy text <b style=\\\"padding:0 10px; font-size:22px;\\\">{{$course_name}}</b> of the printing with score of <b style=\\\"padding:0 10px; font-size:22px;\\\">{{$marks}}</b> and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took</span>\",\n    \"type\": \"ckeditor\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Content for the certificate\"\n  },\n  \"left_sign_designation\": {\n    \"value\": \"المعلم \",\n    \"type\": \"text\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Left Sign Designation\"\n  },\n  \"left_sign_name\": {\n    \"value\": \"منتصر الصاوي\",\n    \"type\": \"text\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Left Sign Name\"\n  },\n  \"right_sign_designation\": {\n    \"value\": \"مدير المدرسة\",\n    \"type\": \"text\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Right Sign Designation\"\n  },\n  \"right_sign_name\": {\n    \"value\": \"خالد الحربي\",\n    \"type\": \"text\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Right Sign Name\"\n  },\n  \"left_sign_image\": {\n    \"value\": \"CbWZkuET6ivwbH9.png\",\n    \"type\": \"file\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Left Sign Image\"\n  },\n  \"logo\": {\n    \"value\": \"m1JlokolQneUJjA.png\",\n    \"type\": \"file\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Header logo of certificate\"\n  },\n  \"right_sign_image\": {\n    \"value\": \"ITKaR4FJcEp8blq.png\",\n    \"type\": \"file\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Right Sign Image\"\n  },\n  \"watermark_image\": {\n    \"value\": \"HtgCy1IffrwfK3G.png\",\n    \"type\": \"file\",\n    \"extra\": \"\",\n    \"tool_tip\": \"Water Mark Image for transparent background\"\n  }\n}', 'This Module contains the settings for Certificate', '2016-10-13 06:57:36', '2018-02-01 07:34:15', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(12, 'تسجيل الدخول من خلال مواقع التواصل الاجتماعي', 'social_logins', 'social-logins', '', '{\"facebook_client_id\":{\"value\":\"eyJpdiI6IlFJajZxUjROQ3NYMzZ3bVdSMTZjbEE9PSIsInZhbHVlIjoiRENpQXpRY0cwclZQbXplMm9hTGsrbm53dUc5a3pzUEdzVjlsSXFjTGtNRT0iLCJtYWMiOiIwODBlNjA0MjhhNGUxY2M0YmFmYmNjMDViZTNhNDFkYWM3MTUyNTM1NWRjNjlhMGY1M2QzZWQ2NjE0Yzk1NDJlIn0=\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Facebook Client ID\"},\"facebook_client_secret\":{\"value\":\"eyJpdiI6InB1YXRONjdKVm5LUFVMU21DWGlmRHc9PSIsInZhbHVlIjoieDhvMnZTTjdhNHFLU1wvRjVmSUdIamZuWlduK0kxTWZzeWJXa0dzZmY5VE5yUTVsc3gyakNUUTBxdTQrbkg5XC84IiwibWFjIjoiMTJlMjBiYzc2YzZmODJiODUzZDlmYWZlZjQyZDgwNmYyMDQxYmM0OTU0ZjliZjI3ZmNhNDUyNTE4YzgyMmU4YyJ9\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Facebook Client Secret\"},\"facebook_redirect_url\":{\"value\":\"eyJpdiI6ImkyZkpwd2p3Y0xVcXBFRDJZajdoZEE9PSIsInZhbHVlIjoiOGpFMkhlV0YzQTRxa1E0Mmhpa0hcL1N5QlE4KzU2ckN6M3h1c3RTVkFFUlFoQ1lIaEMzMk1DNDR5amhFek4wWFAiLCJtYWMiOiI0NzhlYjZjNzI3MmI0YzBjN2E1MjkwNTI1MjE1MzVmMzVmOTViMDlkODdlMzg4MjBiY2U0MmQ2NTdlNjNkMDFlIn0=\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"It should be http (or) https:\\/\\/yourservername\\/auth\\/google\\/callback\"},\"google_client_id\":{\"value\":\"eyJpdiI6IkVzem94ZEhmdkZlUncwSitXd3hrQ3c9PSIsInZhbHVlIjoiVFMyYmlObDJFeFdEME5VbVwvQUdBYWtWMVZKR0NwSEh3VkJlSFh6TDdVRktMSlpYa2tsSTN1MTRmTXhYN21rbmFRbGRsNDY1ekJHeGQ1TjdLNmZtMWNYdGo0U25wbnJ1ZjVCbUJxK2JQS1dWcFVpWnF2cjJ2MHZWcytlcjVNd1lBIiwibWFjIjoiZjZmZWZmNzY2Mjk0ZTRlOGI4NWEwNTY4NjRiZTIyZmFmMTY0NmE0MjljMzdmZGNmYWZlY2ZkMzBlY2VlMGFlOCJ9\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Google Plus Client ID\"},\"Google_client_secret\":{\"value\":\"eyJpdiI6ImVtVkZ1ZzMwYncxemJoWTY5NTErQVE9PSIsInZhbHVlIjoiWmdseFJaczdzNkJ0TTFycERyNGRabVJFbVpuMENaTTB2OFlsbG0wMEtkMzREYmg2K1ZobUdIcDgzSWYweE54eCIsIm1hYyI6ImE3ZDc0ZTYxM2NmMWM3Y2FiODMxZTIwYTNhMjhjOTZjZDVjYWRjMjE0ZTVkNWE4Y2FkZWMxYjRkZTE5MDRmYmQifQ==\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Google Client Secret Key\"},\"google_redirect_url\":{\"value\":\"eyJpdiI6IlV3Y3RxelFnZHZIY1FYaG4xWXFlbnc9PSIsInZhbHVlIjoid3ZLc2d0UmVyYThWQ3dBUnBiOTQ4WEQ4SlhUdGtNY21qUkpBRFdsME43MjlPT1F6OTErNjdudjJ2OEdNM0hMRiIsIm1hYyI6IjliNDBkZTViYzExYWE2MjBmMDhkODQyNDdlYjBjMDMyZmJkY2ExMmFlZjYyYzZhNTdlOGVjNmM2Njc3NmI1MjgifQ==\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"http (or) https:\\/\\/yourserver.com\\/auth\\/google\\/callback\"}}', 'Add/Update Settings for Social Logins (Facebook and Google plus)', '2016-10-28 10:56:37', '2018-03-07 03:52:38', '156.213.84.209', NULL, NULL, 1790, 1, 'settings', 1),
(13, 'اعدادات نظام الرسائل', 'messaging_system', 'messaging-system', '', '{\r\n   \"owner\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"admin\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"staff\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"student\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"parent\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"librarian\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"assistant_librarian\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"educational_supervisor\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"secondary_parent\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   },\r\n   \"student_guide\":{\r\n      \"value\":\"1\",\r\n      \"type\":\"checkbox\",\r\n      \"extra\":\"\",\r\n      \"tool_tip\":\"\"\r\n   }\r\n}', '', '2016-10-29 11:03:37', '2018-03-15 06:11:43', '51.39.213.36', NULL, NULL, 1790, 1, 'settings', 1),
(14, 'جدول الحصص', 'time_table', 'time-table', '', '{\"start_time\":{\"value\":\"7\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Enter the strat time to be shown in timetable management\"},\"end_time\":{\"value\":\"13\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Enter the end time to be shown in timetable management\"},\"default_sessions_needed\":{\"value\":\"60\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Default sessions needed at subject allocation\"}}', 'These will be used in timetable management', '2016-11-30 12:39:07', '2017-12-22 11:24:13', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(15, 'إعدادات المكتبة', 'library_settings', 'library-settings', '', '{\"maximum_issues_student\":{\"value\":\"2\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Maximum issues for student\"},\"maximum_issues_staff\":{\"value\":\"4\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Maximum Issues for Staff\"},\"maximum_days_to_return_student\":{\"value\":\"4\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Student maximum days to return\"},\"maximum_days_to_return_staff\":{\"value\":\"6\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Staff maximum days to retrun\"},\"library_series_prefix\":{\"value\":\"LIB\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Serial number prefix like college code\"},\"library_series_number_length\":{\"value\":\"3\",\"type\":\"number\",\"extra\":\"\",\"tool_tip\":\"Length of series number\"}}', 'جميع إعدادات المكتبة', '2016-12-08 06:54:53', '2018-02-01 07:31:07', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(16, 'اعدادات شهادات حسن السلوك', 'bonafide_settings', 'bonafide-settings', '', '{\"print_header\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print or ignore header\"},\"print_footer\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print or ignore footer\"},\"print_date\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print or ignore date on certificate\"},\"print_reference_number\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print or ignore reference number\"},\"right_sign_image\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show right sign image\"},\"right_side_name\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show right side name\"},\"right_side_designation\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show right side designation\"},\"show_watermark\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show watermark image\"}}', '', '2017-01-05 10:00:35', '2017-12-31 06:15:27', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(17, 'محتوي شهادة حسن السلوك', 'bonafide_content', 'bonafide-content', '', '{\"logo\":{\"value\":\"wNERLaeilHuQKFN.png\",\"type\":\"file\",\"extra\":\"\",\"tool_tip\":\"Certificate Logo\"},\"content\":{\"value\":\"<td align=\\\"right\\\" style=\\\"direction:rtl;padding: 5px 10px;  font-size:16px;\\\">\\r\\n<p style=\\\"font-size: 16px; color: #333; line-height:30px;\\\">\\r\\n\\u0647\\u0630\\u0647 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062a\\u0642\\u0631 \\u0627\\u0646 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\\r\\n<strong style=\\\"font-size:18px; color:#007cff\\\"><u><i>{{$name}}<\\/i><\\/u><\\/strong> \\r\\n\\u0627\\u0644\\u0645\\u0642\\u064a\\u0645 \\u0641\\u0649 \\r\\n({{$address}})\\r\\n\\r\\n \\u0647\\u0648 \\u0637\\u0627\\u0644\\u0628 \\u0645\\u0645\\u062a\\u0627\\u0632 \\u0648\\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\\r\\n\\u0648\\u0647\\u0648 \\u064a\\u062f\\u0631\\u0633 \\u0641\\u0649 \\u0627\\u0644\\u0641\\u0635\\u0644 \\r\\n<strong style=\\\"font-size:18px; color:#007cff\\\"><u><i> {{$course_title}}<\\/i><\\/u><\\/strong>.<\\/p>\\r\\n<p style=\\\"font-size: 16px; color: #333; line-height:30px;\\\"> \\r\\n\\u0648\\u0643\\u0627\\u0646 \\u0637\\u0627\\u0644\\u0628 \\u0645\\u0637\\u064a\\u0639\\u0627 \\u0648\\u0645\\u062e\\u0644\\u0635\\u0627 \\u0648\\u0645\\u062c\\u062a\\u0647\\u062f\\u0627\\r\\n\\u0648\\r\\n\\u064a\\u062d\\u0645\\u0644 \\u0634\\u062e\\u0635\\u064a\\u0629 \\u0623\\u062e\\u0644\\u0627\\u0642\\u064a\\u0629 \\u062c\\u064a\\u062f\\u0629 \\r\\n<\\/p>\\r\\n\\r\\n<\\/td>\",\"type\":\"ckeditor\",\"extra\":\"\",\"tool_tip\":\"Content of the certificate\"},\"right_designation\":{\"value\":\"\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Right side designation name\"},\"right_side_name\":{\"value\":\"\\u0623\\u062d\\u0645\\u062f \\u0628\\u0646 \\u0645\\u062d\\u0645\\u062f \\u0627\\u0644\\u0639\\u0631\\u0641\\u062c\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Right side display name\"},\"right_side_sign\":{\"value\":\"ufhwpHyrlHTjqMf.png\",\"type\":\"file\",\"extra\":\"\",\"tool_tip\":\"Right side sign image\"},\"watermark_image\":{\"value\":\"aK0duoZOiKWPovc.png\",\"type\":\"file\",\"extra\":\"\",\"tool_tip\":\"Upload watermark image\"}}', '', '2017-01-05 10:38:31', '2017-12-31 06:37:01', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(18, 'حقول شهادات الصفوف الدراسية ', 'transfer_certificate_fields', 'transfer-certificate-fields', '', '{\"name_of_student\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display Name Of The Pupil\"},\"father_guardian_name\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display fathername \\/ Guardian name\"},\"mother_name\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display mother name\"},\"nationality\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display nationality\"},\"candidate_caste\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display caste\"},\"date_of_admission_with_class\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display date of join, class\"},\"date_of_birth\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display date of birth\"},\"last_class_studied\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Dispaly last studied class\"},\"last_taken_exam_and_result\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display board exam result\"},\"whether_failed_if_once_twice_in_the_same_class\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Dispaly Failed exam status\"},\"promotion_class\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Dispaly promotion class\"},\"total_working_days\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Total working days of year\"},\"total_present_days\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display present days\"},\"ncc_boy_scout_girls_guide\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Diaplay NCC or Scout or Guide details\"},\"games_played_or_extra_curricular_activities\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display other activities\"},\"general_conduct\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display conduct\"},\"date_of_apply\":{\"value\":0,\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Dispaly apply date\"},\"date_of_issue\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display issue date\"},\"reason\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display reason \"},\"remarks\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Dispaly remarks\"},\"first_admission_in_the_school\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Display First Admission in the schol\"}}', 'This module holds the management of the fields to display on the certificate', '2017-01-05 13:31:07', '2017-12-31 06:56:42', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(19, 'اعدادات شهادات الصفوف الدراسية', 'transfer_certificate_settings', 'transfer-certificate-settings', '', '{\"print_header\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print header\"},\"print_footer\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print footer\"},\"print_date\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print date\"},\"print_reference_number\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Print reference number\"},\"show_left_side_name\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show left side name\"},\"show_left_side_designation\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show left side designation\"},\"show_left_side_sign\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show left side image\"},\"show_middle_name\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show middle name\"},\"show_middle_designation\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show middle designation\"},\"show_middle_sign\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show middle sign\"},\"show_right_side_name\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show right side name\"},\"show_right_side_designation\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"show right side designation\"},\"show_right_side_sign\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show right side sign\"},\"show_watermark\":{\"value\":\"1\",\"type\":\"checkbox\",\"extra\":\"\",\"tool_tip\":\"Show watermark\"}}', 'This module holds the settings part for transfer certificate. The settings like printing options', '2017-01-06 04:29:52', '2017-12-22 11:26:28', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(20, 'اعدادات بطاقات الهوية', 'id_card_settings', 'id-card-settings', '', '{\"institute_address\":{\"value\":\"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629 | \\u0669\\u0662\\u0660\\u0660\\u0666\\u0665\\u0660\\u0660\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Institute address\"},\"institute_title\":{\"value\":\"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Title of the institute to display on top\"},\"select_template\":{\"value\":\"template_1\",\"type\":\"select\",\"extra\":{\"total_options\":\"3\",\"options\":{\"template_1\":\"Template 1\",\"template_2\":\"Template 2\"}},\"tool_tip\":\"Select template\"},\"template_1_logo\":{\"value\":\"qAAU6aCsrZckWR7.png\",\"type\":\"file\",\"extra\":{\"total_options\":\"3\",\"options\":{\"template_1\":\"Template 1\",\"template_2\":\"Template 2\"}},\"tool_tip\":\"Logo for template 1\"},\"top_logo\":{\"value\":\"xbOidMm9xcoF22B.png\",\"type\":\"file\",\"extra\":{\"total_options\":\"3\",\"options\":{\"template_1\":\"Template 1\",\"template_2\":\"Template 2\"}},\"tool_tip\":\"Upload logo\"}}', 'This is used to setting the id card logo and address in idcard', '2017-01-07 06:09:36', '2018-02-23 05:49:10', '51.39.168.90', NULL, NULL, 1790, 1, 'settings', 1),
(21, 'حقول بطاقة الهوية', 'id_card_fields', 'id-card-fields', '', '{\"1-front_first_item_title\":{\"value\":\"name\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"Front first item title\"},\"11-front_first_item\":{\"value\":\"name\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"First Item to display\"},\"12-front_second_item_title\":{\"value\":\"student_number\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Second item title\"},\"13-front_second_item\":{\"value\":\"roll_no\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Second Item to display\"},\"14-front_third_item_title\":{\"value\":\"blood_group\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Third item title\"},\"15-front_third_item\":{\"value\":\"skip\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Third Item to display\"},\"16-front_fourth_item_title\":{\"value\":\"course_information\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Fourth item title\"},\"17-front_fourth_item\":{\"value\":\"course_title\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Fourth Item to display\"},\"18-front_fifth_item_title\":{\"value\":\"address_1\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Fifth item title\"},\"19-front_fifth_item\":{\"value\":\"skip\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Fifth Item to display\"},\"20-front_sixth_item_title\":{\"value\":\"email\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Sixth item title\"},\"21-front_sixth_item\":{\"value\":\"skip\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Sixth Item to display\"},\"22-front_seventh_item_title\":{\"value\":\"emergency_number\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Seventh item title\"},\"23-front_seventh_item\":{\"value\":\"skip\",\"type\":\"select\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Seventh Item to display\"},\"24-back_first_item_title\":{\"value\":\"headquarters\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back first item title\"},\"25-back_first_item_text\":{\"value\":\"\\u0661\\u0663 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0645\\u0646\\u0627\\u0631\\u0627\\u062a - \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631\\u0629\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back first item text\"},\"26-back_second_item_title\":{\"value\":\"phone_number\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back second title\"},\"27-back_second_item_text\":{\"value\":\"\\u0660\\u0665\\u0664\\u0668\\u0663\\u0660\\u0660\\u0663\\u0666\\u0667\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Second text\"},\"28-back_third_item_title\":{\"value\":\"email\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back third item title\"},\"29-back_third_item_text\":{\"value\":\"info@sasbit.com\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back third item text\"},\"30-back_fourth_item_title\":{\"value\":\"website\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back fourth item title\"},\"31-back_fourth_item_text\":{\"value\":\"www.sasbit.com\",\"type\":\"text\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Back fourth item text\"},\"31-front_total_fields\":{\"value\":\"11\",\"type\":\"number\",\"extra\":{\"total_options\":\"15\",\"options\":{\"skip\":\"Skip\",\"admission_no\":\"admission_number\",\"roll_no\":\"student_number\",\"name\":\"Name\",\"course_title\":\"course_information\",\"fathers_name\":\"fathers_name\",\"date_of_birth\":\"date_of_birth\",\"address_full\":\"full_address\",\"address_middle\":\"city_address\",\"address_small\":\"address_of_city_and_state\",\"gender\":\"gender\",\"blood_group\":\"blood_group\",\"email\":\"email\",\"validity\":\"validity_information\",\"mobile\":\"mobile_number\",\"home_phone\":\"home_phone_number\"}},\"tool_tip\":\"Enter first n fields to display on front\"}}', 'With this module you can manage the contents order and items on ID card', '2017-01-07 07:51:13', '2018-08-02 07:49:31', '37.125.48.109', NULL, NULL, 1790, 2, 'settings', 1),
(22, 'الملفات المسموح بها علي النظام', 'allowed_files', 'allowed_sys_files', NULL, '{\"student_achievement_file_extensions\":{\"value\":\".xlsx,.docx,.pdf,.jpg,.png,.mp4,.mp3,.jpeg\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"extensions only are allowed\"}}', 'edit the files extensions allowed in the system', NULL, '2018-03-10 18:40:43', '::1', NULL, 0, 1790, 1, 'settings', 1),
(23, 'الملفات المسموح بها فى الواجبات', 'allowed_home_work_files', 'allowed_HW_files', NULL, '{\"homework_allowed_files\":{\"value\":\".pdf,.xlsx\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"extensions only are allowed\"}}', 'edit the files extensions allowed in the system', NULL, '2018-10-08 00:04:19', '::1', NULL, NULL, 1790, 2, 'settings', 1),
(24, 'الملفات المسموح بها فى الرسائل', 'allowed_messages_files', 'allowed_messages_files', NULL, '{\"homework_allowed_files\":{\"value\":\".pdf,.xlsx\",\"type\":\"text\",\"extra\":\"\",\"tool_tip\":\"extensions only are allowed\"}}', 'edit the files extensions allowed in the system', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'skills',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` enum('single','married','divorced') COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fathers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mothers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_tongue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address_lane1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_lane2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_experience_years` int(11) NOT NULL,
  `total_experience_month` int(11) NOT NULL,
  `experience_information` text COLLATE utf8_unicode_ci NOT NULL,
  `other_information` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `extra_fields` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentattendance`
--

CREATE TABLE `studentattendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `semester` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `total_class` int(11) NOT NULL DEFAULT '1',
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activities` text COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `health_status` text COLLATE utf8_unicode_ci,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'studentattendance',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentpromotions`
--

CREATE TABLE `studentpromotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('admission','promoted','detained','completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admission',
  `from_academic_id` bigint(20) UNSIGNED NOT NULL,
  `from_course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `from_course_id` bigint(20) UNSIGNED NOT NULL,
  `to_academic_id` bigint(20) UNSIGNED NOT NULL,
  `to_course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `to_course_id` bigint(20) UNSIGNED NOT NULL,
  `from_year` bigint(20) UNSIGNED NOT NULL,
  `from_semister` int(11) NOT NULL,
  `to_year` bigint(20) UNSIGNED NOT NULL,
  `to_semister` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'studentpromotions',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roll_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `course_parent_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` enum('single','married','divorced') COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fathers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mothers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_tongue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_occupation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_income` decimal(10,2) NOT NULL,
  `parent_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_address_lane1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_address_lane2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_phone1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_phone2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_user_id` bigint(20) UNSIGNED NOT NULL,
  `guardian_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `relationship_with_guardian` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_lane1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_lane2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `previous_institute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `previous_institute_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `previous_highest_qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `previous_highest_qualification_percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year_passing` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semister` int(11) NOT NULL,
  `other_information` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `extra_fields` text COLLATE utf8_unicode_ci,
  `record_updated_by` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `student_audio` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'students'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_documents`
--

CREATE TABLE `student_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(220) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student_documents',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjectpreferences`
--

CREATE TABLE `subjectpreferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'subjectpreferences',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maximum_marks` int(11) NOT NULL,
  `pass_marks` int(11) NOT NULL,
  `is_lab` tinyint(4) NOT NULL,
  `is_elective_type` tinyint(4) NOT NULL,
  `internal_marks` bigint(20) NOT NULL,
  `external_marks` bigint(20) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'subjects',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_title`, `subject_code`, `slug`, `maximum_marks`, `pass_marks`, `is_lab`, `is_elective_type`, `internal_marks`, `external_marks`, `status`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(34, 'الفقة', '39124', 'alfk2792-6608fed46a1b549b41ccedf55c384ac6ce676498', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:38:18', '2018-04-10 07:38:18', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(36, 'لغتي', '9121', 'lghty157-ff33b39682af8bf42eda94b7f455698d7cdbc6af', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:38:45', '2018-04-10 07:38:45', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(37, 'الرياضيات', '11913', 'alryadyat1281-21bf2a501a6dc7e8e534aa490ed35491094c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:39:01', '2018-04-10 07:39:01', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(38, 'العلوم', '41156', 'alaalom1843-03d94cefaa8b830bfe3c2e21cc6796681cdb9b', 100, 40, 1, 0, 20, 60, 'Active', '2018-04-10 07:39:12', '2018-04-10 07:39:12', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(39, 'لغتي / التهيئة والاستعداد', '33465', 'lghty-althye-oalastaadad1180-a2ae225cb7d8a48706d8f', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:39:58', '2018-04-10 07:39:58', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(40, 'التربية الفنية', '32591', 'altrby-alfny570-ac7725efef786d1f85b85c212fce2ecd51', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:40:10', '2018-04-10 07:40:10', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(41, 'التوحيد', '9155', 'altohyd478-e15dfefa329f08cdc3893b8a3bbfc1187e5e6b2', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:40:22', '2018-04-10 07:40:22', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(42, 'التربية البدنية', '6776', 'altrby-albdny1765-12860c09ea1103de1966151d9b6d0908', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:40:32', '2018-04-10 07:40:32', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(43, 'القرآن الكريم', '46595', 'alkraan-alkrym2223-5f518e834a773628010873249ad77a1', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:40:45', '2018-04-10 07:40:45', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(44, 'القرآن الكريم (التحفيظ)', '23079', 'alkraan-alkrym-althfyth1103-d70c2f751fd6503e30f5d4', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:40:57', '2018-04-10 07:40:57', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(45, 'التربية الأسرية', '30461', 'altrby-alasry575-2720874928fe7401030eef5ce2b1fe642', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:41:31', '2018-04-10 07:41:31', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(46, 'الحديث', '35602', 'alhdyth1695-7e524cf7d87ab000fbf56e11a113e74acb911f', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:43:32', '2018-04-10 07:43:32', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(47, 'التربية الاجتماعية والوطنية', '5553', 'altrby-alajtmaaay-oalotny1361-c79feaa836be37e48601', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:43:44', '2018-04-10 07:43:44', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(48, 'We Can', '4602', 'we-can1559-30ec89ae9e8ef71e525aa93bf4a47317ae6f090', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:43:57', '2018-04-10 07:43:57', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(49, 'Get Ready', '55271', 'get-ready2334-9bdad6831fe7ee3310a67c3f36711d3f5236', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:44:10', '2018-04-10 07:44:10', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(50, 'Smart Class', '1157', 'smart-class1338-65e33f86779e6214cd83f5ecef5c2ac7e6', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:44:19', '2018-04-10 07:44:19', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(51, 'لغتي الجميلة', '50125', 'lghty-aljmyl166-082b83f1a2450d80172ad3edfba05b1677', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:44:35', '2018-04-10 07:44:35', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(52, 'تجويد التحفيظ', '30377', 'tjoyd-althfyth2143-16133db5078663f790d2a2264a60226', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 07:44:57', '2018-04-10 07:44:57', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(53, 'تجويد (تحفيظ)', '4724', 'tjoyd-thfyth2273-661c682a73569c8383577da0020268c47', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:10:47', '2018-04-10 08:10:47', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(54, 'لغتي الخالدة', '41883', 'lghty-alkhald66-20f885b611e78133b316770bd4438db68c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:11:59', '2018-04-10 08:11:59', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(55, 'التفسير', '11808', 'altfsyr1055-335e34dad07b586b38ccf368d6ad90c1725a56', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:12:15', '2018-04-10 08:12:15', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(56, 'Lift Off', '14799', 'lift-off197-ee80a2c1f186994b0b146e4eb72f783ead6392', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:12:27', '2018-04-10 08:12:27', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(57, 'Super Goal', '36359', 'super-goal2790-14bcca40d584755b60b20a2b6ccef632cfd', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:12:37', '2018-04-10 08:12:37', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(58, 'الحاسب الآلي', '6274', 'alhasb-alaaly53-8d78dfeed6bed25573266183e77d6a79b8', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:12:47', '2018-04-10 08:12:47', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(59, 'Full Blast', '6272', 'full-blast1597-17cac5d2c0dc8a6db1a18c62f312896a3cd', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:13:22', '2018-04-10 08:13:22', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(60, 'الأحياء', '32333', 'alahya223-54af5bfd7bc9cd453edabb853d8e2c3e0c3ced5e', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:17:02', '2018-04-10 08:17:02', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(61, 'الفيزياء', '27309', 'alfyzya930-b21663280029026dee02f0c25c9439ce6895843', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:17:13', '2018-04-10 08:17:13', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(62, 'الكيمياء', '11540', 'alkymya659-bd29b20c1d0b75bad8d0d721cf1a3abfbc97125', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:17:25', '2018-04-10 08:17:25', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(63, 'مهارات البحث ومصادر المعلومات', '59189', 'mharat-albhth-omsadr-almaalomat1169-77566af4f601ac', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:17:32', '2018-04-10 08:17:32', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(64, 'تطبيقات اللغة العربية', '1140', 'ttbykat-allgh-alaarby2494-9310c900d35e91228b9d6ca8', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:17:44', '2018-04-10 08:17:44', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(65, ' التربية الأسرية والصحية', '2907', 'altrby-alasry-oalshy1794-561ea06fb953c33acfc2be8f7', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:18:01', '2018-04-10 08:18:01', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(66, 'Flying High 1', '36684', 'flying-high-1215-f04e46a05e5325df189afc427c0204731', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:18:15', '2018-04-10 08:18:15', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(67, 'Mega Goal 1', '54507', 'mega-goal-1681-2f37eb30f6d1011af58316e41ddabc87716', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:18:22', '2018-04-10 08:18:22', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(68, 'Traveller 1', '37162', 'traveller-1661-27c9a0badddcfb50b6f4ad96f244a055b90', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:18:39', '2018-04-10 08:18:39', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(69, 'القراءات', '46056', 'alkraat837-851e720cfe11e5c7da250f7306b25926fb7932c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:18:59', '2018-04-10 08:18:59', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(70, 'علوم القرآن', '23266', 'aalom-alkraan2557-771fe9c76a5e8924d805021fff2bce30', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:19:10', '2018-04-10 08:19:10', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(71, 'المهارات التطبيقية', '17763', 'almharat-alttbyky2801-e43db96b336551d38e480f8ec3a4', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:19:21', '2018-04-10 08:19:21', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(72, 'التربية البدنية والصحية', '6979', 'altrby-albdny-oalshy1398-7d971ad8a5ba79d48f8c2bfc9', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:19:36', '2018-04-10 08:19:36', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(73, 'Mega Goal 2', '33344', 'mega-goal-2388-139236cc73c4d3ead7adbee9bd5f9bc6096', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:19:51', '2018-04-10 08:19:51', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(75, 'اللغة العربية - التطبيقات', '52115', 'allgh-alaarby-alttbykat828-db3066063fe0ac7b3a21ade', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:20:49', '2018-04-10 08:20:49', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(76, 'Flying High 2', '54855', 'flying-high-2122-4f43ee8ca62abfdcd50fd6bcacddc37ba', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:21:21', '2018-04-10 08:21:21', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(77, 'Traveller 2', '24714', 'traveller-22671-c7c3a1055e5f08d5ab688049350d841fb3', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:21:27', '2018-04-10 08:21:27', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(78, 'Traveller 3', '25200', 'traveller-32683-5be0521824dd646e68546a82bc9c30d25b', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:22:42', '2018-04-10 08:22:42', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(79, 'Mega Goal 3', '1174', 'mega-goal-32038-2af75938a194e0888e6f99ec3ede4afa8b', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:22:48', '2018-04-10 08:22:48', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(80, 'القراءة والتواصل اللغوي', '30275', 'alkra-oaltoasl-allghoy1882-1cf3ad92a4bd95be2a5b8da', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:23:27', '2018-04-10 08:23:27', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(81, 'النحو والصرف', '54154', 'alnho-oalsrf2611-dbe997afdc51607eb5b24c57dae884924', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:23:36', '2018-04-10 08:23:36', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(82, 'الأدب العربي', '39543', 'aladb-alaarby592-4af53e0d69c07734f28648136b3cd3056', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:23:44', '2018-04-10 08:23:44', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(83, 'التاريخ والتربية الوطنية', '53100', 'altarykh-oaltrby-alotny1785-48000f068607246f77f8bd', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:24:04', '2018-04-10 08:24:04', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(84, 'العلوم الإدارية 1', '47178', 'alaalom-aledary-11494-7ad3ff986603c9c9605548427997', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:24:44', '2018-04-10 08:24:44', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(85, 'المهارات الإدارية', '22849', 'almharat-aledary2994-b806b3b9e3c00100864021507fcae', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:24:53', '2018-04-10 08:24:53', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(86, 'Flying High 4', '11680', 'flying-high-42124-8dd62510c8239c748e212bc7ee1f1923', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:25:31', '2018-04-10 08:25:31', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(87, 'Mega Goal 4', '38945', 'mega-goal-42560-4279dc62fac40a132c3ae5577a6dc488e8', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:25:38', '2018-04-10 08:25:38', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(88, 'Traveller 4', '19206', 'traveller-41456-1fd2160d73d6d3cab85575a6e7e2f88ba1', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:25:45', '2018-04-10 08:25:45', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(89, 'علم الأرض', '11080', 'aalm-alard888-251343cca5f16809a4e38ca2498b92028d80', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:25:59', '2018-04-10 08:25:59', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(90, 'البلاغة والنقد', '25827', 'alblagh-oalnkd2786-34c94ce617bfd1352ff88b4d660e95f', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:26:13', '2018-04-10 08:26:13', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(91, 'الجغرافيا والتربية الوطنية', '36522', 'aljghrafya-oaltrby-alotny1034-12e1fbb72a5633cd1656', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:26:36', '2018-04-10 08:26:36', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(92, 'العلوم الإدارية 2', '36067', 'alaalom-aledary-22953-ed049782573ce732c80dd05f2df6', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:27:51', '2018-04-10 08:27:51', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(93, 'Traveller 5', '33777', 'traveller-51836-e660e279b651b100bc4528df07c95e4e59', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:29:01', '2018-04-10 08:29:01', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(94, 'Mega Goal 5', '58474', 'mega-goal-52229-65f05ce8ee529f625a640ecca10b8c2810', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:29:06', '2018-04-10 08:29:06', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(95, 'Flying High 5', '3888', 'flying-high-5763-613fe652ba15d00cb265e734f21b90b46', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:29:14', '2018-04-10 08:29:14', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(96, 'العلوم الإدارية 3', '31070', 'alaalom-aledary-32029-53a1d01c87b5b196f3f24c317d9f', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:30:18', '2018-04-10 08:30:18', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(97, 'Traveller 6', '8584', 'traveller-6767-be1b4ce22857127ce4761c8de6cbbc3596c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:30:51', '2018-04-10 08:30:51', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(98, 'Flying High 6', '51097', 'flying-high-6929-f92e15c8a18f80e2096ce5855385da682', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:30:59', '2018-04-10 08:30:59', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(99, 'Mega Goal 6', '4570', 'mega-goal-661-915838f291c6a3749a73e621f4cad5fa7597', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:31:06', '2018-04-10 08:31:06', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(101, 'تفسير5', '50318', 'tfsyr51306-d5ec8fab88d5026ca03232ddf91c72c50300fcd', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:32:04', '2018-04-10 08:32:04', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(102, 'الفقه 7', '21020', 'alfkh-71277-f1eaed88dfcdf414250dbcc849c4ef3454c565', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:32:12', '2018-04-10 08:32:12', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(103, 'مهارات نفسية واجتماعية', '40837', 'mharat-nfsy-oajtmaaay143-a8b3c88c1b5c09eb4997b74d8', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:32:38', '2018-04-10 08:32:38', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(104, 'العلوم الإدارية 4', '24420', 'alaalom-aledary-4205-3bf2fa337d414493efdc4bce521a9', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:33:18', '2018-04-10 08:33:18', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(105, 'الكفايات اللغوية 5', '4287', 'alkfayat-allghoy-5712-6636dc79fd40e8ea589148d06684', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:34:36', '2018-04-10 08:34:36', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(106, 'الكفايات اللغوية 6', '9004', 'alkfayat-allghoy-6257-5255edf8bb9c587b1f0c1c6a2b92', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:34:58', '2018-04-10 08:34:58', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(107, 'الكفايات اللغوية 7', '21535', 'alkfayat-allghoy-71811-cc79e9556fef88af8c752acba3b', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:35:08', '2018-04-10 08:35:08', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(108, 'فقه 2', '58713', 'fkh-23027-e00735ac33b4f37512ff96d072916e15572fe991', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:35:23', '2018-04-10 08:35:23', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(109, 'التفسير2', '4165', 'altfsyr2303-ac77ec5bead40c191c1e0bc03e4db8bf502e59', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:35:32', '2018-04-10 08:35:32', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(110, 'توحيد2', '16221', 'tohyd21243-ee54f02447dcd58b06ef4fce82b5bec6ee088e5', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:35:44', '2018-04-10 08:35:44', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(111, 'الحديث2', '4026', 'alhdyth2269-ffb6dbe97607eef8f2a3c72474ae83e604d44d', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:35:52', '2018-04-10 08:35:52', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(112, 'رياضيات3', '3024', 'ryadyat32060-c04658990c37f36288789bbeae0a71bd6aa6c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:36:14', '2018-04-10 08:36:14', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(113, 'رياضيات4', '11697', 'ryadyat42921-4c8c6c4d8d267a12c6d6a86501f942ed98b33', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:36:18', '2018-04-10 08:36:18', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(114, 'أحياء2', '28168', 'ahya22229-deb340c099632479c60576fd23cdc3e7877e34f6', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:36:27', '2018-04-10 08:36:27', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(115, 'كيمياء2', '3223', 'kymya21774-563286e15a72a1b692313dd9dabfd520aa0342e', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:36:33', '2018-04-10 08:36:33', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(116, 'فيزياء2', '8551', 'fyzya21345-fd17eb824e9a18699e114a51613ff5ae170a8bb', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:36:51', '2018-04-10 08:36:51', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(117, 'فيزياء3', '19113', 'fyzya32682-c409feb10b5238be91d96786bd3cd88d62e2e17', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:36:57', '2018-04-10 08:36:57', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(118, 'كيمياء3', '5054', 'kymya3804-dea7f367887667ba7d75694e54f8af876f781003', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:37:12', '2018-04-10 08:37:12', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(119, 'رياضيات5', '44321', 'ryadyat52186-6ec0f4774e63df0a2929140304f0784f1d2b6', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:37:26', '2018-04-10 08:37:26', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(120, 'رياضيات6', '8691', 'ryadyat6593-15b37f4f4963414631b3f758f56eef71e87ddb', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:37:34', '2018-04-10 08:37:34', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(121, 'فيزياء4', '925', 'fyzya4271-7b96213f22300957e88460bb4e4a4a7b2051d843', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:37:44', '2018-04-10 08:37:44', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(122, 'كيمياء4', '35933', 'kymya42549-d8a5e084088167feb5b35869bde118fec30cf05', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:37:51', '2018-04-10 08:37:51', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(123, 'أحياء3', '29013', 'ahya32197-af3817b5583e8b92468299226f23881292afc980', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:05', '2018-04-10 08:38:05', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(124, 'اجتماعيات', '19880', 'ajtmaaayat2816-510b32b455fa9cb5ebceb310701ae6c6a0b', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:18', '2018-04-10 08:38:18', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(125, 'حديث 1', '24141', 'hdyth-11618-d0758566ff3b75faa36a5e5e2c30a1f63818c3', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:25', '2018-04-10 08:38:25', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(126, 'الكفايات اللغوية 1', '36560', 'alkfayat-allghoy-1412-eb0dfdabc125ce27ba2f2b1878c8', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:34', '2018-04-10 08:38:34', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(127, 'الكفايات اللغوية 2', '816', 'alkfayat-allghoy-2333-2218a5bc5b54a7218fdb6cf35652', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:48', '2018-04-10 08:38:48', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(128, 'الكفايات اللغوية 3', '45800', 'alkfayat-allghoy-3940-4286928728aeaaeaeb06751b88fb', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:56', '2018-04-10 08:38:56', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(129, 'الكفايات اللغوية 4', '58383', 'alkfayat-allghoy-42718-81d22fe81d9b8fd6c1edc190a77', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:38:59', '2018-04-10 08:38:59', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(130, 'الحاسب وتقنية المعلومات 1', '7931', 'alhasb-otkny-almaalomat-11043-209ae6ce178bfbc8380c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:39:09', '2018-04-10 08:39:09', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(131, 'الحاسب وتقنية المعلومات 2', '28797', 'alhasb-otkny-almaalomat-2864-ee38f83d5fb07efca0936', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:39:12', '2018-04-10 08:39:12', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(132, 'رياضيات1', '8636', 'ryadyat12123-4f60a929a1b24a01f1d917b00b1f6ba1fdea4', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:39:22', '2018-04-10 08:39:22', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(133, 'رياضيات2', '13637', 'ryadyat22557-b40daf2e4a2a1d177c01b2cbce213691e0dff', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:39:35', '2018-04-10 08:39:35', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(134, 'أحياء1', '45101', 'ahya12216-9caca6d748c37abf48e0ad635c8282ef27322600', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:39:48', '2018-04-10 08:39:48', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(135, 'فيزياء1', '53839', 'fyzya1205-e58c1e267b3932f3ecdd48ba259b428ba7a5c80e', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:39:53', '2018-04-10 08:39:53', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(136, 'كيمياء1', '15592', 'kymya1432-a33b136020eda7a9a52b4d0f34dbd4f6fec25936', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:40:09', '2018-04-10 08:40:09', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(137, 'التربية المهنية', '56575', 'altrby-almhny442-43de0ba26a6889193592c119dc2f1497d', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:40:17', '2018-04-10 08:40:17', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(138, 'التفسير1', '22404', 'altfsyr11346-f16db19166541b4c2bc7571309f424425ce7a', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:40:25', '2018-04-10 08:40:25', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(139, 'فقه 1', '52438', 'fkh-12127-92a7391f583eb606f99009f25bb34a5f4a55067a', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:40:34', '2018-04-10 08:40:34', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(140, 'المهارات الحياتية والتربية الاسرية', '15838', 'almharat-alhyaty-oaltrby-alasry2919-41ee4877a79a38', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:40:51', '2018-04-10 08:40:51', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(141, 'توحيد1', '53738', 'tohyd12198-8dbeb78f9bef4016b3c31dd65e5642addabbe80', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:40:58', '2018-04-10 08:40:58', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(142, 'علم البيئة', '32871', 'aalm-albye2620-7acdbe226b1ecdd4fa09fdd604fccf3a4c9', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:41:06', '2018-04-10 08:41:06', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(143, 'فقه 3', '1278', 'fkh-31321-744263d6f03627d29a7f4e84f219a26a22c2e249', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:41:26', '2018-04-10 08:41:26', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(144, 'الحاسب وتقنية المعلومات 3', '48227', 'alhasb-otkny-almaalomat-3154-328f8da0282337b56b3cd', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:41:35', '2018-04-10 08:41:35', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(145, 'التدريب العملي', '18595', 'altdryb-alaamly1684-a9b6bff224d38ae509cf891434549c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 08:41:48', '2018-04-10 08:41:48', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(146, 'التجويد', '317', 'altjoyd2692-3f2eda4216d35fadf18791413d217ac889308a', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 09:31:24', '2018-04-10 09:31:24', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(147, 'الدراسات الاجتماعية والوطنية', '52502', 'aldrasat-alajtmaaay-oalotny667-ce13f1f1d90c66d6b6a', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 09:40:02', '2018-04-10 09:40:02', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1),
(149, 'Language Art', '', 'language-art2119-babbb2f91a861d2a00d208c7a6035cfab', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:29:45', '2018-04-24 01:29:45', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(150, 'Social Studies', '', 'social-studies2209-5ae2d1abdb0fef4fe6f6135b0a70350', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:29:54', '2018-04-24 01:29:54', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(151, 'Math', '', 'math2803-948a7a2e4eea270023c07a71573450b0a3ed1499', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:30:04', '2018-04-24 01:30:04', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(152, 'Science', '', 'science180-0f5cfad35d33e2c5490c91d58138d4166659325', 100, 40, 1, 0, 20, 60, 'Active', '2018-04-24 01:30:11', '2018-04-24 01:30:11', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(153, 'Chemistry', '', 'chemistry117-8480da89375213c4acc68e9f615cf4366525d', 100, 40, 1, 0, 20, 60, 'Active', '2018-04-24 01:30:30', '2018-04-24 01:30:30', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(154, 'Physics', '', 'physics1060-95102d09963fb0c5ebd92bec1219af8eed820f', 100, 40, 1, 0, 20, 60, 'Active', '2018-04-24 01:30:39', '2018-04-24 01:30:39', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(155, 'S.Project', '', 'sproject1513-ce49d242a0168419516ddfc8a89e382157be6', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:30:48', '2018-04-24 01:30:48', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(156, 'Organic Chemistry', '', 'organic-chemistry2142-3ea62f6243072451c4b3d0ee5c2f', 100, 40, 1, 0, 20, 60, 'Active', '2018-04-24 01:31:10', '2018-04-24 01:31:10', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(157, 'Biology', '', 'biology89-843d78ae67376e7b147970535031bed600b12a03', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:31:15', '2018-04-24 01:31:15', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(158, 'M. Biology', '', 'm-biology1871-eb2dd327763d801bc4240ff2173c0ba7df4d', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:31:22', '2018-04-24 01:31:22', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(159, 'French', '', 'french2045-3647c1ad5610c080f5e47791d41bbcad64576f2', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:31:29', '2018-04-24 01:31:29', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(160, 'College writing	', '', 'college-writing2956-a1484b523c16e78b0770dd7059463c', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:31:37', '2018-04-24 01:31:37', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(161, 'Calculus', '', 'calculus2839-a32b373f9622d18040ae8812132c9e647c108', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:31:57', '2018-04-24 01:31:57', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(162, 'Algebra2', '', 'algebra21390-ba34d8ec26f4e8311e7f1eeaed4d09cdab222', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:03', '2018-04-24 01:32:03', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(163, 'Geometry', '', 'geometry2113-72b0a38847f84348d5b2ab4641d4acf0f2ef8', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:08', '2018-04-24 01:32:08', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(164, 'Computer', '', 'computer265-1e09eb9387fe5f85ba8c3d7d34a65a682e299a', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:14', '2018-04-24 01:32:14', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(165, 'Art', '', 'art789-336fefc3294e043d2fb6f12c7dccf1b651579451', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:19', '2018-04-24 01:32:19', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(166, 'Health', '', 'health1053-4946c167c37babf5fc81f005d089a897b70a6b6', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:33', '2018-04-24 01:32:33', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(167, 'Tofel', '', 'tofel2509-535742bcdb2b205547b9aa883eaa11b95bf9452b', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:39', '2018-04-24 01:32:39', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(168, 'Algebra1', '', 'algebra11196-5d61d6023b53c01bb8102182ccff4b1e3a9ae', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:45', '2018-04-24 01:32:45', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(169, 'P.E', '', 'pe126-8cff0d1816bf3e88864ba9313d9b340b8bf682df', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:32:54', '2018-04-24 01:32:54', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(170, 'اقتصاد', '', 'aktsad523-3ae724cff72bdb0052562534aa9bacafef138f96', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-24 01:33:04', '2018-04-24 01:33:04', NULL, '51.36.68.102', 1878, NULL, 1, 'subjects', 1),
(171, 'Flying High 3', '', 'flying-high-3614-b94e6baa1027932272ba23877c9db1767', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-28 08:24:39', '2018-04-28 08:24:39', NULL, '51.39.99.5', 1790, NULL, 1, 'subjects', 1),
(172, 'تفسير التحفيظ', '', 'tfsyr-althfyth2610-75747d43f55a96baa41489a70981179', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-28 08:32:32', '2018-04-28 08:32:32', NULL, '51.39.99.5', 1790, NULL, 1, 'subjects', 1),
(173, 'اللغة العربية', '', 'allgh-alaarby2745-0134380c84aacd240c84b23440619c9d', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-28 08:44:32', '2018-04-28 08:44:32', NULL, '51.39.99.5', 1790, NULL, 1, 'subjects', 1),
(174, 'الجغرافيا', '', 'aljghrafya204-9fd1da96fd1d6ea9d932e7392e8c88171dde', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-28 09:03:20', '2018-04-28 09:03:20', NULL, '51.39.99.5', 1790, NULL, 1, 'subjects', 1),
(175, 'التاريخ', '', 'altarykh751-0ffcf3eb82a2818e14d9c52ed8b574ddffaf7b', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-28 09:03:29', '2018-04-28 09:03:29', NULL, '51.39.99.5', 1790, NULL, 1, 'subjects', 1),
(176, 'غياب', '', 'ghyab1769-f878315f3ca4a9de763d77b74e56f12c075e6ed5', 100, 40, 0, 0, 20, 60, 'Active', '2018-11-06 08:41:06', '2018-11-06 08:41:06', NULL, '37.125.33.126', 1790, NULL, 1, 'subjects', 1),
(177, 'علوم اسلامية', '', 'aalom-aslamy2265-b9a14128787eb9ea1772ff05572569ea6', 100, 40, 0, 0, 20, 60, 'Active', '2018-12-04 19:42:15', '2018-12-04 19:42:15', NULL, '89.237.145.114', 1790, NULL, 1, 'subjects', 2),
(178, 'اللغة الانجليزية', '', 'allgh-alanjlyzy2013-a8d6acbb8a893e82f301210e31446c', 100, 40, 0, 0, 20, 60, 'Active', '2018-12-04 22:03:15', '2018-12-04 22:03:15', NULL, '89.237.145.114', 1790, NULL, 1, 'subjects', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'subscriptions',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisors_staff`
--

CREATE TABLE `supervisors_staff` (
  `id` int(11) UNSIGNED NOT NULL,
  `supervisor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `staff_id` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'supervisors_staff',
  `branch_id` smallint(6) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `academic_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `timingset_id` bigint(20) UNSIGNED NOT NULL,
  `timingset_map_id` bigint(20) UNSIGNED NOT NULL,
  `timingset_details_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET latin1 NOT NULL DEFAULT 'timetable',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timingset`
--

CREATE TABLE `timingset` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET latin1 NOT NULL DEFAULT 'timingset',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timingset`
--

INSERT INTO `timingset` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(8, 'Daily', 'daily', 'Daily', '2016-12-13 08:52:32', '2018-08-12 05:52:36', '37.124.142.244', NULL, NULL, 1790, 2, 'timingset', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timingsetdetails`
--

CREATE TABLE `timingsetdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timingset_id` bigint(20) UNSIGNED NOT NULL,
  `period_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_break` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'timingsetdetails',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timingsetdetails`
--

INSERT INTO `timingsetdetails` (`id`, `timingset_id`, `period_name`, `start_time`, `end_time`, `is_break`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(4, 8, 'الاولي', '07:15:00', '08:00:00', 0, '2017-10-17 03:59:11', '2018-08-12 05:52:36', '37.124.142.244', NULL, NULL, 1790, 2, 'timingsetdetails', 1),
(5, 8, 'الثانية', '08:00:00', '08:45:00', 0, '2017-10-17 03:59:11', '2018-08-12 05:52:36', '37.124.142.244', NULL, NULL, 1790, 2, 'timingsetdetails', 1),
(6, 8, 'الثالثة', '08:45:00', '09:30:00', 0, '2017-10-17 03:59:11', '2018-08-12 05:52:36', '37.124.142.244', NULL, NULL, 1790, 2, 'timingsetdetails', 1),
(8, 8, 'الفسحة', '09:30:00', '09:50:00', 1, '2017-10-17 03:59:11', '2018-08-12 05:59:36', '37.124.142.244', NULL, NULL, 1790, 2, 'timingsetdetails', 1),
(15, 8, 'الرابعة', '09:50:00', '10:35:00', 0, '2018-08-12 05:59:36', '2018-08-12 06:03:13', '37.124.142.244', '37.124.142.244', 1790, 1790, 2, 'timingsetdetails', 1),
(16, 8, 'الخامسة', '10:35:00', '11:20:00', 0, '2018-08-12 05:59:36', '2018-08-12 06:03:13', '37.124.142.244', '37.124.142.244', 1790, 1790, 2, 'timingsetdetails', 1),
(17, 8, 'السادسة', '11:20:00', '12:05:00', 0, '2018-08-12 05:59:36', '2018-08-12 06:03:13', '37.124.142.244', '37.124.142.244', 1790, 1790, 2, 'timingsetdetails', 1),
(18, 8, 'فسحة الصلاة', '12:05:00', '12:20:00', 1, '2018-08-12 05:59:36', '2018-08-12 06:03:13', '37.124.142.244', '37.124.142.244', 1790, 1790, 2, 'timingsetdetails', 1),
(19, 8, 'السابعة', '12:20:00', '13:00:00', 0, '2018-08-12 05:59:36', '2018-08-12 06:03:13', '37.124.142.244', '37.124.142.244', 1790, 1790, 2, 'timingsetdetails', 1),
(20, 8, 'الثامنة', '13:00:00', '13:40:00', 0, '2018-08-12 05:59:36', '2018-08-12 06:03:13', '37.124.142.244', '37.124.142.244', 1790, 1790, 2, 'timingsetdetails', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timingsetmap`
--

CREATE TABLE `timingsetmap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `timingset_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'timingsetmap',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timingsetmap`
--

INSERT INTO `timingsetmap` (`id`, `day`, `timingset_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1),
(2, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1),
(3, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1),
(4, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1),
(5, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1),
(6, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1),
(7, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timingsetmap', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL DEFAULT '17',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `semester_num` int(1) DEFAULT '1',
  `academic_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `topic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'topics',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `subject_id`, `course_id`, `parent_id`, `semester_num`, `academic_id`, `topic_name`, `slug`, `description`, `sort_order`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(48, 34, 17, 82, 1, 1, 'تعظيم القرآن الكريم', 'taathym-alkraan-alkrym517-686e0f758eb36c471dda5d46', 'يتوضأ قبل قراءة القرآن الكريم. \r\nيستعيذ بالله من الشيطان الرجيم عند قراءة القرآن الكريم. \r\nينطق البسملة عندما يقرأ من أول السورة. \r\nينصت لقراءة القرآن الكريم. \r\nيطبق الآداب أثناء تلاوة القرآن الكريم. يضع المصحف في المكان اللائق به.', 1, '2018-04-12 07:40:02', '2018-04-15 06:58:05', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(49, 34, 17, 82, 1, 1, 'من سيرة نبينا محمد صلى الله عليه وسلم صدقه, أمانته, شجاعته', 'mn-syr-nbyna-mhmd-sl-allh-aalyh-oslm-sdkh-amanth-s', '', 1, '2018-04-12 07:40:53', '2018-04-15 06:58:00', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(50, 34, 17, 82, 1, 1, 'السلام', 'alslam1049-0f0d72228ae909f3395759fe52c35b7d58dfb4a', '', 1, '2018-04-12 07:41:06', '2018-04-15 06:57:56', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(51, 34, 17, 82, 1, 1, 'بر الوالدين', 'br-aloaldyn101-1c2d19ec2daf8c715aebca329116dbd3a8b', '', 1, '2018-04-12 07:41:18', '2018-04-15 06:57:51', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(52, 34, 17, 82, 1, 1, 'حق المعلم', 'hk-almaalm225-7b54713fc8c0bafca0fd740f1dc96a25c718', '', 1, '2018-04-12 07:41:31', '2018-04-15 06:57:46', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(53, 34, 17, 82, 1, 1, 'آداب قضاء الحاجة', 'aadab-kda-alhaj1633-2256fc8763ec662461c6c7b36d470f', '', 1, '2018-04-12 07:41:45', '2018-04-15 06:57:39', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(54, 34, 17, 83, 2, 1, 'الطهارة والنظافة', 'althar-oalnthaf2482-133a8c1a3ef4c1ffd6dce743ba0560', '', 1, '2018-04-12 08:00:53', '2018-04-15 07:05:27', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(55, 34, 17, 83, 2, 1, 'الوضوء', 'alodo1244-ff1d0e8a1d269e6869d26083a3460672294242e9', '', 1, '2018-04-12 08:01:10', '2018-04-15 07:05:39', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(56, 34, 17, 83, 2, 1, 'الصلوات المفروضة', 'alsloat-almfrod1266-e01d94c51e9bae05d5e8fdba7a89ae', '', 1, '2018-04-12 08:01:24', '2018-04-15 07:05:59', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(57, 34, 17, 83, 2, 1, 'صفة الصلاة ومبطلاتها', 'sf-alsla-ombtlatha370-8c5f39aac9c7ec3f22e35986e557', '', 1, '2018-04-12 08:01:56', '2018-04-15 07:06:06', '51.36.111.15', '51.36.108.22', 1790, 1790, 2, 'topics', 1),
(58, 36, 17, 0, 1, 1, 'أسرتي', '40dc695094baea3047fc6afb5b49e47a3e295b2d1020', '', 1, '2018-04-14 07:48:44', '2018-04-14 07:48:44', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(59, 36, 17, 0, 1, 1, 'مدرستي', '7e23e6ed0d9e5b23455e191eee0ad3a04b7a88fa945', '', 1, '2018-04-14 07:48:44', '2018-04-14 07:48:44', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(60, 36, 17, 0, 1, 1, 'مدينتي', '005e90cef93649d3dc4921e55ad7a06806eb7f9d424', '', 1, '2018-04-14 07:48:44', '2018-04-14 07:48:44', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(61, 36, 17, 58, 1, 1, 'مدخل الوحدة الأولى', '1f6511a0291eac43768611cdd677c4d687458e882462', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(62, 36, 17, 58, 1, 1, 'الدرس الأول: حرف (م)', '703e3caad1a4e35ebe714148fc36f6eac1da35602825', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(63, 36, 17, 58, 1, 1, 'الدرس الثاني: حرف (ب)', '09b800962787f6e972c8368918ae40b6c2f7ffdf660', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(64, 36, 17, 58, 1, 1, 'الدرس الثالث: حرف (ل)', '4f40bbc6fe002ae0496eca5e2c541d872990d4cc855', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(65, 36, 17, 58, 1, 1, 'الدرس الرابع: حرف (د)', 'a922e1f07c8f0944cf1ddd65d19ac3f3b04586dc166', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(66, 36, 17, 58, 1, 1, 'الدرس الخامس: حرف (ن)', '40f971af9981d374b8903494dc996abd6c2765511569', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(67, 36, 17, 58, 1, 1, 'الدرس السادس: حرف (ر)', '5bcd4538bbd15a1c08278f8aadd1184754d296c31194', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(68, 36, 17, 59, 1, 1, 'مدخل الوحدة الثانية', '0a9849e650552c7c01a8a410079a1f72ee4dcc312713', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(69, 36, 17, 59, 1, 1, 'الدرس الأول: حرف (ص)', 'be883fc6fa8a805c5a3966d8754097b9d31bf7d8638', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(70, 36, 17, 59, 1, 1, 'الدرس الثاني: حرف (ف)', 'f546c05eea1367470fc4922522e24d69685cf3131724', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(71, 36, 17, 59, 1, 1, 'الدرس الثالث: حرف (س)', '9fe3c3a78907c5b48d2b9bbf1b7ced9d10cf4bc72176', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(72, 36, 17, 59, 1, 1, 'الدرس الرابع: حرف (ق)', '56140f9b9d26dbfc3d54cfacffd99ce4139f5f932061', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(73, 36, 17, 59, 1, 1, 'الدرس الخامس: حرف (ت)', 'f79c30668a42ce5c4d651ae1de512d7a68adff411121', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(74, 36, 17, 59, 1, 1, 'الدرس السادس: حرف (ح)', 'e267e4b09a6fa778d731b2544ce80fa20233b2b22810', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(75, 36, 17, 60, 1, 1, 'مدخل الوحدة الثالثة', 'fb4a757fcd3e35bf9c32ee535fbeb5c0369f53a51419', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(76, 36, 17, 60, 1, 1, 'الدرس الأول: حرف (أ)', '3939aafb7356cd782692c6c7d0d73432a83c79d349', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(77, 36, 17, 60, 1, 1, 'الدرس الثاني: حرف (ط )', '110e0bfc9ce470ee44d7fcda0a5618c06d45420d149', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(78, 36, 17, 60, 1, 1, 'الدرس الثالث: حرف (ز )', 'e23d8eb4ce894d840429a9e76f2598bd6678dd81979', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(79, 36, 17, 60, 1, 1, 'الدرس الرابع: حرف (د)', '257eddf6322d1b3fb90ce4f886f023871edc1feb189', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(80, 36, 17, 60, 1, 1, 'الدرس الخامس: حرف (ن)', '3e8e1ed539d15b0db3f30b4f11bc2ebd5b7d4f7e1099', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(81, 36, 17, 60, 1, 1, 'الدرس السادس: حرف (ر)', 'c2528cdf129baa188ad43a3ca31d47d4dc895af31274', '', 1, '2018-04-14 07:48:46', '2018-04-14 07:48:46', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(82, 34, 17, 0, 1, 1, 'محتوى مقرر (الفقه)', 'mhto-mkrr-alfkh1733-40c43f379d709634a5ed1c22b7aa1e', '', 1, '2018-04-15 06:56:49', '2018-04-15 06:56:49', NULL, '51.36.111.15', 1790, NULL, 1, 'topics', 1),
(83, 34, 17, 0, 2, 1, 'محتوى مقرر (الفقه)', 'mhto-mkrr-alfkh1072-b8a007760a7791a51c23498d8c36e9', '', 1, '2018-04-15 07:04:20', '2018-04-15 07:27:59', '51.36.111.15', '51.36.111.15', 1790, 1790, 2, 'topics', 1),
(84, 36, 17, 0, 2, 1, 'صحتي وسلامتي', '8147237fc50a5fa5ae03e4be78418e30a1d4e98f2116', '', 1, '2018-04-16 07:19:39', '2018-04-16 07:19:39', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(85, 36, 17, 0, 2, 1, 'ألعابي وهواياتي', 'b2e81d3f85f052a0dc6536863f2611f3e4540ca6205', '', 1, '2018-04-16 07:19:39', '2018-04-16 07:19:39', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(86, 36, 17, 0, 2, 1, 'صحتي وغذائي', '2235425fbd12d72b800ff6d9531dd90a8d9521b71869', '', 1, '2018-04-16 07:19:39', '2018-04-16 07:19:39', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(87, 36, 17, 0, 2, 1, 'حيوانات', '87c19cbac3e44ff27e191fdce3168496658671281816', '', 1, '2018-04-16 07:19:39', '2018-04-16 07:19:39', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(88, 36, 17, 0, 2, 1, 'مناسبات', '070c826119805dc487dad0882f455c03be13ed451333', '', 1, '2018-04-16 07:19:39', '2018-04-16 07:19:39', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(89, 36, 17, 84, 2, 1, 'مدخل الوحدة الرابعة', 'f9155ad4a7f6abef8d9e45db4978c22c644329dc1846', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(90, 36, 17, 84, 2, 1, 'الدرس الأول حرف (ض)', '5617d8c70201f837381c2084c25a022a062b2fa01551', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(91, 36, 17, 84, 2, 1, 'الدرس الثاني حرف (ع)', 'a404437560cae30063544e7fb71aa1a43fe3f49c680', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(92, 36, 17, 84, 2, 1, 'الدرس الثالث حرف (ك)', '88fc732839368dda00f89da0690df43060e94c152501', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(93, 36, 17, 84, 2, 1, 'الدرس الرابع حرف (خ)', 'e0215cbb938a16308e1cd1f25996c5b0cad9e9ab1334', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(94, 36, 17, 84, 2, 1, 'الدرس الخامس حرف (ي)', '8b3479ce9dca40e138c9e1d8d74743b9c63341fc1192', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(95, 36, 17, 84, 2, 1, 'الدرس السادس حرف (ذ)', '7ccfab870ae8041b35a849ba749e39301d3d22161552', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(96, 36, 17, 85, 2, 1, 'مدخل الوحدة الخامسة', '6fad29da0a2b0a78da27f616ab344c77277e92671193', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(97, 36, 17, 85, 2, 1, 'الدرس الأول حرف (هـ)', 'a2249cfbe24a2d6091c596e7b218ea9ce7ce9a9f743', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(98, 36, 17, 85, 2, 1, 'الدرس الثاني حرف (ث)', 'ae7542dafd235e182b0c22ae12573f8e77126a0d1816', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(99, 36, 17, 85, 2, 1, 'الدرس الثالث حرف (غ)', '05e15069c7959be4a1ea3162468cc8c6da13ea6a2801', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(100, 36, 17, 85, 2, 1, 'الدرس الرابع حرف (ظ)', 'c6a269e46656d6b73945ed6d9f3c0c1f614ed0022404', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(101, 36, 17, 86, 2, 1, 'مدخل الوحدة السادسة', '1736703d0cfdeeeb636a849696a1fca8fde5b3b0470', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(102, 36, 17, 86, 2, 1, 'الدرس الأول طعام ملوث', 'c88f22c53c2ee9547dd9478f43ec03afc2be7b121516', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(103, 36, 17, 86, 2, 1, 'الدرس الثاني فيه شفاء', '573eebc31386ebc0a0aa83944a37d1cf58877c2f2335', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(104, 36, 17, 86, 2, 1, 'الدرس الثالث عيادة المريض', 'f37d8dfb78f13155e7ca79016bdb9830125a69102067', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(105, 36, 17, 87, 2, 1, 'مدخل الوحدة السابعة', '841b51a5f377b071974f4a8c8ab832ba3a62dbb1856', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(106, 36, 17, 87, 2, 1, ' الدرس الأول الأرنب المغرور', 'bae0b71352abdf88bf030afdb1d728237a08564e1090', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(107, 36, 17, 87, 2, 1, 'الدرس الثاني الخروف الأحمق', 'e38495c382473492aefbaeb65b9f1b800c0c24dd2530', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(108, 36, 17, 87, 2, 1, 'الدرس الثالث تعلمت درسا', 'afe6d662ce5dc2187440600f62f36b7e3416f2d41910', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(109, 36, 17, 88, 2, 1, 'مدخل الوحدة الثامنة', '8fe4a956c0a4ef140dd13ab32a49b99da60380851451', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(110, 36, 17, 88, 2, 1, ' الدرس الأول عمر وشهر رمضان', '9531f87227e787b21e015f1a0863054ba05eb0fe1029', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(111, 36, 17, 88, 2, 1, 'الدرس الثاني ضيف جديد', 'd845300aa1cd39591f8d12e0ab044c7a327782f62597', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(112, 36, 17, 88, 2, 1, ' الدرس الثالث الشجرة الحزينة', 'a24030af23cd55063d6e7107ef0ffd73a64eff142298', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(113, 58, 22, 0, 1, 1, 'المقدمة –تمثيل البيانات في الاجهزة الرقمية –وحدات القياس –البيانات والمعلومات', '4700635bb1f023cde113b17177a75580d896493e2381', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(114, 58, 22, 0, 1, 1, '              التدريب الاول : تركيب وتشغيل جهاز الحاسب ', 'bac31c98fd4f23c4b23bc1ea40a117de91a926e315', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(115, 58, 22, 0, 1, 1, 'انظمة تشغيل الحاسب والاجهزة الذكية', '58365c0a7ed98372d69e9f5caa2647bd3c53a121608', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(116, 58, 22, 113, 1, 1, 'التقنية الرقمية-الجهاز الرقمي والحاسب ', 'e902edd63e46a7de0e0a49fe1b8364c4d73b6d3b609', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(117, 58, 22, 113, 1, 1, 'انواع الحاسب  - مكونات الحاسب', '585b14c51bd64e13a37f6cd25802a505576708f01015', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(118, 58, 22, 113, 1, 1, 'ملحقات الحاسب', '2aac96c6414b19a039868c14cfd8fe01434f060d538', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(119, 58, 22, 114, 1, 1, 'التدريب الثاني : توصيل جهاز الحاسب بأجهزة اخرى', '8da6eec68e0d2f5e75edbad7458e40241779ccee2637', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(120, 58, 22, 115, 1, 1, 'التدريب الاول : جولة في سطح المكتب ', '32563f8286c839a2e6f813cf549c243c5669a2212989', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(121, 58, 22, 115, 1, 1, 'التدريب الثاني : قائمة أبدا', '9e25f25e80bf53df869512542ab690f225dd1aa22148', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(122, 58, 22, 115, 1, 1, 'التدريب الثالث: التعامل مع الملفات ', 'f3290af5ae71563ae255aaef5e811fa15bfb5e7b946', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(123, 58, 22, 115, 1, 1, 'التدريب الرابع: التعامل مع المجلدات', '2df895bbf901949137af3848cc699cad3d47407c59', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(124, 58, 22, 115, 1, 1, 'التدريب الخامس والسادس :انظمة تشغيل الاجهزة الذكية ', 'd27fa9238525112eda13a233715740edf968ffaf94', 'حاسب سادس ابتدائي', 1, '2018-08-06 09:37:16', '2018-08-06 09:37:16', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(125, 58, 22, 0, 1, 1, 'المقدمة –تمثيل البيانات في الاجهزة الرقمية –وحدات القياس –البيانات والمعلومات', '7902418c31935cd546afb0b9c45292a1bf4ff59c749', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(126, 58, 22, 0, 1, 1, '              التدريب الاول : تركيب وتشغيل جهاز الحاسب ', '642e222547c9ee88d112a652a0117b597c63db37454', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(127, 58, 22, 0, 1, 1, 'انظمة تشغيل الحاسب والاجهزة الذكية', 'b07e1445d99e6fe80f858fa63ed364686e9860931408', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(128, 58, 22, 125, 1, 1, 'التقنية الرقمية-الجهاز الرقمي والحاسب ', 'cbb000ea8da6d923136093edfacfb534a044d19522', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(129, 58, 22, 125, 1, 1, 'انواع الحاسب  - مكونات الحاسب', 'c26c311079a50ff613278d586fe667de364324f9949', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(130, 58, 22, 125, 1, 1, 'ملحقات الحاسب', 'e2ac0c0e22e3300c038bac98b430ee258aefe947312', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(131, 58, 22, 126, 1, 1, 'التدريب الثاني : توصيل جهاز الحاسب بأجهزة اخرى', '799efbd66f9258eca9f7058110f7f2d0ec0090662000', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(132, 58, 22, 127, 1, 1, 'التدريب الاول : جولة في سطح المكتب ', 'e55274dc3287092f5462b7f3b172eecfcda01c51613', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(133, 58, 22, 127, 1, 1, 'التدريب الثاني : قائمة أبدا', 'c34bf986b772b3aef610f83af2c6c27521e34958215', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(134, 58, 22, 127, 1, 1, 'التدريب الثالث: التعامل مع الملفات ', 'b0da41fe850da4e18aefb5d33706554df1d88091756', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(135, 58, 22, 127, 1, 1, 'التدريب الرابع: التعامل مع المجلدات', '103be3553a66041808f1e31fe9797c00e8f87fd8842', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(136, 58, 22, 127, 1, 1, 'التدريب الخامس والسادس :انظمة تشغيل الاجهزة الذكية ', '424d7814ae7629578feda86b809ba6d98427cfa71051', 'حاسب سادس ابتدائي', 1, '2018-08-06 11:52:40', '2018-08-06 11:52:40', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(137, 58, 23, 0, 1, 1, 'الوحدة الأولى أساسيات التقنية الرقمية', 'a0b3ece05c542bb116b1261cbc1d642556c99a4f2428', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(138, 58, 23, 0, 1, 1, 'الوحدة الثانيةمكونات الحاسب المادية وملحقاته', '7ccebf7f0c48e420bd2fdd807ff9b6420daeb5c51155', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(139, 58, 23, 0, 1, 1, 'الوحدة الثالثة أنظمة تشغيل الحاسب والأجهزة الذكية', '7027aeba3003bd5655b48713e93213326e09eaff997', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(140, 58, 23, 137, 1, 1, 'تمثيل البيانات في الأجهزة الرقمية', '2c049cdbcb7df97b228a9e51c7f841d40d54c1601155', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(141, 58, 23, 137, 1, 1, 'وحدة القياس', '9dfb22e61aa204b7d0a5ec76817d891b60b1b3082189', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(142, 58, 23, 137, 1, 1, 'البيانات والمعلومات', '317d6869dc2c404aceb7c107ffde9ba67f3c39351094', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(143, 58, 23, 137, 1, 1, 'التقنية الرقمية', 'af65279d0ec4003482d8d9cb004b89f4cba0c2bd2048', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(144, 58, 23, 137, 1, 1, 'الجهاز الرقمي والحاسب', '0122df6da897bf28ad911de9a9ea186b0f206620933', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(145, 58, 23, 137, 1, 1, 'أنواع الحاسب', '7f3e0f0a778c52b0fbc6ac70983f2974ab15a3621743', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(146, 58, 23, 138, 1, 1, 'مكونات الحاسب', 'e027458438cc2b2ad7a80fbab91fb584ad61f7232916', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(147, 58, 23, 138, 1, 1, 'المكونات المادية للحاسب الشخصي', 'fb9d805f0547a55dc142fd8eddff62adb238665e2016', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(148, 58, 23, 138, 1, 1, 'مشروع الوحدة', 'fdedd618836b70b5a2894c9bc4d9ce9a866173fa2098', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(149, 58, 23, 138, 1, 1, 'خارطة الوحدة', '23741202f71f0ad3f3d48c8523e0d2123784a4df2317', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(150, 58, 23, 138, 1, 1, 'دليل الدراسة', '1d0857c17d715744f2078531908f757a1b851c152990', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(151, 58, 23, 139, 1, 1, 'نظام التشغيل', 'a058b315d620ecadfdcd48a9af3ea3bfee2037fc1638', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(152, 58, 23, 139, 1, 1, 'مهام نظام التشغيل', '62eee1c93ead42bdaf7f255aa6766307813b4d1e1348', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(153, 58, 23, 139, 1, 1, 'أنظمة تشغيل الحاسب', '93e0e2b7107bee3cb3043571482651c4d965327e373', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(154, 58, 23, 139, 1, 1, 'أنظمة تشغيل الأجهزة الذكية', '224ee9baabbcb4edecbb3ea1a7f6c4723ad8d3991759', 'Contains all the basics', 1, '2018-10-29 07:31:42', '2018-10-29 07:31:42', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(155, 58, 23, 0, 1, 1, 'الوحدة الأولى أساسيات التقنية الرقمية', 'd0665216364b2fc603795d003da322b9e2ea1bba1260', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(156, 58, 23, 0, 1, 1, 'الوحدة الثانيةمكونات الحاسب المادية وملحقاته', '175906c132e998411c14db2886013103d92b65e3795', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(157, 58, 23, 0, 1, 1, 'الوحدة الثالثة أنظمة تشغيل الحاسب والأجهزة الذكية', '15ba52ad1c3b7b99ccb7a536c719fe0ec867801e1901', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(158, 58, 23, 155, 1, 1, 'تمثيل البيانات في الأجهزة الرقمية', 'fa823335072680d2857f241d20f902533a2492512192', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(159, 58, 23, 155, 1, 1, 'وحدة القياس', 'f412f48d7fc0c24d152638e12ae0ea67b4118c27141', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(160, 58, 23, 155, 1, 1, 'البيانات والمعلومات', '0457a2e01280f16d4ff05988ce4366e39c35ea96397', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(161, 58, 23, 155, 1, 1, 'التقنية الرقمية', 'e52490cde042a2c84a5413edd0594ba48a7c7575757', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(162, 58, 23, 155, 1, 1, 'الجهاز الرقمي والحاسب', '52379197d40b7e421ac94c13a3c306030023378a2827', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(163, 58, 23, 155, 1, 1, 'أنواع الحاسب', '9165b97bb987f5a948a56ed3749b48595647f33d360', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(164, 58, 23, 156, 1, 1, 'مكونات الحاسب', '97380a83c11dcd30a5f0fa6f63afc78bc10d1e431584', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(165, 58, 23, 156, 1, 1, 'المكونات المادية للحاسب الشخصي', '3db317c2374fd95b26363de095e7be6aba7933ba628', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(166, 58, 23, 156, 1, 1, 'مشروع الوحدة', 'e9ddd8d49728ab8f0ec1ae2cf6df64ac504ce7cb496', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(167, 58, 23, 156, 1, 1, 'خارطة الوحدة', '50d86b929e9fb065e9518f0977726f4f8ebf2a091817', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(168, 58, 23, 156, 1, 1, 'دليل الدراسة', 'dc1da63f5b4498a9868265b2a284d38187f281ed937', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(169, 58, 23, 157, 1, 1, 'نظام التشغيل', 'ec3f880a0367ec2a2d9a1ec0dac5b210f3db0413920', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(170, 58, 23, 157, 1, 1, 'مهام نظام التشغيل', 'ecbe0dc12152cd1e469ff1fd5b68ebb55fa65ee8542', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(171, 58, 23, 157, 1, 1, 'أنظمة تشغيل الحاسب', '504646090b5ea023b51335aa1f7c90e94612ee051277', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(172, 58, 23, 157, 1, 1, 'أنظمة تشغيل الأجهزة الذكية', '8f70157d3daf160c8d8e50468cf53ddff3402821641', 'Contains all the basics', 1, '2018-10-29 07:32:23', '2018-10-29 07:32:23', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(173, 58, 20, 0, 1, 1, 'الوحدة الأولى  معالج النصوص ', '1186fd3e75bfa4d28722b6c6213e40b417011b652760', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(174, 58, 20, 0, 1, 1, 'الوحدة الثانية مكونات الحاسب ', '7cb5bb04a68069902c32182c690c4f44cf91ddfc2153', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(175, 58, 20, 0, 1, 1, 'الوحدة الثالثة العروض التقديمية', '373ffb691e4ceae9e0df5a7cef373128b83da132272', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(176, 58, 20, 0, 1, 1, 'الوحدة الرابعة الحماية و الأمان', '58375e5c6862575f6159bcf70f055dd132070e892915', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(177, 58, 20, 173, 1, 1, 'تعليمات البرنامج', 'f4f22826bdfb387c521c7a39a69e37e9705aeedb1569', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(178, 58, 20, 173, 1, 1, 'الجداول', 'fcab2489f8cec9fa588cbe60347cca0be5050b3b990', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(179, 58, 20, 173, 1, 1, 'تنسيق الصورة', '60d95b9c496bb2dfba204f56f81d4dabd91fc2c2145', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(180, 58, 20, 173, 1, 1, 'تنسيق الشكل المدرج', 'eab59f0d665922340a9cd1610dab6c7ccfa1962d378', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(181, 58, 20, 173, 1, 1, 'أوامر العرض', 'c6b0d2d16cb00018456f2e73a3dabde0eb5c359172', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(182, 58, 20, 173, 1, 1, 'إدراج الرأس و التذييل', 'e8be2bffbb4ace71bbead4a881545591964338542981', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(183, 58, 20, 173, 1, 1, 'إدراج أرقام الصفحات', 'e5620a6f87d8cd30a0e69f7bc0fd53c452ea44fa2349', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(184, 58, 20, 173, 1, 1, 'إسقاط الأحرف استهلاليا', '31924db43be60b74c2bfcd5d432693980c3d2f891248', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(185, 58, 20, 173, 1, 1, 'الحفظ بإصدار سابق', '6131cba48a5f3b74d90748f63c662c17b6b8f4951783', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(186, 58, 20, 174, 1, 1, 'وحدات الإدخال', 'e0d8826ef25f2216bdc543f1e7728a882d8104a52557', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(187, 58, 20, 174, 1, 1, 'وحدات الإخراج', 'c9a3c56f82fe85da47019c46956fa9659e03be202047', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(188, 58, 20, 174, 1, 1, 'صندوق النظام', '5700ef3ea5fc7efd496eb222c2d3a3f62b556b8a451', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(189, 58, 20, 174, 1, 1, 'وحدات التخزين', '91fad585baa461a61365a138a612d27465822b8a2312', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(190, 58, 20, 174, 1, 1, 'المكونات المادية لشبكات الحاسب', '2d434d3a1b234f30dcd9b2f39c44e844c22d7bdd2104', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(191, 58, 20, 174, 1, 1, 'المكونات البرمجية', '9fe0491da38196873201a14c0f474f2aae098d642383', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(192, 58, 20, 175, 1, 1, 'تنسيق مربع النص', '230cda1d413f34819f2f61c482a960a5630022ae2478', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(193, 58, 20, 175, 1, 1, 'تنسيق القصاصة', '2594cab41fc98b0e43b103da00dabda8fc11a444483', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(194, 58, 20, 175, 1, 1, 'تغيير و إعادة تعيين الصورة', '6df863802e05ea34267e8d7bf0b00d5a15676c151187', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(195, 58, 20, 175, 1, 1, 'تثبيت حركات عرض الشرائح', '7c3bc7e86c90952fb2d57b9a04f6f496f1080a542415', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(196, 58, 20, 176, 1, 1, 'فيروسات الحاسب', '1e107b2440174d5692d1eb02e668321652d093871137', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(197, 58, 20, 176, 1, 1, 'التعامل مع الحاسب', 'b75437136442e0b545a6106f0156049e0be708561660', 'Contains all the basics', 1, '2018-11-05 08:39:15', '2018-11-05 08:39:15', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(202, 34, 21, 198, 1, 1, ' (حساب النسبة المئوية)', 'e7a0668a1e37fda1d640ba85b91d6060bb5016c0792', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(206, 34, 21, 198, 1, 1, ' الإدراج والحذف)  إدراج الصفوف والأعمدة وحذفها ', '639e7a7b53f4fd45d7246662d75e3a31988ad75b1266', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(208, 34, 21, 198, 1, 1, ' (نسخ ونقل خلايا الجدول)', '867e50af003e0129e5b2751fb87b9cce3f2c3bc42973', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(209, 34, 21, 198, 1, 1, ' تنسيق الخلايا الحدود والتعبئة ', '0e3973020dbb05451432eb446c88edaeb96bdd6c2376', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(210, 34, 21, 198, 1, 1, ' تنسيق الخلايـا الخط والرقم ', '94a243799f3eb5ad03c96f6ebcf10e8d2e5005821199', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(211, 34, 21, 198, 1, 1, ' (التنسيق الشرطي)  قواعد التمييز، القواعد العليا والسفلى ', '3285bdd31972952d1af9ea6c26999692003f88e02191', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(212, 34, 21, 198, 1, 1, ' التنسيق الشرطي)  أشرطة البيانات، مقاييس الألوان، الرموز', 'f1e834d3a08cf7fa6c81728ccfa4bec6970ea7722151', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(213, 34, 21, 198, 1, 1, ' (فرز محتوى الخلايا، وتعليمات البرنامج)', '4b2fa1c53dd9ed25fb7816b11f9c0e0ad5dd3783619', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(214, 34, 21, 198, 1, 1, ' (دمج الخلايا والتفاف النص)', '145d4373d9de121899269f124d977ee05fc583c01013', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(219, 34, 21, 199, 1, 1, ' (تثبيت الحركة المخصصة لمكونات شرائح العرض)', 'c5f810e191f30b60f18d69888abd96a98418a5591810', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(220, 34, 21, 199, 1, 1, ' (توقيت العرض )', '66c533f53ee285fb15537f2385c644da265e6c112764', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(221, 34, 21, 199, 1, 1, ' الفن الذكي', '90d587d508527157a96d736767c3b7700b62bf5f841', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(223, 34, 21, 199, 1, 1, '  (إعداد الصفحة، اتجاه الشريحة)', '31d22266b919f5fc2f009cde4cd220d84c02741d1547', 'Contains all the basics', 1, '2018-11-05 08:41:01', '2018-11-05 08:41:01', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(227, 58, 21, 0, 1, 1, 'الوحدة الأولى  الجداول الإلكترونية ', '77acb62070670ccefa6453f70274009c9d498f652305', 'Contains all the basics', 1, '2018-11-05 08:51:11', '2018-11-05 08:51:11', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(228, 58, 21, 0, 1, 1, 'الوحدة الثانية العروض التقديمية', '30c00c5505db920cea67d89b4194d10aa5fccfd61253', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(229, 58, 21, 0, 1, 1, 'الوحدة الثالثة الحماية و الأمان', '0d295f2683c0e89e17212b6c03b0d2608e6cc79a1551', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(230, 58, 21, 227, 1, 1, ' (الدوال الرياضية)المجموع التلقائي، وشريط الصيغة', '2e8e6aa4e414ce0ce5b54807c1f236bc6e03afbc172', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(231, 58, 21, 227, 1, 1, ' (حساب النسبة المئوية)', 'ad7cec50e97df1b21926e7d719c70108c0c38ef7121', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(232, 58, 21, 227, 1, 1, ' (الدوال الرياضية حساب الحد الأقصى والحد الأدنى', 'bf302671bb359dbaa7e9cc9396bdfc6a095875771547', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(233, 58, 21, 227, 1, 1, ' (الدوال الريـاضـيـة)حساب المتوسطونسخ التنسيق ', '27196bdb36750e28cfc0e0c947be34d6f462c54d968', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(234, 58, 21, 227, 1, 1, ' الدوال الرياضية دالة إذا  فـأن', '95b0c4dca1a9d8d74706eb2f31b637bf1dc616681669', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(235, 58, 21, 227, 1, 1, ' الإدراج والحذف)  إدراج الصفوف والأعمدة وحذفها ', '273cc61fa37894c23cbf576026f24bec7bd1e5da300', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(236, 58, 21, 227, 1, 1, ' (إخفاء / إظهار الصفوف والأعمدة)', '04453b6635d9198fd0923e8ca1129e8474c2452d2057', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(237, 58, 21, 227, 1, 1, ' (نسخ ونقل خلايا الجدول)', '657710499610d6a7fba299f3077125a0d0b327012594', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(238, 58, 21, 227, 1, 1, ' تنسيق الخلايا الحدود والتعبئة ', 'f836c54012d13cbc9946273f2c0640f308f0e40c692', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(239, 58, 21, 227, 1, 1, ' تنسيق الخلايـا الخط والرقم ', 'bcd7763fa47d632686368483dd5e8d2bc35f116a395', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(240, 58, 21, 227, 1, 1, ' (التنسيق الشرطي)  قواعد التمييز، القواعد العليا والسفلى ', 'd921ca0ae522cec25375eba35bbd8bfe0fe49bcd1470', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(241, 58, 21, 227, 1, 1, ' التنسيق الشرطي)  أشرطة البيانات، مقاييس الألوان، الرموز', 'e4672fe7a6a50da2db6a51289d50018894bf5c621547', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(242, 58, 21, 227, 1, 1, ' (فرز محتوى الخلايا، وتعليمات البرنامج)', '1dd4d14005703bbf02310f5273df4aa04d8edf4e1647', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(243, 58, 21, 227, 1, 1, ' (دمج الخلايا والتفاف النص)', '547349b83b7e242d0c2bd064e50462279d57b376891', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(244, 58, 21, 227, 1, 1, ' (تنسيق أوراق العمل)  التبديل، الإدراج، الترتيب، الحذف ', '028187795805def3a003ebd7be3454dab52ff8541945', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(245, 58, 21, 227, 1, 1, ' (تنسيق أوراق العمل)  إعادة التسمية، اللون، النسخ، النقل ', 'e0c7e0642b8a64d3055c32225afc60bd0bd045aa2460', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(246, 58, 21, 228, 1, 1, ' العمليات على الشرائح / النسخ والنقل)', '6f6757969808ca2dffaeded6d2627316cfe4616d690', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(247, 58, 21, 228, 1, 1, ' العمليات على الشرائح / السحب، التحديد', '1d5c575f4d74dfca00cd0a1dc103a551454c2e992253', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(248, 58, 21, 228, 1, 1, ' (تثبيت الحركة المخصصة لمكونات شرائح العرض)', '202cd0614e925d3de4b9247220217738023c82d71771', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(249, 58, 21, 228, 1, 1, ' (توقيت العرض )', '8d7254c03f2047ab28de87e25bb1fb9107ac6fe42860', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(250, 58, 21, 228, 1, 1, ' الفن الذكي', 'b46bf45bc778fac35f2d360296315e39733fe85c2877', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(251, 58, 21, 228, 1, 1, '(إدراج الأشكال)', '7f7cb35a481957c3843bc7c13433676cb076be6b1533', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(252, 58, 21, 228, 1, 1, '  (إعداد الصفحة، اتجاه الشريحة)', 'fed2cf642d77fab0920debb6ecbf6e55a5bdeafc2717', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(253, 58, 21, 228, 1, 1, '  (أوامر العرض / الحفظ)  التكبير الصغير، الحفظ كعرض', 'af7a748f00479707b81c3a3838e606cbb71ccb9d2900', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(254, 58, 21, 229, 1, 1, 'أمن المعلومات (المفهوم، الشروط، الحماية)', '40856cbe136d6ccb5adf49baae4b3c159c47cc1a1482', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(255, 58, 21, 229, 1, 1, 'أخلاقيات الحاسب (الخصوصية وحق الوصول)', '042ed210e01d7a6c8eb59b82232b582cf05c222e183', 'Contains all the basics', 1, '2018-11-05 08:51:12', '2018-11-05 08:51:12', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(256, 58, 26, 0, 1, 1, 'الوحدة الأولى المصادر الحرة و أنظمة لينكس', '0e382c898deae75d5877309490f330d68adc784a2702', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(257, 58, 26, 0, 1, 1, 'الوحدة الثانية الوسائط المتعددة', 'a21a59e2c9d9bdabf6d155c9b647957e311ea506649', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(258, 58, 26, 0, 1, 1, 'الوحدة الثالثة تصميم وإدارة المواقع والشبكات الاجتماعية', '26c7f5c8c58ade509b5677072b3fcdc0a6063733316', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(259, 58, 26, 0, 1, 1, 'الوحدة الرابعة تقنيات التحكم الرقمي والروبوت', '24c3fa555aaf1db0ab643f531cf5f89f5c2db79a245', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(260, 58, 26, 0, 1, 1, 'الوحدة الخامسة  مقدمة في البرمجة', '2c70b8f0dc8f742102f0b1502e071ed49a07edf52637', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(261, 58, 26, 0, 1, 1, 'الوحدة السادسة  صياغة حل المسائل', 'ceb932a37362f9eb9059084c093ad7f54f07d3732335', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(262, 58, 26, 0, 1, 1, 'الوحدة السابعة البرمجة بلغة (فيجول بيسك ستوديو)', 'bca7bb5722bf874b4f0b4c23225e296bbad4802b2737', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(263, 58, 26, 256, 1, 1, 'مقدمة', '5d2947449bf7330393bf13bc4c647617a7a6b42e2104', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(264, 58, 26, 256, 1, 1, 'المفهوم', '76b3f6c9f2c4984dca4e970181ef2aca3572d0122023', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(265, 58, 26, 256, 1, 1, 'رخص المصادر المغلقة', '29bebc650272f99b993e5e30c3e4e2631cee1e0e972', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(266, 58, 26, 256, 1, 1, 'رخص المصادر الحرة', '3deaec13640730cad90ab7377fb7eb0b766133c62165', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(267, 58, 26, 256, 1, 1, 'مزايا المصادر الحرة', 'baa1579ee397193056f09328c3b3228c5dc69c59740', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(268, 58, 26, 256, 1, 1, 'عوائد استخدام المصادر الحرة', 'fe26f05328b6ca75db5c46b27ee1ecb277f18e3b2291', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(269, 58, 26, 256, 1, 1, 'حقوق الطبع و النشر', '38c4dc5fb49c566ff4bd26dabce2797bf96f3cff1989', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(270, 58, 26, 256, 1, 1, 'الانتحال العلمي', '05cea9445f5b907f834704ca48a0706bc69cfc2f3001', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(271, 58, 26, 257, 1, 1, 'مقدمة', 'b988e767b85cf1b8303f8896acae6e707ea3260c331', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(272, 58, 26, 257, 1, 1, 'مفهوم الوسائط المتعددة', 'f0c3b25da0be08c3987c736441272ed9d5b459482212', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(273, 58, 26, 257, 1, 1, 'أهمية الوسائط المتعددة', '2fcb24db5b0581718e975bd7a3fd2c3439d2a8b22107', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(274, 58, 26, 257, 1, 1, 'مكونات الوسائط المتعددة', 'dbbe4366e9bccbeabce32ee15e4298a5859a492e382', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(275, 58, 26, 257, 1, 1, 'مجالات استخدام الوسائط المتعددة ', 'abde22edcba2c6bc59508c05072b86ef6e2bc16f34', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(276, 58, 26, 257, 1, 1, 'مراحل إنتاج الوسائط المتعددة', '8c6f953c844df4c548f52813a1c5a5f6281172042200', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(277, 58, 26, 257, 1, 1, 'بعض البرمجيات المستخدمة في إنشاء و تحرير ملفات الوسائط المتعددة', 'adf90177e367140f0fbc183aa09e34be763f170e1339', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(278, 58, 26, 258, 1, 1, 'مقدمة', '749d166856fa6350ebd9da8d96e32a3df5a5194f2903', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(279, 58, 26, 258, 1, 1, 'تعريف برامج إدارة المواقع على الإنترنت', '4d6a1de38be0b7529147e11451373717576d6cf91120', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(280, 58, 26, 258, 1, 1, 'مزايا استخدام برامج إدارة المواقع (CMS)', '8b856645e7c1cccab87cb8129b9cc0d4d7ea999c2875', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(281, 58, 26, 258, 1, 1, 'خطوات عمل برامج إدارة المواقع(CMS)', 'db6acb0d10a9260b88e1a3424413c995e1cf550d1069', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(282, 58, 26, 258, 1, 1, 'كيفية كتابة المحتوى من خلال برامج إدارة المواقع', '21c98f86d977a90bf4db287f541c373b61ec3f812720', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(283, 58, 26, 258, 1, 1, 'أمثلة لمواقع وتطبيقات تستخدم برمجيات إدارة المواقع', '4b59ab12e49ad2363faa6c6c76f030dd9ea05e9c774', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(284, 58, 26, 259, 1, 1, ' مقدمة', 'de23a580830997ae1c2f6675a2e2e1922a5350a6391', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(285, 58, 26, 259, 1, 1, 'الروبوت ـ تعريفه وتاريخ نشأته ', '654c8b52595717222fb623c1c2bab0b2161f6de842', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(286, 58, 26, 259, 1, 1, ' الروبوتات في العالم الحقيقي ', '00909c6e52453d3e743a756b37cc7f59dea613261650', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(287, 58, 26, 259, 1, 1, ' تصنيف الروبوتات  ', '853f47f759ed99e2d0a7452ef43eb1404101745563', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(288, 58, 26, 259, 1, 1, 'نظام التحكم ', 'a06992295d8d11927994467b525f225ae85031cc689', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(289, 58, 26, 259, 1, 1, ' المكونات الرئيسة للروبوت', '299aae8b485655132255fd2b34aa06d155fdc4501964', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(290, 58, 26, 260, 1, 1, 'مقدمة ', 'c282d945f080bc5d6d620116c6fb6b5423347399306', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(291, 58, 26, 260, 1, 1, ' مفهوم البرمجة', '29aedd1f7e9fd5abe45096eaf0e7559e95fa5cf9295', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(292, 58, 26, 260, 1, 1, 'أهمية البرمجة', '06920bd4043e147defe42e3f5e323d11a02d6b311269', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(293, 58, 26, 261, 1, 1, 'مقدمة ', '30d8bba286ff82f0c50aa21b3431e9228c7d032712', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(294, 58, 26, 261, 1, 1, ' الهدف من تعلم صياغة حل المسائل', '79b396f839211d3094a0490f96a917624659ac272397', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(295, 58, 26, 261, 1, 1, ' خطوات حل المسائل', '62b9277e762e6bc064d418f9cf3ae890c53f66a1261', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(296, 58, 26, 261, 1, 1, ' فهم المسألة وتحليل عناصرها', '053daa35f21daf6ea0994423ee34dd5104772b70981', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(297, 58, 26, 261, 1, 1, ' كتابة الخطوات الخوارزمية', '3f19701848448c13fd9303019e3f522a513d2fc91532', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1);
INSERT INTO `topics` (`id`, `subject_id`, `course_id`, `parent_id`, `semester_num`, `academic_id`, `topic_name`, `slug`, `description`, `sort_order`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(298, 58, 26, 261, 1, 1, ' مخططات الانسياب', '7dfa8498219e6d140d093c7194980b2f267b433b999', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(299, 58, 26, 261, 1, 1, 'أمثلة على صياغة حل المسائل', 'a43372b52bb2d22e3e3b109ec4cb510c22d38b37242', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(300, 58, 26, 262, 1, 1, 'مقدمة', '6ca2eaa475842b1dbd66dfec2ca12975aa962a97490', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(301, 58, 26, 262, 1, 1, ' مراحل كتابة البرنامج بلغة ( فيجول بيسك ستوديو)', '226d46b40518829470d546f29f296fdea76d6675969', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(302, 58, 26, 262, 1, 1, 'طريقة تعامل البرنامج مع البيانات  ', '993e5d958b1e22aa66e04dd55a01061819c2eac4570', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(303, 58, 26, 262, 1, 1, ' العمليات الحسابية والمنطقية', '1028a50e5d16f8e52bde8b0914f3bd683fd754882699', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(304, 58, 26, 262, 1, 1, '( أدوات البرمجة بلغة ( فيجول بيسك ستوديو', '9d6a16ed4b2675b53da80c02a0740fcccfc78f7345', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(305, 58, 26, 262, 1, 1, '( بعض الأوامر الأساسية للغة ( فيجول بيسك ستوديو', '1d9b3b06d773e9fdd73a7d3c48215236475f833a950', 'Contains all the basics', 1, '2018-11-05 08:58:34', '2018-11-05 08:58:34', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(306, 58, 27, 0, 1, 1, 'الوحدة الأولى  الشبكات السلكية واللاسلكية والإنترنت', 'b71d73721fe54302253535456017b0d5fe7d05462640', 'Contains all the basics', 1, '2018-11-05 09:00:09', '2018-11-05 09:00:09', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(307, 58, 27, 0, 1, 1, 'الوحدة الثانية : أمن المعلومات والبيانات والإنترنت', 'd3b7efc54386b324a933e6c8ad63a801880d9be62799', 'Contains all the basics', 1, '2018-11-05 09:00:09', '2018-11-05 09:00:09', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(308, 58, 27, 0, 1, 1, 'الوحدة الثالثة : تقنيات وبرمجة الأجهزة الذكية', '927f6b4933f5b6f0b83723f67897af28eba0ee46398', 'Contains all the basics', 1, '2018-11-05 09:00:09', '2018-11-05 09:00:09', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(309, 58, 27, 0, 1, 1, 'الوحدة الرابعة : الخدمات الإلكترونية', 'f51dd7e3b8a131c7447575a34808947ace69973b424', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(310, 58, 27, 0, 1, 1, 'الوحدة الخامسة  قواعد البيانات', 'c123b28ed6f24f8c9ca4fb8d8afc04834a0427142465', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(311, 58, 27, 0, 1, 1, 'الوحدة السادسة: عمارة الحاسب', 'e24894199e30c4bf9114f138f78e7abb5bef14b81065', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(312, 58, 27, 0, 1, 1, 'الوحدة السابعة: مهن وتخصصات الحاسب', '16a28019284979afa9f1b4ea55a8fd728b6eb5b9236', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(313, 58, 27, 306, 1, 1, 'مقدمة في الشبكات الإلكترونية ', '6274e49cf3fbee3f0ebff85d314667c790cdf75e2101', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(314, 58, 27, 306, 1, 1, 'شبكات الحاسب ', '6d30ed70f6e13597820ef6173859e6e14ed7086d1508', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(315, 58, 27, 306, 1, 1, 'تقنيات التبديل الشبكي ', '6b2182adaf86a479c06f0062f608f0d10f09e6bb239', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(316, 58, 27, 306, 1, 1, 'الشبكات اللاسلكية', '5047caefda06a0a788c0f956fc2251a51e9838e91207', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(317, 58, 27, 306, 1, 1, 'شبكة الإنترنت', '67ccebd7034c988cadd2d091cfc4a22c2ebede12663', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(318, 58, 27, 307, 1, 1, 'المقــدمــــة ', '30d53c292b11f815eb159f12f32e24f50a22b5b71821', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(319, 58, 27, 307, 1, 1, 'أمن المعلومات', '01cd575a470b9ba1db890021256029d5069bde50622', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(320, 58, 27, 307, 1, 1, 'علوم وأنظمة تشفير المعلومـات', '5ac70ecca87341ae37a32adcb99a4100b774553c2739', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(321, 58, 27, 307, 1, 1, 'حماية تطبيقات الإنترنت', '3f96804a3ee7da50e74970afd70e1a26738fcbbb1231', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(322, 58, 27, 307, 1, 1, 'إرشادات أمنية لحماية معلوماتك', '327a62970682930c87ed2f77a51f89c34c094e831161', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(323, 58, 27, 308, 1, 1, 'مقدمة', '383d72e83cebffdd1aa11269e873e9c0df03984b1392', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(324, 58, 27, 308, 1, 1, 'الأجهزة الذكية (Smart Devices)', '35651d0435f9f98bbd21a4070e20633b133f89e2499', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(325, 58, 27, 308, 1, 1, 'أنواع الأجهزة الذكية', '1b32a0c6b7e7f827bcb83eae87772f5491fb393a445', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(326, 58, 27, 308, 1, 1, 'أنظمة تشغيل الأجهزة الذكية', 'd1a512d6a9c985ca3b25bbac19498a8d65a6e8df843', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(327, 58, 27, 308, 1, 1, 'تطبيقات الأجهزة الذكية', '35571c2f95a8154a81064a02539804dc621bcf0b2776', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(328, 58, 27, 308, 1, 1, 'متاجر تطبيقات الأجهزة الذكية', '67faed5008e5d3fe1dfe1e5609f876854de452061284', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(329, 58, 27, 308, 1, 1, 'لغات البرمجة وبرمجة الأجهزة الذكية', 'c9fc58d6b254c4b315255b73c6103c19a09b8c862376', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(330, 58, 27, 308, 1, 1, 'برامج تطوير الأجهزة الذكية', '49bbb1cd30b2dcbf5094d96b6e94771b0f4a4b251061', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(331, 58, 27, 308, 1, 1, 'برمجة تطبيقات الأجهزة الذكية', '05bbfd343f5620ec63527611128f2588b38316e72719', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(332, 58, 27, 309, 1, 1, ' مقدمة', '35b6e8d7ca85a455a859c2c55135ba1080a6e4791148', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(333, 58, 27, 309, 1, 1, 'الحكومة الإلكترونية', 'da013c6941764912e33faf11dab74436d8154a47230', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(334, 58, 27, 309, 1, 1, 'التجارة الإلكترونية', 'a41994ecabccd06affff4c77bacc26fcbbe3135e2694', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(335, 58, 27, 309, 1, 1, 'الجامعات الإلكترونية', 'e5730a005fc07ef3cdb0406fdadaae5e69ce2a7a906', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(336, 58, 27, 310, 1, 1, 'مقــدمــــة', 'b9e97fea249555375f01beccd7c1701d7a4d7743930', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(337, 58, 27, 310, 1, 1, 'مفهوم قواعد البيانات', '70c031964943e4167e417229de7d6773e9fd03b72304', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(338, 58, 27, 310, 1, 1, 'أهمية قواعد البيانات', '102df6a9416e3fdd754a72c7a4e114f7f459363e675', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(339, 58, 27, 310, 1, 1, 'مكونات قواعد البيانات', 'e98f5614a0a7665d9e61ddec95f2d19c11ddf60c1325', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(340, 58, 27, 310, 1, 1, 'نظم إدارة قواعد البيانات', '6bf5c79e0fe33a3db04f65a8a2d3ebee5ada88a82725', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(341, 58, 27, 310, 1, 1, 'خطوات تصميم وبناء قاعدة بيانات', '7298bfc02f66f0565a4c75916e3b65a48f545bb5109', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(342, 58, 27, 311, 1, 1, 'مقدمة ', '15f9230227852b10749960301393e5e9ecd84ae42387', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(343, 58, 27, 311, 1, 1, 'عمارة المعالج (Processor Architecture)، وكيف يعمل؟ ', '03be3bd0ece8cd08bbf19b08020572989e5658022958', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(344, 58, 27, 311, 1, 1, 'المعالج الدقيق الميكروبرسسر (Microprocessor) ', 'e8158b2af7a5c7376bdb0d39861522b58cb6f04e2207', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(345, 58, 27, 311, 1, 1, 'اللوحة الحاضنة (Motherboard) والذاكرة (Memory)', '5f1f0cd720900fd3b7fa4f21b527ef1b87ae35c7865', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(346, 58, 27, 311, 1, 1, 'أجـهـزة حـفـظ الـبـيـانـات', 'b1346b178c3b3bbef29fcf7a56183208272c739c167', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(347, 58, 27, 311, 1, 1, 'عمارة الحاسب المحمول (PORTABLE PC ARCHITECTURE)', '934266e7b802cf1a193756b7b914833d4b1bdbcf384', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(348, 58, 27, 312, 1, 1, 'مقدمة', '4c5b3e736769f2957961d058f6dcc0438e0b798d1525', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(349, 58, 27, 312, 1, 1, 'الشهادات العالمية في الحاسب', '173cebb100fc447d3ec3c627b01e0126f6d4d4af1985', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(350, 58, 27, 312, 1, 1, 'التخصصات الجامعية', 'f77f2870eaf343c386d6d34d2aba224c8885a1f31004', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(351, 58, 27, 312, 1, 1, 'مهن الحاسب', 'c41cc833a9661e7d225f2edf9ffd79956b9b9a411234', 'Contains all the basics', 1, '2018-11-05 09:00:10', '2018-11-05 09:00:10', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(352, 58, 57, 0, 1, 1, 'الوحدة الأولى الوسائط المتعددة', 'bede8d9fde9a3c3b39809939ea9ae89602abda45496', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(353, 58, 57, 0, 1, 1, 'الوحدة الثانية الحوسبة السحابية وتطبيقاتها', '48f7a623d3d9b705fd799448b79ba83f3eaa3da02555', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(354, 58, 57, 0, 1, 1, 'الوحدة الثالثة  البيئة والدوائر الرقمية', '38cc5873a27535015dd673ee4009df34fe872436929', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(355, 58, 57, 352, 1, 1, 'مفهوم الوسائط المتعددة', '610c82cada84c52bf205af7a704868327b7ae0a21626', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(356, 58, 57, 352, 1, 1, 'أهمية استخدام الوسائط المتعددة', 'c896ba2bafe451c655e215af6c84fce637e55f651492', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(357, 58, 57, 352, 1, 1, 'مكونات الوسائط المتعددة', '038716878bd0c12f5096428c72b0aa3f9a0917b72516', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(358, 58, 57, 352, 1, 1, ' مجالات استخدام الوسائط المتعددة', 'b04b8ac687deb02b0eae130d1ef2458f8c8102f82200', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(359, 58, 57, 352, 1, 1, 'مراحل إنتاج الوسائط المتعددة.', '95636e7e37c792f8622b1f5a964cd9e666c17f841584', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(360, 58, 57, 352, 1, 1, 'أهم برمجيات معالجة الوسائط المتعددة', '8840d0e7b6ab20f962fe1dcb46a1e042e484501c1170', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(361, 58, 57, 353, 1, 1, 'مفهوم الحوسبة السحابية', '2b192341345e67bf0b11673888a1c6f8c8a86cc2987', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(362, 58, 57, 353, 1, 1, 'مزايا الحوسبة السحابية', 'ceeecad639d9f78b094f6edb4907e96856ac42e51734', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(363, 58, 57, 353, 1, 1, 'المكونات الازمة للحوسبة السحابية', '7ac3772fda80bb389bc6f1f11b19a753ad4ce6a12009', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(364, 58, 57, 353, 1, 1, 'نماذج خدمات الحوسبة السحابية', 'ed0892ed995536b24aee03f19c1f07e3b1699bc02607', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(365, 58, 57, 353, 1, 1, 'أنواع الحوسبة السحابية', '4aa08f0e64b4d149ee5725f89d8a35e1123ab8af2418', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(366, 58, 57, 353, 1, 1, 'أمثلة على خدمات الحوسبة السحابية', '96f896c6712a054377de46add82c546544569a501730', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(367, 58, 57, 353, 1, 1, 'تطبيقات الحوسبة السحابية واستخداماتها في الأجهزة الذكية', '6129322236d231827d0aa673a851fca64f327c1e1274', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(368, 58, 57, 353, 1, 1, 'تحديات الحوسبة السحابية', '34cc3e673140a1c4820114bada2f86b6435f6b90269', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(369, 58, 57, 354, 1, 1, 'تحديات الحوسبة السحابية', '564a7d97249756281ff6945325e7065ca14bc7372795', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(370, 58, 57, 354, 1, 1, ' تعامل الحاسب مع البيانات', 'eeace0b0eed48fff8f1d6297a0b53aabe798030b127', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(371, 58, 57, 354, 1, 1, ' النظم العددية', 'df505096d0874bed2ac9a5fed38010a4c6f4ec94902', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(372, 58, 57, 354, 1, 1, ' أنظمة الترميز', 'ea7bca26482f147cad9d5109ac0e08aa14237554910', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(373, 58, 57, 354, 1, 1, ' التصميم المنطقي', '35cd478283db0e3ac55f31fe53b864bf894df0b82578', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(374, 58, 57, 354, 1, 1, ' الجبر البولياني', '9881df1afafc7f539ffae15bfb964fdb52804b221652', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(375, 58, 57, 354, 1, 1, ' المعالج الدقيق (الميكروبرسسر)', '0e39913625174ae93caf57848d3be688a0ea42dd30', 'Contains all the basics', 1, '2018-11-05 09:01:24', '2018-11-05 09:01:24', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(612, 58, 24, 0, 1, 1, 'الوحدة الأولى :أشارك العالم', '0c6ce242736752e1c12771fac39995f2147b64c9144', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(613, 58, 24, 0, 1, 1, 'الوحدة الثانية: أصمم عروضي', '350c5a8b4bfcb4228357ed9d8785a38a90d3f34b1364', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(614, 58, 24, 0, 1, 1, 'الوحدة الثالثة: الحياة في العالم الذكي', 'b327672f7a49a927ed215db098a62a1cbc4ffb8d963', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(615, 58, 24, 612, 1, 1, 'مفهوم شبكة الحاسب', '4180379a0c6e5ec130bd18d17be6213f35b6ad732297', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(616, 58, 24, 612, 1, 1, 'أنواع شبكات الحاسب', 'f488216d2e15d7c07837d3c07b3ca8f9b528627e403', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(617, 58, 24, 612, 1, 1, 'وسائل الاتصال في شبكات الحاسب', 'd1865366217ac58dc248241156be361418db7e111115', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(618, 58, 24, 612, 1, 1, 'أجهزة توصيل شبكات الحاسب', '590180e2cc8584a6fe2db0cd2845ac8e21e724122904', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(619, 58, 24, 612, 1, 1, 'مفهوم الشبكة العالمية (الانترنت)', '354fbca8649a3383619a2e5587f308f40880bf0a1408', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(620, 58, 24, 612, 1, 1, 'مزايا الشبكات والإنترنت', 'affbe0b2a0246dbee85289ffb0aaa6a88f0f81c12511', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(621, 58, 24, 612, 1, 1, 'أضرار استخدام الإنترنت', 'ad3fe003f537717c9d83575f11ac06742861bf90490', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(622, 58, 24, 612, 1, 1, 'أمن المعلومات', '7c070ee9ad2702fab405019e60e44da4a903a4701073', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(623, 58, 24, 612, 1, 1, 'مشروع الوحدة', 'a77cb795f8f57efef208ce93324a6f1f88285815342', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(624, 58, 24, 612, 1, 1, 'خارطة الوحدة', '5af2250a6f08d7a414d40ee08bd539db341ae114869', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(625, 58, 24, 612, 1, 1, 'دليل الدراسة', 'b54a2532ec465052e88e1c6f6837fd5328f559d51034', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(626, 58, 24, 613, 1, 1, 'العروض التقديمية', '032ded512c1649cc6c6b7bbc42abf2fa5eeaf473346', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(627, 58, 24, 613, 1, 1, 'استخدامات العروض التقديمية', '269a131770ee84fc4260ffaf48e3802b73c1ab1f2188', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(628, 58, 24, 613, 1, 1, 'مزايا العروض التقديمية', '1b414d9033679e2f556920ff9997a233d4928a9317', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(629, 58, 24, 613, 1, 1, 'مواصفات العروض التقديمية الجيدة', 'bb54289eb0f5bd6aa2334448e7f34d8fb9ebac0f355', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(630, 58, 24, 613, 1, 1, 'أشهر برامج العروض التقديمية', '83a1bcd08f28408ce1de30997cec727ba4c1f3b316', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(631, 58, 24, 613, 1, 1, 'مشروع الوحدة', '7196f350e9fbc4af04382d268e15f66903a11e0a1230', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(632, 58, 24, 613, 1, 1, 'خارطة الوحدة', '1d379d279eaa59efc4d452ad24a4b7f211365de92703', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(633, 58, 24, 613, 1, 1, 'دليل الدراسة', 'c5676255d91e351e3fcf45a63b69775bd202bb502114', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(634, 58, 24, 614, 1, 1, 'مفهوم المجتمع المعرفي', '5a23e8e8e2dd31737df2041ff7adb4830915ccda2294', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(635, 58, 24, 614, 1, 1, 'سمات المجتمع المعرفي', '81ed69fda0fdfd86154bd0b0d493e80abcbd6c1450', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(636, 58, 24, 614, 1, 1, 'العالم الذكي ', '2ac4a21d55993afa461d3ee6d7780e6d2ee3f9ad1766', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(637, 58, 24, 614, 1, 1, 'أهمية التحول إلى المجتمع المعرفي في العالم المعاضر', '9c495edae067481c5c4e7787f117c3d5506cc6e12225', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(638, 58, 24, 614, 1, 1, 'اقتصاد المعرفة', '062fcfedb61114e8b7a13506d39ea1d3590c98582530', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(639, 58, 24, 614, 1, 1, 'منتجات المجتمع المعرفي والعالم الذكي', 'f31b034ffb24c4914a7afacec557d717e61c3642774', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(640, 58, 24, 614, 1, 1, 'مشروع الوحدة', '418a3bbf0d16b529a1491514f949a14a455428071200', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(641, 58, 24, 614, 1, 1, 'خارطة الوحدة', '465cb856a4cbc02cf8ed900b9453db038c23fc0c521', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(642, 58, 24, 614, 1, 1, 'دليل الدراسة', 'dbe3d6b9089f605fb1b9715dbcbed1a9c9f999572114', 'Contains all the basics', 1, '2018-11-10 10:50:28', '2018-11-10 10:50:28', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(643, 58, 25, 0, 1, 1, 'البرمجة والتحكم بالحاسب', '0f44f3ee164b35bcda86e83efcfb296d01bd7af21861', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(644, 58, 25, 0, 1, 1, 'البحث والاستكشاف في مصادر المعلومات الإلكترونية', 'c0e40b392e4ab8e4fa15fc52c57607f78170de6b2289', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(645, 58, 25, 0, 1, 1, 'توظيف التقنية للتعلم والتعليم', 'd34c4f3bfd3b2ddea17d2dd795db502ffe5f1b3f1894', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(646, 58, 25, 643, 1, 1, 'أهمية البرمجة', 'bf9d95ee009fb785952d042d4f73282b37bd7e8f2426', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(647, 58, 25, 643, 1, 1, 'مفهوم البرمجة والبرنامج', '52f117d41b7a2aab3ae89a9a380607f557710116192', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(648, 58, 25, 643, 1, 1, 'مستويات لغات البرمجة', '2805804c051359822a10b1200c2ecd52b8c1887a1899', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(649, 58, 25, 643, 1, 1, 'لغات البرمجة السائدة', '67496b72353da4a0cf59225b6bbe4729a3078dc51423', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(650, 58, 25, 643, 1, 1, 'لغة سكراتش', '85fdaed69cb3a41a8f722355d4697fa3aabd07ae2129', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(651, 58, 25, 643, 1, 1, 'قواعد البرمجة', 'da3bb84706ebdb72d18d526d37e50b0f7d2b59d5520', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(652, 58, 25, 643, 1, 1, 'مشروع الوحدة', '7c4696b146594968c45c45047c9aeec44a7fa3581610', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(653, 58, 25, 643, 1, 1, 'خارطة الوحدة', 'db54eee1c6b8beab9d88c0d84f0b836aba4ca32451', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(654, 58, 25, 643, 1, 1, 'دليل الدراسة', '6e5fcfd97154c3d42c5817af3c8dc20d664c61841333', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(655, 58, 25, 644, 1, 1, 'مصادر المعلومات الإلكترونية', '2f98c51c962fb6d4ac061e1244322039126e4b542588', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(656, 58, 25, 644, 1, 1, 'مصادر المعلومات على شبكة الإنترنت', 'c90fea2b49c15b294f23e5af5a5097f180bec0912641', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(657, 58, 25, 644, 1, 1, 'أهم آليات البحث الجيد في شبكة الإنترنت', 'a1ea64e318cafa949d6cdfaa42824eae93ae0c991502', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(658, 58, 25, 644, 1, 1, 'تقييم مصادر المعلومات على شبكة الإنترنت', 'f449bb2b69e641bc29345bab18cbb3dfd4c50c382954', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(659, 58, 25, 644, 1, 1, 'مشروع الوحدة', '06ced3da9feaa37744bd5cd0b9a7e4a1bc782583591', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(660, 58, 25, 644, 1, 1, 'خارطة الوحدة', 'ae40a0c1e1d7d36589f99dd7351ed8afcd590b09405', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(661, 58, 25, 644, 1, 1, 'دليل الدراسة', '429c0de473ce5bf3d9f3263cb12ed6e7c217d2c91775', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(662, 58, 25, 645, 1, 1, 'الأجهزة التعليمية', '1bd9f8a9c0ad986f243940925502f36f2bb8af972442', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(663, 58, 25, 645, 1, 1, 'البرامج التعليمية', '30da1bb1aaf4eb2fede3edabd5aba56f8ca18e8699', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(664, 58, 25, 645, 1, 1, 'أدوات التعليم المفتوح عبر الإنترنت', '4dbd8df5a89e88e2b958bbea03b47d9f41ac27ee1452', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(665, 58, 25, 645, 1, 1, 'مشروع الوحدة', '2afa45e73e6bbe2232bb0f586edfdcfe7ca367a31783', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(666, 58, 25, 645, 1, 1, 'خارطة الوحدة', 'ba7dc2cce229346c105f5d36192d6f628966d4bf894', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1),
(667, 58, 25, 645, 1, 1, 'دليل الدراسة', '39a6541d92b205f1dc5c90aef5aa43a80d0b45ba2941', 'Contains all the basics', 1, '2018-11-10 10:51:31', '2018-11-10 10:51:31', NULL, NULL, NULL, NULL, 1, 'topics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL DEFAULT '1',
  `default_lang` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `secondary_parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `stripe_active` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_brand` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `coupons_id` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'users',
  `branch_id` smallint(6) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `id_number`, `email`, `password`, `slug`, `login_enabled`, `role_id`, `category_id`, `default_lang`, `status`, `parent_id`, `secondary_parent_id`, `image`, `phone`, `address`, `stripe_active`, `stripe_id`, `stripe_plan`, `paypal_email`, `card_brand`, `card_last_four`, `trial_ends_at`, `subscription_ends_at`, `remember_token`, `settings`, `coupons_id`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1790, 'مدير التعليم الالكتروني', 'manager', '2269548687', 'support@sasbit.com', '$2y$10$aA2xj/JjaE8MrKRDNQ6w7ern3WGtWlv3xUdrqhO/pMO9xNV0tQL6S', 'mdyr-altaalym-alalktrony1206', 1, 1, 1, 13, 1, NULL, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'i5NXPy4WCglnGDJs9mKprwLs7GRx6ReYluRAkTHuGZWdRgH9fUlGHXcdtAOx', NULL, '0', NULL, '2017-08-08 00:07:43', '2018-12-04 21:44:40', '86.51.184.42', NULL, NULL, 1790, 2, 'users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'users_login',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `users_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 1790, '2018-12-13 23:04:42', NULL, NULL, '::1', 1790, NULL, 1, 'users_login', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `state` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user_feedback',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `state` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user_notification',
  `branch_id` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicholidays`
--
ALTER TABLE `academicholidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `branch_id_idx2` (`branch_id`);

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `branch_id_idx_` (`branch_id`);

--
-- Indexes for table `academics_dues`
--
ALTER TABLE `academics_dues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id_idx_5` (`branch_id`);

--
-- Indexes for table `academics_dues_pivot`
--
ALTER TABLE `academics_dues_pivot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id_idx2` (`academic_id`),
  ADD KEY `due_id_idx1` (`due_id`),
  ADD KEY `branch_id_idx_6` (`branch_id`);

--
-- Indexes for table `academics_semesters`
--
ALTER TABLE `academics_semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id_fk_` (`branch_id`),
  ADD KEY `academic_id` (`academic_id`);

--
-- Indexes for table `academic_course`
--
ALTER TABLE `academic_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `branch_id_inx1` (`branch_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id_idx8` (`subject_id`),
  ADD KEY `branch_id_idx_8` (`branch_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`),
  ADD KEY `branch_id_idx_9` (`branch_id`);

--
-- Indexes for table `autocall_requests`
--
ALTER TABLE `autocall_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fk_acr` (`student_id`),
  ADD KEY `parent_fk_acr` (`parent_id`),
  ADD KEY `branch_id_idx_10` (`branch_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `branch_id_idx_11` (`branch_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `category_name` (`category_name`,`slug`);

--
-- Indexes for table `certificateissues`
--
ALTER TABLE `certificateissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `issued_by` (`issued_by`),
  ADD KEY `student_id_fk12` (`student_id`),
  ADD KEY `branch_id_idx_12` (`branch_id`);

--
-- Indexes for table `certificatetemplates`
--
ALTER TABLE `certificatetemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couponcodes`
--
ALTER TABLE `couponcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couponcodes_usage`
--
ALTER TABLE `couponcodes_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `parent_id_14` (`parent_id`),
  ADD KEY `category_id_14` (`category_id`);

--
-- Indexes for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `course_parent_id` (`course_parent_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `branch_id_13` (`branch_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_code_unique` (`department_code`),
  ADD UNIQUE KEY `departments_slug_unique` (`slug`);

--
-- Indexes for table `dues_purchase`
--
ALTER TABLE `dues_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examseries`
--
ALTER TABLE `examseries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `examseries_data`
--
ALTER TABLE `examseries_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examseries_id` (`examseries_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `examtoppers`
--
ALTER TABLE `examtoppers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `quiz_result_id` (`quiz_result_id`),
  ADD KEY `quiz_id_2` (`quiz_id`),
  ADD KEY `quiz_result_id_2` (`quiz_result_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_group_unique` (`group`);

--
-- Indexes for table `homeworks_student`
--
ALTER TABLE `homeworks_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_id` (`homework_id`,`student_id`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `student_id17` (`student_id`);

--
-- Indexes for table `homeworks_student_replay`
--
ALTER TABLE `homeworks_student_replay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeworks_student_id` (`homeworks_student_id`),
  ADD KEY `sender_id18` (`sender_id`);

--
-- Indexes for table `home_works`
--
ALTER TABLE `home_works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id_16` (`staff_id`),
  ADD KEY `course_id16` (`course_id`),
  ADD KEY `course_parent_id16` (`course_parent_id`),
  ADD KEY `academic_id16` (`year`),
  ADD KEY `subject_id16` (`subject_id`),
  ADD KEY `branch_id_16` (`branch_id`),
  ADD KEY `category_id16` (`category_id`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `lessionplans`
--
ALTER TABLE `lessionplans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_subject_id` (`course_subject_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `libraryassetinstances`
--
ALTER TABLE `libraryassetinstances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `libraryassetinstances_asset_no_unique` (`asset_no`),
  ADD KEY `record_updated_by` (`record_updated_by`),
  ADD KEY `library_master_id` (`library_master_id`);

--
-- Indexes for table `libraryassettypes`
--
ALTER TABLE `libraryassettypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `libraryissues`
--
ALTER TABLE `libraryissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`master_asset_id`,`library_instance_id`,`record_updated_by`),
  ADD KEY `master_asset_id` (`master_asset_id`),
  ADD KEY `library_instance_id` (`library_instance_id`),
  ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `librarymasters`
--
ALTER TABLE `librarymasters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `librarymasters_slug_unique` (`slug`),
  ADD KEY `asset_type_id` (`asset_type_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `author_id` (`author_id`,`publisher_id`,`record_updated_by`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `lmscategories`
--
ALTER TABLE `lmscategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lmscategories_slug_unique` (`slug`),
  ADD KEY `course_id19` (`course_id`);

--
-- Indexes for table `lmscontents`
--
ALTER TABLE `lmscontents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lmscontents_slug_unique` (`slug`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_id20` (`academic_id`),
  ADD KEY `course_id20` (`course_id`),
  ADD KEY `topic_id20` (`topic_id`);

--
-- Indexes for table `lmsseries`
--
ALTER TABLE `lmsseries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lms_category_id` (`lms_category_id`);

--
-- Indexes for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lmsseries_id` (`lmsseries_id`),
  ADD KEY `lmscontent_id` (`lmscontent_id`);

--
-- Indexes for table `messages_files`
--
ALTER TABLE `messages_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_id` (`messages_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id21` (`user_id`),
  ADD KEY `thread_id21` (`thread_id`);

--
-- Indexes for table `messenger_participants`
--
ALTER TABLE `messenger_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messenger_threads`
--
ALTER TABLE `messenger_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulehelper`
--
ALTER TABLE `modulehelper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parenttimingsetmap`
--
ALTER TABLE `parenttimingsetmap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_publisher_unique` (`name`),
  ADD UNIQUE KEY `publishers_slug_unique` (`slug`),
  ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `academic_id23` (`academic_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionbank_quizzes_questionbank_id_foreign` (`questionbank_id`),
  ADD KEY `quize_id` (`quize_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `course_parent_id` (`course_parent_id`);

--
-- Indexes for table `quizcategories`
--
ALTER TABLE `quizcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quizcategories_slug_unique` (`slug`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quizofflinecategories`
--
ALTER TABLE `quizofflinecategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quizresults`
--
ALTER TABLE `quizresults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `course_parent_id` (`course_parent_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quizzes_slug_unique` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `instructions_page_id` (`instructions_page_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `offline_quiz_category_id` (`offline_quiz_category_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `religions_religion_name_unique` (`religion_name`),
  ADD UNIQUE KEY `religions_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `secondary_parent_student`
--
ALTER TABLE `secondary_parent_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `secondary_parent_id` (`secondary_parent_id`);

--
-- Indexes for table `semisters`
--
ALTER TABLE `semisters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD UNIQUE KEY `settings_slug_unique` (`slug`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_staff_id_unique` (`staff_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`,`academic_id`,`course_parent_id`,`course_id`,`subject_id`,`record_updated_by`),
  ADD KEY `semester` (`semester`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `record_updated_by` (`record_updated_by`),
  ADD KEY `studentattendance_ibfk_4` (`subject_id`);

--
-- Indexes for table `studentpromotions`
--
ALTER TABLE `studentpromotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`student_id`,`record_updated_by`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`),
  ADD KEY `academic_id` (`academic_id`,`course_parent_id`,`course_id`,`user_id`,`parent_user_id`,`record_updated_by`),
  ADD KEY `course_parent_id` (`course_parent_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `parent_user_id` (`parent_user_id`),
  ADD KEY `record_updated_by` (`record_updated_by`),
  ADD KEY `students_ibfk_4` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `religion_id` (`religion_id`),
  ADD KEY `branch_id31` (`branch_id`);

--
-- Indexes for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id29` (`users_id`);

--
-- Indexes for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `subject_title` (`subject_title`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id30` (`user_id`);

--
-- Indexes for table `supervisors_staff`
--
ALTER TABLE `supervisors_staff`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`academic_id`,`course_id`,`timingset_id`,`timingset_map_id`,`timingset_details_id`,`user_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `timingset_id` (`timingset_id`),
  ADD KEY `timingsetmap_id` (`timingset_map_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `timig_set_details_id` (`timingset_details_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `timingset`
--
ALTER TABLE `timingset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timingsetdetails`
--
ALTER TABLE `timingsetdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timingset_id` (`timingset_id`);

--
-- Indexes for table `timingsetmap`
--
ALTER TABLE `timingsetmap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`timingset_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `academic_id` (`academic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `id_number` (`id_number`),
  ADD UNIQUE KEY `id_number_2` (`id_number`),
  ADD KEY `id` (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `branch_id34` (`branch_id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id35` (`users_id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `feedback_id` (`feedback_id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicholidays`
--
ALTER TABLE `academicholidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `academics_dues`
--
ALTER TABLE `academics_dues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `academics_dues_pivot`
--
ALTER TABLE `academics_dues_pivot`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academics_semesters`
--
ALTER TABLE `academics_semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `academic_course`
--
ALTER TABLE `academic_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `autocall_requests`
--
ALTER TABLE `autocall_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `certificateissues`
--
ALTER TABLE `certificateissues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificatetemplates`
--
ALTER TABLE `certificatetemplates`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `couponcodes`
--
ALTER TABLE `couponcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couponcodes_usage`
--
ALTER TABLE `couponcodes_usage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `course_subject`
--
ALTER TABLE `course_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2316;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dues_purchase`
--
ALTER TABLE `dues_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examseries`
--
ALTER TABLE `examseries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examseries_data`
--
ALTER TABLE `examseries_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examtoppers`
--
ALTER TABLE `examtoppers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeworks_student`
--
ALTER TABLE `homeworks_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `homeworks_student_replay`
--
ALTER TABLE `homeworks_student_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `home_works`
--
ALTER TABLE `home_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lessionplans`
--
ALTER TABLE `lessionplans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `libraryassetinstances`
--
ALTER TABLE `libraryassetinstances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libraryassettypes`
--
ALTER TABLE `libraryassettypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `libraryissues`
--
ALTER TABLE `libraryissues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `librarymasters`
--
ALTER TABLE `librarymasters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lmscategories`
--
ALTER TABLE `lmscategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lmscontents`
--
ALTER TABLE `lmscontents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lmsseries`
--
ALTER TABLE `lmsseries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages_files`
--
ALTER TABLE `messages_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messenger_participants`
--
ALTER TABLE `messenger_participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messenger_threads`
--
ALTER TABLE `messenger_threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `modulehelper`
--
ALTER TABLE `modulehelper`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parenttimingsetmap`
--
ALTER TABLE `parenttimingsetmap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questionbank`
--
ALTER TABLE `questionbank`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `quizcategories`
--
ALTER TABLE `quizcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `quizofflinecategories`
--
ALTER TABLE `quizofflinecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quizresults`
--
ALTER TABLE `quizresults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `secondary_parent_student`
--
ALTER TABLE `secondary_parent_student`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2054;

--
-- AUTO_INCREMENT for table `semisters`
--
ALTER TABLE `semisters`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentpromotions`
--
ALTER TABLE `studentpromotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_documents`
--
ALTER TABLE `student_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supervisors_staff`
--
ALTER TABLE `supervisors_staff`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `timingset`
--
ALTER TABLE `timingset`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `timingsetdetails`
--
ALTER TABLE `timingsetdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `timingsetmap`
--
ALTER TABLE `timingsetmap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8988;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academics_dues_pivot`
--
ALTER TABLE `academics_dues_pivot`
  ADD CONSTRAINT `academic_id_fk_6` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `due_id_fk_6` FOREIGN KEY (`due_id`) REFERENCES `academics_dues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `academics_semesters`
--
ALTER TABLE `academics_semesters`
  ADD CONSTRAINT `academic_id_fk_7` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `academic_course`
--
ALTER TABLE `academic_course`
  ADD CONSTRAINT `academic_id_bk1` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_id_bk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `subject_id_fk8` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `autocall_requests`
--
ALTER TABLE `autocall_requests`
  ADD CONSTRAINT `branch_id_fk_10` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parent_fk_acr` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_fk_acr` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `questionbank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookmarks_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certificateissues`
--
ALTER TABLE `certificateissues`
  ADD CONSTRAINT `student_id_fk12` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_fk12` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `couponcodes_usage`
--
ALTER TABLE `couponcodes_usage`
  ADD CONSTRAINT `couponcodes_usage_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `couponcodes_usage_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `couponcodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `category_id_15` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
  ADD CONSTRAINT `course_id_16` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD CONSTRAINT `academic_id_13` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_id_13` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_parent_id_13` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_id_13` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `examseries`
--
ALTER TABLE `examseries`
  ADD CONSTRAINT `examseries_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `quizcategories` (`id`);

--
-- Constraints for table `examseries_data`
--
ALTER TABLE `examseries_data`
  ADD CONSTRAINT `examseries_data_ibfk_1` FOREIGN KEY (`examseries_id`) REFERENCES `examseries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examseries_data_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `examtoppers`
--
ALTER TABLE `examtoppers`
  ADD CONSTRAINT `examtoppers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examtoppers_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `examtoppers_ibfk_3` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizresults` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeworks_student`
--
ALTER TABLE `homeworks_student`
  ADD CONSTRAINT `HW_id` FOREIGN KEY (`homework_id`) REFERENCES `home_works` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_id17` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homeworks_student_replay`
--
ALTER TABLE `homeworks_student_replay`
  ADD CONSTRAINT `homeworks_student_id` FOREIGN KEY (`homeworks_student_id`) REFERENCES `homeworks_student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sender_id` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `home_works`
--
ALTER TABLE `home_works`
  ADD CONSTRAINT `branch_id16` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `category_id16` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `course_id16` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_parent_id16` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `staff_id16` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `subject_id16` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `year16` FOREIGN KEY (`year`) REFERENCES `academics` (`id`);

--
-- Constraints for table `lessionplans`
--
ALTER TABLE `lessionplans`
  ADD CONSTRAINT `lessionplans_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lessionplans_ibfk_2` FOREIGN KEY (`course_subject_id`) REFERENCES `course_subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `libraryassetinstances`
--
ALTER TABLE `libraryassetinstances`
  ADD CONSTRAINT `libraryassetinstances_ibfk_1` FOREIGN KEY (`library_master_id`) REFERENCES `librarymasters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libraryassetinstances_ibfk_2` FOREIGN KEY (`record_updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `libraryissues`
--
ALTER TABLE `libraryissues`
  ADD CONSTRAINT `libraryissues_ibfk_1` FOREIGN KEY (`master_asset_id`) REFERENCES `librarymasters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libraryissues_ibfk_2` FOREIGN KEY (`library_instance_id`) REFERENCES `libraryassetinstances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libraryissues_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `librarymasters`
--
ALTER TABLE `librarymasters`
  ADD CONSTRAINT `librarymasters_ibfk_1` FOREIGN KEY (`asset_type_id`) REFERENCES `libraryassettypes` (`id`),
  ADD CONSTRAINT `librarymasters_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `librarymasters_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `lmscategories`
--
ALTER TABLE `lmscategories`
  ADD CONSTRAINT `course_id_112` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lmscontents`
--
ALTER TABLE `lmscontents`
  ADD CONSTRAINT `academic_id20` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_id20` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_id20` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topic_id20` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lmsseries`
--
ALTER TABLE `lmsseries`
  ADD CONSTRAINT `lms_category_id` FOREIGN KEY (`lms_category_id`) REFERENCES `lmscategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
  ADD CONSTRAINT `lmsseries_data_ibfk_1` FOREIGN KEY (`lmsseries_id`) REFERENCES `lmsseries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lmsseries_data_ibfk_2` FOREIGN KEY (`lmscontent_id`) REFERENCES `lmscontents` (`id`);

--
-- Constraints for table `messages_files`
--
ALTER TABLE `messages_files`
  ADD CONSTRAINT `MSG_id` FOREIGN KEY (`messages_id`) REFERENCES `messenger_messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD CONSTRAINT `thread_id21` FOREIGN KEY (`thread_id`) REFERENCES `messenger_threads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id21` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messenger_participants`
--
ALTER TABLE `messenger_participants`
  ADD CONSTRAINT `thread_id22` FOREIGN KEY (`thread_id`) REFERENCES `messenger_threads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publishers`
--
ALTER TABLE `publishers`
  ADD CONSTRAINT `publishers_ibfk_1` FOREIGN KEY (`record_updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD CONSTRAINT `academic_id23` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_id23` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_id23` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topic_id23` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
  ADD CONSTRAINT `questionbank_id` FOREIGN KEY (`questionbank_id`) REFERENCES `questionbank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questionbank_quizzes_ibfk_3` FOREIGN KEY (`quize_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_id30` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
  ADD CONSTRAINT `course_id_122` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_parent_id_122` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizapplicability_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizapplicability_ibfk_2` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizcategories`
--
ALTER TABLE `quizcategories`
  ADD CONSTRAINT `course_id24` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizofflinecategories`
--
ALTER TABLE `quizofflinecategories`
  ADD CONSTRAINT `course_id25` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizresults`
--
ALTER TABLE `quizresults`
  ADD CONSTRAINT `academic_id26` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_id26` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_parent_id26` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_id26` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizresults_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `quizcategories` (`id`),
  ADD CONSTRAINT `quizzes_ibfk_2` FOREIGN KEY (`instructions_page_id`) REFERENCES `instructions` (`id`),
  ADD CONSTRAINT `quizzes_ibfk_3` FOREIGN KEY (`offline_quiz_category_id`) REFERENCES `quizofflinecategories` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `secondary_parent_student`
--
ALTER TABLE `secondary_parent_student`
  ADD CONSTRAINT `secondary_parent_id` FOREIGN KEY (`secondary_parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semisters`
--
ALTER TABLE `semisters`
  ADD CONSTRAINT `semisters_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `course_id27` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `branch_id28` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD CONSTRAINT `academic_id` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `record_updated_by` FOREIGN KEY (`record_updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `studentattendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_id123` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentpromotions`
--
ALTER TABLE `studentpromotions`
  ADD CONSTRAINT `studentpromotions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `studentpromotions_ibfk_2` FOREIGN KEY (`record_updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `studentpromotions_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD CONSTRAINT `users_id29` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  ADD CONSTRAINT `subjectpreferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjectpreferences_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subjectpreferences_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `user_id30` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisors_staff`
--
ALTER TABLE `supervisors_staff`
  ADD CONSTRAINT `staff_id31` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supervisor_id31` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_ibfk_10` FOREIGN KEY (`timingset_map_id`) REFERENCES `timingsetmap` (`id`),
  ADD CONSTRAINT `timetable_ibfk_11` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `timetable_ibfk_12` FOREIGN KEY (`timingset_details_id`) REFERENCES `timingsetdetails` (`id`),
  ADD CONSTRAINT `timetable_ibfk_13` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `timetable_ibfk_14` FOREIGN KEY (`timingset_details_id`) REFERENCES `timingsetdetails` (`id`),
  ADD CONSTRAINT `timetable_ibfk_7` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `timetable_ibfk_8` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `timetable_ibfk_9` FOREIGN KEY (`timingset_id`) REFERENCES `timingset` (`id`);

--
-- Constraints for table `timingsetdetails`
--
ALTER TABLE `timingsetdetails`
  ADD CONSTRAINT `timingsetdetails_ibfk_1` FOREIGN KEY (`timingset_id`) REFERENCES `timingset` (`id`);

--
-- Constraints for table `timingsetmap`
--
ALTER TABLE `timingsetmap`
  ADD CONSTRAINT `timingsetmap_ibfk_6` FOREIGN KEY (`timingset_id`) REFERENCES `timingset` (`id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `academic_id32` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_id32` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `branch_id34` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `users_login`
--
ALTER TABLE `users_login`
  ADD CONSTRAINT `users_id35` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD CONSTRAINT `user_id33` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD CONSTRAINT `notifi_id` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
