-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2018 at 09:51 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cynexis_grab_a_gram`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('default_shipping_address','default_billing_address','other_address') NOT NULL,
  `address_line_1` varchar(250) NOT NULL,
  `address_line_2` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` int(6) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `type`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `phone_no`, `latitude`, `longitude`) VALUES
(1, 2, 'default_billing_address', 'new palasia', 'high court', 'indore', 'Alaska', 452010, 123456, 22.741224, 75.8819122),
(2, 2, 'default_shipping_address', 'xyz', 'ABC', 'ABC', 'ABC', 462013, 12346567, 0, 0),
(3, 2, 'other_address', 'Test Address', 'Test Address2', 'Test City', 'Alaska', 123456, 123456790, 0, 0),
(4, 5, 'other_address', 'Shekhar central', 'Palasiya', 'Indore', 'Alaska', 45200, 0, 0, 0),
(5, 2, 'other_address', 'New Address', 'New', 'Indore', 'Hawaii', 462035, 1234567890, 22.9542506, 76.0390562);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(50) NOT NULL,
  `attribute_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_name`, `attribute_value`) VALUES
(1, 'grm', '100'),
(2, 'grm', '200'),
(3, 'grm', '300'),
(4, 'grm', '400');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
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
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dispensary_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `deal_type` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `dimension` varchar(100) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `end_date` date NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `dispensary_id`, `title`, `deal_type`, `description`, `dimension`, `location`, `image`, `end_date`, `start_date`) VALUES
(1, 4, 'test', 'deal', 'Laura Lipson is the director, writer, and co-producer of STANDING ON MY SISTERS’ SHOULDERS. She also penned the lyrics for the film’s opening song FREEDOM WILL COME.\r\n\r\nShe fulfilled her elementary school dream to live in Paris, and had the opportunity to do that when she became an assistant film editor for auteur director, Raul Ruiz. She worked on two of his films: TREASURE ISLAND and RICHARD III.\r\n', '300x500', 'Home', '1515753656.jpg', '2018-02-08', '2018-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `dispensaries`
--

CREATE TABLE `dispensaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `address_line_1` varchar(250) NOT NULL,
  `address_line_2` varchar(250) NOT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` int(6) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `business_license_number` varchar(100) NOT NULL,
  `preferred_method_of_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `preferred_time_of_contact` varchar(100) NOT NULL,
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispensaries`
--

INSERT INTO `dispensaries` (`id`, `user_id`, `business_name`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `phone_no`, `business_license_number`, `preferred_method_of_contact`, `contact_person`, `preferred_time_of_contact`, `rating`, `latitude`, `longitude`) VALUES
(1, 4, 'cynexis', 'rajani bhawan', 'indore', 'indore', 'Florida', 452010, 9893694008, '45as-05-05asd', 'call', 'rajendra verma', 'morning', 0, '22.720828', '75.873502');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type_of_id` varchar(50) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `issuing_state` varchar(50) NOT NULL,
  `license_expiration_date` date NOT NULL,
  `patient_id` varchar(50) NOT NULL,
  `recommendation_expiration_date` date NOT NULL,
  `recommendation_photo` varchar(50) NOT NULL,
  `government_issued_identification` varchar(50) NOT NULL,
  `address_proof` varchar(50) NOT NULL,
  `e_signature` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `type_of_id`, `license_number`, `issuing_state`, `license_expiration_date`, `patient_id`, `recommendation_expiration_date`, `recommendation_photo`, `government_issued_identification`, `address_proof`, `e_signature`) VALUES
(1, 2, 'Passport', '123asd123123', 'Alabama', '2017-05-05', 'asd2113asd456', '2027-01-01', '3032565670.png', '3032565670.png', '3032565670.png', 'pradeep sir'),
(2, 5, 'State ID', 'Kp-2345', 'Alaska', '2018-02-02', 'Patie-344-00', '2018-03-10', '3032712075.jpg', '3032712075.jpg', '3032712075.jpg', 'Arnab');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `issuing_state` varchar(50) NOT NULL,
  `license_expiration_date` date NOT NULL,
  `license_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `license_number`, `issuing_state`, `license_expiration_date`, `license_image`) VALUES
