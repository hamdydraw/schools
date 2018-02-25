-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 11:09 PM
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
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `updated_by_ip` varchar(120) DEFAULT NULL,
  `created_by_ip` varchar(120) DEFAULT NULL,
  `created_by_user` bigint(20) UNSIGNED NOT NULL,
  `updated_by_user` bigint(20) UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `updated_at`, `created_at`) VALUES
(251, 'SA', 'Saudi_Arabia', NULL, NULL, 0, 0, '2018-02-21 21:00:03', '2018-02-20 08:44:14'),
(252, 'AL', 'Albania', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(253, 'DZ', 'Algeria', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(254, 'DS', 'American_Samoa', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(255, 'AD', 'Andorra', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(256, 'AO', 'Angola', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(257, 'AI', 'Anguilla', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(258, 'AQ', 'Antarctica', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(259, 'AG', 'Antigua_and_Barbuda', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(260, 'AR', 'Argentina', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(261, 'AM', 'Armenia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(262, 'AW', 'Aruba', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(263, 'AU', 'Australia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(264, 'AT', 'Austria', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(265, 'AZ', 'Azerbaijan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(266, 'BS', 'Bahamas', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(267, 'BH', 'Bahrain', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(268, 'BD', 'Bangladesh', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(269, 'BB', 'Barbados', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(270, 'BY', 'Belarus', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(271, 'BE', 'Belgium', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(272, 'BZ', 'Belize', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(273, 'BJ', 'Benin', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(274, 'BM', 'Bermuda', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(275, 'BT', 'Bhutan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(276, 'BO', 'Bolivia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(277, 'BA', 'Bosnia_and_Herzegovina', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(278, 'BW', 'Botswana', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(279, 'BV', 'Bouvet_Island', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(280, 'BR', 'Brazil', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(281, 'IO', 'British_Indian_Ocean_Territory', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(282, 'BN', 'Brunei_Darussalam', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(283, 'BG', 'Bulgaria', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(284, 'BF', 'Burkina_Faso', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(285, 'BI', 'Burundi', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(286, 'KH', 'Cambodia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(287, 'CM', 'Cameroon', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(288, 'CA', 'Canada', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(289, 'CV', 'Cape_Verde', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(290, 'KY', 'Cayman_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(291, 'CF', 'Central_African_Republic', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(292, 'TD', 'Chad', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(293, 'CL', 'Chile', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(294, 'CN', 'China', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(295, 'CX', 'Christmas_Island', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(296, 'CC', 'Cocos_Keeling_Islands', NULL, NULL, 0, 0, '2018-02-21 21:50:23', '2018-02-20 08:44:14'),
(297, 'CO', 'Colombia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(298, 'KM', 'Comoros', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(299, 'CG', 'Congo', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(300, 'CK', 'Cook_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(301, 'CR', 'Costa_Rica', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(302, 'HR', 'Croatia_Hrvatska', NULL, NULL, 0, 0, '2018-02-21 21:50:41', '2018-02-20 08:44:14'),
(303, 'CU', 'Cuba', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(304, 'CY', 'Cyprus', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(305, 'CZ', 'Czech_Republic', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(306, 'DK', 'Denmark', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(307, 'DJ', 'Djibouti', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(308, 'DM', 'Dominica', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(309, 'DO', 'Dominican_Republic', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(310, 'TP', 'East_Timor', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(311, 'EC', 'Ecuador', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(312, 'EG', 'Egypt', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(313, 'SV', 'El_Salvador', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(314, 'GQ', 'Equatorial_Guinea', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(315, 'ER', 'Eritrea', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(316, 'EE', 'Estonia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(317, 'ET', 'Ethiopia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(318, 'FK', 'Falkland_Islands_Malvinas', NULL, NULL, 0, 0, '2018-02-21 21:50:48', '2018-02-20 08:44:14'),
(319, 'FO', 'Faroe_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(320, 'FJ', 'Fiji', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(321, 'FI', 'Finland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(322, 'FR', 'France', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(323, 'FX', 'France_Metropolitan', NULL, NULL, 0, 0, '2018-02-21 21:59:58', '2018-02-20 08:44:14'),
(324, 'GF', 'French_Guiana', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(325, 'PF', 'French_Polynesia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(326, 'TF', 'French_Southern_Territories', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(327, 'GA', 'Gabon', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(328, 'GM', 'Gambia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(329, 'GE', 'Georgia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(330, 'DE', 'Germany', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(331, 'GH', 'Ghana', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(332, 'GI', 'Gibraltar', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(333, 'GK', 'Guernsey', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(334, 'GR', 'Greece', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(335, 'GL', 'Greenland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(336, 'GD', 'Grenada', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(337, 'GP', 'Guadeloupe', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(338, 'GU', 'Guam', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(339, 'GT', 'Guatemala', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(340, 'GN', 'Guinea', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(341, 'GW', 'Guinea_Bissau', NULL, NULL, 0, 0, '2018-02-21 22:00:20', '2018-02-20 08:44:14'),
(342, 'GY', 'Guyana', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(343, 'HT', 'Haiti', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(344, 'HM', 'Heard_and_Mc_Donald_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(345, 'HN', 'Honduras', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(346, 'HK', 'Hong_Kong', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(347, 'HU', 'Hungary', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(348, 'IS', 'Iceland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(349, 'IN', 'India', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(350, 'IM', 'Isle_of_Man', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(351, 'ID', 'Indonesia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(352, 'IR', 'Iran_Islamic_Republic_of', NULL, NULL, 0, 0, '2018-02-21 21:51:11', '2018-02-20 08:44:14'),
(353, 'IQ', 'Iraq', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(354, 'IE', 'Ireland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(355, 'IL', 'Israel', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(356, 'IT', 'Italy', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(357, 'CI', 'Ivory_Coast', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(358, 'JE', 'Jersey', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(359, 'JM', 'Jamaica', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(360, 'JP', 'Japan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(361, 'JO', 'Jordan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(362, 'KZ', 'Kazakhstan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(363, 'KE', 'Kenya', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(364, 'KI', 'Kiribati', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(365, 'KP', 'Korea_Democratic_Peoples_Republic_of', NULL, NULL, 0, 0, '2018-02-21 22:01:16', '2018-02-20 08:44:14'),
(366, 'KR', 'Korea_Republic_of', NULL, NULL, 0, 0, '2018-02-21 22:01:21', '2018-02-20 08:44:14'),
(367, 'XK', 'Kosovo', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(368, 'KW', 'Kuwait', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(369, 'KG', 'Kyrgyzstan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(370, 'LA', 'Lao_Peoples_Democratic_Republic', NULL, NULL, 0, 0, '2018-02-21 21:51:27', '2018-02-20 08:44:14'),
(371, 'LV', 'Latvia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(372, 'LB', 'Lebanon', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(373, 'LS', 'Lesotho', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(374, 'LR', 'Liberia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(375, 'LY', 'Libyan_Arab_Jamahiriya', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(376, 'LI', 'Liechtenstein', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(377, 'LT', 'Lithuania', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(378, 'LU', 'Luxembourg', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(379, 'MO', 'Macau', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(380, 'MK', 'Macedonia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(381, 'MG', 'Madagascar', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(382, 'MW', 'Malawi', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(383, 'MY', 'Malaysia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(384, 'MV', 'Maldives', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(385, 'ML', 'Mali', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(386, 'MT', 'Malta', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(387, 'MH', 'Marshall_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(388, 'MQ', 'Martinique', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(389, 'MR', 'Mauritania', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(390, 'MU', 'Mauritius', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(391, 'TY', 'Mayotte', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(392, 'MX', 'Mexico', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(393, 'FM', 'Micronesia_Federated_States_of', NULL, NULL, 0, 0, '2018-02-21 22:02:08', '2018-02-20 08:44:14'),
(394, 'MD', 'Moldova_Republic_of', NULL, NULL, 0, 0, '2018-02-21 22:02:12', '2018-02-20 08:44:14'),
(395, 'MC', 'Monaco', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(396, 'MN', 'Mongolia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(397, 'ME', 'Montenegro', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(398, 'MS', 'Montserrat', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(399, 'MA', 'Morocco', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(400, 'MZ', 'Mozambique', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(401, 'MM', 'Myanmar', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(402, 'NA', 'Namibia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(403, 'NR', 'Nauru', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(404, 'NP', 'Nepal', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(405, 'NL', 'Netherlands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(406, 'AN', 'Netherlands_Antilles', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(407, 'NC', 'New_Caledonia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(408, 'NZ', 'New_Zealand', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(409, 'NI', 'Nicaragua', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(410, 'NE', 'Niger', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(411, 'NG', 'Nigeria', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(412, 'NU', 'Niue', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(413, 'NF', 'Norfolk_Island', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(414, 'MP', 'Northern_Mariana_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(415, 'NO', 'Norway', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(416, 'OM', 'Oman', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(417, 'PK', 'Pakistan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(418, 'PW', 'Palau', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(419, 'PS', 'Palestine', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(420, 'PA', 'Panama', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(421, 'PG', 'Papua_New_Guinea', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(422, 'PY', 'Paraguay', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(423, 'PE', 'Peru', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(424, 'PH', 'Philippines', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(425, 'PN', 'Pitcairn', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(426, 'PL', 'Poland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(427, 'PT', 'Portugal', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(428, 'PR', 'Puerto_Rico', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(429, 'QA', 'Qatar', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(430, 'RE', 'Reunion', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(431, 'RO', 'Romania', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(432, 'RU', 'Russian_Federation', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(433, 'RW', 'Rwanda', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(434, 'KN', 'Saint_Kitts_and_Nevis', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(435, 'LC', 'Saint_Lucia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(436, 'VC', 'Saint_Vincent_and_the_Grenadines', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(437, 'WS', 'Samoa', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(438, 'SM', 'San_Marino', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(439, 'ST', 'Sao_Tome_and_Principe', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(440, 'SN', 'Senegal', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(441, 'RS', 'Serbia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(442, 'SC', 'Seychelles', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(443, 'SL', 'Sierra_Leone', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(444, 'SG', 'Singapore', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(445, 'SK', 'Slovakia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(446, 'SI', 'Slovenia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(447, 'SB', 'Solomon_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(448, 'SO', 'Somalia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(449, 'ZA', 'South_Africa', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(450, 'GS', 'South_Georgia_South_Sandwich_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(451, 'ES', 'Spain', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(452, 'LK', 'Sri_Lanka', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(453, 'SH', 'St_Helena', NULL, NULL, 0, 0, '2018-02-21 22:04:41', '2018-02-20 08:44:14'),
(454, 'PM', 'St_Pierre_and_Miquelon', NULL, NULL, 0, 0, '2018-02-21 22:04:44', '2018-02-20 08:44:14'),
(455, 'SD', 'Sudan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(456, 'SR', 'Suriname', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(457, 'SJ', 'Svalbard_and_Jan_Mayen_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(458, 'SZ', 'Swaziland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(459, 'SE', 'Sweden', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(460, 'CH', 'Switzerland', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(461, 'SY', 'Syrian_Arab_Republic', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(462, 'TW', 'Taiwan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(463, 'TJ', 'Tajikistan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(464, 'TZ', 'Tanzania_United_Republic_of', NULL, NULL, 0, 0, '2018-02-21 22:04:28', '2018-02-20 08:44:14'),
(465, 'TH', 'Thailand', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(466, 'TG', 'Togo', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(467, 'TK', 'Tokelau', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(468, 'TO', 'Tonga', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(469, 'TT', 'Trinidad_and_Tobago', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(470, 'TN', 'Tunisia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(471, 'TR', 'Turkey', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(472, 'TM', 'Turkmenistan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(473, 'TC', 'Turks_and_Caicos_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(474, 'TV', 'Tuvalu', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(475, 'UG', 'Uganda', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(476, 'UA', 'Ukraine', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(477, 'AE', 'United_Arab_Emirates', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(478, 'GB', 'United_Kingdom', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(479, 'US', 'United_States', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(480, 'UM', 'United_States_minor_outlying_islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(481, 'UY', 'Uruguay', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(482, 'UZ', 'Uzbekistan', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(483, 'VU', 'Vanuatu', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(484, 'VA', 'Vatican_City_State', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(485, 'VE', 'Venezuela', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(486, 'VN', 'Vietnam', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(487, 'VG', 'Virgin_Islands_British', NULL, NULL, 0, 0, '2018-02-21 21:52:07', '2018-02-20 08:44:14'),
(488, 'VI', 'Virgin_Islands_US', NULL, NULL, 0, 0, '2018-02-21 21:52:13', '2018-02-20 08:44:14'),
(489, 'WF', 'Wallis_and_Futuna_Islands', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(490, 'EH', 'Western_Sahara', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(491, 'YE', 'Yemen', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(492, 'YU', 'Yugoslavia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(493, 'ZR', 'Zaire', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(494, 'ZM', 'Zambia', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(495, 'ZW', 'Zimbabwe', NULL, NULL, 0, 0, '2018-02-20 08:40:31', '2018-02-20 08:44:14'),
(496, 'AF', 'Afghanistan', NULL, NULL, 0, 0, '2018-02-21 20:59:55', '2018-02-20 08:44:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;