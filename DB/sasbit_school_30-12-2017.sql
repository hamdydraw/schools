-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2017 at 03:14 PM
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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `show_in_list` tinyint(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`id`, `academic_year_title`, `slug`, `academic_start_date`, `academic_end_date`, `show_in_list`, `created_at`, `updated_at`) VALUES
(1, '2017-2018', '2017-2018', '2017-09-10', '2018-04-18', 1, '2017-08-09 01:29:03', '2017-08-09 01:29:03'),
(6, '2018-2019', '2018-2019', '2018-01-09', '2019-05-23', 0, '2017-12-24 00:43:45', '2017-12-24 00:45:10'),
(7, '2019-2020', '2019-2020', '2019-08-07', '2020-05-24', 0, '2017-12-25 01:00:02', '2017-12-25 01:00:02');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_course`
--

INSERT INTO `academic_course` (`id`, `academic_id`, `course_id`, `course_parent_id`, `created_at`, `updated_at`) VALUES
(124, 1, 29, 17, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(125, 1, 30, 17, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(126, 1, 31, 18, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(127, 1, 32, 18, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(128, 1, 33, 19, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(129, 1, 34, 19, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(130, 1, 36, 20, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(131, 1, 37, 21, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(132, 1, 38, 21, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(133, 1, 39, 22, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(134, 1, 40, 22, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(135, 1, 41, 23, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(136, 1, 42, 23, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(137, 1, 43, 24, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(138, 1, 44, 24, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(139, 1, 45, 25, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(140, 1, 46, 25, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(141, 1, 47, 26, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(142, 1, 48, 26, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(143, 1, 49, 27, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(144, 1, 50, 27, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(145, 1, 51, 28, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(146, 1, 35, 20, '2017-12-17 00:31:15', '2017-12-17 00:31:15'),
(158, 6, 29, 17, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(159, 6, 30, 17, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(160, 6, 31, 18, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(161, 6, 32, 18, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(162, 6, 33, 19, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(163, 6, 41, 23, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(164, 6, 34, 19, '2017-12-24 22:46:22', '2017-12-24 22:46:22'),
(165, 6, 43, 24, '2017-12-24 22:46:22', '2017-12-24 22:46:22');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint(20) unsigned NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'بنين', 'Active', 'bnyn', '2017-10-12 07:41:34', '2017-10-13 07:20:32'),
(2, 'بنات', 'Active', 'bnat', '2017-10-12 07:41:44', '2017-10-13 07:20:44'),
(3, 'دولي بنين', 'Active', 'doly-bnyn', '2017-10-13 07:21:10', '2017-10-13 07:21:10'),
(4, 'دولي بنات', 'Active', 'doly-bnat', '2017-10-13 07:21:21', '2017-10-13 07:21:21');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `certificateissues`
--

INSERT INTO `certificateissues` (`id`, `user_id`, `student_id`, `roll_no`, `academic_year_title`, `course_title`, `certificate_data`, `certificate_type`, `reference_no`, `issued_by`, `current_year`, `current_semister`, `reason`, `created_at`, `updated_at`) VALUES
(1, 1809, 8, '171st_pri10100006', '2017-2018', 'أولي أ', NULL, 'bonafide', '1809-17101702', 1790, 1, 0, '', '2017-10-16 23:28:01', '2017-10-16 23:28:01'),
(2, 1805, 4, '171st_pri10100002', '2017-2018', 'أولي أ', NULL, 'tc', '1805-17101702', 1790, 1, 0, '', '2017-10-16 23:28:30', '2017-10-16 23:28:30'),
(3, 1805, 4, '171st_pri10100002', '2017-2018', 'أولي أ', NULL, 'tc', '1805-17101702', 1790, 1, 0, 'dfgzdfg', '2017-10-16 23:28:36', '2017-10-16 23:28:36'),
(4, 1810, 9, '171st_pri10100007', '2017-2018', 'أولي أ', NULL, 'bonafide', '1810-17122601', 1790, 1, 0, '', '2017-12-26 07:36:49', '2017-12-26 07:36:49');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'YU', 'Yugoslavia'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `couponcodes`
--

INSERT INTO `couponcodes` (`id`, `title`, `slug`, `coupon_code`, `discount_type`, `discount_value`, `minimum_bill`, `discount_maximum_amount`, `valid_from`, `valid_to`, `usage_limit`, `status`, `description`, `coupon_code_applicability`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'المدينة المنورة', 'almdyn-almnor', 'Code20', 'value', '20.00', '20.00', '20.00', '2017-10-18', '2017-10-26', 1, 'Active', '', '{"categories":["exam","combo","LMS"]}', 1790, '2017-10-17 23:58:15', '2017-12-19 19:42:35');

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
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couponcodes_usage`
--