(1, 3, '12-050-_test_06', 'MP_test_06', '2019-05-05', '4548849524.png');

-- --------------------------------------------------------

--
-- Table structure for table `family_references`
--

CREATE TABLE `family_references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_references`
--

INSERT INTO `family_references` (`id`, `user_id`, `first_name`, `last_name`, `email`, `phone_number`) VALUES
(1, 3, 'first 1asd', 'last 1asd', 'email1@gmail.comasd', 9893694001);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL,
  `sales_tax` double(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_tax` double(10,2) NOT NULL,
  `product_discount` double(10,2) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `tax`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 'pro-night-stalker', 120.00, 0.00, 1, '2017-12-14 08:38:15', '2018-01-18 09:58:38'),
(2, 'pro-lavender', 1140.00, 0.00, 2, '2017-12-14 08:38:49', '2018-01-18 17:01:37'),
(3, 'pro-larry-OG', 240.00, 0.00, 1, '2017-12-14 08:38:59', '2018-01-18 09:58:43'),
(4, 'pro-hindu-kush', 540.00, 0.00, 4, '2017-12-14 08:39:08', '2018-01-18 17:01:41'),
(5, 'pro-Hell-angel', 470.00, 0.00, 1, '2017-12-14 08:39:15', '2018-01-18 09:58:48'),
(6, 'pro-cannabis-cookies', 680.00, 0.00, 1, '2017-12-14 08:39:24', '2018-01-18 09:58:50'),
(7, 'pro-bud-brownies', 780.00, 0.00, 1, '2017-12-14 08:39:32', '2018-01-18 09:58:52'),
(8, 'pro-bubba-OG', 911.00, 0.00, 1, '2017-12-14 08:39:40', '2018-01-18 09:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`id`, `product_id`, `attribute_id`) VALUES
(1, 1, 1),
(2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`) VALUES
(1, 1, 'pro-night-stalker.png'),
(2, 1, 'pro-lavender.png'),
(3, 3, 'pro-larry-OG.png'),
(4, 4, 'pro-hindu-kush.png'),
(5, 6, 'pro-cannabis-cookies.png'),
(6, 7, 'pro-bud-brownies.png'),
(7, 8, 'pro-bubba-OG.png'),
(9, 5, 'pro-Hell-angel.png');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `address_line_1` varchar(250) DEFAULT NULL,
  `address_line_2` varchar(250) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `message_notify` tinyint(1) DEFAULT '0' COMMENT '0: not notify, 1: notify',
  `subscribe_to_email` tinyint(1) DEFAULT '0' COMMENT '0: not subscribe, 1: subscribe',
  `date_of_birth` date DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `phone_model` varchar(50) DEFAULT NULL,
  `phone_make` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `photo`, `first_name`, `last_name`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `mobile_no`, `message_notify`, `subscribe_to_email`, `date_of_birth`, `description`, `phone_model`, `phone_make`) VALUES
