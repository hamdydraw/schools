-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 12:20 PM
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
-- Table structure for table `homeworks_student`
--

CREATE TABLE `homeworks_student` (
  `id` int(11) NOT NULL,
  `slug` varchar(220) COLLATE utf8_bin NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `homeworks_student`
--

INSERT INTO `homeworks_student` (`id`, `slug`, `homework_id`, `student_id`, `created_at`) VALUES
(69, 'oajb-jdyd-llakhtbar-12381-9ea5681aca9742a0514532318601f40865860419', 12, 4288, '2018-11-21 14:43:05'),
(70, 'oajb-jdyd-llakhtbar-12690-686b472821c6b2012262a76b5ec2ff3293a34cfc', 12, 4290, '2018-11-21 14:43:05'),
(71, 'oajb-jdyd-llakhtbar-122163-7afc860bce8b18661794ba8e67d831b3a021a28b', 12, 4292, '2018-11-21 14:43:05'),
(72, 'oajb-jdyd-llakhtbar-122682-d7812c634b8041f1ef263e108973b67ce1df7344', 12, 4294, '2018-11-21 14:43:05'),
(73, 'oajb-jdyd-llakhtbar-121003-8c03998668e7c15814d05622d6c9d7647f97a6ab', 12, 4296, '2018-11-21 14:43:05'),
(74, 'oajb-jdyd-llakhtbar-122828-a5843170ceb51c9ac1fe3254ee7ce7c251c8d6e5', 12, 4298, '2018-11-21 14:43:05'),
(75, 'oajb-jdyd-llakhtbar-122190-63f7d8021d0ca2dc3384c981389d5e4e6b5ae3ec', 12, 4300, '2018-11-21 14:43:05'),
(76, 'oajb-jdyd-llakhtbar-122108-9af5b02c340d17261496aaf3994f1b2c920c4ffb', 12, 4302, '2018-11-21 14:43:05'),
(77, 'oajb-jdyd-llakhtbar-12697-c6e7c8a2b98dcfd89e4ab1fd89d60012b558b855', 12, 4304, '2018-11-21 14:43:05'),
(78, 'oajb-jdyd-llakhtbar-12654-2df4e84bcdee8c88eb16627fa0217a0cb2d0e73a', 12, 4306, '2018-11-21 14:43:06'),
(79, 'oajb-jdyd-llakhtbar-121621-ab9611e57e674eb82a492657fe47a0e76463028d', 12, 4308, '2018-11-21 14:43:06'),
(80, 'oajb-jdyd-llakhtbar-1214-54c26e8529686f5eb54364f35587be477ac32a6f', 12, 4310, '2018-11-21 14:43:06'),
(81, 'oajb-jdyd-llakhtbar-121260-b14c9c7a7ed35a09d3e7c573449c28b982caf690', 12, 4312, '2018-11-21 14:43:06'),
(82, 'oajb-jdyd-llakhtbar-122401-0297ee1954ea404224a3f89831a37564a827428b', 12, 4314, '2018-11-21 14:43:06'),
(83, 'oajb-jdyd-llakhtbar-121495-aa9029d3b0ab529b9c6f77ee0d049c9beab234b4', 12, 4316, '2018-11-21 14:43:06'),
(84, 'oajb-jdyd-llakhtbar-12848-62b1467f2d0adb2f6496bc327cf9ae7e4eced0a9', 12, 4318, '2018-11-21 14:43:06'),
(85, 'oajb-jdyd-llakhtbar-122976-6e6a26faf758cb4e6d1a5a8227929f1b232f2814', 12, 4320, '2018-11-21 14:43:06'),
(86, 'oajb-jdyd-llakhtbar-122676-3d70e4fc4a0f4d9f5eb6636b6a7f16cf0aff7740', 12, 4321, '2018-11-21 14:43:06'),
(87, 'oajb-jdyd-llakhtbar-121339-769cf6f5862d692cf650a44d8945011d52d5b0dc', 12, 4323, '2018-11-21 14:43:06'),
(88, 'oajb-jdyd-llakhtbar-121486-321f5f67a5be7cfc7308bf8a9ce9e8b5179a01bb', 12, 4325, '2018-11-21 14:43:06'),
(89, 'oajb-jdyd-llakhtbar-121587-5397d316b0572f19c1faefc9f6a6eca852c3b3de', 12, 4327, '2018-11-21 14:43:06'),
(90, 'oajb-jdyd-llakhtbar-12626-cfce6a8f99483b2a7edaa0a11c65a55d7b626ee7', 12, 4329, '2018-11-21 14:43:06'),
(91, 'oajb-jdyd-llakhtbar-122195-0d08f617106825094ca9860fabc8c844673dc287', 12, 7564, '2018-11-21 14:43:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `homeworks_student`
--
ALTER TABLE `homeworks_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `homeworks_student`
--
ALTER TABLE `homeworks_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
