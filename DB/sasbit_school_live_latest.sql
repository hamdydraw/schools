-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 05:56 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sasbit_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicholidays`
--

CREATE TABLE IF NOT EXISTS `academicholidays` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('day','date') COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academicholidays',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE IF NOT EXISTS `academics` (
  `id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`id`, `academic_year_title`, `slug`, `academic_start_date`, `academic_end_date`, `total_semesters`, `show_in_list`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, '2017-2018', '2017-2018', '2017-09-01', '2018-05-15', 2, 1, '2017-08-09 01:29:03', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 'academics', 1),
(6, '2018-2019', '2018-2019', '2018-01-09', '2019-05-23', 2, 0, '2017-12-24 00:43:45', '2018-04-12 09:20:28', '51.36.108.22', NULL, NULL, 1790, 2, 'academics', 1),
(7, '2019-2020', '2019-2020', '2019-08-07', '2020-05-24', 2, 0, '2017-12-25 01:00:02', '2018-01-31 09:06:25', NULL, NULL, NULL, NULL, 1, 'academics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academics_dues`
--

CREATE TABLE IF NOT EXISTS `academics_dues` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics_dues',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics_dues`
--

INSERT INTO `academics_dues` (`id`, `title`, `slug`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(11, 'الرسوم الدراسية', '27bfe303875d42b7ab1165fb1c003bd556f866a9233', NULL, '2018-04-06 08:40:51', '2018-04-06 09:07:10', NULL, '51.39.71.175', 1790, NULL, 1, 'academics_dues', 1),
(12, 'المواصلات.', '47653c453dbe3e326b4bd41e11ff06e86aad8d1d1318', NULL, '2018-04-06 08:41:04', '2018-04-08 03:32:45', '51.36.99.186', '51.39.71.175', 1790, 1790, 2, 'academics_dues', 1),
(13, 'الزي الموحد.', 'a4f30a1314ec6a6b7ef774cd731601c132136340154', NULL, '2018-04-06 08:41:16', '2018-04-11 07:52:56', '51.36.108.22', '51.39.71.175', 1790, 1790, 2, 'academics_dues', 1),
(14, 'الأنشطة', '634e2ff4aef4a9f1203e9cb416fc9484bc1d5ba3402', NULL, '2018-04-06 08:41:30', '2018-04-07 12:11:34', '51.36.99.186', '51.39.71.175', 1790, 1790, 2, 'academics_dues', 1),
(15, 'الخدمات الالكترونية', '22d9adecdfe58805a10584a36eabb19968eea5e53029', NULL, '2018-04-07 12:08:49', '2018-04-07 12:21:29', '51.36.99.186', '51.36.99.186', 1790, 1790, 2, 'academics_dues', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academics_dues_pivot`
--

CREATE TABLE IF NOT EXISTS `academics_dues_pivot` (
  `id` int(11) NOT NULL,
  `academic_id` tinyint(2) DEFAULT NULL,
  `course_parent` int(3) NOT NULL,
  `due_id` int(4) DEFAULT NULL,
  `due_value` int(8) DEFAULT NULL,
  `due_type` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics_dues_pivot'
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics_dues_pivot`
--

INSERT INTO `academics_dues_pivot` (`id`, `academic_id`, `course_parent`, `due_id`, `due_value`, `due_type`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(63, 1, 17, 11, 15000, 'mandatory', NULL, '2018-04-11 07:52:17', '2018-04-11 07:52:17', NULL, '51.36.108.22', 1790, NULL, 1, 1, 'academics_dues_pivot'),
(64, 1, 17, 12, 1000, 'optional', NULL, '2018-04-11 07:52:17', '2018-04-11 07:52:17', NULL, '51.36.108.22', 1790, NULL, 1, 1, 'academics_dues_pivot'),
(65, 1, 17, 13, 600, 'mandatory', NULL, '2018-04-11 07:52:17', '2018-04-11 07:52:17', NULL, '51.36.108.22', 1790, NULL, 1, 1, 'academics_dues_pivot'),
(66, 1, 17, 14, 400, 'optional', NULL, '2018-04-11 07:52:17', '2018-04-11 07:52:17', NULL, '51.36.108.22', 1790, NULL, 1, 1, 'academics_dues_pivot');

-- --------------------------------------------------------

--
-- Table structure for table `academics_semesters`
--

CREATE TABLE IF NOT EXISTS `academics_semesters` (
  `id` int(11) NOT NULL,
  `academic_id` int(8) NOT NULL,
  `sem_num` int(3) NOT NULL,
  `sem_start_date` datetime NOT NULL,
  `sem_end_date` datetime NOT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academics_semesters'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics_semesters`
--

INSERT INTO `academics_semesters` (`id`, `academic_id`, `sem_num`, `sem_start_date`, `sem_end_date`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`, `record_status`, `branch_id`, `table_name`) VALUES
(13, 7, 1, '2019-09-01 00:00:00', '2020-01-01 00:00:00', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'academics_semesters'),
(14, 7, 2, '2020-01-15 00:00:00', '2020-05-15 00:00:00', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'academics_semesters'),
(21, 1, 1, '2017-09-01 00:00:00', '2018-04-11 00:00:00', NULL, '51.36.108.22', 1790, NULL, '2018-04-10 18:47:35', '0000-00-00 00:00:00', 1, 1, 'academics_semesters'),
(22, 1, 2, '2018-04-12 00:00:00', '2018-05-15 00:00:00', NULL, '51.36.108.22', 1790, NULL, '2018-04-10 18:47:35', '0000-00-00 00:00:00', 1, 1, 'academics_semesters'),
(25, 6, 1, '2018-09-01 00:00:00', '2019-01-14 00:00:00', NULL, '51.36.108.22', 1790, NULL, '2018-04-11 22:50:28', '0000-00-00 00:00:00', 1, 1, 'academics_semesters'),
(26, 6, 2, '2019-01-15 00:00:00', '2019-05-23 00:00:00', NULL, '51.36.108.22', 1790, NULL, '2018-04-11 22:50:28', '0000-00-00 00:00:00', 1, 1, 'academics_semesters');

-- --------------------------------------------------------

--
-- Table structure for table `academic_course`
--

CREATE TABLE IF NOT EXISTS `academic_course` (
  `id` bigint(20) unsigned NOT NULL,
  `academic_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `course_parent_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'academic_course'
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_course`
--

INSERT INTO `academic_course` (`id`, `academic_id`, `course_id`, `course_parent_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(222, 7, 17, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(223, 7, 18, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(224, 7, 19, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(225, 7, 20, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(226, 7, 21, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(227, 7, 22, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(228, 7, 23, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(229, 7, 24, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(230, 7, 25, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(231, 7, 26, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(232, 7, 27, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(233, 7, 28, 0, '2018-01-07 05:43:53', '2018-01-07 05:43:53', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(246, 6, 17, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(247, 6, 18, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(248, 6, 19, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(249, 6, 20, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(250, 6, 21, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(251, 6, 22, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(252, 6, 23, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(253, 6, 24, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(254, 6, 25, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(255, 6, 26, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(256, 6, 27, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(257, 6, 28, 0, '2018-01-08 16:47:22', '2018-01-08 16:47:22', NULL, NULL, NULL, NULL, 1, 1, 'academic_course'),
(258, 1, 17, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(259, 1, 18, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(260, 1, 19, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(261, 1, 20, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(262, 1, 21, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(263, 1, 22, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(264, 1, 23, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(265, 1, 24, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(266, 1, 25, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(267, 1, 26, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(268, 1, 27, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course'),
(269, 1, 28, 0, '2018-02-28 19:48:00', '2018-02-28 19:48:00', NULL, '82.147.193.156', 1790, NULL, 1, 1, 'academic_course');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` int(10) unsigned NOT NULL,
  `log_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activity_log'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'authors',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `gender`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'احسان عبد القدوس', 'ahsan-aabd-alkdos660', 'male', '', 1790, '2018-02-22 07:22:00', '2018-03-26 06:35:29', NULL, '51.39.70.14', 1790, NULL, 2, 'authors', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `item_type` enum('questions') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'questions',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bookmarks'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(10) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `slug`, `name`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`) VALUES
(1, 'sasbit_school123', 'مدارس ساسبت الاهلية المدينة بنين', '2018-04-09 08:08:13', '2018-04-16 08:30:46', '51.36.111.15', NULL, 1790, 1790, 2, 'branch'),
(2, 'second-school526-c24cd50742c9511ffad669cf0f06f28da949f7ef', 'مدارس ساسبت الاهلية المدينة بنات', '2018-04-09 16:59:18', '2018-04-16 08:30:59', '51.36.111.15', '::1', 1790, 1790, 2, 'branch'),
(4, 'mdars-sasbt-alahly-fraa-alkhbr1798-206b742453ebd5c84ca24301f1334551eb6dd6c8', 'مدارس ساسبت الاهلية الخبر بنين', '2018-04-14 09:12:36', '2018-04-16 08:33:45', '51.36.111.15', '51.39.97.99', 1790, 1790, 2, 'branch');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'categories',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `slug`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'عربي', 'Active', 'aarby2490', '2017-10-12 07:41:34', '2018-04-15 07:54:14', '51.36.111.15', NULL, NULL, 1790, 2, 'categories', 1),
(3, 'دولي', 'Active', 'doly1142', '2017-10-13 07:21:10', '2018-04-15 07:54:04', '51.36.111.15', NULL, NULL, 1790, 2, 'categories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `certificateissues`
--

CREATE TABLE IF NOT EXISTS `certificateissues` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `roll_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `academic_year_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `certificate_data` text COLLATE utf8_unicode_ci,
  `certificate_type` enum('bonafide','tc') COLLATE utf8_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issued_by` bigint(20) unsigned NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semister` int(11) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'certificateissues'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificatetemplates`
--

CREATE TABLE IF NOT EXISTS `certificatetemplates` (
  `id` int(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `type` enum('content','header','footer','independent') NOT NULL,
  `updated_by` int(50) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'certificatetemplates',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'countries'
) ENGINE=MyISAM AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`, `record_status`, `branch_id`, `table_name`) VALUES
(251, 'SA', 'Saudi_Arabia', NULL, NULL, 0, 0, '2018-02-22 03:00:03', '2018-02-20 14:44:14', 1, 1, 'countries'),
(252, 'AL', 'Albania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(253, 'DZ', 'Algeria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(254, 'DS', 'American_Samoa', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(255, 'AD', 'Andorra', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(256, 'AO', 'Angola', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(257, 'AI', 'Anguilla', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(258, 'AQ', 'Antarctica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(259, 'AG', 'Antigua_and_Barbuda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(260, 'AR', 'Argentina', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(261, 'AM', 'Armenia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(262, 'AW', 'Aruba', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(263, 'AU', 'Australia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(264, 'AT', 'Austria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(265, 'AZ', 'Azerbaijan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(266, 'BS', 'Bahamas', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(267, 'BH', 'Bahrain', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(268, 'BD', 'Bangladesh', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(269, 'BB', 'Barbados', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(270, 'BY', 'Belarus', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(271, 'BE', 'Belgium', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(272, 'BZ', 'Belize', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(273, 'BJ', 'Benin', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(274, 'BM', 'Bermuda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(275, 'BT', 'Bhutan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(276, 'BO', 'Bolivia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(277, 'BA', 'Bosnia_and_Herzegovina', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(278, 'BW', 'Botswana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(279, 'BV', 'Bouvet_Island', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(280, 'BR', 'Brazil', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(281, 'IO', 'British_Indian_Ocean_Territory', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(282, 'BN', 'Brunei_Darussalam', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(283, 'BG', 'Bulgaria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(284, 'BF', 'Burkina_Faso', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(285, 'BI', 'Burundi', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(286, 'KH', 'Cambodia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(287, 'CM', 'Cameroon', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(288, 'CA', 'Canada', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(289, 'CV', 'Cape_Verde', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(290, 'KY', 'Cayman_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(291, 'CF', 'Central_African_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(292, 'TD', 'Chad', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(293, 'CL', 'Chile', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(294, 'CN', 'China', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(295, 'CX', 'Christmas_Island', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(296, 'CC', 'Cocos_Keeling_Islands', NULL, NULL, 0, 0, '2018-02-22 03:50:23', '2018-02-20 14:44:14', 1, 1, 'countries'),
(297, 'CO', 'Colombia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(298, 'KM', 'Comoros', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(299, 'CG', 'Congo', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(300, 'CK', 'Cook_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(301, 'CR', 'Costa_Rica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(302, 'HR', 'Croatia_Hrvatska', NULL, NULL, 0, 0, '2018-02-22 03:50:41', '2018-02-20 14:44:14', 1, 1, 'countries'),
(303, 'CU', 'Cuba', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(304, 'CY', 'Cyprus', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(305, 'CZ', 'Czech_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(306, 'DK', 'Denmark', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(307, 'DJ', 'Djibouti', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(308, 'DM', 'Dominica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(309, 'DO', 'Dominican_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(310, 'TP', 'East_Timor', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(311, 'EC', 'Ecuador', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(312, 'EG', 'Egypt', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(313, 'SV', 'El_Salvador', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(314, 'GQ', 'Equatorial_Guinea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(315, 'ER', 'Eritrea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(316, 'EE', 'Estonia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(317, 'ET', 'Ethiopia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(318, 'FK', 'Falkland_Islands_Malvinas', NULL, NULL, 0, 0, '2018-02-22 03:50:48', '2018-02-20 14:44:14', 1, 1, 'countries'),
(319, 'FO', 'Faroe_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(320, 'FJ', 'Fiji', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(321, 'FI', 'Finland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(322, 'FR', 'France', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(323, 'FX', 'France_Metropolitan', NULL, NULL, 0, 0, '2018-02-22 03:59:58', '2018-02-20 14:44:14', 1, 1, 'countries'),
(324, 'GF', 'French_Guiana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(325, 'PF', 'French_Polynesia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(326, 'TF', 'French_Southern_Territories', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(327, 'GA', 'Gabon', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(328, 'GM', 'Gambia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(329, 'GE', 'Georgia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(330, 'DE', 'Germany', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(331, 'GH', 'Ghana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(332, 'GI', 'Gibraltar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(333, 'GK', 'Guernsey', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(334, 'GR', 'Greece', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(335, 'GL', 'Greenland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(336, 'GD', 'Grenada', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(337, 'GP', 'Guadeloupe', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(338, 'GU', 'Guam', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(339, 'GT', 'Guatemala', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(340, 'GN', 'Guinea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(341, 'GW', 'Guinea_Bissau', NULL, NULL, 0, 0, '2018-02-22 04:00:20', '2018-02-20 14:44:14', 1, 1, 'countries'),
(342, 'GY', 'Guyana', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(343, 'HT', 'Haiti', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(344, 'HM', 'Heard_and_Mc_Donald_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(345, 'HN', 'Honduras', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(346, 'HK', 'Hong_Kong', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(347, 'HU', 'Hungary', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(348, 'IS', 'Iceland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(349, 'IN', 'India', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(350, 'IM', 'Isle_of_Man', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(351, 'ID', 'Indonesia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(352, 'IR', 'Iran_Islamic_Republic_of', NULL, NULL, 0, 0, '2018-02-22 03:51:11', '2018-02-20 14:44:14', 1, 1, 'countries'),
(353, 'IQ', 'Iraq', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(354, 'IE', 'Ireland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(355, 'IL', 'Israel', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(356, 'IT', 'Italy', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(357, 'CI', 'Ivory_Coast', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(358, 'JE', 'Jersey', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(359, 'JM', 'Jamaica', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(360, 'JP', 'Japan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(361, 'JO', 'Jordan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(362, 'KZ', 'Kazakhstan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(363, 'KE', 'Kenya', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(364, 'KI', 'Kiribati', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(365, 'KP', 'Korea_Democratic_Peoples_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:01:16', '2018-02-20 14:44:14', 1, 1, 'countries'),
(366, 'KR', 'Korea_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:01:21', '2018-02-20 14:44:14', 1, 1, 'countries'),
(367, 'XK', 'Kosovo', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(368, 'KW', 'Kuwait', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(369, 'KG', 'Kyrgyzstan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(370, 'LA', 'Lao_Peoples_Democratic_Republic', NULL, NULL, 0, 0, '2018-02-22 03:51:27', '2018-02-20 14:44:14', 1, 1, 'countries'),
(371, 'LV', 'Latvia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(372, 'LB', 'Lebanon', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(373, 'LS', 'Lesotho', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(374, 'LR', 'Liberia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(375, 'LY', 'Libyan_Arab_Jamahiriya', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(376, 'LI', 'Liechtenstein', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(377, 'LT', 'Lithuania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(378, 'LU', 'Luxembourg', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(379, 'MO', 'Macau', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(380, 'MK', 'Macedonia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(381, 'MG', 'Madagascar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(382, 'MW', 'Malawi', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(383, 'MY', 'Malaysia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(384, 'MV', 'Maldives', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(385, 'ML', 'Mali', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(386, 'MT', 'Malta', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(387, 'MH', 'Marshall_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(388, 'MQ', 'Martinique', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(389, 'MR', 'Mauritania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(390, 'MU', 'Mauritius', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(391, 'TY', 'Mayotte', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(392, 'MX', 'Mexico', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(393, 'FM', 'Micronesia_Federated_States_of', NULL, NULL, 0, 0, '2018-02-22 04:02:08', '2018-02-20 14:44:14', 1, 1, 'countries'),
(394, 'MD', 'Moldova_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:02:12', '2018-02-20 14:44:14', 1, 1, 'countries'),
(395, 'MC', 'Monaco', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(396, 'MN', 'Mongolia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(397, 'ME', 'Montenegro', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(398, 'MS', 'Montserrat', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(399, 'MA', 'Morocco', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(400, 'MZ', 'Mozambique', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(401, 'MM', 'Myanmar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(402, 'NA', 'Namibia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(403, 'NR', 'Nauru', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(404, 'NP', 'Nepal', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(405, 'NL', 'Netherlands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(406, 'AN', 'Netherlands_Antilles', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(407, 'NC', 'New_Caledonia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(408, 'NZ', 'New_Zealand', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(409, 'NI', 'Nicaragua', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(410, 'NE', 'Niger', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(411, 'NG', 'Nigeria', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(412, 'NU', 'Niue', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(413, 'NF', 'Norfolk_Island', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(414, 'MP', 'Northern_Mariana_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(415, 'NO', 'Norway', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(416, 'OM', 'Oman', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(417, 'PK', 'Pakistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(418, 'PW', 'Palau', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(419, 'PS', 'Palestine', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(420, 'PA', 'Panama', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(421, 'PG', 'Papua_New_Guinea', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(422, 'PY', 'Paraguay', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(423, 'PE', 'Peru', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(424, 'PH', 'Philippines', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(425, 'PN', 'Pitcairn', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(426, 'PL', 'Poland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(427, 'PT', 'Portugal', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(428, 'PR', 'Puerto_Rico', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(429, 'QA', 'Qatar', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(430, 'RE', 'Reunion', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(431, 'RO', 'Romania', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(432, 'RU', 'Russian_Federation', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(433, 'RW', 'Rwanda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(434, 'KN', 'Saint_Kitts_and_Nevis', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(435, 'LC', 'Saint_Lucia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(436, 'VC', 'Saint_Vincent_and_the_Grenadines', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(437, 'WS', 'Samoa', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(438, 'SM', 'San_Marino', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(439, 'ST', 'Sao_Tome_and_Principe', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(440, 'SN', 'Senegal', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(441, 'RS', 'Serbia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(442, 'SC', 'Seychelles', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(443, 'SL', 'Sierra_Leone', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(444, 'SG', 'Singapore', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(445, 'SK', 'Slovakia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(446, 'SI', 'Slovenia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(447, 'SB', 'Solomon_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(448, 'SO', 'Somalia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(449, 'ZA', 'South_Africa', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(450, 'GS', 'South_Georgia_South_Sandwich_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(451, 'ES', 'Spain', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(452, 'LK', 'Sri_Lanka', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(453, 'SH', 'St_Helena', NULL, NULL, 0, 0, '2018-02-22 04:04:41', '2018-02-20 14:44:14', 1, 1, 'countries'),
(454, 'PM', 'St_Pierre_and_Miquelon', NULL, NULL, 0, 0, '2018-02-22 04:04:44', '2018-02-20 14:44:14', 1, 1, 'countries'),
(455, 'SD', 'Sudan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(456, 'SR', 'Suriname', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(457, 'SJ', 'Svalbard_and_Jan_Mayen_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(458, 'SZ', 'Swaziland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(459, 'SE', 'Sweden', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(460, 'CH', 'Switzerland', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(461, 'SY', 'Syrian_Arab_Republic', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(462, 'TW', 'Taiwan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(463, 'TJ', 'Tajikistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(464, 'TZ', 'Tanzania_United_Republic_of', NULL, NULL, 0, 0, '2018-02-22 04:04:28', '2018-02-20 14:44:14', 1, 1, 'countries'),
(465, 'TH', 'Thailand', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(466, 'TG', 'Togo', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(467, 'TK', 'Tokelau', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(468, 'TO', 'Tonga', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(469, 'TT', 'Trinidad_and_Tobago', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(470, 'TN', 'Tunisia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(471, 'TR', 'Turkey', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(472, 'TM', 'Turkmenistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(473, 'TC', 'Turks_and_Caicos_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(474, 'TV', 'Tuvalu', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(475, 'UG', 'Uganda', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(476, 'UA', 'Ukraine', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(477, 'AE', 'United_Arab_Emirates', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(478, 'GB', 'United_Kingdom', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(479, 'US', 'United_States', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(480, 'UM', 'United_States_minor_outlying_islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(481, 'UY', 'Uruguay', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(482, 'UZ', 'Uzbekistan', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(483, 'VU', 'Vanuatu', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(484, 'VA', 'Vatican_City_State', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(485, 'VE', 'Venezuela', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(486, 'VN', 'Vietnam', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(487, 'VG', 'Virgin_Islands_British', NULL, NULL, 0, 0, '2018-02-22 03:52:07', '2018-02-20 14:44:14', 1, 1, 'countries'),
(488, 'VI', 'Virgin_Islands_US', NULL, NULL, 0, 0, '2018-02-22 03:52:13', '2018-02-20 14:44:14', 1, 1, 'countries'),
(489, 'WF', 'Wallis_and_Futuna_Islands', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(490, 'EH', 'Western_Sahara', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(491, 'YE', 'Yemen', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(492, 'YU', 'Yugoslavia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(493, 'ZR', 'Zaire', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(494, 'ZM', 'Zambia', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(495, 'ZW', 'Zimbabwe', NULL, NULL, 0, 0, '2018-02-20 14:40:31', '2018-02-20 14:44:14', 1, 1, 'countries'),
(496, 'AF', 'Afghanistan', NULL, NULL, 0, 0, '2018-02-22 02:59:55', '2018-02-20 14:44:14', 1, 1, 'countries');

-- --------------------------------------------------------

--
-- Table structure for table `couponcodes`
--

CREATE TABLE IF NOT EXISTS `couponcodes` (
  `id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'couponcodes',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `couponcodes`
--

INSERT INTO `couponcodes` (`id`, `title`, `slug`, `coupon_code`, `discount_type`, `discount_value`, `minimum_bill`, `discount_maximum_amount`, `valid_from`, `valid_to`, `usage_limit`, `status`, `description`, `coupon_code_applicability`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'المدينة المنورة', 'almdyn-almnor', 'Codes20', 'value', '100.00', '100.00', '1000.00', '2018-04-07', '2018-04-22', 20, 'Active', '', '{"categories":["exam","combo","LMS","academic_expenses"]}', 1790, '2017-10-17 23:58:15', '2018-04-08 03:13:55', '51.36.99.186', NULL, NULL, 1790, 2, 'couponcodes', 1),
(2, 'first50', 'first502954', 'first50', '', '0.00', '100.00', '1000.00', '2018-04-14', '2018-05-05', 3, 'Active', '', '{"categories":["exam","combo","academic_expenses"]}', 1790, '2018-04-15 01:19:57', '2018-04-16 08:15:57', '51.36.111.15', '51.39.97.99', 1790, 1790, 2, 'couponcodes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `couponcodes_usage`
--

CREATE TABLE IF NOT EXISTS `couponcodes_usage` (
  `id` bigint(20) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_cost` decimal(10,2) NOT NULL,
  `total_invoice_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) NOT NULL DEFAULT 'couponcodes_usage'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) unsigned NOT NULL,
  `parent_id` tinyint(4) NOT NULL DEFAULT '0',
  `course_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `course_dueration` int(11) NOT NULL,
  `grade_system` enum('percentage','gpa') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'percentage',
  `is_having_semister` tinyint(4) NOT NULL DEFAULT '0',
  `is_having_elective_subjects` tinyint(4) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'courses',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `parent_id`, `course_title`, `slug`, `course_code`, `course_dueration`, `grade_system`, `is_having_semister`, `is_having_elective_subjects`, `description`, `status`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(15, 0, 'الحضانة', 'alhdan910-5a956fcd32ed4f31b02f5c1573759e8e92d6da16', 'kg1', 1, 'gpa', 0, 0, '', 'Active', '2018-04-15 07:46:33', '2018-04-15 07:46:33', NULL, '51.36.111.15', 1790, NULL, 1, 'courses', 1),
(16, 0, 'الروضة', 'alrod1390-fd51c881709df1e5d8d619346df33699e3332b2c', 'kg2', 1, 'gpa', 0, 0, '', 'Active', '2018-04-15 07:46:57', '2018-04-15 07:46:57', NULL, '51.36.111.15', 1790, NULL, 1, 'courses', 1),
(17, 0, 'الصف الأول الإبتدائي', 'alsf-alaol-alebtdaey-6d7c8f861b0639ae575402b7f9b12', '1st_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 08:58:38', '2017-10-13 08:58:38', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(18, 0, 'الصف الثاني الإبتدائي', 'alsf-althany-alebtdaey-48f57ae31d7075a793eb706a6f3', '2nd_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 08:59:57', '2017-10-13 08:59:57', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(19, 0, 'الصف الثالث الإبتدائي ', 'alsf-althalth-alebtdaey-13736dd6ee4642c554b4b4f4dc', '3th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:01:34', '2017-10-13 09:01:34', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(20, 0, 'الصف الرابع الإبتدائي', 'alsf-alrabaa-alebtdaey-62743f4ae1f8344d23dcc61a316', '4th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:02:11', '2017-10-13 09:02:11', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(21, 0, 'الصف الخامس الإبتدائي', 'alsf-alkhams-alebtdaey-6d3f905a074b8d40a6f8a4fd8a1', '5th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:02:37', '2017-10-13 09:02:37', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(22, 0, 'الصف السادس الإبتدائي', 'alsf-alsads-alebtdaey-213c9c6981d024aae1ef62c19c30', '6th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:03:15', '2017-10-13 09:03:15', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(23, 0, 'الصف الاول المتوسط ', 'alsf-alaol-almtost-910bc313b928127f59550ef76294d9b', '1st_inter', 1, '', 1, 0, '', 'Active', '2017-10-13 09:03:42', '2017-10-13 09:03:42', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(24, 0, 'الصف الثاني المتوسط ', 'alsf-althany-almtost-a397216277d4a2144cc0cbb791381', '2nd_inter', 1, '', 1, 0, '', 'Active', '2017-10-13 09:04:17', '2017-10-13 09:04:17', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(25, 0, 'الصف الثالث المتوسط ', 'alsf-althalth-almtost-5c3b6780a224eb20884cf97194ea', '3th_inter', 1, '', 1, 0, '', 'Active', '2017-10-13 09:05:04', '2017-10-13 09:05:04', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(26, 0, 'الصف الاول الثانوي', 'alsf-alaol-althanoy-d75e76dd969c3710c5bd7598ca641f', '1st_sec', 1, '', 1, 0, '', 'Active', '2017-10-13 09:05:43', '2017-10-13 09:05:43', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(27, 0, 'الصف الثاني الثانوي', 'alsf-althany-althanoy-685adecbddc4c728a363b2d5b5cb', '2nd_sec', 1, '', 1, 0, '', 'Active', '2017-10-13 09:06:25', '2017-10-13 09:06:25', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(28, 0, 'الصف الثالث الثانوي', 'alsf-althalth-althanoy-e954f01708160933a5f585c8241', '3th_sec', 1, '', 1, 0, '', 'Active', '2017-10-13 09:06:34', '2017-10-13 09:06:34', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(29, 17, 'أولي أ', 'aoly-a-fb014aea828bb9a23356e48af6a3367eabc7bdc7', '101', 1, 'gpa', 0, 0, 'esfqwer', 'Active', '2017-10-13 09:10:17', '2017-11-08 07:24:25', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(30, 17, 'أولي ب', 'aoly-b-9efd4400204251b64e6ca5ad3413c5b71caf48f0', '102', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:11:46', '2017-10-13 09:11:46', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(31, 18, 'ثاني أ', 'thany-a-86bea6e104d2beba4a8a5324a8c5d9d7debef392', '103', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:14:25', '2017-10-13 09:14:25', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(32, 18, 'ثاني ب', 'thany-b-dc7f76ce9dc4f3d572001f8aeb885172b8ab0c40', '104', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:14:30', '2017-10-13 09:14:30', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(33, 19, 'ثالث أ', 'thalth-a-47905e9f2743be208c32aec60590091cc111a118', '105', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:14:52', '2017-10-13 09:14:52', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(34, 19, 'ثالث ب', 'thalth-b-0b706fc244392c937d418a1db10000ecce33fa41', '106', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:15:09', '2017-10-13 09:15:09', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(35, 20, 'رابع أ', 'rabaa-a-b70be0a5566736e86fb4a2ff9eab9eee57fb8f3c', '107', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:15:24', '2017-10-13 09:15:24', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(36, 20, 'رابع ب', 'rabaa-b-f6ca5a1ba838e74b70f9afb740d13b6774713f56', '108', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:15:43', '2017-10-13 09:15:43', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(37, 21, 'خامس أ', 'khams-a-bad0ec08de28c9d7f936ec0a14878b87c2743b5d', '109', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:16:01', '2017-10-13 09:16:01', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(38, 21, 'خامس ب', 'khams-b-3070fa166bc9d842bbf0fd4c1b5480578d68283b', '110', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:16:21', '2017-10-13 09:16:21', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(39, 22, 'سادس أ', 'sads-a-d5893c007a63f428b90b87d6a1c05b12719fcef1', '111', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:16:38', '2017-10-13 09:16:38', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(40, 22, 'سادس ب', 'sads-b-58234a415d3b8e0302af053d804863d447a04967', '112', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:16:50', '2017-10-13 09:16:50', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(41, 23, 'اولي متوسط  أ', 'aoly-mtost-a-99d28fcc1bb4efb60017c36149ffdc463513c', '113', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:18:39', '2017-10-13 09:18:39', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(42, 23, 'أولي متوسط ب', 'aoly-mtost-b-e4774dfa5bb06c68e62751db003c4380911e5', '114', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:22:04', '2017-10-13 09:22:04', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(43, 24, 'ثاني متوسط أ', 'thany-mtost-a-49562d204fa156d217f30650f2eab9b66352', '115', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:22:32', '2017-10-13 09:22:32', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(44, 24, 'ثاني متوسط ب', 'thany-mtost-b-d901d0d761b0372e328f6461f1098cfb8bf8', '116', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:22:37', '2017-10-13 09:22:37', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(45, 25, 'ثالث متوسط أ', 'thalth-mtost-a-3aa36076cf9a72af8882d669bf2a903ce49', '117', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:23:11', '2017-10-13 09:23:11', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(46, 25, 'ثالث متوسط ب', 'thalth-mtost-b-14a84194e74e7a1e72cb669f2636bfeed22', '118', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:23:28', '2017-10-13 09:23:28', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(47, 26, 'أولي ثانوي أ', 'aoly-thanoy-a-036dd1a0f48baeefab3b651a4dc61a3d7dbf', '119', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:23:52', '2017-10-13 09:23:52', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(48, 26, 'أولي ثانوي ب', 'aoly-thanoy-b-4524d147a3181341c6c35c64d3efdc22a15e', '120', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:24:03', '2017-10-13 09:24:03', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(49, 27, 'ثاني ثانوي أ', 'thany-thanoy-a-8a1d50b5d83448c1811b6666223f9ba19ce', '121', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:24:21', '2017-10-13 09:24:21', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(50, 27, 'ثاني ثانوي ب', 'thany-thanoy-b-bdb482bbf0a3bc895071975ab30485891aa', '122', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:24:31', '2017-10-13 09:24:31', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(51, 28, 'ثالث ثانوي أ', 'thalth-thanoy-a-c0a7cda6dc934ce892ebbbf5c2f2a2da3a', '123', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:24:48', '2017-10-13 09:24:48', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(52, 28, 'ثالث ثانوي ب', 'thalth-thanoy-b-60b998c1bf07825bddbecf178a2cc2850f', '124', 1, 'gpa', 0, 0, '', 'Active', '2017-10-13 09:24:55', '2017-10-13 09:24:55', NULL, NULL, NULL, NULL, 1, 'courses', 1),
(53, 18, 'ثانى ج', 'than-j-72d4743ee2faa0196f0e885a342e2cbaf12db63c', 'sacand 3', 1, 'gpa', 0, 0, '', 'Active', '2017-12-24 01:03:38', '2018-03-26 06:26:01', NULL, NULL, NULL, NULL, 2, 'courses', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursesemisters`
--

CREATE TABLE IF NOT EXISTS `coursesemisters` (
  `id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `year` int(10) unsigned NOT NULL,
  `total_semisters` int(10) unsigned NOT NULL,
  `current_semester` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'coursesemisters'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coursesemisters`
--

INSERT INTO `coursesemisters` (`id`, `course_id`, `year`, `total_semisters`, `current_semester`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(13, 17, 1, 2, 0, '2017-10-13 14:10:17', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(14, 18, 1, 2, 0, '2017-10-13 14:11:46', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(15, 19, 1, 2, 0, '2017-10-13 14:14:25', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(16, 20, 1, 2, 0, '2017-10-13 14:14:30', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(17, 21, 1, 2, 0, '2017-10-13 14:14:52', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(18, 22, 1, 2, 0, '2017-10-13 14:15:09', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(19, 23, 1, 2, 0, '2017-10-13 14:15:24', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(20, 24, 1, 2, 0, '2017-10-13 14:15:43', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(21, 25, 1, 2, 0, '2017-10-13 14:16:01', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(22, 26, 1, 2, 0, '2017-10-13 14:16:21', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(23, 27, 1, 2, 0, '2017-10-13 14:16:38', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters'),
(24, 28, 1, 2, 0, '2017-10-13 14:16:50', '2018-04-11 05:17:35', '51.36.108.22', NULL, NULL, 1790, 2, 1, 'coursesemisters');

-- --------------------------------------------------------

--
-- Table structure for table `course_subject`
--

CREATE TABLE IF NOT EXISTS `course_subject` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `academic_id` bigint(20) unsigned NOT NULL,
  `course_parent_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `year` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `sessions_needed` int(11) NOT NULL,
  `staff_id` bigint(20) unsigned NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course_subject',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(28, '1f43506f6d88abafe6b5f8b3070cf2e9a424570b2752', 1, 17, 17, 1, 1, 44, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(29, '659816735ac1d2d5616394568dc107ca2c2c2bec1679', 1, 17, 17, 1, 1, 43, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(30, 'd37bad56c2f1fbd415c51b632daf6f0e1d8232982911', 1, 17, 17, 1, 1, 42, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(31, '1c7f2611c91f116bced6b41bfd907d3639e1afca1488', 1, 17, 17, 1, 1, 41, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(32, '8447c5760221208ab3e13ddf9296d842ad6509a22973', 1, 17, 17, 1, 1, 45, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(33, '8e3df121d950303850a66ac52fcb189eebdb1aa71746', 1, 17, 17, 1, 1, 40, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(34, 'a4448787a3b9e59683dfda2bdae638cf66467c2d1094', 1, 17, 17, 1, 1, 39, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(35, '8464352891be64b6eb8ce9461fc56869276662a92328', 1, 17, 17, 1, 1, 38, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(36, '772e3425ff33a2a544cc9640f4083077c404abe6320', 1, 17, 17, 1, 1, 37, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(37, '4aa215d40eb6d1b86bc003860d7421bf13d40d3c450', 1, 17, 17, 1, 1, 36, 60, 1868, 0, '2018-04-10 08:50:07', '2018-04-15 07:02:23', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(38, '9fc53c786e1186364fc2517c1fd28ebe059720812397', 1, 17, 17, 1, 1, 34, 60, 1868, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(39, 'aacbcbbfd1632f66a9be1b455f192ee22aa10b612036', 1, 17, 17, 1, 2, 44, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(40, 'fe8e397f6cf738da3e79be4f08e74f34234901361399', 1, 17, 17, 1, 2, 43, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(41, '9d3644a4aa9dd8717dabdca99278dac9ae00bf231962', 1, 17, 17, 1, 2, 42, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(42, 'bcefa70b03e3d2bbf120dbe2d47c08af14fe19c4459', 1, 17, 17, 1, 2, 38, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(43, 'a4218c8fd257547b12aaa6435adfb0ddfa738417830', 1, 17, 17, 1, 2, 37, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(44, '8de4dd334dcb1e38860ce4250577842461a9a5ba177', 1, 17, 17, 1, 2, 41, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(45, '9a8bdfb29f51bbb9b327ebe9c3c6891c062cc01e2843', 1, 17, 17, 1, 2, 34, 60, 1868, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(46, '1181f2d6fe4ff51e1a1465b135d24eb69365c43d330', 1, 17, 17, 1, 2, 40, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(47, 'a1cbac04fe98fc5a1d2cfa1e95bcb67885c23f26519', 1, 17, 17, 1, 2, 36, 60, 1868, 0, '2018-04-10 08:50:07', '2018-04-15 07:02:23', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(48, 'bc489811ccdecd5a1e26d22dcfb59a474cdf41811836', 1, 17, 17, 1, 2, 45, 60, 0, 0, '2018-04-10 08:50:07', '2018-04-15 06:37:08', '51.36.111.15', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(49, '521b1ba47427d3fd32720ceef151d30e2b3de2002610', 1, 18, 18, 1, 1, 44, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(50, '4a252ecbd66fa8f881c2ebce4abf8f30b00171d21679', 1, 18, 18, 1, 1, 43, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(51, '21c0cdc6a0ec03dab70b6b090e73812d12694bf8413', 1, 18, 18, 1, 1, 42, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(52, 'a88e84a888207264da2909231f49e0d55af45475786', 1, 18, 18, 1, 1, 34, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(53, '22d7e0bc464f231e88fb90970107f6220ed949612849', 1, 18, 18, 1, 1, 41, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(54, '7ea2a6d5cd8fef6132baae7373a70d024d9a119b2734', 1, 18, 18, 1, 1, 45, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(55, 'c0a53cfaa13817fa015d5348832f7ba49c0cd440894', 1, 18, 18, 1, 1, 40, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(56, 'cbba0d3a960781b890090eb50f7b416fd7aa41862116', 1, 18, 18, 1, 1, 38, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(57, '9ddc2716714ce0d04f022af444e956af255e5e55660', 1, 18, 18, 1, 1, 37, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(58, '41892409cc451f2e4fbff5612c789cecf10346ca2423', 1, 18, 18, 1, 1, 36, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(59, '0951506e96a778b303e2e1bd827c27af56285f0c827', 1, 18, 18, 1, 2, 44, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(60, '81b7fd6563adeb963a4f4ea9bf4dc2706c280b5f2728', 1, 18, 18, 1, 2, 43, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(61, 'bc16b25161265a9fef7a95357fa0c741194b58151161', 1, 18, 18, 1, 2, 42, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(62, '525a5944e63b74a3817dc6f15cd5bb1a99f22ac01621', 1, 18, 18, 1, 2, 36, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(63, '2f9f7ec22e47f989a826e90494fc87320a1e7a52284', 1, 18, 18, 1, 2, 41, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(64, 'c7994ab270a43402d74961c9aef9bff54a33df8f829', 1, 18, 18, 1, 2, 45, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(65, '6eceabb8e28a7d57184807fcfe0451eb32f3e535810', 1, 18, 18, 1, 2, 40, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(66, '1967623bbe7e590ab0a51e86c3cff0025a47154d606', 1, 18, 18, 1, 2, 38, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(67, 'cf4abcd6d67d03e03cce3449ea48e718691d76641757', 1, 18, 18, 1, 2, 37, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(68, '39d2505e7a35b0c1150d0c288143a84f22f043da1647', 1, 18, 18, 1, 2, 34, 60, 0, 0, '2018-04-10 09:22:49', '2018-04-10 09:22:49', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(69, 'bdcaa0c376e3d1bf23d5fc9d3a9df1979a68ed412336', 1, 19, 19, 1, 1, 44, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(70, '10c10afcf5eef4616914644730d473ee88288ed22918', 1, 19, 19, 1, 1, 43, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(71, '35af82ccb1b56d22addafb14fdec9e341ab235291135', 1, 19, 19, 1, 1, 42, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(72, '84e78c8b960ccd99b746e4bd115138447dbf242e2158', 1, 19, 19, 1, 1, 38, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(73, 'fd499ddc791570d28a9acf268e7f56f675215d7a2166', 1, 19, 19, 1, 1, 37, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(74, 'a2d2f9f84997154386ec85f8fbed06f2ce6b6cb51197', 1, 19, 19, 1, 1, 41, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(75, '25655b8bf8356c3544f8bcf1410897f15b3fd863118', 1, 19, 19, 1, 1, 45, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(76, '40508f616f951f0ea2650f92f3346981f0ce6c4d456', 1, 19, 19, 1, 1, 40, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(77, '084ff6e788f9d570c362151bcaf73f7b82544a411159', 1, 19, 19, 1, 1, 36, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(78, 'a82e0f26eb31f8b5b4d0a7bbd0107016fe550d92454', 1, 19, 19, 1, 1, 34, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(79, '6f3d954aa4f9b7e46960de3f7c75cfb185055fa82091', 1, 19, 19, 1, 2, 44, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(80, '1ad281b6e25a625d82f03dfa7db3f7e675bd553f1036', 1, 19, 19, 1, 2, 43, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(81, 'bd71fd494d82c9de9547f40b4d24f8f5e34027aa2085', 1, 19, 19, 1, 2, 36, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(82, 'c8a9c98c4042125d1f677e22e610a6f49a759ff5668', 1, 19, 19, 1, 2, 41, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(83, '3b95b50b323eb14cc4ba08ea859b76807813ab961934', 1, 19, 19, 1, 2, 45, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(84, 'b0f64f3d88b6519ff8d3475d809883ba08520ed01493', 1, 19, 19, 1, 2, 42, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(85, '1a4d8946e7ce4403fab5531bb040bb180a4b8dc02662', 1, 19, 19, 1, 2, 40, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(86, '2a262740eae8b4c7aed36b623741c137feb950f02146', 1, 19, 19, 1, 2, 38, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(87, '27baac1d371725da1d9338394730ec03720a74f635', 1, 19, 19, 1, 2, 37, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(88, '204f94b5e35eb1de00f088165d53607dac33070a1593', 1, 19, 19, 1, 2, 34, 60, 0, 0, '2018-04-10 09:25:05', '2018-04-10 09:25:05', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(89, '2b17e9dc1ac9f9f7115cad3cc6adb8614ed6dba7296', 1, 20, 20, 1, 1, 42, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(90, '5ca094bbb9e6956a4e72f5c57162f43d9416c8582465', 1, 20, 20, 1, 1, 44, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(91, 'f9a57995a5e6350ba8f17a3c703807bb51ac883c462', 1, 20, 20, 1, 1, 43, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(92, 'fe7e0d39b432f4ec2d0e18e8901dce83ae2137482041', 1, 20, 20, 1, 1, 52, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(93, '11bfd5375b06f7b492b6d575abc441ecae5892571900', 1, 20, 20, 1, 1, 51, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(94, '05491458cb70c66ae67ffea67df0bf0274903771383', 1, 20, 20, 1, 1, 50, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(95, '18879f0fe61bff202af668c98178e84ffee3cca8182', 1, 20, 20, 1, 1, 49, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(96, '43271ce85224b89ad2de05ddb52d4c6f309c5a7a1182', 1, 20, 20, 1, 1, 48, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(97, 'f644684ffcc7a7f9c9408abede614334e9aa93d02105', 1, 20, 20, 1, 1, 41, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(98, '4391eb3e6dfaa0bc8edfa17064a6f6db4521773526', 1, 20, 20, 1, 1, 47, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(99, 'b5762991db0672a8c5615ee8fa6f5efef0478e9a1436', 1, 20, 20, 1, 1, 45, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(100, '3b1be22c625a9671e5c55d01eba8797f20a3773e893', 1, 20, 20, 1, 1, 40, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(101, 'db62f38e675111dac420580fe06232e3bf8d9ca1569', 1, 20, 20, 1, 1, 38, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(102, '78606539e333e4f330d114c2e240512c326d02442946', 1, 20, 20, 1, 1, 37, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(103, '9ab41e90c413f7187b67c876f28a8a015fa3c789371', 1, 20, 20, 1, 1, 46, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(104, 'c771495f131e1890a9f6cd3db13e70f895a044b01116', 1, 20, 20, 1, 1, 34, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(105, 'ccf9207c9b013083ffd29ee46f9f72923b2b57b41398', 1, 20, 20, 1, 2, 44, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(106, '9972659a6aa2cec86f45fc9189bce35f28985a1a2497', 1, 20, 20, 1, 2, 43, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(107, 'b0cc421686c9a519a69b8e81ef9307fd614dedc2665', 1, 20, 20, 1, 2, 49, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(108, '5e1230ad71e0e9f814876b29bce12e221feff85c393', 1, 20, 20, 1, 2, 50, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(109, 'f1123386dc314a11c3bd0aaa30d6e48791d2aacc1866', 1, 20, 20, 1, 2, 48, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(110, '07787a0cef5356551c481b2b8b459de4612e8db42508', 1, 20, 20, 1, 2, 38, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(111, '896291aa03ca6e5193acdf44f916864796a03b511389', 1, 20, 20, 1, 2, 37, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(112, '3e3faf855bf51fdf7f61dc7c67389b380de33cfa2516', 1, 20, 20, 1, 2, 41, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(113, '6d4500ee856247a50cfc2f01cd250c219c6df415656', 1, 20, 20, 1, 2, 46, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(114, 'a1ffa9a0f86cc58c68489a2498a95d240916117f2289', 1, 20, 20, 1, 2, 34, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(115, '31e8c28c36891d5560ec4ff98a579fc1898387eb1171', 1, 20, 20, 1, 2, 51, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(116, '63d876cf8525fbbcd1f58fd0a3637bf8b54e96ea1426', 1, 20, 20, 1, 2, 42, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(117, '03a78b3afb2cfea42df68081e955705badca17371768', 1, 20, 20, 1, 2, 47, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(118, '287519cfbe1a6ae86a9cb7f7b99a9b65706f47f01151', 1, 20, 20, 1, 2, 40, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(119, 'ae85cf1af60fe89d7fb1d6853b01eba8ffa6c7df435', 1, 20, 20, 1, 2, 45, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(120, '2d54d298e40b6a224fec917a712910a7212eaa1b2061', 1, 20, 20, 1, 2, 52, 60, 0, 0, '2018-04-10 09:29:10', '2018-04-10 09:29:10', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(121, 'd22a91fb7a91442998dc0d15b08cd50189ecc1571725', 1, 21, 21, 1, 1, 44, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(122, 'd1a5f24e0449d3e2fc20ccb929fa15b3cd7f23301201', 1, 21, 21, 1, 1, 43, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(123, '8768698006eab6f5c25623c70976f42fd4a0e77c2492', 1, 21, 21, 1, 1, 52, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(124, '16a520d8c4d5e53e7570dc984ac2ffcbbbeffc99706', 1, 21, 21, 1, 1, 50, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(125, '5caf941384b7adb5a403fdc4f1e1aed6d9c4356e703', 1, 21, 21, 1, 1, 48, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(126, 'e2880bf959d476a1cf0b0d16916aa0c83a8053431590', 1, 21, 21, 1, 1, 49, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(127, 'ba9a33ad61363817ba0b161623034c1b100ed2b4465', 1, 21, 21, 1, 1, 41, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(128, '2213b609ce5a7797f802367b6acaae3303c2a7062567', 1, 21, 21, 1, 1, 42, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(129, 'ce197782d47c000d25b8a5371ab8299b182d584e762', 1, 21, 21, 1, 1, 47, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(130, '7aceab13f1fd3d77660f755476a182f7e9c1a4901811', 1, 21, 21, 1, 1, 45, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(131, 'cae3bef90d11288eb1254c85af25110b2e2d3b952400', 1, 21, 21, 1, 1, 40, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(132, 'c88a1839e02c7e60488591d10bfd7cf9da4706911238', 1, 21, 21, 1, 1, 38, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(133, 'cd9ead256c36aaa2e3fa87743ad17a09fe262bbd2747', 1, 21, 21, 1, 1, 37, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(134, 'c9494ff96bd6718281ec93252f37b609385d6a0e2207', 1, 21, 21, 1, 1, 46, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(135, '8ec1c06325ebffedc33d8879873a16b152d735b7876', 1, 21, 21, 1, 1, 34, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(136, 'f965ab4a54f6e37e8264ba9d191915d3b530c40a1207', 1, 21, 21, 1, 1, 51, 60, 0, 0, '2018-04-10 09:32:29', '2018-04-10 09:32:29', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(137, '4abec93b3b06145c91b491428f913d857622849c2908', 1, 21, 21, 1, 1, 146, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', NULL, '51.36.92.34', 1790, NULL, 1, 'course_subject', 1),
(138, '648f07a11bfddc059b2a0375d1370da88cdf68b81687', 1, 21, 21, 1, 2, 44, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(139, 'da2daa4adb2d48414a1d5931a4f00da1b9f059411654', 1, 21, 21, 1, 2, 43, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(140, '396e30564d56fe87c511b6011f7afa7d20c04aaf19', 1, 21, 21, 1, 2, 53, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(141, '08029e7e9da4b46d2b5a14cbc36c6abb5935eff91888', 1, 21, 21, 1, 2, 42, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(142, 'd0f48d6d97d7afe288332e5ae3199b75d3e25d46425', 1, 21, 21, 1, 2, 49, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(143, 'ad3339a5462af312849dd3308603952b255afb001190', 1, 21, 21, 1, 2, 50, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(144, 'd401435aca7d69eb45d359c71018df9aaa34a9002620', 1, 21, 21, 1, 2, 48, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(145, '8df2d837bf10c04482ce7f5368d9d77bdd937852558', 1, 21, 21, 1, 2, 47, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(146, 'bb3f3fff0c11ed61405244d8eb6ac26e88ef732f542', 1, 21, 21, 1, 2, 41, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(147, 'cb1e0746180e9c239e473061984705ff9cc0739f2579', 1, 21, 21, 1, 2, 46, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(148, '5180d55cbd566ca0c9bac60076d53a023b856450141', 1, 21, 21, 1, 2, 34, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(149, 'af94156c44b81303034c52ca820560c69b0bf32b1397', 1, 21, 21, 1, 2, 146, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(150, 'cd004472c32d4946a381dc8510f966855b00ecca2198', 1, 21, 21, 1, 2, 40, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(151, 'c09cb2cb42df1faf0a1246f57a19f9da793aeb062187', 1, 21, 21, 1, 2, 51, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(152, 'd74b8cff1595c0173c8f12ca2e6629a033fd94e91796', 1, 21, 21, 1, 2, 45, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(153, '8c98f3bbf2128b0c8209104aaa7dcfc0140741131734', 1, 21, 21, 1, 2, 38, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(154, '16adc71349a46bb0373031a8a553bc02290c8c0f420', 1, 21, 21, 1, 2, 37, 60, 0, 0, '2018-04-10 09:35:06', '2018-04-10 09:35:06', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(155, 'f2e141d16de2903c554732d71e844510b7aaa8f71159', 1, 22, 22, 1, 1, 44, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(156, '8004fde8c803eb7d4ff31b157580a1f8ead579d0414', 1, 22, 22, 1, 1, 43, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(157, '859bc1888f78599931ae0d961b6c33e844d367472238', 1, 22, 22, 1, 1, 52, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(158, '1a62e16389f7ab17ea73847ad39a1c37866ef6ba459', 1, 22, 22, 1, 1, 50, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(159, '578ecf970a15ae2a7af61df5895ae39ebe616c5d2186', 1, 22, 22, 1, 1, 48, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(160, '512e0da78a9a3325ba9a446b5bb77a5aaeb5ab60479', 1, 22, 22, 1, 1, 49, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(161, '11f8a04ed35895878603f0bd00fc875fe9ef1d761445', 1, 22, 22, 1, 1, 41, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(162, '46c8961ac0e60aa585cdfb7d4850cf30556ec34b2387', 1, 22, 22, 1, 1, 146, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(163, '015bf0cef9c2b3697c54957855487a463aa057772349', 1, 22, 22, 1, 1, 42, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(164, 'a22e6cfd266c1309af323cfffb43b1791340c7612306', 1, 22, 22, 1, 1, 45, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(165, 'a57dc8c2a88d0e3475381d92352463f7353bcad92737', 1, 22, 22, 1, 1, 47, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(166, '8d1946f7aed3145bcc3eb6620d40fe5993c7e96e1528', 1, 22, 22, 1, 1, 40, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(167, '17684467b83d9490f510f01ea228fa36d73b5ecb998', 1, 22, 22, 1, 1, 38, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(168, 'b616cce379a8eca07369650ba5cc09a9472e27ce2077', 1, 22, 22, 1, 1, 37, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(169, '3dd38291af44472de1d6945ca4d0b732d3000006479', 1, 22, 22, 1, 1, 46, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(170, '20aebbba0f35d9b7442cbd8ab9f86813e6120ecf2973', 1, 22, 22, 1, 1, 34, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(171, '5ebe65454ea93426f6940f9220a192d8aa15a4e11980', 1, 22, 22, 1, 1, 51, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(172, 'b7154e6939a4a90456283c044ebc7725b38d9789227', 1, 22, 22, 1, 2, 44, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(173, '789be149ef4a91acb6dbc9203fd1d257fc2e9f5a1184', 1, 22, 22, 1, 2, 43, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(174, '6f67e5eb64fbd068f115615f425c4ad8048677a5846', 1, 22, 22, 1, 2, 53, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(175, '41acfe6de1ba0f2d322b1fb4b55472feb1c7450a2888', 1, 22, 22, 1, 2, 50, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(176, '5c6f1ccabb97820c9dbf4e8207015ef69f9cbf6c2405', 1, 22, 22, 1, 2, 48, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(177, 'eaebc0c4a78c0f887467d1a19d4a2f4b47d0479b540', 1, 22, 22, 1, 2, 49, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(178, '76b5b9db20a0453616c84cc1d74b9e14a19c19122147', 1, 22, 22, 1, 2, 47, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(179, 'cbb02f39633729fcafa7abed06ec810eab46060f2502', 1, 22, 22, 1, 2, 42, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(180, 'f255067a8bd6287540ca920d961442fa6ea08f252780', 1, 22, 22, 1, 2, 45, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(181, 'f515f06652fa3500e23f281bda851ab2c781747c16', 1, 22, 22, 1, 2, 40, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(182, '39c8ef41f5984fa0e95d424c202d75c89fe57e1e2284', 1, 22, 22, 1, 2, 38, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(183, '4248cd8b874d3670e52066c4b969925d9d87e5a0904', 1, 22, 22, 1, 2, 37, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(184, '1eedab834beca6fbad78c89c1aa7a7c9775f98332155', 1, 22, 22, 1, 2, 46, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(185, 'f5b257e2081f4587b6da26121a69ea4ddb049de61908', 1, 22, 22, 1, 2, 34, 60, 0, 0, '2018-04-10 09:38:09', '2018-04-10 09:38:09', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(186, '4bbd106bd7bffe29462912c1674b15289386a7b7886', 1, 23, 23, 1, 1, 44, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(187, '946fb4236ec746225b3773edbe593b2a5e99db5b437', 1, 23, 23, 1, 1, 43, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(188, 'c305c84ce9921139e60d3ac9b50c7fae000e15d6528', 1, 23, 23, 1, 1, 58, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(189, '781c4c25f2646fec975c00a6f79c4ddbc0e9e105536', 1, 23, 23, 1, 1, 59, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(190, '266ac85de41877a4f2eb9fd3b3ae75d6587bb1dc1502', 1, 23, 23, 1, 1, 57, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(191, 'a37f28155eecc77e98d37bc2931fd5f518b44bd0927', 1, 23, 23, 1, 1, 56, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(192, '7d7ec1877794ec9ec57ca48565720dd019233ddc1592', 1, 23, 23, 1, 1, 41, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(193, '6e0f88c696e046f65449fd85c2b28f730f3220701769', 1, 23, 23, 1, 1, 55, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(194, 'db587cf52cab50ceb8003009ccdcb89270101bde2894', 1, 23, 23, 1, 1, 42, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(195, 'c84909b6db788b952ddf2f81a02aa26e0a64513e1789', 1, 23, 23, 1, 1, 45, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(196, '1877accefd0a731ed9825d580d279af51e25afe9362', 1, 23, 23, 1, 1, 40, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(197, '24f93517f7647bd6843de7d70dc09f47d6d0f7631695', 1, 23, 23, 1, 1, 38, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(198, '13814a7248733e75aed2d2c0494ed3c0707af9c12288', 1, 23, 23, 1, 1, 37, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(199, '2efe4858b01d022ed90674911ed6cdef78f5946d2196', 1, 23, 23, 1, 1, 54, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(200, '10c43d7654136db11ae83bcb3af07e374cd01e66917', 1, 23, 23, 1, 1, 46, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(201, '2e89b3f13643cc7a31e4c92a0afc42a4c8707d1b1175', 1, 23, 23, 1, 1, 34, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(202, 'f33650fcd3abcc6958772265073bf650a08391a11004', 1, 23, 23, 1, 1, 147, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(203, '1a5449e84dde2c7005994e2b3336ce8c6f60551a2644', 1, 23, 23, 1, 1, 52, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(204, 'f4e7d2307cd79b8a929e806084f80dac2d0ee581955', 1, 23, 23, 1, 2, 44, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(205, '89442f5310c32a9664be2e277f34116a8e82315d1629', 1, 23, 23, 1, 2, 43, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(206, '200225bca990d8c265f8393bffd816b75235c5ee165', 1, 23, 23, 1, 2, 56, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(207, '4a5ea80912d8ff574722caf845cb8ccb8fa246f21174', 1, 23, 23, 1, 2, 59, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(208, 'd2e608560b4b66517fba38b9b8e31fff7b4de52d441', 1, 23, 23, 1, 2, 57, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(209, '0b6bfda503035f837653dd149445c0e0d56326f0105', 1, 23, 23, 1, 2, 55, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(210, 'abf8e9c97bb7801c28191fc38cc946e0b1eaa49e1191', 1, 23, 23, 1, 2, 41, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(211, '4542810cbbc9957a5e3f0e2841de3135b138e1aa1241', 1, 23, 23, 1, 2, 42, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(212, '6528c76b50889814b0a9b4cd5d3da7b0c98fdeb72664', 1, 23, 23, 1, 2, 45, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(213, '16ec6624a318beaa754e3fae368d5c1403e771862162', 1, 23, 23, 1, 2, 40, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(214, '894d3462e9ba7ed76cabea25adb3ea0f44e402782934', 1, 23, 23, 1, 2, 38, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(215, 'b874ec62017944d08535c74759ae425275a293f61674', 1, 23, 23, 1, 2, 37, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(216, '69a5ee8a5ec6bbafd3ba3f5f7ee47f4efc028aa2349', 1, 23, 23, 1, 2, 54, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(217, '00f2827674714a2685fc81cdb00bff4ff66c7540790', 1, 23, 23, 1, 2, 46, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(218, '608f3c456c40ce3f70b5ad48126f1441ab67e9d82109', 1, 23, 23, 1, 2, 34, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(219, 'ad32ad6b9e814d3c3b9753eb22c0e434c81cdf5a874', 1, 23, 23, 1, 2, 147, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(220, '15a04239ee2fe9f84c6b17d1d04519b19ce3a0de1323', 1, 23, 23, 1, 2, 58, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(221, '522bdb4080f01fe7cfedf5e291654f0f2b629d11581', 1, 23, 23, 1, 2, 52, 60, 0, 0, '2018-04-10 09:43:59', '2018-04-10 09:43:59', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(222, 'f4a12a2546945e5e29d5bbf58cc4ba7dbe1ead6e2578', 1, 24, 24, 1, 1, 44, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(223, 'f4f80a71c59ef3582d656376de92c0b289005abc686', 1, 24, 24, 1, 1, 43, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(224, '6c624ca05ea2cedd62178ce696bf898d1abe568a1498', 1, 24, 24, 1, 1, 59, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(225, '08590b1281c113ef4085f9378932574fe1b6dd6b2055', 1, 24, 24, 1, 1, 57, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(226, 'b40532c65914c124dda4cf4ea2ae0690186cfa492718', 1, 24, 24, 1, 1, 56, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(227, '341ef13594cd10f52a0caf4b4c0c4f505666f7a6118', 1, 24, 24, 1, 1, 41, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(228, '25ec05f18a40396c06ff6e11b0fd35c2a36b5374377', 1, 24, 24, 1, 1, 55, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(229, '75f9cb514b7a21c1a5b13bbd9088707d2b874164343', 1, 24, 24, 1, 1, 42, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(230, '64bec1e8cc499731799aabb5678b419c28f561941515', 1, 24, 24, 1, 1, 45, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(231, '6a27a5c5b9cb668168f844ae917dbd0b94283d102360', 1, 24, 24, 1, 1, 40, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(232, 'c380c6ccbbbbf381a8f4ae65943ac09856a616ae1633', 1, 24, 24, 1, 1, 38, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(233, '6be39126ee6c1ba80d653a9854e28e1ff44584452946', 1, 24, 24, 1, 1, 37, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(234, 'b2361207654aa3ed0048eab33b0958536280b3ba2831', 1, 24, 24, 1, 1, 54, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(235, '0c8fc0b787cba7a2a069873c74e3ae8d1470f3d12792', 1, 24, 24, 1, 1, 46, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(236, '5078b7596f98bac631544f48c6f8270ecab9236c59', 1, 24, 24, 1, 1, 34, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(237, '94e3732b79aefd973a1f02478c969d6140f9355a564', 1, 24, 24, 1, 1, 147, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(238, 'ad6c68156ee4d42e8de50e0edf286f944fd489781749', 1, 24, 24, 1, 1, 58, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(239, 'ff8ac11efcf775594fc4bdbdb73ef03e78e05d491936', 1, 24, 24, 1, 1, 52, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(240, '10f6662819594888bd75bbda093a8dfef39a8652311', 1, 24, 24, 1, 2, 44, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(241, '8eaaebe960df751aa7eb07b4ef437bb3307ae13c1988', 1, 24, 24, 1, 2, 43, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(242, 'bcb3a40e73293cd475c6bbbe456b99f8c92709f9801', 1, 24, 24, 1, 2, 59, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(243, '63f664acc38e8cd29805ea714d4602a1fc5f633b1563', 1, 24, 24, 1, 2, 57, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(244, '39e42b715dcbdbc8936f5eda016349636f02ba4a881', 1, 24, 24, 1, 2, 56, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(245, '693f8e3297c2ffad5b4285763b52944ad3823d402110', 1, 24, 24, 1, 2, 55, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(246, '985f044dc12901d25fefd68e48ce9963e753593a2901', 1, 24, 24, 1, 2, 37, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(247, '35c0fb9c2fe569fcd2b3d6f59d9e3bb29fe726f92812', 1, 24, 24, 1, 2, 41, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(248, '5b004a874a24d798cc043739a639dfa3ff668023221', 1, 24, 24, 1, 2, 45, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(249, '4903e335afa2ae0f79087c94dd656525f6b497ed203', 1, 24, 24, 1, 2, 42, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(250, 'a69bbe64e70ccda77ec02e7cb6f392d6f9e9aacf2645', 1, 24, 24, 1, 2, 40, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(251, '263d85575f23a9a3072a4747f2c3da7babd7414180', 1, 24, 24, 1, 2, 54, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(252, 'ed2799aadd491490de88caa96a2553c5c136e5761234', 1, 24, 24, 1, 2, 46, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(253, '4cf6efaa73307200f1aebc43652c25ec8a1fee402193', 1, 24, 24, 1, 2, 34, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(254, '3fa33fcc0aa55f9cb745597e475f9291d63665b5764', 1, 24, 24, 1, 2, 147, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(255, '60c55e9a22b98f56bfe4a1b0863685dbbed54db92729', 1, 24, 24, 1, 2, 58, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(256, 'a60422323148669a10d456951079078a3359a5031217', 1, 24, 24, 1, 2, 38, 60, 0, 0, '2018-04-10 09:48:00', '2018-04-10 09:48:00', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(257, 'b1742e0eb752f070c36724cb2fb215a5fdf1c04a2280', 1, 25, 25, 1, 1, 44, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(258, '4fb8410ae83596003b0502f01d62fda5c9787a911121', 1, 25, 25, 1, 1, 43, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(259, 'eb487912d862406951db4a70c5620eac58578e9f1247', 1, 25, 25, 1, 1, 59, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(260, 'd2b2a15cc083aba83b27798e070a86363130fd4f1641', 1, 25, 25, 1, 1, 57, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(261, '696f5276eb2dd3a0819ab57c20babeef803faf4f1986', 1, 25, 25, 1, 1, 56, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(262, 'dbded579adb9b156e246c3fb8d7044a9f37a95cb2241', 1, 25, 25, 1, 1, 38, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(263, 'b8fb6e6ab2ec05569b544794f23329e7d1e56ca0679', 1, 25, 25, 1, 1, 37, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(264, '9d56dbd3a30e03e10817a5c8dc143664ec58aedc2707', 1, 25, 25, 1, 1, 55, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(265, '6ada435b528ce6cd7d92179131ceee557f577f5f2924', 1, 25, 25, 1, 1, 41, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(266, '7d8a198d1d27f7dc1ff15c1bbbf4bcc28112010744', 1, 25, 25, 1, 1, 45, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(267, 'd82d76f728965639fd84d774b70b28d49735baba558', 1, 25, 25, 1, 1, 42, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(268, 'e6e91588682c0fce0fbf71ce5dcc9b91b1018e2c1841', 1, 25, 25, 1, 1, 40, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(269, '03acc3fe6a0ce06196c7d4f7cf0064bd1a00c300744', 1, 25, 25, 1, 1, 54, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(270, '2be18c7b499648536675a1d6645594f808b314c0779', 1, 25, 25, 1, 1, 46, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(271, 'dd313456b6798ccfefc67c1147fcd1ee262a60292062', 1, 25, 25, 1, 1, 58, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(272, 'd2bd3ba7699f26abe1497b82c4f001a28bfd445e1542', 1, 25, 25, 1, 1, 147, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(273, 'bb0d48d0a6a5538791f1d75a0f155aa1e069c8fc2613', 1, 25, 25, 1, 1, 34, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(274, '2da242d0acd3791ca0cf4f261159fb12c0389cd21002', 1, 25, 25, 1, 1, 52, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(275, 'c17f94853bb5e1643527af3d9ba7db04434bf0011332', 1, 25, 25, 1, 2, 34, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(276, 'c6012121aeff38680a44a03927e167e7ce72fadd2491', 1, 25, 25, 1, 2, 58, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(277, 'e63d666a708b9cdddec69f8037f354377766c6711506', 1, 25, 25, 1, 2, 52, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(278, 'f0bf2981fa80aa8058813830e652ede8af006a7f138', 1, 25, 25, 1, 2, 38, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(279, '3ec1053ffa9b934e28c6b7c8740e0655bd2d993c2343', 1, 25, 25, 1, 2, 37, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(280, '28cfceb6a9c0acc1e158b351a1ca8a8c6e0a5244260', 1, 25, 25, 1, 2, 54, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(281, '5a9c52ce62b0ff161cdf41f2d732b4bccc6267f1418', 1, 25, 25, 1, 2, 46, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1);
INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(282, '7d20accb211630e999f16654f1feb6e01d3d71793028', 1, 25, 25, 1, 2, 41, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(283, '0519fbadb50c84d6d65d32ec943fcc055aa1b696473', 1, 25, 25, 1, 2, 55, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(284, 'bce049abd8449fef8a98ed58cb1dfbfbe18a41db2244', 1, 25, 25, 1, 2, 147, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(285, 'dce30fefce1ac08eb280cd7f4e2a6bf87137d3802210', 1, 25, 25, 1, 2, 45, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(286, 'b0f5ffc052b4ef9b1cb8c63a6b64cb2e54e858c81045', 1, 25, 25, 1, 2, 42, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(287, '6caa733df90ba489329778ce0190bbf817a88ca375', 1, 25, 25, 1, 2, 40, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(288, '8f9d6602b347f3706777c26a08ea9015bcd451081459', 1, 25, 25, 1, 2, 59, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(289, '5423eee0b8e0c8d3024418ba1542ae37eb3b09992164', 1, 25, 25, 1, 2, 57, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(290, '8f882f38e7a9692c2691be6f8b0913180b75bb701319', 1, 25, 25, 1, 2, 56, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(291, '4d338310e460cf325a97d68a71a168f6e3421a0f70', 1, 25, 25, 1, 2, 44, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(292, 'f8c8f99a1a79509c92d0c776957a6f537b1f806e1119', 1, 25, 25, 1, 2, 43, 60, 0, 0, '2018-04-10 09:52:07', '2018-04-10 09:52:07', '51.36.92.34', '51.36.92.34', 1790, 1790, 2, 'course_subject', 1),
(293, 'b604e025ba396b3c082a07b1656c0c9f36d0e6291295', 1, 26, 26, 1, 1, 36, 60, 0, 0, '2018-04-12 06:21:30', '2018-04-12 06:21:30', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'course_subject', 1),
(294, '2d84ee56e6623653f1c7a491a0cd53c7e687890f406', 1, 26, 26, 1, 1, 34, 60, 0, 0, '2018-04-12 06:21:30', '2018-04-12 06:21:30', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'course_subject', 1),
(295, 'cab17345c1bcbc639cb829b0344caf5b048c36b2593', 1, 26, 26, 1, 2, 39, 60, 0, 0, '2018-04-12 06:21:30', '2018-04-12 06:21:30', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'course_subject', 1),
(296, '9bb9506003769d2d5c44b76c89af66b028ccb125944', 1, 26, 26, 1, 2, 38, 60, 0, 0, '2018-04-12 06:21:30', '2018-04-12 06:21:30', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'course_subject', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint(20) unsigned NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'departments',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `department_code`, `slug`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'hello', '1233', 'hello2724', 'awdawd', '2018-02-20 00:24:40', '2018-02-20 00:24:40', NULL, NULL, NULL, NULL, 1, 'departments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dues_purchase`
--

CREATE TABLE IF NOT EXISTS `dues_purchase` (
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
  `branch_id` smallint(6) DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dues_purchase'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dues_purchase`
--

INSERT INTO `dues_purchase` (`id`, `student_id`, `parent_id`, `academic_id`, `semister`, `slug`, `specifications`, `created_at`, `updated_at`, `created_by_ip`, `updated_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(24, 1877, 1869, 1, 0, '6f86e2a96ca8fa17067b60562d128af00b3a04f91995', '{"total":17000,"your_money":16900,"remain_purchase":0,"dues_title":["\\u0627\\u0644\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","\\u0627\\u0644\\u0632\\u064a \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f.","\\u0627\\u0644\\u0645\\u0648\\u0627\\u0635\\u0644\\u0627\\u062a.","\\u0627\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629"]}', '2018-04-13 14:48:39', '2018-04-14 01:18:38', NULL, NULL, NULL, NULL, 1, 1, 'dues_purchase');

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

CREATE TABLE IF NOT EXISTS `emailtemplates` (
  `id` int(10) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'emailtemplates',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emailtemplates`
--

INSERT INTO `emailtemplates` (`id`, `title`, `slug`, `type`, `subject`, `content`, `from_email`, `from_name`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'header', 'header', 'content', 'الهيدر', '<!-- Start of preheader -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody><!-- Spacing -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n					<tr>\r\n						<td>اذا لم تستطع مشاهدة الرسالة من فضلك <a href="#"> اضفط هنا </a></td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- End of preheader --><!-- start of header -->\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody>\r\n					<tr>\r\n						<td><!-- logo -->\r\n						<table align="left" border="0" cellpadding="0" cellspacing="0" style="width:280px">\r\n							<tbody>\r\n								<tr>\r\n									<td>\r\n									<p><a href="#"><img alt="logo" src="http://school.sasbit.com/images/logo.png" style="height:57px; width:180px" /> </a></p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<!-- End of logo --><!-- menu -->\r\n\r\n						<table align="right" border="0" cellpadding="0" cellspacing="0" style="width:280px">\r\n							<tbody>\r\n								<tr>\r\n									<td><a href="http://school.sasbit.com/login">تسجيل الدخول&nbsp;</a> | <a href="http://sasbit.com/public/?page=About_SasBit&amp;lang=ar"> عن ساسبت&nbsp;</a></td>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<!-- End of Menu --></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- end of header -->', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-19 06:23:14', '2018-03-09 07:30:04', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(2, 'footer', 'footer', 'footer', 'الفوتر', '<!-- Start of preheader -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody><!-- Spacing -->\r\n					<tr>\r\n						<td>شكرا لاستخدامكم نظام ساسب للتعليم الالكتروني</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!-- Spacing -->\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!-- End of preheader -->', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-19 06:24:08', '2018-03-09 07:29:59', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(3, 'exam-result', 'exam-result', 'content', 'قسم نتائج الاختبارات', '<p>شكرا على دخول الاختبار نرجو الدخول على نظام التعليم الالكتروني للاطلاع على نتائج الاختبارات</p>\r\n\r\n<p>http://school.sasbit.com/</p>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-19 06:37:51', '2018-03-09 07:29:54', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(4, 'registration', 'registration', 'content', 'بيانات التسجيل فى نظام ساسبت', '<!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style="text-align:left">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style="text-align:left">\r\n									<p>Dear ,<br />\r\n									You have successfully registered with Academia.</p>\r\n\r\n									<p>The credentials are</p>\r\n\r\n									<p>Username: /</p>\r\n\r\n									<p>Password:</p>\r\n\r\n									<p>Enjoy the facilities provided by our system.</p>\r\n\r\n									<p>Please contact admin for further details.</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\r\n										<tbody>\r\n											<tr>\r\n												<td style="background-color:#0db9ea; text-align:justify"><a href="#">Read More</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-07-29 03:48:18', '2018-03-09 07:08:17', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(5, 'subscription', 'subscription', 'content', 'تمت عملية التسجيل بنجاح', '<!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style="text-align:left">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style="text-align:left">Dear ,<br />\r\n									You have successfully subscribed to plan with transaction 1. Enjoy the facilities provided by our system.</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\r\n										<tbody>\r\n											<tr>\r\n												<td style="background-color:#0db9ea; text-align:center"><a href="#">Read More</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-08-03 01:00:58', '2018-03-09 07:30:08', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(6, 'offline_subscription_failed', 'offline-subscription-failed', 'content', 'مشكلة فى عملية الدفع', '<!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style="text-align:left">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style="text-align:left">\r\n									<p>مرحبا ,</p>\r\n\r\n									<p>حدثت مشكلة فى عملية الدفع التقليدي</p>\r\n\r\n									<p>من فضلك تواصل مع مدير نظام التعليم الالكتروني او قسم العلاقات العامة بالمدرسة</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\r\n										<tbody>\r\n											<tr>\r\n												<td style="background-color:#0db9ea; text-align:center"><a href="http://school.sasbit.com">الدخول على النظام</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-10-15 10:31:47', '2018-03-09 07:02:57', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(7, 'offline_subscription_success', 'offline-subscription-success', 'content', 'تمت عملية الدفع بنجاح', '<!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style="text-align:left">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style="text-align:left">\r\n									<p>مرحبا&nbsp;,<br />\r\n									شكرا لك على السداد لقد تمت العملية بنجاح&nbsp;</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\r\n										<tbody>\r\n											<tr>\r\n												<td style="background-color:rgb(13, 185, 234); text-align:justify"><a href="http://school.sasbit.com">الدخول على النظام</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-10-15 10:35:32', '2018-03-09 07:06:03', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1),
(8, 'subscription_success', 'subscription-success', 'content', 'Your Subscription was Success', '<!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\r\n							<tbody><!-- title -->\r\n								<tr>\r\n									<td style="text-align:left">&nbsp;</td>\r\n								</tr>\r\n								<!-- end of title --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing --><!-- content -->\r\n								<tr>\r\n									<td style="text-align:left">\r\n									<p>Dear ,<br />\r\n									Your subscription to plan is success. &nbsp;</p>\r\n\r\n									<p>Please contact admin for further details.</p>\r\n									</td>\r\n								</tr>\r\n								<!-- end of content --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- button -->\r\n								<tr>\r\n									<td>\r\n									<table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\r\n										<tbody>\r\n											<tr>\r\n												<td style="background-color:#0db9ea; text-align:justify"><a href="#">Read More</a></td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n								<!-- /button --><!-- Spacing -->\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n								<!-- Spacing -->\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'school@sasbit.com', 'إدارة نظام التعليم الالكتروني', 1790, '2016-10-19 15:31:21', '2018-03-09 07:30:50', '51.39.216.95', NULL, NULL, 1790, 1, 'emailtemplates', 1);

-- --------------------------------------------------------

--
-- Table structure for table `examseries`
--

CREATE TABLE IF NOT EXISTS `examseries` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'examseries',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examseries_data`
--

CREATE TABLE IF NOT EXISTS `examseries_data` (
  `id` int(10) unsigned NOT NULL,
  `examseries_id` bigint(20) unsigned NOT NULL,
  `quiz_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'examseries_data'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examtoppers`
--

CREATE TABLE IF NOT EXISTS `examtoppers` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `quiz_id` bigint(20) unsigned NOT NULL,
  `percentage` decimal(10,2) NOT NULL,
  `rank` int(11) NOT NULL,
  `quiz_result_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'examtoppers',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'feedbacks',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `title`, `slug`, `user_id`, `subject`, `description`, `read_status`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'مقترح جديد', 'mktrh-jdyd', 1869, 'بخصوص المصروفات المدرسية', 'السلام عليكم \r\nنرجو عمل امكانية لاختبار البنود الخاصة بالمصروفات بشكل اختياري', 0, '2018-02-13 07:27:51', '2018-02-13 07:27:51', NULL, NULL, NULL, NULL, 1, 'feedbacks', 1),
(2, 'بخصوص الاشعارات', 'bkhsos-alashaaarat', 1869, 'عداد الاشعارات لا يقل ', 'عند الاطلاع على الاشعارات يجب ان يقل العداد المجاوز للاشعار ', 0, '2018-02-14 06:41:14', '2018-03-26 06:49:34', NULL, NULL, NULL, NULL, 2, 'feedbacks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(10) unsigned NOT NULL,
  `percentage_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage_from` decimal(10,2) NOT NULL,
  `percentage_to` decimal(10,2) NOT NULL,
  `grade_points` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'grades'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `percentage_title`, `grade_title`, `percentage_from`, `percentage_to`, `grade_points`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 'Distinction', 'A+', '75.00', '100.00', '10.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 1, 'grades'),
(2, 'First Class', 'A', '60.00', '74.99', '9.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 1, 'grades'),
(3, 'Second Class', 'B', '50.00', '59.99', '7.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 1, 'grades'),
(4, 'Third Class', 'C', '35.00', '49.99', '6.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00', NULL, NULL, NULL, NULL, 1, 1, 'grades');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'groups'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE IF NOT EXISTS `instructions` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'instructions',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'التعليمات', 'altaalymat', '<p>من فضلك قم بقراءة الاسئلة بشكل جيد وقم بالاجابة عليها وحالة عدم التاكد من الاجابة الصحيحة يمكنك الانتقال الى الاسئلة التالية واجابتها ومن ثم العودة مره اخري الى السؤال السابق.</p>\r\n\r\n<p><strong>قبل بدء الاختبار:</strong></p>\r\n\r\n<p>1. تأكد من أن لديك اتصال إنترنت جيد. .</p>\r\n\r\n<p>2 لا يجوز للطالب استخدام كتابه الدراسي أو الملازم الدراسية أو تلقي المساعدة من المراقب&nbsp;أو أي مصدر خارجي آخر.</p>\r\n\r\n<p>3- ستجرى الاختبارات خلال المواعيد المحددة في جدول الاختبارات.</p>\r\n', '2016-06-08 03:32:59', '2018-03-31 06:12:46', '51.39.112.170', NULL, NULL, 1790, 2, 'instructions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'languages',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `slug`, `code`, `is_rtl`, `is_default`, `phrases`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(9, 'English', 'english1530', 'en', 0, 0, '{"games_played_or_extra-curricular_activities":"Games Played Or Extra-curricular Activities","general_conduct":"General Conduct","date_of_application_for_certificate":"Date Of Application For Certificate","date_of_issue_certificate":"Date Of Issue Certificate","reason_for_leaving_the_school":"Reason For Leaving The School","any_other_remarks":"Any Other Remarks","print":"Print","date":"Date","serial_no:":"Serial No:","admission_no:":"Admission No:","name_of_the_pupil":"Name Of The Pupil","fathers\\/guardians_name":"Fathers\\/guardians Name","mothers_name":"Mothers Name","nationality":"Nationality","candidate_belongs_to_schedule_caste_or_schedule_tribe":"Candidate Belongs To Schedule Caste Or Schedule Tribe","date_of_first_admission_in_the_school_with_class":"Date Of First Admission In The School With Class","date_of_birth_according_to_the_admission_register":"Date Of Birth According To The Admission Register","class_in_which_the_last_studied_with_name":"Class In Which The Last Studied With Name","school\\/board_annual_examination_last_taken_and_result":"School\\/board Annual Examination Last Taken And Result","whether_failed,_if_once\\/twice_in_the_same_class":"Whether Failed, If Once\\/twice In The Same Class","whether_qualified_for_promotion_to_higer_class_if_so,_to_which_class":"Whether Qualified For Promotion To Higer Class If So, to Which Class","total_number_no_of_working_days":"Total Number No Of Working Days","total_number_no_of_days_present":"Total Number No.of Days Present","whether_n_c_c_cadet\\/boy_scout\\/_girls_guide":"Whether N C C Cadet\\/boy Scout\\/ Girls Guide","whether_ncc_cadet\\/boy_scout\\/_girls_guide":"Whether Ncc Cadet\\/boy Scout\\/ Girls Guide","whether_ncc_cadet\\/_boy_scout\\/_girls_guide":"Whether Ncc Cadet\\/ Boy Scout\\/ Girls Guide","whether_n_c_c_cadet\\/_boy_scout\\/_girls_guide":"Whether N C C Cadet\\/ Boy Scout\\/ Girls Guide","whether_n_cc_cadet\\/_boy_scout\\/_girls_guide":"Whether N.cc Cadet\\/ Boy Scout\\/ Girls Guide","bonafide_certificate":"Bonafide Certificate","select":"Select","academic_operations":"Academic Operations","certificates_dashboard":"Certificates Dashboard","select_details":"Select Details","certificate_type":"Certificate Type","search":"Search","image":"Image","name":"Name","roll_no":"Roll No","admission_no":"Admission No","class":"Class","year":"Year","semester":"Semester","are_you_sure":"Are You Sure","yes":"Yes","delete_it":"Delete It","no":"No","cancel_please":"Cancel Please","cancelled":"Cancelled","your_record_is_safe":"Your Record Is Safe","search_student":"Search Student","latest_users":"Latest Users","was_joined_as":"Was Joined As","see_more":"See More","my_profile":"My Profile","change_password":"Change Password","feedback":"Feedback","notifications":"Notifications","messages":"Messages","languages":"Languages","logout":"Logout","dashboard":" Dashboard","users":"Users","attendance":"Attendance","certificates":"Certificates","transfers":"Transfers","timetable":"Timetable","offline_exams_":"Offline Exams ","class_attendance_report":"Class Attendance Report","class_marks_report":"Class Marks Report","exams":"Exams","categories":" Categories","question_bank":"Question Bank","quiz":"Quiz","exam_series":"Exam Series","instructions":"Instructions","coupons":"Coupons","list":"List","add":"Add","contents":"Contents","series":" Series","master_settings":"Master Settings","settings":"Settings","religions_master":"Religions Master","categories_master":"Categories Master","academics_master":"Academics Master","courses_master":"Courses Master","course_subjects":"Course Subjects","certificate_templates":"Certificate Templates","email_templates":"Email Templates","payment_reports":"Payment Reports","online_payments":"Online Payments","offline_payments":"Offline Payments","export":"Export","certificate_issues_histroy":"Certificate Issues Histroy","select_user_to_view_details":"Select User To View Details","purpose":"Purpose","please_wait":"Please Wait","invalid_setting":"Invalid Setting","id_cards":"Id Cards","lets_start":"Lets Start","bonafide_certificates":"Bonafide Certificates","user_statistics":"User Statistics","success":"Success","pending":"Pending","total":"Total","overall_statistics":"Overall Statistics","payments_reports_in":"Payments Reports In","demanding_quizzes":"Demanding Quizzes","demanding":"Demanding","quizzes":"Quizzes","view_all":"View All","academics":"Academics","library":"Library","courses":"Courses","quizzes_usage":"Quizzes Usage","paid_quizzes_usage":"Paid Quizzes Usage","academic_operations_dashboard":"Academic Operations Dashboard","offline_exams":"Offline Exams","orientation":"Orientation","update":"Update","create":"Create","key":"Key","setting_key":"Setting Key","tool_tip":"Tool Tip","type":"Type","total_options":"Total Options","description":"Description","option_value":"Option Value","option_text":"Option Text","make_default":"Make Default","record_updated_successfully":"Record Updated Successfully","zoomfactor":"Zoomfactor","margin":"Margin","format":"Format","printable_file":"Printable File","id_card_generation":"Id Card Generation","print_header":"Print Header","print_footer":"Print Footer","print_date":"Print Date","print_reference_number":"Print Reference Number","module":"Module","action":"Action","edit":"Edit","view":"View","logo":"Logo","content":" Content","left_sign_image":"Left Sign Image","right_sign_image":"Right Sign Image","left_sign_name":"Left Sign Name","right_sign_name":"Right Sign Name","left_sign_designation":"Left Sign Designation","right_sign_designation":"Right Sign Designation","watermark_image":"Watermark Image","bottom_middle_logo":"Bottom Middle Logo","add_setting":"Add Setting","title":"Title","introduction":"Introduction","description_of_the_topic":"Description Of The Topic","record_added_successfully":"Record Added Successfully","no_settings_available":"No Settings Available","right_designation":"Right Designation","exams_dashboard":"Exams Dashboard","exam-series":"Exam-series","quiz_categories":"Quiz Categories","category":"Category","you_will_not_be_able_to_recover_this_record":"You Will Not Be Able To Recover This Record","deleted":"Deleted","sorry":"Sorry","cannot_delete_this_record_as":"Cannot Delete This Record As","your_record_has_been_deleted":"Your Record Has Been Deleted","delete":"Delete","create_series":"Create Series","duration":"Duration","is_paid":"Is Paid","total_marks":"Total Marks","update_questions":"Update Questions","free":"Free","paid":"Paid","create_quiz":"Create Quiz","quiz_title":"Quiz Title","this_field_is_required":"This Field Is Required","the_text_is_too_short":"The Text Is Too Short","the_text_is_too_long":"The Text Is Too Long","subject":"Subject","select_subject":"Select Subject","online":"Online","offline":"Offline","quiz_type":"Quiz Type","select_type":"Select Type","offline_category":"Offline Category","enter_value_in_minutes":"Enter Value In Minutes","please_enter_valid_number":"Please Enter Valid Number","it_will_be_updated_by_adding_the_questions":"It Will Be Updated By Adding The Questions","pass_percentage":"Pass Percentage","negative_mark":"Negative Mark","instructions_page":"Instructions Page","start_date":"Start Date","end_date":"End Date","validity":"Validity","validity_in_days":"Validity In Days","cost":"Cost","specific_classes":"Specific Classes","applicable_to_specific":"Applicable To Specific","academic_year":"Academic Year","course":"Course","already_item_available":"Already Item Available","item_removed_successfully":"Item Removed Successfully","update_questions_for":"Update Questions For","subjects":"Subjects","difficulty":"Difficulty","easy":"Easy","medium":"Medium","hard":"Hard","question_type":"Question Type","single_answer":"Single Answer","multi_answer":"Multi Answer","fill_in_the_blanks":"Fill In The Blanks","match_the_following":"Match The Following","paragraph":"Paragraph","video":"Video","search_term":"Search Term","enter_search_term":"Enter Search Term","question":"Question","marks":"Marks","saved_questions":"Saved Questions","remove_all":"Remove All","edit_quiz":"Edit Quiz","right_side_name":"Right Side Name","right_side_sign":"Right Side Sign","bonafide_\\/_tc_certificates":"Bonafide \\/ Tc Certificates","bonafide_\\/_transfer_certificates":"Bonafide \\/ Transfer Certificates","bonafide_\\/_transfer_certificate":"Bonafide \\/ Transfer Certificate","users_dashboard":"Users Dashboard","owners":"Owners","admins":"Admins","students":"Students","staff":"Staff","librarians":"Librarians","assistant_librarians":"Assistant Librarians","parents":"Parents","all_users":"All Users","create_user":"Create User","100":"100","update_offline_exams_marks":"Update Offline Exams Marks","import_excel":"Import Excel","exam":"Exam","year_and_semester":"Year And Semester","maximum_marks":"Maximum Marks","update_marks":"Update Marks","select_offline_exams_details":"Select Offline Exams Details","offline_exmas":"Offline Exmas","selection_details":"Selection Details","branch":"Branch","get_details":"Get Details","offline_exam_details":"Offline Exam Details","marks_for":"Marks For","sno":"Sno","photo":"Photo","marks_obtained":"Marks Obtained","exam_status":"Exam Status","pass":"Pass","fail":"Fail","reference_no":"Reference No","oops___!":"Oops...!","no_students_available":"No Students Available","right_side_designation":"Right Side Designation","edit_settings":"Edit Settings","offline_exams_categories":"Offline Exams Categories","offline_quiz_categories":"Offline Quiz Categories","category_name":"Category Name","add_category":"Add Category","invalid_input":"Invalid Input","edit_category":"Edit Category","offline_exmas_quiz_categories":"Offline Exmas Quiz Categories","offline_exmas_categories":"Offline Exmas Categories","add_user":"Add User","staff_id":"Staff Id","job_title":"Job Title","email":"Email","edit_details":"Edit Details","teacher":"Teacher","staff_profile":"Staff Profile","staff_list":"Staff List","profile":"Profile","general_details":"General Details","personal_details":"Personal Details","contact_details":"Contact Details","date_of_join":"Date Of Join","qualification":"Qualification","experience_(years)":"Experience (years)","experience_(months)":"Experience (months)","experience_information":"Experience Information","other_information":"Other Information","first_name":"First Name","middle_name":"Middle Name","last_name":"Last Name","date_of_birth":"Date Of Birth","gender":"Gender","male":"Male","female":"Female","blood_group":"Blood Group","fathers_name":"Fathers Name","mother_tongue":"Mother Tongue","address_lane1":"Address Lane1","address_lane2":"Address Lane2","city":"City","state":"State","country":"Country","zipcode":"Zipcode","mobile":"Mobile","home_phone":"Home Phone","father\\/guardian_name":"Father\\/guardian Name","father_\\/_guardian_name":"Father \\/ Guardian Name","mother_name":"Mother Name","school_\\/_board_annual_examination_last_taken_and_result":"School \\/ Board Annual Examination Last Taken And Result","whether_failed,__if_once_\\/_twice_in_the_same_class":"Whether Failed, If Once \\/ Twice In The Same Class","left_side_name":"Left Side Name","show_left_side_name":"Show Left Side Name","show_left_side_designation":"Show Left Side Designation","show_left_side_image":"Show Left Side Image","whether_qualified_for_promotion_to_higer_class_if_so,__to_which_class":"Whether Qualified For Promotion To Higer Class If So, To Which Class","show_middle_name":"Show Middle Name","show_left_side_sign":"Show Left Side Sign","total_number_no_of_present_days":"Total Number No Of Present Days","show_middle_designation":"Show Middle Designation","show_middle_sign":"Show Middle Sign","whether_ncc_cadet_\\/_boy_scout\\/_girls_guide":"Whether Ncc Cadet \\/ Boy Scout\\/ Girls Guide","show_right_side_name":"Show Right Side Name","show_right_side_designation":"Show Right Side Designation","games_played_or_extra-_curricular_activities":"Games Played Or Extra- Curricular Activities","show_right_side_sign":"Show Right Side Sign","water_mark_image":"Water Mark Image","show_watermark":"Show Watermark","name_of_student":"Name Of Student","father_guardian_name":"Father Guardian Name","candidate_caste":"Candidate Caste","date_of_admission_with_class":"Date Of Admission With Class","last_class_studied":"Last Class Studied","last_taken_exam_and_result":"Last Taken Exam And Result","whether_failed_if_once_twice_in_the_same_class":"Whether Failed If Once Twice In The Same Class","promotion_class":"Promotion Class","total_working_days":"Total Working Days","total_present_days":"Total Present Days","ncc_boy_scout_girls_guide":"Ncc Boy Scout Girls Guide","games_played_or_extra_curricular_activities":"Games Played Or Extra Curricular Activities","date_of_apply":"Date Of Apply","date_of_issue":"Date Of Issue","reason":"Reason","remarks":"Remarks","import_marks":"Import Marks","download_template":"Download Template","upload":"Upload","information_helper_for_excel_data":"Information Helper For Excel Data","file_type_not_allowed":"File Type Not Allowed","marks_report":"Marks Report","total_class":"Total Class","present":"Present","absent":"Absent","leave":"Leave","no_data_available":"No Data Available","student":"Student","year-semester":"Year-semester","admission_details":"Admission Details","correct":"Correct","wrong":"Wrong","not_answered":"Not Answered","overall_performance":"Overall Performance","performance":"Performance","best_performance_in_all_quizzes":"Best Performance In All Quizzes","details":"Details","student_users":"Student Users","details_of":"Details Of","reports":"Reports","exam_history":"Exam History","view_details":"View Details","by_exam":"By Exam","by_subject":"By Subject","subscriptions":"Subscriptions","certificate_settings":"Certificate Settings","bonafide_certificates_contents":"Bonafide Certificates Contents","bonafide_certificates_fields":"Bonafide Certificates Fields","transfer_certificates_contents":"Transfer Certificates Contents","transfer_certificates_fields":"Transfer Certificates Fields","id_cards_contents":"Id Cards Contents","id_cards_fields":"Id Cards Fields","transfer_certificates_content":"Transfer Certificates Content","transfer_certificates_cont":"Transfer Certificates Cont","transfer_certificates_conten":"Transfer Certificates Conten","bonafide_certificates_conten":"Bonafide Certificates Conten","bonafide_certificate_content":"Bonafide Certificate Content","transfer_certificate_content":"Transfer Certificate Content","bonafide_certificatet_fields":"Bonafide Certificatet Fields","bonafide_certificatet_con":"Bonafide Certificatet Con","bonafide_certificatet_cont":"Bonafide Certificatet Cont","bonafide_certificatet_conten":"Bonafide Certificatet Conten","bonafide_certificate_conten":"Bonafide Certificate Conten","bonafide_certificate_fields":"Bonafide Certificate Fields","transfer_certificate_fields":"Transfer Certificate Fields","id_card_contents":"Id Card Contents","id_card_fields":"Id Card Fields","question_subjects":"Question Subjects","import_questions":"Import Questions","add_subject":"Add Subject","code":"Code","view_questions":"View Questions","bonafide_certificate_settings":"Bonafide Certificate Settings","transfer_certificate_settings":"Transfer Certificate Settings","total_exams":"Total Exams","total_questions":"Total Questions","update_quizzes":"Update Quizzes","bonafide_certificate_seting":"Bonafide Certificate Seting","bonafide__contents":"Bonafide Contents","bonafide_settings":"Bonafide Settings","mastersettings_dashboard":"Mastersettings Dashboard","religions":"Religions","start_time":"Start Time","end_time":"End Time","default_sessions_needed":"Default Sessions Needed","iamge":"Iamge","student_profile":"Student Profile","students_list":"Students List","parent_login":"Parent Login","info":"Info","once_saved_the_admission_details_cannot_be_edited%0D%0A":"Once Saved The Admission Details Cannot Be Edited","present_academic_details":"Present Academic Details","current_academic_year":"Current Academic Year","current_branch":"Current Branch","current_course":"Current Course","previous_educational_details":"Previous Educational Details","highest_qualification":"Highest Qualification","percentage":"Percentage","year_passed":"Year Passed","previous_institute_name":"Previous Institute Name","institute_address":"Institute Address","religion":"Religion","guardian_name":"Guardian Name","guardian_phone":"Guardian Phone","relationship_with_guardian":"Relationship With Guardian","guardian_email":"Guardian Email","parent_login_details":"Parent Login Details","parent_name":"Parent Name","parent_user_name":"Parent User Name","parent_email":"Parent Email","password":"Password","staff_users":"Staff Users","lesson_plans":"Lesson Plans","subject_preferences":"Subject Preferences","student_attendance":"Student Attendance","payment_statistics":"Payment Statistics","payment_monthly_statistics":"Payment Monthly Statistics","particulars":"Particulars","general_instructions":"General Instructions","attendance_date":"Attendance Date","from":"From","to":"To","lesson_plans_for":"Lesson Plans For","no_topics_available":"No Topics Available","transfer_details":"Transfer Details","edit_user":"Edit User","username":"Username","please_enter_valid_email":"Please Enter Valid Email","role":"Role","select_role":"Select Role","phone":"Phone","please_enter_10-15_digit_mobile_number":"Please Enter 10-15 Digit Mobile Number","please_enter_valid_phone_number":"Please Enter Valid Phone Number","billing_address":"Billing Address","please_enter_your_address":"Please Enter Your Address","exam_analysis_by_attempts":"Exam Analysis By Attempts","attempts":"Attempts","of":"Of","mins":"Mins","exam_attempts_and_score":"Exam Attempts And Score","quiz_attempts":"Quiz Attempts","result":"Result","view_answers":"View Answers","generate_certificate":"Generate Certificate","answers":"Answers","analysis":"Analysis","time_limit":"Time Limit","time_taken":"Time Taken","previous":"Previous","next":"Next","timetable_for":"Timetable For","sun":"Sun","mon":"Mon","tue":"Tue","wed":"Wed","thu":"Thu","fri":"Fri","sat":"Sat","timetable_for_":"Timetable For ","leisure":"Leisure","lab":"Lab","completed_topics_list":"Completed Topics List","no_list_available":"No List Available","select_other_class":"Select Other Class","please_select_the_details":"Please Select The Details","preferred_subjects":"Preferred Subjects","elective":"Elective","summary":"Summary","labs":"Labs","electives":"Electives","subjects_list":"Subjects List","success___!":"Success...!","records_updated_successfully":"Records Updated Successfully","students_dashboard":"Students Dashboard","view_students":"View Students","overall_subject_wise_analysis":"Overall Subject Wise Analysis","marks_details":"Marks Details","no_data_available_with_the_selection":"No Data Available With The Selection","leasure":"Leasure","break":"Break","printed_on:_":"Printed On: ","attendance_details":"Attendance Details","view_summary":"View Summary","attendance_summary":"Attendance Summary","total_classes":"Total Classes","its_okay":"Its Okay","topics_completed":"Topics Completed","transfer_list":"Transfer List","semister":"Semister","current_year":"Current Year","current_semister":"Current Semister","admin":"Admin","ooops__":"Ooops..","please_select_any_users":"Please Select Any Users","emergency_no":"Emergency No","no_users_available":"No Users Available","from(admission_year-course-year-semester)":"From(admission Year-course-year-semester)","from_(_admission_year-course-year-semester)":"From ( Admission Year-course-year-semester)","from_(_admission_year-_course-_year-_semester)":"From ( Admission Year- Course- Year- Semester)","to_(_admission_year-_course-_year-_semester)":"To ( Admission Year- Course- Year- Semester)","transfers_list":"Transfers List","from_(_admission_year-_course-_year-_semester)<\\/i>_":"From ( Admission Year- Course- Year- Semester)<\\/i> ","from_(_admission_year-_course)":"From ( Admission Year- Course)","to_(_admission_year-_course)":"To ( Admission Year- Course)","from_(_admission_year)":"From ( Admission Year)","to_(_admission_year)":"To ( Admission Year)","modules_helper":"Modules Helper","help_link_text":"Help Link Text","status":"Status","add_helper":"Add Helper","help_me":"Help Me","is_enabled":"Is Enabled","keyboard":"Keyboard","backdrop":"Backdrop","steps":"Steps","element_id":"Element Id","placement":"Placement","sort_order":"Sort Order","add_to_list":"Add To List","element":"Element","student_promotions":"Student Promotions","cancel":"Cancel","confirm":"Confirm","is_completed":"Is Completed","transfer_to_course":"Transfer To Course","transfer_to_year":"Transfer To Year","transfer_to_semister":"Transfer To Semister","promoted":"Promoted","detained":"Detained","course_completed":"Course Completed","transfer":"Transfer","create_category":"Create Category","enter_category_name":"Enter Category Name","record_added_successfully_with_password_":"Record Added Successfully With Password ","%0D%0Acannot_send_email_to_user,_please_check_your_server_settings":"cannot Send Email To User, Please Check Your Server Settings","timings_set":"Timings Set","create_timetable":"Create Timetable","timing_sets":"Timing Sets","timetable_dashboard":"Timetable Dashboard","prepare_timetable":"Prepare Timetable","day":"Day","remove":"Remove","print_timetable":"Print Timetable","enter_notes":"Enter Notes","this_will_be_displayed_bottom_of_the_timetable":"This Will Be Displayed Bottom Of The Timetable","schedule_table":"Schedule Table","attendance_report":"Attendance Report","subjects_reports":"Subjects Reports","view_analysis":"View Analysis","view_report":"View Report","my_bookmarks":"My Bookmarks","scheduled_exams":"Scheduled Exams","by_subjcet":"By Subjcet","history":"History","lms":"Lms","quizzes_dashboard":"Quizzes Dashboard","student_list":"Student List","payments":"Payments","viewww":"Viewww","all_exams":"All Exams","dueration":"Dueration","take_exam":"Take Exam","select_template":"Select Template","please_read_the_instructions_carefully":"Please Read The Instructions Carefully","exam_name":"Exam Name","please_accept_terms_and_conditions":"Please Accept Terms And Conditions","start_exam":"Start Exam","enable_back_side":"Enable Back Side","days":"Days","top_logo":"Top Logo","account_settings":"Account Settings","quiz_and_exam_series":"Quiz And Exam Series","lms_categories":"Lms Categories","academic_years":"Academic Years","courses_dashboard":"Courses Dashboard","allocate_courses":"Allocate Courses","academic_courses":"Academic Courses","course_list":"Course List","record_deleted_successfully":"Record Deleted Successfully","page_not_found":"Page Not Found","ooops___!":"Ooops...!","ooops__!":"Ooops..!","you_have_no_permission_to_access":"You Have No Permission To Access","no_topics_availble":"No Topics Availble","topics":"Topics","import_topics":"Import Topics","add_course":"Add Course","subject_master":"Subject Master","subject_topics":"Subject Topics","allocate_subject_to_course":"Allocate Subject To Course","allocate_staff_to_course":"Allocate Staff To Course","topics_list":"Topics List","import":"Import","parent":"Parent","topic_(id)":"Topic (id)","front_first_item":"Front First Item","allocate_staff_to_subject":"Allocate Staff To Subject","allocate_staff_to_courses":"Allocate Staff To Courses","add_or_edit_course_subjects":"Add Or Edit Course Subjects","allocate_staff":"Allocate Staff","subject_title":"Subject Title","subject_code":"Subject Code","pass_marks":"Pass Marks","is_lab":"Is Lab","is_elective":"Is Elective","view_topics":"View Topics","import_users":"Import Users","front_second_item":"Front Second Item","front_third_item":"Front Third Item","front_fourth_item":"Front Fourth Item","front_fifth_item":"Front Fifth Item","front_sixth_item":"Front Sixth Item","front_seventh_item":"Front Seventh Item","front_total_fields":"Front Total Fields","back_first_item_title":"Back First Item Title","front_first_item_title":"Front First Item Title","front_second_item_title":"Front Second Item Title","front_third_item_title":"Front Third Item Title","front_fourth_item_title":"Front Fourth Item Title","front_fifth_item_title":"Front Fifth Item Title","front_sixth_item_title":"Front Sixth Item Title","front_seventh_item_title":"Front Seventh Item Title","coupon_codes":"Coupon Codes","discount":"Discount","minimum_bill":"Minimum Bill","maximum_discount":"Maximum Discount","limit":"Limit","back_first_item_text":"Back First Item Text","back_second_item_title":"Back Second Item Title","back_second_item_text":"Back Second Item Text","time_spent_on_correct_answers":"Time Spent On Correct Answers","time_spent_on_wrong_answers":"Time Spent On Wrong Answers","overall_marks_analysis":"Overall Marks Analysis","time":"Time","spent_on_correct":"Spent On Correct","spent_on_wrong":"Spent On Wrong","spent_time":"Spent Time","total_time":"Total Time","time_is_shown_in_seconds":"Time Is Shown In Seconds","back_third_item_title":"Back Third Item Title","back_third_item_text":"Back Third Item Text","back_fourth_item_title":"Back Fourth Item Title","back_fourth_item_text":"Back Fourth Item Text","clear_answer":"Clear Answer","bookmarks":"Bookmarks","exam_duration":"Exam Duration","hints":"Hints","unbookmark_this_question":"Unbookmark This Question","bookmark_this_question":"Bookmark This Question","mark_for_review":"Mark For Review","finish":"Finish","warning":"Warning","do_not_press_back\\/refresh_button":"Do Not Press Back\\/refresh Button","answered":"Answered","marked":"Marked","not_visited":"Not Visited","consumed_time":"Consumed Time","result_for":"Result For","score":"Score","view_key":"View Key","allocate_subjects":"Allocate Subjects","no_staff_alotted":"No Staff Alotted","no_subjects_selected":"No Subjects Selected","id":"Id","course_name":"Course Name","grade_type":"Grade Type","edit_semisters":"Edit Semisters","years":"Years","add_religion":"Add Religion","owner":"Owner","total_items":"Total Items","update_lms":"Update Lms","examseries":"Examseries","create_coupon":"Create Coupon","coupon_code":"Coupon Code","value":"Value","percent":"Percent","discount_type":"Discount Type","discount_value":"Discount Value","enter_value":"Enter Value","enter_minimum_bill":"Enter Minimum Bill","discount_maximum_amount":"Discount Maximum Amount","enter_maximum_amount":"Enter Maximum Amount","valid_from":"Valid From","valid_to":"Valid To","usage_limit":"Usage Limit","enter_usage_limit_per_user":"Enter Usage Limit Per User","from_email":"From Email","from_name":"From Name","export_payments_report":"Export Payments Report","export_payment_records":"Export Payment Records","download_excel":"Download Excel","all_records":"All Records","from_date":"From Date","to_date":"To Date","payment_type":"Payment Type","all":"All","payment_status":"Payment Status","select_parent":"Select Parent","course_title":"Course Title","course_code":"Course Code","duration_in_years":"Duration In Years","grade_system":"Grade System","is_having_semisters":"Is Having Semisters","is_having_electives":"Is Having Electives","add_subjects_to_course":"Add Subjects To Course","courses_list":"Courses List","load":"Load","add_subject_to_course":"Add Subject To Course","number_of_sessions_needed":"Number Of Sessions Needed","template_1_logo":"Template 1 Logo","institute_title":"Institute Title","create_set":"Create Set","academic_operatons":"Academic Operatons","period_name":"Period Name","enter_period_name":"Enter Period Name","start_time_cannot_be_greater_than_or_equal_to_end_time":"Start Time Cannot Be Greater Than Or Equal To End Time","start_time_must_be_greater_to_previous_end_time":"Start Time Must Be Greater To Previous End Time","time_spent_correct_answers":"Time Spent Correct Answers","time_spent_wrong_answers":"Time Spent Wrong Answers","subject_wise_analysis":"Subject Wise Analysis","in":"In","attendance_for":"Attendance For","notes":"Notes","create_message":"Create Message","inbox":"Inbox","compose":"Compose","send_message":"Send Message","questions":"Questions","fill_the_blanks":"Fill The Blanks","first_admission_in_the_school":"First Admission In The School","date_of_first_admission_in_the_school":"Date Of First Admission In The School","first_admission_class_in_the_school_with_name":" First Admission Class In The School With Name","completed":"Completed","internal_marks":"Internal Marks","external_marks":"External Marks","please_enter_valid_internal_marks":"Please Enter Valid Internal Marks","please_enter_valid_external_marks":"Please Enter Valid External Marks","please_enter_valid_maximum_marks":"Please Enter Valid Maximum Marks","please_enter_valid_pass_marks":"Please Enter Valid Pass Marks","pass_marks_cannot_be_greater_than_maximum_marks":"Pass Marks Cannot Be Greater Than Maximum Marks","add_topic":"Add Topic","topic_name":"Topic Name","category_deleted_successfully":"Category Deleted Successfully","add_academic":"Add Academic","academic_title":"Academic Title","show_in_list":"Show In List","payu":"Payu","paypal":"Paypal","messaging":"Messaging","offline_payment":"Offline Payment","push_notifications":"Push Notifications","certificate":"Certificate","show_foreign_key_constraint":"Show Foreign Key Constraint","facebook_login":"Facebook Login","google_plus_login":"Google Plus Login","old_password":"Old Password","the_password_is_too_short":"The Password Is Too Short","new_password":"New Password","retype_password":"Retype Password","password_and_confirm_password_does_not_match":"Password And Confirm Password Does Not Match","posted_on":"Posted On","send_messageeee":"Send Messageeee","please_select_the_recipients":"Please Select The Recipients","import_subjects":"Import Subjects","children":"Children","premium":"Premium","subscriptions_list":"Subscriptions List","plan_type":"Plan Type","paid_from":"Paid From","datetime":"Datetime","it_includes":"It Includes","lms_series":"Lms Series","view_more":"View More","items":"Items","learning_management_series":"Learning Management Series","buy_now":"Buy Now","checkout":"Checkout","item":"Item","valid_for":"Valid For","enter_coupon_code":"Enter Coupon Code","apply":"Apply","select_your_child":"Select Your Child","click_here_to_update_payment_details":"Click Here To Update Payment Details","billing_details":"Billing Details","invalid_coupon":"Invalid Coupon","hey_you_are_eligible_for_discount":"Hey You Are Eligible For Discount","printable__file":"Printable File","timetable_settings":"Timetable Settings","printed_onnn:_":"Printed Onnn: ","timetable__contents":"Timetable Contents","certificates_settings_dashboard":"Certificates Settings Dashboard","hai":"Hai","students_list_class_vice":"Students List Class Vice","library_dashboard":"Library Dashboard","book_returns_student":"Book Returns Student","book_returns_staff":"Book Returns Staff","asset_types":"Asset Types","master_data":"Master Data","publishers":"Publishers","authors":"Authors","library_users":"Library Users","issue_asset":"Issue Asset","maximum_allowed":"Maximum Allowed","issued":"Issued","eligible":"Eligible","transactions":"Transactions","books_taken":"Books Taken","issue_book":"Issue Book","general_info":"General Info","contace_details":"Contace Details","assets_on_issue":"Assets On Issue","issued_on":"Issued On","due_date":"Due Date","library_issues":"Library Issues","asset_details":"Asset Details","please_enter_asset_reference_number":"Please Enter Asset Reference Number","return_on":"Return On","book_returns":"Book Returns","academic_details":"Academic Details","asset_no":"Asset No","asset_name":"Asset Name","date-_issue\\/_return":"Date- Issue\\/ Return","return":"Return","department":"Department","id_card_settings":"Id Card Settings","offline_payment_form":"Offline Payment Form","submit":"Submit","offline_payment_instructions":"Offline Payment Instructions","payment_details":"Payment Details","your_request_was_submitted_to_admin":"Your Request Was Submitted To Admin","success_list":"Success List","user_name":"User Name","plan":"Plan","payment_gateway":"Payment Gateway","updated_at":"Updated At","offline_payment_details":"Offline Payment Details","coupon_applied":"Coupon Applied","after_discount":"After Discount","created_at":"Created At","comments":"Comments","approve":"Approve","reject":"Reject","close":"Close","record_was_updated_successfully":"Record Was Updated Successfully","exam_aborted":"Exam Aborted","students_completed_list_class_vice":"Students Completed List Class Vice","students_completed_list":"Students Completed List","course_completed_student_list":"Course Completed Student List","certificate_generation":"Certificate Generation","certificate_for":"Certificate For","improper_sheet_uploaded":"Improper Sheet Uploaded","report":"Report","failed":"Failed","address":"Address","please_select_required_the_details":"Please Select Required The Details","this_record_is_in_use_in_other_modules":"This Record Is In Use In Other Modules","date_of_exam":"Date Of Exam","topic":"Topic","view_all_users":"View All Users","available_timesets":"Available Timesets","library_masters":"Library Masters","author":"Author","publisher":"Publisher","available":"Available","edition":"Edition","library_assets":"Library Assets","eligible_for_fine":"Eligible For Fine","fine_per_day":"Fine Per Day","qualification_details":"Qualification Details","experience":"Experience","months":"Months","create_asset":"Create Asset","asset_type":"Asset Type","is_eligible_for_fine":"Is Eligible For Fine","is_having_max_fine_limit":"Is Having Max Fine Limit","maximum_fine_amount":"Maximum Fine Amount","maximum_issuable":"Maximum Issuable","maximum_days_to_return":"Maximum Days To Return","maximum_advanced_reservations":"Maximum Advanced Reservations","edit_asset":"Edit Asset","issuable":"Issuable","days_to_return":"Days To Return","create_master_asset":"Create Master Asset","asset_belongs_to_subject":"Asset Belongs To Subject","isbn_number":"Isbn Number","actual_price":"Actual Price","chargible_price_if_lost":"Chargible Price If Lost","create_authors":"Create Authors","author_name":"Author Name","create_publisher":"Create Publisher","assets_publishers":"Assets Publishers","publisher_name":"Publisher Name","librarian":"Librarian","back":"Back","collections":"Collections","masters":"Masters","damaged":"Damaged","lost":"Lost","generate_collection":"Generate Collection","series_prefix":"Series Prefix","generate":"Generate","maximum_issues_student":"Maximum Issues Student","maximum_issues_staff":"Maximum Issues Staff","maximum_days_to_return_student":"Maximum Days To Return Student","maximum_days_to_return_staff":"Maximum Days To Return Staff","library_series_prefix":"Library Series Prefix","library_series_number_length":"Library Series Number Length","topper_percentage":"Topper Percentage","barcode":"Barcode","edit_master_asset":"Edit Master Asset","your_not_assigned_to_any_class":"Your Not Assigned To Any Class","edit_author":"Edit Author","course_completed_students_list_class_vice":"Course Completed Students List Class Vice","edit_academic":"Edit Academic","edit_course":"Edit Course","reference_no_":"Reference No.","eligiblity":"Eligiblity","issue":"Issue","asset_issued_successfully":"Asset Issued Successfully","on_issue":"On Issue","edit_subject":"Edit Subject","subjects_listtt":"Subjects Listtt","edit_topic":"Edit Topic","upload_question":"Upload Question","supported_formats_are":"Supported Formats Are","difficulty_level":"Difficulty Level","hint":"Hint","explanation":"Explanation","time_to_spend":"Time To Spend","in_seconds":"In Seconds","answer_number":"Answer Number","total_correct_answers":"Total Correct Answers","total_blank_answers":"Total Blank Answers","left_title":"Left Title","right_title":"Right Title","left_option":"Left Option","add_exam_series":"Add Exam Series","series_title":"Series Title","please_upload_valid_image_type":"Please, Upload Valid Image Type","language":"Language","default_language":"Default Language","students_detained_list":"Students Detained List","student_book_return":"Student Book Return","staff_book_return":"Staff Book Return","master_setup":"Master Setup","update_strings":"Update Strings","disable":"Disable","enable":"Enable","set_default":"Set Default","latest_students":"Latest Students","latest_staff":"Latest Staff","recent_online_payments":"Recent Online Payments","recent_offline_payments":"Recent Offline Payments","recent_quiz_takers":"Recent Quiz Takers","students_list_class_wise":"Students List Class Wise","course_completed_students":"Course Completed Students","detained_students_list_class_wise":"Detained Students List Class Wise","home_page":"Home Page","lms_contents":"Lms Contents","students_certificates":"Students Certificates","student_certificate":"Student Certificate","no_data_available_in_table":"No Data Available In Table","show":"Show","entries":"Entries","showing":"Showing","certificates_settings":"Certificates Settings","master_setup_dashboard":"Master Setup Dashboard","total_semesters":"Total Semesters","staff_inactive_list":"Staff Inactive List","update_master_setup":"Update Master Setup","please_update_master_setup_details":"Please Update Master Setup Details","ok":"Ok","note:":"Note:","if do not update the student admission details, those students are available in all users list.":"If Do Not Update The Student Admission Details, Those Students Are Available In All Users List.","for all users list":"For All Users List","click here":"Click Here","staff_status":"Staff Status","are_you_sure_to_make_user_active":"Are You Sure To Make User Active","are_you_sure_to_make_user_inactive":"Are You Sure To Make User Inactive","library_history":"Library History","printed_on: ":"Printed On: ","logged_out_successfully":"Logged Out Successfully","logged out successfully":"Logged Out Successfully","educate":"Educate","enlightenment":"Enlightenment","enforce":"Enforce","login":"Login","forgot_password":"Forgot Password","number":"Number","today''s_classes":"Today''s Classes","scheduled_exam_marks":"Scheduled Exam Marks","quiz_name":"Quiz Name","note":"Note","if_the_student_admission_details_are_not_updated_those_students_will_be_available_in_all_users_list":"If The Student Admission Details Are Not Updated Those Students Will Be Available In All Users List","for_all_users_list":"For All Users List","click_here":"Click Here","date_time":"Date Time","do_you_want_to_promot_them":"Do You Want To Promot Them","do_you_want_to_graduate_them":"Do You Want To Graduate Them","promote_all":"Promote All","detain_all":"Detain All","no_action":"No Action","url":"Url","sn":"Sn","today_classes":"Today Classes","confirm_password":"Confirm Password","password_and_confirmation_not_matched":"Password And Confirmation Not Matched","change_user_language":"Change User Language","efault_sessions_needed":"Efault Sessions Needed","nd_time":"Nd Time","tart_time":"Tart Time","oogle_client_secret":"Oogle Client Secret","acebook_client_id":"Acebook Client Id","acebook_client_secret":"Acebook Client Secret","acebook_redirect_url":"Acebook Redirect Url","oogle_client_id":"Oogle Client Id","oogle_redirect_url":"Oogle Redirect Url","address_1":"Address 1","emergency_number":"Emergency Number","headquarters":"Headquarters","phone_number":"Phone Number","website":"Website","student_number":"Student Number","course_information":"Course Information","select_language":"Select Language","background_image":"Background Image","urrency_symbol":"Urrency Symbol","urrent_theme":"Urrent Theme","efault_academic_year_id":"Efault Academic Year Id","efault_parent_course_id":"Efault Parent Course Id","ogin_page_title":"Ogin Page Title","site_address":"Site Address","ite_city":"Ite City","ite_country":"Ite Country","site_favicon":"Site Favicon","site_logo":"Site Logo","ite_phone":"Ite Phone","ite_state":"Ite State","ite_title":"Ite Title","ite_zipcode":"Ite Zipcode","ystem_timezone":"Ystem Timezone","default_theme":"Default Theme","green_theme":"Green Theme","red_theme":"Red Theme","file":"File","audio":"Audio","video_url":"Video Url","iframe":"Iframe","audio_url":"Audio Url","add_content":"Add Content","content_type":"Content Type","resource_link":"Resource Link","upload_success":"Upload Success","gateway":"Gateway","printed_on":"Printed On","today":"Today","login_success":"Login Success","lesson_plan_statistics":"Lesson Plan Statistics","assistant_librarian":"Assistant Librarian","educational_supervisor":"Educational Supervisor","id_number":"Id Number","skills":"Skills","view_record_history":"View Record History","add_skills":"Add Skills","skill":"Skill","new":"New","save":"Save","assign_teachers_to_supervisors":"Assign Teachers To Supervisors","add_semester":"Add Semester","semester_start_date":"Semester Start Date","semester_end_date":"Semester End Date","pending_list":"Pending List","educational_level":"Educational Level","user_profile":"User Profile","roll":"Roll","doj":"Doj","father":"Father","mother":"Mother","student_papers_and_achievements":"Student Papers And Achievements","progress_report":"Progress Report","achievements":"Achievements","creator_ip":"Creator Ip","updater_ip":"Updater Ip","creator_username":"Creator Username","updater_username":"Updater Username","religion_name":"Religion Name","master_asset_details":"Master Asset Details","status_details":"Status Details","total_":"Total ","master_asset_name_":"Master Asset Name ","asset_type_":"Asset Type ","total_issued_":"Total Issued ","total_damaged_":"Total Damaged ","publisher_name_":"Publisher Name ","total_lost_":"Total Lost ","edition_":"Edition ","price":"Price","specify_subjects_to_teachers":"Specify Subjects To Teachers","staff_toic_plan":"Staff Toic Plan","teacher_students_attendance":"Teacher Students Attendance","teachers_timetables":"Teachers Timetables","teacher_students_marks":"Teacher Students Marks","current_semester":"Current Semester","current_grade":"Current Grade","current_class":"Current Class","the_first":"The First","recycle_bin":"Recycle Bin","academic_dues":"Academic Dues","educational_supervisors":"Educational Supervisors","logged_users":"Logged Users","exam_categories":"Exam Categories","branches":"Branches","school_branch":"School Branch","select_branch":"Select Branch"}', '2016-08-30 00:41:02', '2018-04-08 04:50:59', '51.39.70.14', NULL, NULL, 1790, 1, 'languages', 1);
INSERT INTO `languages` (`id`, `language`, `slug`, `code`, `is_rtl`, `is_default`, `phrases`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(13, 'العربية', 'alaarby', 'ar', 1, 1, '{"general_conduct":"\\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 \\u0627\\u0644\\u0639\\u0627\\u0645","date_of_application_for_certificate":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","date_of_issue_certificate":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","reason_for_leaving_the_school":"\\u0633\\u0628\\u0628 \\u062a\\u0631\\u0643 \\u0627\\u0644\\u0645\\u062f\\u0631\\u064a\\u0629","any_other_remarks":"\\u0627\\u0649 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u0627\\u062e\\u0631\\u064a","print":"\\u0637\\u0628\\u0627\\u0639\\u0629","date":"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e","name_of_the_pupil":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062a\\u0644\\u0645\\u064a\\u0630","mothers_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0645","nationality":"\\u0627\\u0644\\u062c\\u0646\\u0633\\u064a\\u0629","candidate_belongs_to_schedule_caste_or_schedule_tribe":"Candidate Belongs To Schedule Caste Or Schedule Tribe","date_of_first_admission_in_the_school_with_class":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","date_of_birth_according_to_the_admission_register":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f \\u062d\\u0633\\u0628 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","class_in_which_the_last_studied_with_name":"Class In Which The Last Studied With Name","total_number_no_of_working_days":"\\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a\\u0647","total_number_no_of_days_present":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","select":"\\u0627\\u062e\\u062a\\u0631","academic_operations":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","certificates_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","select_details":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","certificate_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","search":"\\u0628\\u062d\\u062b","image":"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","name":"\\u0627\\u0644\\u0627\\u0633\\u0645","roll_no":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a","admission_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","class":"\\u0627\\u0644\\u0641\\u0635\\u0644","year":"\\u0627\\u0644\\u0633\\u0646\\u0629","semester":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","are_you_sure":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f","yes":"\\u0646\\u0639\\u0645","delete_it":"\\u0642\\u0645 \\u0628\\u0627\\u0644\\u062d\\u0630\\u0641","no":"\\u0644\\u0627","cancel_please":"\\u0631\\u062c\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621","cancelled":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621","your_record_is_safe":"\\u0633\\u062c\\u0644\\u0643 \\u0627\\u0645\\u0646","search_student":"\\u0627\\u0644\\u0628\\u062d\\u062b \\u0641\\u0649 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","latest_users":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","was_joined_as":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u062a\\u062d\\u0627\\u0642 \\u0643\\u0640\\u0640","see_more":"\\u0627\\u0642\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f","my_profile":"\\u0645\\u0644\\u0641\\u064a \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a","change_password":"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","feedback":"\\u0627\\u0644\\u0623\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","notifications":"\\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a","messages":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a","languages":"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0644\\u063a\\u0629","logout":"\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c","dashboard":"\\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","users":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","attendance":"\\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0648\\u0627\\u0644\\u063a\\u064a\\u0627\\u0628","certificates":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","transfers":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","timetable":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","offline_exams_":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","class_attendance_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062d\\u0636\\u0648\\u0631 \\u0641\\u0635\\u0644","class_marks_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0641\\u0635\\u0644","exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","categories":"\\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645","question_bank":"\\u0628\\u0646\\u0643 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","quiz":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","exam_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","instructions":"\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a","coupons":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0633\\u0627\\u0626\\u0645","list":"\\u0642\\u0627\\u0626\\u0645\\u0629","add":"\\u0625\\u0636\\u0627\\u0641\\u0629","contents":" \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","master_settings":"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","settings":"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645","religions_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u062f\\u064a\\u0627\\u0646","categories_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","academics_master":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","courses_master":" \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","course_subjects":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","certificate_templates":"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","email_templates":"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0627\\u064a\\u0645\\u064a\\u0644\\u0627\\u062a","payment_reports":"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","online_payments":"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a ","offline_payments":"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","export":"\\u062a\\u0635\\u062f\\u064a\\u0631","certificate_issues_histroy":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629 \\u0633\\u0627\\u0628\\u0642\\u0627","select_user_to_view_details":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","purpose":"\\u0627\\u0644\\u063a\\u0631\\u0636","please_wait":"\\u0646\\u0631\\u062c\\u0648 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631","id_cards":"\\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","lets_start":"\\u0644\\u0646\\u0628\\u062f\\u0623","bonafide_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 ","user_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","success":"\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0646\\u0627\\u062c\\u062d\\u0629","pending":"\\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631","total":"\\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a","overall_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","payments_reports_in":"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0644\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","demanding_quizzes":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u0637\\u0644\\u0628\\u0647\\u0627","demanding":"\\u062a\\u062d\\u062a \\u0627\\u0644\\u0637\\u0644\\u0628","quizzes":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","view_all":"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0643\\u0644","academics":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","library":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","courses":"\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","quizzes_usage":"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","paid_quizzes_usage":"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0629","academic_operations_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","offline_exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","orientation":"\\u0627\\u0644\\u062a\\u0648\\u062c\\u064a\\u0647","update":"\\u062a\\u062d\\u062f\\u064a\\u062b","create":"\\u0625\\u0636\\u0627\\u0641\\u0629","key":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a","setting_key":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a","tool_tip":"\\u0646\\u0628\\u0630\\u0629 \\u0645\\u062e\\u062a\\u0635\\u0631\\u0629","type":"\\u0627\\u0644\\u0646\\u0648\\u0639","total_options":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0627\\u062a","description":"\\u0627\\u0644\\u0634\\u0631\\u062d","option_value":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631","option_text":"\\u0646\\u0635 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631","make_default":"\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a","record_updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","zoomfactor":"\\u0639\\u0627\\u0645\\u0644 \\u0627\\u0644\\u062a\\u0643\\u0628\\u064a\\u0631","margin":"\\u0627\\u0644\\u0647\\u0627\\u0645\\u0634","format":"\\u0627\\u0644\\u062a\\u0646\\u0633\\u064a\\u0642","printable_file":"\\u0645\\u0644\\u0641 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","id_card_generation":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u0648\\u064a\\u0629","print_header":"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0631\\u0627\\u0633 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629","print_footer":"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0627\\u0633\\u0641\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629","print_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","print_reference_number":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","module":"\\u0627\\u0644\\u0648\\u062d\\u062f\\u0629","action":"\\u0627\\u0644\\u0625\\u062c\\u0631\\u0627\\u0621 ","edit":"\\u062a\\u0639\\u062f\\u064a\\u0644","view":"\\u0639\\u0631\\u0636","logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631","content":"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a","left_sign_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631","right_sign_image":"\\u0635\\u0648\\u0631\\u0629 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646","left_sign_name":"\\u0627\\u0633\\u0645 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631 ","right_sign_name":"\\u0627\\u0633\\u0645 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646","left_sign_designation":"\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631 ","right_sign_designation":"\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646","watermark_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629","bottom_middle_logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641 \\u0648\\u0641\\u064a \\u0627\\u0644\\u0627\\u0633\\u0641\\u0644","add_setting":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0636\\u0628\\u0637","title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","introduction":"\\u0627\\u0644\\u0645\\u0642\\u062f\\u0645\\u0629","description_of_the_topic":"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0633","record_added_successfully":"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","no_settings_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","right_designation":"\\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u064a\\u0645\\u064a\\u0646","exams_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a ","exam-series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","quiz_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","category":"\\u0627\\u0644\\u0642\\u0633\\u0645","you_will_not_be_able_to_recover_this_record":"\\u0644\\u0646 \\u062a\\u0633\\u062a\\u0637\\u064a\\u0639 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u062c\\u0644 ","deleted":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641","sorry":"\\u0639\\u0630\\u0631\\u0627","cannot_delete_this_record_as":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0644\\u0627\\u0646\\u0647 \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0641\\u0631\\u0639\\u064a\\u0629 \\u0645\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u064a\\u0629 \\u064a\\u0631\\u062c\\u064a \\u0645\\u0633\\u062d\\u0647\\u0627 \\u0627\\u0648\\u0644\\u0627","your_record_has_been_deleted":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d","delete":"\\u062d\\u0630\\u0641","create_series":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0633\\u0644\\u0633\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629","duration":"\\u0627\\u0644\\u0641\\u062a\\u0631\\u0629","is_paid":"\\u0645\\u062f\\u0641\\u0648\\u0639","total_marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0643\\u0644\\u064a\\u0629","update_questions":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0623\\u0633\\u0626\\u0644\\u0629","free":"\\u0645\\u062c\\u0627\\u0646\\u064a","paid":"\\u0645\\u062f\\u0641\\u0648\\u0639","create_quiz":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","quiz_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","this_field_is_required":"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u062d\\u0642\\u0644 \\u0645\\u0637\\u0644\\u0648\\u0628","the_text_is_too_short":"\\u0627\\u0644\\u0646\\u0635 \\u0642\\u0635\\u064a\\u0631 \\u062c\\u062f\\u0627","the_text_is_too_long":"\\u0627\\u0644\\u0646\\u0635 \\u0637\\u0648\\u064a\\u0644 \\u062c\\u062f\\u0627","subject":"\\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","select_subject":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","online":"\\u00a0\\u062d\\u0642\\u064a\\u0642\\u064a","offline":"\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","quiz_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","select_type":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0646\\u0648\\u0639","offline_category":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","enter_value_in_minutes":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 \\u0628\\u0627\\u0644\\u062f\\u0642\\u0627\\u0626\\u0642","please_enter_valid_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0635\\u062d\\u064a\\u062d","it_will_be_updated_by_adding_the_questions":"It Will Be Updated By Adding The Questions","pass_percentage":"\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d","negative_mark":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0628","instructions_page":"\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a","start_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629","end_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629","validity":"\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629","validity_in_days":"\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0627\\u064a\\u0627\\u0645","cost":"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629","specific_classes":"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","applicable_to_specific":"\\u064a\\u0646\\u0637\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0645\\u062d\\u062f\\u062f","academic_year":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","course":"\\u0627\\u0644\\u0641\\u0635\\u0644","already_item_available":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0645\\u062a\\u0627\\u062d \\u0641\\u0639\\u0644\\u064a\\u0627","item_removed_successfully":"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d","update_questions_for":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0644\\u0640\\u0640","subjects":"\\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","difficulty":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0635\\u0639\\u0648\\u0628\\u0629","easy":"\\u0633\\u0647\\u0644","medium":"\\u0645\\u062a\\u0648\\u0633\\u0637","hard":"\\u0635\\u0639\\u0628","question_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","single_answer":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u062c\\u0627\\u0628\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0645\\u0646 \\u0645\\u062a\\u0639\\u062f\\u062f","multi_answer":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u062c\\u0627\\u0628\\u0629 \\u0645\\u0646 \\u0645\\u062a\\u0639\\u062f\\u062f","fill_in_the_blanks":"\\u0627\\u0645\\u0644\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a","match_the_following":"\\u0648\\u0635\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0634\\u0627\\u0628\\u0647\\u0627\\u062a","paragraph":"\\u0627\\u0644\\u0641\\u0642\\u0631\\u0629","video":"\\u0645\\u0644\\u0641 \\u0641\\u064a\\u062f\\u064a\\u0648","search_term":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0628\\u062d\\u062b","enter_search_term":"\\u0627\\u062f\\u062e\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0628\\u062d\\u062b","question":"\\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629","saved_questions":"\\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629","remove_all":"\\u062d\\u0630\\u0641 \\u0627\\u0644\\u0643\\u0644","edit_quiz":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","right_side_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u062c\\u0647\\u0629 \\u064a\\u0645\\u064a\\u0646","right_side_sign":"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u062c\\u0647\\u0629 \\u064a\\u0645\\u064a\\u0646","users_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","owners":"\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","admins":"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646","students":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","staff":"\\u0645\\u0639\\u0644\\u0645","librarians":"\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","assistant_librarians":"\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","parents":"\\u0623\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0645\\u0648\\u0631","all_users":"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","create_user":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","update_offline_exams_marks":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","import_excel":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0645\\u0644\\u0641 \\u0627\\u0643\\u0633\\u0644","exam":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","year_and_semester":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","maximum_marks":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","update_marks":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","select_offline_exams_details":"\\u0627\\u062e\\u062a\\u0631 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","offline_exmas":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","selection_details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 ","branch":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","get_details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","offline_exam_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","marks_for":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0644\\u0640\\u0640","photo":"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","marks_obtained":"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u0635\\u0644 \\u0639\\u0644\\u064a\\u0647\\u0627 ","exam_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","pass":"\\u0646\\u0627\\u062c\\u062d","fail":"\\u0631\\u0627\\u0633\\u0628","reference_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639","no_students_available":"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0637\\u0644\\u0627\\u0628 ","right_side_designation":"\\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646","edit_settings":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a","offline_exams_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","offline_quiz_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","category_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0642\\u0633\\u0645","add_category":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u0645","invalid_input":"\\u0645\\u062f\\u062e\\u0644 \\u062e\\u0627\\u0637\\u064a","edit_category":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0633\\u0645","offline_exmas_quiz_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","offline_exmas_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","add_user":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","staff_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","job_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629","email":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","edit_details":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 ","teacher":"\\u0645\\u0639\\u0644\\u0645","staff_profile":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 ","staff_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","profile":"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a","general_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","personal_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0634\\u062e\\u0635\\u064a\\u0629","contact_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644","date_of_join":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0644\\u062a\\u062d\\u0627\\u0642 ","qualification":"\\u0627\\u0644\\u0645\\u0624\\u0647\\u0644","experience_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646 \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629","other_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u062e\\u0631\\u064a","first_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0644","middle_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0633\\u0637","last_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631","date_of_birth":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f","gender":"\\u0627\\u0644\\u0646\\u0648\\u0639","male":"\\u0630\\u0643\\u0631","female":"\\u0627\\u0646\\u062b\\u064a","blood_group":"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645","fathers_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0628","mother_tongue":"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0627\\u0645","address_lane1":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0637\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644","address_lane2":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0637\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a","city":"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629","state":"\\u0627\\u0644\\u062d\\u064a","country":"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629","zipcode":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629","mobile":"\\u0627\\u0644\\u062c\\u0648\\u0627\\u0644","home_phone":"\\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644","mother_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0645","left_side_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631","show_left_side_name":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631","show_left_side_designation":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 ","show_left_side_image":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631","show_middle_name":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641","show_left_side_sign":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 ","total_number_no_of_present_days":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","show_middle_designation":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641 ","show_middle_sign":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641","show_right_side_name":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646","show_right_side_designation":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 ","games_played_or_extra-_curricular_activities":"\\u0627\\u0644\\u0627\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0629","show_right_side_sign":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 ","water_mark_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629","show_watermark":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629","name_of_student":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","father_guardian_name":"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 ","candidate_caste":"\\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645","date_of_admission_with_class":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0645\\u0639 \\u0627\\u0644\\u0641\\u0635\\u0644","last_class_studied":"\\u0627\\u062e\\u0631 \\u0641\\u0635\\u0644 \\u062a\\u0645 \\u062f\\u0631\\u0627\\u0633\\u062a\\u0629","last_taken_exam_and_result":"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u0645 \\u062f\\u062e\\u0648\\u0644\\u0629 \\u0648\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629","whether_failed_if_once_twice_in_the_same_class":"Whether Failed If Once Twice In The Same Class","promotion_class":"\\u062a\\u0631\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644","total_working_days":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644","total_present_days":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","ncc_boy_scout_girls_guide":"Ncc Boy Scout Girls Guide","games_played_or_extra_curricular_activities":"\\u0627\\u0644\\u0627\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0629","date_of_apply":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645","date_of_issue":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","reason":"\\u0627\\u0644\\u0633\\u0628\\u0628","remarks":"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a","import_marks":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","download_template":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","upload":"\\u0631\\u0641\\u0639 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a","information_helper_for_excel_data":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062a\\u0633\\u0627\\u0639\\u062f\\u0643 \\u0644\\u0641\\u0647\\u0645 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0627\\u0643\\u0633\\u0644","file_type_not_allowed":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u063a\\u064a\\u0631 \\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0647","marks_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","total_class":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u062d\\u0635\\u0635","present":"\\u062d\\u0627\\u0636\\u0631","absent":"\\u063a\\u0627\\u064a\\u0628 ","leave":"\\u063a\\u0627\\u062f\\u0631","no_data_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","student":"\\u0637\\u0627\\u0644\\u0628","year-semester":"\\u0627\\u0644\\u0633\\u0646\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","admission_details":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","correct":"\\u0635\\u062d\\u064a\\u062d","wrong":"\\u062e\\u0637\\u0623","not_answered":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","overall_performance":"\\u0627\\u0644\\u0627\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0639\\u0627\\u0645","performance":"\\u0627\\u0644\\u0627\\u062f\\u0627\\u0621","best_performance_in_all_quizzes":"\\u0627\\u0641\\u0636\\u0644 \\u0627\\u062f\\u0627\\u0621 \\u0641\\u0649 \\u0643\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","student_users":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 ","details_of":"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640","reports":"\\u0627\\u0644\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631","exam_history":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","view_details":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","by_exam":"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0628\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","by_subject":"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0628\\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","subscriptions":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","certificate_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","bonafide_certificates_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificates_fields":"\\u062d\\u0642\\u0648\\u0644  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificates_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","transfer_certificates_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","id_cards_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","id_cards_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","transfer_certificates_content":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","transfer_certificates_cont":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","transfer_certificates_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","bonafide_certificates_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificate_content":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificate_content":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","bonafide_certificatet_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificatet_con":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificatet_cont":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificatet_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificate_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificate_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificate_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","id_card_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","id_card_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","question_subjects":"\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","import_questions":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","add_subject":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0627\\u062f\\u0629","code":"\\u0627\\u0644\\u0643\\u0648\\u062f","view_questions":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","bonafide_certificate_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificate_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","total_exams":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","total_questions":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","update_quizzes":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0627\\u062a \\u0644\\u0644\\u0633\\u0644\\u0633\\u0629","bonafide_certificate_seting":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide__contents":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","mastersettings_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","religions":"\\u0627\\u0644\\u0623\\u062f\\u064a\\u0627\\u0646","start_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629","end_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629","default_sessions_needed":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629 ","iamge":"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","student_profile":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","students_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","parent_login":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0623\\u0645\\u0631","info":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a","present_academic_details":"\\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","current_academic_year":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","current_branch":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","current_course":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","previous_educational_details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","highest_qualification":"\\u0627\\u0644\\u0645\\u0624\\u0647\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u0644\\u064a\\u0627","percentage":"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 ","year_passed":"\\u062a\\u0645 \\u0627\\u062c\\u062a\\u064a\\u0627\\u0632 \\u0627\\u0644\\u0633\\u0646\\u0647","previous_institute_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","institute_address":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","religion":"\\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0629","guardian_name":"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","guardian_phone":"\\u0647\\u0627\\u062a\\u0641 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","relationship_with_guardian":"\\u0635\\u0644\\u0647 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0628\\u0629 \\u0628\\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631","guardian_email":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","parent_login_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 ","parent_name":"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","parent_user_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631","parent_email":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631","password":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","staff_users":"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","lesson_plans":"\\u062e\\u0637\\u0637 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633","subject_preferences":"\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","student_attendance":"\\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","payment_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","payment_monthly_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0634\\u0647\\u0631\\u064a\\u0629","particulars":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","general_instructions":"\\u0627\\u0631\\u0627\\u0634\\u0627\\u062f\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","attendance_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","from":"\\u0645\\u0646","to":"\\u0625\\u0644\\u0649","lesson_plans_for":"\\u062e\\u0637\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0633 \\u0644\\u0640\\u0640","no_topics_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u062f\\u0631\\u0648\\u0633 \\u0645\\u062a\\u0627\\u062d\\u0629","transfer_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0646\\u0642\\u0644","edit_user":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","username":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","please_enter_valid_email":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","role":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","select_role":"\\u0627\\u062e\\u062a\\u0631 \\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","phone":"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","please_enter_10-15_digit_mobile_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0645\\u0646 \\u0661\\u0660-\\u0661\\u0665 \\u0631\\u0642\\u0645 \\u0644\\u0644\\u062c\\u0648\\u0627\\u0644","please_enter_valid_phone_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0633\\u0644\\u064a\\u0645","billing_address":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","please_enter_your_address":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0643","exam_analysis_by_attempts":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","attempts":"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a","of":"\\u0645\\u0646","mins":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u062f\\u0646\\u064a","exam_attempts_and_score":"\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0648\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629","quiz_attempts":"\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","result":"\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629","view_answers":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a","generate_certificate":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0634\\u0647\\u0627\\u062f\\u0629","answers":"\\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a","analysis":"\\u062a\\u062d\\u0644\\u064a\\u0644","time_limit":"\\u062d\\u062f\\u0648\\u062f \\u0627\\u0644\\u0648\\u0642\\u062a","time_taken":"\\u0648\\u0642\\u062a \\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","previous":"\\u0627\\u0644\\u0633\\u0627\\u0628\\u0642","next":"\\u0627\\u0644\\u062a\\u0627\\u0644\\u064a","timetable_for":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640","sun":"\\u0627\\u0644\\u0623\\u062d\\u062f","mon":"\\u0627\\u0644\\u0627\\u062b\\u0646\\u064a\\u0646","tue":"\\u0627\\u0644\\u062b\\u0644\\u0627\\u062b\\u0627\\u0621","wed":"\\u0627\\u0644\\u0627\\u0631\\u0628\\u0639\\u0627\\u0621","thu":"\\u0627\\u0644\\u062e\\u0645\\u064a\\u0633","fri":"\\u0627\\u0644\\u062c\\u0645\\u0639\\u0629","sat":"\\u0627\\u0644\\u0633\\u0628\\u062a","timetable_for_":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640","leisure":"\\u0631\\u0627\\u062d\\u0629","lab":"\\u0627\\u0644\\u0645\\u062e\\u062a\\u0628\\u0631","completed_topics_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0645\\u0644\\u0629","no_list_available":"\\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0627\\u062d\\u0629","select_other_class":"\\u0627\\u062e\\u062a\\u0631 \\u0641\\u0635\\u0644 \\u0627\\u062e\\u0631","please_select_the_details":"\\u0631\\u062c\\u0627\\u0621\\u0627 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","preferred_subjects":"\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","elective":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","summary":"\\u0627\\u0644\\u0645\\u0644\\u062e\\u0635","labs":"\\u0627\\u0644\\u0645\\u062e\\u062a\\u0628\\u0631\\u0627\\u062a","electives":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","subjects_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","records_updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","students_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","view_students":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","overall_subject_wise_analysis":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","marks_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","no_data_available_with_the_selection":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a","leasure":"\\u0631\\u0627\\u062d\\u0629","break":"\\u0627\\u0633\\u062a\\u0631\\u0627\\u062d\\u0629","printed_on:_":"\\u0637\\u0628\\u0639 \\u0639\\u0644\\u0649:","attendance_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","view_summary":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0644\\u062e\\u0635","attendance_summary":"\\u0645\\u0644\\u062e\\u0635 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","total_classes":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635","its_okay":"\\u0645\\u0648\\u0627\\u0641\\u0642","topics_completed":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633","transfer_list":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","semister":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","current_year":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","current_semister":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","admin":"\\u0645\\u0634\\u0631\\u0641","ooops__":"\\u062e\\u0637\\u0623 \\u0640\\u0640\\u0640\\u0640\\u0640!","please_select_any_users":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0649 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","emergency_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0648\\u0627\\u0631\\u0626","no_users_available":"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 ","transfers_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","modules_helper":"\\u0645\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0648\\u062d\\u062f\\u0629","help_link_text":"\\u0646\\u0635 \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629","status":"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629","add_helper":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u0627\\u0639\\u062f","help_me":"\\u0633\\u0627\\u0639\\u062f\\u0646\\u064a","is_enabled":"\\u0647\\u0644 \\u0645\\u062a\\u0627\\u062d","keyboard":"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d","backdrop":"\\u062e\\u0644\\u0641\\u064a\\u0629","steps":"\\u0627\\u0644\\u062e\\u0637\\u0648\\u0627\\u062a","element_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631","placement":"\\u062a\\u062d\\u062f\\u064a\\u062f \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a","sort_order":"\\u0627\\u0645\\u0631 \\u0627\\u0644\\u062a\\u0631\\u062a\\u064a\\u0628","add_to_list":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629","element":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631","student_promotions":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","cancel":"\\u0627\\u0644\\u063a\\u0627\\u0621","confirm":"\\u062a\\u0623\\u0643\\u064a\\u062f","is_completed":"\\u0647\\u0644 \\u062a\\u0648\\u062f \\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0641\\u0635\\u0644 \\u0627\\u0648 \\u0635\\u0641 \\u0627\\u062e\\u0631\\u061f","transfer_to_course":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0635\\u0641 \\u062f\\u0631\\u0627\\u0633\\u064a","transfer_to_year":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","transfer_to_semister":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","promoted":"\\u0646\\u0642\\u0644","detained":"\\u0627\\u064a\\u0642\\u0627\\u0641","course_completed":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","transfer":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","create_category":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","enter_category_name":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","record_added_successfully_with_password_":"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d \\u0645\\u0639 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","timings_set":"\\u0636\\u0628\\u0637 \\u0627\\u0648\\u0642\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0635","create_timetable":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","timing_sets":"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0635","timetable_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","prepare_timetable":"\\u0627\\u0639\\u062f\\u0627\\u062f \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","day":"\\u0627\\u0644\\u064a\\u0648\\u0645","remove":"\\u062d\\u0630\\u0641","print_timetable":"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","enter_notes":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a","this_will_be_displayed_bottom_of_the_timetable":"\\u0633\\u064a\\u0638\\u0647\\u0631 \\u0630\\u0644\\u0643 \\u0627\\u0633\\u0641\\u0644 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","schedule_table":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","attendance_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","subjects_reports":"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","view_analysis":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644","view_report":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0642\\u0631\\u064a\\u0631","my_bookmarks":"\\u0645\\u0641\\u0636\\u0644\\u0627\\u062a\\u064a","scheduled_exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u062f\\u0648\\u0644\\u0629","by_subjcet":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0628\\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","history":"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","lms":"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","quizzes_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","student_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","payments":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","viewww":"\\u0639\\u0631\\u0636","all_exams":"\\u0643\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","dueration":"\\u0627\\u0644\\u0645\\u062f\\u0629","take_exam":"\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","select_template":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","please_read_the_instructions_carefully":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u0642\\u0631\\u0627 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629","exam_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","please_accept_terms_and_conditions":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0627\\u062d\\u0643\\u0627\\u0645","start_exam":"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","enable_back_side":"\\u062a\\u0645\\u0643\\u064a\\u0646 \\u0627\\u0644\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","days":"\\u0627\\u0644\\u0627\\u064a\\u0627\\u0645","top_logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0627\\u062c\\u062f \\u0628\\u0627\\u0644\\u0627\\u0639\\u0644\\u064a","account_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628","quiz_and_exam_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","lms_categories":"\\u0627\\u0642\\u0633\\u0627\\u0645 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","academic_years":"\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","courses_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_courses":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 ","academic_courses":"\\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","course_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","record_deleted_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d","page_not_found":"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\\u0629","you_have_no_permission_to_access":"\\u0644\\u064a\\u0633 \\u0644\\u062f\\u064a\\u0643 \\u0635\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644","no_topics_availble":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u062f\\u0631\\u0648\\u0633 \\u0645\\u062a\\u0627\\u062d\\u0629","topics":"\\u0627\\u0644\\u062f\\u0631\\u0648\\u0633","import_topics":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u062f\\u0631\\u0648\\u0633","add_course":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","subject_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","subject_topics":"\\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_subject_to_course":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","allocate_staff_to_course":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0641\\u0635\\u0644","topics_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633","import":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f","parent":"\\u0648\\u0644\\u064a \\u0623\\u0645\\u0631","front_first_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","allocate_staff_to_subject":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_staff_to_courses":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","add_or_edit_course_subjects":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0648 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0648\\u0627\\u062f \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_staff":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","subject_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","subject_code":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","pass_marks":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d","is_lab":"\\u0647\\u0644 \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0645\\u062e\\u062a\\u0628\\u0631\\u061f","is_elective":"\\u0625\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u061f","view_topics":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633","import_users":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","front_second_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_third_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fourth_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fifth_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_sixth_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_seventh_item":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_total_fields":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u062d\\u0642\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\\u0629","back_first_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","front_first_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_second_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_third_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fourth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fifth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_sixth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_seventh_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","coupon_codes":"\\u0627\\u0643\\u0648\\u0627\\u062f \\u0627\\u0644\\u0642\\u0633\\u0627\\u0626\\u0645","discount":"\\u0627\\u0644\\u062e\\u0635\\u0645","minimum_bill":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","maximum_discount":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u062e\\u0635\\u0645","limit":"\\u0627\\u0644\\u062d\\u062f","back_first_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_second_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_second_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","time_spent_on_correct_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629","time_spent_on_wrong_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629","overall_marks_analysis":"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0634\\u0627\\u0645\\u0644 \\u0644\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","time":"\\u0627\\u0644\\u0648\\u0642\\u062a","spent_on_correct":"\\u0645\\u0627 \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d","spent_on_wrong":"\\u0645\\u0627 \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626","spent_time":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u0645\\u0636\\u064a","total_time":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0643\\u0644\\u064a","time_is_shown_in_seconds":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0645\\u0639\\u0631\\u0648\\u0636 \\u0628\\u0627\\u0644\\u062b\\u0648\\u0627\\u0646\\u064a","back_third_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_third_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_fourth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_fourth_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","clear_answer":"\\u0645\\u0633\\u062d \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","bookmarks":"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629","exam_duration":"\\u0645\\u062f\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","hints":"\\u0627\\u0644\\u062a\\u0644\\u0645\\u064a\\u062d\\u0627\\u062a","unbookmark_this_question":"\\u0627\\u0632\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","bookmark_this_question":"\\u0627\\u0636\\u0641 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","mark_for_review":"\\u0636\\u0639 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629","finish":"\\u0627\\u0646\\u0647\\u0627\\u0621","warning":"\\u062a\\u062d\\u0630\\u064a\\u0631","answered":"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","marked":"\\u062a\\u0645\\u062a \\u0648\\u0636\\u0639 \\u0639\\u0644\\u0627\\u0645\\u0629","not_visited":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0632\\u064a\\u0627\\u0631\\u062a\\u0647","consumed_time":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u0644\\u0643","result_for":"\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629 \\u0644\\u0640\\u0640","score":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629","view_key":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a ","allocate_subjects":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","no_staff_alotted":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062e\\u0635\\u064a\\u0635 \\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","no_subjects_selected":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","id":"\\u0627\\u0644\\u0631\\u0642\\u0645","course_name":"\\u0627\\u0644\\u0627\\u0633\\u0645","grade_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629","edit_semisters":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","years":"\\u0633\\u0646\\u0629","add_religion":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062f\\u064a\\u0646","owner":"\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","total_items":"\\u0627\\u0644\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0644\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631","update_lms":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","examseries":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","create_coupon":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u064a\\u0645\\u0629","coupon_code":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","value":"\\u0645\\u0628\\u0644\\u063a","percent":"\\u0646\\u0633\\u0628\\u0629","discount_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062e\\u0635\\u0645","discount_value":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0645","enter_value":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629","enter_minimum_bill":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u062f\\u0646\\u064a \\u0644\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","discount_maximum_amount":"\\u062e\\u0635\\u0645 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u0645\\u0628\\u0644\\u063a","enter_maximum_amount":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u0645\\u0628\\u0644\\u063a","valid_from":"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0645\\u0646","valid_to":"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0627\\u0644\\u0649","usage_limit":"\\u062d\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645","enter_usage_limit_per_user":"\\u0627\\u062f\\u062e\\u0644 \\u062d\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0644\\u0643\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","from_email":"\\u0645\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","from_name":"\\u0645\\u0646 \\u0627\\u0644\\u0627\\u0633\\u0645","export_payments_report":"\\u062a\\u0635\\u062f\\u064a\\u0631 \\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","export_payment_records":"\\u062a\\u0635\\u062f\\u064a\\u0631 \\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","download_excel":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0627\\u0643\\u0633\\u0644","all_records":"\\u0643\\u0644 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a","from_date":"\\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e","to_date":"\\u0627\\u0644\\u0649 \\u062a\\u0627\\u0631\\u064a\\u062e","payment_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0641\\u0639","all":"\\u0627\\u0644\\u0643\\u0644","payment_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639","select_parent":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0627\\u0639\\u0644\\u064a","course_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","course_code":"\\u0627\\u0644\\u0643\\u0648\\u062f","duration_in_years":"\\u0627\\u0644\\u0645\\u062f\\u0629 \\u0628\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a","grade_system":"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","is_having_semisters":"\\u0647\\u0644 \\u064a\\u0648\\u062c\\u062f \\u0641\\u0635\\u0648\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","is_having_electives":"\\u0647\\u0644 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","add_subjects_to_course":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","courses_list":"\\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","load":"\\u062a\\u062d\\u0645\\u064a\\u0644","add_subject_to_course":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","number_of_sessions_needed":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629","template_1_logo":"\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 \\u0661 ","institute_title":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","create_set":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","academic_operatons":"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","period_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0629","enter_period_name":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0629","start_time_cannot_be_greater_than_or_equal_to_end_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0648 \\u064a\\u0633\\u0627\\u0648\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629","start_time_must_be_greater_to_previous_end_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u064a\\u062c\\u0628 \\u0627\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628 \\u0631\\u0645\\u0646 \\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642","time_spent_correct_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0642\\u0636\\u064a \\u0641\\u064a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u064a\\u0629","time_spent_wrong_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0642\\u0636\\u064a \\u0641\\u064a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629","subject_wise_analysis":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","in":"\\u0641\\u0649","attendance_for":"\\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0644\\u0640\\u0640\\u0640","notes":"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a","create_message":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0631\\u0633\\u0627\\u0644\\u0629","inbox":"\\u0635\\u0646\\u062f\\u0648\\u0642 \\u0627\\u0644\\u0648\\u0627\\u0631\\u062f","compose":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629","send_message":"\\u0627\\u0631\\u0633\\u0627\\u0644","questions":"\\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","fill_the_blanks":"\\u0627\\u0645\\u0644\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a","first_admission_in_the_school":"\\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","date_of_first_admission_in_the_school":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","first_admission_class_in_the_school_with_name":"\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0645\\u0639 \\u0627\\u0644\\u0627\\u0633\\u0645","completed":"\\u0627\\u0646\\u062a\\u0647\\u062a","internal_marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629","external_marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629","please_enter_valid_internal_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 ","please_enter_valid_external_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 ","please_enter_valid_maximum_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0642\\u0635\\u0648\\u064a \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 ","please_enter_valid_pass_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645","pass_marks_cannot_be_greater_than_maximum_marks":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0642\\u0635\\u0648\\u064a","add_topic":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062f\\u0631\\u0633","topic_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0633","category_deleted_successfully":"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0642\\u0633\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d","add_academic":"\\u0627\\u0636\\u0627\\u0641\\u0629 ","academic_title":"\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","show_in_list":"\\u0627\\u0644\\u0639\\u0631\\u0636 \\u0641\\u0649 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629","payu":"Payu","paypal":"\\u0628\\u0627\\u064a \\u0628\\u0627\\u0644","messaging":"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644","offline_payment":"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","push_notifications":"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a","certificate":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","show_foreign_key_constraint":"Show Foreign Key Constraint","facebook_login":"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u062d\\u0633\\u0627\\u0628 \\u0627\\u0644\\u0641\\u064a\\u0633 \\u0628\\u0648\\u0643","google_plus_login":"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u062d\\u0633\\u0627\\u0628 \\u062c\\u0648\\u062c\\u0644 \\u0628\\u0644\\u0633","old_password":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u0642\\u062f\\u064a\\u0645\\u0629","the_password_is_too_short":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u062c\\u062f\\u0627","new_password":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629","retype_password":"\\u0627\\u0639\\u062f \\u0627\\u062f\\u062e\\u0627\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","password_and_confirm_password_does_not_match":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0648\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0637\\u0627\\u0628\\u0642\\u0627\\u0646","posted_on":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u062f\\u062e\\u0627\\u0644 \\u0641\\u0649 ","send_messageeee":"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644","please_select_the_recipients":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0631\\u0633\\u0644 \\u0627\\u0644\\u064a\\u0647\\u0645","import_subjects":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","children":"\\u0627\\u0644\\u0627\\u0628\\u0646\\u0627\\u0621","premium":"Premium","subscriptions_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","plan_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062e\\u0637\\u0629","paid_from":"\\u0645\\u062f\\u0641\\u0648\\u0639 \\u0645\\u0646","datetime":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0648\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e","it_includes":"\\u062a\\u0634\\u0645\\u0644","lms_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","view_more":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f","items":"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631","learning_management_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","buy_now":"\\u0642\\u0645 \\u0628\\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0646","checkout":"\\u0627\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u062f\\u0641\\u0639","item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631","valid_for":"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0644\\u0640\\u0640\\u0640","enter_coupon_code":"\\u0627\\u062f\\u062e\\u0644  \\u0643\\u0648\\u062f \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","apply":"\\u062a\\u0642\\u062f\\u0645","select_your_child":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0627\\u0628\\u0646","click_here_to_update_payment_details":"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","billing_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","invalid_coupon":"\\u0642\\u0633\\u064a\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\\u0629","hey_you_are_eligible_for_discount":"\\u0645\\u0647\\u0644\\u0627 \\u0623\\u0646\\u062a \\u0645\\u0624\\u0647\\u0644 \\u0644\\u0644\\u062e\\u0635\\u0645","printable__file":"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","timetable_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","printed_onnn:_":"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0641\\u0649:","timetable__contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","certificates_settings_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","hai":"\\u0645\\u0647\\u0644\\u0627","students_list_class_vice":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","library_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","book_returns_student":"\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","book_returns_staff":"\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","asset_types":"\\u0627\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0633\\u062a\\u0648\\u062f\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628","master_data":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a","publishers":"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\\u0648\\u0646","authors":"\\u0627\\u0644\\u0645\\u0624\\u0644\\u0641\\u0648\\u0646","library_users":"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","issue_asset":"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0645\\u0627\\u062f\\u0629 \\u0627\\u0648 \\u0643\\u062a\\u0627\\u0628","maximum_allowed":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0627\\u0644\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0647","issued":"\\u0646\\u0634\\u0631","eligible":"\\u0645\\u0624\\u0647\\u0644","transactions":"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a","books_taken":"\\u0627\\u0644\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0639\\u0627\\u0631\\u0629","issue_book":"\\u0627\\u0644\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629","general_info":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","contace_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644","assets_on_issue":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629 \\u0644\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","issued_on":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631 \\u0641\\u0649 ","due_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0633\\u062a\\u062d\\u0642\\u0627\\u0642","library_issues":"\\u0627\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","asset_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628","please_enter_asset_reference_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a \\u0644\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 ","return_on":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0641\\u0649 ","book_returns":"\\u0639\\u0648\\u062f\\u0629 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628","academic_details":"Academic Details","asset_no":"Asset No","asset_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","return":"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f","department":"\\u0627\\u0644\\u0642\\u0633\\u0645","id_card_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","offline_payment_form":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0645\\u0646","submit":"\\u0645\\u0648\\u0627\\u0641\\u0642","offline_payment_instructions":"\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u0649","payment_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","your_request_was_submitted_to_admin":"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0637\\u0644\\u0628\\u0643 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641","success_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0646\\u0627\\u062c\\u062d\\u0629","user_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","plan":"\\u0627\\u0644\\u062e\\u0637\\u0629","payment_gateway":"\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639","updated_at":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0641\\u0649 ","offline_payment_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","coupon_applied":"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","after_discount":"\\u0628\\u0639\\u062f \\u0627\\u0644\\u062e\\u0635\\u0645","created_at":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0641\\u0649 ","comments":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a","approve":"\\u0627\\u0639\\u062a\\u0645\\u0627\\u062f","reject":"\\u0631\\u0641\\u0636","close":"\\u0627\\u063a\\u0644\\u0627\\u0642","record_was_updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u0646\\u062c\\u0627\\u062d","exam_aborted":"\\u062a\\u0645 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","students_completed_list_class_vice":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","students_completed_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","course_completed_student_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","certificate_generation":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0634\\u0647\\u0627\\u062f\\u0629","certificate_for":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0644\\u0640\\u0640","improper_sheet_uploaded":"\\u062a\\u0645 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0648\\u0631\\u0642\\u0629 \\u063a\\u064a\\u0631 \\u0644\\u0627\\u0626\\u0642\\u0629","report":"\\u0627\\u0644\\u0625\\u0628\\u0644\\u0627\\u063a","failed":"\\u0631\\u0633\\u0628","address":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","please_select_required_the_details":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629","this_record_is_in_use_in_other_modules":"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u062c\\u0632\\u0621 \\u0627\\u062e\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645","date_of_exam":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","topic":"\\u0627\\u0644\\u062f\\u0631\\u0633","view_all_users":"\\u0639\\u0631\\u0636 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","available_timesets":"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629","library_masters":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","author":"\\u0627\\u0644\\u0645\\u0624\\u0644\\u0641","publisher":"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631","available":"\\u0645\\u062a\\u0627\\u062d","edition":"\\u0625\\u0635\\u062f\\u0627\\u0631","library_assets":"\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u064a\\u0629","eligible_for_fine":"\\u0645\\u0633\\u062a\\u062d\\u0642 \\u0644\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629","fine_per_day":"\\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a\\u0629","qualification_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0624\\u0647\\u0644","experience":"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629","months":"\\u0627\\u0644\\u0634\\u0647\\u0648\\u0631","create_asset":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","asset_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","is_eligible_for_fine":"\\u0647\\u0644 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\\u061f","is_having_max_fine_limit":"\\u0647\\u0644 \\u0648\\u0635\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629","maximum_fine_amount":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629","maximum_issuable":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631","maximum_days_to_return":"\\u0627\\u0642\\u0635\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639","maximum_advanced_reservations":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u062d\\u062c\\u0648\\u0632\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645\\u0629","edit_asset":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","issuable":"\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0635\\u062f\\u0627\\u0631","days_to_return":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639","create_master_asset":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0631\\u0626\\u064a\\u0633\\u064a","asset_belongs_to_subject":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0627\\u0644\\u062a\\u0627\\u0628\\u0639 \\u0644\\u0645\\u0627\\u062f\\u0629 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","isbn_number":"\\u0631\\u0642\\u0645 Isbn ","actual_price":"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a","chargible_price_if_lost":"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0630\\u0627 \\u062a\\u0645 \\u0636\\u064a\\u0627\\u0639\\u0647","create_authors":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0624\\u0644\\u0641","author_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0641","create_publisher":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0646\\u0627\\u0634\\u0631","assets_publishers":"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\\u0648\\u0646","publisher_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631","librarian":"\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","back":"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629","collections":"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a","masters":"Masters","damaged":"\\u0627\\u0644\\u062a\\u0627\\u0644\\u0641","lost":"\\u0627\\u0644\\u0645\\u0641\\u0642\\u0648\\u062f","generate_collection":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","series_prefix":"\\u0644\\u0642\\u0628 \\u0627\\u0644\\u0633\\u0644\\u0627\\u0633\\u0644","generate":"\\u0627\\u0646\\u0634\\u0627\\u0621","maximum_issues_student":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0644\\u0647\\u0645","maximum_issues_staff":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0644\\u0647\\u0645","maximum_days_to_return_student":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","maximum_days_to_return_staff":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","library_series_prefix":"\\u0644\\u0642\\u0628 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","library_series_number_length":"\\u0639\\u062f\\u062f \\u0627\\u0631\\u0642\\u0627\\u0645 \\u0633\\u0644\\u0633\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","topper_percentage":"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0645\\u0626\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0623\\u0639\\u0644\\u0649","barcode":"\\u0628\\u0627\\u0631\\u0643\\u0648\\u062f","edit_master_asset":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a","your_not_assigned_to_any_class":"\\u0627\\u0646\\u062a \\u063a\\u064a\\u0631 \\u0645\\u0636\\u0627\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0649 \\u0641\\u0635\\u0644","edit_author":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0641","course_completed_students_list_class_vice":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","edit_academic":"\\u062a\\u0639\\u062f\\u064a\\u0644","edit_course":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644","reference_no_":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a","eligiblity":"\\u0627\\u0644\\u0623\\u062d\\u0642\\u064a\\u0629","issue":"\\u0627\\u0635\\u062f\\u0627\\u0631","asset_issued_successfully":"\\u062a\\u0645 \\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","on_issue":"\\u062a\\u062d\\u062a \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","edit_subject":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0627\\u062f\\u0629","subjects_listtt":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","edit_topic":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0633","upload_question":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0624\\u0627\\u0644","supported_formats_are":"\\u0627\\u0644\\u0627\\u0645\\u062a\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0647 \\u0647\\u064a","difficulty_level":"\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0635\\u0639\\u0648\\u0628\\u0629","hint":"\\u062a\\u0644\\u0645\\u064a\\u062d","explanation":"\\u0627\\u0644\\u0634\\u0631\\u062d","time_to_spend":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0644\\u0627\\u0632\\u0645","in_seconds":"\\u0628\\u0627\\u0644\\u062b\\u0648\\u0627\\u0646\\u064a","answer_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","total_correct_answers":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629","total_blank_answers":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0641\\u0627\\u0631\\u063a\\u0629","left_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u064a\\u0633\\u0631","right_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u064a\\u0645\\u0646","left_option":"\\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u064a\\u0633\\u0631","add_exam_series":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","series_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629","please_upload_valid_image_type":"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0646\\u0648\\u0639 \\u0635\\u0648\\u0631\\u0629 \\u0635\\u0627\\u0644\\u062d","it_will_be_updated_by_adding_the_exams":"\\u0633\\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0629 \\u0628\\u0645\\u062c\\u0631\\u062f \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","short_description":"\\u0648\\u0635\\u0641 \\u0642\\u0635\\u064a\\u0631","update_series_for":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629","exam_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","saved_exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629","add_content":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u062d\\u062a\\u0648\\u064a","content_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a","resource_link":"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631","lms_file":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","add_lms_series":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0633\\u0629 \\u0645\\u062d\\u062a\\u0648\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","lms_category":"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","it_will_be_updated_by_adding_the_lms_items":"\\u0633\\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627 \\u0628\\u0639\\u062f \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","master_setup":"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","master_setup_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","mastersettings_course_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","edit_course_semister":" \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","edit_semister":" \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u0646\\u0635\\u0641 \\u0633\\u0646\\u0648\\u064a","improper_data_in_the_question":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","record_already_exists_with_this_title":"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0628\\u0627\\u0644\\u0641\\u0639\\u0644 \\u0645\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","operations_are_disabled_in_demo_version":"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0645\\u0639\\u0637\\u0644\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","no_records_available":"No Records Available","no_categories_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u0642\\u0633\\u0627\\u0645 \\u0645\\u062a\\u0627\\u062d\\u0629","click_here_to_change_your_preferences":"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u062a\\u063a\\u064a\\u064a\\u0631 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0643","language":"\\u0627\\u0644\\u0644\\u063a\\u0629","default_language":"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629","latest_students":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","latest_staff":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","recent_online_payments":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629","recent_offline_payments":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629","students_detained_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646","student_book_return":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","staff_book_return":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","recent_quiz_takers":"\\u0627\\u062e\\u0631 \\u0637\\u0627\\u0644\\u0628 \\u0642\\u0627\\u0645 \\u0628\\u0627\\u0644\\u0625\\u062e\\u062a\\u064a\\u0627\\u0631","library_history":"\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","number":"\\u0627\\u0644\\u0631\\u0642\\u0645","today''s_classes":"\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u064a\\u0648\\u0645","lesson_plan_statistics":"\\u0625\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u062e\\u0637\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0633","staff_inactive_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u0645\\u0641\\u0639\\u0644\\u064a\\u0646","update_master_setup":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","please_update_master_setup_details":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","ok":"\\u062d\\u0633\\u0646\\u0627","students_list_class_wise":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0628\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","course_completed_students":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644\\u0648\\u0627 \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0627\\u0631\\u0633\\u064a","detained_students_list_class_wise":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646 \\u0628\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","improper_selection":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u063a\\u064a\\u0631 \\u0644\\u0627\\u0626\\u0642","url":"\\u0631\\u0627\\u0628\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a","all_payments":"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","update_strings":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629  ","disable":"\\u062a\\u0639\\u0637\\u064a\\u0644","enable":"\\u0645\\u0643\\u0646","set_default":"\\u0648\\u0636\\u0639 \\u0643\\u0625\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a","staff_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","are_you_sure_to_make_user_active":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","are_you_sure_to_make_user_inactive":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","time_table_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","no_item_selected":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0649 \\u0639\\u0646\\u0635\\u0631","cannot_remove_this_item_as_it_is_in_use":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0645\\u0633\\u062d \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0644\\u0627\\u0646\\u0647 \\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645","is_having_semesters":"\\u0647\\u0644 \\u0644\\u0647 \\u0641\\u0635\\u0648\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","detained_student_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646","make_inactive":"\\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644\\u0647","religion_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0647","ooops":"\\u0639\\u0630\\u0631\\u0627","for_all_users_list":"\\u0644\\u0639\\u0631\\u0636 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","click_here":"\\u0627\\u0646\\u0642\\u0631 \\u0647\\u0646\\u0627","date_time":"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e \\u0648\\u0627\\u0644\\u0648\\u0642\\u062a","today":"\\u0627\\u0644\\u064a\\u0648\\u0645","library_books_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628","master_asset_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","issue_on":"\\u0645\\u0635\\u062f\\u0631\\u0647 \\u0641\\u0649","password_updated_successfully":"\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","offline_exam_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629 ","improper_data_submitted":"\\u062a\\u0645 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\\u0629","cannot_remove_this_subject_as_allocated_to_staff":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u0644\\u0627\\u0646\\u0647\\u0627 \\u0645\\u062e\\u0635\\u0635\\u0629 \\u0644\\u0645\\u0639\\u0644\\u0645","site_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","login_page_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644","site_logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631","site_address":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0646","site_city":"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629","site_favicon":"\\u0627\\u064a\\u0642\\u0648\\u0646\\u0647 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0641\\u0649 \\u0634\\u0631\\u064a\\u0637 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0648\\u064a\\u0646","site_state":"\\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0629","site_country":"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629","site_zipcode":"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\\u064a","site_phone":"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","system_timezone":"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u062a","background_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\\u0629","default_academic_year_id":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","default_parent_course_id":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a","current_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","currency_symbol":"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","default_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a","green_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u0627\\u062e\\u0636\\u0631","red_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u0627\\u062d\\u0645\\u0631","cannot_remove_as_staff_is_assigned_to_classes":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062d \\u0644\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0645\\u062e\\u0635\\u0635 \\u0644\\u0641\\u0635\\u0648\\u0644","staff_removed_successfully":"\\u062a\\u0645 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","please_update_master_setup_details_before_creating_users_":"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0642\\u0628\\u0644 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646.","status_changed_successfully":"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","make_active":"\\u0648\\u0642\\u0641 \\u0627\\u0644\\u062a\\u0641\\u0639\\u064a\\u0644","assets_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a","edit_branch_and_course":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","add_total_blank_columns":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0639\\u0645\\u062f\\u0629 \\u0641\\u0627\\u0631\\u063a\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644","assistant_librarian":"\\u0645\\u0648\\u0638\\u0641 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","template":"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","please_check_your_email_master_settings":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0631\\u0627\\u062c\\u0639 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","roll_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","meta_description":"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639","meta_keywords":"\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0628\\u062d\\u062b","google_analytics":"\\u062a\\u062d\\u0644\\u064a\\u0644\\u0627\\u062a \\u062c\\u0648\\u062c\\u0644","edit_template":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","welcome":"\\u0645\\u0631\\u062d\\u0628\\u0627","email_content":"\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","select_course":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0635\\u0644","invalid_details_supplied":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062e\\u0627\\u0637\\u0626\\u0629","add_series":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0633\\u0644\\u0629","scheduled_exam_marks":"\\u0646\\u062a\\u0627\\u0626\\u062c \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","no_series_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0645\\u062a\\u0627\\u062d\\u0629","time_table_is_not_created_for_your_class":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0646\\u0634\\u0627\\u0624\\u0647 \\u0644\\u0641\\u0635\\u0644\\u0643","timingsets_cannot_be_empty":"\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0641\\u0627\\u0631\\u063a\\u0629","token_mismatch_exception":"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d","offline_payment_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","edit_question":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0633\\u0624\\u0627\\u0644","are_you_sure_to_make_clear_image":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0644\\u0641","clear_image":"\\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0644\\u0641","audio":"\\u0645\\u0644\\u0641 \\u0635\\u0648\\u062a\\u064a","gateway":"\\u0628\\u0648\\u0627\\u0628\\u0629","pending_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631","currency":"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0629","account_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628","mail_driver":"Mail Driver","mail_host":"Mail Host","mail_port":"Mail Port","mail_username":"Mail Username","mail_password":"Mail Password","mail_encryption":"Mail Encryption","payu_merchant_key":"Payu Merchant Key","payu_salt":"Payu Salt","payu_working_key":"Payu Working Key","payu_testmode":"Payu Testmode","you_already_purchased_this_item":"\\u0627\\u0646\\u062a \\u0641\\u0639\\u0644\\u064a\\u0627 \\u0642\\u0645\\u062a \\u0628\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621","click_here_to_list_subjects":"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","exam_already_submitted":"\\u062a\\u0645 \\u0627\\u0646\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","quiz_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","create_template":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0642\\u0627\\u0644\\u0628","file_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641","saved_items":"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0647","sorry_no_messages_available":"\\u0639\\u0641\\u0648\\u0627 \\u0644\\u0627\\u062a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0626\\u0644","undefined_user":"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641","add_notification":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0634\\u0639\\u0627\\u0631","edit_language":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0644\\u063a\\u0629","language_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0644\\u063a\\u0629","language_code":"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0644\\u063a\\u0629","supported_language_codes":"\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629","is_rtl":"\\u0647\\u0644 \\u0627\\u062a\\u062c\\u0627\\u0647 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 \\u061f","_empty_":"\\u0641\\u0627\\u0631\\u063a","student_book_returns":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0647 \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","are_you_sure_to_return_the_book":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628","password_reset_link_sent_to_email":"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0627\\u0628\\u0637 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0627\\u064a\\u0645\\u064a\\u0644\\u0643","reset_password":"\\u0627\\u0639\\u0627\\u062f\\u0629 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","email_address":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","confirm_password":"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","password_changed_successfully":"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d","latest_quizzes":"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","latest":"\\u0627\\u0644\\u0627\\u062e\\u064a\\u0631","children_analysis":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0627\\u0628\\u0646\\u0627\\u0621","no_quizzes_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","to_change_your_settings":"\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\\u0643","staff_book_returns":"\\u0627\\u0631\\u062c\\u0627\\u0639 \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","chargeable_price_if_lost":"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u062d\\u0627\\u0644\\u0629 \\u0636\\u064a\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628","give_feedback":"\\u0634\\u0627\\u0631\\u0643\\u0646\\u0627 \\u0628\\u0631\\u0623\\u064a\\u0643","feedback_form":"\\u0627\\u0633\\u062a\\u0645\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","send":"\\u0627\\u0631\\u0633\\u0627\\u0644","edit_religion":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0629","course_parent_id":"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629","add_language":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0644\\u063a\\u0629","LMS":"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","feed_backs":"\\u0627\\u0644\\u0622\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","educate":"\\u062a\\u0639\\u0644\\u0645","enlight":"ENLIGHT","enforce":"\\u0625\\u062a\\u0642\\u0627\\u0646","login":"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644","forgot_password":"\\u0647\\u0644 \\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","enlightenment":"\\u0625\\u0628\\u062f\\u0627\\u0639","please_select_academic_year_and_course":"\\u064a\\u0631\\u062c\\u0649 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","lms_contents":"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","home_page":"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","bonafide_transfer_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","students_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","student_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","students_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","logged_out_successfully":"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0628\\u0646\\u062c\\u0627\\u062d","once_saved_the_admission_details_cannot_be_edited\\n":"\\u0645\\u0631\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u062a\\u062d\\u0631\\u064a\\u0631\\u0647\\u0627","transfer_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644","staff_is_busy_for_that_slot":"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0645\\u0634\\u063a\\u0648\\u0644 \\u0641\\u0649 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062d\\u0635\\u0647","facebook_client_id":"facebook client id","facebook_client_secret":"facebook client secret","facebook_redirect_url":"facebook redirect url","google_client_id":"google client id","google_client_secret":"google client secret","google_redirect_url":" google redirect url","edit_series":"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629","edit_instruction":"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a","add_instructions":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a","promote_all":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0643\\u0644","detain_all":"\\u0627\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u0643\\u0644 ","no_action":"\\u0628\\u062f\\u0648\\u0646 \\u0627\\u062c\\u0631\\u0627\\u0621 ","do_you_want_to_promot_them":"\\u0646\\u0642\\u0644 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644\\u061f","do_you_want_to_graduate_them":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u062c\\u064a\\u0646\\u061f","select_all":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0643\\u0644","cancel_all":"\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0644 ","reback_completed":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0639\\u0644\\u0649 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u0629","reback_them":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0639\\u0644\\u0649 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u0629","course_detained_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646","item_is_not_exists":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f","error":"\\u062d\\u062f\\u062b \\u062e\\u0637\\u0623 \\u0645\\u0627","no_data_available_in_table":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644","show":"\\u0639\\u0631\\u0636","entries":"\\u0627\\u0644\\u0645\\u062f\\u062e\\u0644\\u0627\\u062a","showing":"\\u0639\\u0631\\u0636","password_and_confirmation_not_matched":"\\u062e\\u0627\\u0646\\u0629 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0648\\u062e\\u0627\\u0646\\u0629 \\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u0637\\u0627\\u0628\\u0642\\u062a\\u064a\\u0646","is_parent_account_available":"\\u0647\\u0644 \\u062d\\u0633\\u0627\\u0628 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 \\u0645\\u062a\\u0627\\u062d","you_should_choose_one_student_at_least":"\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0637\\u0627\\u0644\\u0628 \\u0648\\u0627\\u062d\\u062f \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0642\\u0644","students_have_moved_to_schooling_again":"\\u0648\\u0642\\u062f \\u0627\\u0646\\u062a\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649","an_error_occurred":"\\u062d\\u062f\\u062b \\u062e\\u0637\\u0623 \\u0645\\u0627","completed_students_of_year":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646 \\u0644\\u0644\\u0639\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","for_year":"\\u0644\\u0644\\u0639\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","list_of_courses":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","total_semesters":"\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","currernt_semester":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","edit_notification":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a","read_more":"\\u0627\\u0642\\u0631\\u0623 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f","certificates_settings":"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","add_semester":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0635\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a","semester_start_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","semester_end_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","semester_start_date 1":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 1","semester_end_date 1":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 1","semester_start_date 2":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 2","semester_end_date 2":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 2","semester_start_date 3":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 3","semester_end_date 3":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 3","address_middle":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0623\\u0648\\u0633\\u0637","skip":"\\u062a\\u062e\\u0637\\u0649","dob":"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645","bonafide_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","messaging_system_for":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u062a\\u0648\\u062f \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644 \\u0644\\u0647\\u0645","edit_coupon":"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","invalid_setting":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062e\\u0627\\u0637\\u0626\\u0629","sn":"\\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644","bonafide_or_transfer_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0648\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","note":"\\u0645\\u0644\\u062d\\u0648\\u0638\\u0629","bonafide_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","if_the_student_admission_details_are_not_updated_those_students_will_be_available_in_all_users_list":"\\u0625\\u0630\\u0627 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0644\\u0643\\u0644 \\u0637\\u0627\\u0644\\u0628 \\u0641\\u0644\\u0646 \\u062a\\u0638\\u0647\\u0631 \\u0623\\u0633\\u0645\\u0627\\u0624\\u0647\\u0645 \\u0641\\u0649 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0648\\u0644\\u0643\\u0646 \\u0633\\u064a\\u0643\\u0648\\u0646\\u0648\\u0627 \\u0641\\u0649 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","done":"\\u0627\\u0646\\u062a\\u0647\\u064a","this_user_is_detained":"\\u062a\\u0645 \\u0627\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0627\\u062f\\u0627\\u0631\\u0629","today_classes":"\\u062d\\u0635\\u0635 \\u0627\\u0644\\u064a\\u0648\\u0645","change_user_language":"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","no_action_all":"\\u0628\\u062f\\u0648\\u0646 \\u0625\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0643\\u0644","ibrary_series_number_length":"\\u0639\\u062f\\u062f \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u0643\\u062a\\u064a\\u0629","ibrary_series_prefix":"\\u0627\\u0644\\u0645\\u0633\\u0645\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629","mail":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a ","once_saved_the_admission_details_cannot_be_edited":"\\u0644\\u0627\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0628\\u0639\\u062f \\u0627\\u062c\\u0631\\u0627\\u0621 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0641\\u0638","address_line_1":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0623\\u0648\\u0644","address_line_2":"\\u0633\\u0637\\u0631 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 2","main_branch":"\\u0627\\u0644\\u0641\\u0631\\u0639 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a","student_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","blood_type":"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645","phone_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","web_site":"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","admission_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","course_information":"\\u0627\\u0644\\u0641\\u0635\\u0644","full_address":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644","city_address":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629","address_of_city_and_state":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0648\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629","validity_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629","mobile_number":"\\u0627\\u0644\\u062c\\u0648\\u0627\\u0644","home_phone_number":"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","address_1":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 1","emergency_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0648\\u0627\\u0631\\u0626","headquarters":"\\u0627\\u0644\\u0645\\u0642\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a","website":"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","template_1":"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 1","template_2":"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 2","select_language":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629","academic_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","course_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0641\\u0635\\u0644","topic_id":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u0631\\u0633 (\\u0627\\u0644\\u0631\\u0642\\u0645)","please_type_any_details_for_search":"\\u064a\\u0631\\u062c\\u0649 \\u0643\\u062a\\u0627\\u0628\\u0629 \\u0623\\u064a \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0644\\u0644\\u0628\\u062d\\u062b","fill_in_blanks":"\\u0625\\u0645\\u0644\\u0623 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a","upload_failed":"\\u0644\\u0642\\u062f \\u0641\\u0634\\u0644\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0641","upload_success":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","image_cleared_successfully":"\\u062a\\u0645 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","do_not_press_back_or_refresh_button":"\\u0644\\u0627 \\u062a\\u0636\\u063a\\u0637 \\u0639\\u0644\\u0649 \\u0632\\u0631 \\u0627\\u0644\\u0631\\u062c\\u0648\\u0639 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b","not_allowed":"\\u063a\\u064a\\u0631 \\u0645\\u0633\\u0645\\u0648\\u062d","this_service_is_not_available_now":"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u062d\\u0627\\u0644\\u064a\\u0627","semester_1":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 1","semester_2":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a 2","file":"\\u0645\\u0644\\u0641","video_url":"\\u0631\\u0627\\u0628\\u0637 \\u0641\\u064a\\u062f\\u064a\\u0648","iframe":"IFRAME","audio_url":"\\u0631\\u0627\\u0628\\u0637 \\u0645\\u0644\\u0641 \\u0635\\u0648\\u062a\\u064a","100":"100","feedback_submitted_successfully":"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d \\u0628\\u0646\\u062c\\u0627\\u062d","feedback_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d","feedbacks":"\\u0627\\u0644\\u0622\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","record_added_successfully_with_password":"\\u062a\\u0645 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d \\u0648\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0647\\u064a ","send_to":"\\u0627\\u0631\\u0633\\u0644 \\u0625\\u0644\\u0649","feedback_subject":"\\u0645\\u0648\\u0636\\u0648\\u0639 \\u0627\\u0644\\u0625\\u0642\\u062a\\u0631\\u0627\\u062d","feedback_description":"\\u0634\\u0631\\u062d \\u0627\\u0644\\u0625\\u0642\\u062a\\u0631\\u0627\\u062d","send_messages":"\\u0625\\u0631\\u0633\\u0644 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644","select_user":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","message_subject":"\\u0645\\u0648\\u0636\\u0648\\u0639 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0644\\u0629","message_description":"\\u0646\\u0635 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0644\\u0629","user_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","teachers":"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","choose":"\\u0623\\u062e\\u062a\\u0631","experience_years":"\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629","experience_months":"\\u062a\\u062c\\u0631\\u0628\\u0629 \\u0623\\u0634\\u0647\\u0631","your_admission_details_are_not_updated":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627","departments":"\\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0627\\u062a","create_department":"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0625\\u062f\\u0627\\u0631\\u0629","sno":"\\u0627\\u0644\\u0631\\u0642\\u0645","slug":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0641\\u0649 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0637","add_department":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629","department_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0642\\u0633\\u0645","department_code":"\\u0643\\u0648\\u062f \\u0642\\u0633\\u0645","help_link_url":"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629","you_have_answered_the_question":"\\u0644\\u0642\\u062f \\u0623\\u062c\\u0628\\u062a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","you_have_not_answered_the_question":"\\u0644\\u0645 \\u062a\\u062a\\u0645 \\u0627\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","you_have_answered_the_question_but_have_marked_the_question_for_review":"\\u0644\\u0642\\u062f \\u0623\\u062c\\u0628\\u062a \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0648\\u0644\\u0643\\u0646\\u0643 \\u0648\\u0636\\u0639\\u062a \\u0639\\u0644\\u0627\\u0645\\u0647 \\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0639\\u0644\\u064a\\u0629","you_have_not_visited_the_question_yet":"\\u0644\\u0645 \\u062a\\u0642\\u0645 \\u0628\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0645\\u0646 \\u0642\\u0628\\u0644","the_computer_provided_to_me_is_in_proper_working_condition":"\\u062c\\u0647\\u0627\\u0632 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u0630\\u0649 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0645\\u0629 \\u064a\\u0639\\u0645\\u0644 \\u0628\\u062d\\u0627\\u0644\\u0629 \\u062c\\u064a\\u062f\\u0629","i_have_read_and_understood_the_instructions_given_above":"\\u0644\\u0642\\u062f \\u0642\\u0631\\u0623\\u062a \\u0648\\u0641\\u0647\\u0645\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0630\\u0643\\u0648\\u0631\\u0629 \\u0623\\u0639\\u0644\\u0627\\u0647","created_by":"\\u0627\\u0636\\u064a\\u0641 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629","updated_by":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629","creator_ip":"\\u0631\\u0642\\u0645 \\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641","updater_ip":"\\u0631\\u0642\\u0645 \\u062d\\u0627\\u0633\\u0628 \\u0627\\u062e\\u0631 \\u0645\\u0646 \\u0642\\u0627\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644","smtp":"smtp","sparkpost":"Sparkpost","sendmail":"sendmail","mailgun":"Mailgun","mandrill":"mandrill","ses":"\\u0625\\u0633 \\u0625\\u064a \\u0625\\u0633","log":"\\u0633\\u062c\\u0644","top_level":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0623\\u0639\\u0644\\u064a","invalid_subject_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d","view_record_history":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644","creator_username":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0630\\u064a \\u0636\\u0627\\u0641 \\u0627\\u0644\\u0633\\u062c\\u0644","updater_username":"\\u0627\\u062e\\u0631 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0639\\u062f\\u0644 \\u0639\\u0644\\u0649  \\u0627\\u0644\\u0633\\u062c\\u0644","id_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","printed_on":"\\u0637\\u0628\\u0639 \\u0639\\u0644\\u0649","saudi_arabia":"\\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629","albania":"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\\u0627","algeria":"\\u0627\\u0644\\u062c\\u0632\\u0627\\u0626\\u0631","american_samoa":"\\u0633\\u0627\\u0645\\u0648\\u0627 \\u0627\\u0644\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\\u0629","andorra":"\\u0623\\u0646\\u062f\\u0648\\u0631\\u0627","angola":"\\u0623\\u0646\\u063a\\u0648\\u0644\\u0627","anguilla":"\\u0623\\u0646\\u063a\\u064a\\u0644\\u0627","antarctica":"\\u0627\\u0644\\u0642\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629","antigua_and_barbuda":"\\u0623\\u0646\\u062a\\u064a\\u063a\\u0648\\u0627 \\u0648\\u0628\\u0631\\u0628\\u0648\\u062f\\u0627","argentina":"\\u0627\\u0644\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646","armenia":"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\\u0627","aruba":"\\u0623\\u0631\\u0648\\u0628\\u0627","australia":"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\\u0627","austria":"\\u0627\\u0644\\u0646\\u0645\\u0633\\u0627","azerbaijan":"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646","bahamas":"\\u0627\\u0644\\u0628\\u0627\\u0647\\u0627\\u0645\\u0627","bahrain":"\\u0627\\u0644\\u0628\\u062d\\u0631\\u064a\\u0646","bangladesh":"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634","barbados":"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633","belarus":"\\u0631\\u0648\\u0633\\u064a\\u0627 \\u0627\\u0644\\u0628\\u064a\\u0636\\u0627\\u0621","belgium":"\\u0628\\u0644\\u062c\\u064a\\u0643\\u0627","belize":"\\u0628\\u0644\\u064a\\u0632","benin":"\\u0628\\u0646\\u064a\\u0646","bermuda":"\\u0628\\u0631\\u0645\\u0648\\u062f\\u0627","bhutan":"\\u0628\\u0648\\u062a\\u0627\\u0646","bolivia":"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\\u0627","bosnia_and_herzegovina":"\\u0627\\u0644\\u0628\\u0648\\u0633\\u0646\\u0629 \\u0648\\u0627\\u0644\\u0647\\u0631\\u0633\\u0643","botswana":"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u0627","bouvet_island":"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0628\\u0648\\u0641\\u064a\\u062a","brazil":"\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644","british_indian_ocean_territory":"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a","brunei_darussalam":"\\u0628\\u0631\\u0648\\u0646\\u0627\\u064a \\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0644\\u0627\\u0645","bulgaria":"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0627","burkina_faso":"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u0627 \\u0641\\u0627\\u0633\\u0648","burundi":"\\u0628\\u0648\\u0631\\u0648\\u0646\\u062f\\u064a","cambodia":"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\\u0627","cameroon":"\\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646","canada":"\\u0643\\u0646\\u062f\\u0627","cape_verde":"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631","cayman_islands":"\\u062c\\u0632\\u0631 \\u0643\\u0627\\u064a\\u0645\\u0627\\u0646","central_african_republic":"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0641\\u0631\\u064a\\u0642\\u064a\\u0627 \\u0627\\u0644\\u0648\\u0633\\u0637\\u0649","chad":"\\u062a\\u0634\\u0627\\u062f","chile":"\\u062a\\u0634\\u064a\\u0644\\u064a","china":"\\u0627\\u0644\\u0635\\u064a\\u0646","christmas_island":"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0633\\u0645\\u0627\\u0633","cocos_keeling_islands":"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633 \\u0643\\u064a\\u0644\\u064a\\u0646\\u063a","colombia":"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\\u0627","comoros":"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631","congo":"\\u0627\\u0644\\u0643\\u0648\\u0646\\u063a\\u0648","cook_islands":"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643","costa_rica":"\\u0643\\u0648\\u0633\\u062a\\u0627 \\u0631\\u064a\\u0643\\u0627","croatia_hrvatska":"\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0627 \\u0647\\u0631\\u0641\\u0627\\u062a\\u0633\\u0643\\u0627","cuba":"\\u0643\\u0648\\u0628\\u0627","cyprus":"\\u0642\\u0628\\u0631\\u0635","czech_republic":"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643","denmark":"\\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643","djibouti":"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a","dominica":"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u0627","dominican_republic":"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0645\\u0646\\u064a\\u0643\\u0627\\u0646","east_timor":"\\u062a\\u064a\\u0645\\u0648\\u0631 \\u0627\\u0644\\u0634\\u0631\\u0642\\u064a\\u0629","ecuador":"\\u0627\\u0644\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631","egypt":"\\u0645\\u0635\\u0631","el_salvador":"\\u0627\\u0644\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631","equatorial_guinea":"\\u063a\\u064a\\u0646\\u064a\\u0627 \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0627\\u0626\\u064a\\u0629","eritrea":"\\u0625\\u0631\\u064a\\u062a\\u0631\\u064a\\u0627","estonia":"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\\u0627","ethiopia":"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\\u0627","falkland_islands_malvinas":"\\u062c\\u0632\\u0631 \\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f \\u0645\\u0627\\u0644\\u0641\\u064a\\u0646\\u0627\\u0633","faroe_islands":"\\u062c\\u0632\\u0631 \\u0635\\u0646\\u0627\\u0639\\u064a\\u0629","fiji":"\\u0641\\u064a\\u062c\\u064a","finland":"\\u0641\\u0646\\u0644\\u0646\\u062f\\u0627","france":"\\u0641\\u0631\\u0646\\u0633\\u0627","france_metropolitan":"\\u0641\\u0631\\u0646\\u0633\\u0627 \\u0645\\u062a\\u0631\\u0648\\u0628\\u0648\\u0644\\u064a\\u062a\\u0627\\u0646","french_guiana":"\\u063a\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629","french_polynesia":"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629","french_southern_territories":"\\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0644\\u0641\\u0631\\u0646\\u0633\\u0627","gabon":"\\u0627\\u0644\\u063a\\u0627\\u0628\\u0648\\u0646","gambia":"\\u063a\\u0627\\u0645\\u0628\\u064a\\u0627","georgia":"\\u062c\\u0648\\u0631\\u062c\\u064a\\u0627","germany":"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0627","ghana":"\\u063a\\u0627\\u0646\\u0627","gibraltar":"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642","guernsey":"\\u063a\\u064a\\u0631\\u0646\\u0633\\u064a","greece":"\\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646","greenland":"\\u0627\\u0644\\u0623\\u0631\\u0636 \\u0627\\u0644\\u062e\\u0636\\u0631\\u0627\\u0621","grenada":"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u0627","guadeloupe":"\\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628","guam":"\\u063a\\u0648\\u0627\\u0645","guatemala":"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u0627","guinea":"\\u063a\\u064a\\u0646\\u064a\\u0627","guinea_bissau":"\\u063a\\u064a\\u0646\\u064a\\u0627 \\u0628\\u064a\\u0633\\u0627\\u0648","guyana":"\\u063a\\u064a\\u0627\\u0646\\u0627","haiti":"\\u0647\\u0627\\u064a\\u062a\\u064a","heard_and_mc_donald_islands":"\\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643 \\u062f\\u0648\\u0646\\u0627\\u0644\\u062f","honduras":"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633","hong_kong":"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a","hungary":"\\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646","iceland":"\\u0623\\u064a\\u0633\\u0644\\u0646\\u062f\\u0627","india":"\\u0627\\u0644\\u0647\\u0646\\u062f","isle_of_man":"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0622\\u064a\\u0644 \\u0623\\u0648\\u0641 \\u0645\\u0627\\u0646","indonesia":"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u0627","iran_islamic_republic_of":"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0625\\u0633\\u0644\\u0627\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\\u0629","iraq":"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642","ireland":"\\u0623\\u064a\\u0631\\u0644\\u0646\\u062f\\u0627","israel":"\\u0625\\u0633\\u0631\\u0627\\u0626\\u064a\\u0644","italy":"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0627","ivory_coast":"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c","jersey":"\\u062c\\u064a\\u0631\\u0633\\u064a","jamaica":"\\u062c\\u0627\\u0645\\u0627\\u064a\\u0643\\u0627","japan":"\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646","jordan":"\\u0627\\u0644\\u0623\\u0631\\u062f\\u0646","kazakhstan":"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646","kenya":"\\u0643\\u064a\\u0646\\u064a\\u0627","kiribati":"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u0633","korea_democratic_peoples_republic_of":"\\u0643\\u0648\\u0631\\u064a\\u0627\\u060c \\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062f\\u064a\\u0645\\u0642\\u0631\\u0627\\u0637\\u064a\\u0629","korea_republic_of":"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0643\\u0648\\u0631\\u064a\\u0627","kosovo":"\\u0643\\u0648\\u0633\\u0648\\u0641\\u0648","kuwait":"\\u0627\\u0644\\u0643\\u0648\\u064a\\u062a","kyrgyzstan":"\\u0642\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646","lao_peoples_democratic_republic":"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0644\\u0627\\u0648 \\u0627\\u0644\\u062f\\u064a\\u0645\\u0642\\u0631\\u0627\\u0637\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0639\\u0628\\u064a\\u0629","latvia":"\\u0644\\u0627\\u062a\\u0641\\u064a\\u0627","lebanon":"\\u0644\\u0628\\u0646\\u0627\\u0646","lesotho":"\\u0644\\u064a\\u0633\\u0648\\u062a\\u0648","liberia":"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\\u0627","libyan_arab_jamahiriya":"\\u0627\\u0644\\u062c\\u0645\\u0627\\u0647\\u064a\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0644\\u064a\\u0628\\u064a\\u0629","liechtenstein":"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u0627\\u064a\\u0646","lithuania":"\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0627","luxembourg":"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a","macau":"\\u0645\\u0627\\u0643\\u0627\\u0648","macedonia":"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\\u0627","madagascar":"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631","malawi":"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a","malaysia":"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\\u0627","maldives":"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641","mali":"\\u0645\\u0627\\u0644\\u064a","malta":"\\u0645\\u0627\\u0644\\u0637\\u0627","marshall_islands":"\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0631\\u0634\\u0627\\u0644","martinique":"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643","mauritania":"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u0627","mauritius":"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633","mayotte":"\\u0645\\u0627\\u064a\\u0648\\u062a","mexico":"\\u0627\\u0644\\u0645\\u0643\\u0633\\u064a\\u0643","micronesia_federated_states_of":"\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0645\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u0627 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u0629","moldova_republic_of":"\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0645\\u0648\\u0644\\u062f\\u0648\\u0641\\u0627","monaco":"\\u0645\\u0648\\u0646\\u0627\\u0643\\u0648","mongolia":"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\\u0627","montenegro":"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f","montserrat":"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a","morocco":"\\u0627\\u0644\\u0645\\u063a\\u0631\\u0628","mozambique":"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642","myanmar":"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631","namibia":"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\\u0627","nauru":"\\u0646\\u0627\\u0648\\u0631\\u0648","nepal":"\\u0646\\u064a\\u0628\\u0627\\u0644","netherlands":"\\u0647\\u0648\\u0644\\u0646\\u062f\\u0627","netherlands_antilles":"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0623\\u0646\\u062a\\u064a\\u0644 \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629","new_caledonia":"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629","new_zealand":"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0627\\u0646\\u062f\\u0627","nicaragua":"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u063a\\u0648\\u0627","niger":"\\u0627\\u0644\\u0646\\u064a\\u062c\\u0631","nigeria":"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\\u0627","niue":"\\u0646\\u064a\\u0648\\u064a","norfolk_island":"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u0643","northern_mariana_islands":"\\u062c\\u0632\\u0631 \\u0645\\u0631\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0634\\u0645\\u0627\\u0644\\u064a\\u0629","norway":"\\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c","oman":"\\u0633\\u0644\\u0637\\u0646\\u0629 \\u0639\\u0645\\u0627\\u0646","pakistan":"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646","palau":"\\u0628\\u0627\\u0644\\u0627\\u0648","palestine":"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646","panama":"\\u0628\\u0646\\u0627\\u0645\\u0627","papua_new_guinea":"\\u0628\\u0627\\u0628\\u0648\\u0627 \\u063a\\u064a\\u0646\\u064a\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629","paraguay":"\\u0628\\u0627\\u0631\\u0627\\u063a\\u0648\\u0627\\u064a","peru":"\\u0628\\u064a\\u0631\\u0648","philippines":"\\u0627\\u0644\\u0641\\u0644\\u0628\\u064a\\u0646","pitcairn":"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646","poland":"\\u0628\\u0648\\u0644\\u0646\\u062f\\u0627","portugal":"\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644","puerto_rico":"\\u0628\\u0648\\u0631\\u062a\\u0648\\u0631\\u064a\\u0643\\u0648","qatar":"\\u062f\\u0648\\u0644\\u0629 \\u0642\\u0637\\u0631","reunion":"\\u062c\\u0645\\u0639 \\u0634\\u0645\\u0644","romania":"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0627","russian_federation":"\\u0627\\u0644\\u0627\\u062a\\u062d\\u0627\\u062f \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a","rwanda":"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627","saint_kitts_and_nevis":"\\u0633\\u0627\\u0646\\u062a \\u0643\\u064a\\u062a\\u0633 \\u0648\\u0646\\u064a\\u0641\\u064a\\u0633","saint_lucia":"\\u0627\\u0644\\u0642\\u062f\\u064a\\u0633\\u0629 \\u0644\\u0648\\u0633\\u064a\\u0627","saint_vincent_and_the_grenadines":"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646","samoa":"\\u0633\\u0627\\u0645\\u0648\\u0627","san_marino":"\\u0633\\u0627\\u0646 \\u0645\\u0627\\u0631\\u064a\\u0646\\u0648","sao_tome_and_principe":"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a","senegal":"\\u0627\\u0644\\u0633\\u0646\\u063a\\u0627\\u0644","serbia":"\\u0635\\u0631\\u0628\\u064a\\u0627","seychelles":"\\u0633\\u064a\\u0634\\u064a\\u0644","sierra_leone":"\\u0633\\u064a\\u0631\\u0627 \\u0644\\u064a\\u0648\\u0646","singapore":"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u0629","slovakia":"\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0627","slovenia":"\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0627","solomon_islands":"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646","somalia":"\\u0627\\u0644\\u0635\\u0648\\u0645\\u0627\\u0644","south_africa":"\\u062c\\u0646\\u0648\\u0628 \\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\\u0627","south_georgia_south_sandwich_islands":"\\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u060c \\u062c\\u0648\\u0631\\u062c\\u064a\\u0627\\u060c \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u060c \\u0633\\u0627\\u0646\\u062f\\u0648\\u064a\\u062a\\u0634\\u060c","spain":"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0627","sri_lanka":"\\u0633\\u064a\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u0627","st_helena":"\\u0633\\u062a \\u0647\\u064a\\u0644\\u064a\\u0646\\u0627","st_pierre_and_miquelon":"\\u0633\\u0627\\u0646\\u062a \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646","sudan":"\\u0633\\u0648\\u062f\\u0627\\u0646","suriname":"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645","svalbard_and_jan_mayen_islands":"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u062c\\u0627\\u0646 \\u0645\\u0627\\u064a\\u064a\\u0646 \\u0627\\u0644\\u062c\\u0632\\u0631","swaziland":"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0627\\u0646\\u062f","sweden":"\\u0627\\u0644\\u0633\\u0648\\u064a\\u062f","switzerland":"\\u0633\\u0648\\u064a\\u0633\\u0631\\u0627","syrian_arab_republic":"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0648\\u0631\\u064a\\u0629","taiwan":"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646","tajikistan":"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646","tanzania_united_republic_of":"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u0627 \\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629 \\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u0627 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629","thailand":"\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f","togo":"\\u0644\\u064a\\u0630\\u0647\\u0628","tokelau":"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648","tonga":"\\u062a\\u0648\\u0646\\u063a\\u0627","trinidad_and_tobago":"\\u062a\\u0631\\u064a\\u0646\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648","tunisia":"\\u062a\\u0648\\u0646\\u0633","turkey":"\\u062f\\u064a\\u0643 \\u0631\\u0648\\u0645\\u064a","turkmenistan":"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646","turks_and_caicos_islands":"\\u062c\\u0632\\u0631 \\u062a\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633","tuvalu":"\\u062a\\u0648\\u0641\\u0627\\u0644\\u0648","uganda":"\\u0623\\u0648\\u063a\\u0646\\u062f\\u0627","ukraine":"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\\u0627","united_arab_emirates":"\\u0627\\u0644\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629","united_kingdom":"\\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629","united_states":"\\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0627\\u0645\\u0631\\u064a\\u0643\\u0627\\u0646\\u064a\\u0629","united_states_minor_outlying_islands":"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0628\\u0639\\u064a\\u062f\\u0629 \\u0627\\u0644\\u0635\\u063a\\u0631\\u0649","uruguay":"\\u0623\\u0648\\u0631\\u0648\\u063a\\u0648\\u0627\\u064a","uzbekistan":"\\u0623\\u0648\\u0632\\u0628\\u0643\\u0633\\u062a\\u0627\\u0646","vanuatu":"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u0648","vatican_city_state":"\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646","venezuela":"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u0627","vietnam":"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645","virgin_islands_british":"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0639\\u0630\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\\u0629","virgin_islands_us":"\\u062c\\u0632\\u0631 \\u0641\\u064a\\u0631\\u062c\\u0646 \\u0644\\u0646\\u0627","wallis_and_futuna_islands":"\\u062c\\u0632\\u0631 \\u0648\\u0627\\u0644\\u064a\\u0633 \\u0648\\u0641\\u0648\\u062a\\u0648\\u0646\\u0627","western_sahara":"\\u0627\\u0644\\u0635\\u062d\\u0631\\u0627\\u0621 \\u0627\\u0644\\u063a\\u0631\\u0628\\u064a\\u0629","yemen":"\\u0627\\u0644\\u064a\\u0645\\u0646","yugoslavia":"\\u064a\\u0648\\u063a\\u0648\\u0633\\u0644\\u0627\\u0641\\u064a\\u0627","zaire":"\\u0632\\u0627\\u0626\\u064a\\u0631","zambia":"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627","zimbabwe":"\\u0632\\u064a\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a","afghanistan":"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646","cart_subtotal":"\\u0627\\u0644\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a","order_total":"\\u0627\\u0644\\u0635\\u0627\\u0641\\u064a","elect_template":"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","educational_level":"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","user_profile":"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a","roll":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a","doj":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u0644\\u062a\\u062d\\u0627\\u0642","father":"\\u0627\\u0644\\u0623\\u0628","mother":"\\u0627\\u0644\\u0627\\u0645","assign_teachers_to_supervisors":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a","educational_supervisor":"\\u0645\\u0634\\u0631\\u0641 \\u062a\\u0631\\u0628\\u0648\\u064a","specify_subjects_to_teachers":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","staff_toic_plan":"\\u062e\\u0637\\u0637 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","teacher_students_attendance":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","teachers_timetables":"\\u062c\\u062f\\u0648\\u0644 \\u062d\\u0635\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","teacher_students_marks":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0645\\u064a\\u0632\\u064a\\u0646","teacher_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","supervisor_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0641","assign_teachers":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a","staff_to_supervisor":"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0641","teachers_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","skills":"\\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629","educational_supervisors":"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u0648\\u0646 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a\\u0648\\u0646","assign_teachers_to_supervisor":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a","assign_subjects_to_teachers":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","assign_subject_to_teacher":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0645\\u0639\\u0644\\u0645","staff_topic_plan":"\\u062e\\u0637\\u0637 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","lesson_plans_of_teacher":"\\u062e\\u0637\\u0637 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","students_attendance_of_teacher":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","teacher_timetable":"\\u0627\\u0644\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u0632\\u0645\\u0646\\u064a \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","students_marks":"\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","all_teachers":"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","assigned_to_another_supervisor":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u062e\\u0631","all_supervisors":"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646","transfer_to_class":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u064a \\u0641\\u0635\\u0644","papers_and_achievements_of_the_student":"\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","student_papers_and_achievements":"\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","progress_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0627\\u0646\\u062c\\u0627\\u0632","achievements":"\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","add_document":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0644\\u0641","document":"\\u0645\\u0644\\u0641","supported_files":"\\u0627\\u0644\\u0645\\u0644\\u0641\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0629","invalid_file_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d","application":"\\u0627\\u0644\\u0648\\u0636\\u0639\\u064a\\u0629","add_skills":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0647\\u0627\\u0631\\u0627\\u062a","skill":"\\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a","new":"\\u062c\\u062f\\u064a\\u062f","save":"\\u062d\\u0641\\u0638","invalid_social_login":"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d","login_success":"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","sign_in_with_facebook":"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643","sign_in_with_google":"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0628\\u0631\\u064a\\u062f \\u062c\\u0648\\u062c\\u0644","sandbox":"sandbox","live":"Live","student_achievement_file_extensions":"\\u0627\\u0644\\u0627\\u0645\\u062a\\u062f\\u0627\\u062f\\u062a \\u0627\\u0644\\u0645\\u0633\\u0645\\u0648\\u062d\\u0629 \\u0641\\u0649 \\u0623\\u0648\\u0631\\u0627\\u0642 \\u0648\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","academic_dues":"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","academics_operations":"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","all_skills":"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a","skill_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0629","edit_skills":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a","updated":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644","skills_updated_successfully":"\\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627 \\u0628\\u0646\\u062c\\u0627\\u062d","saved":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0641\\u0638","skills_saved_successfully":"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0628\\u0646\\u062c\\u0627\\u062d","admin_and_student":"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","admin_and_staff_and_student":"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0648\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","all_academic_dues":"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","academic_year_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","dues_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641","dues_value":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641","dues_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641","student_attendance_of_teacher":"\\u062a\\u062d\\u0636\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0644\\u0644\\u0637\\u0644\\u0627\\u0628","excellence_level":"\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0645\\u064a\\u0632","excellent_level":"\\u0637\\u0627\\u0644\\u0628 \\u0645\\u0645\\u062a\\u0627\\u0632","ordinary_level":"\\u0637\\u0627\\u0644\\u0628 \\u0639\\u0627\\u062f\\u064a","school_expenses":"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","assign_teacher_to_supervisor":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0631\\u0628\\u0648\\u064a","daily_school_schedule":"\\u0627\\u0644\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a \\u0644\\u0644\\u062d\\u0635\\u0635","experimental_tests_only":"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","language_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0644\\u063a\\u0629","library_management":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","management_of_educational_content":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","paid_educational_content_only":"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639","paid_tests_only":"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0629","transfer_students":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","student_marks":"\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","student_achievements":"\\u0645\\u0644\\u0641\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","mandatory":"\\u0625\\u062c\\u0628\\u0627\\u0631\\u064a","optional":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a","add_academic_dues":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","due_value":"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629","due_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641","skills_administration":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a","student_information":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","current_semester":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","current_grade":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","current_class":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","the_first":"\\u0627\\u0644\\u0623\\u0648\\u0644","recycle_bin":"\\u0633\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0644\\u0627\\u062a","asset_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0635\\u0648\\u0644","improper_data_file_submitted":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0631\\u0633\\u0644 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\\u0629","deleted_records":"\\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u062d\\u0630\\u0648\\u0641\\u0629","deleted_at":"\\u0627\\u0644\\u0645\\u062d\\u0630\\u0648\\u0641\\u0629 \\u0641\\u064a","retrieve":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639","subjectpreferences":"\\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0641\\u0636\\u0644\\u0629","record_retrieved_successfully":"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","the_second":"\\u0627\\u0644\\u062b\\u0627\\u0646\\u064a","deleted_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d","academic_dues_of_academic":"\\u0627\\u0644\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","create_rapid_expense":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","add_rapid_expenses":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","add_expenses":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","uniform":"\\u0627\\u0644\\u0632\\u064a \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f","edit_academic_dues":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","table_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644","updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u0646\\u062c\\u0627\\u062d","this_record_will_be_back_in_system":"\\u0633\\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0631\\u0647 \\u0627\\u062e\\u0631\\u064a \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645","recover_it":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0639\\u0647\\u0627","recovered":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639","your_record_has_been_recovered":"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","retrieved_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0628\\u0646\\u062c\\u0627\\u062d","all_expenses":"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","school_or_board_annual_examination_last_taken_and_result":"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0633\\u0646\\u0648\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0649 \\u062a\\u0645 \\u0627\\u062e\\u0630\\u0647\\u0627 \\u0648\\u0627\\u0644\\u0646\\u062a\\u0627\\u0626\\u062c","skill_deleted_successfully":"\\u062a\\u0645 \\u062e\\u0630\\u0641 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0647 \\u0628\\u0646\\u062c\\u0627\\u062d","edit_rapid_expenses":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","edit_expenses":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","session_number":"\\u0627\\u0644\\u062d\\u0635\\u0629","course_parent":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","add_new_expenses":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u062c\\u062f\\u064a\\u062f\\u0629","saved_successfully":"\\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0628\\u0646\\u062c\\u0627\\u062d","parent_purchase":"\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0645\\u0646 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","expenses_of":"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628","payed":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639","remained":"\\u0627\\u0644\\u0645\\u062a\\u0628\\u0642\\u064a","expenses":"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","and_his_value_is":"\\u0648\\u0642\\u064a\\u0645\\u062a\\u0647","your_money":"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628","logged_users":"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644","users_records":"\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","user_ip":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628","first_term":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u0623\\u0648\\u0644","second_term":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a","classes":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0635\\u0644","this_student_did_not_take_exams":"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0644\\u0645 \\u064a\\u0623\\u062e\\u0630 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","not_exist":"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f","students_marks_of_teacher":"\\u062f\\u0631\\u062c\\u0627\\u062a \\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 ","create_expenses_items":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","all_expenses_items":"\\u062c\\u0645\\u064a\\u0639 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","delete_all_records":"\\u062d\\u0630\\u0641 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a","user_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","one":"\\u0627\\u0644\\u0627\\u0648\\u0644","two":"\\u0627\\u0644\\u062b\\u0627\\u0646\\u064a","you_will_not_be_able_to_recover_this_records":"\\u0644\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0642\\u0627\\u062f\\u0631\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a","main_topic":"\\u0627\\u0644\\u062f\\u0631\\u0633 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a","sub_topic":"\\u0627\\u0644\\u062f\\u0631\\u0633 \\u0627\\u0644\\u0641\\u0631\\u0639\\u064a","outstanding_students_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0645\\u064a\\u0632\\u064a\\u0646","excellence_ratio":"\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0645\\u064a\\u0632","this_student_did_not_take_this_exam":"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 \\u0644\\u0645 \\u064a\\u0623\\u062e\\u0630 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","no_subject_available_for_this_teacher":"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0627\\u062f\\u0629 \\u0645\\u062e\\u0635\\u0635\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","for":"\\u0644\\u0640\\u0640\\u0640","expense_item":"\\u0628\\u0646\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","expenses_items":"\\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","edit_expense_item":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","minutes":"\\u0627\\u0644\\u062f\\u0642\\u0627\\u0626\\u0642","skills_menu":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a","select_all_fields_please":"\\u0627\\u062e\\u062a\\u0631 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062d\\u0642\\u0648\\u0644 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643","academic_expenses":"\\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocation_of_expenses_to_classrooms":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0644\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","add_expenses_items":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","pay":"\\u0633\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a","the_amount_paid":"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639","remaining_amount":"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062a\\u0628\\u0642\\u064a","payed_successfully":"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f","mandatory_items":"\\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0627\\u0644\\u0632\\u0627\\u0645\\u064a\\u0629","payed_before":"\\u062a\\u0645 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644","optional_items":"\\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","deserved_amount":"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062d\\u0642","cancelled_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0644\\u063a\\u0627\\u0647","must_paid":"\\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u062f\\u0641\\u0639","applicable_categories":"\\u0641\\u0626\\u0627\\u062a \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642","branches":"\\u0627\\u0644\\u0641\\u0631\\u0648\\u0639","branches_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0641\\u0631\\u0648\\u0639","create_branch":"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0641\\u0631\\u0639","update_branch":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0641\\u0631\\u0639","please_update_master_setup_details_before_creating_users":"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0642\\u0628\\u0644 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","discount_is":"\\u0627\\u0644\\u062e\\u0635\\u0645 \\u0647\\u0648","and_it_value":"\\u0648\\u0642\\u064a\\u0645\\u0629","school_branch":"\\u0641\\u0631\\u0639 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","select_branch":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0631\\u0639","fix_database_tables":"\\u0625\\u0635\\u0644\\u0627\\u062d \\u062c\\u062f\\u0627\\u0648\\u0644 \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a","tables":"\\u0627\\u0644\\u062c\\u062f\\u0627\\u0648\\u0644","updated_by_ip":"updated_by_ip","created_by_ip":"created_by_ip","created_by_user":"created_by_user","updated_by_user":"updated_by_user","record_status":"record_status","branch_id":"branch_id","fix_all":"\\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0643\\u0644","tables_fixed":"\\u0627\\u0644\\u062c\\u062f\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0628\\u062a\\u0629","create_question":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0624\\u0627\\u0644","assign_lms_items":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","first_semester":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0623\\u0648\\u0644","been_paid":"\\u062a\\u0645 \\u062f\\u0641\\u0639","coupon":"\\u0643\\u0648\\u0628\\u0648\\u0646","percent_can_not_exceed":"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0645\\u0626\\u0648\\u064a\\u0629 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u062a\\u062a\\u062c\\u0627\\u0648\\u0632","invalid_email":"\\u0628\\u0631\\u064a\\u062f \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u062e\\u0627\\u0637\\u0626","download_single_answer_file":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0625\\u062c\\u0627\\u0628\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629","download_multi_answer_file":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u062c\\u0627\\u0628\\u0629","download_fill_the_blanks_file":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0645\\u0644\\u0623 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a","100":"100"}', '2017-08-12 00:27:26', '2018-04-16 06:34:55', '51.36.111.15', NULL, NULL, 1790, 2, 'languages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lessionplans`
--

CREATE TABLE IF NOT EXISTS `lessionplans` (
  `id` bigint(20) unsigned NOT NULL,
  `course_subject_id` bigint(20) unsigned NOT NULL,
  `topic_id` bigint(20) unsigned NOT NULL,
  `is_completed` tinyint(4) NOT NULL DEFAULT '0',
  `completed_on` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lessionplans'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessionplans`
--

INSERT INTO `lessionplans` (`id`, `course_subject_id`, `topic_id`, `is_completed`, `completed_on`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(25, 45, 54, 1, '2018-04-15', '2018-04-15 07:28:21', '2018-04-15 07:28:25', '51.36.111.15', '51.36.111.15', 1868, 1868, 2, 1, 'lessionplans');

-- --------------------------------------------------------

--
-- Table structure for table `libraryassetinstances`
--

CREATE TABLE IF NOT EXISTS `libraryassetinstances` (
  `id` bigint(20) unsigned NOT NULL,
  `asset_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library_prefix` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `series_prefix` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(50) NOT NULL,
  `library_master_id` bigint(20) unsigned NOT NULL,
  `status` enum('available','issued','damaged','lost') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'available',
  `asset_type` enum('reference','staff','general') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'general',
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libraryassetinstances'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libraryassettypes`
--

CREATE TABLE IF NOT EXISTS `libraryassettypes` (
  `id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libraryassettypes',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE IF NOT EXISTS `libraryissues` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `master_asset_id` bigint(20) unsigned NOT NULL,
  `library_instance_id` bigint(20) unsigned NOT NULL,
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
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `return_on` datetime DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'libraryissues'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `librarymasters`
--

CREATE TABLE IF NOT EXISTS `librarymasters` (
  `id` bigint(20) unsigned NOT NULL,
  `asset_type_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asset_belongs_to_subject` tinyint(4) NOT NULL DEFAULT '0',
  `subject_id` bigint(20) unsigned NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `publisher_id` bigint(20) unsigned NOT NULL,
  `isbn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_price` decimal(10,2) NOT NULL,
  `chargible_price_if_lost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `total_assets_count` int(10) unsigned NOT NULL DEFAULT '0',
  `total_assets_available` int(10) unsigned NOT NULL DEFAULT '0',
  `total_assets_issued` int(50) unsigned NOT NULL DEFAULT '0',
  `total_assets_damaged` int(10) unsigned NOT NULL DEFAULT '0',
  `total_assets_lost` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `other` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'librarymasters',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `librarymasters`
--

INSERT INTO `librarymasters` (`id`, `asset_type_id`, `title`, `slug`, `asset_belongs_to_subject`, `subject_id`, `author_id`, `publisher_id`, `isbn`, `edition`, `actual_price`, `chargible_price_if_lost`, `total_assets_count`, `total_assets_available`, `total_assets_issued`, `total_assets_damaged`, `total_assets_lost`, `image`, `description`, `other`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 1, 'التعليمات', 'altaalymat611', 0, 0, 1, 1, '12312312', '123123123', '200.00', '200.00', 0, 0, 0, 0, 0, '', '', '', 1790, '2018-02-22 07:23:17', '2018-03-26 06:36:01', NULL, '51.39.70.14', 1790, NULL, 2, 'librarymasters', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmscategories`
--

CREATE TABLE IF NOT EXISTS `lmscategories` (
  `id` bigint(20) unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmscategories',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmscategories`
--

INSERT INTO `lmscategories` (`id`, `category`, `slug`, `course_id`, `image`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(7, 'مواد الصف الاول الابتدائي', 'moad-alsf-alaol-alabtdaey819-da90309682d055fb9c3ba2a1d8bbe159809aed66', 17, '', '', 1790, '2018-04-12 10:26:48', '2018-04-12 10:26:48', NULL, '51.36.108.22', 1790, NULL, 1, 'lmscategories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmscontents`
--

CREATE TABLE IF NOT EXISTS `lmscontents` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `academic_id` int(11) NOT NULL DEFAULT '1',
  `sem_id` int(11) NOT NULL DEFAULT '1',
  `subject_id` bigint(20) unsigned NOT NULL,
  `course_id` int(11) NOT NULL DEFAULT '17',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `content_type` enum('file','video','audio','url','video_url','audio_url','iframe') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'file',
  `is_url` tinyint(1) NOT NULL DEFAULT '0',
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmscontents',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmscontents`
--

INSERT INTO `lmscontents` (`id`, `title`, `slug`, `image`, `academic_id`, `sem_id`, `subject_id`, `course_id`, `topic_id`, `content_type`, `is_url`, `file_path`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(11, 'تعظيم القرآن الكريم', 'taathym-alkraan-alkrym2306-7363f80388fc908b7ee2f0eb943355940dad87c7', '', 1, 1, 34, 17, 48, 'url', 0, 'https://ien.edu.sa/#/lesson/428', '<ul>\r\n	<li>يتوضأ قبل قراءة القرآن الكريم.</li>\r\n	<li>يستعيذ بالله من الشيطان الرجيم عند قراءة القرآن الكريم.</li>\r\n	<li>ينطق البسملة عندما يقرأ من أول السورة.</li>\r\n	<li>ينصت لقراءة القرآن الكريم.</li>\r\n	<li>يطبق الآداب أثناء تلاوة القرآن الكريم.</li>\r\n	<li>يضع المصحف في المكان اللائق به.</li>\r\n</ul>\r\n', 1790, '2018-04-12 09:49:55', '2018-04-14 07:16:00', '51.39.97.99', '51.36.108.22', 1790, 1790, 2, 'lmscontents', 1),
(12, 'من سيرة نبينا محمد صلى الله عليه وسلم صدقه, أمانته, شجاعته', 'mn-syr-nbyna-mhmd-sl-allh-aalyh-oslm-sdkh-amanth-shjaaath2329-ae2f7909b635643f1c149bbfa59815a12b63445a', '', 1, 1, 34, 17, 49, 'url', 0, 'https://ien.edu.sa/#/lesson/429', '<ul>\r\n	<li>يقتدي بالنبي صلى الله عليه وسلم.</li>\r\n	<li>يصلي على النبي حين ورود ذكره الشريف .</li>\r\n	<li>يحب النبي صلى الله عليه وسلم.</li>\r\n	<li>يذكر قصة من سيرة النبي تدل على الصدق أو الأمانة أو الشجاعة.</li>\r\n	<li>يتعرف على اسم والدي النبي صلى الله عليه وسلم.</li>\r\n	<li>يذكر بعض أخلاق النبي صلى الله عليه وسلم.</li>\r\n</ul>\r\n', 1790, '2018-04-14 07:07:11', '2018-04-14 07:18:56', '51.39.97.99', '51.39.97.99', 1790, 1790, 2, 'lmscontents', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmsseries`
--

CREATE TABLE IF NOT EXISTS `lmsseries` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_paid` tinyint(4) NOT NULL DEFAULT '0',
  `cost` decimal(10,2) NOT NULL,
  `validity` int(11) NOT NULL,
  `total_items` int(11) NOT NULL,
  `lms_category_id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmsseries',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmsseries`
--

INSERT INTO `lmsseries` (`id`, `title`, `slug`, `is_paid`, `cost`, `validity`, `total_items`, `lms_category_id`, `image`, `short_description`, `description`, `start_date`, `end_date`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(5, 'الفقة ', 'alfk2859', 0, '0.00', -1, 2, 7, '', '', '', '2018-04-12', '2018-07-20', 1790, '2018-04-12 10:28:07', '2018-04-15 00:07:18', '51.39.97.99', '51.36.108.22', 1790, 1790, 2, 'lmsseries', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmsseries_data`
--

CREATE TABLE IF NOT EXISTS `lmsseries_data` (
  `id` bigint(20) unsigned NOT NULL,
  `lmsseries_id` bigint(20) unsigned NOT NULL,
  `lmscontent_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lmsseries_data'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmsseries_data`
--

INSERT INTO `lmsseries_data` (`id`, `lmsseries_id`, `lmscontent_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(18, 5, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'lmsseries_data'),
(19, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'lmsseries_data');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'messenger_messages'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 1, 1795, 'رسالة للاختبار', '2017-08-15 05:47:18', '2017-08-15 05:47:18', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(2, 1, 1790, 'شكرا لك \r\nمنتصر', '2017-08-15 05:48:34', '2017-08-15 05:48:34', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(3, 2, 1790, 'سيتم اخذ الاجراءات الازمه \r\nشكرا جزيلا', '2018-02-13 07:36:37', '2018-02-13 07:36:37', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(4, 3, 1868, 'السلام عليكم \r\nارجو المساعدة والرد على الرسالة \r\nالمعلم teacher5', '2018-02-14 07:06:27', '2018-02-14 07:06:27', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(5, 3, 1790, 'شكرا لك على الارسال \r\nتم الرد من مدير التعليم الالكتروني', '2018-02-14 07:07:11', '2018-02-14 07:07:11', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(6, 3, 1802, 'اهلا وسهلا اخي الكريم ارجو توضيح رسالتك ', '2018-02-14 07:08:37', '2018-02-14 07:08:37', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(7, 3, 1868, 'شكرا لكم على الرد \r\nجزاكم الله خيرا ', '2018-02-14 07:09:33', '2018-02-14 07:09:33', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(8, 4, 1870, 'رسالة جديدة للتجربه من مدير المكتبة', '2018-02-14 09:02:02', '2018-02-14 09:02:02', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(9, 4, 1790, 'اهلا وسهلا ومرحبا', '2018-02-14 09:02:30', '2018-02-14 09:02:30', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(10, 5, 1790, 'السلام عليكم هذا ترحيب بكم فى النظام ', '2018-02-16 06:34:48', '2018-02-16 06:34:48', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(11, 5, 1878, 'thanks alot Mr Admin', '2018-02-16 06:35:51', '2018-02-16 06:35:51', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(12, 6, 1835, 'السلام عليكم \r\nمطلوب اجتماع خلال يومين \r\nوشكرا', '2018-03-12 02:49:27', '2018-03-12 02:49:27', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages'),
(13, 6, 1790, 'وعليكم السلام \r\nتم تحديد الاجتماع غدا ان شاء الله ', '2018-03-12 02:52:22', '2018-03-12 02:52:22', NULL, NULL, NULL, NULL, 1, 1, 'messenger_messages');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_participants`
--

CREATE TABLE IF NOT EXISTS `messenger_participants` (
  `id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'messenger_participants'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_participants`
--

INSERT INTO `messenger_participants` (`id`, `thread_id`, `user_id`, `last_read`, `created_at`, `updated_at`, `deleted_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 1, 1795, '2017-08-15 05:47:22', '2017-08-15 05:47:18', '2017-08-15 05:47:22', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(2, 1, 1790, '2017-12-25 09:37:25', '2017-08-15 05:47:18', '2017-12-25 09:37:25', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(3, 2, 1790, '2018-02-13 07:38:33', '2018-02-13 07:36:37', '2018-02-13 07:38:33', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(4, 2, 1873, NULL, '2018-02-13 07:36:37', '2018-02-13 07:36:37', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(5, 3, 1868, '2018-03-15 06:11:41', '2018-02-14 07:06:27', '2018-03-15 06:11:41', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(6, 3, 1790, '2018-02-14 07:09:43', '2018-02-14 07:06:27', '2018-02-14 07:09:43', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(7, 3, 1796, '2018-04-15 00:17:54', '2018-02-14 07:06:27', '2018-04-15 00:17:54', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(8, 3, 1802, '2018-02-14 07:22:11', '2018-02-14 07:06:27', '2018-02-14 07:22:11', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(9, 4, 1870, '2018-02-14 09:02:42', '2018-02-14 09:02:02', '2018-02-14 09:02:42', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(10, 4, 1790, '2018-02-19 04:16:47', '2018-02-14 09:02:02', '2018-02-19 04:16:47', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(11, 5, 1790, '2018-02-16 06:36:06', '2018-02-16 06:34:48', '2018-02-16 06:36:06', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(12, 5, 1878, '2018-02-16 06:35:51', '2018-02-16 06:34:48', '2018-02-16 06:35:51', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(13, 6, 1835, '2018-03-13 06:55:18', '2018-03-12 02:49:27', '2018-03-13 06:55:18', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants'),
(14, 6, 1790, '2018-03-22 07:05:12', '2018-03-12 02:49:27', '2018-03-22 07:05:12', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_participants');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_threads`
--

CREATE TABLE IF NOT EXISTS `messenger_threads` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'messenger_threads'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_threads`
--

INSERT INTO `messenger_threads` (`id`, `subject`, `created_at`, `updated_at`, `deleted_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 'رسالة جديدة', '2017-08-15 05:47:18', '2017-08-15 05:48:34', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_threads'),
(2, 'شكرا لك على الاقتراح ', '2018-02-13 07:36:37', '2018-02-13 07:36:37', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_threads'),
(3, 'مرحبا بكم ارجو المساعده', '2018-02-14 07:06:27', '2018-02-14 07:09:33', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_threads'),
(4, 'السلام عليكم ', '2018-02-14 09:02:02', '2018-02-14 09:02:30', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_threads'),
(5, 'مرحبا سيادة المدير', '2018-02-16 06:34:48', '2018-02-16 06:35:51', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_threads'),
(6, 'مطلوب اجتماع عاجل', '2018-03-12 02:49:27', '2018-03-12 02:52:22', NULL, NULL, NULL, NULL, NULL, 1, 1, 'messenger_threads');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'migrations'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `created_at`, `updated_at`, `table_name`) VALUES
('2014_10_12_000000_create_users_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_10_12_100000_create_password_resets_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_03_064954_create_categories_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_03_065219_create_groups_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_03_065542_create_religions_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_03_124331_entrust_setup_tables', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_04_103906_create_staff_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_04_120754_create_departments_table', 1, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_051533_create_subjects_table', 2, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_055114_create_topics_table', 3, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_060004_create_grades_table', 4, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_061136_create_courses_table', 5, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_061850_create_semisters_table', 5, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_062918_create_academics_table', 6, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_063211_create_academic_courses_table', 7, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_084952_create_course_subject_table', 8, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_08_105532_create_students_table', 9, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_11_063359_create_feecategories_table', 10, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_11_084226_create_feecategories_academiccours_table', 11, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_11_133218_create_feeparticulars_table', 12, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_13_053203_create_feeschedules_table', 13, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_13_054213_create_feeschedules_academiccourses_table', 13, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_15_173616_create_coursesemisters_table', 14, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_21_071054_create_fines_table', 15, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_21_081251_create_feediscounts_table', 16, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_23_054631_create_questionbank_table', 17, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_24_164447_create_libraryassettypes_table', 18, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_25_010303_create_librarymasters_table', 19, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_25_025855_create_authors_table', 20, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_25_025920_create_publishers_table', 20, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_25_142623_create_libraryassetinstances_table', 21, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_28_052506_create_quizcategories_table', 22, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_28_071010_create_quizzes_table', 23, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_06_28_100819_create_questionbank_quizzes_table', 24, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_02_010553_create_libraryissues_table', 24, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_06_014807_create_lmscategories_table', 25, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_06_033653_create_lmscontents_table', 26, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_08_025939_create_subscriptions_table', 27, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_10_28_175635_create_threads_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_10_28_175710_create_messages_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_10_28_180224_create_participants_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_11_03_154831_add_soft_deletes_to_participants_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_11_10_083449_add_nullable_to_last_read_in_participants_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_11_20_131739_alter_last_read_in_participants_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2014_12_04_124531_add_softdeletes_to_threads_table', 28, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_18_091544_create_quizresults_table', 29, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_19_102858_create_emailtemplates_table', 30, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_20_042956_create_activity_log_table', 31, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_27_091354_create_studentpromotions_table', 32, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_07_27_120013_create_studentattendance_table', 33, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_08_02_073034_create_packages_table', 34, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_08_29_043256_create_settings_table', 35, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_02_095405_create_instructions_table', 36, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_05_091459_create_bookmarks_table', 37, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_05_094520_create_examseries_table', 38, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_07_105933_create_examseries_data_table', 39, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_08_101822_create_payments_table', 40, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_13_104746_create_couponcodes_table', 41, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_16_160343_create_lmsseries_table', 42, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_17_052834_create_notifications_table', 43, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_21_105036_create_examtoppers_table', 44, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_09_26_154438_create_feedbacks_table', 45, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_10_13_120753_create_certifacates_table', 46, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_08_154208_create_academicholidays_table', 47, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_11_152540_create_subjectpreferences_table', 48, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_11_170621_create_staffsubjectpreferences_table', 48, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_18_102414_create_lessionplans_table', 49, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_21_150439_create_quizapplicability_table', 50, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_28_155556_create_certificateissues_table', 51, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_11_30_150454_create_timingset_table', 52, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_12_02_053525_create_timingsetdetails_table', 53, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_12_02_144453_create_timingsetmap_table', 54, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2016_12_05_181425_create_timetable_table', 55, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2017_01_02_101856_create_modulehelper_table', 56, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations'),
('2017_01_04_181707_create_quizofflinecategories_table', 57, NULL, NULL, NULL, NULL, 1, 1, '0000-00-00 00:00:00', NULL, 'migrations');

-- --------------------------------------------------------

--
-- Table structure for table `modulehelper`
--

CREATE TABLE IF NOT EXISTS `modulehelper` (
  `id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'modulehelper',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modulehelper`
--

INSERT INTO `modulehelper` (`id`, `title`, `slug`, `help_link_text`, `is_enabled`, `settings`, `steps`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'Add Academic', 'add-academic', 'Help', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483355160447","element":"#academic_year_title","title":"Year Title","content":"Academic year title","placement":"top","sort_order":"1"},{"id":"1483358089212","element":"#dp1","title":"Select Start Date","content":"Select academic year start date","placement":"top","sort_order":"2"},{"id":"1483358142612","element":"#dp2","title":"Select End Date","content":"Select academic year end date","placement":"top","sort_order":"3"},{"id":"1484648854654","element":".helper_step1","title":"Show In List","content":"Choose To The Year Should Display In,  Academic Year Selection List.","placement":"top","sort_order":"4"},{"id":"1484644713266","element":".helper_step2","title":"List","content":"Click To See The Academic Years","placement":"top","sort_order":"5"}]', '2017-01-02 06:39:45', '2017-01-17 10:28:55', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(2, 'Users List', 'users-list', 'Help Me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483363525771","element":".helper_step1","title":"Add User","content":"Click to add user","placement":"top","sort_order":"1"},{"id":"1483363635433","element":"#helper_step2","title":"View Profile","content":"Click on user name to view profile","placement":"top","sort_order":"2"},{"id":"1483420107566","element":"#helper_step3","title":"Do More","content":"Click below to do more operations","placement":"top","sort_order":"3"}]', '2017-01-02 13:15:47', '2017-01-03 05:29:03', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(3, 'Create User', 'create-user', 'Help Me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483421733646","element":"#name","title":"Name","content":"Enter Name","placement":"right","sort_order":"1"},{"id":"1483421780644","element":"#username","title":"Username","content":"Enter Username","placement":"right","sort_order":"2"},{"id":"1483421804900","element":"#email","title":"Email","content":"Enter Email","placement":"right","sort_order":"3"},{"id":"1483421908275","element":"#role_id","title":"Role","content":"Select the user role","placement":"right","sort_order":"4"},{"id":"1483423430397","element":"#phone","title":"phone","content":"enter phone number","placement":"right","sort_order":"5"},{"id":"1483423500363","element":"#address","title":"address","content":"enter user address","placement":"right","sort_order":"6"},{"id":"1483423542327","element":"#image_input","title":"image","content":"upload the user image","placement":"right","sort_order":"7"},{"id":"1483423755786","element":".helper_step1","title":"all users list","content":"to see all users","placement":"right","sort_order":"8"}]', '2017-01-03 05:34:43', '2017-01-03 06:09:16', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(4, 'Allocate Certificate', 'allocate-certificate', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483761469964","element":"#certificate_type","title":"Certificate Type","content":"Select the certificate type","placement":"top","sort_order":"1"},{"id":"1483761895748","element":"#enter-details","title":"Search ","content":"Search Student","placement":"top","sort_order":"2"}]', '2017-01-07 03:56:50', '2017-01-17 05:51:54', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(5, 'Quiz Category List', 'quiz-category -list', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483762708819","element":".helper_step1","title":"Create","content":"click to add a category","placement":"top","sort_order":"1"},{"id":"1483762822734","element":"#helper_step2","title":"Do More","content":"Click to do more operations","placement":"top","sort_order":"2"}]', '2017-01-07 04:15:29', '2017-01-07 04:23:52', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(6, 'Create Category', 'create-quiz-category', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483763233670","element":"#category","title":"Name","content":"Enter Category Name","placement":"right","sort_order":"1"},{"id":"1483763284879","element":"#image_input","title":"Image","content":"Select the image","placement":"top","sort_order":"2"},{"id":"1483763330904","element":"#description","title":"Description","content":"Enter Description","placement":"top","sort_order":"3"},{"id":"1483763412227","element":".helper_step1","title":"List","content":"See tha all categories","placement":"top","sort_order":"4"}]', '2017-01-07 04:25:22', '2017-01-07 04:30:13', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(7, 'Offline Exams List', 'offlineexams-list', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483790037912","element":".helper_step1","title":"Excel","content":"Import excel sheet","placement":"top","sort_order":"1"},{"id":"1483790246722","element":"#helper_step2","title":"Particulars","content":"Click to select exam details","placement":"top","sort_order":"2"},{"id":"1483790297053","element":"#helper_step3","title":"Do More","content":"Click to do more operations","placement":"top","sort_order":"3"}]', '2017-01-07 11:53:18', '2017-01-07 11:58:17', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(8, 'Academic Year', 'academic-year', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484644222708","element":".helper_step1","title":"Create","content":"Add Academic Year","placement":"top","sort_order":"1"},{"id":"1484644395417","element":"#helper_step2","title":"View Branches","content":"Click on year to view the branches","placement":"top","sort_order":"2"},{"id":"1484644436772","element":"#helper_step3","title":"Do More","content":"Click to do more operations","placement":"top","sort_order":"3"}]', '2017-01-17 09:06:04', '2017-01-17 09:13:58', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(9, 'Courses List', 'courses-list', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484645288983","element":".helper_step1","title":"Add Course","content":"Click To Add Course","placement":"top","sort_order":"1"},{"id":"1484645326429","element":"#helper_step2","title":"Do More","content":"Click To Do More Operations","placement":"top","sort_order":"2"}]', '2017-01-17 09:25:53', '2017-01-17 09:30:09', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(10, 'Add Course', 'create-course', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484645608823","element":".helper_step1","title":"View Courses","content":"Click to View Courses.","placement":"top","sort_order":"1"},{"id":"1484645817343","element":"#parent_id","title":"Select Parent","content":"Click To Select Parent Course. If Parent Course Is Not Avilale Select Option -Parent.","placement":"top","sort_order":"2"},{"id":"1484646049560","element":"#course_title","title":"Course Name","content":"Click To Enter Course Name.","placement":"top","sort_order":"3"},{"id":"1484646100461","element":"#course_code","title":"Course Code.","content":"Click To Enter Course Code.","placement":"top","sort_order":"4"},{"id":"1484646231017","element":"#course_duration","title":"Course Dueration","content":"Click To Select Course Dueration","placement":"top","sort_order":"5"},{"id":"1484646285379","element":"#grade_system","title":"Grade System","content":"Click To Select Grade System","placement":"top","sort_order":"6"},{"id":"1484646395749","element":".helper_step2","title":"Choose","content":"Choose To Course Having Semister or Not","placement":"top","sort_order":"7"},{"id":"1484646608236","element":".helper_step3","title":"Choose Electives","content":"Choose The Course Having Electives Or Not","placement":"top","sort_order":"8"},{"id":"1484646662771","element":".helper_step4","title":"Description","content":"Click Enter Some Description About Course","placement":"top","sort_order":"9"}]', '2017-01-17 09:31:38', '2017-01-17 09:51:49', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(11, 'Allocate Course To  Academic Year', 'allocate-course-to-academics', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484647503151","element":".helper_step1","title":"Academic Years","content":"Click To View The Academic Years","placement":"top","sort_order":"1"},{"id":"1484647552794","element":".helper_step2","title":"Allocate Course","content":"Drag The Courses From Course List ,To Academic Year","placement":"top","sort_order":"2"}]', '2017-01-17 09:59:04', '2017-01-17 10:22:51', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(12, 'Subjects List', 'subjects-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484649954620","element":".helper_step2","title":"Create Subject","content":"Click To Create A Subject","placement":"left","sort_order":"2"},{"id":"1484650003857","element":".helper_step1","title":"Import","content":"Click Import Subjects From Excel Sheet","placement":"left","sort_order":"1"},{"id":"1484650035964","element":"#helper_step3","title":"Do More","content":"Click To Do More Operations","placement":"left","sort_order":"3"}]', '2017-01-17 10:43:28', '2017-01-17 10:53:43', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(13, 'Create Subject', 'create-subjects', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484650589096","element":".helper_step1","title":"Subjects List","content":"Click To View Subjects List","placement":"top","sort_order":"1"},{"id":"1484650656766","element":"#subject_title","title":"Subject Title","content":"Click To Enter Subject Title","placement":"top","sort_order":"2"},{"id":"1484650706217","element":"#subject_code","title":"Subject Code","content":"Click To Enter Subject Code","placement":"top","sort_order":"3"},{"id":"1484650886605","element":".helper_step2","title":"Lab Type","content":"Choose ,The Subject Is Lab Or Not?","placement":"top","sort_order":"4"},{"id":"1484650953574","element":".helper_step3","title":"Elective Type","content":"Choose, The Subject Is Elective Or Not?","placement":"top","sort_order":"5"},{"id":"1484651013134","element":"#internal_marks","title":"Internal Marks","content":"Click To Enter Internal Marks","placement":"top","sort_order":"6"},{"id":"1484651062339","element":"#external_marks","title":"External Marks","content":"Click To Enter External Marks","placement":"top","sort_order":"7"},{"id":"1484651125335","element":"#maximum_marks","title":"Maximum Marks","content":"Click To Enter Maximum Marks","placement":"top","sort_order":"8"},{"id":"1484651175849","element":"#pass_marks","title":"Pass Marks","content":"Click To Enter Pass Marks","placement":"top","sort_order":"9"}]', '2017-01-17 10:54:54', '2017-01-17 11:06:17', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(14, 'Allocate Subject To Course', 'allocate-subject-to-course', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484653645311","element":".helper_step1","title":"Courses","content":"Click To View Courses List","placement":"top","sort_order":"1"},{"id":"1484653734854","element":".helper_step2","title":"Allocate Subjects","content":"Drag The Subjects From Subject List To Course","placement":"top","sort_order":"2"},{"id":"1484654108570","element":"#sessions","title":"Sessions","content":"Click To Enter Number of Classes Needed","placement":"top","sort_order":"3"},{"id":"1484653874173","element":".helper_step3","title":"Update","content":"Click To Update The List","placement":"top","sort_order":"4"}]', '2017-01-17 11:43:11', '2017-01-17 11:56:21', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(15, 'Courses List For Staff', 'courses-list-for-staff', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484654588311","element":".helper_step1","title":"Courses List","content":"Add or Edit The Courses","placement":"left","sort_order":"1"},{"id":"1484654675870","element":"#helper_step2","title":"Academic Year","content":"Click on Academic Year To Allocate Subject To Staff","placement":"top","sort_order":"2"},{"id":"1484654708424","element":"#helper_step3","title":"Do More","content":"Click Here To Do More Operations","placement":"top","sort_order":"3"}]', '2017-01-17 12:01:42', '2017-01-17 12:05:09', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(16, 'Alloacate Staff To Subjects', 'allocate-staff-to-subjects', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484655088469","element":".helper_step2","title":"List","content":"Click To View Academic Years For Staff Allocation","placement":"top","sort_order":"1"},{"id":"1484655177303","element":".helper_step3","title":"Allocate Staff","content":"Drag The Staff From Staff List To Course Subjects","placement":"top","sort_order":"2"},{"id":"1484655222153","element":".helper_step4","title":"Delete","content":"Click To Delete The Allocated Staff","placement":"top","sort_order":"3"},{"id":"1484655272803","element":".helper_step1","title":"Update","content":"Click To Update The List","placement":"top","sort_order":"4"}]', '2017-01-17 12:08:09', '2017-01-17 12:15:06', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(17, 'Topics List', 'topics-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484656059663","element":".helper_step1","title":"Add Topic","content":"Create Topic Name","placement":"top","sort_order":"1"},{"id":"1484656198927","element":"#helper_step3","title":"Do More","content":"Click Here To Do More Options","placement":"top","sort_order":"2"},{"id":"1484656246383","element":".helper_step4","title":"Import","content":"Click Here To Import Topics List","placement":"top","sort_order":"3"}]', '2017-01-17 12:23:04', '2017-01-17 12:31:22', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(18, 'Create Topics', 'create-topics', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484656849524","element":".helper_step1","title":"Topics","content":"Click Here To View The Topics","placement":"top","sort_order":"1"},{"id":"1484656891857","element":"#subject","title":"Subject","content":"Click Here To Select The Subject","placement":"top","sort_order":"2"},{"id":"1484656989948","element":"#parent","title":"Parent Topic","content":"Click Here To Select Parent Topic,If Parent Topic Is Not Available Select As Parent.","placement":"top","sort_order":"3"},{"id":"1484657046000","element":"#topic_name","title":"Topic Name","content":"Click Here To Enter Parent Name","placement":"top","sort_order":"4"},{"id":"1484657117811","element":"#description","title":"Description","content":"Click To Enter Information About Topic","placement":"top","sort_order":"5"}]', '2017-01-17 12:37:33', '2017-01-17 12:46:31', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(19, 'Master SetupDashboard', 'mastersetup-dashboard', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484724527786","element":".helper_step1","title":"Academic Year","content":"Click Here To Do Academic Mangment","placement":"top","sort_order":"1"},{"id":"1484724571459","element":".helper_step2","title":"Create Course","content":"Click Here To Manage Courses List","placement":"top","sort_order":"2"},{"id":"1484724607648","element":".helper_step3","title":"Courses List","content":"Click Here To View Courses List","placement":"top","sort_order":"3"},{"id":"1484724683708","element":".helper_step4","title":"Subject Master","content":"Click Here Create Subjects","placement":"top","sort_order":"4"},{"id":"1484724732089","element":".helper_step5","title":"Topics Listq","content":"Click Here To Create Topics To Corresponding Subjects","placement":"top","sort_order":"5"},{"id":"1484724802692","element":".helper_step6","title":"Allocate To Course","content":"Click Here To Allocate Subject ,To Course and Year","placement":"top","sort_order":"6"},{"id":"1484724844202","element":".helper_step7","title":"Allocate Staff","content":"Click Here To Allocate Staff To Course","placement":"top","sort_order":"7"}]', '2017-01-18 07:26:47', '2017-01-18 07:34:06', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(20, 'Exams Dashboard', 'exams-dashboard', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484820063234","element":".helper_step1","title":"Categories","content":"Click here to manage Quiz Categories","placement":"top","sort_order":"1"},{"id":"1484820113226","element":".helper_step2","title":"Question Bank","content":"Click to Create questions","placement":"top","sort_order":"2"},{"id":"1484820157271","element":".helper_step3","title":"Quizzes","content":"Click here to manage Quizzes","placement":"top","sort_order":"3"},{"id":"1484820217628","element":".helper_step4","title":"Offline Quiz Categories","content":"Click to manage offline quiz categories","placement":"top","sort_order":"4"},{"id":"1484820259113","element":".helper_step5","title":"Exam Series","content":"Click to manage exam series","placement":"top","sort_order":"5"},{"id":"1484820308086","element":".helper_step6","title":"Instructions","content":"Click to manage instructions","placement":"top","sort_order":"6"}]', '2017-01-19 09:59:35', '2017-01-19 10:05:09', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(21, 'Exams Instructions', 'exams-instructions-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484823960618","element":".helper_step1","title":"Add Instruction","content":"Click here to create instruction","placement":"top","sort_order":"1"},{"id":"1484823992631","element":"#helper_step2","title":"Do more","content":"Click here to do more operations","placement":"top","sort_order":"2"}]', '2017-01-19 11:05:14', '2017-01-19 11:06:48', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(22, 'Add Instruction', 'add-instruction', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '', '2017-01-19 11:08:29', '2017-01-19 11:08:29', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(23, 'Offline Exams Categories', 'list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484887174961","element":".helper_step1","title":"Add Category","content":"Click to create category","placement":"top","sort_order":"1"},{"id":"1484887211616","element":"#helper_step2","title":"Do more","content":"Click here to do more operations","placement":"top","sort_order":"2"}]', '2017-01-20 04:38:50', '2017-01-20 04:40:13', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(24, 'Create Offline Exams Categories', 'create-category', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484887761531","element":".helper_step1","title":"View Categories","content":"Click here to view categories","placement":"top","sort_order":"1"},{"id":"1484887817336","element":"#title","title":"Title","content":"Click to enter Category Name","placement":"top","sort_order":"2"}]', '2017-01-20 04:41:40', '2017-01-20 04:50:18', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(25, 'Quizzes List', 'quiz-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484891026208","element":".helper_step1","title":"Add Quiz","content":"Click to create Quiz","placement":"top","sort_order":"1"},{"id":"1484891073119","element":".helper_step2","title":"Exam Series","content":"Click to view exam series","placement":"top","sort_order":"2"},{"id":"1484891124778","element":"#helper_step3","title":"Add Questions","content":"Click on title to add questions for particular quiz","placement":"top","sort_order":"3"},{"id":"1484891163681","element":"#helper_step4","title":"Do more","content":"Click here to do more operations","placement":"top","sort_order":"4"}]', '2017-01-20 05:41:56', '2017-01-20 05:46:05', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(26, 'SMS Settings', 'sms_settings', 'sms-settings', 0, '{"sms_driver":{"value":"nexmo","type":"select","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Select SMS driver"},"nexmo_key":{"value":"NEXMO_KEY","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Nexmo API Key"},"nexmo_secret":{"value":"NEXMO_SECRET","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Enter Nexmo Secret Key"},"plivo_auth_id":{"value":"PLIVO_AUTH_ID","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Enter Plivo Auth ID"},"plivo_auth_token":{"value":"PLIVO_AUTH_TOKEN","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Plivo Auth Token"},"twilio_sid":{"type":"text","value":"TWILIO_SID","extra":"","tool_tip":"Twilio SID"},"twilio_token":{"type":"text","value":"TWILIO_TOKEN","extra":"","tool_tip":"Twilio Token"}}', 'Contains settings for SMS', '2017-01-25 05:10:09', '2017-01-25 05:30:16', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1),
(27, 'Users Dashboard', 'users-dashborad-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484907068366","element":".helper_step1","title":"Owner","content":"Click to view owners list","placement":"top","sort_order":"1"},{"id":"1484907100291","element":".helper_step2","title":"Admin","content":"Click to view admins list","placement":"top","sort_order":"2"},{"id":"1484907141873","element":".helper_step3","title":"Students","content":"Click to view students list","placement":"top","sort_order":"3"},{"id":"1484907161016","element":".helper_step4","title":"Staff","content":"Click to view staff list","placement":"top","sort_order":"4"},{"id":"1484907190222","element":".helper_step5","title":"Librarians","content":"Click to view librarians list","placement":"top","sort_order":"5"},{"id":"1484907245638","element":".helper_step6","title":"Assistant Librarian","content":"Click to view Assistant Librarians list","placement":"top","sort_order":"6"},{"id":"1484907279273","element":".helper_step7","title":"Parents","content":"Click to view parents list","placement":"top","sort_order":"7"},{"id":"1484907301656","element":".helper_step8","title":"All Users","content":"Click to view all users list","placement":"top","sort_order":"8"},{"id":"1484907331522","element":".helper_step9","title":"Add  User","content":"Click here to Create User","placement":"top","sort_order":"9"}]', '2017-01-20 10:08:51', '2017-01-20 10:16:08', NULL, NULL, NULL, NULL, 1, 'modulehelper', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'notifications',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `slug`, `short_description`, `description`, `url`, `valid_from`, `valid_to`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(6, 'اختبارات اللغة العربية الصف الاول الابتدائي', 'akhtbarat-allgh-alaarby-alsf-alaol-alabtdaey', 'نماذج اختبارات لمادة اللغة العربية و التربية الاسلامية و الرياضيات و التربية الوطنية للصف الأول الابتدائي', '<p>نماذج اختبارات لمادة اللغة العربية و التربية الاسلامية و الرياضيات و التربية الوطنية للصف الأول الابتدائي تقدم شبكة أطلس نماذج اختبارات لمادة اللغة العربية و التربية الاسلامية و الرياضيات و التربية الوطنية للصف الأول الابتدائي من اعداد مختصي المرحلة الدنيا . لرؤية المحتوى اضغط على الصورة او الرابط التالي: نماذج اختبارات لمادة ...</p>\r\n', 'www.sasbit.com', '2018-02-14', '2018-02-28', 1790, '2018-02-14 08:38:46', '2018-02-14 09:01:14', NULL, NULL, NULL, NULL, 1, 'notifications', 1),
(7, 'test1', 'test1', 'test cause', '<p>test cause</p>\r\n', 'https://www.facebook.com/', '2018-02-14', '2018-02-21', 1790, '2018-02-14 08:40:30', '2018-03-26 06:56:39', NULL, NULL, NULL, NULL, 2, 'notifications', 1),
(8, 'اشعار جديد', 'ashaaar-jdyd', 'يشسبشسيب', '<p>يشبشسي</p>\r\n', 'nbe.com.eg', '2018-02-14', '2018-02-23', 1790, '2018-02-14 09:05:17', '2018-02-14 09:05:17', NULL, NULL, NULL, NULL, 1, 'notifications', 1),
(9, 'اختبارات اللغة العربية الصف الاول الابتدائي', 'akhtbarat-allgh-alaarby-alsf-alaol-alabtdaey593', 'asdSD', '<p>Ad</p>\r\n', 'https://www.google.com.sa/search?q=url+print+online&oq=url+print+online&aqs=chrome..69i57j0l2.9655j0j7&sourceid=chrome&ie=UTF-8', '2018-02-15', '2018-02-28', 1790, '2018-02-15 08:48:51', '2018-02-15 08:48:51', NULL, NULL, NULL, NULL, 1, 'notifications', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parenttimingsetmap`
--

CREATE TABLE IF NOT EXISTS `parenttimingsetmap` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET latin1 NOT NULL DEFAULT 'parenttimingsetmap',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'password_resets'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'payments',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `slug`, `item_id`, `item_name`, `user_id`, `start_date`, `end_date`, `plan_type`, `payment_gateway`, `transaction_id`, `paid_by_parent`, `paid_by`, `cost`, `coupon_applied`, `coupon_id`, `actual_cost`, `discount_amount`, `after_discount`, `paid_amount`, `payment_status`, `other_details`, `transaction_record`, `notes`, `admin_comments`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(39, '44aa2b0f129159395109c544f28b7dd4f08fb81c1379', 0, '-الرسوم الدراسية<br>-الزي الموحد.<br>', 1877, '0000-00-00', '0000-00-00', 'academic_expenses', 'offline', '', 1, '', '0.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'pending', '', NULL, 'الدفعة الاولي ١٢٠٠٠', NULL, '2018-04-14 01:00:25', '2018-04-14 01:00:25', NULL, NULL, NULL, NULL, 1, 'payments', 1),
(40, '8ff5a9b7e564f6524e4c48abeaf2f6d115c859652886', 0, '-الرسوم الدراسية<br>-الزي الموحد.<br>', 1877, '0000-00-00', '0000-00-00', 'academic_expenses', 'offline', '', 1, '', '0.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'pending', '', NULL, 'تم اضافة المواصلات وتطبيق الخصم Codes20 = ١٠٠ ريال', NULL, '2018-04-14 01:03:04', '2018-04-14 01:03:04', NULL, NULL, NULL, NULL, 1, 'payments', 1),
(41, '10f847ee2084644b7e0ccb6c899e59982b96e02b1838', 0, '-الرسوم الدراسية<br>-الزي الموحد.<br>', 1877, '0000-00-00', '0000-00-00', 'academic_expenses', 'offline', '', 1, '', '0.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'pending', '', NULL, 'اضافة الانشطة ودفع 100 ريال', NULL, '2018-04-14 01:07:02', '2018-04-14 01:07:02', NULL, NULL, NULL, NULL, 1, 'payments', 1),
(42, '0007be896342c86cc95e45919f788aa7da96fdae1703', 0, '-الرسوم الدراسية<br>-الزي الموحد.<br>', 1877, '0000-00-00', '0000-00-00', 'academic_expenses', 'offline', '', 1, '', '0.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'pending', '', NULL, 'اخر دفعة', NULL, '2018-04-14 01:18:38', '2018-04-14 01:18:38', NULL, NULL, NULL, NULL, 1, 'payments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'permission_role'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publishers',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `slug`, `country`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'نجيب محفوط', 'njyb-mhfot2592', 'EG', '', 1790, '2018-02-22 07:21:24', '2018-03-26 06:36:06', NULL, '51.39.70.14', 1790, NULL, 2, 'publishers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE IF NOT EXISTS `questionbank` (
  `id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `course_id` int(11) NOT NULL DEFAULT '17',
  `topic_id` bigint(20) unsigned NOT NULL,
  `academic_id` int(11) NOT NULL DEFAULT '1',
  `sem_id` int(11) NOT NULL DEFAULT '1',
  `question_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_type` enum('radio','checkbox','descriptive','blanks','match','para','video','audio') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'radio',
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `question_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_file_is_url` tinyint(1) NOT NULL DEFAULT '0',
  `total_answers` int(10) unsigned NOT NULL,
  `answers` text COLLATE utf8_unicode_ci NOT NULL,
  `total_correct_answers` int(50) NOT NULL DEFAULT '1',
  `correct_answers` text COLLATE utf8_unicode_ci NOT NULL,
  `marks` int(10) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'questionbank',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`id`, `subject_id`, `course_id`, `topic_id`, `academic_id`, `sem_id`, `question_tags`, `slug`, `question_type`, `question`, `question_file`, `question_file_is_url`, `total_answers`, `answers`, `total_correct_answers`, `correct_answers`, `marks`, `time_to_spend`, `difficulty_level`, `hint`, `explanation`, `explanation_file`, `status`, `skill_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(11, 34, 17, 49, 1, 1, '', '2d5083517f43b311fe131e988763aed34cafdff12842', 'blanks', '<p>اسم والد نبينا محمد صلى الله عليه وسلم&nbsp; ... بن عبدالمطلب</p>\r\n', '', 0, 1, '[]', 1, '[{"answer":"\\u0639\\u0628\\u062f\\u0627\\u0644\\u0644\\u0647"}]', 1, 60, 'easy', '', '', NULL, 1, NULL, '2018-04-12 08:43:06', '2018-04-12 08:43:48', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'questionbank', 1),
(12, 34, 17, 48, 1, 1, '', 'c03f714d08497a0fefbb8e8f69b9398a43668e85482', 'radio', '<p>أحمل المصحف معي في المدرسة وأرسم عليه ما يعجبني</p>\r\n', '', 0, 2, '[{"option_value":"\\u0635\\u0648\\u0627\\u0628","has_file":0,"file_name":""},{"option_value":" \\u062e\\u0637\\u0623","has_file":0,"file_name":""}]', 1, '2', 1, 60, 'easy', '', '', NULL, 1, NULL, '2018-04-12 08:52:03', '2018-04-12 08:52:03', NULL, '51.36.108.22', 1790, NULL, 1, 'questionbank', 1),
(13, 34, 17, 49, 1, 1, '', '49578bc7941b0f28b57502538f09ef738cbdbaa02224', 'radio', '<p>أقول الحق ولا أخاف إلا الله</p>\r\n', '', 0, 2, '[{"option_value":" \\u0635\\u0648\\u0627\\u0628","has_file":0,"file_name":""},{"option_value":" \\u062e\\u0637\\u0623","has_file":0,"file_name":""}]', 1, '1', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:17:09', '2018-04-13 22:17:09', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(14, 34, 17, 49, 1, 1, '', 'f4e1d822fa72647e846e8414e42e9b4e4853d7f9133', 'match', '<p>اسحب العبارة المناسبة من القائمة (ب) تحت ما يناسبها من القائمة (أ)</p>\r\n', '', 0, 3, '{"left":{"title":"( \\u0623 )","options":["\\u0623\\u0646\\u0627 \\u0623\\u062d\\u0628 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0644 \\u0635\\u0644\\u0649 \\u0627\\u0644\\u0644\\u0647 \\u0639\\u0644\\u064a\\u0647 \\u0648\\u0633\\u0644\\u0645","\\u0644\\u064a\\u0633 \\u0645\\u0646 \\u0627\\u0644\\u0634\\u062c\\u0627\\u0639\\u0629","\\u0625\\u0630\\u0627 \\u0627\\u0633\\u062a\\u0639\\u0631\\u062a \\u0634\\u064a\\u0626\\u0627"]},"right":{"title":"( \\u0628 )","options":["\\u0623\\u0631\\u062c\\u0639\\u0647 \\u0644\\u0635\\u0627\\u062d\\u0628\\u0629","\\u0648\\u0623\\u0637\\u064a\\u0639\\u0629","\\u0623\\u0646 \\u0623\\u0636\\u0631\\u0628 \\u0627\\u062e\\u064a \\u0627\\u0644\\u0635\\u063a\\u064a\\u0631"]}}', 3, '[{"answer":"2"},{"answer":"3"},{"answer":"1"}]', 1, 120, 'easy', 'اختر ما يناسب العبارات التالية :', '<p>اختر ما يناسب العبارات التالية :</p>\r\n', NULL, 1, NULL, '2018-04-13 22:26:08', '2018-04-13 22:26:08', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(15, 34, 17, 49, 1, 1, '', '9f8a616c4c63f1a67399bd01eaa4b44f72446ceb2612', 'blanks', '<p>أحرص على&nbsp; ... والسلام على النبي صلى الله عليه وسلم عند ذكره .</p>\r\n', '', 0, 0, '[]', 1, '[{"answer":"\\u0627\\u0644\\u0635\\u0644\\u0627\\u0629"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:28:18', '2018-04-13 22:28:18', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(16, 34, 17, 49, 1, 1, '', '6c956c5ab361c0ab1b55ea40e76fdc88ecf621012211', 'blanks', '<p>اسم والدة نبينا محمد صلى الله عليه وسلم&nbsp; ... بنت وهب</p>\r\n', '', 0, 0, '[]', 1, '[{"answer":"\\u0622\\u0645\\u0646\\u0629"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:28:54', '2018-04-13 22:28:54', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1),
(17, 34, 17, 49, 1, 1, '', 'b7be44a6f13d4e9db97150332fd91addbc9870592582', 'checkbox', '<p>حدد الصفات التي يحبها الله ويحبها الناس :</p>\r\n', '', 0, 3, '[{"option_value":" \\u0627\\u0644\\u0634\\u062c\\u0627\\u0639","has_file":0,"file_name":""},{"option_value":" \\u0627\\u0644\\u0643\\u0630\\u0627\\u0628","has_file":0,"file_name":""},{"option_value":" \\u0627\\u0644\\u0623\\u0645\\u064a\\u0646","has_file":0,"file_name":""}]', 2, '[{"answer":"1"},{"answer":"3"}]', 1, 120, 'easy', '', '', NULL, 1, NULL, '2018-04-13 22:31:09', '2018-04-13 22:31:09', NULL, '51.39.97.99', 1790, NULL, 1, 'questionbank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questionbank_quizzes`
--

CREATE TABLE IF NOT EXISTS `questionbank_quizzes` (
  `id` int(10) unsigned NOT NULL,
  `questionbank_id` bigint(20) unsigned NOT NULL,
  `quize_id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `marks` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'questionbank_quizzes'
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionbank_quizzes`
--

INSERT INTO `questionbank_quizzes` (`id`, `questionbank_id`, `quize_id`, `subject_id`, `marks`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(69, 11, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes'),
(70, 12, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes'),
(71, 13, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes'),
(72, 14, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes'),
(73, 15, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes'),
(74, 16, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes'),
(75, 17, 8, 34, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'questionbank_quizzes');

-- --------------------------------------------------------

--
-- Table structure for table `quizapplicability`
--

CREATE TABLE IF NOT EXISTS `quizapplicability` (
  `id` bigint(20) unsigned NOT NULL,
  `quiz_id` bigint(20) unsigned NOT NULL,
  `academic_id` bigint(20) unsigned NOT NULL,
  `course_parent_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `year` int(11) unsigned NOT NULL,
  `semister` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizapplicability'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizapplicability`
--

INSERT INTO `quizapplicability` (`id`, `quiz_id`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(58, 8, 1, 17, 30, 1, 0, '2018-04-16 06:51:04', '2018-04-16 06:51:04', NULL, NULL, NULL, NULL, 1, 1, 'quizapplicability'),
(59, 8, 1, 17, 29, 1, 0, '2018-04-16 06:51:04', '2018-04-16 06:51:04', NULL, NULL, NULL, NULL, 1, 1, 'quizapplicability');

-- --------------------------------------------------------

--
-- Table structure for table `quizcategories`
--

CREATE TABLE IF NOT EXISTS `quizcategories` (
  `id` bigint(20) unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizcategories',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizcategories`
--

INSERT INTO `quizcategories` (`id`, `category`, `slug`, `course_id`, `image`, `description`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(5, 'اختبارات الصف الاول الابتدائي الفصل الاول', 'akhtbarat-alsf-alaol-alabtdaey-alfsl-alaol326', 17, '', '', 1790, '2018-04-14 07:53:57', '2018-04-14 07:53:57', NULL, '51.39.97.99', 1790, NULL, 1, 'quizcategories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizofflinecategories`
--

CREATE TABLE IF NOT EXISTS `quizofflinecategories` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizofflinecategories',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizofflinecategories`
--

INSERT INTO `quizofflinecategories` (`id`, `title`, `slug`, `status`, `course_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(3, 'الصف الاول الابتدائي الفصل الاول تجريبي', 'alsf-alaol-alabtdaey-alfsl-alaol-tjryby28', 1, 17, '2018-04-14 07:55:20', '2018-04-14 07:55:20', NULL, '51.39.97.99', 1790, NULL, 1, 'quizofflinecategories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizresults`
--

CREATE TABLE IF NOT EXISTS `quizresults` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quiz_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
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
  `academic_id` bigint(20) unsigned DEFAULT NULL,
  `course_parent_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `year` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizresults',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizresults`
--

INSERT INTO `quizresults` (`id`, `slug`, `quiz_id`, `user_id`, `marks_obtained`, `negative_marks`, `total_marks`, `percentage`, `exam_status`, `answers`, `subject_analysis`, `correct_answer_questions`, `wrong_answer_questions`, `not_answered_questions`, `time_spent_correct_answer_questions`, `time_spent_wrong_answer_questions`, `time_spent_not_answered_questions`, `percentage_title`, `grade_title`, `grade_points`, `rank`, `total_users_for_this_quiz`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(20, '7574544e768b635bb50db44f304e1d0240f2e99f', 8, 1796, 2, '0.00', 7, '28.57', 'pass', '{"11":["\\u0639\\u0628\\u062f\\u0627\\u0644\\u0644\\u0647"],"12":["2"],"13":["1"],"14":["1","2","3"],"15":["\\u0627\\u0644\\u0635\\u0644\\u0627\\u0629"],"16":["\\u0622\\u0645\\u0646\\u0629"],"17":["1","3"]}', '{"34":{"subject_id":"34","correct_answers":6,"wrong_answers":1,"not_answered":0,"time_spent":41,"time_to_spend":720,"time_spent_correct_answers":27,"time_spent_wrong_answers":14}}', '[11,12,13,15,16,17]', '[14]', '[]', '{"11":{"time_to_spend":"60","time_spent":"3"},"12":{"time_to_spend":"60","time_spent":"2"},"13":{"time_to_spend":"120","time_spent":"3"},"15":{"time_to_spend":"120","time_spent":"3"},"16":{"time_to_spend":"120","time_spent":"15"},"17":{"time_to_spend":"120","time_spent":"1"}}', '{"14":{"time_to_spend":"120","time_spent":"14"}}', '[]', '', '', '', NULL, NULL, 1, 17, 29, 1, 0, '2018-04-16 06:42:19', '2018-04-16 06:42:19', NULL, '51.36.111.15', 1796, NULL, 1, 'quizresults', 1),
(21, '8e210fbfd10fbdadbec8628806977017aa9e5487', 8, 1796, 3, '0.00', 7, '47.62', 'pass', '{"11":["\\u0639\\u0628\\u062f\\u0627\\u0644\\u0644\\u0647"],"12":["2"],"13":["1"],"14":["1","1","1"],"15":["\\u0627\\u0644\\u0635\\u0644\\u0627\\u0629"],"16":["\\u0627\\u0645\\u064a\\u0646\\u0629"],"17":["1","3"]}', '{"34":{"subject_id":"34","correct_answers":6,"wrong_answers":1,"not_answered":0,"time_spent":18,"time_to_spend":720,"time_spent_correct_answers":14,"time_spent_wrong_answers":4}}', '[11,12,13,14,15,17]', '[16]', '[]', '{"11":{"time_to_spend":"60","time_spent":"1"},"12":{"time_to_spend":"60","time_spent":"2"},"13":{"time_to_spend":"120","time_spent":"4"},"14":{"time_to_spend":"120","time_spent":"4"},"15":{"time_to_spend":"120","time_spent":"2"},"17":{"time_to_spend":"120","time_spent":"1"}}', '{"16":{"time_to_spend":"120","time_spent":"4"}}', '[]', '', '', '', NULL, NULL, 1, 17, 29, 1, 0, '2018-04-16 06:51:48', '2018-04-16 06:51:48', NULL, '51.36.111.15', 1796, NULL, 1, 'quizresults', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('online','offline') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'online',
  `offline` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `online` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dueration` int(11) NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `is_paid` tinyint(4) NOT NULL DEFAULT '0',
  `cost` decimal(10,2) DEFAULT NULL,
  `validity` int(11) NOT NULL,
  `total_marks` int(20) unsigned NOT NULL DEFAULT '0',
  `having_negative_mark` tinyint(1) NOT NULL DEFAULT '0',
  `negative_mark` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pass_percentage` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish_results_immediately` tinyint(4) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `total_questions` int(50) NOT NULL,
  `instructions_page_id` bigint(20) unsigned NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `applicable_to_specific` tinyint(1) NOT NULL DEFAULT '0',
  `offline_quiz_category_id` bigint(20) unsigned DEFAULT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quizzes',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `slug`, `type`, `offline`, `online`, `dueration`, `category_id`, `subject_id`, `is_paid`, `cost`, `validity`, `total_marks`, `having_negative_mark`, `negative_mark`, `pass_percentage`, `tags`, `publish_results_immediately`, `description`, `total_questions`, `instructions_page_id`, `start_date`, `end_date`, `applicable_to_specific`, `offline_quiz_category_id`, `record_updated_by`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(8, 'الفقة الصف الاول الابتدائي', 'alfk-alsf-alaol-alabtdaey2293-048dfe5461f95b0fc9c8e199ad603a31b155d1e9', 'online', '', '', 20, 5, 38, 0, '0.00', -1, 7, 1, '2.00', '40.00', '', 1, '', 7, 1, '2018-04-14 00:25:00', '2018-04-30 00:38:00', 1, NULL, 1790, '2018-04-14 08:08:14', '2018-04-16 06:51:04', '51.36.111.15', '51.39.97.99', 1790, 1790, 2, 'quizzes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE IF NOT EXISTS `religions` (
  `id` bigint(20) unsigned NOT NULL,
  `religion_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'religions',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `religion_name`, `status`, `slug`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'مسلم', 'Active', 'mslm', '2017-10-12 07:36:46', '2017-10-12 07:36:46', NULL, NULL, NULL, NULL, 1, 'religions', 1),
(2, 'مسيحي', 'Active', 'msyhy', '2017-10-12 07:36:54', '2018-03-26 06:57:43', NULL, NULL, NULL, NULL, 2, 'religions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'roles'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 'owner', 'Owner', 'Owner of this account', '2016-06-08 03:32:59', '2016-06-08 03:32:59', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(2, 'admin', 'Admin', 'Admin of this Account', '2016-06-08 03:33:19', '2016-06-08 03:33:19', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(3, 'staff', 'Staff', 'Staff User', '2016-11-04 23:44:22', '2016-11-04 23:44:22', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(5, 'student', 'Student', 'Student User', '2016-06-08 04:01:54', '2016-06-08 04:01:54', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(6, 'parent', 'Parent User', 'Parent Login', '2016-06-08 07:35:27', '2016-06-08 07:35:27', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(7, 'librarian', 'Librarian', 'Library User', '2016-12-05 18:30:00', '2016-12-05 18:30:00', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(8, 'assistant_librarian', 'Assistant Librarian', 'Assistant Librarian', '2016-12-07 01:45:12', '2016-12-07 01:45:12', NULL, NULL, NULL, NULL, 1, 1, 'roles'),
(9, 'educational_supervisor', 'Educational Supervisor', 'Educational Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'roles');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'role_user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`, `record_status`, `branch_id`, `table_name`) VALUES
(1790, 1, NULL, NULL, NULL, NULL, '2018-03-19 22:20:38', '0000-00-00 00:00:00', 3, 1, 'role_user'),
(1796, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1800, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1802, 2, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1803, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1805, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1806, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1807, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1835, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1835, 9, NULL, NULL, NULL, NULL, '2018-02-25 19:16:12', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1836, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1837, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1838, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1839, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1840, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1859, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1860, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1868, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1869, 6, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1870, 7, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1872, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1873, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1874, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1875, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1876, 3, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1877, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1878, 1, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1879, 8, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1880, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1881, 2, NULL, NULL, NULL, NULL, '2018-02-21 18:48:59', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1882, 5, NULL, NULL, NULL, NULL, '2018-02-21 18:52:35', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1883, 6, NULL, NULL, NULL, NULL, '2018-02-21 18:57:44', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1884, 6, NULL, NULL, NULL, NULL, '2018-02-21 19:01:12', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1885, 5, NULL, NULL, NULL, NULL, '2018-02-22 17:02:15', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1886, 6, NULL, NULL, NULL, NULL, '2018-02-22 17:06:18', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1887, 9, NULL, NULL, NULL, NULL, '2018-02-25 19:11:45', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1888, 3, NULL, NULL, NULL, NULL, '2018-03-06 16:27:12', '0000-00-00 00:00:00', 1, 1, 'role_user'),
(1889, 5, NULL, NULL, NULL, NULL, '2018-03-07 21:19:31', '0000-00-00 00:00:00', 1, 1, 'role_user');

-- --------------------------------------------------------

--
-- Table structure for table `semisters`
--

CREATE TABLE IF NOT EXISTS `semisters` (
  `id` bigint(10) unsigned NOT NULL,
  `course_id` bigint(11) unsigned NOT NULL,
  `year` int(11) NOT NULL,
  `total_semisters` int(11) NOT NULL,
  `semister_prefix` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'semisters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'settings',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `key`, `slug`, `image`, `settings_data`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 'إعدادات البريد الألكتروني', 'email_settings', 'email-settings', '', '{"mail_driver":{"value":"mail","type":"select","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Driver"},"mail_host":{"value":"mail.sasbit.com","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Host"},"mail_port":{"value":"110","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Port no"},"mail_username":{"value":"","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Username"},"mail_password":{"value":"","type":"password","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Password"},"mail_encryption":{"value":"null","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Encryption"}}', 'Contains all the settings related to emails', '2016-08-28 23:55:26', '2017-12-31 06:59:03', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(4, 'اعدادات وسيلة الدفع باي بال - PayPal', 'paypal', 'paypal', '', '{"email":{"value":"montaserelsawy@gmail.com","type":"email","extra":"","tool_tip":"Paypal Email"},"currency":{"value":"USD","type":"text","extra":"","tool_tip":"Default Currency"},"image":{"value":"gYiMM9e5g3H40dz.png","type":"file","extra":"","tool_tip":"Image to display at Paypal payment gateway"},"account_type":{"value":"live","type":"select","extra":{"total_options":"2","options":{"sandbox":"Sandbox","live":"Live"}},"tool_tip":"Account Type Development (sandbox)\\/ Production (live)"}}', 'Contains paypal config details', '2016-09-08 03:38:30', '2018-02-01 11:06:50', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(5, 'PayU Settings', 'payu', 'payu', '', '{"payu_merchant_key":{"value":"YOUR_PAYU_MERCHANT_KEY","type":"text","extra":"","tool_tip":"PayU Merchent Key"},"payu_salt":{"value":"YOUR_PAYU_SALT","type":"text","extra":"","tool_tip":"PayU Salt"},"payu_working_key":{"value":"YOUR_PAYU_WORKING_KEY","type":"text","extra":"","tool_tip":"PayU Working Key"},"payu_testmode":{"value":"true","type":"select","extra":{"total_options":"2","options":{"true":"Yes","false":"No"}},"tool_tip":"Set PayU in Test Mode"}}', 'Payu Settings', '2016-09-09 01:25:33', '2017-03-01 10:23:56', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(6, 'اعدادات الموقع', 'site_settings', 'site-settings', '', '{"background_image":{"value":"71mZtKNc3ds9P9L.jpg","type":"file","extra":"","tool_tip":"Front background image"},"currency_symbol":{"value":"\\u0631\\u064a\\u0627\\u0644","type":"text","extra":"","tool_tip":"Add your currency symbol"},"current_theme":{"value":"default","type":"select","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Select theme"},"default_academic_year_id":{"value":"1","type":"number","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Enter default academic year"},"default_parent_course_id":{"value":"1","type":"number","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Enter default parent course ID"},"login_page_title":{"value":"\\u0646\\u0638\\u0627\\u0645 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Type Of Education System"},"site_address":{"value":"","type":"textarea","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Address"},"site_city":{"value":"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"City"},"site_country":{"value":"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Country"},"site_favicon":{"value":"bPVIbnviqkfCQsa.ico","type":"file","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Favicon"},"site_logo":{"value":"7g4r5q6tci0eA3Y.png","type":"file","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Site Logo"},"site_phone":{"value":"0548300367","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Phone"},"site_state":{"value":"\\u0627\\u0644\\u063a\\u0631\\u0628\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"State"},"site_title":{"value":"\\u0646\\u0638\\u0627\\u0645 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0644\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Site Title"},"site_zipcode":{"value":"41321","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Postal Code"},"system_timezone":{"value":"Asia\\/Riyadh","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Refer http:\\/\\/php.net\\/manual\\/en\\/timezones.php"}}', 'Here you can manage the title, logo, favicon and all general settings', '2016-09-29 06:46:54', '2018-03-12 01:32:44', '51.39.216.95', NULL, NULL, 1790, 1, 'settings', 1),
(7, 'Seo Settings', 'seo_settings', 'seo-settings-1', '', '{"google_analytics":{"value":"","type":"textarea","extra":"","tool_tip":"Update your google analytics code"},"meta_description":{"value":"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0633\\u0627\\u0633\\u0628\\u062a","type":"textarea","extra":"","tool_tip":"Site Meta Description"},"meta_keywords":{"value":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a, \\u0633\\u0627\\u0633\\u0628\\u062a, \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628, \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 , \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a , \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\\u0627\\u062a , \\u0627\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0645\\u0648\\u0631, \\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643\\u0627\\u062a","type":"textarea","extra":"","tool_tip":"Site Meta Keywords"}}', 'Contains all SEO settings', '2016-09-30 13:33:46', '2018-02-01 11:08:06', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(8, 'Payment Gateways', 'payment_gateways', 'payment-gateways', '', '{"offline_payment_information":{"value":"1) \\u0641\\u0649 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0627\\u0644\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0627\\u0644\\u0628\\u0646\\u0643\\u064a \\u064a\\u0631\\u062c\\u064a \\u0627\\u0631\\u0641\\u0627\\u0642 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0628\\u0639 \\u0627\\u062f\\u0646\\u0627\\u0647 <br>\\r\\n2) \\u0641\\u0649 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0628\\u0634\\u064a\\u0643 \\u0646\\u0631\\u062c\\u0648 \\u0627\\u0631\\u0641\\u0627\\u0642 \\u0631\\u0642\\u0645 \\u0627\\u0644\\u0634\\u064a\\u0643 \\u0648\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0628\\u0646\\u0643 <br>\\r\\n3) \\u0648\\u0633\\u064a\\u0642\\u0648\\u0645 \\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f \\u0648\\u0645\\u0646 \\u062b\\u0645 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u062a\\u0649 \\u062a\\u0645 \\u0634\\u0631\\u0627\\u0624\\u0647\\u0627","type":"textarea","extra":"","tool_tip":"Information related to offline payment"}}', 'Contains all list of payment gateways in the system and the status of availability ', '2016-10-02 09:48:19', '2018-03-23 07:19:41', '51.36.236.99', NULL, NULL, 1790, 2, 'settings', 1),
(9, 'تفعيل وإيقاف الخدمات', 'module', 'module', '', '{"certificate":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Certificate Module"},"coupons":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Coupons Module"},"facebook_login":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Facebook Login"},"google_plus_login":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Google+ Login"},"messaging":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Messaging Module"},"offline_payment":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Offline Payment Option"},"branches":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Parent Module"},"parent":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Parent Module"},"paypal":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Paypal Payment Gateway"},"payu":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable PayU Payment Gateway"},"push_notifications":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Push Notifications"},"show_foreign_key_constraint":{"value":0,"type":"checkbox","extra":"","tool_tip":"show foreign key constraint message at delete operation"},"transfer_students":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable student transter"},"daily_school_schedule":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable school schedule"},"exams":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable exams"},"paid_tests_only":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable paid tests"},"management_of_educational_content":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable educational content"},"paid_educational_content_only":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable paid content"},"experimental_tests_only":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable experimental tests"},"language_settings":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Language"},"library_Management":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable student Library management"}}', 'لتفعيل وايقاف تفعيل الخدمات فى نظام التعليم الالكتروني ', '2016-10-12 11:36:22', '2018-04-14 22:10:10', '51.39.97.99', NULL, NULL, 1790, 2, 'settings', 1),
(11, 'إعدادات الشهادة', 'certificate', 'certificate', '', '{\n  "bottom_middle_logo": {\n    "value": "Xnbf7A5pUDnseoH.png",\n    "type": "file",\n    "extra": "",\n    "tool_tip": "Bottom middle logo"\n  },\n  "content": {\n    "value": "<span style=\\"font-size:18px; font-style:italic;\\">This is to certify that <b style=\\"padding:0 10px; font-size:22px;\\">{{$username}}</b> Lorem Ipsum is simply dummy text <b style=\\"padding:0 10px; font-size:22px;\\">{{$course_name}}</b> of the printing with score of <b style=\\"padding:0 10px; font-size:22px;\\">{{$marks}}</b> and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took</span>",\n    "type": "ckeditor",\n    "extra": "",\n    "tool_tip": "Content for the certificate"\n  },\n  "left_sign_designation": {\n    "value": "المعلم ",\n    "type": "text",\n    "extra": "",\n    "tool_tip": "Left Sign Designation"\n  },\n  "left_sign_name": {\n    "value": "منتصر الصاوي",\n    "type": "text",\n    "extra": "",\n    "tool_tip": "Left Sign Name"\n  },\n  "right_sign_designation": {\n    "value": "مدير المدرسة",\n    "type": "text",\n    "extra": "",\n    "tool_tip": "Right Sign Designation"\n  },\n  "right_sign_name": {\n    "value": "خالد الحربي",\n    "type": "text",\n    "extra": "",\n    "tool_tip": "Right Sign Name"\n  },\n  "left_sign_image": {\n    "value": "CbWZkuET6ivwbH9.png",\n    "type": "file",\n    "extra": "",\n    "tool_tip": "Left Sign Image"\n  },\n  "logo": {\n    "value": "m1JlokolQneUJjA.png",\n    "type": "file",\n    "extra": "",\n    "tool_tip": "Header logo of certificate"\n  },\n  "right_sign_image": {\n    "value": "ITKaR4FJcEp8blq.png",\n    "type": "file",\n    "extra": "",\n    "tool_tip": "Right Sign Image"\n  },\n  "watermark_image": {\n    "value": "HtgCy1IffrwfK3G.png",\n    "type": "file",\n    "extra": "",\n    "tool_tip": "Water Mark Image for transparent background"\n  }\n}', 'This Module contains the settings for Certificate', '2016-10-13 06:57:36', '2018-02-01 07:34:15', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(12, 'تسجيل الدخول من خلال مواقع التواصل الاجتماعي', 'social_logins', 'social-logins', '', '{"facebook_client_id":{"value":"eyJpdiI6IlFJajZxUjROQ3NYMzZ3bVdSMTZjbEE9PSIsInZhbHVlIjoiRENpQXpRY0cwclZQbXplMm9hTGsrbm53dUc5a3pzUEdzVjlsSXFjTGtNRT0iLCJtYWMiOiIwODBlNjA0MjhhNGUxY2M0YmFmYmNjMDViZTNhNDFkYWM3MTUyNTM1NWRjNjlhMGY1M2QzZWQ2NjE0Yzk1NDJlIn0=","type":"text","extra":"","tool_tip":"Facebook Client ID"},"facebook_client_secret":{"value":"eyJpdiI6InB1YXRONjdKVm5LUFVMU21DWGlmRHc9PSIsInZhbHVlIjoieDhvMnZTTjdhNHFLU1wvRjVmSUdIamZuWlduK0kxTWZzeWJXa0dzZmY5VE5yUTVsc3gyakNUUTBxdTQrbkg5XC84IiwibWFjIjoiMTJlMjBiYzc2YzZmODJiODUzZDlmYWZlZjQyZDgwNmYyMDQxYmM0OTU0ZjliZjI3ZmNhNDUyNTE4YzgyMmU4YyJ9","type":"text","extra":"","tool_tip":"Facebook Client Secret"},"facebook_redirect_url":{"value":"eyJpdiI6ImkyZkpwd2p3Y0xVcXBFRDJZajdoZEE9PSIsInZhbHVlIjoiOGpFMkhlV0YzQTRxa1E0Mmhpa0hcL1N5QlE4KzU2ckN6M3h1c3RTVkFFUlFoQ1lIaEMzMk1DNDR5amhFek4wWFAiLCJtYWMiOiI0NzhlYjZjNzI3MmI0YzBjN2E1MjkwNTI1MjE1MzVmMzVmOTViMDlkODdlMzg4MjBiY2U0MmQ2NTdlNjNkMDFlIn0=","type":"text","extra":"","tool_tip":"It should be http (or) https:\\/\\/yourservername\\/auth\\/google\\/callback"},"google_client_id":{"value":"eyJpdiI6IkVzem94ZEhmdkZlUncwSitXd3hrQ3c9PSIsInZhbHVlIjoiVFMyYmlObDJFeFdEME5VbVwvQUdBYWtWMVZKR0NwSEh3VkJlSFh6TDdVRktMSlpYa2tsSTN1MTRmTXhYN21rbmFRbGRsNDY1ekJHeGQ1TjdLNmZtMWNYdGo0U25wbnJ1ZjVCbUJxK2JQS1dWcFVpWnF2cjJ2MHZWcytlcjVNd1lBIiwibWFjIjoiZjZmZWZmNzY2Mjk0ZTRlOGI4NWEwNTY4NjRiZTIyZmFmMTY0NmE0MjljMzdmZGNmYWZlY2ZkMzBlY2VlMGFlOCJ9","type":"text","extra":"","tool_tip":"Google Plus Client ID"},"Google_client_secret":{"value":"eyJpdiI6ImVtVkZ1ZzMwYncxemJoWTY5NTErQVE9PSIsInZhbHVlIjoiWmdseFJaczdzNkJ0TTFycERyNGRabVJFbVpuMENaTTB2OFlsbG0wMEtkMzREYmg2K1ZobUdIcDgzSWYweE54eCIsIm1hYyI6ImE3ZDc0ZTYxM2NmMWM3Y2FiODMxZTIwYTNhMjhjOTZjZDVjYWRjMjE0ZTVkNWE4Y2FkZWMxYjRkZTE5MDRmYmQifQ==","type":"text","extra":"","tool_tip":"Google Client Secret Key"},"google_redirect_url":{"value":"eyJpdiI6IlV3Y3RxelFnZHZIY1FYaG4xWXFlbnc9PSIsInZhbHVlIjoid3ZLc2d0UmVyYThWQ3dBUnBiOTQ4WEQ4SlhUdGtNY21qUkpBRFdsME43MjlPT1F6OTErNjdudjJ2OEdNM0hMRiIsIm1hYyI6IjliNDBkZTViYzExYWE2MjBmMDhkODQyNDdlYjBjMDMyZmJkY2ExMmFlZjYyYzZhNTdlOGVjNmM2Njc3NmI1MjgifQ==","type":"text","extra":"","tool_tip":"http (or) https:\\/\\/yourserver.com\\/auth\\/google\\/callback"}}', 'Add/Update Settings for Social Logins (Facebook and Google plus)', '2016-10-28 10:56:37', '2018-03-07 03:52:38', '156.213.84.209', NULL, NULL, 1790, 1, 'settings', 1),
(13, 'اعدادات نظام الرسائل', 'messaging_system', 'messaging-system', '', '{"owner":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"admin":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"staff":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"student":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"parent":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"librarian":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"assistant_librarian":{"value":"1","type":"checkbox","extra":"","tool_tip":""},"educational_supervisor":{"value":"1","type":"checkbox","extra":"","tool_tip":""}}', '', '2016-10-29 11:03:37', '2018-03-15 06:11:43', '51.39.213.36', NULL, NULL, 1790, 1, 'settings', 1),
(14, 'جدول الحصص', 'time_table', 'time-table', '', '{"start_time":{"value":"7","type":"number","extra":"","tool_tip":"Enter the strat time to be shown in timetable management"},"end_time":{"value":"13","type":"number","extra":"","tool_tip":"Enter the end time to be shown in timetable management"},"default_sessions_needed":{"value":"60","type":"number","extra":"","tool_tip":"Default sessions needed at subject allocation"}}', 'These will be used in timetable management', '2016-11-30 12:39:07', '2017-12-22 11:24:13', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(15, 'إعدادات المكتبة', 'library_settings', 'library-settings', '', '{"maximum_issues_student":{"value":"2","type":"number","extra":"","tool_tip":"Maximum issues for student"},"maximum_issues_staff":{"value":"4","type":"number","extra":"","tool_tip":"Maximum Issues for Staff"},"maximum_days_to_return_student":{"value":"4","type":"number","extra":"","tool_tip":"Student maximum days to return"},"maximum_days_to_return_staff":{"value":"6","type":"number","extra":"","tool_tip":"Staff maximum days to retrun"},"library_series_prefix":{"value":"LIB","type":"text","extra":"","tool_tip":"Serial number prefix like college code"},"library_series_number_length":{"value":"3","type":"number","extra":"","tool_tip":"Length of series number"}}', 'جميع إعدادات المكتبة', '2016-12-08 06:54:53', '2018-02-01 07:31:07', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(16, 'اعدادات شهادات حسن السلوك', 'bonafide_settings', 'bonafide-settings', '', '{"print_header":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore header"},"print_footer":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore footer"},"print_date":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore date on certificate"},"print_reference_number":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore reference number"},"right_sign_image":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right sign image"},"right_side_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side name"},"right_side_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side designation"},"show_watermark":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show watermark image"}}', '', '2017-01-05 10:00:35', '2017-12-31 06:15:27', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(17, 'محتوي شهادة حسن السلوك', 'bonafide_content', 'bonafide-content', '', '{"logo":{"value":"wNERLaeilHuQKFN.png","type":"file","extra":"","tool_tip":"Certificate Logo"},"content":{"value":"<td align=\\"right\\" style=\\"direction:rtl;padding: 5px 10px;  font-size:16px;\\">\\r\\n<p style=\\"font-size: 16px; color: #333; line-height:30px;\\">\\r\\n\\u0647\\u0630\\u0647 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062a\\u0642\\u0631 \\u0627\\u0646 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\\r\\n<strong style=\\"font-size:18px; color:#007cff\\"><u><i>{{$name}}<\\/i><\\/u><\\/strong> \\r\\n\\u0627\\u0644\\u0645\\u0642\\u064a\\u0645 \\u0641\\u0649 \\r\\n({{$address}})\\r\\n\\r\\n \\u0647\\u0648 \\u0637\\u0627\\u0644\\u0628 \\u0645\\u0645\\u062a\\u0627\\u0632 \\u0648\\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643\\r\\n\\u0648\\u0647\\u0648 \\u064a\\u062f\\u0631\\u0633 \\u0641\\u0649 \\u0627\\u0644\\u0641\\u0635\\u0644 \\r\\n<strong style=\\"font-size:18px; color:#007cff\\"><u><i> {{$course_title}}<\\/i><\\/u><\\/strong>.<\\/p>\\r\\n<p style=\\"font-size: 16px; color: #333; line-height:30px;\\"> \\r\\n\\u0648\\u0643\\u0627\\u0646 \\u0637\\u0627\\u0644\\u0628 \\u0645\\u0637\\u064a\\u0639\\u0627 \\u0648\\u0645\\u062e\\u0644\\u0635\\u0627 \\u0648\\u0645\\u062c\\u062a\\u0647\\u062f\\u0627\\r\\n\\u0648\\r\\n\\u064a\\u062d\\u0645\\u0644 \\u0634\\u062e\\u0635\\u064a\\u0629 \\u0623\\u062e\\u0644\\u0627\\u0642\\u064a\\u0629 \\u062c\\u064a\\u062f\\u0629 \\r\\n<\\/p>\\r\\n\\r\\n<\\/td>","type":"ckeditor","extra":"","tool_tip":"Content of the certificate"},"right_designation":{"value":"\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","type":"text","extra":"","tool_tip":"Right side designation name"},"right_side_name":{"value":"\\u0623\\u062d\\u0645\\u062f \\u0628\\u0646 \\u0645\\u062d\\u0645\\u062f \\u0627\\u0644\\u0639\\u0631\\u0641\\u062c","type":"text","extra":"","tool_tip":"Right side display name"},"right_side_sign":{"value":"ufhwpHyrlHTjqMf.png","type":"file","extra":"","tool_tip":"Right side sign image"},"watermark_image":{"value":"aK0duoZOiKWPovc.png","type":"file","extra":"","tool_tip":"Upload watermark image"}}', '', '2017-01-05 10:38:31', '2017-12-31 06:37:01', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(18, 'حقول شهادات الصفوف الدراسية ', 'transfer_certificate_fields', 'transfer-certificate-fields', '', '{"name_of_student":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display Name Of The Pupil"},"father_guardian_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display fathername \\/ Guardian name"},"mother_name":{"value":0,"type":"checkbox","extra":"","tool_tip":"Display mother name"},"nationality":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display nationality"},"candidate_caste":{"value":0,"type":"checkbox","extra":"","tool_tip":"Display caste"},"date_of_admission_with_class":{"value":0,"type":"checkbox","extra":"","tool_tip":"Display date of join, class"},"date_of_birth":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display date of birth"},"last_class_studied":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly last studied class"},"last_taken_exam_and_result":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display board exam result"},"whether_failed_if_once_twice_in_the_same_class":{"value":0,"type":"checkbox","extra":"","tool_tip":"Dispaly Failed exam status"},"promotion_class":{"value":0,"type":"checkbox","extra":"","tool_tip":"Dispaly promotion class"},"total_working_days":{"value":0,"type":"checkbox","extra":"","tool_tip":"Total working days of year"},"total_present_days":{"value":0,"type":"checkbox","extra":"","tool_tip":"Display present days"},"ncc_boy_scout_girls_guide":{"value":0,"type":"checkbox","extra":"","tool_tip":"Diaplay NCC or Scout or Guide details"},"games_played_or_extra_curricular_activities":{"value":0,"type":"checkbox","extra":"","tool_tip":"Display other activities"},"general_conduct":{"value":0,"type":"checkbox","extra":"","tool_tip":"Display conduct"},"date_of_apply":{"value":0,"type":"checkbox","extra":"","tool_tip":"Dispaly apply date"},"date_of_issue":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display issue date"},"reason":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display reason "},"remarks":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly remarks"},"first_admission_in_the_school":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display First Admission in the schol"}}', 'This module holds the management of the fields to display on the certificate', '2017-01-05 13:31:07', '2017-12-31 06:56:42', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(19, 'اعدادات شهادات الصفوف الدراسية', 'transfer_certificate_settings', 'transfer-certificate-settings', '', '{"print_header":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print header"},"print_footer":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print footer"},"print_date":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print date"},"print_reference_number":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print reference number"},"show_left_side_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show left side name"},"show_left_side_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show left side designation"},"show_left_side_sign":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show left side image"},"show_middle_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show middle name"},"show_middle_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show middle designation"},"show_middle_sign":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show middle sign"},"show_right_side_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side name"},"show_right_side_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"show right side designation"},"show_right_side_sign":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side sign"},"show_watermark":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show watermark"}}', 'This module holds the settings part for transfer certificate. The settings like printing options', '2017-01-06 04:29:52', '2017-12-22 11:26:28', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(20, 'اعدادات بطاقات الهوية', 'id_card_settings', 'id-card-settings', '', '{"institute_address":{"value":"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629 | \\u0669\\u0662\\u0660\\u0660\\u0666\\u0665\\u0660\\u0660","type":"text","extra":"","tool_tip":"Institute address"},"institute_title":{"value":"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629","type":"text","extra":"","tool_tip":"Title of the institute to display on top"},"select_template":{"value":"template_1","type":"select","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Select template"},"template_1_logo":{"value":"qAAU6aCsrZckWR7.png","type":"file","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Logo for template 1"},"top_logo":{"value":"xbOidMm9xcoF22B.png","type":"file","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Upload logo"}}', 'This is used to setting the id card logo and address in idcard', '2017-01-07 06:09:36', '2018-02-23 05:49:10', '51.39.168.90', NULL, NULL, 1790, 1, 'settings', 1),
(21, 'حقول بطاقة الهوية', 'id_card_fields', 'id-card-fields', '', '{"1-front_first_item_title":{"value":"name","type":"text","extra":"","tool_tip":"Front first item title"},"11-front_first_item":{"value":"name","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"First Item to display"},"12-front_second_item_title":{"value":"student_number","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Second item title"},"13-front_second_item":{"value":"roll_no","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Second Item to display"},"14-front_third_item_title":{"value":"blood_group","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Third item title"},"15-front_third_item":{"value":"skip","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Third Item to display"},"16-front_fourth_item_title":{"value":"course_information","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Fourth item title"},"17-front_fourth_item":{"value":"course_title","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Fourth Item to display"},"18-front_fifth_item_title":{"value":"address_1","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Fifth item title"},"19-front_fifth_item":{"value":"skip","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Fifth Item to display"},"20-front_sixth_item_title":{"value":"email","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Sixth item title"},"21-front_sixth_item":{"value":"email","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Sixth Item to display"},"22-front_seventh_item_title":{"value":"emergency_number","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Seventh item title"},"23-front_seventh_item":{"value":"skip","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Seventh Item to display"},"24-back_first_item_title":{"value":"headquarters","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back first item title"},"25-back_first_item_text":{"value":"\\u0661\\u0663 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0645\\u0646\\u0627\\u0631\\u0627\\u062a - \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631\\u0629","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back first item text"},"26-back_second_item_title":{"value":"phone_number","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back second title"},"27-back_second_item_text":{"value":"\\u0660\\u0665\\u0664\\u0668\\u0663\\u0660\\u0660\\u0663\\u0666\\u0667","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Second text"},"28-back_third_item_title":{"value":"email","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back third item title"},"29-back_third_item_text":{"value":"info@sasbit.com","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back third item text"},"30-back_fourth_item_title":{"value":"website","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back fourth item title"},"31-back_fourth_item_text":{"value":"www.sasbit.com","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Back fourth item text"},"31-front_total_fields":{"value":"11","type":"number","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"admission_number","roll_no":"student_number","name":"Name","course_title":"course_information","fathers_name":"fathers_name","date_of_birth":"date_of_birth","address_full":"full_address","address_middle":"city_address","address_small":"address_of_city_and_state","gender":"gender","blood_group":"blood_group","email":"email","validity":"validity_information","mobile":"mobile_number","home_phone":"home_phone_number"}},"tool_tip":"Enter first n fields to display on front"}}', 'With this module you can manage the contents order and items on ID card', '2017-01-07 07:51:13', '2018-02-04 09:39:29', NULL, NULL, NULL, NULL, 1, 'settings', 1),
(22, 'الملفات المسموح بها علي النظام', 'allowed_files', 'allowed_sys_files', NULL, '{"student_achievement_file_extensions":{"value":".xlsx,.docx,.pdf,.jpg,.png,.mp4,.mp3,.jpeg","type":"text","extra":"","tool_tip":"extensions only are allowed"}}', 'edit the files extensions allowed in the system', NULL, '2018-03-10 18:40:43', '::1', NULL, 0, 1790, 1, 'settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(4) DEFAULT NULL,
  `subject_id` int(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'skills',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `slug`, `skill_title`, `course_id`, `subject_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(23, 'mharh1852', 'مهاره ١', 17, 28, '2018-04-11 06:19:03', '2018-04-11 06:19:03', NULL, '51.36.108.22', 1790, NULL, 1, 'skills', 1),
(24, 'mharh530', 'مهاره ٢ ', 17, 28, '2018-04-11 06:19:03', '2018-04-11 06:19:03', NULL, '51.36.108.22', 1790, NULL, 1, 'skills', 1),
(25, 'mhar-alaalom148', 'مهارة العلوم ٣٣', 17, 28, '2018-04-11 06:19:03', '2018-04-11 06:19:55', '51.36.108.22', '51.36.108.22', 1790, 1790, 2, 'skills', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` bigint(20) unsigned NOT NULL,
  `staff_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `course_parent_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `user_id`, `course_parent_id`, `course_id`, `job_title`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_of_join`, `gender`, `marital_status`, `blood_group`, `fathers_name`, `mothers_name`, `mother_tongue`, `nationality`, `address_lane1`, `address_lane2`, `city`, `state`, `zipcode`, `country`, `mobile`, `home_phone`, `qualification`, `total_experience_years`, `total_experience_month`, `experience_information`, `other_information`, `settings`, `extra_fields`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(7, 'ACA1800', 1800, 17, 30, 'معلم ', 'هشام', 'محمد', 'هاشم', '2017-10-17', '2017-10-14', 'male', 'single', 'A -ve', 'منتصر', 'نور', 'العربية', 'SA', 'شسيشس', 'يشسي', 'Madina', 'العريض', '42314', 'SA', '548300367', '548300367', 'asd', 3, 0, 'شسيشس', 'سشي', '', NULL, NULL, '2017-10-13 07:11:42', '2017-12-30 22:34:07', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(8, 'ACA1803', 1803, 17, 29, 'معلم', 'محمود', '', '', NULL, '2017-12-30', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'لل', 0, 0, 'يسب', '', '', NULL, NULL, '2017-10-14 10:24:34', '2017-12-30 22:35:24', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(9, 'ACA1835', 1835, 17, 29, 'asda', 'teacher 2', '', '', NULL, '2017-10-16', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asd', 0, 0, '', '', '', NULL, NULL, '2017-10-15 22:54:24', '2017-12-30 22:36:16', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(10, 'ACA1836', 1836, 0, 0, 'asda', 'Teacher3', '', '', NULL, '2017-10-16', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asd', 0, 0, '', '', '', NULL, NULL, '2017-10-15 22:55:37', '2017-10-16 23:19:03', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(11, 'ACA1837', 1837, 17, 30, 'asda', 'خالد الصافي', '', '', NULL, '2017-10-16', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asd', 0, 0, '', '', '', NULL, NULL, '2017-10-15 22:57:54', '2017-12-30 22:36:07', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(12, 'ACA1868', 1868, 17, 29, 'معلم ', 'teacher5', 'منتصر ', 'El-Sawy', '2017-10-20', '2017-10-20', 'male', 'single', 'A -ve', 'منتصر', 'نور', 'العربية', 'AL', 'dae', 'dfwer', 'Madina', 'العريض', '42314', 'SA', '548300367', '548300367', 'asd', 5, 5, 'esefqwe', '', '', NULL, NULL, '2017-10-20 07:32:20', '2018-01-20 08:29:28', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(13, 'ACA1872', 1872, 0, 0, '', 'أحمد يوسف', '', '', NULL, NULL, 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', NULL, NULL, '2018-01-08 19:04:11', '2018-01-08 19:04:11', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(14, 'ACA1873', 1873, 17, 29, 'معلم', 'Montaser El-Sawy', '', '', NULL, '2018-01-14', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'لل', 0, 0, '', '', '', NULL, NULL, '2018-01-14 07:43:57', '2018-01-14 07:48:47', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(15, 'ACA1876', 1876, 0, 0, '', 'معلم للاختبار', '', '', NULL, NULL, 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', NULL, NULL, '2018-01-14 08:14:08', '2018-01-14 08:14:08', NULL, NULL, NULL, NULL, 1, 1, 'staff'),
(16, 'ACA1888', 1888, 0, 0, '', 'ahmed awded', '', '', NULL, NULL, 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', NULL, NULL, '2018-03-07 03:57:12', '2018-03-07 03:57:12', NULL, '156.213.84.209', 1790, NULL, 1, 1, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `studentattendance`
--

CREATE TABLE IF NOT EXISTS `studentattendance` (
  `id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `academic_id` bigint(20) unsigned NOT NULL,
  `course_parent_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `year` int(11) NOT NULL,
  `semester` bigint(20) unsigned NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject_id` bigint(20) unsigned NOT NULL,
  `total_class` int(11) NOT NULL DEFAULT '1',
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'studentattendance'
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentpromotions`
--

CREATE TABLE IF NOT EXISTS `studentpromotions` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `type` enum('admission','promoted','detained','completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admission',
  `from_academic_id` int(11) NOT NULL,
  `from_course_parent_id` int(11) NOT NULL,
  `from_course_id` int(11) NOT NULL,
  `to_academic_id` int(11) NOT NULL,
  `to_course_parent_id` int(11) NOT NULL,
  `to_course_id` int(11) NOT NULL,
  `from_year` int(11) NOT NULL,
  `from_semister` int(11) NOT NULL,
  `to_year` int(11) NOT NULL,
  `to_semister` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'studentpromotions'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) unsigned NOT NULL,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roll_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `academic_id` bigint(20) unsigned NOT NULL,
  `course_parent_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `first_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` enum('single','married','divorced') COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fathers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mothers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_tongue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `religion_id` bigint(20) unsigned DEFAULT NULL,
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
  `parent_user_id` bigint(20) unsigned NOT NULL,
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
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'students'
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `academic_id`, `course_parent_id`, `course_id`, `first_name`, `middle_name`, `last_name`, `user_id`, `date_of_birth`, `date_of_join`, `gender`, `marital_status`, `blood_group`, `fathers_name`, `mothers_name`, `mother_tongue`, `nationality`, `category_id`, `religion_id`, `parent_first_name`, `parent_last_name`, `parent_relation`, `parent_education`, `parent_occupation`, `parent_income`, `parent_email`, `parent_address_lane1`, `parent_address_lane2`, `parent_city`, `parent_state`, `parent_country`, `parent_phone1`, `parent_phone2`, `parent_mobile`, `parent_user_id`, `guardian_name`, `guardian_phone`, `relationship_with_guardian`, `guardian_email`, `address_lane1`, `address_lane2`, `city`, `state`, `zipcode`, `country`, `mobile`, `home_phone`, `previous_institute_name`, `previous_institute_address`, `previous_highest_qualification`, `previous_highest_qualification_percentage`, `year_passing`, `current_year`, `current_semister`, `other_information`, `settings`, `extra_fields`, `record_updated_by`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 'ACA1796', '17Primary3th_primary00001', 1, 17, 29, 'يامن', 'منتصر ', 'الصاوي', 1796, '2009-07-05', '2017-10-12', 'male', 'single', '', 'منتصر', 'نور', 'العربية', 'EG', 1, 1, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, 'منتصر', '0548300367', 'الوالد', 'montaserelsawy@gmail.com', 'شارع يحي بن ثابت', 'تقاطع ١', 'المدينة المنورة', 'العريض', '42314', 'SA', '0548300367', '0548300367', '', '', '', '', '', 1, 0, '', '', NULL, 1790, NULL, '2017-08-15 12:05:03', '2017-12-30 02:44:01', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(4, 'ACA1805', '171st_pri10100002', 1, 17, 29, 'a', 'b', 'c', 1805, '2010-01-02', '2017-12-13', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:47', '2018-01-09 07:48:52', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(5, 'ACA1806', '171st_pri10100003', 1, 17, 29, 'a', 'b', 'c', 1806, '2010-01-03', '2017-12-14', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:47', '2018-03-23 08:28:33', NULL, NULL, NULL, NULL, 3, 1, 'students'),
(6, 'ACA1807', '171st_pri10100004', 1, 17, 29, 'a', 'b', 'c', 1807, '2010-01-04', '2017-12-15', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:47', '2018-01-09 07:48:52', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(34, 'ACA1838', '172nd_pri10400001', 1, 17, 29, 'a', 'b', 'c', 1838, '2009-01-02', '2016-11-09', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2018-01-31 07:25:06', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(35, 'ACA1839', '172nd_pri10400002', 1, 17, 29, 'a', 'b', 'c', 1839, '2009-01-03', '2016-11-10', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2018-02-04 09:57:09', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(36, 'ACA1840', '172nd_pri10400003', 1, 18, 31, 'a', 'b', 'c', 1840, '2009-01-04', '2016-11-11', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2017-12-30 22:39:13', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(55, 'ACA1859', '172nd_pri10400022', 1, 28, 51, 'a', 'b', 'c', 1859, '2009-01-23', '2016-11-30', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2018-01-14 08:20:15', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(56, 'ACA1860', '172nd_pri10400023', 1, 28, 51, 'a', 'b', 'c', 1860, '2009-01-24', '2016-12-01', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2018-01-09 07:38:18', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(64, 'ACA1874', NULL, 0, 0, 0, 'سامي', '', '', 1874, NULL, NULL, 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', NULL, 0, NULL, '2018-01-14 08:05:44', '2018-01-14 08:05:44', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(65, 'ACA1875', '2018-01-14 02:16:03am26569994', 1, 17, 29, 'سامي', '', '', 1875, NULL, '2018-01-14', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 1790, NULL, '2018-01-14 08:07:57', '2018-01-14 08:16:03', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(66, 'ACA1877', 'p4970658', 1, 17, 29, 'yazid', '', '', 1877, NULL, '2018-01-16', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 1790, NULL, '2018-01-16 09:18:26', '2018-03-23 08:30:27', NULL, NULL, NULL, NULL, 3, 1, 'students'),
(67, 'ACA1880', NULL, 0, 0, 0, 'hasan hussain', '', '', 1880, NULL, NULL, 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', NULL, 0, NULL, '2018-02-15 08:46:49', '2018-02-15 08:46:49', NULL, NULL, NULL, NULL, 1, 1, 'students'),
(68, 'ACA1882', 'p5100753', 1, 17, 30, 'حسن كامل', 'حسين', 'الصاوي', 1882, '2018-02-22', '2018-02-22', 'male', 'single', 'A -ve', 'حسين', 'سارة', 'العربية', 'EG', 1, 1, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, 'Montaser El-Sawy', '548300367', 'asd', 'montaserelsawy@gmail.com', 'ase', 'asdf', 'Madina', 'dafad', '42314', 'SA', '548300367', '23423423423', '', '', '', '', '', 1, 0, '', '', NULL, 1790, NULL, '2018-02-22 06:22:35', '2018-02-22 06:24:37', '51.39.70.14', '51.39.70.14', 1790, 1790, 1, 1, 'students'),
(69, 'ACA1885', 'p3086676', 1, 17, 30, 'طلعت هشام', 'حسين', 'El-Sawy', 1885, '2018-02-22', '2018-02-22', 'male', 'single', 'A +ve', 'حسين', 'سارة', 'العربية', 'EG', 1, 1, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, 'Montaser El-Sawy', '548300367', 'asd', 'montaserelsawy@gmail.com', 'سشيب', 'شسي', 'Madina', 'يبس', '42314', 'SA', '548300367', '548300367', '', '', '', '', '', 1, 1, '', '', NULL, 1790, NULL, '2018-02-23 04:32:15', '2018-02-23 04:35:45', '51.39.70.14', '51.39.70.14', 1790, 1790, 1, 1, 'students'),
(70, 'ACA1889', NULL, 0, 0, 0, 'the iking', '', '', 1889, NULL, NULL, 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', NULL, 0, NULL, '2018-03-08 08:49:31', '2018-03-08 08:49:31', NULL, '156.213.84.209', 1790, NULL, 1, 1, 'students');

-- --------------------------------------------------------

--
-- Table structure for table `student_documents`
--

CREATE TABLE IF NOT EXISTS `student_documents` (
  `id` int(10) unsigned NOT NULL,
  `users_id` bigint(20) unsigned NOT NULL,
  `name` varchar(220) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student_documents'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_documents`
--

INSERT INTO `student_documents` (`id`, `users_id`, `name`, `type`, `file`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(15, 1877, 'ملف٢', 'image', '141988-file-160820.png', '2018-03-06 04:07:37', '2018-03-06 04:07:37', '51.39.216.224', '51.39.216.224', 1790, 1790, 1, 1, 'student_documents'),
(16, 1877, 'video', 'video', '169150-file-13809.mp4', '2018-03-06 04:07:37', '2018-03-06 04:07:37', '51.39.216.224', '51.39.216.224', 1790, 1790, 1, 1, 'student_documents'),
(36, 1880, 'صوره', 'image', '23476-file-101262.png', '2018-03-11 07:51:11', '2018-03-11 07:51:11', '51.39.216.95', '51.39.216.95', 1790, 1790, 1, 1, 'student_documents'),
(37, 1880, 'اكسل ', 'application', '648-file-120591.xlsx', '2018-03-11 07:51:11', '2018-03-11 07:51:11', '51.39.216.95', '51.39.216.95', 1790, 1790, 1, 1, 'student_documents'),
(38, 1880, 'Montaser El-Sawy', 'image', '171577-file-196952.png', '2018-03-11 07:51:11', '2018-03-11 07:51:11', '51.39.216.95', '51.39.216.95', 1790, 1790, 1, 1, 'student_documents'),
(39, 1880, 'Montaser El-Sawy', 'image', '72081-file-169595.png', '2018-03-11 07:51:11', '2018-03-11 07:51:11', '51.39.216.95', '51.39.216.95', 1790, 1790, 1, 1, 'student_documents'),
(40, 1880, 'mp3', 'audio', '21294-file-181669.mpga', '2018-03-11 07:51:11', '2018-03-11 07:51:11', '51.39.216.95', '51.39.216.95', 1790, 1790, 1, 1, 'student_documents');

-- --------------------------------------------------------

--
-- Table structure for table `subjectpreferences`
--

CREATE TABLE IF NOT EXISTS `subjectpreferences` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `staff_id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'subjectpreferences',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) unsigned NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'subjects',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(147, 'الدراسات الاجتماعية والوطنية', '52502', 'aldrasat-alajtmaaay-oalotny667-ce13f1f1d90c66d6b6a', 100, 40, 0, 0, 20, 60, 'Active', '2018-04-10 09:40:02', '2018-04-10 09:40:02', NULL, '51.36.92.34', 1790, NULL, 1, 'subjects', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'subscriptions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisors_staff`
--

CREATE TABLE IF NOT EXISTS `supervisors_staff` (
  `id` int(10) unsigned NOT NULL,
  `supervisor_id` int(5) DEFAULT NULL,
  `staff_id` int(5) DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'supervisors_staff'
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supervisors_staff`
--

INSERT INTO `supervisors_staff` (`id`, `supervisor_id`, `staff_id`, `record_status`, `branch_id`, `created_at`, `updated_at`, `created_by_ip`, `updated_by_ip`, `created_by_user`, `updated_by_user`, `table_name`) VALUES
(46, 1887, 1872, 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'supervisors_staff'),
(47, 1835, 1800, 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'supervisors_staff'),
(48, 1835, 1803, 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'supervisors_staff'),
(49, 1835, 1837, 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'supervisors_staff'),
(50, 1835, 1873, 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'supervisors_staff'),
(51, 1835, 1868, 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'supervisors_staff');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `academic_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `day` int(11) NOT NULL,
  `timingset_id` bigint(20) unsigned NOT NULL,
  `timingset_map_id` bigint(20) unsigned NOT NULL,
  `timingset_details_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `year` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET latin1 NOT NULL DEFAULT 'timetable',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `slug`, `academic_id`, `course_id`, `day`, `timingset_id`, `timingset_map_id`, `timingset_details_id`, `user_id`, `subject_id`, `year`, `semister`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(22, '', 1, 29, 1, 8, 1, 4, 1868, 34, 1, 1, '2018-04-15 06:54:10', '2018-04-15 06:54:10', '51.36.111.15', NULL, NULL, 1790, 2, 'timetable', 1),
(23, '', 1, 29, 2, 8, 2, 4, 1868, 34, 1, 1, '2018-04-15 06:54:10', '2018-04-15 06:54:10', '51.36.111.15', NULL, NULL, 1790, 2, 'timetable', 1),
(24, '', 1, 29, 4, 8, 4, 4, 1868, 34, 1, 1, '2018-04-15 06:54:10', '2018-04-15 06:54:10', '51.36.111.15', NULL, NULL, 1790, 2, 'timetable', 1),
(25, '', 1, 29, 4, 8, 4, 5, 1868, 34, 1, 1, '2018-04-15 06:54:10', '2018-04-15 06:54:10', '51.36.111.15', NULL, NULL, 1790, 2, 'timetable', 1),
(26, '', 1, 29, 5, 8, 5, 4, 1868, 34, 1, 1, '2018-04-15 06:54:10', '2018-04-15 06:54:10', '51.36.111.15', NULL, NULL, 1790, 2, 'timetable', 1),
(27, '', 1, 29, 6, 8, 6, 4, 1868, 34, 1, 1, '2018-04-15 06:54:10', '2018-04-15 06:54:10', '51.36.111.15', NULL, NULL, 1790, 2, 'timetable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timingset`
--

CREATE TABLE IF NOT EXISTS `timingset` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET latin1 NOT NULL DEFAULT 'timingset',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timingset`
--

INSERT INTO `timingset` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(8, 'Daily', 'daily', 'Daily', '2016-12-13 08:52:32', '2018-04-15 06:45:36', '51.36.111.15', NULL, NULL, 1790, 2, 'timingset', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timingsetdetails`
--

CREATE TABLE IF NOT EXISTS `timingsetdetails` (
  `id` bigint(20) unsigned NOT NULL,
  `timingset_id` bigint(20) unsigned NOT NULL,
  `period_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_break` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'timingsetdetails'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timingsetdetails`
--

INSERT INTO `timingsetdetails` (`id`, `timingset_id`, `period_name`, `start_time`, `end_time`, `is_break`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(4, 8, 'الاولي', '07:15:00', '08:00:00', 0, '2017-10-17 03:59:11', '2018-01-09 08:57:38', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails'),
(5, 8, 'الثانية', '08:00:00', '08:45:00', 0, '2017-10-17 03:59:11', '2018-01-09 08:57:38', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails'),
(6, 8, 'الثالثة', '08:45:00', '09:30:00', 0, '2017-10-17 03:59:11', '2018-01-09 08:57:38', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails'),
(7, 8, 'الرابعة', '09:30:00', '10:10:00', 0, '2017-10-17 03:59:11', '2017-10-17 04:03:26', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails'),
(8, 8, 'الفسحة', '10:10:00', '10:40:00', 1, '2017-10-17 03:59:11', '2017-10-17 04:03:26', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails'),
(9, 8, 'الخامسة', '10:40:00', '11:30:00', 0, '2017-10-17 03:59:11', '2017-10-17 04:03:26', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails'),
(10, 8, 'السادسة', '11:30:00', '12:10:00', 0, '2017-10-17 04:03:26', '2017-10-17 04:03:26', NULL, NULL, NULL, NULL, 1, 1, 'timingsetdetails');

-- --------------------------------------------------------

--
-- Table structure for table `timingsetmap`
--

CREATE TABLE IF NOT EXISTS `timingsetmap` (
  `id` bigint(20) unsigned NOT NULL,
  `day` int(11) NOT NULL,
  `timingset_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'timingsetmap'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timingsetmap`
--

INSERT INTO `timingsetmap` (`id`, `day`, `timingset_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'timingsetmap'),
(2, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'timingsetmap'),
(3, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'timingsetmap'),
(4, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'timingsetmap'),
(5, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'timingsetmap'),
(6, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'timingsetmap');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `course_id` int(11) NOT NULL DEFAULT '17',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `semester_num` int(1) DEFAULT '1',
  `academic_id` int(11) NOT NULL DEFAULT '1',
  `topic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'topics',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(112, 36, 17, 88, 2, 1, ' الدرس الثالث الشجرة الحزينة', 'a24030af23cd55063d6e7107ef0ffd73a64eff142298', '', 1, '2018-04-16 07:19:40', '2018-04-16 07:19:40', NULL, NULL, NULL, NULL, 1, 'topics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL,
  `default_lang` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` bigint(20) unsigned DEFAULT NULL,
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
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'users',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=1890 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `id_number`, `email`, `password`, `slug`, `login_enabled`, `role_id`, `default_lang`, `status`, `parent_id`, `image`, `phone`, `address`, `stripe_active`, `stripe_id`, `stripe_plan`, `paypal_email`, `card_brand`, `card_last_four`, `trial_ends_at`, `subscription_ends_at`, `remember_token`, `settings`, `coupons_id`, `deleted_at`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1790, 'منتصر الصاوي', 'montaserelsawy', '2269548687', 'montaserelsawy@gmail.com', '$2y$10$aA2xj/JjaE8MrKRDNQ6w7ern3WGtWlv3xUdrqhO/pMO9xNV0tQL6S', 'mntsr-alsaoy', 1, 1, 13, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E26CJ9hVytiaTILZOu5iU9fx45JO699fZl8ET9MQiKhaFt9obtAhXYqGw1YK', NULL, '0', NULL, '2017-08-08 00:07:43', '2018-04-16 05:57:57', '51.36.111.15', NULL, NULL, 1790, 2, 'users', 1),
(1796, 'يامن', 'yamen', '2232344453', 'montaser_sawy1@hotmail.com', '$2y$10$FznT4r0kcw2vHu6n4T/kWet786X17o9lf02cThU0kMTDCGJRy3QEO', 'yamn', 1, 5, 13, 1, 1869, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RUwg3GZvShqQCReeDW9uZQeqE5kvJhQ17o1J94YWWP4H9lySbtlP41vIENNL', '{"user_preferences":{"quiz_categories":[5],"lms_categories":[7],"offline_categories":[3]}}', '0', NULL, '2017-08-15 07:05:03', '2018-04-16 06:35:04', '51.36.111.15', NULL, NULL, 1796, 2, 'users', 1),
(1800, 'هشام خليل', 'Teacher1', NULL, 'Teacher@gmail.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'hsham-khlyl', 1, 3, NULL, 1, NULL, '', '052012345678', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R7ESpFAoGFvrMDR6SiwVHuAJUPogukYapOIrt45tpAA5JnaZjvqCL81Mvvdx', NULL, '0', NULL, '2017-10-13 07:11:42', '2017-12-20 19:53:54', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1802, 'Supervisor', 'Supervisor', NULL, 'Supervisor@gmail.com', '$2y$10$5Tq206n4KZu6xP2oUPQ9JeSTjLab0vITXgnMXbk8SmL7RgOlVg7IW', 'supervisor', 1, 2, 13, 1, NULL, '', '050456589653', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XTHU2v5QUxLNJrcekFEpmvQSPW3kKRNmLsLZJjBCfFLQY1ofrrVaR67DSPEq', NULL, '0', NULL, '2017-10-13 07:13:53', '2018-02-14 08:19:34', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1803, 'محمود', 'mahmoud', '2232344459', 'mahmoud@sasbit.com', '$2y$10$ySfgxPD/aB9vcXdyqi.1F.KghLx9H0LCeRh8kc.wQu93Z5Nm9fyhS', 'mhmod', 1, 3, 13, 1, NULL, '', '0548300367', 'sdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-14 10:24:34', '2018-03-22 08:43:55', '51.36.100.163', NULL, NULL, 1790, 2, 'users', 1),
(1805, 'خالد عصام يوسف ابوسعده', 'std1', NULL, 'email1@gmail.com', '$2y$10$fTHdhO3BZfxVQmAPQHFq2OMX2PL3nWd5102p/djX7rTOfIZEo7WXi', 'khald-aasam-yosf-abosaadh', 1, 5, NULL, 1, 1884, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oOUyyN4YpIY8abLuaur3opuyHkDbF4zddpbq4MMcaKsD4MFDR9e9AaXWUaBI', NULL, '0', NULL, '2017-10-15 22:46:47', '2018-02-22 06:31:12', '51.39.70.14', NULL, NULL, 1790, 1, 'users', 1),
(1806, 'بيان عبدالله حافظ حسين', 'std2', NULL, 'email2@gmail.com', '$2y$10$0Rcu.KAzuFzOf2.JnXE/Uu8OROm60BKNy28yBD2DyL74j8TMlFtIO', 'byan-aabdallh-hafth-hsyn', 1, 5, 13, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QYxaaMPPdnJJsLcsQFU7xzd8AoHtVusSBAksD2kfJl92IShQJ3WHpAY4roRl', NULL, '0', NULL, '2017-10-15 22:46:47', '2018-03-23 08:28:33', '51.39.240.33', NULL, NULL, 1806, 2, 'users', 1),
(1807, 'تالا نواف بن سليم القرني', 'std3', NULL, 'email3@gmail.com', '$2y$10$8dzcsrrr2oWCR6NuXizAheFNzWm6B3FRujVEVT/t9FnyEH4rPtC.C', 'tala-noaf-bn-slym-alkrny', 1, 5, NULL, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 22:46:47', '2017-10-15 22:46:47', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1835, 'خالد الحربي', 'teacher2', '2245545633', 'teacher2@gmail.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'khald-alhrby', 1, 9, 13, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wzMYb7R4F8ruSKj2BhMLYoazcavBySiebVif1qmp37eo7YNeS1dD4nQWQcSb', NULL, '0', NULL, '2017-10-15 22:54:24', '2018-04-15 06:41:43', '51.39.71.175', NULL, NULL, 1835, 2, 'users', 1),
(1836, 'حسين العتيبي', 'Teacher3', NULL, 'Teacher3@gmail.com', '$2y$10$xTIyV7Awh/vdQmIgGOU4OOlcHwhUqqqej8sPLvBNDK0hDe42KsWH.', 'hsyn-alaatyby', 1, 3, NULL, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 22:55:37', '2017-10-15 22:56:17', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1837, 'خالد الصافي', 'teacher4', NULL, 'teacher4@sasbit.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'khald-alsafy', 1, 3, NULL, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 22:57:54', '2017-10-15 22:57:54', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1838, 'خالد عصام يوسف ابوسعده', 'std31', NULL, 'email31@sasbit.com', '$2y$10$FAYFtkI7Vg8LhuIvTCSQU.PKxfM0W7JfWaW86DDBAdBq2Qg5FBjKS', 'khald-aasam-yosf-abosaadh', 1, 5, NULL, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1839, 'بيان عبدالله حافظ حسين', 'std32', NULL, 'email32@sasbit.com', '$2y$10$uC2UsPLEYLfxLkj2.dCD3e5wWbtZma89jAFc1mxaNndXenNLSIPLi', 'byan-aabdallh-hafth-hsyn', 1, 5, NULL, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13', NULL, NULL, NULL, NULL, 2, 'users', 1),
(1840, 'تالا نواف بن سليم القرني', 'std33', NULL, 'email33@sasbit.com', '$2y$10$mv.xDkkrh/lgmzv3DdnnyO33fHgyG3jAkrAzrx4Eqe2fkz/fcqp2S', 'tala-noaf-bn-slym-alkrny', 1, 5, NULL, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1859, 'علي بن صادق بن عبدالعظيم الممتن', 'std52', NULL, 'email52@sasbit.com', '$2y$10$cZVyEZrM3rW1RuwxFMZ65.fuCGL9ICTNdSixmWJcNVKpJGPis7GAS', 'aaly-bn-sadk-bn-aabdalaathym-almmtn', 1, 5, NULL, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 23:01:15', '2018-01-24 19:09:30', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1860, 'محمد ابراهيم بن عبدالرحمن الهزيم', 'std53', NULL, 'email53@sasbit.com', '$2y$10$vHGDHK/OUlOHskOmrMrzI.BZciqduPY9H5fuDJ6mk3W2fWpkdR.Be', 'mhmd-abrahym-bn-aabdalrhmn-alhzym', 1, 5, NULL, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1868, 'teacher5', 'teacher5', '2234758622', 'mont_sawy@yahoo.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'teacher5', 1, 3, 13, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5iwcajr1y1XWbjvzj6BNU3qufjkz2lkAFkUMRH518aVuvNnRGNCLziR3dsS0', NULL, '0', NULL, '2017-10-20 07:32:20', '2018-04-15 06:55:51', '51.36.236.99', NULL, NULL, 1868, 2, 'users', 1),
(1869, 'منتصر صلاح', 'montaser', '2232344457', 'montaser@sasbit.com', '$2y$10$58YYt48IVMRmv9cl6mZXDeVkZidOappERrBHRRwAhwYMXsd.0sfle', 'mntsr-slah', 1, 6, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OUqHD7FnnecFgREBMCcR92coKYRbb9lDYlkDGmRuPXSiZ0PcbTPLtH77xe92', '{"user_preferences":{"quiz_categories":[],"lms_categories":[],"offline_categories":[]}}', '0', NULL, '2017-12-16 02:57:45', '2018-04-15 00:40:24', '197.48.242.101', NULL, NULL, 1869, 2, 'users', 1),
(1870, 'lib', 'lib', '2245545666', 'support@sasbit.com', '$2y$10$Pt7zhHQMG0R9W48abGQzsuvLaL1/E8XM73hIAKc15BkxtjdJl2pqO', 'lib', 1, 7, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60HXV33rf6y2hORJPB87GmfPOiBuNoLthkuhlCrox2icjrKFIKYRQIHNQyrP', NULL, '0', NULL, '2017-12-16 03:01:49', '2018-03-30 10:43:37', '51.36.126.123', NULL, NULL, 1790, 2, 'users', 1),
(1872, 'أحمد يوسف', 'ahmed2', NULL, 'kh71aled19711@hotmail.com', '$2y$10$ZVgbqE.UbKH269Os.OqYQu8res.6kiNxSjdgQh9FFvQOIJQAWVB5a', 'ahmd-yosf', 1, 3, NULL, 1, NULL, '', '0534426545', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tCB3ZmK0Y01VS8anPjdXRAqOxlhW7KepdiQGoR6XSZj8h775Z3jUM3nPFlqG', NULL, '0', NULL, '2018-01-08 19:04:11', '2018-01-08 19:25:30', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1873, 'Montaser El-Sawy', 'monty', NULL, 'montaser_sawy3@hotmail.com', '$2y$10$BkMuBd1g6QZMazjlLWz0O.PWvcrqS2zQSreMemEG0rZ3sgdYHyvGu', 'montaser-el-sawy', 1, 3, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-01-14 07:43:57', '2018-02-15 08:45:39', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1874, 'سامي1', 'sami', NULL, 'sami@eee.com', '$2y$10$BsoCTlNz/oDi/2We8MTUge0r9ye.0PP8ygLqKo1VLwOx7K.Kb7p8e', 'samy1', 1, 5, NULL, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-01-14 08:05:44', '2018-01-14 08:12:24', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1875, 'سامي', 'sami2', NULL, 'montaser_sawy44@hotmail.com', '$2y$10$qJiB709R9LU3yOHEBAO36.MiVeAzBSnne1VEfdJcR.RpNKDzbZ0O6', 'samy', 1, 5, NULL, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-01-14 08:07:57', '2018-01-14 08:13:06', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1876, 'معلم للاختبار', 'teacher55', NULL, 'montaser_sawy@hotmail.com', '$2y$10$G2b3D9AsAMQAPZe7yawzTuj8/6Ch1PsceuL/TJwtCRUYIQB76A.J2', 'maalm-llakhtbar', 1, 3, NULL, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-01-14 08:14:08', '2018-01-14 08:14:08', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1877, 'yazid', 'yazid', '2245545600', 'yazid@yazid.com', '$2y$10$RHkZNQSTWhvHWOo463XiVuCKLtdBvBuatqjXhg/iuiQafBTuAxGZ6', 'yazid', 1, 5, 13, 1, 1869, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fx8da8idZR4NIPWjNtqFMwKi8yaEbY5MwxxBTFp0e0XdgXaAMqXCPtfQ5q5v', NULL, '0', NULL, '2018-01-16 09:18:26', '2018-04-14 09:18:53', '51.39.97.99', NULL, NULL, 1790, 2, 'users', 2),
(1878, 'Owner1', 'owner1', '6554566325', 'owner1@owner1.com', '$2y$10$tyPcmnhLjwQniu6k4gaBrOcmsRSkr7KZ.P83.mcyyazG.YZ5EbzBS', 'owner1', 1, 1, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mEpxnzwH5Wv3nknXwc5NjKAF5K0dHN6BpsDqitxxXTPYrUDDWyzMvfnQfibJ', NULL, '0', NULL, '2018-02-14 05:26:40', '2018-04-15 18:43:25', '82.147.193.156', NULL, NULL, 1878, 2, 'users', 1),
(1879, 'libassistant', 'libassistant', NULL, 'libassistant@libassistant.com', '$2y$10$qL.LXyFtp.MUMuoVGwVxFegEgErIA.SBpkjVtkyChsoZ6upd3q7KW', 'libassistant', 1, 8, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bdHRrq1tyo8eIFKN9n3hIGI3JZUb2ONI1IoRmrig5JUnutWzBBsqzcimEDUO', NULL, '0', NULL, '2018-02-14 05:28:38', '2018-03-15 06:09:56', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1880, 'hasan hussain', 'hasan', NULL, 'montaserelsawy3@gmail.com', '$2y$10$25IzabonBjTBf1GKCcRYpuwkA4bVvTM8Su65vwvOK0J5awzKDlKBK', 'hasan-hussain1179', 1, 5, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-02-15 08:46:49', '2018-02-15 08:46:49', NULL, NULL, NULL, NULL, 1, 'users', 1),
(1881, 'admin', 'admin', '2245545678', 'admin@admin.com', '$2y$10$wvXJbCTu2wmI1tikbUh6o.64YAYE3m5hnrkxiiu3KMjEadk2RAYFq', 'admin115', 1, 2, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AKolIKzas6gQ7zMvEyZVEuJpM662AKHjvlD4nnt5YRatlx4Cwkf18BNdeY1C', NULL, '0', NULL, '2018-02-22 06:18:59', '2018-03-15 06:10:32', NULL, '51.39.70.14', 1790, NULL, 1, 'users', 1),
(1882, 'حسن كامل', 'hasankamel', '2223456789', 'hasan_kamel@sdd.com', '$2y$10$uLksnhZHFMW3N.S5cLJLr.YAdkQ36lqBG7zCJybYa07/QdxTZvEPC', 'hsn-kaml850', 1, 5, 13, 1, 1883, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-02-22 06:22:35', '2018-02-22 06:25:44', '51.39.70.14', '51.39.70.14', 1790, 1790, 1, 'users', 1),
(1883, 'كامل', 'kamel', '2321345678', 'kamel@kkl.com', '$2y$10$tklj5JWnawR9TdlrQMTV8ujNw7b8PuR5dwdqTJIicpxGI2Td4pvf.', 'kamel1072', 1, 6, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'k0gPDL8SucqV8mq72FhlH98SxFZ7rk1BFeSNAtMFbxdRnUehRbcbTLolOH9u', NULL, '0', NULL, '2018-02-22 06:25:44', '2018-02-22 06:31:35', '51.39.70.14', '51.39.70.14', 1790, 1883, 1, 'users', 1),
(1884, 'عصام', 'essam', '2245545672', 'essam@yazid.com', '$2y$10$U8JwFDrD7/LHRGurmrN9M.Gg4cDD1wRrKB0PdgH3XKQodVlbQ2qmy', 'essam1368', 1, 6, NULL, 1, NULL, '', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-02-22 06:31:12', '2018-02-22 06:31:12', NULL, '51.39.70.14', 1790, NULL, 1, 'users', 1),
(1885, 'طلعت هشام', 'talaat', '2234758698', 'talaat@talaat.com', '$2y$10$dO3Kk7vRuNS/S7WKA557ueEkMw7ODnupO6NQ1aAnMSGvZlgCa9mCq', 'tlaat-hsham2392', 1, 5, 13, 1, 1886, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-02-23 04:32:15', '2018-02-23 04:36:18', '51.39.70.14', '51.39.70.14', 1790, 1790, 1, 'users', 1),
(1886, 'heshamtalaat', 'htalaat', '2212345654', 'htalaat@htalaat.com', '$2y$10$qVaQA0AdHDYrOfBHwYsMGuV8nOulNCNDeo41Ra7vcg0alOjed9eo2', 'htalaat2032', 1, 6, 13, 1, NULL, '', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NjfEHoPGq5JIguKkAlVZOtoxvS6ch08ZBshrD9KoJe0uRnVXDTIDjZfnazHO', NULL, '0', NULL, '2018-02-23 04:36:18', '2018-02-23 05:04:52', NULL, '51.39.70.14', 1790, NULL, 1, 'users', 1),
(1887, 'عماد الرحيلي', 'emad', '2234567877', 'emad@emad.com', '$2y$10$zOZQE9jVYpJOU5KkGXriXeUYRVww9v1vd3T7dI3nqnK34iEDjGA5G', 'aamad-alrhyly68', 1, 9, 13, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2018-02-26 06:41:45', '2018-02-26 11:01:01', '51.36.71.128', '51.36.71.128', 1790, 1887, 1, 'users', 1),
(1888, 'ahmed awded', 'awd20102', '1234567895', 'theimaginaryking@gmail.com', '$2y$10$3kqmLWBiyATrOJfPNZEWseHLhtR20g6qLPbvgtAN54Pnn6b5gRosm', 'ahmed-awded71', 1, 3, 9, 1, NULL, '', '01115913202', 'awder', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9KwsNcXjgNi8Ah6byh0lvZWFqYwZQLsha5qN7ISHXTlNROsKL1LPyIvqWUsB', NULL, '0', NULL, '2018-03-07 03:57:12', '2018-03-08 08:47:32', NULL, '156.213.84.209', 1790, NULL, 1, 'users', 1),
(1889, 'the iking', 'iking', '9876543210', 'icemagic_lordhana2007@yahoo.com', '$2y$10$sOkeCpvyxp40KHJZhb89i.Kw2v1A3EOAydluXfwp74VVQaONK6zje', 'the-iking1995', 1, 5, 13, 1, NULL, '', '01115921121', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zw50Ly8gcrl9x6XmOZljEtcv9iDfhQJ92pUq3SxqfK3dyO9Eb62iXCDPnQMr', NULL, '0', NULL, '2018-03-08 08:49:31', '2018-03-08 08:51:59', NULL, '156.213.84.209', 1790, NULL, 1, 'users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE IF NOT EXISTS `users_login` (
  `id` int(10) unsigned NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` bigint(20) DEFAULT NULL,
  `updated_by_user` bigint(20) DEFAULT NULL,
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(110) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'users_login',
  `branch_id` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `users_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) VALUES
(1, 1790, '2018-04-05 18:43:06', NULL, NULL, '51.39.71.175', 1790, NULL, 1, 'users_login', 1),
(2, 1868, '2018-04-05 18:43:59', NULL, NULL, '51.39.71.175', 1868, NULL, 1, 'users_login', 1),
(3, 1790, '2018-04-05 18:59:16', NULL, NULL, '51.39.71.175', 1790, NULL, 1, 'users_login', 1),
(4, 1835, '2018-04-05 21:51:25', NULL, NULL, '51.39.71.175', 1835, NULL, 1, 'users_login', 1),
(5, 1869, '2018-04-05 22:38:39', NULL, NULL, '51.39.71.175', 1869, NULL, 1, 'users_login', 1),
(6, 1869, '2018-04-05 23:54:55', NULL, NULL, '51.39.71.175', 1869, NULL, 1, 'users_login', 1),
(7, 1835, '2018-04-05 23:55:12', NULL, NULL, '51.39.71.175', 1835, NULL, 1, 'users_login', 1),
(8, 1790, '2018-04-06 00:21:51', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(9, 1869, '2018-04-06 02:05:04', NULL, NULL, '197.35.33.238', 1869, NULL, 1, 'users_login', 1),
(10, 1790, '2018-04-06 14:01:19', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(11, 1790, '2018-04-06 14:01:41', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(12, 1790, '2018-04-06 16:20:59', NULL, NULL, '51.39.71.175', 1790, NULL, 1, 'users_login', 1),
(13, 1790, '2018-04-06 16:35:47', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(14, 1790, '2018-04-07 00:27:55', NULL, NULL, '51.36.99.186', 1790, NULL, 1, 'users_login', 1),
(15, 1790, '2018-04-07 00:28:18', NULL, NULL, '51.36.99.186', 1790, NULL, 1, 'users_login', 1),
(16, 1869, '2018-04-07 01:11:03', NULL, NULL, '51.36.99.186', 1869, NULL, 1, 'users_login', 1),
(17, 1790, '2018-04-07 01:43:32', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(18, 1869, '2018-04-07 04:14:50', NULL, NULL, '197.35.33.238', 1869, NULL, 1, 'users_login', 1),
(19, 1869, '2018-04-07 04:16:20', NULL, NULL, '51.36.99.186', 1869, NULL, 1, 'users_login', 1),
(20, 1869, '2018-04-07 12:47:51', NULL, NULL, '176.225.106.18', 1869, NULL, 1, 'users_login', 1),
(21, 1790, '2018-04-07 12:59:07', NULL, NULL, '176.225.106.18', 1790, NULL, 1, 'users_login', 1),
(22, 1790, '2018-04-07 13:01:45', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(23, 1869, '2018-04-07 13:07:23', NULL, NULL, '197.35.33.238', 1869, NULL, 1, 'users_login', 1),
(24, 1869, '2018-04-07 14:28:53', NULL, NULL, '197.35.33.238', 1869, NULL, 1, 'users_login', 1),
(25, 1790, '2018-04-07 15:41:43', NULL, NULL, '197.35.33.238', 1790, NULL, 1, 'users_login', 1),
(26, 1790, '2018-04-07 16:06:58', NULL, NULL, '156.198.90.152', 1790, NULL, 1, 'users_login', 1),
(27, 1790, '2018-04-07 16:08:02', NULL, NULL, '156.216.132.109', 1790, NULL, 1, 'users_login', 1),
(28, 1790, '2018-04-07 16:29:11', NULL, NULL, '156.214.17.53', 1790, NULL, 1, 'users_login', 1),
(29, 1790, '2018-04-07 21:51:39', NULL, NULL, '51.36.92.34', 1790, NULL, 1, 'users_login', 1),
(30, 1790, '2018-04-08 22:14:11', NULL, NULL, '51.36.92.34', 1790, NULL, 1, 'users_login', 1),
(31, 1790, '2018-04-09 15:52:07', NULL, NULL, '156.196.141.167', 1790, NULL, 1, 'users_login', 1),
(32, 1796, '2018-04-09 15:53:51', NULL, NULL, '156.196.141.167', 1796, NULL, 1, 'users_login', 1),
(33, 1868, '2018-04-09 16:03:05', NULL, NULL, '156.196.141.167', 1868, NULL, 1, 'users_login', 1),
(34, 1869, '2018-04-09 16:05:45', NULL, NULL, '156.196.141.167', 1869, NULL, 1, 'users_login', 1),
(35, 1868, '2018-04-09 16:36:17', NULL, NULL, '156.196.141.167', 1868, NULL, 1, 'users_login', 1),
(36, 1869, '2018-04-09 18:21:24', NULL, NULL, '156.196.141.167', 1869, NULL, 1, 'users_login', 1),
(37, 1790, '2018-04-09 18:59:40', NULL, NULL, '156.212.238.223', 1790, NULL, 1, 'users_login', 1),
(38, 1790, '2018-04-09 19:10:20', NULL, NULL, '51.36.92.34', 1790, NULL, 1, 'users_login', 1),
(39, 1869, '2018-04-10 07:50:44', NULL, NULL, '197.48.242.101', 1869, NULL, 1, 'users_login', 1),
(40, 1796, '2018-04-10 08:01:56', NULL, NULL, '197.48.242.101', 1796, NULL, 1, 'users_login', 1),
(41, 1868, '2018-04-10 08:34:26', NULL, NULL, '197.48.242.101', 1868, NULL, 1, 'users_login', 1),
(42, 1869, '2018-04-10 08:39:53', NULL, NULL, '197.48.242.101', 1869, NULL, 1, 'users_login', 1),
(43, 1796, '2018-04-10 08:40:17', NULL, NULL, '197.48.242.101', 1796, NULL, 1, 'users_login', 1),
(44, 1790, '2018-04-10 17:09:41', NULL, NULL, '156.201.227.38', 1790, NULL, 1, 'users_login', 1),
(45, 1790, '2018-04-10 18:45:51', NULL, NULL, '51.36.108.22', 1790, NULL, 1, 'users_login', 1),
(46, 1869, '2018-04-10 21:27:16', NULL, NULL, '51.36.108.22', 1869, NULL, 1, 'users_login', 1),
(47, 1790, '2018-04-11 19:36:27', NULL, NULL, '51.36.108.22', 1790, NULL, 1, 'users_login', 1),
(48, 1869, '2018-04-11 22:52:26', NULL, NULL, '41.153.203.47', 1869, NULL, 1, 'users_login', 1),
(49, 1790, '2018-04-11 22:52:39', NULL, NULL, '41.153.203.47', 1790, NULL, 1, 'users_login', 1),
(50, 1790, '2018-04-12 18:15:08', NULL, NULL, '51.39.97.99', 1790, NULL, 1, 'users_login', 1),
(51, 1790, '2018-04-13 11:27:54', NULL, NULL, '51.39.97.99', 1790, NULL, 1, 'users_login', 1),
(52, 1790, '2018-04-13 12:18:45', NULL, NULL, '41.153.250.168', 1790, NULL, 1, 'users_login', 1),
(53, 1790, '2018-04-13 13:23:43', NULL, NULL, '197.35.197.155', 1790, NULL, 1, 'users_login', 1),
(54, 1869, '2018-04-13 14:26:01', NULL, NULL, '51.39.97.99', 1869, NULL, 1, 'users_login', 1),
(55, 1869, '2018-04-13 14:26:57', NULL, NULL, '197.35.197.155', 1869, NULL, 1, 'users_login', 1),
(56, 1790, '2018-04-13 19:56:47', NULL, NULL, '51.39.97.99', 1790, NULL, 1, 'users_login', 1),
(57, 1796, '2018-04-13 20:44:14', NULL, NULL, '51.39.97.99', 1796, NULL, 1, 'users_login', 1),
(58, 1790, '2018-04-13 20:54:53', NULL, NULL, '41.42.176.155', 1790, NULL, 1, 'users_login', 1),
(59, 1790, '2018-04-13 21:51:35', NULL, NULL, '156.198.136.205', 1790, NULL, 1, 'users_login', 1),
(60, 1790, '2018-04-13 21:51:58', NULL, NULL, '156.198.136.205', 1790, NULL, 1, 'users_login', 1),
(61, 1790, '2018-04-14 10:09:45', NULL, NULL, '156.213.163.43', 1790, NULL, 1, 'users_login', 1),
(62, 1790, '2018-04-14 11:21:20', NULL, NULL, '51.39.97.99', 1790, NULL, 1, 'users_login', 1),
(63, 1796, '2018-04-14 13:47:06', NULL, NULL, '51.39.97.99', 1796, NULL, 1, 'users_login', 1),
(64, 1869, '2018-04-14 14:04:30', NULL, NULL, '51.39.97.99', 1869, NULL, 1, 'users_login', 1),
(65, 1869, '2018-04-14 14:09:16', NULL, NULL, '197.35.128.223', 1869, NULL, 1, 'users_login', 1),
(66, 1790, '2018-04-14 14:10:32', NULL, NULL, '197.35.128.223', 1790, NULL, 1, 'users_login', 1),
(67, 1790, '2018-04-14 14:58:18', NULL, NULL, '51.39.97.99', 1790, NULL, 1, 'users_login', 1),
(68, 1790, '2018-04-14 14:58:31', NULL, NULL, '156.216.239.33', 1790, NULL, 1, 'users_login', 1),
(69, 1790, '2018-04-14 18:24:42', NULL, NULL, '196.153.0.57', 1790, NULL, 1, 'users_login', 1),
(70, 1790, '2018-04-14 19:15:24', NULL, NULL, '51.39.97.99', 1790, NULL, 1, 'users_login', 1),
(71, 1869, '2018-04-14 19:59:59', NULL, NULL, '51.36.111.15', 1869, NULL, 1, 'users_login', 1),
(72, 1868, '2018-04-14 20:04:41', NULL, NULL, '51.36.111.15', 1868, NULL, 1, 'users_login', 1),
(73, 1868, '2018-04-14 20:04:46', NULL, NULL, '51.36.111.15', 1868, NULL, 1, 'users_login', 1),
(74, 1790, '2018-04-14 20:05:25', NULL, NULL, '51.36.111.15', 1790, NULL, 1, 'users_login', 1),
(75, 1868, '2018-04-14 20:07:34', NULL, NULL, '51.36.111.15', 1868, NULL, 1, 'users_login', 1),
(76, 1835, '2018-04-14 20:11:21', NULL, NULL, '51.36.111.15', 1835, NULL, 1, 'users_login', 1),
(77, 1790, '2018-04-14 20:11:50', NULL, NULL, '51.36.111.15', 1790, NULL, 1, 'users_login', 1),
(78, 1868, '2018-04-14 20:24:26', NULL, NULL, '51.36.111.15', 1868, NULL, 1, 'users_login', 1),
(79, 1790, '2018-04-14 20:26:01', NULL, NULL, '51.36.111.15', 1790, NULL, 1, 'users_login', 1),
(80, 1868, '2018-04-14 20:32:53', NULL, NULL, '51.36.111.15', 1868, NULL, 1, 'users_login', 1),
(81, 1790, '2018-04-14 20:49:19', NULL, NULL, '41.153.55.16', 1790, NULL, 1, 'users_login', 1),
(82, 1790, '2018-04-14 21:17:00', NULL, NULL, '196.155.5.69', 1790, NULL, 1, 'users_login', 1),
(83, 1790, '2018-04-15 08:11:15', NULL, NULL, '82.147.193.156', 1790, NULL, 1, 'users_login', 1),
(84, 1878, '2018-04-15 08:11:53', NULL, NULL, '82.147.193.156', 1878, NULL, 1, 'users_login', 1),
(85, 1790, '2018-04-15 09:58:05', NULL, NULL, '51.211.172.178', 1790, NULL, 1, 'users_login', 1),
(86, 1796, '2018-04-15 10:02:03', NULL, NULL, '51.211.172.178', 1796, NULL, 1, 'users_login', 1),
(87, 1790, '2018-04-15 11:38:36', NULL, NULL, '41.42.127.93', 1790, NULL, 1, 'users_login', 1),
(88, 1790, '2018-04-15 18:54:03', NULL, NULL, '51.36.111.15', 1790, NULL, 1, 'users_login', 1),
(89, 1796, '2018-04-15 20:03:15', NULL, NULL, '51.36.111.15', 1796, NULL, 1, 'users_login', 1),
(90, 1790, '2018-04-15 21:14:59', NULL, NULL, '156.212.223.115', 1790, NULL, 1, 'users_login', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE IF NOT EXISTS `user_feedback` (
  `id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `feedback_id` int(10) unsigned NOT NULL,
  `state` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user_feedback'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`id`, `user_id`, `feedback_id`, `state`, `created_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `record_status`, `branch_id`, `table_name`) VALUES
(1, 1790, 1, 'old', '2018-02-12 19:57:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_feedback'),
(2, 1802, 1, 'old', '2018-02-12 19:57:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_feedback'),
(3, 1790, 2, 'old', '2018-02-13 19:11:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_feedback'),
(4, 1802, 2, 'new', '2018-02-13 19:11:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_feedback'),
(5, 1878, 2, 'new', '2018-02-13 19:11:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE IF NOT EXISTS `user_notification` (
  `id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `notification_id` int(10) unsigned NOT NULL,
  `state` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_ip` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_by_user` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` smallint(6) NOT NULL DEFAULT '1',
  `table_name` varchar(110) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user_notification'
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_notification`
--

INSERT INTO `user_notification` (`id`, `user_id`, `notification_id`, `state`, `created_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `record_status`, `branch_id`, `table_name`) VALUES
(64, 1796, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(65, 1800, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(66, 1802, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(67, 1803, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(68, 1805, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(69, 1806, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(70, 1807, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(71, 1835, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(72, 1836, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(73, 1837, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(74, 1838, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(75, 1839, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(76, 1840, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(77, 1859, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(78, 1860, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(79, 1868, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(80, 1869, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(82, 1872, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(83, 1873, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(84, 1874, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(85, 1875, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(86, 1876, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(87, 1877, 6, 'new', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(88, 1878, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(89, 1879, 6, 'old', '2018-02-13 21:08:46', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(90, 1879, 7, 'new', '2018-02-13 21:10:30', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(91, 1796, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(92, 1800, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(93, 1802, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(94, 1803, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(95, 1805, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(96, 1806, 6, 'old', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(97, 1807, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(98, 1835, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(99, 1836, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(100, 1837, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(101, 1838, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(102, 1839, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(103, 1840, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(104, 1859, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(105, 1860, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(106, 1868, 6, 'old', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(107, 1869, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(108, 1870, 6, 'old', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(110, 1872, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(111, 1873, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(112, 1874, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(113, 1875, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(114, 1876, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(115, 1877, 6, 'new', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(116, 1878, 6, 'old', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(117, 1879, 6, 'old', '2018-02-13 21:31:14', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(118, 1796, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(119, 1800, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(120, 1802, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(121, 1803, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(122, 1805, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(123, 1806, 8, 'old', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(124, 1807, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(125, 1835, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(126, 1836, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(127, 1837, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(128, 1838, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(129, 1839, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(130, 1840, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(131, 1859, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(132, 1860, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(133, 1868, 8, 'old', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(134, 1869, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(135, 1870, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(137, 1872, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(138, 1873, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(139, 1874, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(140, 1875, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(141, 1876, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(142, 1877, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(143, 1878, 8, 'old', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(144, 1879, 8, 'new', '2018-02-13 21:35:17', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(145, 1796, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(146, 1800, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(147, 1802, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(148, 1803, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(149, 1805, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(150, 1806, 8, 'old', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(151, 1807, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(152, 1835, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(153, 1836, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(154, 1837, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(155, 1838, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(156, 1839, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(157, 1840, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(158, 1859, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(159, 1860, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(160, 1868, 8, 'old', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(161, 1869, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(162, 1870, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(164, 1872, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(165, 1873, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(166, 1874, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(167, 1875, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(168, 1876, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(169, 1877, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(170, 1878, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(171, 1879, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(172, 1880, 8, 'new', '2018-02-14 21:17:20', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(173, 1796, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(174, 1800, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(175, 1802, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(176, 1803, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(177, 1805, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(178, 1806, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(179, 1807, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(180, 1835, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(181, 1836, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(182, 1837, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(183, 1838, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(184, 1839, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(185, 1840, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(186, 1859, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(187, 1860, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(188, 1868, 9, 'old', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(189, 1869, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(190, 1870, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(192, 1872, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(193, 1873, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(194, 1874, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(195, 1875, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(196, 1876, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(197, 1877, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(198, 1878, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(199, 1879, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification'),
(200, 1880, 9, 'new', '2018-02-14 21:18:51', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1, 1, 'user_notification');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicholidays`
--
ALTER TABLE `academicholidays`
  ADD PRIMARY KEY (`id`), ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `academics_dues`
--
ALTER TABLE `academics_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academics_dues_pivot`
--
ALTER TABLE `academics_dues_pivot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academics_semesters`
--
ALTER TABLE `academics_semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_course`
--
ALTER TABLE `academic_course`
  ADD PRIMARY KEY (`id`), ADD KEY `academic_id` (`academic_id`), ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `categories_category_name_unique` (`category_name`), ADD UNIQUE KEY `categories_slug_unique` (`slug`), ADD KEY `category_name` (`category_name`,`slug`);

--
-- Indexes for table `certificateissues`
--
ALTER TABLE `certificateissues`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `issued_by` (`issued_by`);

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
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
  ADD PRIMARY KEY (`id`), ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD PRIMARY KEY (`id`), ADD KEY `academic_id` (`academic_id`), ADD KEY `course_parent_id` (`course_parent_id`), ADD KEY `course_id` (`course_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `departments_department_code_unique` (`department_code`), ADD UNIQUE KEY `departments_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `examseries_data`
--
ALTER TABLE `examseries_data`
  ADD PRIMARY KEY (`id`), ADD KEY `examseries_id` (`examseries_id`), ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `examtoppers`
--
ALTER TABLE `examtoppers`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `quiz_id` (`quiz_id`), ADD KEY `quiz_result_id` (`quiz_result_id`), ADD KEY `quiz_id_2` (`quiz_id`), ADD KEY `quiz_result_id_2` (`quiz_result_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `groups_group_unique` (`group`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `lessionplans`
--
ALTER TABLE `lessionplans`
  ADD PRIMARY KEY (`id`), ADD KEY `course_subject_id` (`course_subject_id`), ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `libraryassetinstances`
--
ALTER TABLE `libraryassetinstances`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `libraryassetinstances_asset_no_unique` (`asset_no`), ADD KEY `record_updated_by` (`record_updated_by`), ADD KEY `library_master_id` (`library_master_id`);

--
-- Indexes for table `libraryassettypes`
--
ALTER TABLE `libraryassettypes`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `libraryissues`
--
ALTER TABLE `libraryissues`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`,`master_asset_id`,`library_instance_id`,`record_updated_by`), ADD KEY `master_asset_id` (`master_asset_id`), ADD KEY `library_instance_id` (`library_instance_id`), ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `librarymasters`
--
ALTER TABLE `librarymasters`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `librarymasters_slug_unique` (`slug`), ADD KEY `asset_type_id` (`asset_type_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `author_id` (`author_id`,`publisher_id`,`record_updated_by`), ADD KEY `publisher_id` (`publisher_id`), ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `lmscategories`
--
ALTER TABLE `lmscategories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `lmscategories_slug_unique` (`slug`);

--
-- Indexes for table `lmscontents`
--
ALTER TABLE `lmscontents`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `lmscontents_slug_unique` (`slug`), ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `lmsseries`
--
ALTER TABLE `lmsseries`
  ADD PRIMARY KEY (`id`), ADD KEY `lms_category_id` (`lms_category_id`);

--
-- Indexes for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
  ADD PRIMARY KEY (`id`), ADD KEY `lmsseries_id` (`lmsseries_id`), ADD KEY `lmscontent_id` (`lmscontent_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_participants`
--
ALTER TABLE `messenger_participants`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`), ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `publishers_publisher_unique` (`name`), ADD UNIQUE KEY `publishers_slug_unique` (`slug`), ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD PRIMARY KEY (`id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
  ADD PRIMARY KEY (`id`), ADD KEY `questionbank_quizzes_questionbank_id_foreign` (`questionbank_id`), ADD KEY `quize_id` (`quize_id`), ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
  ADD PRIMARY KEY (`id`), ADD KEY `quiz_id` (`quiz_id`), ADD KEY `academic_id` (`academic_id`), ADD KEY `course_id` (`course_id`), ADD KEY `course_parent_id` (`course_parent_id`);

--
-- Indexes for table `quizcategories`
--
ALTER TABLE `quizcategories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `quizcategories_slug_unique` (`slug`);

--
-- Indexes for table `quizofflinecategories`
--
ALTER TABLE `quizofflinecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizresults`
--
ALTER TABLE `quizresults`
  ADD PRIMARY KEY (`id`), ADD KEY `quiz_id` (`quiz_id`), ADD KEY `user_id` (`user_id`), ADD KEY `academic_id` (`academic_id`), ADD KEY `course_parent_id` (`course_parent_id`), ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `quizzes_slug_unique` (`slug`), ADD KEY `category_id` (`category_id`), ADD KEY `instructions_page_id` (`instructions_page_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `offline_quiz_category_id` (`offline_quiz_category_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `religions_religion_name_unique` (`religion_name`), ADD UNIQUE KEY `religions_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`), ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `semisters`
--
ALTER TABLE `semisters`
  ADD PRIMARY KEY (`id`), ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `settings_key_unique` (`key`), ADD UNIQUE KEY `settings_slug_unique` (`slug`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `staff_staff_id_unique` (`staff_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD PRIMARY KEY (`id`), ADD KEY `student_id` (`student_id`,`academic_id`,`course_parent_id`,`course_id`,`subject_id`,`record_updated_by`), ADD KEY `semester` (`semester`), ADD KEY `academic_id` (`academic_id`), ADD KEY `record_updated_by` (`record_updated_by`), ADD KEY `studentattendance_ibfk_4` (`subject_id`);

--
-- Indexes for table `studentpromotions`
--
ALTER TABLE `studentpromotions`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`,`student_id`,`record_updated_by`), ADD KEY `student_id` (`student_id`), ADD KEY `record_updated_by` (`record_updated_by`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roll_no` (`roll_no`), ADD KEY `academic_id` (`academic_id`,`course_parent_id`,`course_id`,`user_id`,`parent_user_id`,`record_updated_by`), ADD KEY `course_parent_id` (`course_parent_id`), ADD KEY `course_id` (`course_id`), ADD KEY `parent_user_id` (`parent_user_id`), ADD KEY `record_updated_by` (`record_updated_by`), ADD KEY `students_ibfk_4` (`user_id`), ADD KEY `category_id` (`category_id`), ADD KEY `religion_id` (`religion_id`);

--
-- Indexes for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `staff_id` (`staff_id`), ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD UNIQUE KEY `subject_title` (`subject_title`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors_staff`
--
ALTER TABLE `supervisors_staff`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`), ADD KEY `academic_id` (`academic_id`,`course_id`,`timingset_id`,`timingset_map_id`,`timingset_details_id`,`user_id`,`subject_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `timingset_id` (`timingset_id`), ADD KEY `timingsetmap_id` (`timingset_map_id`), ADD KEY `course_id` (`course_id`), ADD KEY `timig_set_details_id` (`timingset_details_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `timingset`
--
ALTER TABLE `timingset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timingsetdetails`
--
ALTER TABLE `timingsetdetails`
  ADD PRIMARY KEY (`id`), ADD KEY `timingset_id` (`timingset_id`);

--
-- Indexes for table `timingsetmap`
--
ALTER TABLE `timingsetmap`
  ADD PRIMARY KEY (`id`), ADD KEY `academic_id` (`timingset_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `id_number` (`id_number`), ADD UNIQUE KEY `id_number_2` (`id_number`), ADD KEY `id` (`id`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `feedback_id` (`feedback_id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `notification_id` (`notification_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicholidays`
--
ALTER TABLE `academicholidays`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `academics_dues`
--
ALTER TABLE `academics_dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `academics_dues_pivot`
--
ALTER TABLE `academics_dues_pivot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `academics_semesters`
--
ALTER TABLE `academics_semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `academic_course`
--
ALTER TABLE `academic_course`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `certificateissues`
--
ALTER TABLE `certificateissues`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `certificatetemplates`
--
ALTER TABLE `certificatetemplates`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=497;
--
-- AUTO_INCREMENT for table `couponcodes`
--
ALTER TABLE `couponcodes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `couponcodes_usage`
--
ALTER TABLE `couponcodes_usage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `course_subject`
--
ALTER TABLE `course_subject`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=297;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dues_purchase`
--
ALTER TABLE `dues_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `examseries`
--
ALTER TABLE `examseries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `examseries_data`
--
ALTER TABLE `examseries_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `examtoppers`
--
ALTER TABLE `examtoppers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `lessionplans`
--
ALTER TABLE `lessionplans`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `libraryassetinstances`
--
ALTER TABLE `libraryassetinstances`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `libraryassettypes`
--
ALTER TABLE `libraryassettypes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `libraryissues`
--
ALTER TABLE `libraryissues`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `librarymasters`
--
ALTER TABLE `librarymasters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lmscategories`
--
ALTER TABLE `lmscategories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lmscontents`
--
ALTER TABLE `lmscontents`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lmsseries`
--
ALTER TABLE `lmsseries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `messenger_participants`
--
ALTER TABLE `messenger_participants`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `messenger_threads`
--
ALTER TABLE `messenger_threads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `modulehelper`
--
ALTER TABLE `modulehelper`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `parenttimingsetmap`
--
ALTER TABLE `parenttimingsetmap`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `questionbank`
--
ALTER TABLE `questionbank`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `quizcategories`
--
ALTER TABLE `quizcategories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `quizofflinecategories`
--
ALTER TABLE `quizofflinecategories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quizresults`
--
ALTER TABLE `quizresults`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `semisters`
--
ALTER TABLE `semisters`
  MODIFY `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `studentpromotions`
--
ALTER TABLE `studentpromotions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `student_documents`
--
ALTER TABLE `student_documents`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supervisors_staff`
--
ALTER TABLE `supervisors_staff`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `timingset`
--
ALTER TABLE `timingset`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `timingsetdetails`
--
ALTER TABLE `timingsetdetails`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `timingsetmap`
--
ALTER TABLE `timingsetmap`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1890;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_course`
--
ALTER TABLE `academic_course`
ADD CONSTRAINT `academic_course_ibfk_1` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`),
ADD CONSTRAINT `academic_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
ADD CONSTRAINT `bookmarks_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `questionbank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `bookmarks_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `couponcodes_usage`
--
ALTER TABLE `couponcodes_usage`
ADD CONSTRAINT `couponcodes_usage_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `couponcodes_usage_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `couponcodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
ADD CONSTRAINT `coursesemisters_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `course_subject`
--
ALTER TABLE `course_subject`
ADD CONSTRAINT `course_subject_ibfk_1` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `course_subject_ibfk_2` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`),
ADD CONSTRAINT `course_subject_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
ADD CONSTRAINT `course_subject_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

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
-- Constraints for table `lmscontents`
--
ALTER TABLE `lmscontents`
ADD CONSTRAINT `lmscontents_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `lmsseries`
--
ALTER TABLE `lmsseries`
ADD CONSTRAINT `lmsseries_ibfk_1` FOREIGN KEY (`lms_category_id`) REFERENCES `lmscategories` (`id`);

--
-- Constraints for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
ADD CONSTRAINT `lmsseries_data_ibfk_1` FOREIGN KEY (`lmsseries_id`) REFERENCES `lmsseries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `lmsseries_data_ibfk_2` FOREIGN KEY (`lmscontent_id`) REFERENCES `lmscontents` (`id`);

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
ADD CONSTRAINT `questionbank_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
ADD CONSTRAINT `questionbank_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
ADD CONSTRAINT `questionbank_quizzes_ibfk_1` FOREIGN KEY (`questionbank_id`) REFERENCES `questionbank` (`id`),
ADD CONSTRAINT `questionbank_quizzes_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
ADD CONSTRAINT `questionbank_quizzes_ibfk_3` FOREIGN KEY (`quize_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
ADD CONSTRAINT `quizapplicability_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `quizapplicability_ibfk_2` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `quizapplicability_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
ADD CONSTRAINT `quizapplicability_ibfk_4` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `quizresults`
--
ALTER TABLE `quizresults`
ADD CONSTRAINT `quizresults_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
ADD CONSTRAINT `quizresults_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `quizresults_ibfk_3` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`),
ADD CONSTRAINT `quizresults_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
ADD CONSTRAINT `quizresults_ibfk_5` FOREIGN KEY (`course_parent_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
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
-- Constraints for table `semisters`
--
ALTER TABLE `semisters`
ADD CONSTRAINT `semisters_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentattendance`
--
ALTER TABLE `studentattendance`
ADD CONSTRAINT `studentattendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `studentattendance_ibfk_2` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`id`),
ADD CONSTRAINT `studentattendance_ibfk_3` FOREIGN KEY (`record_updated_by`) REFERENCES `users` (`id`),
ADD CONSTRAINT `studentattendance_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

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
ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`),
ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
ADD CONSTRAINT `subjectpreferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `subjectpreferences_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
ADD CONSTRAINT `subjectpreferences_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_notification`
--
ALTER TABLE `user_notification`
ADD CONSTRAINT `notifi_id` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