(1, 2, NULL, 'pradeep', 'sir', 'new palasia', 'high court', 'indore', 'Alaska', 452010, 1234567890, 1, 1, '1985-01-01', NULL, NULL, NULL),
(2, 3, '3032566349.png', 'pawan_test_06', 'panday_test_06', 'indore_test_06', 'road_test_06', 'inodre_test_06', 'ohio_test_06', 5200, 9752112112, 1, 1, '1988-04-08', 'hello, i am an iOS developer.', '_test_06', '_test_06'),
(3, 4, '3032681857.jpg', 'prakash', 'sharma', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL),
(4, 5, NULL, 'Arnab', 'Gupta', 'Shekhar central', 'Palasiya', 'Indore', 'Alaska', 45200, 95858653262, 1, 1, '1982-01-19', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` enum('Driver','Customer','Dispensary','Advertiser') NOT NULL,
  `activation_key` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `photo` varchar(80) DEFAULT NULL,
  `business_name` varchar(80) DEFAULT NULL,
  `preferred_method_of_contact` varchar(80) DEFAULT NULL,
  `name_of_contact` varchar(80) DEFAULT NULL,
  `preferred_time_of_contact` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `address_line_1` varchar(250) DEFAULT NULL,
  `address_line_2` varchar(250) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `phone_no` bigint(20) DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `message_notify` tinyint(1) DEFAULT '0' COMMENT '0: not notify, 1: notify',
  `subscribe_to_email` tinyint(1) DEFAULT '0' COMMENT '0: not subscribe, 1: subscribe',
  `date_of_birth` date DEFAULT NULL,
  `about_yourself` varchar(250) DEFAULT NULL,
  `phone_make` varchar(50) DEFAULT NULL,
  `phone_model` varchar(50) DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `issuing_state` varchar(50) DEFAULT NULL,
  `license_expiration_date` date DEFAULT NULL,
  `license_image` varchar(50) DEFAULT NULL,
  `maintenance` varchar(50) DEFAULT NULL,
  `make` varchar(80) DEFAULT NULL,
  `model` varchar(80) DEFAULT NULL,
  `model_year` int(4) DEFAULT NULL,
  `license_plate_state` varchar(100) DEFAULT NULL,
  `license_plate_number` varchar(50) DEFAULT NULL,
  `registration_card` varchar(50) DEFAULT NULL,
  `insurance_card` varchar(50) DEFAULT NULL,
  `current_caregiver_certificate` varchar(50) DEFAULT NULL,
  `type_of_id` varchar(50) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `recommendation_expiration_date` date DEFAULT NULL,
  `recommendation_photo` varchar(50) DEFAULT NULL,
  `government_issued_identification` varchar(50) DEFAULT NULL,
  `address_proof` varchar(50) DEFAULT NULL,
  `e_signature` varchar(50) DEFAULT NULL,
  `reference_first_name_1` varchar(50) DEFAULT NULL,
  `reference_last_name_1` varchar(50) DEFAULT NULL,
  `reference_email_1` varchar(50) DEFAULT NULL,
  `phone_number_1` varchar(50) DEFAULT NULL,
  `reference_first_name_2` varchar(50) DEFAULT NULL,
  `reference_last_name_2` varchar(50) DEFAULT NULL,
  `reference_email_2` varchar(50) DEFAULT NULL,
  `phone_number_2` varchar(50) DEFAULT NULL,
  `reference_first_name_3` varchar(50) DEFAULT NULL,
  `reference_last_name_3` varchar(50) DEFAULT NULL,
  `reference_email_3` varchar(50) DEFAULT NULL,
  `phone_number_3` varchar(50) DEFAULT NULL,
  `reference_first_name_4` varchar(50) DEFAULT NULL,
  `reference_last_name_4` varchar(50) DEFAULT NULL,
  `reference_email_4` varchar(50) DEFAULT NULL,
  `phone_number_4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `user_name`, `email`, `password`, `role`, `activation_key`, `created_at`, `updated_at`, `photo`, `business_name`, `preferred_method_of_contact`, `name_of_contact`, `preferred_time_of_contact`, `first_name`, `last_name`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `phone_no`, `mobile_no`, `message_notify`, `subscribe_to_email`, `date_of_birth`, `about_yourself`, `phone_make`, `phone_model`, `license_number`, `issuing_state`, `license_expiration_date`, `license_image`, `maintenance`, `make`, `model`, `model_year`, `license_plate_state`, `license_plate_number`, `registration_card`, `insurance_card`, `current_caregiver_certificate`, `type_of_id`, `patient_id`, `recommendation_expiration_date`, `recommendation_photo`, `government_issued_identification`, `address_proof`, `e_signature`, `reference_first_name_1`, `reference_last_name_1`, `reference_email_1`, `phone_number_1`, `reference_first_name_2`, `reference_last_name_2`, `reference_email_2`, `phone_number_2`, `reference_first_name_3`, `reference_last_name_3`, `reference_email_3`, `phone_number_3`, `reference_first_name_4`, `reference_last_name_4`, `reference_email_4`, `phone_number_4`) VALUES