INSERT INTO `couponcodes_usage` (`id`, `item_id`, `item_type`, `user_id`, `item_cost`, `total_invoice_amount`, `discount_amount`, `coupon_id`, `updated_at`) VALUES
(1, 3, 'exam', 1831, '20.00', '0.00', '20.00', 1, '2017-10-18 03:06:25');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `parent_id`, `course_title`, `slug`, `course_code`, `course_dueration`, `grade_system`, `is_having_semister`, `is_having_elective_subjects`, `description`, `status`, `created_at`, `updated_at`) VALUES
(17, 0, 'الصف الأول الإبتدائي', 'alsf-alaol-alebtdaey-6d7c8f861b0639ae575402b7f9b12', '1st_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 08:58:38', '2017-10-13 08:58:38'),
(18, 0, 'الصف الثاني الإبتدائي', 'alsf-althany-alebtdaey-48f57ae31d7075a793eb706a6f3', '2nd_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 08:59:57', '2017-10-13 08:59:57'),
(19, 0, 'الصف الثالث الإبتدائي ', 'alsf-althalth-alebtdaey-13736dd6ee4642c554b4b4f4dc', '3th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:01:34', '2017-10-13 09:01:34'),
(20, 0, 'الصف الرابع الإبتدائي', 'alsf-alrabaa-alebtdaey-62743f4ae1f8344d23dcc61a316', '4th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:02:11', '2017-10-13 09:02:11'),
(21, 0, 'الصف الخامس الإبتدائي', 'alsf-alkhams-alebtdaey-6d3f905a074b8d40a6f8a4fd8a1', '5th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:02:37', '2017-10-13 09:02:37'),
(22, 0, 'الصف السادس الإبتدائي', 'alsf-alsads-alebtdaey-213c9c6981d024aae1ef62c19c30', '6th_pri', 1, '', 1, 0, '', 'Active', '2017-10-13 09:03:15', '2017-10-13 09:03:15'),
(23, 0, 'الصف الاول المتوسط ', 'alsf-alaol-almtost-910bc313b928127f59550ef76294d9b', '1st_inter', 1, '', 1, 0, '', 'Active', '2017-10-13 09:03:42', '2017-10-13 09:03:42'),
(24, 0, 'الصف الثاني المتوسط ', 'alsf-althany-almtost-a397216277d4a2144cc0cbb791381', '2nd_inter', 1, '', 1, 0, '', 'Active', '2017-10-13 09:04:17', '2017-10-13 09:04:17'),
(25, 0, 'الصف الثالث المتوسط ', 'alsf-althalth-almtost-5c3b6780a224eb20884cf97194ea', '3th_inter', 1, '', 1, 0, '', 'Active', '2017-10-13 09:05:04', '2017-10-13 09:05:04'),
(26, 0, 'الصف الاول الثانوي', 'alsf-alaol-althanoy-d75e76dd969c3710c5bd7598ca641f', '1st_sec', 1, '', 1, 0, '', 'Active', '2017-10-13 09:05:43', '2017-10-13 09:05:43'),
(27, 0, 'الصف الثاني الثانوي', 'alsf-althany-althanoy-685adecbddc4c728a363b2d5b5cb', '2nd_sec', 1, '', 1, 0, '', 'Active', '2017-10-13 09:06:25', '2017-10-13 09:06:25'),
(28, 0, 'الصف الثالث الثانوي', 'alsf-althalth-althanoy-e954f01708160933a5f585c8241', '3th_sec', 1, '', 1, 0, '', 'Active', '2017-10-13 09:06:34', '2017-10-13 09:06:34'),
(29, 17, 'أولي أ', 'aoly-a-fb014aea828bb9a23356e48af6a3367eabc7bdc7', '101', 1, 'gpa', 1, 0, 'esfqwer', 'Active', '2017-10-13 09:10:17', '2017-11-08 07:24:25'),
(30, 17, 'أولي ب', 'aoly-b-9efd4400204251b64e6ca5ad3413c5b71caf48f0', '102', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:11:46', '2017-10-13 09:11:46'),
(31, 18, 'ثاني أ', 'thany-a-86bea6e104d2beba4a8a5324a8c5d9d7debef392', '103', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:14:25', '2017-10-13 09:14:25'),
(32, 18, 'ثاني ب', 'thany-b-dc7f76ce9dc4f3d572001f8aeb885172b8ab0c40', '104', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:14:30', '2017-10-13 09:14:30'),
(33, 19, 'ثالث أ', 'thalth-a-47905e9f2743be208c32aec60590091cc111a118', '105', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:14:52', '2017-10-13 09:14:52'),
(34, 19, 'ثالث ب', 'thalth-b-0b706fc244392c937d418a1db10000ecce33fa41', '106', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:15:09', '2017-10-13 09:15:09'),
(35, 20, 'رابع أ', 'rabaa-a-b70be0a5566736e86fb4a2ff9eab9eee57fb8f3c', '107', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:15:24', '2017-10-13 09:15:24'),
(36, 20, 'رابع ب', 'rabaa-b-f6ca5a1ba838e74b70f9afb740d13b6774713f56', '108', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:15:43', '2017-10-13 09:15:43'),
(37, 21, 'خامس أ', 'khams-a-bad0ec08de28c9d7f936ec0a14878b87c2743b5d', '109', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:16:01', '2017-10-13 09:16:01'),
(38, 21, 'خامس ب', 'khams-b-3070fa166bc9d842bbf0fd4c1b5480578d68283b', '110', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:16:21', '2017-10-13 09:16:21'),
(39, 22, 'سادس أ', 'sads-a-d5893c007a63f428b90b87d6a1c05b12719fcef1', '111', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:16:38', '2017-10-13 09:16:38'),
(40, 22, 'سادس ب', 'sads-b-58234a415d3b8e0302af053d804863d447a04967', '112', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:16:50', '2017-10-13 09:16:50'),
(41, 23, 'اولي متوسط  أ', 'aoly-mtost-a-99d28fcc1bb4efb60017c36149ffdc463513c', '113', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:18:39', '2017-10-13 09:18:39'),
(42, 23, 'أولي متوسط ب', 'aoly-mtost-b-e4774dfa5bb06c68e62751db003c4380911e5', '114', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:22:04', '2017-10-13 09:22:04'),
(43, 24, 'ثاني متوسط أ', 'thany-mtost-a-49562d204fa156d217f30650f2eab9b66352', '115', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:22:32', '2017-10-13 09:22:32'),
(44, 24, 'ثاني متوسط ب', 'thany-mtost-b-d901d0d761b0372e328f6461f1098cfb8bf8', '116', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:22:37', '2017-10-13 09:22:37'),
(45, 25, 'ثالث متوسط أ', 'thalth-mtost-a-3aa36076cf9a72af8882d669bf2a903ce49', '117', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:23:11', '2017-10-13 09:23:11'),
(46, 25, 'ثالث متوسط ب', 'thalth-mtost-b-14a84194e74e7a1e72cb669f2636bfeed22', '118', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:23:28', '2017-10-13 09:23:28'),
(47, 26, 'أولي ثانوي أ', 'aoly-thanoy-a-036dd1a0f48baeefab3b651a4dc61a3d7dbf', '119', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:23:52', '2017-10-13 09:23:52'),
(48, 26, 'أولي ثانوي ب', 'aoly-thanoy-b-4524d147a3181341c6c35c64d3efdc22a15e', '120', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:24:03', '2017-10-13 09:24:03'),
(49, 27, 'ثاني ثانوي أ', 'thany-thanoy-a-8a1d50b5d83448c1811b6666223f9ba19ce', '121', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:24:21', '2017-10-13 09:24:21'),
(50, 27, 'ثاني ثانوي ب', 'thany-thanoy-b-bdb482bbf0a3bc895071975ab30485891aa', '122', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:24:31', '2017-10-13 09:24:31'),
(51, 28, 'ثالث ثانوي أ', 'thalth-thanoy-a-c0a7cda6dc934ce892ebbbf5c2f2a2da3a', '123', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:24:48', '2017-10-13 09:24:48'),
(52, 28, 'ثالث ثانوي ب', 'thalth-thanoy-b-60b998c1bf07825bddbecf178a2cc2850f', '124', 1, 'gpa', 1, 0, '', 'Active', '2017-10-13 09:24:55', '2017-10-13 09:24:55'),
(53, 18, 'ثانى ج', 'than-j-72d4743ee2faa0196f0e885a342e2cbaf12db63c', 'sacand 3', 1, 'gpa', 1, 0, '', 'Active', '2017-12-24 01:03:38', '2017-12-25 10:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `coursesemisters`
--

CREATE TABLE IF NOT EXISTS `coursesemisters` (
  `id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `year` int(10) unsigned NOT NULL,
  `total_semisters` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coursesemisters`
--

INSERT INTO `coursesemisters` (`id`, `course_id`, `year`, `total_semisters`, `created_at`, `updated_at`) VALUES
(13, 29, 1, 2, '2017-10-13 09:10:17', '2017-10-13 09:29:54'),
(14, 30, 1, 2, '2017-10-13 09:11:46', '2017-10-13 09:29:56'),
(15, 31, 1, 2, '2017-10-13 09:14:25', '2017-10-13 09:29:59'),
(16, 32, 1, 2, '2017-10-13 09:14:30', '2017-10-13 09:30:02'),
(17, 33, 1, 2, '2017-10-13 09:14:52', '2017-10-13 09:29:25'),
(18, 34, 1, 2, '2017-10-13 09:15:09', '2017-10-13 09:29:23'),
(19, 35, 1, 2, '2017-10-13 09:15:24', '2017-10-13 09:29:20'),
(20, 36, 1, 2, '2017-10-13 09:15:43', '2017-10-13 09:29:18'),
(21, 37, 1, 2, '2017-10-13 09:16:01', '2017-10-13 09:29:15'),
(22, 38, 1, 2, '2017-10-13 09:16:21', '2017-10-13 09:29:12'),
(23, 39, 1, 2, '2017-10-13 09:16:38', '2017-10-13 09:29:10'),
(24, 40, 1, 2, '2017-10-13 09:16:50', '2017-10-13 09:29:07'),
(25, 41, 1, 2, '2017-10-13 09:18:39', '2017-10-13 09:29:04'),
(26, 42, 1, 2, '2017-10-13 09:22:04', '2017-10-13 09:29:01'),
(27, 43, 1, 2, '2017-10-13 09:22:32', '2017-10-13 09:28:22'),
(28, 44, 1, 2, '2017-10-13 09:22:37', '2017-10-13 09:28:19'),
(29, 45, 1, 2, '2017-10-13 09:23:11', '2017-10-13 09:28:16'),
(30, 46, 1, 2, '2017-10-13 09:23:28', '2017-10-13 09:28:14'),
(31, 47, 1, 2, '2017-10-13 09:23:52', '2017-10-13 09:28:08'),
(32, 48, 1, 2, '2017-10-13 09:24:03', '2017-10-13 09:28:04'),
(33, 49, 1, 2, '2017-10-13 09:24:21', '2017-10-13 09:28:02'),
(34, 50, 1, 2, '2017-10-13 09:24:31', '2017-10-13 09:27:59'),
(35, 51, 1, 2, '2017-10-13 09:24:48', '2017-10-13 09:27:56'),
(36, 52, 1, 2, '2017-10-13 09:24:55', '2017-10-13 09:27:53'),
(37, 53, 1, 1, '2017-12-25 10:39:50', '2017-12-25 10:40:29');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`id`, `slug`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `subject_id`, `sessions_needed`, `staff_id`, `is_completed`, `created_at`, `updated_at`) VALUES
(31, '8185c69955340e95c44328afa7b0890ff67593ae', 1, 17, 29, 1, 1, 4, 60, 1868, 0, '2017-10-13 09:33:21', '2017-10-20 07:36:51'),
(32, '6fd85329c6c7c20f79e14e7a1de0c306864ddfb3', 1, 17, 29, 1, 1, 3, 60, 1836, 0, '2017-10-13 09:33:21', '2017-12-24 01:32:15'),
(35, 'ad234c870403f0823ed1fd854374835057838120', 1, 17, 29, 1, 2, 4, 60, 1868, 0, '2017-10-13 09:33:21', '2017-10-20 07:36:51'),
(39, '03d0e3630fb18926ab8a63469f9a660a0b7a0de3', 1, 17, 30, 1, 1, 4, 60, 1868, 0, '2017-10-13 09:34:36', '2017-12-18 01:07:17'),
(40, '248491a64bb1b741a3d726da6a8f734287eacda0', 1, 17, 30, 1, 1, 3, 60, 1800, 0, '2017-10-13 09:34:36', '2017-12-18 01:07:17'),
(43, '07227d4651c7d72ae3661f62e363311ffa2c35ef', 1, 17, 30, 1, 2, 4, 60, 1868, 0, '2017-10-13 09:34:36', '2017-12-18 01:07:17'),
(44, '60623bebfeee6859bfdc8b47c71b034cb735f6a9', 1, 17, 30, 1, 2, 3, 60, 1800, 0, '2017-10-13 09:34:36', '2017-12-18 01:07:17'),
(47, 'e4e1e6e58d64e9433e31e0a71ff456aabbfb678b', 1, 18, 31, 1, 1, 8, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(48, '2d6a92eb38bbdd97d81a92049bbff13bfc8d7088', 1, 18, 31, 1, 1, 6, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(49, '4d0a95f7d4d72a4da8f24a82189b25f3eafd1aa9', 1, 18, 31, 1, 1, 3, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(50, 'c01a60dcfbfed6243bb75b148cbcf0a5f3c1c506', 1, 18, 31, 1, 1, 4, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(51, 'e92dddd941f93bcf652a488bfde4c478d331c286', 1, 18, 31, 1, 2, 7, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(52, 'd197e998d25847bd697125299b538c466550664d', 1, 18, 31, 1, 2, 6, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(53, '2094513dafa43b27c2e1fdf954ebc6f1f76eead0', 1, 18, 31, 1, 2, 3, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(54, '91f5e804f20a019d0a5356d4162764f67dd4c7f9', 1, 18, 31, 1, 2, 4, 60, 0, 0, '2017-10-13 09:35:34', '2017-10-13 09:35:34'),
(55, 'd6b6b274c68e17e7846e8fe57cf4ff60aedca712', 1, 18, 32, 1, 1, 7, 60, 1800, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(56, '68ecf915ab3095df35b6405b966fbcc3f40de9b1', 1, 18, 32, 1, 1, 6, 60, 1835, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(57, 'aaa2b0f5292d67ecb5f6b4e3ec430d713a0be5c9', 1, 18, 32, 1, 1, 3, 60, 1836, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(58, 'f275ffe8a4e70ed1c39b6b4b8a679db42552408a', 1, 18, 32, 1, 1, 4, 60, 1800, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(59, 'da7e15470941eeb9716a09448c8c8034e667ad5d', 1, 18, 32, 1, 2, 7, 60, 1800, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(60, 'be4965f7aa9d6102873ed37a82c22ac7af96f5f7', 1, 18, 32, 1, 2, 6, 60, 1835, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(61, '9ceb41fe14400721e9497e1042e39a18259b7a66', 1, 18, 32, 1, 2, 3, 60, 1836, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(62, '89555a0761c9e4143c3e2b649aae60d75aa266f2', 1, 18, 32, 1, 2, 4, 60, 1835, 0, '2017-10-13 09:35:53', '2017-10-15 23:47:02'),
(63, '6b90cc6c2e89d55917caab652c906ceb93226e2f', 1, 23, 41, 1, 1, 15, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(64, 'b6cb1593bec2fe2d293bcba108249a8e92f478bd', 1, 23, 41, 1, 1, 14, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(65, '5d3a9c4151c139b9dc6ce53623b345b61475d2ef', 1, 23, 41, 1, 1, 12, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(66, 'aab433e622d799fe3991386ba746434e61d6f189', 1, 23, 41, 1, 1, 11, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(67, 'd63bba1981f66e160fed5ef8309dc921eede31fd', 1, 23, 41, 1, 2, 15, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(68, '3eed0e052521e6b560483c99dd7f4fa3a7d80773', 1, 23, 41, 1, 2, 14, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(69, '638fa5a8fe77666d3643d24a9a30621533736d32', 1, 23, 41, 1, 2, 12, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(70, '10886696e18621e7f31b789ad9b763fb127210db', 1, 23, 41, 1, 2, 11, 60, 0, 0, '2017-10-13 09:36:43', '2017-10-13 09:36:43'),
(71, '89f50c4708e9abb7f1bf6ec8697310a0f8c2171e', 1, 23, 42, 1, 1, 16, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(72, 'd5a640cb91545867e1273595a0f6721e914c6e65', 1, 23, 42, 1, 1, 13, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(73, 'fbfb45e06014f79b39b8130adcd3112b66729aae', 1, 23, 42, 1, 1, 12, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(74, 'c85320b8d4ebe666cf848da3381a87a11fc8af95', 1, 23, 42, 1, 1, 11, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(75, 'bed31aa710437e4e780e982915392f8f4af33260', 1, 23, 42, 1, 2, 16, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(76, '4c56033690c30e79b4f82bef7e3405f306e56fa1', 1, 23, 42, 1, 2, 13, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(77, 'a6d40521553aa9c59dae73acaede192c3467fc6d', 1, 23, 42, 1, 2, 12, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(78, '9858e08471b74e31f1fdd3c31229696fae8f7363', 1, 23, 42, 1, 2, 11, 60, 0, 0, '2017-10-13 09:37:00', '2017-10-13 09:37:00'),
(79, '0e330bfedeb4602e10b50e418c7c79c89078ca2f', 1, 26, 47, 1, 1, 24, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(80, '372173405e4188b0b05f70eb5c5a04cd1a2cabf0', 1, 26, 47, 1, 1, 19, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(81, '9e5855c85f6ada727f9bd395580088df62229451', 1, 26, 47, 1, 1, 3, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(82, 'd10b70f26ff2e79ef77b6a3b670d3f52ad1e0129', 1, 26, 47, 1, 1, 2, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(83, 'c668b1560b93f07344d5f3eb67786ae61ea78aeb', 1, 26, 47, 1, 1, 1, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(84, 'b551f07b8db269240fbfa2f92a4cf37bce986939', 1, 26, 47, 1, 2, 3, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(85, '140653f245f447b79e767d0e0d82ae25327a727b', 1, 26, 47, 1, 2, 2, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(86, '4c2207f9c096b2c7e95e4bdd44285dbbde6c4a99', 1, 26, 47, 1, 2, 1, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(87, '0917889caad01c3ff7e243ba5a4be2d464f67b85', 1, 26, 47, 1, 2, 24, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(88, '625d91070eed42fcb9b3132c9c96776c895f6508', 1, 26, 47, 1, 2, 19, 60, 0, 0, '2017-10-13 09:37:53', '2017-10-13 09:37:53'),
(89, '140339e9f6e65c97b6fdad849b92c3820f47d661', 1, 26, 48, 1, 1, 8, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(90, 'cf66ac0bbd89ee93dae6423f67a2cc9e5dc7d23a', 1, 26, 48, 1, 1, 7, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(91, 'fda631e89704e79521fef608baf5950d183ed472', 1, 26, 48, 1, 1, 6, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(92, '0b623602bb06632380a201ceb359d6513c291444', 1, 26, 48, 1, 1, 5, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(93, '5674936e0f037b0a79444ebc0952490fd78ca67c', 1, 26, 48, 1, 1, 4, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(94, 'f92e5db260dcded75e935507989c2328776f47f2', 1, 26, 48, 1, 1, 2, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(95, '3bc23c87d60538474d2c7c57a9c52f5dac47a9c2', 1, 26, 48, 1, 1, 1, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(96, 'abb97824d5a613cce7ffbf6e0e5790d1f8976de7', 1, 26, 48, 1, 2, 8, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(97, 'b43b165daab37337bd74c83ca29c37ad58ed2667', 1, 26, 48, 1, 2, 7, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(98, '77390fde3b16588fd6e0e82decdf51b7bfa3565f', 1, 26, 48, 1, 2, 6, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(99, '8149b2bfeb25cb8653b041946076dd0f3602df0d', 1, 26, 48, 1, 2, 5, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(100, 'af113edeac82f082b7daa0a844871ef73a901a07', 1, 26, 48, 1, 2, 4, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(101, '4a2950da69a82016a5ff784df6e960fdaa9c0fbd', 1, 26, 48, 1, 2, 2, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(102, 'd9bff0ed77a66d043600b8ac6524384c739d2069', 1, 26, 48, 1, 2, 1, 60, 0, 0, '2017-10-13 09:38:25', '2017-10-13 09:38:25'),
(113, '1f87effe724c4588ad95c86136174ef1922c7eb2', 1, 19, 33, 1, 1, 3, 60, 0, 0, '2017-12-13 22:50:23', '2017-12-13 22:50:23'),
(114, 'ea30f2c45a226bc371ca4af9a63fb33ef9035f8a', 1, 19, 33, 1, 1, 1, 100, 0, 0, '2017-12-13 22:50:23', '2017-12-13 22:50:23'),
(115, '24b45e2e556a783abed8c1ce0f3f0788dfd468f9', 1, 19, 33, 1, 2, 8, 60, 0, 0, '2017-12-13 22:50:23', '2017-12-13 22:50:23'),
(116, 'dc2d983311ee7917e590c843914e31fa584660b7', 1, 19, 33, 1, 2, 6, 60, 0, 0, '2017-12-13 22:50:23', '2017-12-13 22:50:23'),
(117, '4402ccd73fb9758b7bdd9df93b2bab45c0dbf015', 1, 19, 33, 1, 2, 7, 60, 0, 0, '2017-12-13 22:50:23', '2017-12-13 22:50:23'),
(118, 'e5db6c7566abe41707fef2684265791597cbad16', 1, 17, 29, 1, 2, 3, 60, 0, 0, '2017-12-17 23:02:50', '2017-12-24 01:32:15'),
(119, '62644e2f7720b2da2f3c15e2c476aba93cfafb0e', 1, 17, 29, 1, 1, 2, 30, 1835, 0, '2017-12-18 23:00:06', '2017-12-18 23:01:08'),
(120, '0e1454dcdbe0f9a66ccad57c41b7dcf16fdcdbad', 1, 17, 29, 1, 1, 1, 40, 1836, 0, '2017-12-18 23:00:06', '2017-12-18 23:01:08'),
(121, '34129a940f6dee859773870efbef23f5e1ae9cb7', 1, 17, 29, 1, 2, 2, 30, 1835, 0, '2017-12-18 23:00:06', '2017-12-18 23:01:08'),
(122, 'ba01f2055c07b814485d5a7f14554f4a25bb0d88', 1, 17, 29, 1, 2, 1, 40, 1836, 0, '2017-12-18 23:00:06', '2017-12-18 23:01:08'),
(123, '647b6e94dc35c981921bc6a45e12a205fca8c7fc', 1, 17, 29, 1, 1, 6, 60, 1868, 0, '2017-12-25 10:37:52', '2017-12-25 10:41:49'),
(124, '8ca7cd7b2ef32b271d45befc8f34d8009a15f355', 1, 17, 29, 1, 2, 6, 60, 1868, 0, '2017-12-25 10:37:52', '2017-12-25 10:41:49');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emailtemplates`
--

INSERT INTO `emailtemplates` (`id`, `title`, `slug`, `type`, `subject`, `content`, `from_email`, `from_name`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'header', 'header', 'content', 'header', '<p>Email</p>\r\n<!-- Start of preheader -->\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n  <tbody>\r\n   <tr>\r\n      <td>\r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n       <tbody><!-- Spacing -->\r\n         <tr>\r\n            <td>&nbsp;</td>\r\n         </tr>\r\n         <!-- Spacing -->\r\n          <tr>\r\n            <td>If you cannot read this email, please <a href="#"> click here </a></td>\r\n         </tr>\r\n         <!-- Spacing -->\r\n          <tr>\r\n            <td>&nbsp;</td>\r\n         </tr>\r\n         <!-- Spacing -->\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n<!-- End of preheader --><!-- start of header -->\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n  <tbody>\r\n   <tr>\r\n      <td>\r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n       <tbody>\r\n         <tr>\r\n            <td><!-- logo -->\r\n           <table align="left" border="0" cellpadding="0" cellspacing="0" style="width:280px">\r\n             <tbody>\r\n               <tr>\r\n                  <td>\r\n                  <p><a href="#"><img alt="logo" src="http://yoursite.com/public/uploads/settings/eKFhxlkXcMtX5xW.png" /> </a></p>\r\n                  </td>\r\n               </tr>\r\n             </tbody>\r\n            </table>\r\n            <!-- End of logo --><!-- menu -->\r\n\r\n           <table align="right" border="0" cellpadding="0" cellspacing="0" style="width:280px">\r\n              <tbody>\r\n               <tr>\r\n                  <td><a href="#">HOME </a> | <a href="#"> ABOUT </a> | <a href="#"> SHOP </a></td>\r\n                 <td>&nbsp;</td>\r\n               </tr>\r\n             </tbody>\r\n            </table>\r\n            <!-- End of Menu --></td>\r\n         </tr>\r\n       </tbody>\r\n      </table>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n<!-- end of header -->', 'no@noemail.com', 'Test', 1, '2016-07-19 06:23:14', '2016-12-16 11:39:35'),
(2, 'footer', 'footer', 'footer', 'footer', '<div class="block">\r\n    <!-- Start of preheader -->\r\n    <table bgcolor="#f6f4f5" border="0" cellpadding="0" cellspacing="0" id="backgroundTable" st-sortable="postfooter" width="100%">\r\n        <tbody>\r\n            <tr>\r\n                <td width="100%">\r\n                    <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidth" width="580">\r\n                        <tbody>\r\n                            <!-- Spacing -->\r\n                            <tr>\r\n                                <td height="5" width="100%">\r\n                                </td>\r\n                            </tr>\r\n                            <!-- Spacing -->\r\n                            <tr>\r\n                                <td align="center" st-content="preheader" style="font-family: Helvetica, arial, sans-serif; font-size: 10px;color: #999999" valign="middle">\r\n                                    If you don''t want to receive updates. please\r\n                                    <a class="hlite" href="#" style="text-decoration: none; color: #0db9ea">\r\n                                        unsubscribe\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                            <!-- Spacing -->\r\n                            <tr>\r\n                                <td height="5" width="100%">\r\n                                </td>\r\n                            </tr>\r\n                            <!-- Spacing -->\r\n                        </tbody>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n    <!-- End of preheader -->\r\n</div>', 'no@noemail.com', 'Test', 2, '2016-07-19 06:24:08', '2016-07-19 06:30:21'),
(3, 'exam-result', 'exam-result', 'content', 'Exam Result', '', 'admin@gmail.com', 'Test', 1, '2016-07-19 06:37:51', '2016-12-12 06:18:17'),
(4, 'registration', 'registration', 'content', 'Welcome', '<!-- Full + text -->\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\n  <tbody>\n   <tr>\n      <td>\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\n       <tbody>\n         <tr>\n            <td>&nbsp;</td>\n         </tr>\n         <tr>\n            <td>\n            <table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\n             <tbody><!-- title -->\n               <tr>\n                  <td style="text-align:left">&nbsp;</td>\n               </tr>\n               <!-- end of title --><!-- Spacing -->\n               <tr>\n                  <td>&nbsp;</td>\n               </tr>\n               <!-- Spacing --><!-- content -->\n                <tr>\n                  <td style="text-align:left">\n                  <p>Dear {{ $user_name }},<br />\n                 You have successfully registered with Academia.</p>\n\n                 <p>The credentials are</p>\n\n                  <p>Username: {{$username}} / {{$to_email}}</p>\n\n                  <p>Password: {{$password}}</p>\n\n                  <p>Enjoy the facilities provided by our system.</p>\n\n                 <p>Please contact admin for further details.</p>\n                  </td>\n               </tr>\n               <!-- end of content --><!-- Spacing -->\n               <tr>\n                  <td>&nbsp;</td>\n               </tr>\n               <!-- Spacing -->\n                <tr>\n                  <td>&nbsp;</td>\n               </tr>\n               <!-- button -->\n               <tr>\n                  <td>\n                  <table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\n                   <tbody>\n                     <tr>\n                        <td style="background-color:#0db9ea; text-align:justify"><a href="#">Read More</a></td>\n                     </tr>\n                   </tbody>\n                  </table>\n                  </td>\n               </tr>\n               <!-- /button --><!-- Spacing -->\n                <tr>\n                  <td>&nbsp;</td>\n               </tr>\n               <!-- Spacing -->\n              </tbody>\n            </table>\n            </td>\n         </tr>\n       </tbody>\n      </table>\n      </td>\n   </tr>\n </tbody>\n</table>\n', 'admin@academia.com', 'Academia Admin', 1, '2016-07-29 03:48:18', '2016-10-27 18:45:43'),
(5, 'subscription', 'subscription', 'content', 'Subscription Successfull', '<div class="block"><!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" id="backgroundTable" style="width:100%">\r\n <tbody>\r\n   <tr>\r\n      <td>\r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidth" style="width:580px">\r\n       <tbody>\r\n         <tr>\r\n            <td>&nbsp;</td>\r\n         </tr>\r\n         <tr>\r\n            <td>\r\n            <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidthinner" style="width:540px">\r\n              <tbody><!-- title -->\r\n               <tr>\r\n                  <td style="text-align:left">&nbsp;</td>\r\n               </tr>\r\n               <!-- end of title --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing --><!-- content -->\r\n                <tr>\r\n                  <td style="text-align:left">Dear {{ $username }},<br />\r\n                 You have successfully subscribed to {{ ucfirst($plan)}} plan with transaction {{$id}}. Enjoy the facilities provided by our system.</td>\r\n                </tr>\r\n               <!-- end of content --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- button -->\r\n               <tr>\r\n                  <td>\r\n                  <table align="left" border="0" cellpadding="0" cellspacing="0" class="tablet-button" style="height:30px">\r\n                   <tbody>\r\n                     <tr>\r\n                        <td style="background-color:#0db9ea; text-align:center"><span style="color:#ffffff"><a href="#" style="color: #ffffff; text-align:center;text-decoration: none;">Read More</a> </span></td>\r\n                     </tr>\r\n                   </tbody>\r\n                  </table>\r\n                  </td>\r\n               </tr>\r\n               <!-- /button --><!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n              </tbody>\r\n            </table>\r\n            </td>\r\n         </tr>\r\n       </tbody>\r\n      </table>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n</div>\r\n', 'admin@academia.com', 'Jack', 1, '2016-08-03 01:00:58', '2016-09-03 01:59:12'),
(6, 'offline_subscription_failed', 'offline-subscription-failed', 'content', 'Offline Subscription Failed', '<div class="block"><!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" id="backgroundTable" style="width:100%">\r\n  <tbody>\r\n   <tr>\r\n      <td>\r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidth" style="width:580px">\r\n       <tbody>\r\n         <tr>\r\n            <td>&nbsp;</td>\r\n         </tr>\r\n         <tr>\r\n            <td>\r\n            <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidthinner" style="width:540px">\r\n              <tbody><!-- title -->\r\n               <tr>\r\n                  <td style="text-align:left">&nbsp;</td>\r\n               </tr>\r\n               <!-- end of title --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing --><!-- content -->\r\n                <tr>\r\n                  <td style="text-align:left">\r\n                  <p>Dear {{ $username }},<br />\r\n                  Your attempt for offline subscription to {{ ucfirst($plan)}} plan is failed.</p>\r\n\r\n                  <p>Please find the admin comment</p>\r\n\r\n                  <p><u><strong>Admin Comment:</strong></u></p>\r\n\r\n                 <p>&nbsp;{{$admin_comment}}.</p>\r\n\r\n                  <p>Please contact admin for further details.</p>\r\n                  </td>\r\n               </tr>\r\n               <!-- end of content --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- button -->\r\n               <tr>\r\n                  <td>\r\n                  <table align="left" border="0" cellpadding="0" cellspacing="0" class="tablet-button" style="height:30px">\r\n                   <tbody>\r\n                     <tr>\r\n                        <td style="background-color:#0db9ea; text-align:center"><span style="color:#ffffff"><a href="#" style="color: #ffffff; text-align:center;text-decoration: none;">Read More</a> </span></td>\r\n                     </tr>\r\n                   </tbody>\r\n                  </table>\r\n                  </td>\r\n               </tr>\r\n               <!-- /button --><!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n              </tbody>\r\n            </table>\r\n            </td>\r\n         </tr>\r\n       </tbody>\r\n      </table>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n</div>\r\n', 'admin@academia.com', 'Admin', 1, '2016-10-15 10:31:47', '2016-10-18 14:36:14'),
(7, 'offline_subscription_success', 'offline-subscription-success', 'content', 'Offline Subscription Success', '<div class="block"><!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" id="backgroundTable" style="width:100%">\r\n <tbody>\r\n   <tr>\r\n      <td>\r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidth" style="width:580px">\r\n       <tbody>\r\n         <tr>\r\n            <td>&nbsp;</td>\r\n         </tr>\r\n         <tr>\r\n            <td>\r\n            <table align="center" border="0" cellpadding="0" cellspacing="0" class="devicewidthinner" style="width:540px">\r\n              <tbody><!-- title -->\r\n               <tr>\r\n                  <td style="text-align:left">&nbsp;</td>\r\n               </tr>\r\n               <!-- end of title --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing --><!-- content -->\r\n                <tr>\r\n                  <td style="text-align:left">\r\n                  <p>Dear {{ $username }},<br />\r\n                  Your attempt for offline subscription to {{ ucfirst($plan)}} plan is success. &nbsp;</p>\r\n\r\n                  <p><u><strong>Admin Comment</strong></u></p>\r\n\r\n                  <p>&nbsp;{{$admin_comment}}.</p>\r\n\r\n                  <p>Please contact admin for further details.</p>\r\n                  </td>\r\n               </tr>\r\n               <!-- end of content --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- button -->\r\n               <tr>\r\n                  <td>\r\n                  <table align="left" border="0" cellpadding="0" cellspacing="0" class="tablet-button" style="height:30px">\r\n                   <tbody>\r\n                     <tr>\r\n                        <td style="background-color: rgb(13, 185, 234); text-align: justify;"><span style="color:#ffffff"><a href="#" style="color: #ffffff; text-align:center;text-decoration: none;">Read More</a> </span></td>\r\n                     </tr>\r\n                   </tbody>\r\n                  </table>\r\n                  </td>\r\n               </tr>\r\n               <!-- /button --><!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n              </tbody>\r\n            </table>\r\n            </td>\r\n         </tr>\r\n       </tbody>\r\n      </table>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n</div>\r\n', 'admin@academia.com', 'Admin', 1, '2016-10-15 10:35:32', '2016-10-18 14:27:15'),
(8, 'subscription_success', 'subscription-success', 'content', 'Your Subscription was Success', '<!-- Full + text -->\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\r\n  <tbody>\r\n   <tr>\r\n      <td>\r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width:580px">\r\n       <tbody>\r\n         <tr>\r\n            <td>&nbsp;</td>\r\n         </tr>\r\n         <tr>\r\n            <td>\r\n            <table align="center" border="0" cellpadding="0" cellspacing="0" style="width:540px">\r\n             <tbody><!-- title -->\r\n               <tr>\r\n                  <td style="text-align:left">&nbsp;</td>\r\n               </tr>\r\n               <!-- end of title --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing --><!-- content -->\r\n                <tr>\r\n                  <td style="text-align:left">\r\n                  <p>Dear {{ $username }},<br />\r\n                  Your subscription to {{ ucfirst($plan)}} plan is success. &nbsp;</p>\r\n\r\n                  <p>Please contact admin for further details.</p>\r\n                  </td>\r\n               </tr>\r\n               <!-- end of content --><!-- Spacing -->\r\n               <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- button -->\r\n               <tr>\r\n                  <td>\r\n                  <table align="left" border="0" cellpadding="0" cellspacing="0" style="height:30px">\r\n                   <tbody>\r\n                     <tr>\r\n                        <td style="background-color:#0db9ea; text-align:justify"><a href="#">Read More</a></td>\r\n                     </tr>\r\n                   </tbody>\r\n                  </table>\r\n                  </td>\r\n               </tr>\r\n               <!-- /button --><!-- Spacing -->\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n               </tr>\r\n               <!-- Spacing -->\r\n              </tbody>\r\n            </table>\r\n            </td>\r\n         </tr>\r\n       </tbody>\r\n      </table>\r\n      </td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n', 'admin@academia.com', 'Admin', 1, '2016-10-19 15:31:21', '2016-10-19 15:31:21');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examseries`
--

INSERT INTO `examseries` (`id`, `title`, `slug`, `category_id`, `is_paid`, `cost`, `validity`, `total_exams`, `total_questions`, `image`, `short_description`, `description`, `record_updated_by`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'اختبارات اللغة العربية الصف الاول الابتدائي ', 'akhtbarat-allgh-alaarby-alsf-alaol-alabtdaey', 1, 0, '0.00', -1, 2, 4, '', '', '', 1790, '2017-12-19', '2017-12-31', '2017-12-18 23:41:22', '2017-12-18 23:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `examseries_data`
--

CREATE TABLE IF NOT EXISTS `examseries_data` (
  `id` int(10) unsigned NOT NULL,
  `examseries_id` bigint(20) unsigned NOT NULL,
  `quiz_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examseries_data`
--

INSERT INTO `examseries_data` (`id`, `examseries_id`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 4, NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `percentage_title`, `grade_title`, `percentage_from`, `percentage_to`, `grade_points`, `created_at`, `updated_at`) VALUES
(1, 'Distinction', 'A+', '75.00', '100.00', '10.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00'),
(2, 'First Class', 'A', '60.00', '74.99', '9.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00'),
(3, 'Second Class', 'B', '50.00', '59.99', '7.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00'),
(4, 'Third Class', 'C', '35.00', '49.99', '6.00', '2016-07-17 18:30:00', '2016-07-17 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'التعليمات', 'altaalymat', 'من فضلك قم بقراءة الاسئلة بشكل جيد وقم بالاجابة عليها وحالة عدم التاكد من الاجابة الصحيحة يمكنك الانتقال الى الاسئلة التالية  واجابتها ومن ثم العودة مره اخري الى السؤال السابق.\r\n\r\nقبل بدء الامتحان:\r\n\r\n1. تأكد من أن لديك اتصال إنترنت جيد.\r\n\r\n.2 ال يجوز للطالب استخدام كتابه الدراسي أو مالحظاته الدراسية أو تلقي المساعدة من مقدم أو أي مصدر خارجي آخر.\r\n\r\n3 - ستجرى الامتحانات خلال المواعيد المخصصة المبينة في الجدول الزمني للامتحانات.', '2016-06-08 03:32:59', '2017-12-18 23:04:55');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `slug`, `code`, `is_rtl`, `is_default`, `phrases`, `created_at`, `updated_at`) VALUES
(9, 'English', 'english-1', 'en', 0, 0, '{"games_played_or_extra-curricular_activities":"Games Played Or Extra-curricular Activities","general_conduct":"General Conduct","date_of_application_for_certificate":"Date Of Application For Certificate","date_of_issue_certificate":"Date Of Issue Certificate","reason_for_leaving_the_school":"Reason For Leaving The School","any_other_remarks":"Any Other Remarks","print":"Print","date":"Date","serial_no:":"Serial No:","admission_no:":"Admission No:","name_of_the_pupil":"Name Of The Pupil","fathers\\/guardians_name":"Fathers\\/guardians Name","mothers_name":"Mothers Name","nationality":"Nationality","candidate_belongs_to_schedule_caste_or_schedule_tribe":"Candidate Belongs To Schedule Caste Or Schedule Tribe","date_of_first_admission_in_the_school_with_class":"Date Of First Admission In The School With Class","date_of_birth_according_to_the_admission_register":"Date Of Birth According To The Admission Register","class_in_which_the_last_studied_with_name":"Class In Which The Last Studied With Name","school\\/board_annual_examination_last_taken_and_result":"School\\/board Annual Examination Last Taken And Result","whether_failed,_if_once\\/twice_in_the_same_class":"Whether Failed, If Once\\/twice In The Same Class","whether_qualified_for_promotion_to_higer_class_if_so,_to_which_class":"Whether Qualified For Promotion To Higer Class If So, to Which Class","total_number_no_of_working_days":"Total Number No Of Working Days","total_number_no_of_days_present":"Total Number No.of Days Present","whether_n_c_c_cadet\\/boy_scout\\/_girls_guide":"Whether N C C Cadet\\/boy Scout\\/ Girls Guide","whether_ncc_cadet\\/boy_scout\\/_girls_guide":"Whether Ncc Cadet\\/boy Scout\\/ Girls Guide","whether_ncc_cadet\\/_boy_scout\\/_girls_guide":"Whether Ncc Cadet\\/ Boy Scout\\/ Girls Guide","whether_n_c_c_cadet\\/_boy_scout\\/_girls_guide":"Whether N C C Cadet\\/ Boy Scout\\/ Girls Guide","whether_n_cc_cadet\\/_boy_scout\\/_girls_guide":"Whether N.cc Cadet\\/ Boy Scout\\/ Girls Guide","bonafide_certificate":"Bonafide Certificate","select":"Select","academic_operations":"Academic Operations","certificates_dashboard":"Certificates Dashboard","select_details":"Select Details","certificate_type":"Certificate Type","search":"Search","image":"Image","name":"Name","roll_no":"Roll No","admission_no":"Admission No","class":"Class","year":"Year","semester":"Semester","are_you_sure":"Are You Sure","yes":"Yes","delete_it":"Delete It","no":"No","cancel_please":"Cancel Please","cancelled":"Cancelled","your_record_is_safe":"Your Record Is Safe","search_student":"Search Student","latest_users":"Latest Users","was_joined_as":"Was Joined As","see_more":"See More","my_profile":"My Profile","change_password":"Change Password","feedback":"Feedback","notifications":"Notifications","messages":"Messages","languages":"Languages","logout":"Logout","dashboard":" Dashboard","users":"Users","attendance":"Attendance","certificates":"Certificates","transfers":"Transfers","timetable":"Timetable","offline_exams_":"Offline Exams ","class_attendance_report":"Class Attendance Report","class_marks_report":"Class Marks Report","exams":"Exams","categories":" Categories","question_bank":"Question Bank","quiz":"Quiz","exam_series":"Exam Series","instructions":"Instructions","coupons":"Coupons","list":"List","add":"Add","contents":"Contents","series":" Series","master_settings":"Master Settings","settings":"Settings","religions_master":"Religions Master","categories_master":"Categories Master","academics_master":"Academics Master","courses_master":"Courses Master","course_subjects":"Course Subjects","certificate_templates":"Certificate Templates","email_templates":"Email Templates","payment_reports":"Payment Reports","online_payments":"Online Payments","offline_payments":"Offline Payments","export":"Export","certificate_issues_histroy":"Certificate Issues Histroy","select_user_to_view_details":"Select User To View Details","purpose":"Purpose","please_wait":"Please Wait","invalid_setting":"Invalid Setting","id_cards":"Id Cards","lets_start":"Lets Start","bonafide_certificates":"Bonafide Certificates","user_statistics":"User Statistics","success":"Success","pending":"Pending","total":"Total","overall_statistics":"Overall Statistics","payments_reports_in":"Payments Reports In","demanding_quizzes":"Demanding Quizzes","demanding":"Demanding","quizzes":"Quizzes","view_all":"View All","academics":"Academics","library":"Library","courses":"Courses","quizzes_usage":"Quizzes Usage","paid_quizzes_usage":"Paid Quizzes Usage","academic_operations_dashboard":"Academic Operations Dashboard","offline_exams":"Offline Exams","orientation":"Orientation","update":"Update","create":"Create","key":"Key","setting_key":"Setting Key","tool_tip":"Tool Tip","type":"Type","total_options":"Total Options","description":"Description","option_value":"Option Value","option_text":"Option Text","make_default":"Make Default","record_updated_successfully":"Record Updated Successfully","zoomfactor":"Zoomfactor","margin":"Margin","format":"Format","printable_file":"Printable File","id_card_generation":"Id Card Generation","print_header":"Print Header","print_footer":"Print Footer","print_date":"Print Date","print_reference_number":"Print Reference Number","module":"Module","action":"Action","edit":"Edit","view":"View","logo":"Logo","content":" Content","left_sign_image":"Left Sign Image","right_sign_image":"Right Sign Image","left_sign_name":"Left Sign Name","right_sign_name":"Right Sign Name","left_sign_designation":"Left Sign Designation","right_sign_designation":"Right Sign Designation","watermark_image":"Watermark Image","bottom_middle_logo":"Bottom Middle Logo","add_setting":"Add Setting","title":"Title","introduction":"Introduction","description_of_the_topic":"Description Of The Topic","record_added_successfully":"Record Added Successfully","no_settings_available":"No Settings Available","right_designation":"Right Designation","exams_dashboard":"Exams Dashboard","exam-series":"Exam-series","quiz_categories":"Quiz Categories","category":"Category","you_will_not_be_able_to_recover_this_record":"You Will Not Be Able To Recover This Record","deleted":"Deleted","sorry":"Sorry","cannot_delete_this_record_as":"Cannot Delete This Record As","your_record_has_been_deleted":"Your Record Has Been Deleted","delete":"Delete","create_series":"Create Series","duration":"Duration","is_paid":"Is Paid","total_marks":"Total Marks","update_questions":"Update Questions","free":"Free","paid":"Paid","create_quiz":"Create Quiz","quiz_title":"Quiz Title","this_field_is_required":"This Field Is Required","the_text_is_too_short":"The Text Is Too Short","the_text_is_too_long":"The Text Is Too Long","subject":"Subject","select_subject":"Select Subject","online":"Online","offline":"Offline","quiz_type":"Quiz Type","select_type":"Select Type","offline_category":"Offline Category","enter_value_in_minutes":"Enter Value In Minutes","please_enter_valid_number":"Please Enter Valid Number","it_will_be_updated_by_adding_the_questions":"It Will Be Updated By Adding The Questions","pass_percentage":"Pass Percentage","negative_mark":"Negative Mark","instructions_page":"Instructions Page","start_date":"Start Date","end_date":"End Date","validity":"Validity","validity_in_days":"Validity In Days","cost":"Cost","specific_classes":"Specific Classes","applicable_to_specific":"Applicable To Specific","academic_year":"Academic Year","course":"Course","already_item_available":"Already Item Available","item_removed_successfully":"Item Removed Successfully","update_questions_for":"Update Questions For","subjects":"Subjects","difficulty":"Difficulty","easy":"Easy","medium":"Medium","hard":"Hard","question_type":"Question Type","single_answer":"Single Answer","multi_answer":"Multi Answer","fill_in_the_blanks":"Fill In The Blanks","match_the_following":"Match The Following","paragraph":"Paragraph","video":"Video","search_term":"Search Term","enter_search_term":"Enter Search Term","question":"Question","marks":"Marks","saved_questions":"Saved Questions","remove_all":"Remove All","edit_quiz":"Edit Quiz","right_side_name":"Right Side Name","right_side_sign":"Right Side Sign","bonafide_\\/_tc_certificates":"Bonafide \\/ Tc Certificates","bonafide_\\/_transfer_certificates":"Bonafide \\/ Transfer Certificates","bonafide_\\/_transfer_certificate":"Bonafide \\/ Transfer Certificate","users_dashboard":"Users Dashboard","owners":"Owners","admins":"Admins","students":"Students","staff":"Staff","librarians":"Librarians","assistant_librarians":"Assistant Librarians","parents":"Parents","all_users":"All Users","create_user":"Create User","100":"100","update_offline_exams_marks":"Update Offline Exams Marks","import_excel":"Import Excel","exam":"Exam","year_and_semester":"Year And Semester","maximum_marks":"Maximum Marks","update_marks":"Update Marks","select_offline_exams_details":"Select Offline Exams Details","offline_exmas":"Offline Exmas","selection_details":"Selection Details","branch":"Branch","get_details":"Get Details","offline_exam_details":"Offline Exam Details","marks_for":"Marks For","sno":"Sno","photo":"Photo","marks_obtained":"Marks Obtained","exam_status":"Exam Status","pass":"Pass","fail":"Fail","reference_no":"Reference No","oops___!":"Oops...!","no_students_available":"No Students Available","right_side_designation":"Right Side Designation","edit_settings":"Edit Settings","offline_exams_categories":"Offline Exams Categories","offline_quiz_categories":"Offline Quiz Categories","category_name":"Category Name","add_category":"Add Category","invalid_input":"Invalid Input","edit_category":"Edit Category","offline_exmas_quiz_categories":"Offline Exmas Quiz Categories","offline_exmas_categories":"Offline Exmas Categories","add_user":"Add User","staff_id":"Staff Id","job_title":"Job Title","email":"Email","edit_details":"Edit Details","teacher":"Teacher","staff_profile":"Staff Profile","staff_list":"Staff List","profile":"Profile","general_details":"General Details","personal_details":"Personal Details","contact_details":"Contact Details","date_of_join":"Date Of Join","qualification":"Qualification","experience_(years)":"Experience (years)","experience_(months)":"Experience (months)","experience_information":"Experience Information","other_information":"Other Information","first_name":"First Name","middle_name":"Middle Name","last_name":"Last Name","date_of_birth":"Date Of Birth","gender":"Gender","male":"Male","female":"Female","blood_group":"Blood Group","fathers_name":"Fathers Name","mother_tongue":"Mother Tongue","address_lane1":"Address Lane1","address_lane2":"Address Lane2","city":"City","state":"State","country":"Country","zipcode":"Zipcode","mobile":"Mobile","home_phone":"Home Phone","father\\/guardian_name":"Father\\/guardian Name","father_\\/_guardian_name":"Father \\/ Guardian Name","mother_name":"Mother Name","school_\\/_board_annual_examination_last_taken_and_result":"School \\/ Board Annual Examination Last Taken And Result","whether_failed,__if_once_\\/_twice_in_the_same_class":"Whether Failed, If Once \\/ Twice In The Same Class","left_side_name":"Left Side Name","show_left_side_name":"Show Left Side Name","show_left_side_designation":"Show Left Side Designation","show_left_side_image":"Show Left Side Image","whether_qualified_for_promotion_to_higer_class_if_so,__to_which_class":"Whether Qualified For Promotion To Higer Class If So, To Which Class","show_middle_name":"Show Middle Name","show_left_side_sign":"Show Left Side Sign","total_number_no_of_present_days":"Total Number No Of Present Days","show_middle_designation":"Show Middle Designation","show_middle_sign":"Show Middle Sign","whether_ncc_cadet_\\/_boy_scout\\/_girls_guide":"Whether Ncc Cadet \\/ Boy Scout\\/ Girls Guide","show_right_side_name":"Show Right Side Name","show_right_side_designation":"Show Right Side Designation","games_played_or_extra-_curricular_activities":"Games Played Or Extra- Curricular Activities","show_right_side_sign":"Show Right Side Sign","water_mark_image":"Water Mark Image","show_watermark":"Show Watermark","name_of_student":"Name Of Student","father_guardian_name":"Father Guardian Name","candidate_caste":"Candidate Caste","date_of_admission_with_class":"Date Of Admission With Class","last_class_studied":"Last Class Studied","last_taken_exam_and_result":"Last Taken Exam And Result","whether_failed_if_once_twice_in_the_same_class":"Whether Failed If Once Twice In The Same Class","promotion_class":"Promotion Class","total_working_days":"Total Working Days","total_present_days":"Total Present Days","ncc_boy_scout_girls_guide":"Ncc Boy Scout Girls Guide","games_played_or_extra_curricular_activities":"Games Played Or Extra Curricular Activities","date_of_apply":"Date Of Apply","date_of_issue":"Date Of Issue","reason":"Reason","remarks":"Remarks","import_marks":"Import Marks","download_template":"Download Template","upload":"Upload","information_helper_for_excel_data":"Information Helper For Excel Data","file_type_not_allowed":"File Type Not Allowed","marks_report":"Marks Report","total_class":"Total Class","present":"Present","absent":"Absent","leave":"Leave","no_data_available":"No Data Available","student":"Student","year-semester":"Year-semester","admission_details":"Admission Details","correct":"Correct","wrong":"Wrong","not_answered":"Not Answered","overall_performance":"Overall Performance","performance":"Performance","best_performance_in_all_quizzes":"Best Performance In All Quizzes","details":"Details","student_users":"Student Users","details_of":"Details Of","reports":"Reports","exam_history":"Exam History","view_details":"View Details","by_exam":"By Exam","by_subject":"By Subject","subscriptions":"Subscriptions","certificate_settings":"Certificate Settings","bonafide_certificates_contents":"Bonafide Certificates Contents","bonafide_certificates_fields":"Bonafide Certificates Fields","transfer_certificates_contents":"Transfer Certificates Contents","transfer_certificates_fields":"Transfer Certificates Fields","id_cards_contents":"Id Cards Contents","id_cards_fields":"Id Cards Fields","transfer_certificates_content":"Transfer Certificates Content","transfer_certificates_cont":"Transfer Certificates Cont","transfer_certificates_conten":"Transfer Certificates Conten","bonafide_certificates_conten":"Bonafide Certificates Conten","bonafide_certificate_content":"Bonafide Certificate Content","transfer_certificate_content":"Transfer Certificate Content","bonafide_certificatet_fields":"Bonafide Certificatet Fields","bonafide_certificatet_con":"Bonafide Certificatet Con","bonafide_certificatet_cont":"Bonafide Certificatet Cont","bonafide_certificatet_conten":"Bonafide Certificatet Conten","bonafide_certificate_conten":"Bonafide Certificate Conten","bonafide_certificate_fields":"Bonafide Certificate Fields","transfer_certificate_fields":"Transfer Certificate Fields","id_card_contents":"Id Card Contents","id_card_fields":"Id Card Fields","question_subjects":"Question Subjects","import_questions":"Import Questions","add_subject":"Add Subject","code":"Code","view_questions":"View Questions","bonafide_certificate_settings":"Bonafide Certificate Settings","transfer_certificate_settings":"Transfer Certificate Settings","total_exams":"Total Exams","total_questions":"Total Questions","update_quizzes":"Update Quizzes","bonafide_certificate_seting":"Bonafide Certificate Seting","bonafide__contents":"Bonafide Contents","bonafide_settings":"Bonafide Settings","mastersettings_dashboard":"Mastersettings Dashboard","religions":"Religions","start_time":"Start Time","end_time":"End Time","default_sessions_needed":"Default Sessions Needed","iamge":"Iamge","student_profile":"Student Profile","students_list":"Students List","parent_login":"Parent Login","info":"Info","once_saved_the_admission_details_cannot_be_edited%0D%0A":"Once Saved The Admission Details Cannot Be Edited","present_academic_details":"Present Academic Details","current_academic_year":"Current Academic Year","current_branch":"Current Branch","current_course":"Current Course","previous_educational_details":"Previous Educational Details","highest_qualification":"Highest Qualification","percentage":"Percentage","year_passed":"Year Passed","previous_institute_name":"Previous Institute Name","institute_address":"Institute Address","religion":"Religion","guardian_name":"Guardian Name","guardian_phone":"Guardian Phone","relationship_with_guardian":"Relationship With Guardian","guardian_email":"Guardian Email","parent_login_details":"Parent Login Details","parent_name":"Parent Name","parent_user_name":"Parent User Name","parent_email":"Parent Email","password":"Password","staff_users":"Staff Users","lesson_plans":"Lesson Plans","subject_preferences":"Subject Preferences","student_attendance":"Student Attendance","payment_statistics":"Payment Statistics","payment_monthly_statistics":"Payment Monthly Statistics","particulars":"Particulars","general_instructions":"General Instructions","attendance_date":"Attendance Date","from":"From","to":"To","lesson_plans_for":"Lesson Plans For","no_topics_available":"No Topics Available","transfer_details":"Transfer Details","edit_user":"Edit User","username":"Username","please_enter_valid_email":"Please Enter Valid Email","role":"Role","select_role":"Select Role","phone":"Phone","please_enter_10-15_digit_mobile_number":"Please Enter 10-15 Digit Mobile Number","please_enter_valid_phone_number":"Please Enter Valid Phone Number","billing_address":"Billing Address","please_enter_your_address":"Please Enter Your Address","exam_analysis_by_attempts":"Exam Analysis By Attempts","attempts":"Attempts","of":"Of","mins":"Mins","exam_attempts_and_score":"Exam Attempts And Score","quiz_attempts":"Quiz Attempts","result":"Result","view_answers":"View Answers","generate_certificate":"Generate Certificate","answers":"Answers","analysis":"Analysis","time_limit":"Time Limit","time_taken":"Time Taken","previous":"Previous","next":"Next","timetable_for":"Timetable For","sun":"Sun","mon":"Mon","tue":"Tue","wed":"Wed","thu":"Thu","fri":"Fri","sat":"Sat","timetable_for_":"Timetable For ","leisure":"Leisure","lab":"Lab","completed_topics_list":"Completed Topics List","no_list_available":"No List Available","select_other_class":"Select Other Class","please_select_the_details":"Please Select The Details","preferred_subjects":"Preferred Subjects","elective":"Elective","summary":"Summary","labs":"Labs","electives":"Electives","subjects_list":"Subjects List","success___!":"Success...!","records_updated_successfully":"Records Updated Successfully","students_dashboard":"Students Dashboard","view_students":"View Students","overall_subject_wise_analysis":"Overall Subject Wise Analysis","marks_details":"Marks Details","no_data_available_with_the_selection":"No Data Available With The Selection","leasure":"Leasure","break":"Break","printed_on:_":"Printed On: ","attendance_details":"Attendance Details","view_summary":"View Summary","attendance_summary":"Attendance Summary","total_classes":"Total Classes","its_okay":"Its Okay","topics_completed":"Topics Completed","transfer_list":"Transfer List","semister":"Semister","current_year":"Current Year","current_semister":"Current Semister","admin":"Admin","ooops__":"Ooops..","please_select_any_users":"Please Select Any Users","emergency_no":"Emergency No","no_users_available":"No Users Available","from(admission_year-course-year-semester)":"From(admission Year-course-year-semester)","from_(_admission_year-course-year-semester)":"From ( Admission Year-course-year-semester)","from_(_admission_year-_course-_year-_semester)":"From ( Admission Year- Course- Year- Semester)","to_(_admission_year-_course-_year-_semester)":"To ( Admission Year- Course- Year- Semester)","transfers_list":"Transfers List","from_(_admission_year-_course-_year-_semester)<\\/i>_":"From ( Admission Year- Course- Year- Semester)<\\/i> ","from_(_admission_year-_course)":"From ( Admission Year- Course)","to_(_admission_year-_course)":"To ( Admission Year- Course)","from_(_admission_year)":"From ( Admission Year)","to_(_admission_year)":"To ( Admission Year)","modules_helper":"Modules Helper","help_link_text":"Help Link Text","status":"Status","add_helper":"Add Helper","help_me":"Help Me","is_enabled":"Is Enabled","keyboard":"Keyboard","backdrop":"Backdrop","steps":"Steps","element_id":"Element Id","placement":"Placement","sort_order":"Sort Order","add_to_list":"Add To List","element":"Element","student_promotions":"Student Promotions","cancel":"Cancel","confirm":"Confirm","is_completed":"Is Completed","transfer_to_course":"Transfer To Course","transfer_to_year":"Transfer To Year","transfer_to_semister":"Transfer To Semister","promoted":"Promoted","detained":"Detained","course_completed":"Course Completed","transfer":"Transfer","create_category":"Create Category","enter_category_name":"Enter Category Name","record_added_successfully_with_password_":"Record Added Successfully With Password ","%0D%0Acannot_send_email_to_user,_please_check_your_server_settings":"cannot Send Email To User, Please Check Your Server Settings","timings_set":"Timings Set","create_timetable":"Create Timetable","timing_sets":"Timing Sets","timetable_dashboard":"Timetable Dashboard","prepare_timetable":"Prepare Timetable","day":"Day","remove":"Remove","print_timetable":"Print Timetable","enter_notes":"Enter Notes","this_will_be_displayed_bottom_of_the_timetable":"This Will Be Displayed Bottom Of The Timetable","schedule_table":"Schedule Table","attendance_report":"Attendance Report","subjects_reports":"Subjects Reports","view_analysis":"View Analysis","view_report":"View Report","my_bookmarks":"My Bookmarks","scheduled_exams":"Scheduled Exams","by_subjcet":"By Subjcet","history":"History","lms":"Lms","quizzes_dashboard":"Quizzes Dashboard","student_list":"Student List","payments":"Payments","viewww":"Viewww","all_exams":"All Exams","dueration":"Dueration","take_exam":"Take Exam","select_template":"Select Template","please_read_the_instructions_carefully":"Please Read The Instructions Carefully","exam_name":"Exam Name","please_accept_terms_and_conditions":"Please Accept Terms And Conditions","start_exam":"Start Exam","enable_back_side":"Enable Back Side","days":"Days","top_logo":"Top Logo","account_settings":"Account Settings","quiz_and_exam_series":"Quiz And Exam Series","lms_categories":"Lms Categories","academic_years":"Academic Years","courses_dashboard":"Courses Dashboard","allocate_courses":"Allocate Courses","academic_courses":"Academic Courses","course_list":"Course List","record_deleted_successfully":"Record Deleted Successfully","page_not_found":"Page Not Found","ooops___!":"Ooops...!","ooops__!":"Ooops..!","you_have_no_permission_to_access":"You Have No Permission To Access","no_topics_availble":"No Topics Availble","topics":"Topics","import_topics":"Import Topics","add_course":"Add Course","subject_master":"Subject Master","subject_topics":"Subject Topics","allocate_subject_to_course":"Allocate Subject To Course","allocate_staff_to_course":"Allocate Staff To Course","topics_list":"Topics List","import":"Import","parent":"Parent","topic_(id)":"Topic (id)","front_first_item":"Front First Item","allocate_staff_to_subject":"Allocate Staff To Subject","allocate_staff_to_courses":"Allocate Staff To Courses","add_or_edit_course_subjects":"Add Or Edit Course Subjects","allocate_staff":"Allocate Staff","subject_title":"Subject Title","subject_code":"Subject Code","pass_marks":"Pass Marks","is_lab":"Is Lab","is_elective":"Is Elective","view_topics":"View Topics","import_users":"Import Users","front_second_item":"Front Second Item","front_third_item":"Front Third Item","front_fourth_item":"Front Fourth Item","front_fifth_item":"Front Fifth Item","front_sixth_item":"Front Sixth Item","front_seventh_item":"Front Seventh Item","front_total_fields":"Front Total Fields","back_first_item_title":"Back First Item Title","front_first_item_title":"Front First Item Title","front_second_item_title":"Front Second Item Title","front_third_item_title":"Front Third Item Title","front_fourth_item_title":"Front Fourth Item Title","front_fifth_item_title":"Front Fifth Item Title","front_sixth_item_title":"Front Sixth Item Title","front_seventh_item_title":"Front Seventh Item Title","coupon_codes":"Coupon Codes","discount":"Discount","minimum_bill":"Minimum Bill","maximum_discount":"Maximum Discount","limit":"Limit","back_first_item_text":"Back First Item Text","back_second_item_title":"Back Second Item Title","back_second_item_text":"Back Second Item Text","time_spent_on_correct_answers":"Time Spent On Correct Answers","time_spent_on_wrong_answers":"Time Spent On Wrong Answers","overall_marks_analysis":"Overall Marks Analysis","time":"Time","spent_on_correct":"Spent On Correct","spent_on_wrong":"Spent On Wrong","spent_time":"Spent Time","total_time":"Total Time","time_is_shown_in_seconds":"Time Is Shown In Seconds","back_third_item_title":"Back Third Item Title","back_third_item_text":"Back Third Item Text","back_fourth_item_title":"Back Fourth Item Title","back_fourth_item_text":"Back Fourth Item Text","clear_answer":"Clear Answer","bookmarks":"Bookmarks","exam_duration":"Exam Duration","hints":"Hints","unbookmark_this_question":"Unbookmark This Question","bookmark_this_question":"Bookmark This Question","mark_for_review":"Mark For Review","finish":"Finish","warning":"Warning","do_not_press_back\\/refresh_button":"Do Not Press Back\\/refresh Button","answered":"Answered","marked":"Marked","not_visited":"Not Visited","consumed_time":"Consumed Time","result_for":"Result For","score":"Score","view_key":"View Key","allocate_subjects":"Allocate Subjects","no_staff_alotted":"No Staff Alotted","no_subjects_selected":"No Subjects Selected","id":"Id","course_name":"Course Name","grade_type":"Grade Type","edit_semisters":"Edit Semisters","years":"Years","add_religion":"Add Religion","owner":"Owner","total_items":"Total Items","update_lms":"Update Lms","examseries":"Examseries","create_coupon":"Create Coupon","coupon_code":"Coupon Code","value":"Value","percent":"Percent","discount_type":"Discount Type","discount_value":"Discount Value","enter_value":"Enter Value","enter_minimum_bill":"Enter Minimum Bill","discount_maximum_amount":"Discount Maximum Amount","enter_maximum_amount":"Enter Maximum Amount","valid_from":"Valid From","valid_to":"Valid To","usage_limit":"Usage Limit","enter_usage_limit_per_user":"Enter Usage Limit Per User","from_email":"From Email","from_name":"From Name","export_payments_report":"Export Payments Report","export_payment_records":"Export Payment Records","download_excel":"Download Excel","all_records":"All Records","from_date":"From Date","to_date":"To Date","payment_type":"Payment Type","all":"All","payment_status":"Payment Status","select_parent":"Select Parent","course_title":"Course Title","course_code":"Course Code","duration_in_years":"Duration In Years","grade_system":"Grade System","is_having_semisters":"Is Having Semisters","is_having_electives":"Is Having Electives","add_subjects_to_course":"Add Subjects To Course","courses_list":"Courses List","load":"Load","add_subject_to_course":"Add Subject To Course","number_of_sessions_needed":"Number Of Sessions Needed","template_1_logo":"Template 1 Logo","institute_title":"Institute Title","create_set":"Create Set","academic_operatons":"Academic Operatons","period_name":"Period Name","enter_period_name":"Enter Period Name","start_time_cannot_be_greater_than_or_equal_to_end_time":"Start Time Cannot Be Greater Than Or Equal To End Time","start_time_must_be_greater_to_previous_end_time":"Start Time Must Be Greater To Previous End Time","time_spent_correct_answers":"Time Spent Correct Answers","time_spent_wrong_answers":"Time Spent Wrong Answers","subject_wise_analysis":"Subject Wise Analysis","in":"In","attendance_for":"Attendance For","notes":"Notes","create_message":"Create Message","inbox":"Inbox","compose":"Compose","send_message":"Send Message","questions":"Questions","fill_the_blanks":"Fill The Blanks","first_admission_in_the_school":"First Admission In The School","date_of_first_admission_in_the_school":"Date Of First Admission In The School","first_admission_class_in_the_school_with_name":" First Admission Class In The School With Name","completed":"Completed","internal_marks":"Internal Marks","external_marks":"External Marks","please_enter_valid_internal_marks":"Please Enter Valid Internal Marks","please_enter_valid_external_marks":"Please Enter Valid External Marks","please_enter_valid_maximum_marks":"Please Enter Valid Maximum Marks","please_enter_valid_pass_marks":"Please Enter Valid Pass Marks","pass_marks_cannot_be_greater_than_maximum_marks":"Pass Marks Cannot Be Greater Than Maximum Marks","add_topic":"Add Topic","topic_name":"Topic Name","category_deleted_successfully":"Category Deleted Successfully","add_academic":"Add Academic","academic_title":"Academic Title","show_in_list":"Show In List","payu":"Payu","paypal":"Paypal","messaging":"Messaging","offline_payment":"Offline Payment","push_notifications":"Push Notifications","certificate":"Certificate","show_foreign_key_constraint":"Show Foreign Key Constraint","facebook_login":"Facebook Login","google_plus_login":"Google Plus Login","old_password":"Old Password","the_password_is_too_short":"The Password Is Too Short","new_password":"New Password","retype_password":"Retype Password","password_and_confirm_password_does_not_match":"Password And Confirm Password Does Not Match","posted_on":"Posted On","send_messageeee":"Send Messageeee","please_select_the_recipients":"Please Select The Recipients","import_subjects":"Import Subjects","children":"Children","premium":"Premium","subscriptions_list":"Subscriptions List","plan_type":"Plan Type","paid_from":"Paid From","datetime":"Datetime","it_includes":"It Includes","lms_series":"Lms Series","view_more":"View More","items":"Items","learning_management_series":"Learning Management Series","buy_now":"Buy Now","checkout":"Checkout","item":"Item","valid_for":"Valid For","enter_coupon_code":"Enter Coupon Code","apply":"Apply","select_your_child":"Select Your Child","click_here_to_update_payment_details":"Click Here To Update Payment Details","billing_details":"Billing Details","invalid_coupon":"Invalid Coupon","hey_you_are_eligible_for_discount":"Hey You Are Eligible For Discount","printable__file":"Printable File","timetable_settings":"Timetable Settings","printed_onnn:_":"Printed Onnn: ","timetable__contents":"Timetable Contents","certificates_settings_dashboard":"Certificates Settings Dashboard","hai":"Hai","students_list_class_vice":"Students List Class Vice","library_dashboard":"Library Dashboard","book_returns_student":"Book Returns Student","book_returns_staff":"Book Returns Staff","asset_types":"Asset Types","master_data":"Master Data","publishers":"Publishers","authors":"Authors","library_users":"Library Users","issue_asset":"Issue Asset","maximum_allowed":"Maximum Allowed","issued":"Issued","eligible":"Eligible","transactions":"Transactions","books_taken":"Books Taken","issue_book":"Issue Book","general_info":"General Info","contace_details":"Contace Details","assets_on_issue":"Assets On Issue","issued_on":"Issued On","due_date":"Due Date","library_issues":"Library Issues","asset_details":"Asset Details","please_enter_asset_reference_number":"Please Enter Asset Reference Number","return_on":"Return On","book_returns":"Book Returns","academic_details":"Academic Details","asset_no":"Asset No","asset_name":"Asset Name","date-_issue\\/_return":"Date- Issue\\/ Return","return":"Return","department":"Department","id_card_settings":"Id Card Settings","offline_payment_form":"Offline Payment Form","submit":"Submit","offline_payment_instructions":"Offline Payment Instructions","payment_details":"Payment Details","your_request_was_submitted_to_admin":"Your Request Was Submitted To Admin","success_list":"Success List","user_name":"User Name","plan":"Plan","payment_gateway":"Payment Gateway","updated_at":"Updated At","offline_payment_details":"Offline Payment Details","coupon_applied":"Coupon Applied","after_discount":"After Discount","created_at":"Created At","comments":"Comments","approve":"Approve","reject":"Reject","close":"Close","record_was_updated_successfully":"Record Was Updated Successfully","exam_aborted":"Exam Aborted","students_completed_list_class_vice":"Students Completed List Class Vice","students_completed_list":"Students Completed List","course_completed_student_list":"Course Completed Student List","certificate_generation":"Certificate Generation","certificate_for":"Certificate For","improper_sheet_uploaded":"Improper Sheet Uploaded","report":"Report","failed":"Failed","address":"Address","please_select_required_the_details":"Please Select Required The Details","this_record_is_in_use_in_other_modules":"This Record Is In Use In Other Modules","date_of_exam":"Date Of Exam","topic":"Topic","view_all_users":"View All Users","available_timesets":"Available Timesets","library_masters":"Library Masters","author":"Author","publisher":"Publisher","available":"Available","edition":"Edition","library_assets":"Library Assets","eligible_for_fine":"Eligible For Fine","fine_per_day":"Fine Per Day","qualification_details":"Qualification Details","experience":"Experience","months":"Months","create_asset":"Create Asset","asset_type":"Asset Type","is_eligible_for_fine":"Is Eligible For Fine","is_having_max_fine_limit":"Is Having Max Fine Limit","maximum_fine_amount":"Maximum Fine Amount","maximum_issuable":"Maximum Issuable","maximum_days_to_return":"Maximum Days To Return","maximum_advanced_reservations":"Maximum Advanced Reservations","edit_asset":"Edit Asset","issuable":"Issuable","days_to_return":"Days To Return","create_master_asset":"Create Master Asset","asset_belongs_to_subject":"Asset Belongs To Subject","isbn_number":"Isbn Number","actual_price":"Actual Price","chargible_price_if_lost":"Chargible Price If Lost","create_authors":"Create Authors","author_name":"Author Name","create_publisher":"Create Publisher","assets_publishers":"Assets Publishers","publisher_name":"Publisher Name","librarian":"Librarian","back":"Back","collections":"Collections","masters":"Masters","damaged":"Damaged","lost":"Lost","generate_collection":"Generate Collection","series_prefix":"Series Prefix","generate":"Generate","maximum_issues_student":"Maximum Issues Student","maximum_issues_staff":"Maximum Issues Staff","maximum_days_to_return_student":"Maximum Days To Return Student","maximum_days_to_return_staff":"Maximum Days To Return Staff","library_series_prefix":"Library Series Prefix","library_series_number_length":"Library Series Number Length","topper_percentage":"Topper Percentage","barcode":"Barcode","edit_master_asset":"Edit Master Asset","your_not_assigned_to_any_class":"Your Not Assigned To Any Class","edit_author":"Edit Author","course_completed_students_list_class_vice":"Course Completed Students List Class Vice","edit_academic":"Edit Academic","edit_course":"Edit Course","reference_no_":"Reference No.","eligiblity":"Eligiblity","issue":"Issue","asset_issued_successfully":"Asset Issued Successfully","on_issue":"On Issue","edit_subject":"Edit Subject","subjects_listtt":"Subjects Listtt","edit_topic":"Edit Topic","upload_question":"Upload Question","supported_formats_are":"Supported Formats Are","difficulty_level":"Difficulty Level","hint":"Hint","explanation":"Explanation","time_to_spend":"Time To Spend","in_seconds":"In Seconds","answer_number":"Answer Number","total_correct_answers":"Total Correct Answers","total_blank_answers":"Total Blank Answers","left_title":"Left Title","right_title":"Right Title","left_option":"Left Option","add_exam_series":"Add Exam Series","series_title":"Series Title","please_upload_valid_image_type":"Please, Upload Valid Image Type","language":"Language","default_language":"Default Language","students_detained_list":"Students Detained List","student_book_return":"Student Book Return","staff_book_return":"Staff Book Return","master_setup":"Master Setup","update_strings":"Update Strings","disable":"Disable","enable":"Enable","set_default":"Set Default","latest_students":"Latest Students","latest_staff":"Latest Staff","recent_online_payments":"Recent Online Payments","recent_offline_payments":"Recent Offline Payments","recent_quiz_takers":"Recent Quiz Takers","students_list_class_wise":"Students List Class Wise","course_completed_students":"Course Completed Students","detained_students_list_class_wise":"Detained Students List Class Wise","home_page":"Home Page","lms_contents":"Lms Contents"}', '2016-08-30 00:41:02', '2017-12-25 09:38:24');
INSERT INTO `languages` (`id`, `language`, `slug`, `code`, `is_rtl`, `is_default`, `phrases`, `created_at`, `updated_at`) VALUES
(13, 'العربية', 'alaarby', 'ar', 1, 1, '{"games_played_or_extra-curricular_activities":"\\u0627\\u0644\\u0625\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0648 \\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0627\\u0647\\u062c \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 ","general_conduct":"\\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 \\u0627\\u0644\\u0639\\u0627\\u0645","date_of_application_for_certificate":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","date_of_issue_certificate":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","reason_for_leaving_the_school":"\\u0633\\u0628\\u0628 \\u062a\\u0631\\u0643 \\u0627\\u0644\\u0645\\u062f\\u0631\\u064a\\u0629","any_other_remarks":"\\u0627\\u0649 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u0627\\u062e\\u0631\\u064a","print":"\\u0637\\u0628\\u0627\\u0639\\u0629","date":"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e","serial_no:":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644\\u064a","admission_no:":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","name_of_the_pupil":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062a\\u0644\\u0645\\u064a\\u0630","fathers\\/guardians_name":"\\u0627\\u0644\\u0623\\u0628\\u0627\\u0621 \\/ \\u0623\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0645\\u0648\\u0631","mothers_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0645","nationality":"\\u0627\\u0644\\u062c\\u0646\\u0633\\u064a\\u0629","candidate_belongs_to_schedule_caste_or_schedule_tribe":"Candidate Belongs To Schedule Caste Or Schedule Tribe","date_of_first_admission_in_the_school_with_class":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","date_of_birth_according_to_the_admission_register":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f \\u062d\\u0633\\u0628 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","class_in_which_the_last_studied_with_name":"Class In Which The Last Studied With Name","school\\/board_annual_examination_last_taken_and_result":"School\\/board Annual Examination Last Taken And Result","whether_failed,_if_once\\/twice_in_the_same_class":"Whether Failed, If Once\\/twice In The Same Class","whether_qualified_for_promotion_to_higer_class_if_so,_to_which_class":"Whether Qualified For Promotion To Higer Class If So, to Which Class","total_number_no_of_working_days":"\\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a\\u0647","total_number_no_of_days_present":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","whether_n_c_c_cadet\\/boy_scout\\/_girls_guide":"Whether N C C Cadet\\/boy Scout\\/ Girls Guide","whether_ncc_cadet\\/boy_scout\\/_girls_guide":"Whether Ncc Cadet\\/boy Scout\\/ Girls Guide","whether_ncc_cadet\\/_boy_scout\\/_girls_guide":"Whether Ncc Cadet\\/ Boy Scout\\/ Girls Guide","whether_n_c_c_cadet\\/_boy_scout\\/_girls_guide":"Whether N C C Cadet\\/ Boy Scout\\/ Girls Guide","whether_n_cc_cadet\\/_boy_scout\\/_girls_guide":"Whether N.cc Cadet\\/ Boy Scout\\/ Girls Guide","bonafide_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 ","select":"\\u0627\\u062e\\u062a\\u0631","academic_operations":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","certificates_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","select_details":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","certificate_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","search":"\\u0627\\u0644\\u0628\\u062d\\u062b","image":"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","name":"\\u0627\\u0644\\u0627\\u0633\\u0645","roll_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0631\\u0648\\u0644","admission_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","class":"\\u0627\\u0644\\u0641\\u0635\\u0644","year":"\\u0627\\u0644\\u0633\\u0646\\u0629","semester":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","are_you_sure":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f","yes":"\\u0646\\u0639\\u0645","delete_it":"\\u062d\\u0630\\u0641","no":"\\u0644\\u0627","cancel_please":"\\u0631\\u062c\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621","cancelled":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621","your_record_is_safe":"\\u0633\\u062c\\u0644\\u0643 \\u0627\\u0645\\u0646","search_student":"\\u0627\\u0644\\u0628\\u062d\\u062b \\u0641\\u0649 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","latest_users":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","was_joined_as":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u062a\\u062d\\u0627\\u0642 \\u0643\\u0640\\u0640","see_more":"\\u0627\\u0642\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f","my_profile":"\\u0645\\u0644\\u0641\\u064a \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a","change_password":"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","feedback":"\\u0627\\u0644\\u0627\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","notifications":"\\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a","messages":"\\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644","languages":"\\u0627\\u0644\\u0644\\u063a\\u0627\\u062a","logout":"\\u062e\\u0631\\u0648\\u062c","dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0642\\u064a\\u0627\\u062f\\u0629","users":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","attendance":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","certificates":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","transfers":"\\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","timetable":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","offline_exams_":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","class_attendance_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062d\\u0636\\u0648\\u0631 \\u0641\\u0635\\u0644","class_marks_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0641\\u0635\\u0644","exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","question_bank":"\\u0628\\u0646\\u0643 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","quiz":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","exam_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","instructions":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a","coupons":"\\u0627\\u0644\\u0642\\u0633\\u0627\\u0626\\u0645","list":"\\u0642\\u0627\\u0626\\u0645\\u0629","add":"\\u0627\\u0636\\u0627\\u0641\\u0629","contents":" \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","series":"\\u0633\\u0644\\u0633\\u0644\\u0629","master_settings":"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","settings":"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645","religions_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u062f\\u064a\\u0627\\u0646","categories_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","academics_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","courses_master":" \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","course_subjects":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","certificate_templates":"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","email_templates":"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0627\\u064a\\u0645\\u064a\\u0644\\u0627\\u062a","payment_reports":"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","online_payments":"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a ","offline_payments":"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","export":"\\u062a\\u0635\\u062f\\u064a\\u0631","certificate_issues_histroy":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629 \\u0633\\u0627\\u0628\\u0642\\u0627","select_user_to_view_details":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","purpose":"\\u0627\\u0644\\u063a\\u0631\\u0636","please_wait":"\\u0646\\u0631\\u062c\\u0648 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631","invalid_setting":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u062a \\u062e\\u0627\\u0637\\u0626\\u0629","id_cards":"\\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","lets_start":"\\u0644\\u0646\\u0628\\u062f\\u0623","bonafide_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 ","user_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","success":"\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0646\\u0627\\u062c\\u062d\\u0629","pending":"\\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631","total":"\\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a","overall_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","payments_reports_in":"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0644\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","demanding_quizzes":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u0637\\u0644\\u0628\\u0647\\u0627","demanding":"\\u062a\\u062d\\u062a \\u0627\\u0644\\u0637\\u0644\\u0628","quizzes":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","view_all":"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0643\\u0644","academics":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","library":"\\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","courses":"\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","quizzes_usage":"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","paid_quizzes_usage":"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0629","academic_operations_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","offline_exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","orientation":"\\u0627\\u0644\\u062a\\u0648\\u062c\\u0647","update":"\\u062a\\u062d\\u062f\\u064a\\u062b","create":"\\u0625\\u0636\\u0627\\u0641\\u0629","key":"\\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","setting_key":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a","tool_tip":"\\u0646\\u0628\\u0630\\u0629 \\u0645\\u062e\\u062a\\u0635\\u0631\\u0629","type":"\\u0627\\u0644\\u0646\\u0648\\u0639","total_options":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0627\\u062a","description":"\\u0627\\u0644\\u0648\\u0635\\u0641","option_value":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631","option_text":"\\u0646\\u0635 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631","make_default":"\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a","record_updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","zoomfactor":"\\u0639\\u0627\\u0645\\u0644 \\u0627\\u0644\\u062a\\u0643\\u0628\\u064a\\u0631","margin":"\\u0627\\u0644\\u0647\\u0627\\u0645\\u0634","format":"\\u0627\\u0644\\u062a\\u0646\\u0633\\u064a\\u0642","printable_file":"\\u0645\\u0644\\u0641 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","id_card_generation":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u0648\\u064a\\u0629","print_header":"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0631\\u0627\\u0633 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629","print_footer":"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0627\\u0633\\u0641\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629","print_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","print_reference_number":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","module":"\\u0627\\u0644\\u0648\\u062d\\u062f\\u0629","action":"\\u0627\\u0644\\u0625\\u062c\\u0631\\u0627\\u0621","edit":"\\u062a\\u0639\\u062f\\u064a\\u0644","view":"\\u0639\\u0631\\u0636","logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631","content":"\\u064a\\u062d\\u062a\\u0648\\u0649","left_sign_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0633\\u0627\\u0631","right_sign_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u064a\\u0645\\u064a\\u0646","left_sign_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u064a\\u0633\\u0627\\u0631 ","right_sign_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u064a\\u0645\\u064a\\u0646","left_sign_designation":"\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u064a\\u0633\\u0627\\u0631 ","right_sign_designation":"\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u064a\\u0645\\u064a\\u0646","watermark_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629","bottom_middle_logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641 \\u0648\\u0641\\u064a \\u0627\\u0644\\u0627\\u0633\\u0641\\u0644","add_setting":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0636\\u0628\\u0637","title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","introduction":"\\u0627\\u0644\\u0645\\u0642\\u062f\\u0645\\u0629","description_of_the_topic":"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639","record_added_successfully":"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","no_settings_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","right_designation":"\\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u064a\\u0645\\u064a\\u0646","exams_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a ","exam-series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","quiz_categories":"\\u062a\\u0635\\u0646\\u064a\\u0641\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","category":"\\u0627\\u0644\\u0642\\u0633\\u0645","you_will_not_be_able_to_recover_this_record":"\\u0644\\u0646 \\u062a\\u0633\\u062a\\u0637\\u064a\\u0639 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u062c\\u0644 ","deleted":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641","sorry":"\\u0646\\u0623\\u0633\\u0641","cannot_delete_this_record_as":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0644\\u0627\\u0646\\u0647 ","your_record_has_been_deleted":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d","delete":"\\u062d\\u0630\\u0641","create_series":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0633\\u0644\\u0633\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629","duration":"\\u0627\\u0644\\u0641\\u062a\\u0631\\u0629","is_paid":"\\u0645\\u062f\\u0641\\u0648\\u0639","total_marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0643\\u0644\\u064a\\u0629","update_questions":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","free":"\\u0645\\u062c\\u0627\\u0646\\u064a","paid":"\\u0645\\u062f\\u0641\\u0648\\u0639","create_quiz":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","quiz_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","this_field_is_required":"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u062d\\u0642\\u0644 \\u0645\\u0637\\u0644\\u0648\\u0628","the_text_is_too_short":"\\u0627\\u0644\\u0646\\u0635 \\u0642\\u0635\\u064a\\u0631 \\u062c\\u062f\\u0627","the_text_is_too_long":"\\u0627\\u0644\\u0646\\u0635 \\u0637\\u0648\\u064a\\u0644 \\u062c\\u062f\\u0627","subject":"\\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639 ","select_subject":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","online":"\\u00a0\\u062d\\u0642\\u064a\\u0642\\u064a","offline":"\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","quiz_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","select_type":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0646\\u0648\\u0639","offline_category":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","enter_value_in_minutes":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 \\u0628\\u0627\\u0644\\u062f\\u0642\\u0627\\u0626\\u0642","please_enter_valid_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0635\\u062d\\u064a\\u062d","it_will_be_updated_by_adding_the_questions":"It Will Be Updated By Adding The Questions","pass_percentage":"\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d","negative_mark":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0628","instructions_page":"\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a","start_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629","end_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629","validity":"\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629","validity_in_days":"\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0627\\u064a\\u0627\\u0645","cost":"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629","specific_classes":"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","applicable_to_specific":"\\u064a\\u0646\\u0637\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0645\\u062d\\u062f\\u062f","academic_year":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","course":"\\u0627\\u0644\\u0641\\u0635\\u0644","already_item_available":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0645\\u062a\\u0627\\u062d \\u0641\\u0639\\u0644\\u064a\\u0627","item_removed_successfully":"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d","update_questions_for":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644 \\u0644\\u0640\\u0640","subjects":"\\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","difficulty":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0635\\u0639\\u0648\\u0628\\u0629","easy":"\\u0633\\u0647\\u0644","medium":"\\u0645\\u062a\\u0648\\u0633\\u0637","hard":"\\u0635\\u0639\\u0628","question_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","single_answer":"\\u0627\\u062c\\u0627\\u0628\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629","multi_answer":"\\u0627\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0627\\u062c\\u0627\\u0628\\u0629","fill_in_the_blanks":"\\u0627\\u0645\\u0644\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a","match_the_following":"\\u0648\\u0635\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0634\\u0627\\u0628\\u0647\\u0627\\u062a","paragraph":"\\u0627\\u0644\\u0641\\u0642\\u0631\\u0629","video":"\\u0641\\u064a\\u062f\\u064a\\u0648","search_term":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0628\\u062d\\u062b","enter_search_term":"\\u0627\\u062f\\u062e\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0628\\u062d\\u062b","question":"\\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","saved_questions":"\\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629","remove_all":"\\u062d\\u0630\\u0641 \\u0627\\u0644\\u0643\\u0644","edit_quiz":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","right_side_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u062c\\u0647\\u0629 \\u064a\\u0645\\u064a\\u0646","right_side_sign":"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u062c\\u0647\\u0629 \\u064a\\u0645\\u064a\\u0646","bonafide_\\/_tc_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","bonafide_\\/_transfer_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","bonafide_\\/_transfer_certificate":"\\u0628\\u0648\\u0646\\u0627\\u0641\\u064a\\u062f \\/ \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644","users_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","owners":"\\u0627\\u0644\\u0645\\u0644\\u0627\\u0643","admins":"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646","students":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","staff":"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","librarians":"\\u0645\\u0633\\u0624\\u0644\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","assistant_librarians":"\\u0645\\u0633\\u0627\\u0639\\u062f\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","parents":"\\u0623\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0645\\u0648\\u0631","all_users":"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","create_user":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","100":"100","update_offline_exams_marks":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","import_excel":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0645\\u0644\\u0641 \\u0627\\u0643\\u0633\\u0644","exam":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","year_and_semester":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","maximum_marks":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","update_marks":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","select_offline_exams_details":"\\u0627\\u062e\\u062a\\u0631 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","offline_exmas":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","selection_details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 ","branch":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","get_details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","offline_exam_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","marks_for":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0644\\u0640\\u0640","sno":"\\u0633\\u0646\\u0648","photo":"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","marks_obtained":"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u0635\\u0644 \\u0639\\u0644\\u064a\\u0647\\u0627 ","exam_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","pass":"\\u0646\\u0627\\u062c\\u062d","fail":"\\u0631\\u0627\\u0633\\u0628","reference_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639","oops___!":"\\u062e\\u0637\\u0623...!","no_students_available":"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0637\\u0644\\u0627\\u0628 ","right_side_designation":"\\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646","edit_settings":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a","offline_exams_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","offline_quiz_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","category_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0642\\u0633\\u0645","add_category":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u0645","invalid_input":"\\u0645\\u062f\\u062e\\u0644 \\u062e\\u0627\\u0637\\u064a","edit_category":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0633\\u0645","offline_exmas_quiz_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","offline_exmas_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629","add_user":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","staff_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","job_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629","email":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","edit_details":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 ","teacher":"\\u0645\\u0639\\u0644\\u0645","staff_profile":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 ","staff_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","profile":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628 ","general_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","personal_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0634\\u062e\\u0635\\u064a\\u0629","contact_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644","date_of_join":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0644\\u062a\\u062d\\u0627\\u0642 ","qualification":"\\u0627\\u0644\\u0645\\u0624\\u0647\\u0644","experience_(years)":"Experience (years)","experience_(months)":"Experience (months)","experience_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646 \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629","other_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u062e\\u0631\\u064a","first_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0644","middle_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0633\\u0637","last_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u062e\\u064a\\u0631","date_of_birth":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f","gender":"\\u0627\\u0644\\u0646\\u0648\\u0639","male":"\\u0630\\u0643\\u0631","female":"\\u0627\\u0646\\u062b\\u064a","blood_group":"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645","fathers_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0628","mother_tongue":"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0627\\u0645","address_lane1":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0637\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644","address_lane2":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0637\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a","city":"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629","state":"\\u0627\\u0644\\u062d\\u064a","country":"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629","zipcode":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629","mobile":"\\u0627\\u0644\\u062c\\u0648\\u0627\\u0644","home_phone":"\\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644","father\\/guardian_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0628 \\/ \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631 ","father_\\/_guardian_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0628 \\/ \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631 ","mother_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0627\\u0645","school_\\/_board_annual_examination_last_taken_and_result":"School \\/ Board Annual Examination Last Taken And Result","whether_failed,__if_once_\\/_twice_in_the_same_class":"Whether Failed, If Once \\/ Twice In The Same Class","left_side_name":"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631","show_left_side_name":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631","show_left_side_designation":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 ","show_left_side_image":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631","whether_qualified_for_promotion_to_higer_class_if_so,__to_which_class":"Whether Qualified For Promotion To Higer Class If So, To Which Class","show_middle_name":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641","show_left_side_sign":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 ","total_number_no_of_present_days":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","show_middle_designation":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641 ","show_middle_sign":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0635\\u0641","whether_ncc_cadet_\\/_boy_scout\\/_girls_guide":"Whether Ncc Cadet \\/ Boy Scout\\/ Girls Guide","show_right_side_name":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646","show_right_side_designation":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 ","games_played_or_extra-_curricular_activities":"\\u0627\\u0644\\u0627\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0629","show_right_side_sign":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u0647\\u0629 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 ","water_mark_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629","show_watermark":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0626\\u064a\\u0629","name_of_student":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","father_guardian_name":"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 ","candidate_caste":"\\u0643\\u0627\\u0633\\u062a \\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645","date_of_admission_with_class":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0645\\u0639 \\u0627\\u0644\\u0641\\u0635\\u0644","last_class_studied":"\\u0627\\u062e\\u0631 \\u0641\\u0635\\u0644 \\u062a\\u0645 \\u062f\\u0631\\u0627\\u0633\\u062a\\u0629","last_taken_exam_and_result":"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u0645 \\u0627\\u062e\\u0630\\u0647 \\u0648\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629","whether_failed_if_once_twice_in_the_same_class":"Whether Failed If Once Twice In The Same Class","promotion_class":"\\u062a\\u0631\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0635\\u0644","total_working_days":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644","total_present_days":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","ncc_boy_scout_girls_guide":"Ncc Boy Scout Girls Guide","games_played_or_extra_curricular_activities":"\\u0627\\u0644\\u0627\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0629","date_of_apply":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645","date_of_issue":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","reason":"\\u0627\\u0644\\u0633\\u0628\\u0628","remarks":"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a","import_marks":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","download_template":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","upload":"\\u0631\\u0641\\u0639","information_helper_for_excel_data":"\\u0645\\u0639\\u0644\\u0645\\u0627\\u062a \\u062a\\u0633\\u0627\\u0639\\u062f\\u0643 \\u0644\\u0641\\u0647\\u0645 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0627\\u0643\\u0633\\u0644","file_type_not_allowed":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u063a\\u064a\\u0631 \\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0647","marks_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","total_class":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","present":"\\u062d\\u0627\\u0636\\u0631","absent":"\\u063a\\u0627\\u064a\\u0628 ","leave":"\\u063a\\u0627\\u062f\\u0631","no_data_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","student":"\\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","year-semester":"\\u0627\\u0644\\u0633\\u0646\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","admission_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644","correct":"\\u0635\\u062d\\u064a\\u062d","wrong":"\\u062e\\u0637\\u0623","not_answered":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","overall_performance":"\\u0627\\u0644\\u0627\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0639\\u0627\\u0645","performance":"\\u0627\\u0644\\u0627\\u062f\\u0627\\u0621","best_performance_in_all_quizzes":"\\u0627\\u0641\\u0636\\u0644 \\u0627\\u062f\\u0627\\u0621 \\u0641\\u0649 \\u0643\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","student_users":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 ","details_of":"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640","reports":"\\u0627\\u0644\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631","exam_history":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","view_details":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","by_exam":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","by_subject":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","subscriptions":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","certificate_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","bonafide_certificates_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificates_fields":"\\u062d\\u0642\\u0648\\u0644  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificates_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","transfer_certificates_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","id_cards_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","id_cards_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","transfer_certificates_content":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","transfer_certificates_cont":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","transfer_certificates_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","bonafide_certificates_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificate_content":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificate_content":"\\u0645\\u062d\\u062a\\u0648\\u064a  \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","bonafide_certificatet_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificatet_con":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificatet_cont":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificatet_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificate_conten":"\\u0645\\u062d\\u062a\\u0648\\u064a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_certificate_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificate_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","id_card_contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","id_card_fields":"\\u062d\\u0642\\u0648\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","question_subjects":"\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","import_questions":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","add_subject":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0627\\u062f\\u0629","code":"\\u0627\\u0644\\u0643\\u0648\\u062f","view_questions":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","bonafide_certificate_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","transfer_certificate_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","total_exams":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","total_questions":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","update_quizzes":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","bonafide_certificate_seting":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide__contents":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","bonafide_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0634\\u0647\\u0627\\u062f\\u0629 \\u062d\\u0633\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643","mastersettings_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","religions":"\\u0627\\u0644\\u0623\\u062f\\u064a\\u0627\\u0646","start_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629","end_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629","default_sessions_needed":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u062c\\u0644\\u0633\\u0627\\u062a \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\\u0629  \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629 ","iamge":"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","student_profile":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","students_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","parent_login":"\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0648\\u0644\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0645\\u0648\\u0631","info":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a","once_saved_the_admission_details_cannot_be_edited%0D%0A":"\\u0628\\u0645\\u062c\\u0631\\u062f \\u062d\\u0641\\u0638 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 , \\u0644\\u0646 \\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644\\u0647\\u0627 ","present_academic_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","current_academic_year":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","current_branch":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","current_course":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","previous_educational_details":"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","highest_qualification":"\\u0627\\u0644\\u0645\\u0624\\u0647\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u0644\\u064a\\u0627","percentage":"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 ","year_passed":"\\u0645\\u0631\\u062a \\u0633\\u0646\\u0629","previous_institute_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629","institute_address":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","religion":"\\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0629","guardian_name":"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","guardian_phone":"\\u0647\\u0627\\u062a\\u0641 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","relationship_with_guardian":"\\u0635\\u0644\\u0647 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0628\\u0629 \\u0628\\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631","guardian_email":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","parent_login_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062f\\u062e\\u0648\\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631 ","parent_name":"\\u0627\\u0633\\u0645 \\u0648\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0645\\u0631","parent_user_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631","parent_email":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644 \\u0648\\u0644\\u064a \\u0627\\u0644\\u0627\\u0645\\u0631","password":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","staff_users":"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","lesson_plans":"\\u062e\\u0637\\u0637 \\u0627\\u0644\\u062f\\u0631\\u0648\\u0633","subject_preferences":"\\u062e\\u064a\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","student_attendance":"\\u062d\\u0636\\u0648\\u0631 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","payment_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","payment_monthly_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0634\\u0647\\u0631\\u064a\\u0629","particulars":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","general_instructions":"\\u0627\\u0631\\u0627\\u0634\\u0627\\u062f\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","attendance_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","from":"\\u0645\\u0646","to":"\\u0627\\u0644\\u064a","lesson_plans_for":"\\u062e\\u0637\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0633 \\u0644\\u0640\\u0640","no_topics_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","transfer_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0646\\u0642\\u0644","edit_user":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","username":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","please_enter_valid_email":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","role":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","select_role":"\\u0627\\u062e\\u062a\\u0631 \\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","phone":"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","please_enter_10-15_digit_mobile_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0645\\u0646 \\u0661\\u0660-\\u0661\\u0665 \\u0631\\u0642\\u0645 \\u0644\\u0644\\u062c\\u0648\\u0627\\u0644","please_enter_valid_phone_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0633\\u0644\\u064a\\u0645","billing_address":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","please_enter_your_address":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0643","exam_analysis_by_attempts":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0628\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a","attempts":"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a","of":"\\u0644\\u0640\\u0640\\u0640","mins":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u062f\\u0646\\u064a","exam_attempts_and_score":"\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0648\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629","quiz_attempts":"\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","result":"\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629","view_answers":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a","generate_certificate":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0634\\u0647\\u0627\\u062f\\u0629","answers":"\\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a","analysis":"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644","time_limit":"\\u062d\\u062f\\u0648\\u062f \\u0627\\u0644\\u0648\\u0642\\u062a","time_taken":"\\u062a\\u0645 \\u0627\\u062e\\u0630 \\u0627\\u0644\\u0648\\u0642\\u062a","previous":"\\u0627\\u0644\\u0633\\u0627\\u0628\\u0642","next":"\\u0627\\u0644\\u062a\\u0627\\u0644\\u064a","timetable_for":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640","sun":"\\u0627\\u0644\\u0623\\u062d\\u062f","mon":"\\u0627\\u0644\\u0627\\u062b\\u0646\\u064a\\u0646","tue":"\\u0627\\u0644\\u062b\\u0644\\u0627\\u062b\\u0627\\u0621","wed":"\\u0627\\u0644\\u0627\\u0631\\u0628\\u0639\\u0627\\u0621","thu":"\\u0627\\u0644\\u062e\\u0645\\u064a\\u0633","fri":"\\u0627\\u0644\\u062c\\u0645\\u0639\\u0629","sat":"\\u0627\\u0644\\u0633\\u0628\\u062a","timetable_for_":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0640\\u0640","leisure":"\\u0627\\u0644\\u0631\\u0627\\u062d\\u0629","lab":"\\u0627\\u0644\\u0645\\u062e\\u062a\\u0628\\u0631","completed_topics_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0645\\u0644\\u0629","no_list_available":"\\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0627\\u062d\\u0629","select_other_class":"\\u0627\\u062e\\u062a\\u0631 \\u0641\\u0635\\u0644 \\u0627\\u062e\\u0631","please_select_the_details":"\\u0631\\u062c\\u0627\\u0621\\u0627 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644","preferred_subjects":"\\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u0641\\u0636\\u0644\\u0629","elective":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","summary":"\\u0645\\u0644\\u062e\\u0635","labs":"\\u0627\\u0644\\u0645\\u062e\\u062a\\u0628\\u0631\\u0627\\u062a","electives":"\\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","subjects_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","success___!":"\\u062a\\u0645\\u062a \\u0628\\u0646\\u062c\\u0627\\u062d ..!","records_updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d","students_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","view_students":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","overall_subject_wise_analysis":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","marks_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","no_data_available_with_the_selection":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a","leasure":"\\u0627\\u0644\\u0631\\u0627\\u062d\\u0629","break":"\\u0627\\u0633\\u062a\\u0631\\u0627\\u062d\\u0629","printed_on:_":"\\u0637\\u0628\\u0639 \\u0639\\u0644\\u0649:","attendance_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","view_summary":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0644\\u062e\\u0635","attendance_summary":"\\u0645\\u0644\\u062e\\u0635 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","total_classes":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","its_okay":"\\u0644\\u0627 \\u0628\\u0623\\u0633","topics_completed":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0636\\u064a\\u0639","transfer_list":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","semister":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","current_year":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","current_semister":"\\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","admin":"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641","ooops__":"\\u062e\\u0637\\u0623 \\u0640\\u0640\\u0640\\u0640\\u0640!","please_select_any_users":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0649 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","emergency_no":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0648\\u0627\\u0631\\u0626","no_users_available":"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646 ","from(admission_year-course-year-semester)":"\\u0645\\u0646 (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 - \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a - \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a)","from_(_admission_year-course-year-semester)":"\\u0645\\u0646 (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 - \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a - \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a)","from_(_admission_year-_course-_year-_semester)":"\\u0645\\u0646 (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 - \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a - \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a)","to_(_admission_year-_course-_year-_semester)":"\\u0627\\u0644\\u064a (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 - \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a - \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a)","transfers_list":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","from_(_admission_year-_course-_year-_semester)<\\/i>_":"\\u0645\\u0646 (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 - \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a - \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 - \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a)","from_(_admission_year-_course)":"\\u0645\\u0646 (\\u062f\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0633\\u0646\\u0648\\u064a\\u0629)","to_(_admission_year-_course)":"\\u0625\\u0644\\u0649 (\\u062f\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0633\\u0646\\u0648\\u064a\\u0629)","from_(_admission_year)":"\\u0645\\u0646 (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644)","to_(_admission_year)":"\\u0627\\u0644\\u064a (\\u0633\\u0646\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644)","modules_helper":"\\u0645\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0648\\u062d\\u062f\\u0629","help_link_text":"\\u0646\\u0635 \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629","status":"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629","add_helper":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0633\\u0627\\u0639\\u062f","help_me":"\\u0633\\u0627\\u0639\\u062f\\u0646\\u064a","is_enabled":"\\u0645\\u062a\\u0627\\u062d\\u061f","keyboard":"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062a\\u064a\\u062d","backdrop":"\\u062e\\u0644\\u0641\\u064a\\u0629","steps":"\\u0627\\u0644\\u062e\\u0637\\u0648\\u0627\\u062a","element_id":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631","placement":"\\u062a\\u062d\\u062f\\u064a\\u062f \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a","sort_order":"\\u0627\\u0645\\u0631 \\u0627\\u0644\\u062a\\u0631\\u062a\\u064a\\u0628","add_to_list":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629","element":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631","student_promotions":"\\u062a\\u0631\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","cancel":"\\u0627\\u0644\\u063a\\u0627\\u0621","confirm":"\\u062a\\u0623\\u0643\\u064a\\u062f","is_completed":"\\u0627\\u0646\\u062a\\u0647\\u064a\\u061f","transfer_to_course":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0641\\u0635\\u0644","transfer_to_year":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","transfer_to_semister":"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","promoted":"\\u062a\\u0631\\u0642\\u064a\\u0647","detained":"\\u0627\\u064a\\u0642\\u0627\\u0641","course_completed":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0643\\u062a\\u0645\\u0644","transfer":"\\u0627\\u0644\\u0646\\u0642\\u0644","create_category":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","enter_category_name":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","record_added_successfully_with_password_":"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d \\u0645\\u0639 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","%0D%0Acannot_send_email_to_user,_please_check_your_server_settings":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u064a\\u0645\\u064a\\u0644 \\u0644\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 , \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u0641\\u062d\\u0635 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0633\\u064a\\u0631\\u0641\\u0631","timings_set":"\\u0636\\u0628\\u0637 \\u0627\\u0648\\u0642\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0635","create_timetable":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","timing_sets":"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0635","timetable_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","prepare_timetable":"\\u0627\\u0639\\u062f\\u0627\\u062f \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","day":"\\u0627\\u0644\\u064a\\u0648\\u0645","remove":"\\u062d\\u0630\\u0641","print_timetable":"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","enter_notes":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a","this_will_be_displayed_bottom_of_the_timetable":"\\u0633\\u064a\\u0638\\u0647\\u0631 \\u0630\\u0644\\u0643 \\u0627\\u0633\\u0641\\u0644 \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","schedule_table":"\\u0627\\u0644\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u0632\\u0645\\u0646\\u064a","attendance_report":"\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631","subjects_reports":"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","view_analysis":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644","view_report":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u062a\\u0642\\u0631\\u064a\\u0631","my_bookmarks":"\\u0645\\u0641\\u0636\\u0644\\u0627\\u062a\\u064a","scheduled_exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u062f\\u0648\\u0644\\u0629","by_subjcet":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","history":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0627\\u0631\\u064a\\u062e\\u064a\\u0629","lms":"\\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","quizzes_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","student_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","payments":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","viewww":"\\u0639\\u0631\\u0636","all_exams":"\\u0643\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","dueration":"\\u0627\\u0644\\u0645\\u062f\\u0629","take_exam":"\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","select_template":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","please_read_the_instructions_carefully":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u0642\\u0631\\u0627 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629","exam_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","please_accept_terms_and_conditions":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0627\\u062d\\u0643\\u0627\\u0645","start_exam":"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","enable_back_side":"\\u062a\\u0645\\u0643\\u064a\\u0646 \\u0627\\u0644\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","days":"\\u0627\\u0644\\u0627\\u064a\\u0627\\u0645","top_logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0627\\u062c\\u062f \\u0628\\u0627\\u0644\\u0627\\u0639\\u0644\\u064a","account_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628","quiz_and_exam_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0648\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","lms_categories":"\\u0627\\u0642\\u0633\\u0627\\u0645 \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","academic_years":"\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","courses_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_courses":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","academic_courses":"\\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","course_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","record_deleted_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641 \\u0628\\u0646\\u062c\\u0627\\u062d","page_not_found":"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\\u0629","ooops___!":"\\u0639\\u0641\\u0648\\u0627...!","ooops__!":"\\u0639\\u0641\\u0648\\u0627...!","you_have_no_permission_to_access":"\\u0644\\u064a\\u0633 \\u0644\\u062f\\u064a\\u0643 \\u0635\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644","no_topics_availble":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","topics":"\\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a","import_topics":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a","add_course":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","subject_master":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","subject_topics":"\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_subject_to_course":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0641\\u0635\\u0644","allocate_staff_to_course":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0641\\u0635\\u0644","topics_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a","import":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f","parent":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0627\\u0639\\u0644\\u064a","topic_(id)":"Topic (id)","front_first_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\\u0688","allocate_staff_to_subject":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_staff_to_courses":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0644\\u0644\\u0641\\u0635\\u0648\\u0644","add_or_edit_course_subjects":"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0648 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0648\\u0627\\u062f \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","allocate_staff":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","subject_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","subject_code":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","pass_marks":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d","is_lab":"\\u0647\\u0644 \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0645\\u062e\\u062a\\u0628\\u0631\\u061f","is_elective":"\\u0625\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u061f","view_topics":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a","import_users":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","front_second_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_third_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fourth_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fifth_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_sixth_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_seventh_item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_total_fields":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u062d\\u0642\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a\\u0629","back_first_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","front_first_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_second_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_third_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fourth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_fifth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_sixth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","front_seventh_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0639 \\u0627\\u0644\\u0627\\u0645\\u0627\\u0645\\u064a","coupon_codes":"\\u0627\\u0643\\u0648\\u0627\\u062f \\u0627\\u0644\\u0642\\u0633\\u0627\\u0626\\u0645","discount":"\\u0627\\u0644\\u062e\\u0635\\u0645","minimum_bill":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","maximum_discount":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u062e\\u0635\\u0645","limit":"\\u0627\\u0644\\u062d\\u062f","back_first_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_second_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_second_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","time_spent_on_correct_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629","time_spent_on_wrong_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629","overall_marks_analysis":"\\u0627\\u0644\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0634\\u0627\\u0645\\u0644 \\u0644\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","time":"\\u0627\\u0644\\u0648\\u0642\\u062a","spent_on_correct":"\\u0645\\u0627 \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d","spent_on_wrong":"\\u0645\\u0627 \\u062a\\u0645 \\u0642\\u0636\\u0627\\u0624\\u0647 \\u0641\\u0649 \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626","spent_time":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u0645\\u0636\\u064a","total_time":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0643\\u0644\\u064a","time_is_shown_in_seconds":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0645\\u0639\\u0631\\u0648\\u0636 \\u0628\\u0627\\u0644\\u062b\\u0648\\u0627\\u0646\\u064a","back_third_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_third_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_fourth_item_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","back_fourth_item_text":"\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a","clear_answer":"\\u0645\\u0633\\u062d \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","bookmarks":"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629","exam_duration":"\\u0645\\u062f\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","hints":"\\u0627\\u0644\\u062a\\u0644\\u0645\\u064a\\u062d\\u0627\\u062a","unbookmark_this_question":"\\u0627\\u0632\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","bookmark_this_question":"\\u0627\\u0636\\u0641 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u0645\\u0631\\u062c\\u0639\\u064a\\u0629 \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","mark_for_review":"\\u0636\\u0639 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629","finish":"\\u0627\\u0646\\u0647\\u0627\\u0621","warning":"\\u062a\\u062d\\u0630\\u064a\\u0631","do_not_press_back\\/refresh_button":"\\u0644\\u0627 \\u062a\\u0636\\u063a\\u0637 \\u0639\\u0644\\u0649 \\u0632\\u0631 \\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0644\\u0644\\u062e\\u0644\\u0641 \\/ \\u0627\\u0648 \\u0632\\u0631 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629","answered":"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","marked":"\\u062a\\u0645\\u062a \\u0648\\u0636\\u0639 \\u0639\\u0644\\u0627\\u0645\\u0629","not_visited":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0632\\u064a\\u0627\\u0631\\u062a\\u0647","consumed_time":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u0644\\u0643","result_for":"\\u0627\\u0644\\u0646\\u062a\\u064a\\u062c\\u0629 \\u0644\\u0640\\u0640","score":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0629","view_key":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a ","allocate_subjects":"\\u062a\\u062e\\u0635\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","no_staff_alotted":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062e\\u0635\\u064a\\u0635 \\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","no_subjects_selected":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","id":"\\u0627\\u0644\\u0631\\u0642\\u0645","course_name":"\\u0627\\u0644\\u0627\\u0633\\u0645","grade_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629","edit_semisters":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","years":"\\u0633\\u0646\\u0629","add_religion":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u062f\\u064a\\u0646","owner":"\\u0627\\u0644\\u0645\\u0627\\u0644\\u0643","total_items":"\\u0627\\u0644\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0645\\u0627\\u0644\\u064a \\u0644\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631","update_lms":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","examseries":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","create_coupon":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u064a\\u0645\\u0629","coupon_code":"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","value":"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629","percent":"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629","discount_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062e\\u0635\\u0645","discount_value":"\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0645","enter_value":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629","enter_minimum_bill":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u062f\\u0646\\u064a \\u0644\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","discount_maximum_amount":"\\u062e\\u0635\\u0645 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u0645\\u0628\\u0644\\u063a","enter_maximum_amount":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u0645\\u0628\\u0644\\u063a","valid_from":"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0645\\u0646","valid_to":"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0627\\u0644\\u0649","usage_limit":"\\u062d\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645","enter_usage_limit_per_user":"\\u0627\\u062f\\u062e\\u0644 \\u062d\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0644\\u0643\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","from_email":"\\u0645\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","from_name":"\\u0645\\u0646 \\u0627\\u0644\\u0627\\u0633\\u0645","export_payments_report":"\\u062a\\u0635\\u062f\\u064a\\u0631 \\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","export_payment_records":"\\u062a\\u0635\\u062f\\u064a\\u0631 \\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","download_excel":"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0645\\u0644\\u0641 \\u0627\\u0644\\u0627\\u0643\\u0633\\u0644","all_records":"\\u0643\\u0644 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a","from_date":"\\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e","to_date":"\\u0627\\u0644\\u0649 \\u062a\\u0627\\u0631\\u064a\\u062e","payment_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0641\\u0639","all":"\\u0627\\u0644\\u0643\\u0644","payment_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639","select_parent":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0627\\u0639\\u0644\\u064a","course_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","course_code":"\\u0627\\u0644\\u0643\\u0648\\u062f","duration_in_years":"\\u0627\\u0644\\u0645\\u062f\\u0629 \\u0628\\u0627\\u0644\\u0633\\u0646\\u0648\\u0627\\u062a","grade_system":"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","is_having_semisters":"\\u0647\\u0644 \\u064a\\u0648\\u062c\\u062f \\u0641\\u0635\\u0648\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","is_having_electives":"\\u0647\\u0644 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a\\u0629","add_subjects_to_course":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0641\\u0635\\u0644","courses_list":"\\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","load":"\\u062a\\u062d\\u0645\\u064a\\u0644","add_subject_to_course":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0644\\u0644\\u0641\\u0635\\u0644","number_of_sessions_needed":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u062c\\u0644\\u0633\\u0627\\u062a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629","template_1_logo":"\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628 \\u0661 ","institute_title":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","create_set":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","academic_operatons":"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","period_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0629","enter_period_name":"\\u0627\\u062f\\u062e\\u0644 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0629","start_time_cannot_be_greater_than_or_equal_to_end_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0648 \\u064a\\u0633\\u0627\\u0648\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629","start_time_must_be_greater_to_previous_end_time":"\\u0648\\u0642\\u062a \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629 \\u064a\\u062c\\u0628 \\u0627\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628 \\u0631\\u0645\\u0646 \\u0648\\u0642\\u062a \\u0627\\u0644\\u0646\\u0647\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642","time_spent_correct_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0642\\u0636\\u064a \\u0641\\u064a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u064a\\u0629","time_spent_wrong_answers":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0642\\u0636\\u064a \\u0641\\u064a \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629","subject_wise_analysis":"\\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629","in":"\\u0641\\u0649","attendance_for":"\\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0644\\u0640\\u0640\\u0640","notes":"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a","create_message":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0631\\u0633\\u0627\\u0644\\u0629","inbox":"\\u0635\\u0646\\u062f\\u0648\\u0642 \\u0627\\u0644\\u0648\\u0627\\u0631\\u062f","compose":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u064a\\u0629","send_message":"\\u0627\\u0631\\u0633\\u0627\\u0644","questions":"\\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629","fill_the_blanks":"\\u0627\\u0645\\u0644\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a\\u0627\\u062a","first_admission_in_the_school":"\\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","date_of_first_admission_in_the_school":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629","first_admission_class_in_the_school_with_name":"\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0645\\u0639 \\u0627\\u0644\\u0627\\u0633\\u0645","completed":"\\u0627\\u0646\\u062a\\u0647\\u062a","internal_marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629","external_marks":"\\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629","please_enter_valid_internal_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062f\\u0627\\u062e\\u0644\\u064a\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 ","please_enter_valid_external_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 ","please_enter_valid_maximum_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0642\\u0635\\u0648\\u064a \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645 ","please_enter_valid_pass_marks":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062f\\u062e\\u0644 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0628\\u0634\\u0643\\u0644 \\u0633\\u0644\\u064a\\u0645","pass_marks_cannot_be_greater_than_maximum_marks":"\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0644\\u0627\\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u0642\\u0635\\u0648\\u064a","add_topic":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0648\\u0636\\u0648\\u0639","topic_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639","category_deleted_successfully":"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0642\\u0633\\u0645 \\u0628\\u0646\\u062c\\u0627\\u062d","add_academic":"\\u0627\\u0636\\u0627\\u0641\\u0629 ","academic_title":"Academic Title","show_in_list":"\\u0627\\u0644\\u0639\\u0631\\u0636 \\u0641\\u0649 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629","payu":"Payu","paypal":"Paypal","messaging":"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644","offline_payment":"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","push_notifications":"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a","certificate":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629","show_foreign_key_constraint":"Show Foreign Key Constraint","facebook_login":"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u062d\\u0633\\u0627\\u0628 \\u0627\\u0644\\u0641\\u064a\\u0633 \\u0628\\u0648\\u0643","google_plus_login":"\\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u062d\\u0633\\u0627\\u0628 \\u062c\\u0648\\u062c\\u0644 \\u0628\\u0644\\u0633","old_password":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u0642\\u062f\\u064a\\u0645\\u0629","the_password_is_too_short":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u062c\\u062f\\u0627","new_password":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629","retype_password":"\\u0627\\u0639\\u062f \\u0627\\u062f\\u062e\\u0627\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","password_and_confirm_password_does_not_match":"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0648\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0637\\u0627\\u0628\\u0642\\u0627\\u0646","posted_on":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u062f\\u062e\\u0627\\u0644 \\u0641\\u0649 ","send_messageeee":"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644","please_select_the_recipients":"\\u0641\\u0636\\u0644\\u0627 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0645\\u0631\\u0633\\u0644 \\u0627\\u0644\\u064a\\u0647\\u0645","import_subjects":"\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","children":"\\u0627\\u0644\\u0627\\u0628\\u0646\\u0627\\u0621","premium":"Premium","subscriptions_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","plan_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062e\\u0637\\u0629","paid_from":"\\u062a\\u0645 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0645\\u0646","datetime":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0648\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e","it_includes":"\\u062a\\u0634\\u0645\\u0644","lms_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","view_more":"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f","items":"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631","learning_management_series":"\\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","buy_now":"\\u0642\\u0645 \\u0628\\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0646","checkout":"\\u0627\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u062f\\u0641\\u0639","item":"\\u0627\\u0644\\u0639\\u0646\\u0635\\u0631","valid_for":"\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0644\\u0640\\u0640\\u0640","enter_coupon_code":"\\u0627\\u062f\\u062e\\u0644  \\u0643\\u0648\\u062f \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","apply":"\\u062a\\u0642\\u062f\\u0645","select_your_child":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0627\\u0628\\u0646","click_here_to_update_payment_details":"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","billing_details":"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629","invalid_coupon":"\\u0642\\u0633\\u064a\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0635\\u0627\\u0644\\u062d\\u0629","hey_you_are_eligible_for_discount":"\\u0645\\u0647\\u0644\\u0627 \\u0623\\u0646\\u062a \\u0645\\u0624\\u0647\\u0644 \\u0644\\u0644\\u062e\\u0635\\u0645","printable__file":"\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629","timetable_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","printed_onnn:_":"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0641\\u0649:","timetable__contents":"\\u0645\\u062d\\u062a\\u0648\\u064a\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","certificates_settings_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a","hai":"\\u0645\\u0647\\u0644\\u0627","students_list_class_vice":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","library_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u064a\\u0629","book_returns_student":"\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","book_returns_staff":"\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","asset_types":"\\u0627\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0633\\u062a\\u0648\\u062f\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628","master_data":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a","publishers":"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\\u0648\\u0646","authors":"\\u0627\\u0644\\u0645\\u0624\\u0644\\u0641\\u0648\\u0646","library_users":"\\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","issue_asset":"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0645\\u0627\\u062f\\u0629 \\u0627\\u0648 \\u0643\\u062a\\u0627\\u0628","maximum_allowed":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0627\\u0644\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0647","issued":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","eligible":"\\u0645\\u0624\\u0647\\u0644","transactions":"\\u0627\\u0644\\u062a\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a","books_taken":"\\u0627\\u0644\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0639\\u0627\\u0631\\u0629","issue_book":"\\u0627\\u0644\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629","general_info":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0627\\u0645\\u0629","contace_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644","assets_on_issue":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629 \\u0644\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","issued_on":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631 \\u0641\\u0649 ","due_date":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0633\\u062a\\u062d\\u0642\\u0627\\u0642","library_issues":"\\u0627\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","asset_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628","please_enter_asset_reference_number":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a \\u0644\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 ","return_on":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0641\\u0649 ","book_returns":"\\u0639\\u0648\\u062f\\u0629 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628","academic_details":"Academic Details","asset_no":"Asset No","asset_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","date-_issue\\/_return":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631 \\/ \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f","return":"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f","department":"\\u0627\\u0644\\u0642\\u0633\\u0645","id_card_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629","offline_payment_form":"\\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0645\\u0646","submit":"\\u0645\\u0648\\u0627\\u0641\\u0642","offline_payment_instructions":"\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u0649","payment_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639","your_request_was_submitted_to_admin":"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0637\\u0644\\u0628\\u0643 \\u0644\\u0644\\u0645\\u0634\\u0631\\u0641","success_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0646\\u0627\\u062c\\u062d\\u0629","user_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","plan":"\\u0627\\u0644\\u062e\\u0637\\u0629","payment_gateway":"\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639","updated_at":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0641\\u0649 ","offline_payment_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","coupon_applied":"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0642\\u0633\\u064a\\u0645\\u0629","after_discount":"\\u0628\\u0639\\u062f \\u0627\\u0644\\u062e\\u0635\\u0645","created_at":"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0641\\u0649 ","comments":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a","approve":"\\u0627\\u0644\\u0627\\u0639\\u062a\\u0645\\u0627\\u062f","reject":"\\u0627\\u0644\\u0631\\u0641\\u0636","close":"\\u0627\\u063a\\u0644\\u0642","record_was_updated_successfully":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u0646\\u062c\\u0627\\u062d","exam_aborted":"\\u062a\\u0645 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","students_completed_list_class_vice":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","students_completed_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","course_completed_student_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644\\u0648\\u0627 \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a ","certificate_generation":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0634\\u0647\\u0627\\u062f\\u0629","certificate_for":"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0644\\u0640\\u0640","improper_sheet_uploaded":"\\u062a\\u0645 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0648\\u0631\\u0642\\u0629 \\u063a\\u064a\\u0631 \\u0644\\u0627\\u0626\\u0642\\u0629","report":"\\u0627\\u0644\\u0625\\u0628\\u0644\\u0627\\u063a","failed":"\\u0631\\u0633\\u0628","address":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","please_select_required_the_details":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629","this_record_is_in_use_in_other_modules":"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u062c\\u0632\\u0621 \\u0627\\u062e\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645","date_of_exam":"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","topic":"\\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639","view_all_users":"\\u0639\\u0631\\u0636 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","available_timesets":"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629","library_masters":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","author":"\\u0627\\u0644\\u0645\\u0624\\u0644\\u0641","publisher":"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631","available":"\\u0645\\u062a\\u0627\\u062d","edition":"\\u0625\\u0635\\u062f\\u0627\\u0631","library_assets":"\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u064a\\u0629","eligible_for_fine":"\\u0645\\u0633\\u062a\\u062d\\u0642 \\u0644\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629","fine_per_day":"\\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a\\u0629","qualification_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0624\\u0647\\u0644","experience":"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629","months":"\\u0627\\u0644\\u0634\\u0647\\u0648\\u0631","create_asset":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","asset_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","is_eligible_for_fine":"\\u0647\\u0644 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\\u061f","is_having_max_fine_limit":"\\u0647\\u0644 \\u0648\\u0635\\u0644 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629","maximum_fine_amount":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629","maximum_issuable":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631","maximum_days_to_return":"\\u0627\\u0642\\u0635\\u064a \\u0639\\u062f\\u062f \\u0627\\u064a\\u0627\\u0645 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639","maximum_advanced_reservations":"\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0644\\u0644\\u062d\\u062c\\u0648\\u0632\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645\\u0629","edit_asset":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639","issuable":"\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0635\\u062f\\u0627\\u0631","days_to_return":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0644\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639","create_master_asset":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0631\\u0626\\u064a\\u0633\\u064a","asset_belongs_to_subject":"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0627\\u0644\\u062a\\u0627\\u0628\\u0639 \\u0644\\u0645\\u0627\\u062f\\u0629 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","isbn_number":"\\u0631\\u0642\\u0645 Isbn ","actual_price":"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a","chargible_price_if_lost":"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0630\\u0627 \\u062a\\u0645 \\u0636\\u064a\\u0627\\u0639\\u0647","create_authors":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0624\\u0644\\u0641","author_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0641","create_publisher":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0646\\u0627\\u0634\\u0631","assets_publishers":"\\u0627\\u0644\\u0646\\u0627\\u0634\\u0631\\u0648\\u0646","publisher_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631","librarian":"\\u0645\\u0633\\u0624\\u0644 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","back":"\\u0627\\u0644\\u062e\\u0644\\u0641","collections":"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a","masters":"Masters","damaged":"\\u0627\\u0644\\u062a\\u0627\\u0644\\u0641","lost":"\\u0627\\u0644\\u0645\\u0641\\u0642\\u0648\\u062f","generate_collection":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629","series_prefix":"\\u0644\\u0642\\u0628 \\u0627\\u0644\\u0633\\u0644\\u0627\\u0633\\u0644","generate":"\\u0627\\u0646\\u0634\\u0627\\u0621","maximum_issues_student":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0644\\u0647\\u0645","maximum_issues_staff":"\\u0627\\u062c\\u0645\\u0627\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0644\\u0647\\u0645","maximum_days_to_return_student":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","maximum_days_to_return_staff":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u064a\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0642\\u0635\\u064a \\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","library_series_prefix":"\\u0644\\u0642\\u0628 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","library_series_number_length":"\\u0639\\u062f\\u062f \\u0627\\u0631\\u0642\\u0627\\u0645 \\u0633\\u0644\\u0633\\u0629 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","topper_percentage":"\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0645\\u0626\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0623\\u0639\\u0644\\u0649","barcode":"\\u0628\\u0627\\u0631\\u0643\\u0648\\u062f","edit_master_asset":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u062f\\u0639 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a","your_not_assigned_to_any_class":"\\u0627\\u0646\\u062a \\u063a\\u064a\\u0631 \\u0645\\u0636\\u0627\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0649 \\u0641\\u0635\\u0644","edit_author":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0641","course_completed_students_list_class_vice":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u062e\\u0631\\u062c\\u064a\\u0646","edit_academic":"\\u062a\\u0639\\u062f\\u064a\\u0644","edit_course":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644","reference_no_":"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062c\\u0639\\u064a","eligiblity":"\\u0627\\u0644\\u0623\\u062d\\u0642\\u064a\\u0629","issue":"\\u0627\\u0635\\u062f\\u0627\\u0631","asset_issued_successfully":"\\u062a\\u0645 \\u0627\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","on_issue":"\\u062a\\u062d\\u062a \\u0627\\u0644\\u0627\\u0635\\u062f\\u0627\\u0631","edit_subject":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0627\\u062f\\u0629","subjects_listtt":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","edit_topic":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0648\\u0636\\u0648\\u0639","upload_question":"\\u0631\\u0641\\u0639 \\u0633\\u0624\\u0627\\u0644","supported_formats_are":"\\u0627\\u0644\\u0627\\u0645\\u062a\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0647 \\u0647\\u064a","difficulty_level":"\\u0645\\u0633\\u062a\\u0648\\u064a \\u0627\\u0644\\u0635\\u0639\\u0648\\u0628\\u0629","hint":"\\u062a\\u0644\\u0645\\u064a\\u062d","explanation":"\\u0634\\u0631\\u062d","time_to_spend":"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0644\\u0627\\u0632\\u0645","in_seconds":"\\u0628\\u0627\\u0644\\u062b\\u0648\\u0627\\u0646\\u064a","answer_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0629","total_correct_answers":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0635\\u062d\\u064a\\u062d\\u0629","total_blank_answers":"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062c\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u0641\\u0627\\u0631\\u063a\\u0629","left_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u064a\\u0633\\u0631","right_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0627\\u064a\\u0645\\u0646","left_option":"\\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u064a\\u0633\\u0631","add_exam_series":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","series_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629","please_upload_valid_image_type":"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0646\\u0648\\u0639 \\u0635\\u0648\\u0631\\u0629 \\u0635\\u0627\\u0644\\u062d","it_will_be_updated_by_adding_the_exams":"\\u0633\\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0629 \\u0628\\u0645\\u062c\\u0631\\u062f \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","short_description":"\\u0648\\u0635\\u0641 \\u0642\\u0635\\u064a\\u0631","update_series_for":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0633\\u0644\\u0633\\u0644\\u0629","exam_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","saved_exams":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629","add_content":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u062d\\u062a\\u0648\\u064a","content_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a","resource_link":"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631","lms_file":"\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","add_lms_series":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0633\\u0629 \\u0645\\u062d\\u062a\\u0648\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","lms_category":"\\u0642\\u0633\\u0645 \\u0645\\u062d\\u062a\\u0648\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","it_will_be_updated_by_adding_the_lms_items":"\\u0633\\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627 \\u0628\\u0639\\u062f \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","master_setup":"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","master_setup_dashboard":"\\u0644\\u0648\\u062d\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","mastersettings_course_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","edit_course_semister":" \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","edit_semister":" \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u0646\\u0635\\u0641 \\u0633\\u0646\\u0648\\u064a","improper_data_in_the_question":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0633\\u0624\\u0627\\u0644","record_already_exists_with_this_title":"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0628\\u0627\\u0644\\u0641\\u0639\\u0644 \\u0645\\u0639 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","operations_are_disabled_in_demo_version":"\\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0645\\u0639\\u0637\\u0644\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a","no_records_available":"No Records Available","no_categories_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u0642\\u0633\\u0627\\u0645 \\u0645\\u062a\\u0627\\u062d\\u0629","click_here_to_change_your_preferences":"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u062a\\u063a\\u064a\\u064a\\u0631 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a\\u0643","language":"\\u0627\\u0644\\u0644\\u063a\\u0627\\u062a","default_language":"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629","latest_students":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","latest_staff":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","recent_online_payments":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629","recent_offline_payments":"\\u0627\\u062e\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629","students_detained_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646","student_book_return":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","staff_book_return":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","recent_quiz_takers":"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631","library_history":"\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","number":"\\u0627\\u0644\\u0639\\u062f\\u062f","today''s_classes":"\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u064a\\u0648\\u0645","lesson_plan_statistics":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u062e\\u0637\\u0637 \\u0627\\u0644\\u062d\\u0635\\u0635","staff_inactive_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u0645\\u0641\\u0639\\u0644\\u064a\\u0646","update_master_setup":"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","please_update_master_setup_details":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","ok":"\\u062d\\u0633\\u0646\\u0627","students_list_class_wise":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0628\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","course_completed_students":"\\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0627\\u0633\\u062a\\u0643\\u0645\\u0644\\u0648\\u0627 \\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0627\\u0631\\u0633\\u064a","detained_students_list_class_wise":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646 \\u0628\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","improper_selection":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u063a\\u064a\\u0631 \\u0644\\u0627\\u0626\\u0642","url":"Url","all_payments":"\\u0643\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\\u0627\\u062a","update_strings":"\\u062a\\u062d\\u062f\\u064a\\u062b ","disable":"\\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644","enable":"\\u062a\\u0641\\u0639\\u064a\\u0644","set_default":"\\u0648\\u0636\\u0639 \\u0643\\u0625\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a","staff_status":"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","are_you_sure_to_make_user_active":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","are_you_sure_to_make_user_inactive":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645","time_table_settings":"\\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635","no_item_selected":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0649 \\u0639\\u0646\\u0635\\u0631","cannot_remove_this_item_as_it_is_in_use":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0645\\u0633\\u062d \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0644\\u0627\\u0646\\u0647 \\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645","is_having_semesters":"\\u0647\\u0644 \\u0644\\u0647 \\u0641\\u0635\\u0648\\u0644 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629","detained_student_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0648\\u0641\\u064a\\u0646","make_inactive":"\\u0648\\u0642\\u0641 \\u062a\\u0641\\u0639\\u064a\\u0644\\u0647","religion_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0647","ooops":"\\u0639\\u0630\\u0631\\u0627","note:":"\\u0645\\u0644\\u0627\\u062d\\u0638\\u0629:","if_do_not_update_the_student_admission_details,_those_students_are_available_in_all_users_list_":"\\u0625\\u0630\\u0627 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\\u060c \\u0647\\u0624\\u0644\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0641\\u064a \\u062c\\u0645\\u064a\\u0639 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646.","for_all_users_list":"\\u0644\\u0643\\u0644 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","click_here":"\\u0627\\u0646\\u0642\\u0631 \\u0647\\u0646\\u0627","date_time":"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e \\u0648\\u0627\\u0644\\u0648\\u0642\\u062a","today":"\\u0627\\u0644\\u064a\\u0648\\u0645","library_books_details":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0643\\u062a\\u0628","master_asset_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","issue_on":"\\u0645\\u0635\\u062f\\u0631\\u0647 \\u0641\\u0649","password_updated_successfully":"\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","offline_exam_categories":"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629 ","\\u0627\\u0644\\u062d\\u0633\\u0627\\u0628__have_no_topics,_please_add_topics_to_upload_questions":"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a \\u0644\\u0644\\u0645\\u0627\\u062f\\u0629 , \\u0644\\u0637\\u0641\\u0627 \\u0627\\u0636\\u0641 \\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a \\u062d\\u062a\\u064a \\u062a\\u0633\\u062a\\u0637\\u064a\\u0639 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0633\\u0626\\u0644\\u0629","improper_data_submitted":"\\u062a\\u0645 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d\\u0629","cannot_remove_this_subject_as_allocated_to_staff":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0627\\u062f\\u0629 \\u0644\\u0627\\u0646\\u0647\\u0627 \\u0645\\u062e\\u0635\\u0635\\u0629 \\u0644\\u0645\\u0639\\u0644\\u0645","site_title":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","login_page_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644","site_logo":"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631","site_address":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0646","site_city":"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629","site_favicon":"\\u0627\\u064a\\u0642\\u0648\\u0646\\u0647 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0641\\u0649 \\u0634\\u0631\\u064a\\u0637 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0648\\u064a\\u0646","site_state":"\\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0629","site_country":"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629","site_zipcode":"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\\u064a","site_phone":"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","system_timezone":"\\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u062a","background_image":"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0644\\u0641\\u064a\\u0629","default_academic_year_id":"\\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629","default_parent_course_id":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a","current_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","currency_symbol":"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a","default_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a","green_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u0627\\u062e\\u0636\\u0631","red_theme":"\\u0627\\u0644\\u0634\\u0643\\u0644 \\u0627\\u0644\\u0627\\u062d\\u0645\\u0631","cannot_remove_as_staff_is_assigned_to_classes":"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062d \\u0644\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645 \\u0645\\u062e\\u0635\\u0635 \\u0644\\u0641\\u0635\\u0648\\u0644","staff_removed_successfully":"\\u062a\\u0645 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645","please_update_master_setup_details_before_creating_users_":"\\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0642\\u0628\\u0644 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646.","status_changed_successfully":"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0628\\u0646\\u062c\\u0627\\u062d","make_active":"\\u0648\\u0642\\u0641 \\u0627\\u0644\\u062a\\u0641\\u0639\\u064a\\u0644","assets_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a","edit_branch_and_course":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0635\\u0648\\u0644","add_total_blank_columns":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0639\\u0645\\u062f\\u0629 \\u0641\\u0627\\u0631\\u063a\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644","assistant_librarian":"\\u0627\\u062e\\u0635\\u0627\\u0626\\u064a\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u0629","template":"\\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","please_check_your_email_master_settings":"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0631\\u0627\\u062c\\u0639 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","roll_number":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","meta_description":"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639","meta_keywords":"\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0628\\u062d\\u062b","google_analytics":"\\u062a\\u062d\\u0644\\u064a\\u0644\\u0627\\u062a \\u062c\\u0648\\u062c\\u0644","edit_template":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u0644\\u0628","welcome":"\\u0645\\u0631\\u062d\\u0628\\u0627","email_content":"\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","select_course":"\\u0627\\u062e\\u062a\\u0631 \\u0627\\u0644\\u0641\\u0635\\u0644","invalid_details_supplied":"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062e\\u0627\\u0637\\u0626\\u0629","add_series":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0633\\u0644\\u0633\\u0644\\u0629","scheduled_exam_marks":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u062c\\u0627\\u062a","no_series_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0633\\u0644\\u0627\\u0633\\u0644 \\u0645\\u062a\\u0627\\u062d\\u0629","time_table_is_not_created_for_your_class":"\\u062c\\u062f\\u0648\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0646\\u0634\\u0627\\u0624\\u0647 \\u0644\\u0641\\u0635\\u0644\\u0643","timingsets_cannot_be_empty":"\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0641\\u0627\\u0631\\u063a\\u0629","token_mismatch_exception":"\\u0627\\u0644\\u0631\\u0645\\u0632 \\u063a\\u064a\\u0631 \\u0635\\u062d\\u064a\\u062d","offline_payment_information":"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a","\\u0625\\u0645\\u0644\\u0627\\u0621__have_no_topics,_please_add_topics_to_upload_questions":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a","edit_question":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0633\\u0624\\u0627\\u0644","are_you_sure_to_make_clear_image":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629_\\u063a\\u064a\\u0631_\\u0645\\u0648\\u062c\\u0648\\u062f\\u0629":"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\\u0629","clear_image":"\\u0645\\u0633\\u062d \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629","audio":"\\u0635\\u0648\\u062a\\u064a","gateway":"\\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0647","pending_list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631","oops__!":"\\u0639\\u0641\\u0648\\u0627...!","currency":"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0629","account_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628","mail_driver":"Mail Driver","mail_host":"Mail Host","mail_port":"Mail Port","mail_username":"Mail Username","mail_password":"Mail Password","mail_encryption":"Mail Encryption","payu_merchant_key":"Payu Merchant Key","payu_salt":"Payu Salt","payu_working_key":"Payu Working Key","payu_testmode":"Payu Testmode","hey_\\u0631\\u064a\\u0627\\u0646_\\u0639\\u0628\\u062f\\u0627\\u0644\\u0644\\u0647_\\u0639\\u0644\\u064a_\\u0627\\u0644_\\u062c\\u0631\\u0641":"\\u0627\\u0647\\u0644\\u0627","you_already_purchased_this_item":"\\u0627\\u0646\\u062a \\u0641\\u0639\\u0644\\u064a\\u0627 \\u0642\\u0645\\u062a \\u0628\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621","click_here_to_list_subjects":"\\u0627\\u0636\\u063a\\u0637 \\u0647\\u0646\\u0627 \\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f","exam_already_submitted":"\\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631 \\u062a\\u0645 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0645\\u0646\\u0647","quiz_name":"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u062e\\u062a\\u0628\\u0627\\u0631","create_template":"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0642\\u0627\\u0644\\u0628","file_type":"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0641","saved_items":"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0647","sorry_no_messages_available":"\\u0639\\u0641\\u0648\\u0627 \\u0644\\u0627\\u062a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0626\\u0644","undefined_user":"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641","add_notification":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0634\\u0639\\u0627\\u0631","edit_language":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0644\\u063a\\u0629","language_title":"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0644\\u063a\\u0629","language_code":"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0644\\u063a\\u0629","supported_language_codes":"\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0644\\u063a\\u0629","is_rtl":"\\u0647\\u0644 \\u0627\\u062a\\u062c\\u0627\\u0647 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u064a\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u064a\\u0633\\u0627\\u0631 \\u061f","_empty_":"\\u0641\\u0627\\u0631\\u063a","student_book_returns":"\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0647 \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","are_you_sure_to_return_the_book":"\\u0647\\u0644 \\u0627\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0628","password_reset_link_sent_to_email":"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0627\\u0628\\u0637 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0627\\u064a\\u0645\\u064a\\u0644\\u0643","reset_password":"\\u0627\\u0639\\u0627\\u062f\\u0629 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","email_address":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","confirm_password":"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 ","password_changed_successfully":"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d","latest_quizzes":"\\u0627\\u062e\\u0631 \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a","latest":"\\u0627\\u0644\\u0627\\u062e\\u064a\\u0631","children_analysis":"\\u0627\\u062d\\u0635\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0627\\u0628\\u0646\\u0627\\u0621","no_quizzes_available":"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629","to_change_your_settings":"\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\\u0643","staff_book_returns":"\\u0627\\u0631\\u062c\\u0627\\u0639 \\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646","chargeable_price_if_lost":"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u062d\\u0627\\u0644\\u0629 \\u0636\\u064a\\u0627\\u0639 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628","give_feedback":"\\u0634\\u0627\\u0631\\u0643\\u0646\\u0627 \\u0628\\u0631\\u0623\\u064a\\u0643","feedback_form":"\\u0627\\u0633\\u062a\\u0645\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","send":"\\u0627\\u0631\\u0633\\u0627\\u0644","edit_religion":"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062f\\u064a\\u0627\\u0646\\u0629","course_parent_id":"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629","add_language":"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0644\\u063a\\u0629","LMS":"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","feed_backs":"\\u0627\\u0644\\u0622\\u0631\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d\\u0627\\u062a","educate":"\\u062a\\u0639\\u0644\\u064a\\u0645","enlight":"ENLIGHT","enforce":"\\u0642\\u064a\\u0627\\u062f\\u0629","login":"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644","forgot_password":"\\u0647\\u0644 \\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631","enlightenment":"\\u062a\\u0646\\u0648\\u064a\\u0631","\\u0644\\u0648\\u062d\\u0629_\\u0627\\u0644\\u0642\\u064a\\u0627\\u062f\\u0629":"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0642\\u064a\\u0627\\u062f\\u0629","please_select_academic_year_and_course":"\\u064a\\u0631\\u062c\\u0649 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062f\\u0648\\u0631\\u0629","lms_contents":"\\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u064a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a","home_page":"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629","bonafide_transfer_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","students_certificates":"\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628","student_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","students_certificate":"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","logged_out_successfully":"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0628\\u0646\\u062c\\u0627\\u062d","\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0646\\u0627\\u062c\\u062d\\u0629":"\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0646\\u0627\\u062c\\u062d\\u0629","logged out successfully":"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0628\\u0646\\u062c\\u0627\\u062d","\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0628\\u0646\\u062c\\u0627\\u062d":"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0628\\u0646\\u062c\\u0627\\u062d","if do not update the student admission details, those students are available in all users list.":"\\u0625\\u0630\\u0627 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628\\u060c \\u0647\\u0624\\u0644\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0641\\u064a \\u062c\\u0645\\u064a\\u0639 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646.","for all users list":"\\u0644\\u0643\\u0644 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064a\\u0646","click here":"\\u0627\\u0646\\u0642\\u0631 \\u0647\\u0646\\u0627","once_saved_the_admission_details_cannot_be_edited\\n":"\\u0645\\u0631\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u062a\\u062d\\u0631\\u064a\\u0631\\u0647\\u0627","printed_on: ":"\\u0637\\u0628\\u0639 \\u0639\\u0644\\u0649:","from (_admission_year-_course)":"\\u0645\\u0646 (\\u062f\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0633\\u0646\\u0648\\u064a\\u0629)","to (_admission_year-_course)":"\\u0625\\u0644\\u0649 (\\u062f\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0633\\u0646\\u0648\\u064a\\u0629)","experience (years)":"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 (\\u0633\\u0646\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629)","experience (months)":"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 (\\u0634\\u0647\\u0631 \\u0648\\u0627\\u062d\\u062f)","course list":"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062f\\u0631\\u064a\\u0628\\u064a\\u0629","topic (id)":"\\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639 (\\u0625\\u062f)","email content":"\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","bonafide \\/_transfer_certificate":"\\u0628\\u0648\\u0646\\u0627\\u0641\\u064a\\u062f \\/ \\u0634\\u0647\\u0627\\u062f\\u0629 \\u0646\\u0642\\u0644","ooops..!":"\\u062e\\u0637\\u0623 ..!","no records available":"\\u0644\\u0627 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629"}', '2017-08-12 00:27:26', '2017-12-28 09:39:48');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessionplans`
--

INSERT INTO `lessionplans` (`id`, `course_subject_id`, `topic_id`, `is_completed`, `completed_on`, `created_at`, `updated_at`) VALUES
(1, 31, 8, 1, '2017-12-13', '2017-12-13 06:30:04', '2017-12-13 06:30:04'),
(2, 31, 9, 0, '2017-12-13', '2017-12-13 06:30:06', '2017-12-13 07:17:30'),
(3, 40, 10, 1, '2017-12-20', '2017-12-20 07:47:26', '2017-12-20 07:47:26'),
(4, 40, 11, 1, '2017-12-20', '2017-12-20 07:47:27', '2017-12-20 07:47:27'),
(5, 32, 10, 1, '2017-12-20', '2017-12-20 07:47:33', '2017-12-20 07:47:33'),
(6, 58, 8, 1, '2017-12-20', '2017-12-20 07:47:40', '2017-12-20 07:47:40'),
(7, 118, 10, 1, '2017-12-20', '2017-12-20 07:48:15', '2017-12-20 07:48:15'),
(8, 118, 11, 1, '2017-12-20', '2017-12-20 07:48:16', '2017-12-20 07:48:16');

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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `libraryassettypes`
--

INSERT INTO `libraryassettypes` (`id`, `asset_type`, `slug`, `is_eligible_for_fine`, `fine_per_day`, `is_having_max_fine_limit`, `maximum_fine_amount`, `maximum_issuable`, `maximum_days_to_return`, `maximum_advanced_reservations`, `description`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CD', 'cd', 0, '0.00', 0, '0.00', 1, 1, 0, '', 1790, '2017-12-13 23:20:24', '2017-12-13 23:20:24');

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
  `return_on` datetime DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lmscategories`
--

CREATE TABLE IF NOT EXISTS `lmscategories` (
  `id` bigint(20) unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmscategories`
--

INSERT INTO `lmscategories` (`id`, `category`, `slug`, `image`, `description`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'اللغة العربية', 'allgh-alaarby-05c5e19a54b34ebba40a40ac4683b57f78980953', '', '', 1790, '2017-10-19 07:47:57', '2017-10-19 07:47:57'),
(2, 'معلومات عامة', 'maalomat-aaam-e9829f0308404a12e8498fd4d6289e84218b9b96', '', '', 1790, '2017-10-19 07:48:21', '2017-10-19 07:48:21'),
(3, 'دروس دينية', 'dros-dyny-574412f5ca935c631ee22e9b0db1445d1e4ba4a3', '', '', 1790, '2017-10-19 07:48:32', '2017-10-19 07:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `lmscontents`
--

CREATE TABLE IF NOT EXISTS `lmscontents` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `content_type` enum('file','video','audio','url','video_url','audio_url','iframe') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'file',
  `is_url` tinyint(1) NOT NULL DEFAULT '0',
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmscontents`
--

INSERT INTO `lmscontents` (`id`, `title`, `slug`, `code`, `image`, `subject_id`, `content_type`, `is_url`, `file_path`, `description`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'تعليم اللغة العربية للأطفال - الأبجدية', 'taalym-allgh-alaarby-llatfal-alabjdy-41ea27a38943558bf6fced563de2c233fb2ac018', '101', '', 1, 'video_url', 0, 'https://www.youtube.com/watch?v=TwzCGAX3v34', '<p>تعليم اللغة العربية للأطفال - الأبجدية</p>\r\n', 1790, '2017-10-19 13:45:27', '2017-10-19 13:45:27');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmsseries`
--

INSERT INTO `lmsseries` (`id`, `title`, `slug`, `is_paid`, `cost`, `validity`, `total_items`, `lms_category_id`, `image`, `short_description`, `description`, `start_date`, `end_date`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'اللغة العربية أولى ابتدائي', 'allgh-alaarby-aol-abtdaey', 1, '30.00', 30, 1, 1, '', '', '', '2017-10-19', '2017-11-19', 1790, '2017-10-19 13:41:54', '2017-10-19 13:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `lmsseries_data`
--

CREATE TABLE IF NOT EXISTS `lmsseries_data` (
  `id` bigint(20) unsigned NOT NULL,
  `lmsseries_id` bigint(20) unsigned NOT NULL,
  `lmscontent_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lmsseries_data`
--

INSERT INTO `lmsseries_data` (`id`, `lmsseries_id`, `lmscontent_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1795, 'رسالة للاختبار', '2017-08-15 05:47:18', '2017-08-15 05:47:18'),
(2, 1, 1790, 'شكرا لك \r\nمنتصر', '2017-08-15 05:48:34', '2017-08-15 05:48:34');

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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_participants`
--

INSERT INTO `messenger_participants` (`id`, `thread_id`, `user_id`, `last_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1795, '2017-08-15 05:47:22', '2017-08-15 05:47:18', '2017-08-15 05:47:22', NULL),
(2, 1, 1790, '2017-12-25 09:37:25', '2017-08-15 05:47:18', '2017-12-25 09:37:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_threads`
--

CREATE TABLE IF NOT EXISTS `messenger_threads` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messenger_threads`
--

INSERT INTO `messenger_threads` (`id`, `subject`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'رسالة جديدة', '2017-08-15 05:47:18', '2017-08-15 05:48:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_03_064954_create_categories_table', 1),
('2016_06_03_065219_create_groups_table', 1),
('2016_06_03_065542_create_religions_table', 1),
('2016_06_03_124331_entrust_setup_tables', 1),
('2016_06_04_103906_create_staff_table', 1),
('2016_06_04_120754_create_departments_table', 1),
('2016_06_08_051533_create_subjects_table', 2),
('2016_06_08_055114_create_topics_table', 3),
('2016_06_08_060004_create_grades_table', 4),
('2016_06_08_061136_create_courses_table', 5),
('2016_06_08_061850_create_semisters_table', 5),
('2016_06_08_062918_create_academics_table', 6),
('2016_06_08_063211_create_academic_courses_table', 7),
('2016_06_08_084952_create_course_subject_table', 8),
('2016_06_08_105532_create_students_table', 9),
('2016_06_11_063359_create_feecategories_table', 10),
('2016_06_11_084226_create_feecategories_academiccours_table', 11),
('2016_06_11_133218_create_feeparticulars_table', 12),
('2016_06_13_053203_create_feeschedules_table', 13),
('2016_06_13_054213_create_feeschedules_academiccourses_table', 13),
('2016_06_15_173616_create_coursesemisters_table', 14),
('2016_06_21_071054_create_fines_table', 15),
('2016_06_21_081251_create_feediscounts_table', 16),
('2016_06_23_054631_create_questionbank_table', 17),
('2016_06_24_164447_create_libraryassettypes_table', 18),
('2016_06_25_010303_create_librarymasters_table', 19),
('2016_06_25_025855_create_authors_table', 20),
('2016_06_25_025920_create_publishers_table', 20),
('2016_06_25_142623_create_libraryassetinstances_table', 21),
('2016_06_28_052506_create_quizcategories_table', 22),
('2016_06_28_071010_create_quizzes_table', 23),
('2016_06_28_100819_create_questionbank_quizzes_table', 24),
('2016_07_02_010553_create_libraryissues_table', 24),
('2016_07_06_014807_create_lmscategories_table', 25),
('2016_07_06_033653_create_lmscontents_table', 26),
('2016_07_08_025939_create_subscriptions_table', 27),
('2014_10_28_175635_create_threads_table', 28),
('2014_10_28_175710_create_messages_table', 28),
('2014_10_28_180224_create_participants_table', 28),
('2014_11_03_154831_add_soft_deletes_to_participants_table', 28),
('2014_11_10_083449_add_nullable_to_last_read_in_participants_table', 28),
('2014_11_20_131739_alter_last_read_in_participants_table', 28),
('2014_12_04_124531_add_softdeletes_to_threads_table', 28),
('2016_07_18_091544_create_quizresults_table', 29),
('2016_07_19_102858_create_emailtemplates_table', 30),
('2016_07_20_042956_create_activity_log_table', 31),
('2016_07_27_091354_create_studentpromotions_table', 32),
('2016_07_27_120013_create_studentattendance_table', 33),
('2016_08_02_073034_create_packages_table', 34),
('2016_08_29_043256_create_settings_table', 35),
('2016_09_02_095405_create_instructions_table', 36),
('2016_09_05_091459_create_bookmarks_table', 37),
('2016_09_05_094520_create_examseries_table', 38),
('2016_09_07_105933_create_examseries_data_table', 39),
('2016_09_08_101822_create_payments_table', 40),
('2016_09_13_104746_create_couponcodes_table', 41),
('2016_09_16_160343_create_lmsseries_table', 42),
('2016_09_17_052834_create_notifications_table', 43),
('2016_09_21_105036_create_examtoppers_table', 44),
('2016_09_26_154438_create_feedbacks_table', 45),
('2016_10_13_120753_create_certifacates_table', 46),
('2016_11_08_154208_create_academicholidays_table', 47),
('2016_11_11_152540_create_subjectpreferences_table', 48),
('2016_11_11_170621_create_staffsubjectpreferences_table', 48),
('2016_11_18_102414_create_lessionplans_table', 49),
('2016_11_21_150439_create_quizapplicability_table', 50),
('2016_11_28_155556_create_certificateissues_table', 51),
('2016_11_30_150454_create_timingset_table', 52),
('2016_12_02_053525_create_timingsetdetails_table', 53),
('2016_12_02_144453_create_timingsetmap_table', 54),
('2016_12_05_181425_create_timetable_table', 55),
('2017_01_02_101856_create_modulehelper_table', 56),
('2017_01_04_181707_create_quizofflinecategories_table', 57);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modulehelper`
--

INSERT INTO `modulehelper` (`id`, `title`, `slug`, `help_link_text`, `is_enabled`, `settings`, `steps`, `created_at`, `updated_at`) VALUES
(1, 'Add Academic', 'add-academic', 'Help', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483355160447","element":"#academic_year_title","title":"Year Title","content":"Academic year title","placement":"top","sort_order":"1"},{"id":"1483358089212","element":"#dp1","title":"Select Start Date","content":"Select academic year start date","placement":"top","sort_order":"2"},{"id":"1483358142612","element":"#dp2","title":"Select End Date","content":"Select academic year end date","placement":"top","sort_order":"3"},{"id":"1484648854654","element":".helper_step1","title":"Show In List","content":"Choose To The Year Should Display In,  Academic Year Selection List.","placement":"top","sort_order":"4"},{"id":"1484644713266","element":".helper_step2","title":"List","content":"Click To See The Academic Years","placement":"top","sort_order":"5"}]', '2017-01-02 06:39:45', '2017-01-17 10:28:55'),
(2, 'Users List', 'users-list', 'Help Me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483363525771","element":".helper_step1","title":"Add User","content":"Click to add user","placement":"top","sort_order":"1"},{"id":"1483363635433","element":"#helper_step2","title":"View Profile","content":"Click on user name to view profile","placement":"top","sort_order":"2"},{"id":"1483420107566","element":"#helper_step3","title":"Do More","content":"Click below to do more operations","placement":"top","sort_order":"3"}]', '2017-01-02 13:15:47', '2017-01-03 05:29:03'),
(3, 'Create User', 'create-user', 'Help Me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483421733646","element":"#name","title":"Name","content":"Enter Name","placement":"right","sort_order":"1"},{"id":"1483421780644","element":"#username","title":"Username","content":"Enter Username","placement":"right","sort_order":"2"},{"id":"1483421804900","element":"#email","title":"Email","content":"Enter Email","placement":"right","sort_order":"3"},{"id":"1483421908275","element":"#role_id","title":"Role","content":"Select the user role","placement":"right","sort_order":"4"},{"id":"1483423430397","element":"#phone","title":"phone","content":"enter phone number","placement":"right","sort_order":"5"},{"id":"1483423500363","element":"#address","title":"address","content":"enter user address","placement":"right","sort_order":"6"},{"id":"1483423542327","element":"#image_input","title":"image","content":"upload the user image","placement":"right","sort_order":"7"},{"id":"1483423755786","element":".helper_step1","title":"all users list","content":"to see all users","placement":"right","sort_order":"8"}]', '2017-01-03 05:34:43', '2017-01-03 06:09:16'),
(4, 'Allocate Certificate', 'allocate-certificate', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483761469964","element":"#certificate_type","title":"Certificate Type","content":"Select the certificate type","placement":"top","sort_order":"1"},{"id":"1483761895748","element":"#enter-details","title":"Search ","content":"Search Student","placement":"top","sort_order":"2"}]', '2017-01-07 03:56:50', '2017-01-17 05:51:54'),
(5, 'Quiz Category List', 'quiz-category -list', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483762708819","element":".helper_step1","title":"Create","content":"click to add a category","placement":"top","sort_order":"1"},{"id":"1483762822734","element":"#helper_step2","title":"Do More","content":"Click to do more operations","placement":"top","sort_order":"2"}]', '2017-01-07 04:15:29', '2017-01-07 04:23:52'),
(6, 'Create Category', 'create-quiz-category', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483763233670","element":"#category","title":"Name","content":"Enter Category Name","placement":"right","sort_order":"1"},{"id":"1483763284879","element":"#image_input","title":"Image","content":"Select the image","placement":"top","sort_order":"2"},{"id":"1483763330904","element":"#description","title":"Description","content":"Enter Description","placement":"top","sort_order":"3"},{"id":"1483763412227","element":".helper_step1","title":"List","content":"See tha all categories","placement":"top","sort_order":"4"}]', '2017-01-07 04:25:22', '2017-01-07 04:30:13'),
(7, 'Offline Exams List', 'offlineexams-list', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1483790037912","element":".helper_step1","title":"Excel","content":"Import excel sheet","placement":"top","sort_order":"1"},{"id":"1483790246722","element":"#helper_step2","title":"Particulars","content":"Click to select exam details","placement":"top","sort_order":"2"},{"id":"1483790297053","element":"#helper_step3","title":"Do More","content":"Click to do more operations","placement":"top","sort_order":"3"}]', '2017-01-07 11:53:18', '2017-01-07 11:58:17'),
(8, 'Academic Year', 'academic-year', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484644222708","element":".helper_step1","title":"Create","content":"Add Academic Year","placement":"top","sort_order":"1"},{"id":"1484644395417","element":"#helper_step2","title":"View Branches","content":"Click on year to view the branches","placement":"top","sort_order":"2"},{"id":"1484644436772","element":"#helper_step3","title":"Do More","content":"Click to do more operations","placement":"top","sort_order":"3"}]', '2017-01-17 09:06:04', '2017-01-17 09:13:58'),
(9, 'Courses List', 'courses-list', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484645288983","element":".helper_step1","title":"Add Course","content":"Click To Add Course","placement":"top","sort_order":"1"},{"id":"1484645326429","element":"#helper_step2","title":"Do More","content":"Click To Do More Operations","placement":"top","sort_order":"2"}]', '2017-01-17 09:25:53', '2017-01-17 09:30:09'),
(10, 'Add Course', 'create-course', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484645608823","element":".helper_step1","title":"View Courses","content":"Click to View Courses.","placement":"top","sort_order":"1"},{"id":"1484645817343","element":"#parent_id","title":"Select Parent","content":"Click To Select Parent Course. If Parent Course Is Not Avilale Select Option -Parent.","placement":"top","sort_order":"2"},{"id":"1484646049560","element":"#course_title","title":"Course Name","content":"Click To Enter Course Name.","placement":"top","sort_order":"3"},{"id":"1484646100461","element":"#course_code","title":"Course Code.","content":"Click To Enter Course Code.","placement":"top","sort_order":"4"},{"id":"1484646231017","element":"#course_duration","title":"Course Dueration","content":"Click To Select Course Dueration","placement":"top","sort_order":"5"},{"id":"1484646285379","element":"#grade_system","title":"Grade System","content":"Click To Select Grade System","placement":"top","sort_order":"6"},{"id":"1484646395749","element":".helper_step2","title":"Choose","content":"Choose To Course Having Semister or Not","placement":"top","sort_order":"7"},{"id":"1484646608236","element":".helper_step3","title":"Choose Electives","content":"Choose The Course Having Electives Or Not","placement":"top","sort_order":"8"},{"id":"1484646662771","element":".helper_step4","title":"Description","content":"Click Enter Some Description About Course","placement":"top","sort_order":"9"}]', '2017-01-17 09:31:38', '2017-01-17 09:51:49'),
(11, 'Allocate Course To  Academic Year', 'allocate-course-to-academics', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484647503151","element":".helper_step1","title":"Academic Years","content":"Click To View The Academic Years","placement":"top","sort_order":"1"},{"id":"1484647552794","element":".helper_step2","title":"Allocate Course","content":"Drag The Courses From Course List ,To Academic Year","placement":"top","sort_order":"2"}]', '2017-01-17 09:59:04', '2017-01-17 10:22:51'),
(12, 'Subjects List', 'subjects-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484649954620","element":".helper_step2","title":"Create Subject","content":"Click To Create A Subject","placement":"left","sort_order":"2"},{"id":"1484650003857","element":".helper_step1","title":"Import","content":"Click Import Subjects From Excel Sheet","placement":"left","sort_order":"1"},{"id":"1484650035964","element":"#helper_step3","title":"Do More","content":"Click To Do More Operations","placement":"left","sort_order":"3"}]', '2017-01-17 10:43:28', '2017-01-17 10:53:43'),
(13, 'Create Subject', 'create-subjects', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484650589096","element":".helper_step1","title":"Subjects List","content":"Click To View Subjects List","placement":"top","sort_order":"1"},{"id":"1484650656766","element":"#subject_title","title":"Subject Title","content":"Click To Enter Subject Title","placement":"top","sort_order":"2"},{"id":"1484650706217","element":"#subject_code","title":"Subject Code","content":"Click To Enter Subject Code","placement":"top","sort_order":"3"},{"id":"1484650886605","element":".helper_step2","title":"Lab Type","content":"Choose ,The Subject Is Lab Or Not?","placement":"top","sort_order":"4"},{"id":"1484650953574","element":".helper_step3","title":"Elective Type","content":"Choose, The Subject Is Elective Or Not?","placement":"top","sort_order":"5"},{"id":"1484651013134","element":"#internal_marks","title":"Internal Marks","content":"Click To Enter Internal Marks","placement":"top","sort_order":"6"},{"id":"1484651062339","element":"#external_marks","title":"External Marks","content":"Click To Enter External Marks","placement":"top","sort_order":"7"},{"id":"1484651125335","element":"#maximum_marks","title":"Maximum Marks","content":"Click To Enter Maximum Marks","placement":"top","sort_order":"8"},{"id":"1484651175849","element":"#pass_marks","title":"Pass Marks","content":"Click To Enter Pass Marks","placement":"top","sort_order":"9"}]', '2017-01-17 10:54:54', '2017-01-17 11:06:17'),
(14, 'Allocate Subject To Course', 'allocate-subject-to-course', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484653645311","element":".helper_step1","title":"Courses","content":"Click To View Courses List","placement":"top","sort_order":"1"},{"id":"1484653734854","element":".helper_step2","title":"Allocate Subjects","content":"Drag The Subjects From Subject List To Course","placement":"top","sort_order":"2"},{"id":"1484654108570","element":"#sessions","title":"Sessions","content":"Click To Enter Number of Classes Needed","placement":"top","sort_order":"3"},{"id":"1484653874173","element":".helper_step3","title":"Update","content":"Click To Update The List","placement":"top","sort_order":"4"}]', '2017-01-17 11:43:11', '2017-01-17 11:56:21'),
(15, 'Courses List For Staff', 'courses-list-for-staff', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484654588311","element":".helper_step1","title":"Courses List","content":"Add or Edit The Courses","placement":"left","sort_order":"1"},{"id":"1484654675870","element":"#helper_step2","title":"Academic Year","content":"Click on Academic Year To Allocate Subject To Staff","placement":"top","sort_order":"2"},{"id":"1484654708424","element":"#helper_step3","title":"Do More","content":"Click Here To Do More Operations","placement":"top","sort_order":"3"}]', '2017-01-17 12:01:42', '2017-01-17 12:05:09'),
(16, 'Alloacate Staff To Subjects', 'allocate-staff-to-subjects', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484655088469","element":".helper_step2","title":"List","content":"Click To View Academic Years For Staff Allocation","placement":"top","sort_order":"1"},{"id":"1484655177303","element":".helper_step3","title":"Allocate Staff","content":"Drag The Staff From Staff List To Course Subjects","placement":"top","sort_order":"2"},{"id":"1484655222153","element":".helper_step4","title":"Delete","content":"Click To Delete The Allocated Staff","placement":"top","sort_order":"3"},{"id":"1484655272803","element":".helper_step1","title":"Update","content":"Click To Update The List","placement":"top","sort_order":"4"}]', '2017-01-17 12:08:09', '2017-01-17 12:15:06'),
(17, 'Topics List', 'topics-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484656059663","element":".helper_step1","title":"Add Topic","content":"Create Topic Name","placement":"top","sort_order":"1"},{"id":"1484656198927","element":"#helper_step3","title":"Do More","content":"Click Here To Do More Options","placement":"top","sort_order":"2"},{"id":"1484656246383","element":".helper_step4","title":"Import","content":"Click Here To Import Topics List","placement":"top","sort_order":"3"}]', '2017-01-17 12:23:04', '2017-01-17 12:31:22'),
(18, 'Create Topics', 'create-topics', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484656849524","element":".helper_step1","title":"Topics","content":"Click Here To View The Topics","placement":"top","sort_order":"1"},{"id":"1484656891857","element":"#subject","title":"Subject","content":"Click Here To Select The Subject","placement":"top","sort_order":"2"},{"id":"1484656989948","element":"#parent","title":"Parent Topic","content":"Click Here To Select Parent Topic,If Parent Topic Is Not Available Select As Parent.","placement":"top","sort_order":"3"},{"id":"1484657046000","element":"#topic_name","title":"Topic Name","content":"Click Here To Enter Parent Name","placement":"top","sort_order":"4"},{"id":"1484657117811","element":"#description","title":"Description","content":"Click To Enter Information About Topic","placement":"top","sort_order":"5"}]', '2017-01-17 12:37:33', '2017-01-17 12:46:31'),
(19, 'Master SetupDashboard', 'mastersetup-dashboard', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484724527786","element":".helper_step1","title":"Academic Year","content":"Click Here To Do Academic Mangment","placement":"top","sort_order":"1"},{"id":"1484724571459","element":".helper_step2","title":"Create Course","content":"Click Here To Manage Courses List","placement":"top","sort_order":"2"},{"id":"1484724607648","element":".helper_step3","title":"Courses List","content":"Click Here To View Courses List","placement":"top","sort_order":"3"},{"id":"1484724683708","element":".helper_step4","title":"Subject Master","content":"Click Here Create Subjects","placement":"top","sort_order":"4"},{"id":"1484724732089","element":".helper_step5","title":"Topics Listq","content":"Click Here To Create Topics To Corresponding Subjects","placement":"top","sort_order":"5"},{"id":"1484724802692","element":".helper_step6","title":"Allocate To Course","content":"Click Here To Allocate Subject ,To Course and Year","placement":"top","sort_order":"6"},{"id":"1484724844202","element":".helper_step7","title":"Allocate Staff","content":"Click Here To Allocate Staff To Course","placement":"top","sort_order":"7"}]', '2017-01-18 07:26:47', '2017-01-18 07:34:06'),
(20, 'Exams Dashboard', 'exams-dashboard', 'Helpme', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484820063234","element":".helper_step1","title":"Categories","content":"Click here to manage Quiz Categories","placement":"top","sort_order":"1"},{"id":"1484820113226","element":".helper_step2","title":"Question Bank","content":"Click to Create questions","placement":"top","sort_order":"2"},{"id":"1484820157271","element":".helper_step3","title":"Quizzes","content":"Click here to manage Quizzes","placement":"top","sort_order":"3"},{"id":"1484820217628","element":".helper_step4","title":"Offline Quiz Categories","content":"Click to manage offline quiz categories","placement":"top","sort_order":"4"},{"id":"1484820259113","element":".helper_step5","title":"Exam Series","content":"Click to manage exam series","placement":"top","sort_order":"5"},{"id":"1484820308086","element":".helper_step6","title":"Instructions","content":"Click to manage instructions","placement":"top","sort_order":"6"}]', '2017-01-19 09:59:35', '2017-01-19 10:05:09'),
(21, 'Exams Instructions', 'exams-instructions-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484823960618","element":".helper_step1","title":"Add Instruction","content":"Click here to create instruction","placement":"top","sort_order":"1"},{"id":"1484823992631","element":"#helper_step2","title":"Do more","content":"Click here to do more operations","placement":"top","sort_order":"2"}]', '2017-01-19 11:05:14', '2017-01-19 11:06:48'),
(22, 'Add Instruction', 'add-instruction', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '', '2017-01-19 11:08:29', '2017-01-19 11:08:29'),
(23, 'Offline Exams Categories', 'list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484887174961","element":".helper_step1","title":"Add Category","content":"Click to create category","placement":"top","sort_order":"1"},{"id":"1484887211616","element":"#helper_step2","title":"Do more","content":"Click here to do more operations","placement":"top","sort_order":"2"}]', '2017-01-20 04:38:50', '2017-01-20 04:40:13'),
(24, 'Create Offline Exams Categories', 'create-category', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484887761531","element":".helper_step1","title":"View Categories","content":"Click here to view categories","placement":"top","sort_order":"1"},{"id":"1484887817336","element":"#title","title":"Title","content":"Click to enter Category Name","placement":"top","sort_order":"2"}]', '2017-01-20 04:41:40', '2017-01-20 04:50:18'),
(25, 'Quizzes List', 'quiz-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484891026208","element":".helper_step1","title":"Add Quiz","content":"Click to create Quiz","placement":"top","sort_order":"1"},{"id":"1484891073119","element":".helper_step2","title":"Exam Series","content":"Click to view exam series","placement":"top","sort_order":"2"},{"id":"1484891124778","element":"#helper_step3","title":"Add Questions","content":"Click on title to add questions for particular quiz","placement":"top","sort_order":"3"},{"id":"1484891163681","element":"#helper_step4","title":"Do more","content":"Click here to do more operations","placement":"top","sort_order":"4"}]', '2017-01-20 05:41:56', '2017-01-20 05:46:05'),
(26, 'SMS Settings', 'sms_settings', 'sms-settings', 0, '{"sms_driver":{"value":"nexmo","type":"select","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Select SMS driver"},"nexmo_key":{"value":"NEXMO_KEY","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Nexmo API Key"},"nexmo_secret":{"value":"NEXMO_SECRET","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Enter Nexmo Secret Key"},"plivo_auth_id":{"value":"PLIVO_AUTH_ID","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Enter Plivo Auth ID"},"plivo_auth_token":{"value":"PLIVO_AUTH_TOKEN","type":"text","extra":{"total_options":"3","options":{"nexmo":"NEXMO","plivo":"PLIVO","twilio":"TWILIO"}},"tool_tip":"Plivo Auth Token"},"twilio_sid":{"type":"text","value":"TWILIO_SID","extra":"","tool_tip":"Twilio SID"},"twilio_token":{"type":"text","value":"TWILIO_TOKEN","extra":"","tool_tip":"Twilio Token"}}', 'Contains settings for SMS', '2017-01-25 05:10:09', '2017-01-25 05:30:16'),
(27, 'Users Dashboard', 'users-dashborad-list', 'Help me', 1, '{"keyboard":1,"backdrop":1}', '[{"id":"1484907068366","element":".helper_step1","title":"Owner","content":"Click to view owners list","placement":"top","sort_order":"1"},{"id":"1484907100291","element":".helper_step2","title":"Admin","content":"Click to view admins list","placement":"top","sort_order":"2"},{"id":"1484907141873","element":".helper_step3","title":"Students","content":"Click to view students list","placement":"top","sort_order":"3"},{"id":"1484907161016","element":".helper_step4","title":"Staff","content":"Click to view staff list","placement":"top","sort_order":"4"},{"id":"1484907190222","element":".helper_step5","title":"Librarians","content":"Click to view librarians list","placement":"top","sort_order":"5"},{"id":"1484907245638","element":".helper_step6","title":"Assistant Librarian","content":"Click to view Assistant Librarians list","placement":"top","sort_order":"6"},{"id":"1484907279273","element":".helper_step7","title":"Parents","content":"Click to view parents list","placement":"top","sort_order":"7"},{"id":"1484907301656","element":".helper_step8","title":"All Users","content":"Click to view all users list","placement":"top","sort_order":"8"},{"id":"1484907331522","element":".helper_step9","title":"Add  User","content":"Click here to Create User","placement":"top","sort_order":"9"}]', '2017-01-20 10:08:51', '2017-01-20 10:16:08');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `slug`, `short_description`, `description`, `url`, `valid_from`, `valid_to`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'زيارة مدير التعليم ', 'zyar-mdyr-altaalym', 'زيارة مدير التعليم  لمقر المدرسة', '<p>&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;زيارة مدير التعليم &nbsp;لمقر المدرسة&nbsp;</p>\r\n', 'http://gph.edu.sa/public/?site=ins', '2017-08-15', '2017-08-15', 1790, '2017-08-15 05:49:40', '2017-08-15 05:49:40');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `plan_type` enum('combo','lms','exam','other') COLLATE utf8_unicode_ci NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `slug`, `item_id`, `item_name`, `user_id`, `start_date`, `end_date`, `plan_type`, `payment_gateway`, `transaction_id`, `paid_by_parent`, `paid_by`, `cost`, `coupon_applied`, `coupon_id`, `actual_cost`, `discount_amount`, `after_discount`, `paid_amount`, `payment_status`, `other_details`, `transaction_record`, `notes`, `admin_comments`, `created_at`, `updated_at`) VALUES
(1, '9827fd9ec3bca1690baf68977e04958fb4b0d3d6', 3, 'اختبار لغة عربية نصوص', 1831, '0000-00-00', '0000-00-00', 'exam', 'paypal', '', 0, '', '20.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'pending', '{"is_coupon_applied":"0","actual_cost":"20.00","discount_availed":"0","after_discount":"20.00","coupon_id":"0","paid_by_parent":"","child_id":"0"}', NULL, '', NULL, '2017-10-17 23:55:34', '2017-10-17 23:55:34'),
(2, 'df9f7e35ca7e75e51c435f0a1a1aecde59bdbacd', 3, 'اختبار لغة عربية نصوص', 1831, '0000-00-00', '0000-00-00', 'exam', 'offline', '', 0, '', '20.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'cancelled', '{"is_coupon_applied":"0","actual_cost":"20.00","discount_availed":"0","after_discount":"20.00","coupon_id":"0","paid_by_parent":"","child_id":"0","payment_details":"\\u064a\\u0628 \\u0633\\u064a\\u0644\\u0633\\u064a\\u0628\\u0633\\u064a"}', NULL, 'يب سيلسيبسي', '', '2017-10-17 23:55:55', '2017-10-18 00:06:39'),
(3, '76e4e2e28a920c2375b7ff645eea9633c09f9426', 3, 'اختبار لغة عربية نصوص', 1831, '2017-10-18', '2017-10-27', 'exam', 'offline', '', 0, '', '20.00', 1, 1, '20.00', '20.00', '0.00', '0.00', 'success', '{"is_coupon_applied":"1","actual_cost":"20.00","discount_availed":"20.00","after_discount":"0","coupon_id":"1","paid_by_parent":"","child_id":"0"}', NULL, '', '', '2017-10-18 00:01:39', '2017-10-18 00:06:25'),
(4, '0123c6a221daae032c74bbf44ece14de85c4e7de', 3, 'اختبار لغة عربية نصوص', 1831, '0000-00-00', '0000-00-00', 'exam', 'offline', '', 0, '', '20.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'cancelled', '{"is_coupon_applied":"1","actual_cost":"20.00","discount_availed":"20.00","after_discount":"0","coupon_id":"1","paid_by_parent":"","child_id":"0"}', NULL, '', '', '2017-10-18 00:01:44', '2017-10-18 00:06:15'),
(5, '6962641a53f9f3e352ca48ca5794860856d75299', 3, 'اختبار لغة عربية نصوص', 1810, '0000-00-00', '0000-00-00', 'exam', 'offline', '', 0, '', '20.00', 0, 0, '0.00', '0.00', '0.00', '0.00', 'pending', '{"is_coupon_applied":"0","actual_cost":"20.00","discount_availed":"0","after_discount":"20.00","coupon_id":"0","paid_by_parent":"","child_id":"0","payment_details":"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0628\\u0646\\u0643 \\u0627\\u0644\\u0631\\u0627\\u062c\\u062d\\u064a"}', NULL, 'تم التحويل على بنك الراجحي', NULL, '2017-12-18 23:51:57', '2017-12-18 23:51:57');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `id` bigint(20) unsigned NOT NULL,
  `publisher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE IF NOT EXISTS `questionbank` (
  `id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `topic_id` bigint(20) unsigned NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`id`, `subject_id`, `topic_id`, `question_tags`, `slug`, `question_type`, `question`, `question_file`, `question_file_is_url`, `total_answers`, `answers`, `total_correct_answers`, `correct_answers`, `marks`, `time_to_spend`, `difficulty_level`, `hint`, `explanation`, `explanation_file`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '', '958f8ece4117d73ae98b955cc77deba3860d6f48', 'radio', '<p>ادفعوا لأمر حامل هذا الشيك مبلغ ( 15 ) ديناراً</p>\r\n', '', 0, 4, '[{"option_value":"\\u062e\\u0645\\u0633 \\u0639\\u0634\\u0631\\u0629","has_file":0,"file_name":""},{"option_value":"\\u062e\\u0645\\u0633\\u0629 \\u0639\\u0634\\u0631\\u0629","has_file":0,"file_name":""},{"option_value":"\\u062e\\u0645\\u0633\\u0629 \\u0639\\u0634\\u0631","has_file":0,"file_name":""},{"option_value":"\\u062e\\u0645\\u0633 \\u0639\\u0634\\u0631","has_file":0,"file_name":""}]', 1, '3', 5, 120, 'easy', '', '', NULL, 1, '2017-10-17 23:20:47', '2017-10-17 23:20:47'),
(2, 1, 1, '', 'c1f34afe57351b5885356dbad27ec9c53818dbe6', 'blanks', '<p>. اسم الآلة من الفعل ( فرم )</p>\r\n', '', 0, 0, '[]', 1, '[{"answer":"\\u0645\\u064f\\u0641\\u0631\\u0645\\u0629"}]', 3, 90, 'easy', '', '', NULL, 1, '2017-10-17 23:21:54', '2017-10-17 23:21:54'),
(3, 1, 1, '', '4ca68027de2e4a23a67c936ff6693fc2d312af7d', 'checkbox', '<p>يفيد حرف الجر ( في ) في قوله تعالى : &quot; اللهُ أعلمُ بما في أنفسهم &quot; معنى :</p>\r\n', '', 0, 4, '[{"option_value":"\\u0627\\u0644\\u0638\\u0631\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0646\\u064a\\u0629","has_file":0,"file_name":""},{"option_value":"\\u0627\\u0644\\u062a\\u0628\\u0639\\u064a\\u0636","has_file":0,"file_name":""},{"option_value":"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0644","has_file":0,"file_name":""},{"option_value":"\\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0629","has_file":0,"file_name":""}]', 2, '[{"answer":"1"},{"answer":"3"}]', 3, 120, 'easy', '', '', NULL, 1, '2017-10-17 23:23:17', '2017-10-17 23:23:17'),
(4, 1, 1, '', '9af37861ef9895fedbe747878e1aa62dee598749', 'para', '<p>هذا الاختبار يحدد لك مستوى مهارتك في قواعد اللغة العربية عبر علامة من عشرة , ركز جيدا قبل الاجابة عن كل سؤال.</p>\r\n', '', 0, 2, '[{"question":"\\u064a\\u0633\\u0645\\u0649 \\u0627\\u0644\\u0623\\u0633\\u0644\\u0648\\u0628 \\u0627\\u0644\\u0644\\u063a\\u0648\\u064a \\u0641\\u064a \\u0642\\u0648\\u0644\\u0646\\u0627 \\" \\u0648\\u0627\\u0631\\u0623\\u0633\\u0627\\u0647 \\" :","total_options":"4","options":[["\\u0627\\u0644\\u0646\\u062f\\u0627\\u0621","\\u0627\\u0644\\u062d\\u0635\\u0631","\\u0627\\u0644\\u062a\\u0639\\u062c\\u0628","\\u0627\\u0644\\u0646\\u062f\\u0628\\u0629"]]},{"question":"\\u0645\\u0646 \\u064a\\u0647\\u0646 \\u064a\\u0633\\u0647\\u0644 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0646 \\u0639\\u0644\\u064a\\u0647 , ( \\u0645\\u0646 ) \\u0641\\u064a \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062c\\u0645\\u0644\\u0629 :","total_options":"4","options":{"1":["\\u0634\\u0631\\u0637\\u064a\\u0629","\\u0645\\u0648\\u0635\\u0648\\u0644\\u0629","\\u0627\\u0633\\u062a\\u0641\\u0647\\u0627\\u0645\\u064a\\u0629","\\u062d\\u0631\\u0641 \\u062c\\u0631"]}}]', 2, '[{"answer":"3"},{"answer":"1"}]', 3, 240, 'easy', '', '', NULL, 1, '2017-10-17 23:26:12', '2017-10-17 23:26:12'),
(5, 1, 1, '', '18dca1996d57e46f78f60e08836d3b30168821ef', 'match', '<p>طابق بين &nbsp;الصيغة الكيميائية من القائمة&nbsp; ( أ )&nbsp;مع&nbsp;الاسم الذي &nbsp;يقابلها من القائمة (&nbsp;ب ) :</p>\r\n', '', 0, 4, '{"left":{"title":"\\u0627","options":["HCL","H2SO4","ALCL3","H3PO4"]},"right":{"title":"\\u0628","options":[" \\u062d\\u0645\\u0636 \\u0627\\u0644\\u0643\\u0628\\u0631\\u064a\\u062a","\\u062d\\u0645\\u0636 \\u0627\\u0644\\u062e\\u0644","\\u062d\\u0645\\u0636 \\u0627\\u0644\\u0641\\u0648\\u0633\\u0641\\u0648\\u0631","\\u062d\\u0645\\u0636 \\u0643\\u0644\\u0648\\u0631 \\u0627\\u0644\\u0645\\u0627\\u0621"]}}', 4, '[{"answer":"2"},{"answer":"3"},{"answer":"1"},{"answer":"4"}]', 5, 120, 'easy', '', '', NULL, 1, '2017-10-17 23:34:18', '2017-10-17 23:34:18');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionbank_quizzes`
--

INSERT INTO `questionbank_quizzes` (`id`, `questionbank_id`, `quize_id`, `subject_id`, `marks`, `created_at`, `updated_at`) VALUES
(32, 1, 4, 1, 5, NULL, NULL),
(33, 3, 4, 1, 3, NULL, NULL),
(34, 2, 4, 1, 3, NULL, NULL),
(37, 1, 3, 1, 5, NULL, NULL),
(38, 2, 3, 1, 3, NULL, NULL),
(39, 4, 3, 1, 3, NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizapplicability`
--

INSERT INTO `quizapplicability` (`id`, `quiz_id`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 17, 30, 1, 0, '2017-10-17 23:36:35', '2017-10-17 23:36:35'),
(4, 2, 1, 17, 29, 1, 0, '2017-10-17 23:36:35', '2017-10-17 23:36:35'),
(13, 3, 1, 17, 30, 1, 0, '2017-12-18 23:28:46', '2017-12-18 23:28:46'),
(14, 3, 1, 17, 29, 1, 0, '2017-12-18 23:28:46', '2017-12-18 23:28:46'),
(15, 4, 1, 17, 30, 1, 0, '2017-12-18 23:34:15', '2017-12-18 23:34:15'),
(16, 4, 1, 17, 29, 1, 0, '2017-12-18 23:34:15', '2017-12-18 23:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `quizcategories`
--

CREATE TABLE IF NOT EXISTS `quizcategories` (
  `id` bigint(20) unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `record_updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizcategories`
--

INSERT INTO `quizcategories` (`id`, `category`, `slug`, `image`, `description`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'اختبارات اللغة العربية', 'akhtbarat-allgh-alaarby', '', '', 1790, '2017-10-17 23:15:06', '2017-12-18 22:58:21'),
(2, 'اختبارات اللغة الانجليزية', 'akhtbarat-allgh-alanjlyzy', '', '', 1790, '2017-10-17 23:15:24', '2017-12-18 22:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `quizofflinecategories`
--

CREATE TABLE IF NOT EXISTS `quizofflinecategories` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizofflinecategories`
--

INSERT INTO `quizofflinecategories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'مجموعة اختبارات ١ ', 'mjmoaa-akhtbarat', 1, '2017-10-15 23:48:51', '2017-10-15 23:48:51'),
(2, 'مجموعة اختبارات ٢', 'mjmoaa-akhtbarat', 1, '2017-10-15 23:49:04', '2017-10-15 23:49:04');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizresults`
--

INSERT INTO `quizresults` (`id`, `slug`, `quiz_id`, `user_id`, `marks_obtained`, `negative_marks`, `total_marks`, `percentage`, `exam_status`, `answers`, `subject_analysis`, `correct_answer_questions`, `wrong_answer_questions`, `not_answered_questions`, `time_spent_correct_answer_questions`, `time_spent_wrong_answer_questions`, `time_spent_not_answered_questions`, `percentage_title`, `grade_title`, `grade_points`, `rank`, `total_users_for_this_quiz`, `academic_id`, `course_parent_id`, `course_id`, `year`, `semister`, `created_at`, `updated_at`) VALUES
(1, 'b87ca4219d6206612e8b9034d3390566f6dcf7df', 3, 1831, -5, '0.00', 19, '0.00', 'fail', '{"1":["3"],"2":["\\u0645\\u0631\\u0641\\u0639"],"3":["1","3"],"4":["2","3"],"5":["2","3","1","4"]}', '{"1":{"subject_id":1,"correct_answers":3,"wrong_answers":2,"not_answered":0,"time_spent":62,"time_to_spend":690,"time_spent_correct_answers":45,"time_spent_wrong_answers":17}}', '[1,3,5]', '[2,4]', '[]', '{"1":{"time_to_spend":120,"time_spent":"17"},"3":{"time_to_spend":120,"time_spent":"15"},"5":{"time_to_spend":120,"time_spent":"13"}}', '{"2":{"time_to_spend":90,"time_spent":"7"},"4":{"time_to_spend":240,"time_spent":"10"}}', '[]', '', '', '', NULL, NULL, 1, 17, 29, 1, 0, '2017-10-18 00:07:58', '2017-10-18 00:07:58'),
(2, '3d5cd17186fdc8eceefcf2933b9edc24f7d36ccb', 3, 1831, 7, '0.00', 19, '36.84', 'pass', '{"1":["3"],"2":["\\u0645\\u064f\\u0641\\u0631\\u0645\\u0629"],"3":["1","3"],"4":["2","3"],"5":["2","3","1","4"]}', '{"1":{"subject_id":1,"correct_answers":4,"wrong_answers":1,"not_answered":0,"time_spent":149,"time_to_spend":690,"time_spent_correct_answers":101,"time_spent_wrong_answers":48}}', '[1,2,3,5]', '[4]', '[]', '{"1":{"time_to_spend":120,"time_spent":"17"},"2":{"time_to_spend":90,"time_spent":"50"},"3":{"time_to_spend":120,"time_spent":"19"},"5":{"time_to_spend":120,"time_spent":"15"}}', '{"4":{"time_to_spend":240,"time_spent":"48"}}', '[]', '', '', '', NULL, NULL, 1, 17, 29, 1, 0, '2017-10-18 00:11:18', '2017-10-18 00:11:18'),
(3, 'adb6d47a1a32feb6ed7d01ca3c970a35c0fb1c90', 4, 1810, -30, '0.00', 11, '0.00', 'fail', '{"1":["1"],"3":["2"],"2":["\\u062b\\u0642\\u0644"]}', '{"1":{"subject_id":1,"correct_answers":0,"wrong_answers":3,"not_answered":0,"time_spent":42,"time_to_spend":330,"time_spent_correct_answers":0,"time_spent_wrong_answers":42}}', '[]', '[1,3,2]', '[]', '[]', '{"1":{"time_to_spend":120,"time_spent":"16"},"3":{"time_to_spend":120,"time_spent":"13"},"2":{"time_to_spend":90,"time_spent":"13"}}', '[]', '', '', '', NULL, NULL, 1, 17, 29, 1, 0, '2017-12-18 23:49:53', '2017-12-18 23:49:53'),
(4, 'f8353618e28b5bdf2af74886174a7c3164146f13', 4, 1810, -30, '0.00', 11, '0.00', 'fail', '{"1":["1"],"3":["1","4"],"2":["\\u062b\\u0642\\u0644"]}', '{"1":{"subject_id":"1","correct_answers":0,"wrong_answers":3,"not_answered":0,"time_spent":26,"time_to_spend":330,"time_spent_correct_answers":0,"time_spent_wrong_answers":26}}', '[]', '[1,3,2]', '[]', '[]', '{"1":{"time_to_spend":"120","time_spent":"7"},"3":{"time_to_spend":"120","time_spent":"15"},"2":{"time_to_spend":"90","time_spent":"4"}}', '[]', '', '', '', NULL, NULL, 1, 17, 29, 1, 0, '2017-12-20 07:59:30', '2017-12-20 07:59:30');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `slug`, `type`, `offline`, `online`, `dueration`, `category_id`, `subject_id`, `is_paid`, `cost`, `validity`, `total_marks`, `having_negative_mark`, `negative_mark`, `pass_percentage`, `tags`, `publish_results_immediately`, `description`, `total_questions`, `instructions_page_id`, `start_date`, `end_date`, `applicable_to_specific`, `offline_quiz_category_id`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(2, 'اختبار لغة عربية اولي ابتدائي', 'akhtbar-lgh-aarby-aoly-abtdaey-5f3022ed3c4ebad9594ac6cf9fc948adbb1d34cb', 'offline', '', '', 30, NULL, 1, 0, '0.00', -1, 100, 0, '0.00', '40.00', '', 1, '', 0, 1, '2017-10-17 00:06:00', '2017-10-25 00:07:00', 1, 1, 1790, '2017-10-17 23:36:35', '2017-10-17 23:36:35'),
(3, 'اختبار لغة عربية نصوص', 'akhtbar-lgh-aarby-nsos-c7ae6f8423bb2845d10e3a75cd020a60cd8b51f1', 'online', '', '', 30, 1, 1, 1, '20.00', 100, 11, 1, '9.00', '10.00', '', 1, '', 3, 1, '2017-10-17 00:07:00', '2018-02-13 23:57:00', 1, NULL, 1790, '2017-10-17 23:39:08', '2017-12-19 19:41:13'),
(4, 'اختبار لغة عربية الاول الابتدائي', 'akhtbar-lgh-aarby-alaol-alabtdaey-c5590527af16217eac34f3bd2f372c01e367bb2c', 'online', '', '', 20, 1, 1, 0, '0.00', -1, 11, 1, '10.00', '40.00', '', 1, '', 3, 1, '2017-12-19 00:03:00', '2017-12-31 00:04:00', 1, NULL, 1790, '2017-12-18 23:34:15', '2017-12-18 23:34:28');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `religion_name`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'مسلم', 'Active', 'mslm', '2017-10-12 07:36:46', '2017-10-12 07:36:46'),
(2, 'مسيحي', 'Active', 'msyhy', '2017-10-12 07:36:54', '2017-10-12 07:36:54');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'Owner', 'Owner of this account', '2016-06-08 03:32:59', '2016-06-08 03:32:59'),
(2, 'admin', 'Admin', 'Admin of this Account', '2016-06-08 03:33:19', '2016-06-08 03:33:19'),
(3, 'staff', 'Staff', 'Staff User', '2016-11-04 23:44:22', '2016-11-04 23:44:22'),
(5, 'student', 'Student', 'Student User', '2016-06-08 04:01:54', '2016-06-08 04:01:54'),
(6, 'parent', 'Parent User', 'Parent Login', '2016-06-08 07:35:27', '2016-06-08 07:35:27'),
(7, 'librarian', 'Librarian', 'Library User', '2016-12-05 18:30:00', '2016-12-05 18:30:00'),
(8, 'assistant_librarian', 'Assistant Librarian', 'Assistant Librarian', '2016-12-07 01:45:12', '2016-12-07 01:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1790, 1),
(1802, 2),
(1800, 3),
(1803, 3),
(1835, 3),
(1836, 3),
(1837, 3),
(1868, 3),
(1796, 5),
(1801, 5),
(1805, 5),
(1806, 5),
(1807, 5),
(1808, 5),
(1809, 5),
(1810, 5),
(1811, 5),
(1812, 5),
(1813, 5),
(1814, 5),
(1815, 5),
(1816, 5),
(1817, 5),
(1818, 5),
(1819, 5),
(1820, 5),
(1821, 5),
(1822, 5),
(1823, 5),
(1824, 5),
(1825, 5),
(1826, 5),
(1827, 5),
(1828, 5),
(1829, 5),
(1830, 5),
(1831, 5),
(1832, 5),
(1833, 5),
(1834, 5),
(1838, 5),
(1839, 5),
(1840, 5),
(1841, 5),
(1842, 5),
(1843, 5),
(1844, 5),
(1845, 5),
(1846, 5),
(1847, 5),
(1848, 5),
(1849, 5),
(1850, 5),
(1851, 5),
(1852, 5),
(1853, 5),
(1854, 5),
(1855, 5),
(1856, 5),
(1857, 5),
(1858, 5),
(1859, 5),
(1860, 5),
(1861, 5),
(1862, 5),
(1863, 5),
(1864, 5),
(1865, 5),
(1866, 5),
(1867, 5),
(1869, 6),
(1870, 7);

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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `key`, `slug`, `image`, `settings_data`, `description`, `created_at`, `updated_at`) VALUES
(1, 'إعدادات البريد الألكتروني', 'email_settings', 'email-settings', '', '{"mail_driver":{"value":"mail","type":"select","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Driver"},"mail_host":{"value":"mail.sasbit.com","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Host"},"mail_port":{"value":"110","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Port no"},"mail_username":{"value":"support@sasbit.com","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Username"},"mail_password":{"value":"","type":"password","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Password"},"mail_encryption":{"value":"null","type":"text","extra":{"total_options":"8","options":{"smtp":"SMTP","mail":"Mail","sparkpost":"Sparkpost","sendmail":"Sendmail","mailgun":"Mailgun","mandrill":"Mandrill","ses":"SES","log":"Log"}},"tool_tip":"Mail Encryption"}}', 'Contains all the settings related to emails', '2016-08-28 23:55:26', '2017-12-22 11:25:08'),
(4, 'Paypal Settings', 'paypal', 'paypal', '', '{"email":{"value":"montaserelsawy@gmail.com","type":"email","extra":"","tool_tip":"Paypal Email"},"currency":{"value":"USD","type":"text","extra":"","tool_tip":"Default Currency"},"image":{"value":"gYiMM9e5g3H40dz.png","type":"file","extra":"","tool_tip":"Image to display at Paypal payment gateway"},"account_type":{"value":"live","type":"select","extra":{"total_options":"2","options":{"sandbox":"Sandbox","live":"Live"}},"tool_tip":"Account Type Development (sandbox)\\/ Production (live)"}}', 'Contains paypal config details', '2016-09-08 03:38:30', '2017-10-18 00:02:38'),
(5, 'PayU Settings', 'payu', 'payu', '', '{"payu_merchant_key":{"value":"YOUR_PAYU_MERCHANT_KEY","type":"text","extra":"","tool_tip":"PayU Merchent Key"},"payu_salt":{"value":"YOUR_PAYU_SALT","type":"text","extra":"","tool_tip":"PayU Salt"},"payu_working_key":{"value":"YOUR_PAYU_WORKING_KEY","type":"text","extra":"","tool_tip":"PayU Working Key"},"payu_testmode":{"value":"true","type":"select","extra":{"total_options":"2","options":{"true":"Yes","false":"No"}},"tool_tip":"Set PayU in Test Mode"}}', 'Payu Settings', '2016-09-09 01:25:33', '2017-03-01 10:23:56'),
(6, 'اعدادات الموقع', 'site_settings', 'site-settings', 'qXwtdsGTGqvRdC7.png', '{"site_title":{"value":"\\u0646\\u0638\\u0627\\u0645 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0644\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","type":"text","extra":"","tool_tip":"Site Title"},"login_page_title":{"value":"\\u0646\\u0638\\u0627\\u0645 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","type":"text","extra":"","tool_tip":"Type Of Education System"},"site_logo":{"value":"7g4r5q6tci0eA3Y.png","type":"file","extra":"","tool_tip":"Site Logo"},"site_address":{"value":"","type":"textarea","extra":"","tool_tip":"Address"},"site_city":{"value":"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631\\u0629","type":"text","extra":"","tool_tip":"City"},"site_favicon":{"value":"bPVIbnviqkfCQsa.ico","type":"file","extra":"","tool_tip":"Favicon"},"site_state":{"value":"\\u0627\\u0644\\u063a\\u0631\\u0628\\u064a\\u0629","type":"text","extra":"","tool_tip":"State"},"site_country":{"value":"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629","type":"text","extra":"","tool_tip":"Country"},"site_zipcode":{"value":"41321","type":"text","extra":"","tool_tip":"Postal Code"},"site_phone":{"value":"0548300367","type":"text","extra":"","tool_tip":"Phone"},"system_timezone":{"value":"Asia\\/Riyadh","type":"text","extra":"","tool_tip":"Refer http:\\/\\/php.net\\/manual\\/en\\/timezones.php"},"background_image":{"value":"khdGHPReGFDSq9C.jpg","type":"file","extra":"","tool_tip":"Front background image"},"default_academic_year_id":{"value":"1","type":"number","extra":"","tool_tip":"Enter default academic year"},"default_parent_course_id":{"value":"1","type":"number","extra":"","tool_tip":"Enter default parent course ID"},"current_theme":{"value":"default","type":"select","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Select theme"},"currency_symbol":{"value":"\\u064d\\u0650SAR","type":"text","extra":{"total_options":"3","options":{"default":"Default Theme","red":"Red Theme","green":"Green Theme"}},"tool_tip":"Add your currency symbol"}}', 'Here you can manage the title, logo, favicon and all general settings', '2016-09-29 06:46:54', '2017-10-15 23:28:47'),
(7, 'Seo Settings', 'seo_settings', 'seo-settings-1', '', '{"meta_description":{"value":"This is a online examination system","type":"textarea","extra":"","tool_tip":"Site Meta Description"},"meta_keywords":{"value":"Exam system|exam|exams","type":"textarea","extra":"","tool_tip":"Site Meta Keywords"},"google_analytics":{"value":"","type":"textarea","extra":"","tool_tip":"Update your google analytics code"}}', 'Contains all SEO settings', '2016-09-30 13:33:46', '2017-10-15 23:21:46'),
(8, 'Payment Gateways', 'payment_gateways', 'payment-gateways', '', '{"offline_payment_information":{"value":"1) Pay the amount through DD\\/Check\\/Deposit in favor of Admin, Academia, India <br\\/>\\r\\n2) Update the Payment information in the below box <br\\/>\\r\\n3) Admin will validate the payment details and update your subscription <br\\/>","type":"textarea","extra":"","tool_tip":"Information related to offline payment"}}', 'Contains all list of payment gateways in the system and the status of availability ', '2016-10-02 09:48:19', '2017-10-18 00:00:34'),
(9, 'Modules Management', 'module', 'module', '', '{"payu":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable PayU Payment Gateway"},"paypal":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Paypal Payment Gateway"},"messaging":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Messaging Module"},"parent":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Parent Module"},"coupons":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Coupons Module"},"offline_payment":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Offline Payment Option"},"push_notifications":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Push Notifications"},"certificate":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Certificate Module"},"show_foreign_key_constraint":{"value":"1","type":"checkbox","extra":"","tool_tip":"sho foreign key constraint message at delete operation"},"facebook_login":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Facebook Login"},"google_plus_login":{"value":"1","type":"checkbox","extra":"","tool_tip":"Enable\\/Disable Google+ Login"}}', 'You can enable or disable modules in the system', '2016-10-12 11:36:22', '2017-12-13 07:33:14'),
(11, 'إعدادات الشهادة', 'certificate', 'certificate', '', '{"logo":{"value":"Yv7CQJWc663SUlR.png","type":"file","extra":"","tool_tip":"Header logo of certificate"},"content":{"value":"<span style=\\"font-size:18px; font-style:italic;\\">This is to certify that <b style=\\"padding:0 10px; font-size:22px;\\">{{$username}}<\\/b> Lorem Ipsum is simply dummy text <b style=\\"padding:0 10px; font-size:22px;\\">{{$course_name}}<\\/b> of the printing with score of <b style=\\"padding:0 10px; font-size:22px;\\">{{$marks}}<\\/b> and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took<\\/span>","type":"textarea","extra":"","tool_tip":"Content for the certificate"},"left_sign_image":{"value":"CbWZkuET6ivwbH9.png","type":"file","extra":"","tool_tip":"Left Sign Image"},"right_sign_image":{"value":"ITKaR4FJcEp8blq.png","type":"file","extra":"","tool_tip":"Right Sign Image"},"left_sign_name":{"value":"Prabhakar","type":"text","extra":"","tool_tip":"Left Sign Name"},"right_sign_name":{"value":"Jackk","type":"text","extra":"","tool_tip":"Right Sign Name"},"left_sign_designation":{"value":"Course Teacher","type":"text","extra":"","tool_tip":"Left Sign Designation"},"right_sign_designation":{"value":"Admin","type":"text","extra":"","tool_tip":"Right Sign Designation"},"watermark_image":{"value":"Ui7rcIVz6XFliHA.png","type":"file","extra":"","tool_tip":"Water Mark Image for transparent background"},"bottom_middle_logo":{"value":"Xnbf7A5pUDnseoH.png","type":"file","extra":"","tool_tip":"Bottom middle logo"}}', 'This Module contains the settings for Certificate', '2016-10-13 06:57:36', '2017-12-22 11:27:02'),
(12, 'تسجيل الدخول من خلال مواقع التواصل الاجتماعي', 'social_logins', 'social-logins', '', '{"facebook_client_id":{"value":"649337055234832","type":"text","extra":"","tool_tip":"Facebook Client ID"},"facebook_client_secret":{"value":"5a67e2912d64971af65c4c05b0c6b2ae","type":"text","extra":"","tool_tip":"Facebook Client Secret"},"facebook_redirect_url":{"value":"http:\\/\\/conquerorslabs.com\\/exam2\\/auth\\/facebook\\/callback","type":"text","extra":"","tool_tip":"It should be http (or) https:\\/\\/yourservername\\/auth\\/google\\/callback"},"google_client_id":{"value":"881078848150-i20jdtp5g3pg9i2p4tgts4ao5i1ja6cv.apps.googleusercontent.com","type":"text","extra":"","tool_tip":"Google Plus Client ID"},"Google_client_secret":{"value":"ndH8wRWVaB6Mv6pICFRPIhJr","type":"text","extra":"","tool_tip":"Google Client Secret Key"},"google_redirect_url":{"value":"http:\\/\\/conquerorslabs.com\\/exam2\\/auth\\/google\\/callback","type":"text","extra":"","tool_tip":"http (or) https:\\/\\/yourserver.com\\/auth\\/google\\/callback"}}', 'Add/Update Settings for Social Logins (Facebook and Google plus)', '2016-10-28 10:56:37', '2017-12-22 11:27:24'),
(13, 'اعدادات نظام الرسائل', 'messaging_system', 'messaging-system', '', '{"messaging_system_for":{"value":"all","type":"select","extra":{"total_options":"2","options":{"all":"All","admin":"Admin and Student","admin_student_staff":"Admin, Staff and Student"}},"tool_tip":"To whome you want to use this system"}}', '', '2016-10-29 11:03:37', '2017-12-22 11:27:41'),
(14, 'جدول الحصص', 'time_table', 'time-table', '', '{"start_time":{"value":"7","type":"number","extra":"","tool_tip":"Enter the strat time to be shown in timetable management"},"end_time":{"value":"13","type":"number","extra":"","tool_tip":"Enter the end time to be shown in timetable management"},"default_sessions_needed":{"value":"60","type":"number","extra":"","tool_tip":"Default sessions needed at subject allocation"}}', 'These will be used in timetable management', '2016-11-30 12:39:07', '2017-12-22 11:24:13'),
(15, 'إعدادات المكتية', 'library_settings', 'library-settings', '', '{"maximum_issues_student":{"value":"2","type":"number","extra":"","tool_tip":"Maximum issues for student"},"maximum_issues_staff":{"value":"4","type":"number","extra":"","tool_tip":"Maximum Issues for Staff"},"maximum_days_to_return_student":{"value":"4","type":"number","extra":"","tool_tip":"Student maximum days to return"},"maximum_days_to_return_staff":{"value":"6","type":"number","extra":"","tool_tip":"Staff maximum days to retrun"},"library_series_prefix":{"value":"LIB","type":"text","extra":"","tool_tip":"Serial number prefix like college code"},"library_series_number_length":{"value":"3","type":"number","extra":"","tool_tip":"Length of series number"}}', 'Contains all Library Settings', '2016-12-08 06:54:53', '2017-12-22 11:28:28'),
(16, 'Bonafide certificate settings', 'bonafide_settings', 'bonafide-settings', '', '{"print_header":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore header"},"print_footer":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore footer"},"print_date":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore date on certificate"},"print_reference_number":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print or ignore reference number"},"right_sign_image":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right sign image"},"right_side_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side name"},"right_side_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side designation"},"show_watermark":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show watermark image"}}', 'Bonanide Certificate settings for printing options, certificate layouts etc', '2017-01-05 10:00:35', '2017-12-24 05:37:02'),
(17, 'Bonafide certificate content', 'bonafide_content', 'bonafide-content', '', '{"logo":{"value":"wNERLaeilHuQKFN.png","type":"file","extra":"","tool_tip":"Certificate Logo"},"content":{"value":"   <td align=\\"left\\" style=\\"padding: 5px 10px;  font-size:16px;\\">\\r\\n            <p style=\\"font-size: 16px; color: #333; line-height:30px;\\">This is to certify that <strong style=\\"font-size:18px; color:#007cff\\"><u><i>{{$name}}<\\/i><\\/u><\\/strong> {{$child_title}} of {{$fathers_name}} residing at {{$address}} is a bonafide student of our school studying in\\r\\n\\r\\n             <strong style=\\"font-size:18px; color:#007cff\\"><u><i> {{$course_title}}<\\/i><\\/u><\\/strong>.<\\/p>\\r\\n            <p style=\\"font-size: 16px; color: #333; line-height:30px;\\"> {{$gender_title}} was very obedient, sincere and hardworking. {{$gender_title}} bears a good moral character.<\\/p>\\r\\n\\r\\n        <\\/td>","type":"textarea","extra":"","tool_tip":"Content of the certificate"},"right_designation":{"value":"\\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644","type":"text","extra":"","tool_tip":"Right side designation name"},"right_side_name":{"value":"\\u0645\\u0646\\u062a\\u0635\\u0631","type":"text","extra":"","tool_tip":"Right side display name"},"right_side_sign":{"value":"ufhwpHyrlHTjqMf.png","type":"file","extra":"","tool_tip":"Right side sign image"},"watermark_image":{"value":"aK0duoZOiKWPovc.png","type":"file","extra":"","tool_tip":"Upload watermark image"}}', 'This module contains the content and settings for bonafide certificate', '2017-01-05 10:38:31', '2017-12-24 05:37:23'),
(18, 'حقول شهادات الصفوف الدراسية ', 'transfer_certificate_fields', 'transfer-certificate-fields', '', '{"name_of_student":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display Name Of The Pupil"},"father_guardian_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display fathername \\/ Guardian name"},"mother_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display mother name"},"nationality":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display nationality"},"candidate_caste":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display caste"},"date_of_admission_with_class":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display date of join, class"},"date_of_birth":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display date of birth"},"last_class_studied":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly last studied class"},"last_taken_exam_and_result":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display board exam result"},"whether_failed_if_once_twice_in_the_same_class":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly Failed exam status"},"promotion_class":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly promotion class"},"total_working_days":{"value":"1","type":"checkbox","extra":"","tool_tip":"Total working days of year"},"total_present_days":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display present days"},"ncc_boy_scout_girls_guide":{"value":"1","type":"checkbox","extra":"","tool_tip":"Diaplay NCC or Scout or Guide details"},"games_played_or_extra_curricular_activities":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display other activities"},"general_conduct":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display conduct"},"date_of_apply":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly apply date"},"date_of_issue":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display issue date"},"reason":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display reason "},"remarks":{"value":"1","type":"checkbox","extra":"","tool_tip":"Dispaly remarks"},"first_admission_in_the_school":{"value":"1","type":"checkbox","extra":"","tool_tip":"Display First Admission in the schol"}}', 'This module holds the management of the fields to display on the certificate', '2017-01-05 13:31:07', '2017-12-22 11:28:06'),
(19, 'اعدادات شهادات الصفوف الدراسية', 'transfer_certificate_settings', 'transfer-certificate-settings', '', '{"print_header":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print header"},"print_footer":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print footer"},"print_date":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print date"},"print_reference_number":{"value":"1","type":"checkbox","extra":"","tool_tip":"Print reference number"},"show_left_side_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show left side name"},"show_left_side_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show left side designation"},"show_left_side_sign":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show left side image"},"show_middle_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show middle name"},"show_middle_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show middle designation"},"show_middle_sign":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show middle sign"},"show_right_side_name":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side name"},"show_right_side_designation":{"value":"1","type":"checkbox","extra":"","tool_tip":"show right side designation"},"show_right_side_sign":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show right side sign"},"show_watermark":{"value":"1","type":"checkbox","extra":"","tool_tip":"Show watermark"}}', 'This module holds the settings part for transfer certificate. The settings like printing options', '2017-01-06 04:29:52', '2017-12-22 11:26:28'),
(20, 'اعدادات بطاقات الهوية', 'id_card_settings', 'id-card-settings', '', '{"top_logo":{"value":"xbOidMm9xcoF22B.png","type":"file","extra":"","tool_tip":"Upload logo"},"select_template":{"value":"template_2","type":"select","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Select template"},"template_1_logo":{"value":"qAAU6aCsrZckWR7.png","type":"file","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Logo for template 1"},"institute_title":{"value":"\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0633\\u0627\\u0633\\u0628\\u062a \\u0627\\u0644\\u0623\\u0647\\u0644\\u064a\\u0629","type":"text","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Title of the institute to display on top"},"institute_address":{"value":"\\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 | \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631\\u0629","type":"text","extra":{"total_options":"3","options":{"template_1":"Template 1","template_2":"Template 2"}},"tool_tip":"Institute address"}}', 'This is used to setting the id card logo and address in idcard', '2017-01-07 06:09:36', '2017-12-22 11:24:36'),
(21, 'حقول بطاقة الهوية', 'id_card_fields', 'id-card-fields', '', '{"front_first_item_title":{"value":"\\u0627\\u0644\\u0623\\u0633\\u0645","type":"text","extra":"","tool_tip":"Front first item title"},"front_second_item_title":{"value":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0644\\u0628","type":"text","extra":"","tool_tip":"Second item title"},"front_third_item_title":{"value":"\\u0641\\u0635\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0645","type":"text","extra":"","tool_tip":"Third item title"},"front_fourth_item_title":{"value":"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a","type":"text","extra":"","tool_tip":"Fourth item title"},"front_fifth_item_title":{"value":"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646","type":"text","extra":"","tool_tip":"Fifth item title"},"front_sixth_item_title":{"value":"Blood Grp","type":"text","extra":"","tool_tip":"Sixth item title"},"front_seventh_item_title":{"value":"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0637\\u0648\\u0627\\u0631\\u0626","type":"text","extra":"","tool_tip":"Seventh item title"},"front_first_item":{"value":"name","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"First Item to display"},"front_second_item":{"value":"roll_no","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Second Item to display"},"front_third_item":{"value":"date_of_birth","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Third Item to display"},"front_fourth_item":{"value":"course_title","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Fourth Item to display"},"front_fifth_item":{"value":"skip","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Fifth Item to display"},"front_sixth_item":{"value":"skip","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Sixth Item to display"},"front_seventh_item":{"value":"skip","type":"select","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Seventh Item to display"},"back_first_item_title":{"value":"\\u0627\\u0644\\u0645\\u0642\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back first item title"},"back_first_item_text":{"value":"\\u0661\\u0663 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0645\\u0646\\u0627\\u0631\\u0627\\u062a - \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631\\u0629","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back first item text"},"back_second_item_title":{"value":"\\u0627\\u0644\\u0647\\u0627\\u062a\\u0641","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back second title"},"back_second_item_text":{"value":"\\u0660\\u0665\\u0664\\u0668\\u0663\\u0660\\u0660\\u0663\\u0666\\u0667","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Second text"},"back_third_item_title":{"value":"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back third item title"},"back_third_item_text":{"value":"info@sasbit.com","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back third item text"},"back_fourth_item_title":{"value":"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0623\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back fourth item title"},"back_fourth_item_text":{"value":"www.sasbit.com","type":"text","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Back fourth item text"},"front_total_fields":{"value":"4","type":"number","extra":{"total_options":"15","options":{"skip":"Skip","admission_no":"Admission No.","roll_no":"Roll No.","name":"Name","course_title":"Course Information","fathers_name":"Fathers Name","date_of_birth":"DOB","address_full":"Address-Lane, City, State","address_middle":"Address-Lane, City","address_small":"Address-City, State","gender":"Gender","blood_group":"Blood Group","email":"Email","validity":"Validity information","mobile":"Mobile Number","home_phone":"Home Phone number"}},"tool_tip":"Enter first n fields to display on front"}}', 'With this module you can manage the contents order and items on ID card', '2017-01-07 07:51:13', '2017-12-22 11:25:36');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `user_id`, `course_parent_id`, `course_id`, `job_title`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `date_of_join`, `gender`, `marital_status`, `blood_group`, `fathers_name`, `mothers_name`, `mother_tongue`, `nationality`, `address_lane1`, `address_lane2`, `city`, `state`, `zipcode`, `country`, `mobile`, `home_phone`, `qualification`, `total_experience_years`, `total_experience_month`, `experience_information`, `other_information`, `settings`, `extra_fields`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 'ACA1800', 1800, 0, 0, 'معلم ', 'هشام', 'محمد', 'هاشم', '2017-10-17', '2017-10-14', 'male', 'single', 'A -ve', 'منتصر', 'نور', 'العربية', 'SA', 'شسيشس', 'يشسي', 'Madina', 'العريض', '42314', 'SA', '548300367', '548300367', 'asd', 3, 0, 'شسيشس', 'سشي', '', NULL, NULL, '2017-10-13 07:11:42', '2017-12-23 22:20:55'),
(8, 'ACA1803', 1803, 0, 0, '', 'محمود', '', '', NULL, NULL, 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', NULL, NULL, '2017-10-14 10:24:34', '2017-10-14 10:24:34'),
(9, 'ACA1835', 1835, 17, 29, 'asda', 'teacher 2', '', '', NULL, '2017-10-16', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asd', 0, 0, '', '', '', NULL, NULL, '2017-10-15 22:54:24', '2017-10-16 23:18:45'),
(10, 'ACA1836', 1836, 17, 29, 'asda', 'Teacher3', '', '', NULL, '2017-10-16', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asd', 0, 0, '', '', '', NULL, NULL, '2017-10-15 22:55:37', '2017-10-16 23:19:03'),
(11, 'ACA1837', 1837, 0, 0, 'asda', 'خالد الصافي', '', '', NULL, '2017-10-16', 'male', 'single', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asd', 0, 0, '', '', '', NULL, NULL, '2017-10-15 22:57:54', '2017-10-15 22:58:03'),
(12, 'ACA1868', 1868, 17, 29, 'معلم ', 'teacher5', 'منتصر ', 'El-Sawy', '2017-10-20', '2017-10-20', 'male', 'single', 'A -ve', 'منتصر', 'نور', 'العربية', 'AL', 'dae', 'dfwer', 'Madina', 'العريض', '42314', 'SA', '548300367', '548300367', 'asd', 5, 5, 'esefqwe', '', '', NULL, NULL, '2017-10-20 07:32:20', '2017-12-13 07:07:48');

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
  `notes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `studentpromotions`
--

INSERT INTO `studentpromotions` (`id`, `user_id`, `student_id`, `type`, `from_academic_id`, `from_course_parent_id`, `from_course_id`, `to_academic_id`, `to_course_parent_id`, `to_course_id`, `from_year`, `from_semister`, `to_year`, `to_semister`, `description`, `remarks`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(1, 1796, 1, 'admission', 1, 2, 5, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-12 07:34:42', '2017-10-12 07:34:42'),
(3, 1805, 4, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:47', '2017-10-15 22:46:47'),
(4, 1806, 5, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:47', '2017-10-15 22:46:47'),
(5, 1807, 6, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:47', '2017-10-15 22:46:47'),
(6, 1808, 7, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(7, 1809, 8, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(8, 1810, 9, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(9, 1811, 10, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(10, 1812, 11, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(11, 1813, 12, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(12, 1814, 13, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(13, 1815, 14, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(14, 1816, 15, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(15, 1817, 16, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(16, 1818, 17, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(17, 1819, 18, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(18, 1820, 19, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(19, 1821, 20, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(20, 1822, 21, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(21, 1823, 22, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(22, 1824, 23, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(23, 1825, 24, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(24, 1826, 25, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(25, 1827, 26, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(26, 1828, 27, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(27, 1829, 28, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(28, 1830, 29, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(29, 1831, 30, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(30, 1832, 31, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(31, 1833, 32, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(32, 1834, 33, 'admission', 1, 17, 29, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(33, 1838, 34, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(34, 1839, 35, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(35, 1840, 36, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(36, 1841, 37, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(37, 1842, 38, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(38, 1843, 39, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(39, 1844, 40, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(40, 1845, 41, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(41, 1846, 42, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(42, 1847, 43, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(43, 1848, 44, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(44, 1849, 45, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(45, 1850, 46, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(46, 1851, 47, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(47, 1852, 48, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(48, 1853, 49, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(49, 1854, 50, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(50, 1855, 51, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(51, 1856, 52, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(52, 1857, 53, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(53, 1858, 54, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(54, 1859, 55, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(55, 1860, 56, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(56, 1861, 57, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(57, 1862, 58, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(58, 1863, 59, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(59, 1864, 60, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(60, 1865, 61, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(61, 1866, 62, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(62, 1867, 63, 'admission', 1, 18, 32, 0, 0, 0, 1, 0, 0, 0, '', '', 1790, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(63, 1838, 34, 'completed', 1, 18, 32, 1, 18, 32, 1, 0, -1, -1, '', '', 1790, '2017-10-15 23:04:03', '2017-10-15 23:04:03'),
(64, 1839, 35, 'completed', 1, 18, 32, 1, 18, 32, 1, 0, -1, -1, '', '', 1790, '2017-10-15 23:04:36', '2017-10-15 23:04:36'),
(65, 1805, 4, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', '', 1790, '2017-10-15 23:07:36', '2017-10-15 23:07:36'),
(66, 1806, 5, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', '', 1790, '2017-10-15 23:08:14', '2017-10-15 23:08:14'),
(67, 1807, 6, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', '', 1790, '2017-10-16 00:05:33', '2017-10-16 00:05:33'),
(68, 1808, 7, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', 'نتاوتل نتلن', 1790, '2017-10-16 00:06:59', '2017-10-16 00:06:59'),
(69, 1809, 8, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(70, 1810, 9, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(71, 1811, 10, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(72, 1812, 11, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(73, 1813, 12, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(74, 1814, 13, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(75, 1815, 14, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(76, 1816, 15, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(77, 1817, 16, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(78, 1818, 17, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(79, 1819, 18, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(80, 1820, 19, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(81, 1821, 20, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(82, 1822, 21, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(83, 1823, 22, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(84, 1824, 23, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(85, 1825, 24, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(86, 1826, 25, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(87, 1827, 26, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(88, 1828, 27, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(89, 1829, 28, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(90, 1830, 29, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(91, 1831, 30, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(92, 1832, 31, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(93, 1833, 32, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(94, 1834, 33, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:07:31', '2017-10-16 00:07:31'),
(95, 1809, 8, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(96, 1810, 9, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(97, 1811, 10, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(98, 1812, 11, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(99, 1813, 12, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(100, 1814, 13, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(101, 1815, 14, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(102, 1816, 15, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(103, 1817, 16, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(104, 1818, 17, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(105, 1819, 18, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(106, 1820, 19, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(107, 1821, 20, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(108, 1822, 21, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(109, 1823, 22, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(110, 1824, 23, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(111, 1825, 24, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(112, 1826, 25, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(113, 1827, 26, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(114, 1828, 27, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(115, 1829, 28, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(116, 1830, 29, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(117, 1831, 30, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(118, 1832, 31, 'detained', 1, 17, 30, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(119, 1833, 32, 'detained', 1, 17, 30, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(120, 1834, 33, 'detained', 1, 17, 30, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-10-16 00:08:02', '2017-10-16 00:08:02'),
(121, 1809, 8, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', '', 1790, '2017-12-13 16:35:35', '2017-12-13 16:35:35'),
(122, 1842, 38, 'completed', 1, 18, 32, 1, 18, 32, 1, 0, -1, -1, '', '', 1790, '2017-12-13 16:36:44', '2017-12-13 16:36:44'),
(123, 1845, 41, 'completed', 1, 18, 32, 1, 18, 32, 1, 0, -1, -1, '', '', 1790, '2017-12-13 16:40:45', '2017-12-13 16:40:45'),
(124, 1831, 30, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', '', 1790, '2017-12-13 23:06:42', '2017-12-13 23:06:42'),
(125, 1830, 29, 'completed', 1, 17, 29, 1, 17, 29, 1, 0, -1, -1, '', 'تم انتهاء الصف الاول الابتدائي ', 1790, '2017-12-19 10:04:12', '2017-12-19 10:04:12'),
(126, 1810, 9, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(127, 1811, 10, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(128, 1812, 11, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(129, 1813, 12, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(130, 1814, 13, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(131, 1815, 14, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(132, 1816, 15, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(133, 1817, 16, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(134, 1818, 17, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(135, 1819, 18, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(136, 1820, 19, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(137, 1821, 20, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(138, 1822, 21, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(139, 1823, 22, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(140, 1824, 23, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(141, 1825, 24, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(142, 1826, 25, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(143, 1827, 26, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(144, 1828, 27, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(145, 1829, 28, 'promoted', 1, 17, 29, 1, 18, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:47:18', '2017-12-22 06:47:18'),
(146, 1810, 9, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(147, 1811, 10, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(148, 1812, 11, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(149, 1813, 12, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(150, 1814, 13, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(151, 1815, 14, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(152, 1816, 15, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(153, 1817, 16, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(154, 1818, 17, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(155, 1819, 18, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(156, 1820, 19, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(157, 1821, 20, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(158, 1822, 21, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(159, 1823, 22, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(160, 1824, 23, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(161, 1825, 24, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(162, 1826, 25, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(163, 1827, 26, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(164, 1828, 27, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(165, 1829, 28, 'promoted', 1, 18, 31, 1, 17, 0, 1, 0, 1, 0, '', '', 1790, '2017-12-22 06:50:50', '2017-12-22 06:50:50'),
(166, 1810, 9, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(167, 1811, 10, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(168, 1812, 11, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(169, 1813, 12, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(170, 1814, 13, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(171, 1815, 14, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(172, 1816, 15, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(173, 1817, 16, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(174, 1818, 17, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(175, 1819, 18, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(176, 1820, 19, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(177, 1821, 20, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(178, 1822, 21, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(179, 1823, 22, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(180, 1824, 23, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(181, 1825, 24, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(182, 1826, 25, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(183, 1827, 26, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(184, 1828, 27, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(185, 1829, 28, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(186, 1830, 29, 'promoted', 1, 17, 29, 1, 18, 32, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:09:26', '2017-12-24 03:09:26'),
(187, 1810, 9, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(188, 1811, 10, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(189, 1812, 11, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(190, 1813, 12, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(191, 1814, 13, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(192, 1815, 14, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(193, 1816, 15, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(194, 1817, 16, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(195, 1818, 17, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(196, 1819, 18, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(197, 1820, 19, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(198, 1821, 20, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(199, 1822, 21, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(200, 1823, 22, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(201, 1824, 23, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(202, 1825, 24, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(203, 1826, 25, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(204, 1827, 26, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(205, 1828, 27, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(206, 1829, 28, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(207, 1830, 29, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(208, 1840, 36, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(209, 1841, 37, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(210, 1843, 39, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(211, 1844, 40, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(212, 1846, 42, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(213, 1847, 43, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(214, 1848, 44, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(215, 1849, 45, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(216, 1850, 46, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(217, 1851, 47, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(218, 1852, 48, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(219, 1853, 49, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(220, 1854, 50, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(221, 1855, 51, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(222, 1856, 52, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(223, 1857, 53, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(224, 1858, 54, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(225, 1859, 55, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(226, 1860, 56, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(227, 1861, 57, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(228, 1862, 58, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(229, 1863, 59, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(230, 1864, 60, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(231, 1865, 61, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(232, 1866, 62, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(233, 1867, 63, 'promoted', 1, 18, 32, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 03:12:35', '2017-12-24 03:12:35'),
(234, 1810, 9, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(235, 1811, 10, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(236, 1812, 11, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(237, 1813, 12, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(238, 1814, 13, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(239, 1815, 14, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(240, 1816, 15, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(241, 1817, 16, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(242, 1818, 17, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(243, 1819, 18, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(244, 1820, 19, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(245, 1821, 20, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(246, 1822, 21, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(247, 1823, 22, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(248, 1824, 23, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(249, 1825, 24, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(250, 1826, 25, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(251, 1827, 26, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(252, 1828, 27, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(253, 1829, 28, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(254, 1830, 29, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(255, 1840, 36, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(256, 1841, 37, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(257, 1843, 39, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(258, 1844, 40, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(259, 1846, 42, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(260, 1847, 43, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(261, 1848, 44, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(262, 1849, 45, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(263, 1850, 46, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(264, 1851, 47, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(265, 1852, 48, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(266, 1853, 49, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(267, 1854, 50, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(268, 1855, 51, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(269, 1856, 52, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(270, 1857, 53, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(271, 1858, 54, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(272, 1859, 55, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(273, 1860, 56, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(274, 1861, 57, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(275, 1862, 58, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(276, 1863, 59, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(277, 1864, 60, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(278, 1865, 61, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(279, 1866, 62, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(280, 1867, 63, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:00', '2017-12-24 05:01:00'),
(281, 1810, 9, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(282, 1811, 10, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(283, 1812, 11, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(284, 1813, 12, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(285, 1814, 13, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(286, 1815, 14, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(287, 1816, 15, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(288, 1817, 16, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(289, 1818, 17, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(290, 1819, 18, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(291, 1820, 19, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(292, 1821, 20, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(293, 1822, 21, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(294, 1823, 22, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(295, 1824, 23, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(296, 1825, 24, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(297, 1826, 25, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(298, 1827, 26, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(299, 1828, 27, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(300, 1829, 28, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(301, 1830, 29, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(302, 1832, 31, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(303, 1833, 32, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(304, 1834, 33, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(305, 1840, 36, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(306, 1841, 37, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(307, 1843, 39, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(308, 1844, 40, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(309, 1846, 42, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(310, 1847, 43, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(311, 1848, 44, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(312, 1849, 45, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(313, 1850, 46, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(314, 1851, 47, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(315, 1852, 48, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(316, 1853, 49, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(317, 1854, 50, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(318, 1855, 51, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(319, 1856, 52, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(320, 1857, 53, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(321, 1858, 54, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(322, 1859, 55, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(323, 1860, 56, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(324, 1861, 57, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(325, 1862, 58, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(326, 1863, 59, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(327, 1864, 60, 'detained', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(328, 1865, 61, 'detained', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(329, 1866, 62, 'detained', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(330, 1867, 63, 'detained', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-24 05:01:42', '2017-12-24 05:01:42'),
(331, 1810, 9, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(332, 1811, 10, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(333, 1812, 11, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(334, 1813, 12, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(335, 1814, 13, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(336, 1815, 14, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(337, 1816, 15, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(338, 1817, 16, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(339, 1818, 17, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(340, 1819, 18, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(341, 1820, 19, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(342, 1821, 20, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(343, 1822, 21, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(344, 1823, 22, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(345, 1824, 23, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(346, 1825, 24, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(347, 1826, 25, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(348, 1827, 26, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(349, 1828, 27, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(350, 1829, 28, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(351, 1830, 29, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(352, 1832, 31, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(353, 1833, 32, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(354, 1834, 33, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(355, 1840, 36, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(356, 1841, 37, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(357, 1843, 39, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(358, 1844, 40, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(359, 1846, 42, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(360, 1847, 43, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(361, 1848, 44, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(362, 1849, 45, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(363, 1850, 46, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(364, 1851, 47, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(365, 1852, 48, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(366, 1853, 49, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(367, 1854, 50, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(368, 1855, 51, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(369, 1856, 52, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(370, 1857, 53, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(371, 1858, 54, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(372, 1859, 55, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(373, 1860, 56, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(374, 1861, 57, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(375, 1862, 58, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(376, 1863, 59, 'promoted', 1, 17, 29, 1, 17, 30, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:29', '2017-12-26 07:34:29'),
(377, 1810, 9, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(378, 1811, 10, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(379, 1812, 11, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(380, 1813, 12, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(381, 1814, 13, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(382, 1815, 14, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(383, 1816, 15, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(384, 1817, 16, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(385, 1818, 17, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(386, 1819, 18, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(387, 1820, 19, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(388, 1821, 20, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(389, 1822, 21, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(390, 1823, 22, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(391, 1824, 23, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(392, 1825, 24, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(393, 1826, 25, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(394, 1827, 26, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(395, 1828, 27, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(396, 1829, 28, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(397, 1830, 29, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(398, 1832, 31, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(399, 1833, 32, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(400, 1834, 33, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(401, 1840, 36, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(402, 1841, 37, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(403, 1843, 39, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(404, 1844, 40, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(405, 1846, 42, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(406, 1847, 43, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(407, 1848, 44, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(408, 1849, 45, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(409, 1850, 46, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(410, 1851, 47, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(411, 1852, 48, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(412, 1853, 49, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55');
INSERT INTO `studentpromotions` (`id`, `user_id`, `student_id`, `type`, `from_academic_id`, `from_course_parent_id`, `from_course_id`, `to_academic_id`, `to_course_parent_id`, `to_course_id`, `from_year`, `from_semister`, `to_year`, `to_semister`, `description`, `remarks`, `record_updated_by`, `created_at`, `updated_at`) VALUES
(413, 1854, 50, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(414, 1855, 51, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(415, 1856, 52, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(416, 1857, 53, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(417, 1858, 54, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(418, 1859, 55, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(419, 1860, 56, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(420, 1861, 57, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(421, 1862, 58, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(422, 1863, 59, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(423, 1864, 60, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(424, 1865, 61, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(425, 1866, 62, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55'),
(426, 1867, 63, 'promoted', 1, 17, 30, 1, 17, 29, 1, 0, 1, 0, '', '', 1790, '2017-12-26 07:34:55', '2017-12-26 07:34:55');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `academic_id`, `course_parent_id`, `course_id`, `first_name`, `middle_name`, `last_name`, `user_id`, `date_of_birth`, `date_of_join`, `gender`, `marital_status`, `blood_group`, `fathers_name`, `mothers_name`, `mother_tongue`, `nationality`, `category_id`, `religion_id`, `parent_first_name`, `parent_last_name`, `parent_relation`, `parent_education`, `parent_occupation`, `parent_income`, `parent_email`, `parent_address_lane1`, `parent_address_lane2`, `parent_city`, `parent_state`, `parent_country`, `parent_phone1`, `parent_phone2`, `parent_mobile`, `parent_user_id`, `guardian_name`, `guardian_phone`, `relationship_with_guardian`, `guardian_email`, `address_lane1`, `address_lane2`, `city`, `state`, `zipcode`, `country`, `mobile`, `home_phone`, `previous_institute_name`, `previous_institute_address`, `previous_highest_qualification`, `previous_highest_qualification_percentage`, `year_passing`, `current_year`, `current_semister`, `other_information`, `settings`, `extra_fields`, `record_updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ACA1796', '17Primary3th_primary00001', 1, 2, 5, 'يامن', 'منتصر ', 'الصاوي', 1796, '2009-07-05', '2017-10-12', 'male', 'single', '', 'منتصر', 'نور', 'العربية', 'EG', 1, 1, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, 'منتصر', '0548300367', 'الوالد', 'montaserelsawy@gmail.com', 'شارع يحي بن ثابت', 'تقاطع ١', 'المدينة المنورة', 'العريض', '42314', 'SA', '0548300367', '0548300367', '', '', '', '', '', 1, 0, '', '', NULL, 1790, NULL, '2017-08-15 12:05:03', '2017-10-12 12:44:05'),
(2, 'ACA1801', NULL, 0, 0, 0, 'Student', '', '', 1801, NULL, NULL, 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', NULL, 0, NULL, '2017-10-13 12:12:38', '2017-10-13 12:12:38'),
(4, 'ACA1805', '171st_pri10100002', 1, 17, 29, 'a', 'b', 'c', 1805, '2010-01-02', '2017-12-13', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 03:46:47', '2017-10-16 04:07:36'),
(5, 'ACA1806', '171st_pri10100003', 1, 17, 29, 'a', 'b', 'c', 1806, '2010-01-03', '2017-12-14', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 03:46:47', '2017-10-16 04:08:14'),
(6, 'ACA1807', '171st_pri10100004', 1, 17, 29, 'a', 'b', 'c', 1807, '2010-01-04', '2017-12-15', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 03:46:47', '2017-10-16 05:05:33'),
(7, 'ACA1808', '171st_pri10100005', 1, 17, 29, 'a', 'b', 'c', 1808, '2010-01-05', '2017-12-16', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-10-16 05:06:59'),
(8, 'ACA1809', '171st_pri10100006', 1, 17, 29, 'a', 'b', 'c', 1809, '2010-01-06', '2017-12-17', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-13 22:35:35'),
(9, 'ACA1810', '171st_pri10100007', 1, 17, 29, 'a', 'b', 'c', 1810, '2010-01-07', '2017-12-18', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(10, 'ACA1811', '171st_pri10100008', 1, 17, 29, 'a', 'b', 'c', 1811, '2010-01-08', '2017-12-19', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(11, 'ACA1812', '171st_pri10100009', 1, 17, 29, 'a', 'b', 'c', 1812, '2010-01-09', '2017-12-20', 'male', 'single', 'B +ve', 'منتصر', 'نور', 'العربية', 'SA', 1, 1, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, 'Montaser El-Sawy', '548300367', 'الوالد', 'montaserelsawy3@gmail.com', 'dش', 'سيشسd', 'Madina', 'العريض', '42314', 'SA', '548300367', '548300367', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(12, 'ACA1813', '171st_pri10100010', 1, 17, 29, 'a', 'b', 'c', 1813, '2010-01-10', '2017-12-21', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(13, 'ACA1814', '171st_pri10100011', 1, 17, 29, 'a', 'b', 'c', 1814, '2010-01-11', '2017-12-22', 'male', 'single', 'A -ve', 'منتصر', 'نور', 'العربية', 'SA', 1, 1, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, 'Montaser El-Sawy', '548300367', 'الوالد', 'montaserelsawy2@gmail.com', 'dasd', 'asdfas', 'Madina', 'العريض', '42314', 'SA', '548300367', '548300367', '', '', '', '', '', 1, 0, '', '', NULL, 1790, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(14, 'ACA1815', '171st_pri10100012', 1, 17, 29, 'a', 'b', 'c', 1815, '2010-01-12', '2017-12-23', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(15, 'ACA1816', '171st_pri10100013', 1, 17, 29, 'a', 'b', 'c', 1816, '2010-01-13', '2017-12-24', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(16, 'ACA1817', '171st_pri10100014', 1, 17, 29, 'a', 'b', 'c', 1817, '2010-01-14', '2017-12-25', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:48', '2017-12-26 07:34:55'),
(17, 'ACA1818', '171st_pri10100015', 1, 17, 29, 'a', 'b', 'c', 1818, '2010-01-15', '2017-12-26', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(18, 'ACA1819', '171st_pri10100016', 1, 17, 29, 'a', 'b', 'c', 1819, '2010-01-16', '2017-12-27', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(19, 'ACA1820', '171st_pri10100017', 1, 17, 29, 'a', 'b', 'c', 1820, '2010-01-17', '2017-12-28', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(20, 'ACA1821', '171st_pri10100018', 1, 17, 29, 'a', 'b', 'c', 1821, '2010-01-18', '2017-12-29', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(21, 'ACA1822', '171st_pri10100019', 1, 17, 29, 'a', 'b', 'c', 1822, '2010-01-19', '2017-12-30', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(22, 'ACA1823', '171st_pri10100020', 1, 17, 29, 'a', 'b', 'c', 1823, '2010-01-20', '2017-12-31', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(23, 'ACA1824', '171st_pri10100021', 1, 17, 29, 'a', 'b', 'c', 1824, '2010-01-21', '2018-01-01', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(24, 'ACA1825', '171st_pri10100022', 1, 17, 29, 'a', 'b', 'c', 1825, '2010-01-22', '2018-01-02', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(25, 'ACA1826', '171st_pri10100023', 1, 17, 29, 'a', 'b', 'c', 1826, '2010-01-23', '2018-01-03', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:49', '2017-12-26 07:34:55'),
(26, 'ACA1827', '171st_pri10100024', 1, 17, 29, 'a', 'b', 'c', 1827, '2010-01-24', '2018-01-04', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(27, 'ACA1828', '171st_pri10100025', 1, 17, 29, 'a', 'b', 'c', 1828, '2010-01-25', '2018-01-05', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(28, 'ACA1829', '171st_pri10100026', 1, 17, 29, 'a', 'b', 'c', 1829, '2010-01-26', '2018-01-06', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(29, 'ACA1830', '171st_pri10100027', 1, 17, 29, 'a', 'b', 'c', 1830, '2010-01-27', '2018-01-07', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(30, 'ACA1831', '171st_pri10100028', 1, 17, 29, 'a', 'b', 'c', 1831, '2010-01-28', '2018-01-08', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-14 05:06:42'),
(31, 'ACA1832', '171st_pri10100029', 1, 17, 29, 'a', 'b', 'c', 1832, '2010-01-29', '2018-01-09', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(32, 'ACA1833', '171st_pri10100030', 1, 17, 29, 'a', 'b', 'c', 1833, '2010-01-30', '2018-01-10', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(33, 'ACA1834', '171st_pri10100031', 1, 17, 29, 'a', 'b', 'c', 1834, '2010-01-31', '2018-01-11', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 03:46:50', '2017-12-26 07:34:55'),
(34, 'ACA1838', '172nd_pri10400001', 1, 18, 32, 'a', 'b', 'c', 1838, '2009-01-02', '2016-11-09', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2017-10-16 04:04:03'),
(35, 'ACA1839', '172nd_pri10400002', 1, 18, 32, 'a', 'b', 'c', 1839, '2009-01-03', '2016-11-10', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2017-10-16 04:04:36'),
(36, 'ACA1840', '172nd_pri10400003', 1, 17, 29, 'a', 'b', 'c', 1840, '2009-01-04', '2016-11-11', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2017-12-26 07:34:55'),
(37, 'ACA1841', '172nd_pri10400004', 1, 17, 29, 'a', 'b', 'c', 1841, '2009-01-05', '2016-11-12', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:13', '2017-12-26 07:34:55'),
(38, 'ACA1842', '172nd_pri10400005', 1, 18, 32, 'a', 'b', 'c', 1842, '2009-01-06', '2016-11-13', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-13 22:36:44'),
(39, 'ACA1843', '172nd_pri10400006', 1, 17, 29, 'a', 'b', 'c', 1843, '2009-01-07', '2016-11-14', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(40, 'ACA1844', '172nd_pri10400007', 1, 17, 29, 'a', 'b', 'c', 1844, '2009-01-08', '2016-11-15', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(41, 'ACA1845', '172nd_pri10400008', 1, 18, 32, 'a', 'b', 'c', 1845, '2009-01-09', '2016-11-16', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', -1, -1, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-13 22:40:45'),
(42, 'ACA1846', '172nd_pri10400009', 1, 17, 29, 'a', 'b', 'c', 1846, '2009-01-10', '2016-11-17', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(43, 'ACA1847', '172nd_pri10400010', 1, 17, 29, 'a', 'b', 'c', 1847, '2009-01-11', '2016-11-18', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(44, 'ACA1848', '172nd_pri10400011', 1, 17, 29, 'a', 'b', 'c', 1848, '2009-01-12', '2016-11-19', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(45, 'ACA1849', '172nd_pri10400012', 1, 17, 29, 'a', 'b', 'c', 1849, '2009-01-13', '2016-11-20', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(46, 'ACA1850', '172nd_pri10400013', 1, 17, 29, 'a', 'b', 'c', 1850, '2009-01-14', '2016-11-21', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:14', '2017-12-26 07:34:55'),
(47, 'ACA1851', '172nd_pri10400014', 1, 17, 29, 'a', 'b', 'c', 1851, '2009-01-15', '2016-11-22', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(48, 'ACA1852', '172nd_pri10400015', 1, 17, 29, 'a', 'b', 'c', 1852, '2009-01-16', '2016-11-23', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(49, 'ACA1853', '172nd_pri10400016', 1, 17, 29, 'a', 'b', 'c', 1853, '2009-01-17', '2016-11-24', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(50, 'ACA1854', '172nd_pri10400017', 1, 17, 29, 'a', 'b', 'c', 1854, '2009-01-18', '2016-11-25', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(51, 'ACA1855', '172nd_pri10400018', 1, 17, 29, 'a', 'b', 'c', 1855, '2009-01-19', '2016-11-26', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(52, 'ACA1856', '172nd_pri10400019', 1, 17, 29, 'a', 'b', 'c', 1856, '2009-01-20', '2016-11-27', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(53, 'ACA1857', '172nd_pri10400020', 1, 17, 29, 'a', 'b', 'c', 1857, '2009-01-21', '2016-11-28', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(54, 'ACA1858', '172nd_pri10400021', 1, 17, 29, 'a', 'b', 'c', 1858, '2009-01-22', '2016-11-29', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(55, 'ACA1859', '172nd_pri10400022', 1, 17, 29, 'a', 'b', 'c', 1859, '2009-01-23', '2016-11-30', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(56, 'ACA1860', '172nd_pri10400023', 1, 17, 29, 'a', 'b', 'c', 1860, '2009-01-24', '2016-12-01', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:15', '2017-12-26 07:34:55'),
(57, 'ACA1861', '172nd_pri10400024', 1, 17, 29, 'a', 'b', 'c', 1861, '2009-01-25', '2016-12-02', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55'),
(58, 'ACA1862', '172nd_pri10400025', 1, 17, 29, 'a', 'b', 'c', 1862, '2009-01-26', '2016-12-03', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55'),
(59, 'ACA1863', '172nd_pri10400026', 1, 17, 29, 'a', 'b', 'c', 1863, '2009-01-27', '2016-12-04', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55'),
(60, 'ACA1864', '172nd_pri10400027', 1, 17, 29, 'a', 'b', 'c', 1864, '2009-01-28', '2016-12-05', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55'),
(61, 'ACA1865', '172nd_pri10400028', 1, 17, 29, 'a', 'b', 'c', 1865, '2009-01-29', '2016-12-06', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55'),
(62, 'ACA1866', '172nd_pri10400029', 1, 17, 29, 'a', 'b', 'c', 1866, '2009-01-30', '2016-12-07', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55'),
(63, 'ACA1867', '172nd_pri10400030', 1, 17, 29, 'a', 'b', 'c', 1867, '2009-01-31', '2016-12-08', 'male', 'single', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '0.00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', '', NULL, 0, NULL, '2017-10-16 04:01:16', '2017-12-26 07:34:55');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjectpreferences`
--

INSERT INTO `subjectpreferences` (`id`, `slug`, `user_id`, `staff_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(29, '', 1868, 12, 19, '2017-12-19 22:35:18', '2017-12-19 22:35:18'),
(30, '', 1868, 12, 16, '2017-12-19 22:35:18', '2017-12-19 22:35:18'),
(31, '', 1868, 12, 4, '2017-12-19 22:35:18', '2017-12-19 22:35:18'),
(32, '', 1800, 7, 3, '2017-12-19 22:42:58', '2017-12-19 22:42:58');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_title`, `subject_code`, `slug`, `maximum_marks`, `pass_marks`, `is_lab`, `is_elective_type`, `internal_marks`, `external_marks`, `status`, `created_at`, `updated_at`) VALUES
(1, 'اللغة العربية', 'arabic_primary', 'allgh-alaarby-142b6815ba625eb7dcfe29e407f8f2c98bd8', 100, 40, 0, 0, 20, 60, 'Active', '2017-08-10 01:23:18', '2017-08-10 01:23:18'),
(2, 'اللغة الانجليزية', 'english_primary', 'allgh-alanjlyzy-aab8e1fcb06f533c22216a850e30f17d54', 100, 40, 0, 0, 20, 60, 'Active', '2017-08-10 01:23:39', '2017-08-10 01:23:39'),
(3, 'الرياضيات', 'math_primary', 'alryadyat-82fa51e9e4d703a360fc5c8dc3013c047f474137', 100, 40, 0, 0, 20, 60, 'Active', '2017-08-10 01:23:59', '2017-10-13 07:50:03'),
(4, 'العلوم', '101', 'alaalom-748cd01efd6748cacc2ad4c778e69a9e254b72cb', 100, 40, 1, 0, 20, 60, 'Active', '2017-10-13 07:50:25', '2017-10-13 07:50:25'),
(5, 'تاريخ', '102', 'tarykh-b64abf8d3f8aad1e56c975613e9f4539f544c887', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:50:40', '2017-10-13 07:50:40'),
(6, 'فقه', '103', 'fkh-acff5a4089bf0d13122ba8d6309519e8a1383cd5', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:50:55', '2017-10-13 07:50:55'),
(7, 'أدب', '104', 'adb-ea0ad754127ac7c4e4596d34368584d63564239e', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:51:08', '2017-10-13 07:51:08'),
(8, 'حاسب آلي	', '105', 'hasb-aaly-e6006f9c839f6a440651f1707fffd4cc72e232a7', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:51:19', '2017-10-13 07:51:19'),
(9, 'القرآن الكريم	', '106', 'alkraan-alkrym-349d7919368f6a80f03c08f090829116dec', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:51:31', '2017-10-13 07:51:31'),
(10, 'توحيد', '107', 'tohyd-c503083c45cbca3a27b12db4c9a08d8c362ca8c4', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:52:17', '2017-10-13 07:52:17'),
(11, 'تجويد', '108', 'tjoyd-cc0d1e80fa1fe74af1af372afaea4163de61bfaf', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:52:36', '2017-10-13 07:52:36'),
(12, 'حديث', '109', 'hdyth-7009fed90932cee6238bb0fc95684fe991e5ac9a', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:53:44', '2017-10-13 07:53:44'),
(13, 'اجتماعيات', '110', 'ajtmaaayat-2259f455939cd48719fee11171551ea6bf150db', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:53:55', '2017-10-13 07:53:55'),
(14, 'جغرفيا', '111', 'jghrfya-a87bcf37c9d9d466091398f03013ed4c424130c3', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:54:04', '2017-10-13 07:54:04'),
(15, 'تربية وطنية	', '112', 'trby-otny-b6e6ef1b47913dec0d769ef682bc1490a6f4f0c9', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:54:17', '2017-10-13 07:54:17'),
(16, 'كيمياء', '113', 'kymya-0248f4b6f03d6aeda32c657e40c949dac20375c2', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:54:30', '2017-10-13 07:54:30'),
(17, 'فيزياء', '114', 'fyzya-56f4f4c59fd4c254749b9ab9c6176ac980b4d7a0', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:54:40', '2017-10-13 07:54:40'),
(18, 'علم أرض', '115', 'aalm-ard-11cadc157b1f49f9abfc66ba1d6f2cef6097a35f', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:54:52', '2017-10-13 07:54:52'),
(19, 'أحياء', '116', 'ahya-79644223b808b03f16460fe656405c20b2c53740', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:55:00', '2017-10-13 07:55:00'),
(20, 'تفسير متوسط', '117', 'tfsyr-mtost-f642663dd24ca99d09239dab49e09c24b9bc2f', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:55:16', '2017-10-13 07:55:16'),
(21, 'تعبير', '118', 'taabyr-5fe5bfb185e55e9878fcd1b658451136c25ecc96', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:55:23', '2017-10-13 07:55:23'),
(22, 'نحو', '119', 'nho-2777f3d1282773a8fbe366178e765b405fdb3f73', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:55:34', '2017-10-13 07:55:34'),
(23, 'مكتبة', '120', 'mktb-ec73393eda1335cb9460d7c6cb4a304d7ebc2ef1', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:55:39', '2017-10-13 07:55:39'),
(24, 'اسلاميات', '121', 'aslamyat-d8b3af0230583c176b86af5fab3bde603748865d', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:56:27', '2017-10-13 07:56:27'),
(25, 'التربية الأسرية', '122', 'altrby-alasry-4f20097734f8b604c321d5160620ab70ed4c', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:56:35', '2017-10-13 07:56:35'),
(26, 'مربية الفصل', '123', 'mrby-alfsl-01672a6540a02a356362da69bf154cb6e5867e7', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:56:43', '2017-10-13 07:56:43'),
(27, 'التربية الفنية', '124', 'altrby-alfny-f61f66913a9edace8c2b23f5c4717951625b0', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:56:53', '2017-10-13 07:56:53'),
(28, 'نشاط', '125', 'nshat-cf6e90225d6d2274f17b688d63c4139a2c04912d', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:57:02', '2017-10-13 07:57:02'),
(29, 'اقتصاد', '126', 'aktsad-51532ca59ed784b35aa76cdf1d7a86aa34dcb9b8', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:57:10', '2017-10-13 07:57:10'),
(30, 'تربية بدنية', '127', 'trby-bdny-88d9387fef64322c0fdaf50cc91afaf62dfe47bb', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:57:20', '2017-10-13 07:57:20'),
(31, 'قدرات', '128', 'kdrat-42937db720f10a951977fa4ec01f8a11987d88f6', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:57:28', '2017-10-13 07:57:28'),
(32, 'إملاء', '129', 'emla-1e49547295437a46e18d58d1079c04cfee468a72', 100, 40, 0, 0, 20, 60, 'Active', '2017-10-13 07:57:39', '2017-10-13 07:57:39'),
(33, 'فرنساوى', 'M1', 'frnsao-db442968dcf1e7499ab02d48a7800b3653ad8d5f', 100, 40, 0, 0, 20, 60, 'Active', '2017-12-24 01:12:29', '2017-12-24 01:12:29');

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
  `stripe_plan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `slug`, `academic_id`, `course_id`, `day`, `timingset_id`, `timingset_map_id`, `timingset_details_id`, `user_id`, `subject_id`, `year`, `semister`, `created_at`, `updated_at`) VALUES
(1, '', 1, 29, 1, 8, 1, 4, 1800, 3, 1, 1, '2017-12-20 01:52:41', '2017-12-20 01:52:41'),
(2, '', 1, 29, 1, 8, 1, 5, 1835, 2, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(3, '', 1, 29, 1, 8, 1, 6, 1836, 1, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(4, '', 1, 29, 1, 8, 1, 7, 1868, 4, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(5, '', 1, 29, 1, 8, 1, 9, 1800, 3, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(6, '', 1, 29, 1, 8, 1, 10, 1836, 3, 1, 1, '2017-12-20 04:22:36', '2017-12-26 07:44:34'),
(7, '', 1, 29, 2, 8, 2, 4, 1800, 3, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(8, '', 1, 29, 2, 8, 2, 5, 1835, 2, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(9, '', 1, 29, 2, 8, 2, 6, 1836, 1, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(10, '', 1, 29, 2, 8, 2, 7, 1800, 3, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(11, '', 1, 29, 2, 8, 2, 9, 1868, 4, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(12, '', 1, 29, 2, 8, 2, 10, 1868, 4, 1, 1, '2017-12-20 04:22:36', '2017-12-20 04:22:36'),
(13, '', 1, 29, 4, 8, 4, 9, 1868, 6, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34'),
(14, '', 1, 29, 5, 8, 5, 7, 1868, 4, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34'),
(15, '', 1, 29, 5, 8, 5, 9, 1868, 6, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34'),
(16, '', 1, 29, 5, 8, 5, 10, 1836, 3, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34'),
(17, '', 1, 29, 6, 8, 6, 6, 1836, 3, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34'),
(18, '', 1, 29, 6, 8, 6, 9, 1868, 6, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34'),
(19, '', 1, 29, 6, 8, 6, 10, 1836, 3, 1, 1, '2017-12-26 07:44:34', '2017-12-26 07:44:34');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timingset`
--

INSERT INTO `timingset` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(8, 'Daily', 'daily', 'Daily', '2016-12-13 08:52:32', '2017-10-16 22:55:38');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timingsetdetails`
--

INSERT INTO `timingsetdetails` (`id`, `timingset_id`, `period_name`, `start_time`, `end_time`, `is_break`, `created_at`, `updated_at`) VALUES
(4, 8, 'الاولي', '07:30:00', '08:10:00', 0, '2017-10-16 22:59:11', '2017-10-16 23:03:26'),
(5, 8, 'الثانية', '08:10:00', '08:50:00', 0, '2017-10-16 22:59:11', '2017-10-16 23:03:26'),
(6, 8, 'الثالثة', '08:50:00', '09:30:00', 0, '2017-10-16 22:59:11', '2017-10-16 23:03:26'),
(7, 8, 'الرابعة', '09:30:00', '10:10:00', 0, '2017-10-16 22:59:11', '2017-10-16 23:03:26'),
(8, 8, 'الفسحة', '10:10:00', '10:40:00', 1, '2017-10-16 22:59:11', '2017-10-16 23:03:26'),
(9, 8, 'الخامسة', '10:40:00', '11:30:00', 0, '2017-10-16 22:59:11', '2017-10-16 23:03:26'),
(10, 8, 'السادسة', '11:30:00', '12:10:00', 0, '2017-10-16 23:03:26', '2017-10-16 23:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `timingsetmap`
--

CREATE TABLE IF NOT EXISTS `timingsetmap` (
  `id` bigint(20) unsigned NOT NULL,
  `day` int(11) NOT NULL,
  `timingset_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timingsetmap`
--

INSERT INTO `timingsetmap` (`id`, `day`, `timingset_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, NULL, NULL),
(2, 2, 8, NULL, NULL),
(3, 3, 8, NULL, NULL),
(4, 4, 8, NULL, NULL),
(5, 5, 8, NULL, NULL),
(6, 6, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `topic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `subject_id`, `parent_id`, `topic_name`, `slug`, `description`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'النصوص', 'alnsos-bd1e8cc1ee53d0225f9ea6bb49d037a19842b2e5', '', 1, '2017-08-10 01:29:17', '2017-08-10 01:29:17'),
(2, 1, 1, 'قصيدة شعرية', 'ksyd-shaary-da6fbc80cb20001b42e878968baed93aca767d', '', 1, '2017-08-10 01:29:40', '2017-08-10 01:29:40'),
(3, 2, 0, 'القواعد', 'alkoaaad-0bb77668eb0613926e5413f4ea5e90575c894ed2', '', 1, '2017-08-10 01:30:04', '2017-08-10 01:30:16'),
(4, 3, 0, 'الوحدة الثانية', 'alohd-althany-91b9f40bac6faf462267458beb5e80d70c24', '', 1, '2017-10-16 23:10:51', '2017-12-17 23:00:31'),
(5, 3, 0, 'الوحدة الاولي', 'alohd-alaoly-b81bed758ef4b603dbf71fdc087d0ba842678', '', 1, '2017-10-16 23:11:10', '2017-12-17 23:00:11'),
(6, 4, 0, 'الوحدة الاولي', 'alohd-alaoly-94183a016216711f412159d235b32699df7ae', '', 1, '2017-10-16 23:11:26', '2017-12-13 06:28:08'),
(7, 4, 0, 'الوحدة الثانية', 'alohd-althany-dc2c5fa8df68be9b0cfcf4de0db74d03e962', '', 1, '2017-10-16 23:11:36', '2017-12-13 06:28:33'),
(8, 4, 6, 'كوكب المريخ', 'kokb-almrykh-335def4a24d8c36f764b9e9a10a7cd2587319', 'كوكب المريخ', 1, '2017-12-13 06:27:15', '2017-12-13 06:27:15'),
(9, 4, 6, 'كوكب زحل', 'kokb-zhl-3ea39c60eadb7371210a9e9e31aeeeab84ab618f', 'كوكب زحل', 1, '2017-12-13 06:27:46', '2017-12-13 06:27:46'),
(10, 3, 4, 'حساب الارقام', 'hsab-alarkam-72c96c80e090441219570354aa94a0b9a15bc', '', 1, '2017-12-17 23:00:49', '2017-12-17 23:00:49'),
(11, 3, 5, ' الارقام العشرية', 'alarkam-alaashry-0143612cab08603bbb80a2cb63cbbc44c', '', 1, '2017-12-17 23:01:00', '2017-12-17 23:01:00'),
(12, 3, 5, 'عمليات الجمع', 'aamlyat-aljmaa-4e949862a5e17f8ebb0e513ac7bb9f232d7', '', 1, '2017-12-24 01:16:51', '2017-12-24 01:16:51'),
(13, 3, 4, 'عمليات القسمة ', 'aamlyat-alksm-fdd93798fd7976bb4fe285cd01eea4fba7e4', '', 1, '2017-12-25 10:36:16', '2017-12-25 10:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1871 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `slug`, `login_enabled`, `role_id`, `status`, `parent_id`, `image`, `phone`, `address`, `stripe_active`, `stripe_id`, `stripe_plan`, `paypal_email`, `card_brand`, `card_last_four`, `trial_ends_at`, `subscription_ends_at`, `remember_token`, `settings`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1790, 'منتصر الصاوي', 'montaserelsawy', 'montaserelsawy@gmail.com', '$2y$10$FXml9HHA0jqRkvw4Wr1rTOHrlkmt2dbeBk2A5wtwonE8eHrZUXdgC', 'mntsr-alsaoy', 1, 1, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f7EZXxDrlPV0X7D1O5nbUtIzNUu5Nmp3V7S28usGnP7QTZ5hPL8GEOaJjKbr', NULL, NULL, '2017-08-08 00:07:43', '2017-12-26 07:50:28'),
(1796, 'يامن', 'yamen', 'montaser_sawy@hotmail.com', '$2y$10$yBNk.HPivdiluZttX2uKEOwEu4BpUWaVPxcLtbUFkNs9m2ZKtmCl2', 'yamn', 1, 5, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HxJtjmnL5JQFtLPpuWkqs1NORitJLXG9bcNDU0WW9wtpoPv8VSxBwMIh9h9L', '{"user_preferences":{"quiz_categories":[],"lms_categories":[]}}', NULL, '2017-08-15 07:05:03', '2017-10-12 07:46:25'),
(1800, 'هشام خليل', 'Teacher1', 'Teacher@gmail.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'hsham-khlyl', 1, 3, 1, NULL, '', '052012345678', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R7ESpFAoGFvrMDR6SiwVHuAJUPogukYapOIrt45tpAA5JnaZjvqCL81Mvvdx', NULL, NULL, '2017-10-13 07:11:42', '2017-12-20 19:53:54'),
(1801, 'Student', 'ST1', 'St@gmail.com', '$2y$10$7WAdPeAQmG27FyoReZMa9uXuBAQzUiRHvqIiw61UTqalbeOTU.4je', 'student', 1, 5, 1, NULL, '', '0501271551', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HxJtjmnL5JQFtLPpuWkqs1NORitJLXG9bcNDU0WW9wtpoPv8VSxBwMIh9h9L', NULL, NULL, '2017-10-13 07:12:38', '2017-10-13 07:12:38'),
(1802, 'Supervisor', 'Supervisor', 'Supervisor@gmail.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'supervisor', 1, 2, 1, NULL, '', '050456589653', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-13 07:13:53', '2017-10-13 07:13:53'),
(1803, 'محمود', 'mahmoud', 'mahmoud@sasbit.com', '$2y$10$SdWp98wJjOytyxqAu08fP.GfoadzKxK0f3LuOP33/hnDyzIagWSaa', 'mhmod', 1, 3, 1, NULL, '', '0548300367', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-14 10:24:34', '2017-10-14 10:24:34'),
(1805, 'خالد عصام يوسف ابوسعده', 'std1', 'email1@gmail.com', '$2y$10$fTHdhO3BZfxVQmAPQHFq2OMX2PL3nWd5102p/djX7rTOfIZEo7WXi', 'khald-aasam-yosf-abosaadh', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oOUyyN4YpIY8abLuaur3opuyHkDbF4zddpbq4MMcaKsD4MFDR9e9AaXWUaBI', '{"user_preferences":{"quiz_categories":[1,2],"lms_categories":[]}}', NULL, '2017-10-15 22:46:47', '2017-10-17 23:46:28'),
(1806, 'بيان عبدالله حافظ حسين', 'std2', 'email2@gmail.com', '$2y$10$0Rcu.KAzuFzOf2.JnXE/Uu8OROm60BKNy28yBD2DyL74j8TMlFtIO', 'byan-aabdallh-hafth-hsyn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:47', '2017-10-15 22:46:47'),
(1807, 'تالا نواف بن سليم القرني', 'std3', 'email3@gmail.com', '$2y$10$8dzcsrrr2oWCR6NuXizAheFNzWm6B3FRujVEVT/t9FnyEH4rPtC.C', 'tala-noaf-bn-slym-alkrny', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:47', '2017-10-15 22:46:47'),
(1808, 'احمد عبدالمنعم بن محمد الطلحه', 'std4', 'email4@gmail.com', '$2y$10$PxdhL2NJ4bUJNV3k8ajTzeYC0mtA1Lu2aXmOaIUVOjgsA2riGHDLK', 'ahmd-aabdalmnaam-bn-mhmd-altlhh', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1809, 'الياس سمير بن عبدالعزيز العيسى', 'std5', 'email5@gmail.com', '$2y$10$5L61KkmL5x8C65lR9SvXIOIOap9a4H6OjP56B4kcMhKVT1NMKB5sy', 'alyas-smyr-bn-aabdalaazyz-alaays', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1810, 'تركي ضيدان بن هباس السبيعي', 'std6', 'email6@gmail.com', '$2y$10$JPJixelFiQcOxc3k5t25T.W87JFRFKK15./MS.i6rJbCFS1hXuutu', 'trky-dydan-bn-hbas-alsbyaay', 1, 5, 1, 1869, '1810.png', '0548300367', 'المدينة المنورة - العريض ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'o5mExuuMlY7NgT3dsllvaMPqkkPJkYOYQySdCNvLw4RXK218ZAYWp1qYvCZI', '{"user_preferences":{"quiz_categories":[1,2],"lms_categories":[1,2,3]}}', NULL, '2017-10-15 22:46:48', '2017-12-26 07:51:26'),
(1811, 'خالد شديد صرير القحطاني', 'std7', 'email7@gmail.com', '$2y$10$n0sAImTtngbPFOxpgyw92OIl6BCqbG2KCbnYMrjuRvh/rh/c4/F6S', 'khald-shdyd-sryr-alkhtany', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1812, 'ريان عبدالله علي ال جرف', 'std8', 'email8@gmail.com', '$2y$10$A94Ze4tSKLU/.cEvfmYhQ.NdrN5y4txPcNguijIXXDXkaf6RsGCa2', 'ryan-aabdallh-aaly-al-jrf', 1, 5, 1, 1869, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"user_preferences":{"quiz_categories":[1,2],"lms_categories":[1,2,3]}}', NULL, '2017-10-15 22:46:48', '2017-12-16 02:57:45'),
(1813, 'زياد بن ناصر بن إبراهيم العمر', 'std9', 'email9@gmail.com', '$2y$10$3lERPRPZJ1Nc8Oy6lL7ByuKpbPlrWkXUh9IUtg5DKes18AHj4GeWq', 'zyad-bn-nasr-bn-ebrahym-alaamr', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1814, 'ضاوي فؤاد بن محمد المهاوش', 'std10', 'email10@gmail.com', '$2y$10$5N56I4yyMjqMZRLO8p8jvugCdRYCBO1JLbKaB.N/CXx7GWQ4fljsy', 'daoy-foead-bn-mhmd-almhaosh', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WxtgqAttMZ2BJHGFg98yXsiiPFjyQx4VEKBOM9ZN9TgeY8Y0xxzBhEvFdHP1', '{"user_preferences":{"quiz_categories":[1,2],"lms_categories":[]}}', NULL, '2017-10-15 22:46:48', '2017-10-17 23:49:49'),
(1815, 'عبدالرحمن زيد عبدالرحمن الحليبي', 'std11', 'email11@gmail.com', '$2y$10$NFNpQ1eF3HqdSgGACrOUWeP9clCTWnZLd2iiKGKOx9D5ti4MmiRs2', 'aabdalrhmn-zyd-aabdalrhmn-alhlyby', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1816, 'عبدالرحمن ابراهيم عبدالرحمن الحيدر', 'std12', 'email12@gmail.com', '$2y$10$2SvWz5H3WNHnkRimo8lJT.TZQHv1MV4Xcq050lfSR7VTejxnvR1nq', 'aabdalrhmn-abrahym-aabdalrhmn-alhydr', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1817, 'عبدالعزيز بن عبدالمنعم بن عبدالعزيز الصاهود', 'std13', 'email13@gmail.com', '$2y$10$jz/XiAYx2E0L95.Fw6MhMufpEA0uM/Y4Ji4lR5y8T1CaH4Mwds87O', 'aabdalaazyz-bn-aabdalmnaam-bn-aabdalaazyz-alsahod', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:48', '2017-10-15 22:46:48'),
(1818, 'علي بن صادق بن عبدالعظيم الممتن', 'std14', 'email14@gmail.com', '$2y$10$gjoYKXi2.nqlMqGRkGBieufS1PBbMz38Cz3yd3Ef9cCSRiVV8kMzW', 'aaly-bn-sadk-bn-aabdalaathym-almmtn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1819, 'محمد ابراهيم بن عبدالرحمن الهزيم', 'std15', 'email15@gmail.com', '$2y$10$uNDR3.JXWB97ifdAlTJKuubHO86RM.eViMwZJpMYwDK5c/ziFXi82', 'mhmd-abrahym-bn-aabdalrhmn-alhzym', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1820, 'احمد انور بن احمد الشهاب', 'std16', 'email16@gmail.com', '$2y$10$ehlYCzRdzmJdhUpHxXp1DOuC0wlT5l6AViAHK4fa1f9ek/JAGZUuy', 'ahmd-anor-bn-ahmd-alshhab', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1821, 'الحسن علي بن عبدالله الحمدان', 'std17', 'email17@gmail.com', '$2y$10$8iSh1X1YpyCk98GR9Hsc0ucP6p3nsVjx91u7evTWZMqJQBFLvWRe2', 'alhsn-aaly-bn-aabdallh-alhmdan', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1822, 'سيف بن عمر بن سيف الضاعن', 'std18', 'email18@gmail.com', '$2y$10$KNvUdzkfg3H/kFwL.VHhZecl944DnmZCip3pHQhYl2eKvweVaLVcW', 'syf-bn-aamr-bn-syf-aldaaan', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1823, 'عباس بن شاكر بن أحمد العوض', 'std19', 'email19@gmail.com', '$2y$10$vkhmYsFxH5NX.oYDMDbHwuQ1lkSy746pVNbxdnUDzA2AxsXKeQ3Ma', 'aabas-bn-shakr-bn-ahmd-alaaod', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1824, 'عبدالله بن محمد بن عبدالمجيد البقشي', 'std20', 'email20@gmail.com', '$2y$10$kcoNzqbgqIjU0uURYUADNeBz4XpuiUztBwyy70NoXumE643fo68nO', 'aabdallh-bn-mhmd-bn-aabdalmjyd-albkshy', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1825, 'محمد بن سعيد بن حبيب بوخمسين', 'std21', 'email21@gmail.com', '$2y$10$UTJ4qwo/t024RjWZAArk6ecM5JOn0FB6Xg/io/JHYDhwsjuOYghB6', 'mhmd-bn-saayd-bn-hbyb-bokhmsyn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1826, 'علي بن صادق بن عبدالعظيم الممتن', 'std22', 'email22@gmail.com', '$2y$10$IqK56Xh1dyv.0CF3ZO8SK.NKGiN1hCKpIgILvXCfX84bx8M5JG6n2', 'aaly-bn-sadk-bn-aabdalaathym-almmtn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:49', '2017-10-15 22:46:49'),
(1827, 'محمد ابراهيم بن عبدالرحمن الهزيم', 'std23', 'email23@gmail.com', '$2y$10$qAa7Hl4vqrZKMkmswCmer.a0mUPBjBfS27X.slcuRb8jEhVzJbp.C', 'mhmd-abrahym-bn-aabdalrhmn-alhzym', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1828, 'احمد انور بن احمد الشهاب', 'std24', 'email24@gmail.com', '$2y$10$pErtrZxUQfqPWXXyGjMmk.N5fKPrbsf6vBpuJAAugWPpxC1mDm.si', 'ahmd-anor-bn-ahmd-alshhab', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1829, 'تركي ضيدان بن هباس السبيعي', 'std25', 'email25@gmail.com', '$2y$10$GXKbNGY86Qoff8.mE7cweevScQh2skiAWEc2wIWH5xW60ofRg3dei', 'trky-dydan-bn-hbas-alsbyaay', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1830, 'خالد شديد صرير القحطاني', 'std26', 'email26@gmail.com', '$2y$10$/CEHC62w4gvV/ZGJhY8BKeZSu90sJ713TzbktG.29579x2q1Aiomm', 'khald-shdyd-sryr-alkhtany', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1831, 'ريان عبدالله علي ال جرف', 'std27', 'email27@gmail.com', '$2y$10$ISbRn8p8NeVjccBLe8cY/ueHyFLwILbzP/9SkV7xNR3o8FsVJZ8WK', 'ryan-aabdallh-aaly-al-jrf', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gGArDK3SPHhZi1xQdWfFfjZ1dwTITpX8lYzxGTi6XEGCZGM4pAkMuTnil3M3', NULL, NULL, '2017-10-15 22:46:50', '2017-12-26 07:55:40'),
(1832, 'عبدالرحمن ابراهيم عبدالرحمن الحيدر', 'std28', 'email28@gmail.com', '$2y$10$x3.ncYyh7KV7FbwVcnEJy.7tMsG7tgpaDXgMVmhNttGbUdlZreyty', 'aabdalrhmn-abrahym-aabdalrhmn-alhydr', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1833, 'ريان عبدالله علي ال جرف', 'std29', 'email29@gmail.com', '$2y$10$2oU99GAwQjY6noJu.5qupu0c0hURiOKNKmAYhdlvyT7GD5Mo8LJL.', 'ryan-aabdallh-aaly-al-jrf', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1834, 'خالد شديد صرير القحطاني', 'std30', 'email30@gmail.com', '$2y$10$TFNBtE/TsO8jUh6nZ/Acdekmi60tQoTLa/54rvrScOan1ktLTSYwO', 'khald-shdyd-sryr-alkhtany', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:46:50', '2017-10-15 22:46:50'),
(1835, 'خالد الحربي', 'teacher2', 'teacher2@gmail.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'khald-alhrby', 1, 3, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:54:24', '2017-10-15 22:56:32'),
(1836, 'حسين العتيبي', 'Teacher3', 'Teacher3@gmail.com', '$2y$10$xTIyV7Awh/vdQmIgGOU4OOlcHwhUqqqej8sPLvBNDK0hDe42KsWH.', 'hsyn-alaatyby', 1, 3, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:55:37', '2017-10-15 22:56:17'),
(1837, 'خالد الصافي', 'teacher4', 'teacher4@sasbit.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'khald-alsafy', 1, 3, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 22:57:54', '2017-10-15 22:57:54'),
(1838, 'خالد عصام يوسف ابوسعده', 'std31', 'email31@sasbit.com', '$2y$10$FAYFtkI7Vg8LhuIvTCSQU.PKxfM0W7JfWaW86DDBAdBq2Qg5FBjKS', 'khald-aasam-yosf-abosaadh', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(1839, 'بيان عبدالله حافظ حسين', 'std32', 'email32@sasbit.com', '$2y$10$uC2UsPLEYLfxLkj2.dCD3e5wWbtZma89jAFc1mxaNndXenNLSIPLi', 'byan-aabdallh-hafth-hsyn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(1840, 'تالا نواف بن سليم القرني', 'std33', 'email33@sasbit.com', '$2y$10$mv.xDkkrh/lgmzv3DdnnyO33fHgyG3jAkrAzrx4Eqe2fkz/fcqp2S', 'tala-noaf-bn-slym-alkrny', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(1841, 'احمد عبدالمنعم بن محمد الطلحه', 'std34', 'email34@sasbit.com', '$2y$10$9zsvGmlObahvD2n/Y77XsOOqSreP76VemHtAJ2qhjeFOzP4fKyD8e', 'ahmd-aabdalmnaam-bn-mhmd-altlhh', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:13', '2017-10-15 23:01:13'),
(1842, 'الياس سمير بن عبدالعزيز العيسى', 'std35', 'email35@sasbit.com', '$2y$10$hyixSOnA.XYtetRcX0hakOySwM1cHGDeJxsvyB3V71yPdg7dyi85m', 'alyas-smyr-bn-aabdalaazyz-alaays', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1843, 'تركي ضيدان بن هباس السبيعي', 'std36', 'email36@sasbit.com', '$2y$10$awb/Wtd.fwNCbjKOtew8u.VDQm2Sph0kgp/IcLlgq6rWlIuGiDaAK', 'trky-dydan-bn-hbas-alsbyaay', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1844, 'خالد شديد صرير القحطاني', 'std37', 'email37@sasbit.com', '$2y$10$e4sxLjYauhWArbmU/iGsP.tig.pahJamoUhWw9Y16gB3brUJlcJQC', 'khald-shdyd-sryr-alkhtany', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1845, 'ريان عبدالله علي ال جرف', 'std38', 'email38@sasbit.com', '$2y$10$Np2ynwlUUmOJGC89jVzUFu/2A3OzlDD0WqpWEnatPGeLrIB1xnQPa', 'ryan-aabdallh-aaly-al-jrf', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1846, 'زياد بن ناصر بن إبراهيم العمر', 'std39', 'email39@sasbit.com', '$2y$10$hU1Wowtlg3AtZrOyZWo09ewfp3LVlVkGWVOx.fK05fKsAP0MEeanq', 'zyad-bn-nasr-bn-ebrahym-alaamr', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1847, 'ضاوي فؤاد بن محمد المهاوش', 'std40', 'email40@sasbit.com', '$2y$10$dvggTrwlo/Qg7mPXq8iar.VpeWcxWbz5gEF638D.O02H4BJ/XUYpe', 'daoy-foead-bn-mhmd-almhaosh', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1848, 'عبدالرحمن زيد عبدالرحمن الحليبي', 'std41', 'email41@sasbit.com', '$2y$10$nJkCNXuxGfuQdCs/pwex4enHJX4vUd2.oZeqFJo9k0C2p91BlZwEu', 'aabdalrhmn-zyd-aabdalrhmn-alhlyby', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1849, 'عبدالرحمن ابراهيم عبدالرحمن الحيدر', 'std42', 'email42@sasbit.com', '$2y$10$bknBBiJO2Vzg/aYOjeGY1OtgSZ1TtNtLqJv388iOAG1aYu5EhoQZy', 'aabdalrhmn-abrahym-aabdalrhmn-alhydr', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1850, 'عبدالعزيز بن عبدالمنعم بن عبدالعزيز الصاهود', 'std43', 'email43@sasbit.com', '$2y$10$VCQc9GO2KatzWk.MJ/fEuOZAIYQWfhCWd0Q.ZOhu.6r8wEwNgFMxS', 'aabdalaazyz-bn-aabdalmnaam-bn-aabdalaazyz-alsahod', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:14', '2017-10-15 23:01:14'),
(1851, 'علي بن صادق بن عبدالعظيم الممتن', 'std44', 'email44@sasbit.com', '$2y$10$GlnoY65Pr9fSGgUn1jurqutvntCRX1EdtpWksAYCqBCEGFhoqDqbS', 'aaly-bn-sadk-bn-aabdalaathym-almmtn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1852, 'محمد ابراهيم بن عبدالرحمن الهزيم', 'std45', 'email45@sasbit.com', '$2y$10$J/v1i9lXxqj1PJ.ISnuTGOw2tP2uKVVxU6UMf0lO7a98CT43j9Q0K', 'mhmd-abrahym-bn-aabdalrhmn-alhzym', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1853, 'احمد انور بن احمد الشهاب', 'std46', 'email46@sasbit.com', '$2y$10$JyEMLLSY/IRs7otc4K.6feuJA3QbrVaRbciglr7m7ArsiX5Tx38Ku', 'ahmd-anor-bn-ahmd-alshhab', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1854, 'الحسن علي بن عبدالله الحمدان', 'std47', 'email47@sasbit.com', '$2y$10$18cfdp5XyPECfSsDxsPGceec/kIrZXXANaQVTV4oynUVEVufffV9y', 'alhsn-aaly-bn-aabdallh-alhmdan', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1855, 'سيف بن عمر بن سيف الضاعن', 'std48', 'email48@sasbit.com', '$2y$10$rTQX3ZqgDzhSWjZcboi2DeIFUOUiVfryNm3tg0RXB22Sy76poyBfC', 'syf-bn-aamr-bn-syf-aldaaan', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1856, 'عباس بن شاكر بن أحمد العوض', 'std49', 'email49@sasbit.com', '$2y$10$tKmcyNzE.vdJ7zIYEkg8Aef6cYNzh4FAQi2ApZO8vRMlDeOCXYn2O', 'aabas-bn-shakr-bn-ahmd-alaaod', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1857, 'عبدالله بن محمد بن عبدالمجيد البقشي', 'std50', 'email50@sasbit.com', '$2y$10$HSw.749mcFKGtUN78dguw.r.0LdmPxZGeT5UM9c1B/s2O5dkwpx6W', 'aabdallh-bn-mhmd-bn-aabdalmjyd-albkshy', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1858, 'محمد بن سعيد بن حبيب بوخمسين', 'std51', 'email51@sasbit.com', '$2y$10$xO2NfOy5e5ZNTKcQoDB84OFmI0jB2mRXJs2bOXey9bkGxjfBTguFS', 'mhmd-bn-saayd-bn-hbyb-bokhmsyn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1859, 'علي بن صادق بن عبدالعظيم الممتن', 'std52', 'email52@sasbit.com', '$2y$10$YipUGJ1VrYtXlHvmLdcfLuq5xX.iPNlUek6D4I.zI4wAfrPD1z/ty', 'aaly-bn-sadk-bn-aabdalaathym-almmtn', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1860, 'محمد ابراهيم بن عبدالرحمن الهزيم', 'std53', 'email53@sasbit.com', '$2y$10$vHGDHK/OUlOHskOmrMrzI.BZciqduPY9H5fuDJ6mk3W2fWpkdR.Be', 'mhmd-abrahym-bn-aabdalrhmn-alhzym', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:15', '2017-10-15 23:01:15'),
(1861, 'احمد انور بن احمد الشهاب', 'std54', 'email54@sasbit.com', '$2y$10$.EyLuvkoz8/SE/LnD3AUbeq/xv/HZObMlKh4fPHnE4tzKkNkFDSqq', 'ahmd-anor-bn-ahmd-alshhab', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1862, 'تركي ضيدان بن هباس السبيعي', 'std55', 'email55@sasbit.com', '$2y$10$CPRoLxGKkZNGjLC7iYdDFOBvxVrnazab7rOrARXkBqhOre0xxoCIe', 'trky-dydan-bn-hbas-alsbyaay', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1863, 'خالد شديد صرير القحطاني', 'std56', 'email56@sasbit.com', '$2y$10$U1ePTEezr0aoSI2c9irR/e4l9d8uJCy9kHrtogRhSrSs9aevNBgPO', 'khald-shdyd-sryr-alkhtany', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1864, 'ريان عبدالله علي ال جرف', 'std57', 'email57@sasbit.com', '$2y$10$aBn8Ta5EI76tjIE.aaXr7.XpxiRnoUzEIjRHoAVGpc0E3bx7acqPO', 'ryan-aabdallh-aaly-al-jrf', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1865, 'عبدالرحمن ابراهيم عبدالرحمن الحيدر', 'std58', 'email58@sasbit.com', '$2y$10$tlBxjg5m06dSXRU.euU4Cu0DksmhEQKWZ/eHJJzkA4EiIulwcKUiS', 'aabdalrhmn-abrahym-aabdalrhmn-alhydr', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1866, 'ريان عبدالله علي ال جرف', 'std59', 'email59@sasbit.com', '$2y$10$D0oQwSycKVAcHDlsdsZvg.H3aOR8/6Fq8GChklIyxtzNqD.h37fPu', 'ryan-aabdallh-aaly-al-jrf', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1867, 'خالد شديد صرير القحطاني', 'std60', 'email60@sasbit.com', '$2y$10$JJM/YtymjJk4GUyvNBdF6e7VJwQpGiqQ2b.OZoJkV75GyKPYtlbbm', 'khald-shdyd-sryr-alkhtany', 1, 5, 1, NULL, '', '1234567891', 'Test Address', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-15 23:01:16', '2017-10-15 23:01:16'),
(1868, 'teacher5', 'teacher5', 'mont_sawy@yahoo.com', '$2y$10$fCuGZQBScfZtW7UaWNIEq.DHJcX1BIj7J9EycDc8m3/phUG7oESlK', 'teacher5', 1, 3, 1, NULL, '', '0548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd2Yh8Fe7QLAcDloiC8PsVKDYiuMUYEtYtDP2ei0KuREeEySMl7Zj5JO1ELQt', NULL, NULL, '2017-10-20 07:32:20', '2017-12-25 09:55:07'),
(1869, 'montaser', 'montaser', 'montaser@sasbit.com', '$2y$10$58YYt48IVMRmv9cl6mZXDeVkZidOappERrBHRRwAhwYMXsd.0sfle', 'montaser', 1, 6, 1, NULL, '', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jq7gOMpXSHWKyX7aMzDxkfOrrFfRjyEAWTvFso9eoXVDcwPtXws9LRlZrS7J', '{"user_preferences":{"quiz_categories":[1,2],"lms_categories":[1,2,3]}}', NULL, '2017-12-16 02:57:45', '2017-12-20 08:16:34'),
(1870, 'lib', 'lib', 'support@sasbit.com', '$2y$10$Pt7zhHQMG0R9W48abGQzsuvLaL1/E8XM73hIAKc15BkxtjdJl2pqO', 'lib', 1, 7, 1, NULL, '', '548300367', 'King Abdaziz St.\r\nAlareed district', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEUsKpLcnq2rviVY24Hvethe6Pgxg5w2IfGPyV26ClO40SJ5skzPtWA78ii6', NULL, NULL, '2017-12-16 03:01:49', '2017-12-16 03:06:32');

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
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `publishers_publisher_unique` (`publisher`), ADD UNIQUE KEY `publishers_slug_unique` (`slug`), ADD KEY `record_updated_by` (`record_updated_by`);

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
-- Indexes for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `staff_id` (`staff_id`), ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `id` (`id`), ADD KEY `parent_id` (`parent_id`);

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
-- AUTO_INCREMENT for table `academic_course`
--
ALTER TABLE `academic_course`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `certificateissues`
--
ALTER TABLE `certificateissues`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `certificatetemplates`
--
ALTER TABLE `certificatetemplates`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `couponcodes`
--
ALTER TABLE `couponcodes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `couponcodes_usage`
--
ALTER TABLE `couponcodes_usage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `coursesemisters`
--
ALTER TABLE `coursesemisters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `course_subject`
--
ALTER TABLE `course_subject`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `examseries`
--
ALTER TABLE `examseries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examseries_data`
--
ALTER TABLE `examseries_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `examtoppers`
--
ALTER TABLE `examtoppers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lessionplans`
--
ALTER TABLE `lessionplans`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `libraryassetinstances`
--
ALTER TABLE `libraryassetinstances`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `libraryassettypes`
--
ALTER TABLE `libraryassettypes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `libraryissues`
--
ALTER TABLE `libraryissues`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `librarymasters`
--
ALTER TABLE `librarymasters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lmscategories`
--
ALTER TABLE `lmscategories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lmscontents`
--
ALTER TABLE `lmscontents`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lmsseries`
--
ALTER TABLE `lmsseries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lmsseries_data`
--
ALTER TABLE `lmsseries_data`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messenger_participants`
--
ALTER TABLE `messenger_participants`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messenger_threads`
--
ALTER TABLE `messenger_threads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulehelper`
--
ALTER TABLE `modulehelper`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parenttimingsetmap`
--
ALTER TABLE `parenttimingsetmap`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questionbank`
--
ALTER TABLE `questionbank`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `questionbank_quizzes`
--
ALTER TABLE `questionbank_quizzes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `quizapplicability`
--
ALTER TABLE `quizapplicability`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `quizcategories`
--
ALTER TABLE `quizcategories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `quizofflinecategories`
--
ALTER TABLE `quizofflinecategories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `quizresults`
--
ALTER TABLE `quizresults`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentpromotions`
--
ALTER TABLE `studentpromotions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=427;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `subjectpreferences`
--
ALTER TABLE `subjectpreferences`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `timingset`
--
ALTER TABLE `timingset`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `timingsetdetails`
--
ALTER TABLE `timingsetdetails`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `timingsetmap`
--
ALTER TABLE `timingsetmap`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1871;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
