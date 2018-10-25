-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 05:22 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sasbit_school`
--

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
(23, 'الملفات المسموح بها فى الواجبات', 'allowed_home_work_files', 'allowed_HW_files', NULL, '{"homework_allowed_files":{"value":".pdf,.xlsx","type":"text","extra":"","tool_tip":"extensions only are allowed"}}', 'edit the files extensions allowed in the system', NULL, '2018-10-07 19:04:19', '::1', NULL, NULL, 1790, 2, 'settings', 1);


UPDATE `settings` SET `settings_data` = '{"background_image":{"value":"71mZtKNc3ds9P9L.jpg","type":"file","extra":"","tool_tip":"Front background image"},"currency_symbol":{"value":"\\u0631\\u064a\\u0627\\u0644","type":"text","extra":"","tool_tip":"Add your currency symbol"},"current_theme":{"value":"default","type":"select","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Select theme"},"default_academic_year_id":{"value":"1","type":"number","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Enter default academic year"},"default_parent_course_id":{"value":"1","type":"number","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Enter default parent course ID"},"login_page_title":{"value":"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0623\\u0646\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Type Of Education System"},"site_address":{"value":"","type":"textarea","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Address"},"site_city":{"value":"\\u0627\\u0644\\u0623\\u062d\\u0633\\u0627\\u0621","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"City"},"Site_country":{"value":"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Country"},"site_favicon":{"value":"ZK4B6RqzibqxAKx.ico","type":"file","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Favicon"},"site_logo":{"value":"IF9YjII6mtu7N9g.png","type":"file","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Site Logo"},"site_logo_attendance_header":{"value":"neJpsUDg4K7SL9C.png","type":"file","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Site Logo"},"site_phone":{"value":"0548300367","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Phone"},"site_state":{"value":"\\u0627\\u0644\\u0634\\u0631\\u0642\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"State"},"site_title":{"value":"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0623\\u0646\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Site Title"},"site_zipcode":{"value":"41321","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Postal Code"},"system_timezone":{"value":"Asia\\/Riyadh","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Refer http:\\/\\/php.net\\/manual\\/en\\/timezones.php"}}' WHERE `settings`.`id` = 6;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD UNIQUE KEY `settings_slug_unique` (`slug`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