(1, 'prakash', 'prakashtest@gmail.com', '$2y$10$RrUBQT.HXYvfGSZZkH92IepJGQeGsTaIu1nlW5ojY73h//HvWw.mK', 'Customer', '5a782329cb68f', '2018-02-05 09:26:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'prakash', 'prakashtest2@gmail.com', '$2y$10$0vq6NwijEADpNQ1OLZ1F/evYRopDPUEB0rjsAJfYmiVaMujHfc4ee', 'Customer', '5a782407a51a0', '2018-02-05 09:29:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_address` varchar(250) NOT NULL,
  `billing_address` varchar(250) NOT NULL,
  `status` varchar(20) NOT NULL,
  `shipping_fee` double(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Alabama'),
(2, 'AK', 'Alaska'),
(3, 'AS', 'American Samoa'),
(4, 'AZ', 'Arizona'),
(5, 'AR', 'Arkansas'),
(6, 'CA', 'California'),
(7, 'CO', 'Colorado'),
(8, 'CT', 'Connecticut'),
(9, 'DE', 'Delaware'),
(10, 'DC', 'District of Columbia'),
(11, 'FM', 'Federated States of Micronesia'),
(12, 'FL', 'Florida'),
(13, 'GA', 'Georgia'),
(14, 'GU', 'Guam'),
(15, 'HI', 'Hawaii'),
(16, 'ID', 'Idaho'),
(17, 'IL', 'Illinois'),
(18, 'IN', 'Indiana'),
(19, 'IA', 'Iowa'),
(20, 'KS', 'Kansas'),
(21, 'KY', 'Kentucky'),
(22, 'LA', 'Louisiana'),
(23, 'ME', 'Maine'),
(24, 'MH', 'Marshall Islands'),
(25, 'MD', 'Maryland'),
(26, 'MA', 'Massachusetts'),
(27, 'MI', 'Michigan'),
(28, 'MN', 'Minnesota'),
(29, 'MS', 'Mississippi'),
(30, 'MO', 'Missouri'),
(31, 'MT', 'Montana'),
(32, 'NE', 'Nebraska'),
(33, 'NV', 'Nevada'),
(34, 'NH', 'New Hampshire'),
(35, 'NJ', 'New Jersey'),
(36, 'NM', 'New Mexico'),
(37, 'NY', 'New York'),
(38, 'NC', 'North Carolina'),
(39, 'ND', 'North Dakota'),
(40, 'MP', 'Northern Mariana Islands'),
(41, 'OH', 'Ohio'),
(42, 'OK', 'Oklahoma'),
(43, 'OR', 'Oregon'),
(44, 'PW', 'Palau'),
(45, 'PA', 'Pennsylvania'),
(46, 'PR', 'Puerto Rico'),
(47, 'RI', 'Rhode Island'),
(48, 'SC', 'South Carolina'),
(49, 'SD', 'South Dakota'),
(50, 'TN', 'Tennessee'),
(51, 'TX', 'Texas'),
(52, 'UT', 'Utah'),
(53, 'VT', 'Vermont'),
(54, 'VI', 'Virgin Islands'),
(55, 'VA', 'Virginia'),
(56, 'WA', 'Washington'),
(57, 'WV', 'West Virginia'),
(58, 'WI', 'Wisconsin'),
(59, 'WY', 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` enum('Admin','Driver','Customer','Advertiser','Dispensary') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: inactive, 1: active',
  `activation_key` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `role`, `is_active`, `activation_key`, `created_at`, `updated_at`) VALUES
