-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 06:49 PM
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
-- Table structure for table `home_works`
--

CREATE TABLE `home_works` (
  `id` int(11) NOT NULL,
  `slug` varchar(220) COLLATE utf8_bin NOT NULL,
  `title` varchar(220) COLLATE utf8_bin NOT NULL,
  `staff_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL DEFAULT '1',
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

--
-- Dumping data for table `home_works`
--

INSERT INTO `home_works` (`id`, `slug`, `title`, `staff_id`, `course_id`, `year`, `sem`, `subject_id`, `branch_id`, `category_id`, `explanation`, `file`, `file_ext`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`) VALUES
(2, 'test2352-520e7c9060fd5342c6bc5c60ca4996d720049c38', 'test23', 1834, 22, 1, 1, 58, 1, 1, '<p>test</p>\r\n', '166095question164075.pdf', '', '2018-10-08 10:01:46', '2018-10-09 19:00:55', '', '::1', 1790, 0, 2, 'home_works'),
(3, 'dsaasd861-97ef2c9e0f13a0db50162b91324c686cdb20f56d', 'daraf', 1834, 22, 1, 1, 58, 1, 1, '<p>daraf</p>\r\n', '818question95746.pdf', '', '2018-10-08 16:20:59', '2018-10-09 18:57:41', '::1', '::1', 1834, 1834, 2, 'home_works'),
(4, 'hidden2457-a2a9de441a87ee49f5142227b45bcd3cc4d81936', 'hidden', 1834, 22, 1, 1, 58, 1, 1, '<p>adsr</p>\r\n', '185376question68830.pdf', '', '2018-10-10 16:48:50', '0000-00-00 00:00:00', '', '::1', 1834, 0, 1, 'home_works');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `home_works`
--
ALTER TABLE `home_works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home_works`
--
ALTER TABLE `home_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