(1, 'Cynexis Media', 'admin@cynexis.com', '$2y$10$Fao4KAxnHIoteYKazgItl.OROzvoDYYVsvxmfddXmwLRgvQX.Rsdm', 'Admin', 1, NULL, '2017-12-28 14:13:40', '2018-01-02 10:59:34'),
(2, 'pradeep_sir', 'pradeep@cynexis.com', '$2y$10$CPbO2CYa29dOzrTrnyu7xemFgwvS01jFSM08gul4Su47Y9ZFwo/Wm', 'Customer', 1, NULL, '2018-01-18 13:40:35', '2018-01-18 13:42:21'),
(3, 'prawan_sir', 'pawan@cynexis.com', '$2y$10$iDEKweV7Pr721Bt.2m1NO..MJZykM5IwnH3XUSq3GHrYDGDHjRBSW', 'Driver', 1, NULL, '2018-01-18 13:46:14', '2018-01-18 13:46:31'),
(4, 'prakash@gmail.com', 'prakash@gmail.com', '$2y$10$J6PW4kdthQESDF8Fq2cwJuo7QKkTbRI0XWSWZ2kbme2V9xRnWajyS', 'Dispensary', 1, NULL, '2018-01-19 05:48:50', '2018-02-05 09:25:36'),
(5, 'Arnab', 'arnab@gmail.com', '$2y$10$CPbO2CYa29dOzrTrnyu7xemFgwvS01jFSM08gul4Su47Y9ZFwo/Wm', 'Customer', 1, NULL, '2018-01-19 10:00:37', '2018-01-19 10:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `maintenance` varchar(50) NOT NULL,
  `make` varchar(80) NOT NULL,
  `model` varchar(80) NOT NULL,
  `model_year` int(4) NOT NULL,
  `license_plate_state` varchar(100) NOT NULL,
  `license_plate_number` varchar(50) NOT NULL,
  `registration_card` varchar(50) NOT NULL,
  `insurance_card` varchar(50) NOT NULL,
  `current_caregiver_certificate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `maintenance`, `make`, `model`, `model_year`, `license_plate_state`, `license_plate_number`, `registration_card`, `insurance_card`, `current_caregiver_certificate`) VALUES
(1, 3, '0', 'TATA_test_06', 'XUV_test_06', 1988, 'sad-008-05', 'as-05-a_test_06', '7581415874.png', '6065132699.png', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_advertisers`
-- (See below for the actual view)
--
CREATE TABLE `v_advertisers` (
`id` bigint(20) unsigned
,`user_name` varchar(200)
,`email` varchar(200)
,`password` varchar(200)
,`role` enum('Admin','Driver','Customer','Advertiser','Dispensary')
,`is_active` tinyint(1)
,`activation_key` varchar(50)
,`created_at` timestamp
,`updated_at` timestamp
,`photo` varchar(80)
,`first_name` varchar(80)
,`last_name` varchar(80)
,`address_line_1` varchar(250)
,`address_line_2` varchar(250)
,`city` varchar(100)
,`state` varchar(100)
,`zip` int(6)
,`mobile_no` bigint(20)
,`message_notify` tinyint(1)
,`subscribe_to_email` tinyint(1)
,`date_of_birth` date
,`description` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_customers`
-- (See below for the actual view)
--
CREATE TABLE `v_customers` (
`id` bigint(20) unsigned
,`user_name` varchar(200)
,`email` varchar(200)
,`password` varchar(200)
,`role` enum('Admin','Driver','Customer','Advertiser','Dispensary')
,`is_active` tinyint(1)
,`activation_key` varchar(50)
,`created_at` timestamp
,`updated_at` timestamp
,`photo` varchar(80)
,`first_name` varchar(80)
,`last_name` varchar(80)
,`address_line_1` varchar(250)
,`address_line_2` varchar(250)
,`city` varchar(100)
,`state` varchar(100)
,`zip` int(6)
,`mobile_no` bigint(20)
,`message_notify` tinyint(1)
,`subscribe_to_email` tinyint(1)
,`date_of_birth` date
,`description` varchar(250)
,`type_of_id` varchar(50)
,`license_number` varchar(50)
,`issuing_state` varchar(50)
,`license_expiration_date` date
,`patient_id` varchar(50)
,`recommendation_expiration_date` date
,`recommendation_photo` varchar(50)
,`government_issued_identification` varchar(50)
,`address_proof` varchar(50)
,`e_signature` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dispensaries`
-- (See below for the actual view)
--
CREATE TABLE `v_dispensaries` (
`id` bigint(20) unsigned
,`user_name` varchar(200)
,`email` varchar(200)
,`password` varchar(200)
,`role` enum('Admin','Driver','Customer','Advertiser','Dispensary')
,`is_active` tinyint(1)
,`created_at` timestamp
,`updated_at` timestamp
,`photo` varchar(80)
,`first_name` varchar(80)
,`last_name` varchar(80)
,`message_notify` tinyint(1)
,`subscribe_to_email` tinyint(1)
,`business_name` varchar(200)
,`address_line_1` varchar(250)
,`address_line_2` varchar(250)
,`city` varchar(80)
,`state` varchar(80)
,`zip` int(6)
,`phone_no` bigint(20)
,`business_license_number` varchar(100)
,`preferred_method_of_contact` varchar(100)
,`contact_person` varchar(100)
,`preferred_time_of_contact` varchar(100)
,`rating` tinyint(1)
,`latitude` decimal(9,6)
,`longitude` decimal(9,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_drivers`
-- (See below for the actual view)
--
CREATE TABLE `v_drivers` (
`id` bigint(20) unsigned
,`user_name` varchar(200)
,`email` varchar(200)
,`password` varchar(200)
,`role` enum('Admin','Driver','Customer','Advertiser','Dispensary')
,`is_active` tinyint(1)
,`activation_key` varchar(50)
,`created_at` timestamp
,`updated_at` timestamp
,`photo` varchar(80)
,`first_name` varchar(80)
,`last_name` varchar(80)
,`address_line_1` varchar(250)
,`address_line_2` varchar(250)
,`city` varchar(100)
,`state` varchar(100)
,`zip` int(6)
,`mobile_no` bigint(20)
,`message_notify` tinyint(1)
,`subscribe_to_email` tinyint(1)
,`date_of_birth` date
,`description` varchar(250)
,`license_number` varchar(50)
,`issuing_state` varchar(50)
,`license_expiration_date` date
,`license_image` varchar(50)
,`maintenance` varchar(50)
,`make` varchar(80)
,`model` varchar(80)
,`model_year` int(4)
,`license_plate_state` varchar(100)
,`license_plate_number` varchar(50)
,`registration_card` varchar(50)
,`insurance_card` varchar(50)
,`current_caregiver_certificate` varchar(50)
,`phone_model` varchar(50)
,`phone_make` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_products`
-- (See below for the actual view)
--
CREATE TABLE `v_products` (
`id` bigint(20) unsigned
,`name` varchar(250)
,`price` double(10,2)
,`tax` double(10,2)
,`created_at` timestamp
,`updated_at` timestamp
,`attribute_name` text
,`product_images` text
);

-- --------------------------------------------------------

--
-- Structure for view `v_advertisers`
--
DROP TABLE IF EXISTS `v_advertisers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cynexis`@`localhost` SQL SECURITY DEFINER VIEW `v_advertisers`  AS  select `users`.`id` AS `id`,`users`.`user_name` AS `user_name`,`users`.`email` AS `email`,`users`.`password` AS `password`,`users`.`role` AS `role`,`users`.`is_active` AS `is_active`,`users`.`activation_key` AS `activation_key`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at`,`profiles`.`photo` AS `photo`,`profiles`.`first_name` AS `first_name`,`profiles`.`last_name` AS `last_name`,`profiles`.`address_line_1` AS `address_line_1`,`profiles`.`address_line_2` AS `address_line_2`,`profiles`.`city` AS `city`,`profiles`.`state` AS `state`,`profiles`.`zip` AS `zip`,`profiles`.`mobile_no` AS `mobile_no`,`profiles`.`message_notify` AS `message_notify`,`profiles`.`subscribe_to_email` AS `subscribe_to_email`,`profiles`.`date_of_birth` AS `date_of_birth`,`profiles`.`description` AS `description` from (`users` left join `profiles` on((`users`.`id` = `profiles`.`user_id`))) where (`users`.`role` = 'Advertiser') ;

-- --------------------------------------------------------

--
-- Structure for view `v_customers`
--
DROP TABLE IF EXISTS `v_customers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cynexis`@`localhost` SQL SECURITY DEFINER VIEW `v_customers`  AS  select `users`.`id` AS `id`,`users`.`user_name` AS `user_name`,`users`.`email` AS `email`,`users`.`password` AS `password`,`users`.`role` AS `role`,`users`.`is_active` AS `is_active`,`users`.`activation_key` AS `activation_key`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at`,`profiles`.`photo` AS `photo`,`profiles`.`first_name` AS `first_name`,`profiles`.`last_name` AS `last_name`,`profiles`.`address_line_1` AS `address_line_1`,`profiles`.`address_line_2` AS `address_line_2`,`profiles`.`city` AS `city`,`profiles`.`state` AS `state`,`profiles`.`zip` AS `zip`,`profiles`.`mobile_no` AS `mobile_no`,`profiles`.`message_notify` AS `message_notify`,`profiles`.`subscribe_to_email` AS `subscribe_to_email`,`profiles`.`date_of_birth` AS `date_of_birth`,`profiles`.`description` AS `description`,`documents`.`type_of_id` AS `type_of_id`,`documents`.`license_number` AS `license_number`,`documents`.`issuing_state` AS `issuing_state`,`documents`.`license_expiration_date` AS `license_expiration_date`,`documents`.`patient_id` AS `patient_id`,`documents`.`recommendation_expiration_date` AS `recommendation_expiration_date`,`documents`.`recommendation_photo` AS `recommendation_photo`,`documents`.`government_issued_identification` AS `government_issued_identification`,`documents`.`address_proof` AS `address_proof`,`documents`.`e_signature` AS `e_signature` from ((((`users` left join `documents` on((`users`.`id` = `documents`.`user_id`))) left join `drivers` on((`users`.`id` = `drivers`.`user_id`))) left join `profiles` on((`users`.`id` = `profiles`.`user_id`))) left join `vehicles` on((`users`.`id` = `vehicles`.`user_id`))) where (`users`.`role` = 'Customer') ;

-- --------------------------------------------------------

--
-- Structure for view `v_dispensaries`
--
DROP TABLE IF EXISTS `v_dispensaries`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cynexis`@`localhost` SQL SECURITY DEFINER VIEW `v_dispensaries`  AS  select `users`.`id` AS `id`,`users`.`user_name` AS `user_name`,`users`.`email` AS `email`,`users`.`password` AS `password`,`users`.`role` AS `role`,`users`.`is_active` AS `is_active`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at`,`profiles`.`photo` AS `photo`,`profiles`.`first_name` AS `first_name`,`profiles`.`last_name` AS `last_name`,`profiles`.`message_notify` AS `message_notify`,`profiles`.`subscribe_to_email` AS `subscribe_to_email`,`dispensaries`.`business_name` AS `business_name`,`dispensaries`.`address_line_1` AS `address_line_1`,`dispensaries`.`address_line_2` AS `address_line_2`,`dispensaries`.`city` AS `city`,`dispensaries`.`state` AS `state`,`dispensaries`.`zip` AS `zip`,`dispensaries`.`phone_no` AS `phone_no`,`dispensaries`.`business_license_number` AS `business_license_number`,`dispensaries`.`preferred_method_of_contact` AS `preferred_method_of_contact`,`dispensaries`.`contact_person` AS `contact_person`,`dispensaries`.`preferred_time_of_contact` AS `preferred_time_of_contact`,`dispensaries`.`rating` AS `rating`,`dispensaries`.`latitude` AS `latitude`,`dispensaries`.`longitude` AS `longitude` from ((`users` left join `dispensaries` on((`users`.`id` = `dispensaries`.`user_id`))) left join `profiles` on((`users`.`id` = `profiles`.`user_id`))) where (`users`.`role` = 'Dispensary') ;

-- --------------------------------------------------------

--
-- Structure for view `v_drivers`
--
DROP TABLE IF EXISTS `v_drivers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cynexis`@`localhost` SQL SECURITY DEFINER VIEW `v_drivers`  AS  select `users`.`id` AS `id`,`users`.`user_name` AS `user_name`,`users`.`email` AS `email`,`users`.`password` AS `password`,`users`.`role` AS `role`,`users`.`is_active` AS `is_active`,`users`.`activation_key` AS `activation_key`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at`,`profiles`.`photo` AS `photo`,`profiles`.`first_name` AS `first_name`,`profiles`.`last_name` AS `last_name`,`profiles`.`address_line_1` AS `address_line_1`,`profiles`.`address_line_2` AS `address_line_2`,`profiles`.`city` AS `city`,`profiles`.`state` AS `state`,`profiles`.`zip` AS `zip`,`profiles`.`mobile_no` AS `mobile_no`,`profiles`.`message_notify` AS `message_notify`,`profiles`.`subscribe_to_email` AS `subscribe_to_email`,`profiles`.`date_of_birth` AS `date_of_birth`,`profiles`.`description` AS `description`,`drivers`.`license_number` AS `license_number`,`drivers`.`issuing_state` AS `issuing_state`,`drivers`.`license_expiration_date` AS `license_expiration_date`,`drivers`.`license_image` AS `license_image`,`vehicles`.`maintenance` AS `maintenance`,`vehicles`.`make` AS `make`,`vehicles`.`model` AS `model`,`vehicles`.`model_year` AS `model_year`,`vehicles`.`license_plate_state` AS `license_plate_state`,`vehicles`.`license_plate_number` AS `license_plate_number`,`vehicles`.`registration_card` AS `registration_card`,`vehicles`.`insurance_card` AS `insurance_card`,`vehicles`.`current_caregiver_certificate` AS `current_caregiver_certificate`,`profiles`.`phone_model` AS `phone_model`,`profiles`.`phone_make` AS `phone_make` from ((((`users` left join `documents` on((`users`.`id` = `documents`.`user_id`))) left join `drivers` on((`users`.`id` = `drivers`.`user_id`))) left join `profiles` on((`users`.`id` = `profiles`.`user_id`))) left join `vehicles` on((`users`.`id` = `vehicles`.`user_id`))) where (`users`.`role` = 'Driver') ;

-- --------------------------------------------------------

--
-- Structure for view `v_products`
--
DROP TABLE IF EXISTS `v_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cynexis`@`localhost` SQL SECURITY DEFINER VIEW `v_products`  AS  select `products`.`id` AS `id`,`products`.`name` AS `name`,`products`.`price` AS `price`,`products`.`tax` AS `tax`,`products`.`created_at` AS `created_at`,`products`.`updated_at` AS `updated_at`,group_concat(distinct concat(`attr`.`attribute_name`,':',`attr`.`attribute_value`) separator ',') AS `attribute_name`,group_concat(distinct `product_images`.`name` separator ', ') AS `product_images` from (((`products` left join `product_images` on((`products`.`id` = `product_images`.`product_id`))) left join `product_attribute` `pro_attr` on((`pro_attr`.`product_id` = `products`.`id`))) left join `attributes` `attr` on((`attr`.`id` = `pro_attr`.`attribute_id`))) group by `products`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dispensary_id` (`dispensary_id`);

--
-- Indexes for table `dispensaries`
--
ALTER TABLE `dispensaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `family_references`
--
ALTER TABLE `family_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dispensaries`
--
ALTER TABLE `dispensaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `family_references`
--
ALTER TABLE `family_references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_ibfk_1` FOREIGN KEY (`dispensary_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dispensaries`
--
ALTER TABLE `dispensaries`
  ADD CONSTRAINT `dispensaries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `family_references`
--
ALTER TABLE `family_references`
  ADD CONSTRAINT `family_references_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD CONSTRAINT `product_attribute_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_attribute_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
