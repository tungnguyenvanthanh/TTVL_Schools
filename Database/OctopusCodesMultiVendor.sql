-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 166.62.8.13
-- Generation Time: Jan 13, 2017 at 05:19 AM
-- Server version: 5.5.43
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- --------------------------------------------------------

--
-- Table structure for table `ocmv_attributes`
--

CREATE TABLE `ocmv_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `customer_2` (`customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ocmv_attributes`
--

INSERT INTO `ocmv_attributes` VALUES(6, 'Color', 'XAnh', 'shop1');
INSERT INTO `ocmv_attributes` VALUES(8, 'Size', 'M | L| XL', 'shop1');
INSERT INTO `ocmv_attributes` VALUES(10, 'Màu sắc', 'Đỏ | Vàng', 'shop1');
INSERT INTO `ocmv_attributes` VALUES(11, 'color', 'red', 'shop1');
INSERT INTO `ocmv_attributes` VALUES(12, 'color', 'red', 'shop10');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_category`
--

CREATE TABLE `ocmv_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `customer` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `customer_2` (`customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=67 ;

--
-- Dumping data for table `ocmv_category`
--

INSERT INTO `ocmv_category` VALUES(1, 'Books & Audible', 0, NULL, 0);
INSERT INTO `ocmv_category` VALUES(20, 'Books', 1, NULL, 0);
INSERT INTO `ocmv_category` VALUES(21, 'Children''s Books', 1, NULL, 0);
INSERT INTO `ocmv_category` VALUES(22, 'Magazines', 1, NULL, 0);
INSERT INTO `ocmv_category` VALUES(23, 'Movies, Music & Games', 0, NULL, 0);
INSERT INTO `ocmv_category` VALUES(24, 'Movies & TV', 23, NULL, 0);
INSERT INTO `ocmv_category` VALUES(25, 'Blu-ray', 23, NULL, 0);
INSERT INTO `ocmv_category` VALUES(26, 'Headphones', 23, NULL, 0);
INSERT INTO `ocmv_category` VALUES(27, 'PC Gaming', 23, NULL, 0);
INSERT INTO `ocmv_category` VALUES(28, 'Electronics', 0, NULL, 0);
INSERT INTO `ocmv_category` VALUES(31, 'Cell Phones & Accessories', 28, NULL, 0);
INSERT INTO `ocmv_category` VALUES(32, 'Headphones', 28, NULL, 0);
INSERT INTO `ocmv_category` VALUES(33, 'Computers', 0, NULL, 0);
INSERT INTO `ocmv_category` VALUES(34, 'Computers & Tablets', 33, NULL, 0);
INSERT INTO `ocmv_category` VALUES(35, 'Monitors', 33, NULL, 0);
INSERT INTO `ocmv_category` VALUES(36, 'Networking', 33, NULL, 0);
INSERT INTO `ocmv_category` VALUES(37, 'CateVendor', 0, 'shop1', 1);
INSERT INTO `ocmv_category` VALUES(39, 'CateVendor 1.12', 37, 'shop1', 1);
INSERT INTO `ocmv_category` VALUES(58, 'shop1', 0, 'shop1', 1);
INSERT INTO `ocmv_category` VALUES(59, 'Category 1 - Shop 1', 0, 'shop1', 1);
INSERT INTO `ocmv_category` VALUES(60, 'Category 1.1 - Shop 1', 59, 'shop1', 1);
INSERT INTO `ocmv_category` VALUES(61, 'Handmade', 0, NULL, 0);
INSERT INTO `ocmv_category` VALUES(62, 'Jewelry', 61, NULL, 0);
INSERT INTO `ocmv_category` VALUES(63, 'Artwork', 61, NULL, 0);
INSERT INTO `ocmv_category` VALUES(64, 'Artwork', 0, 'shop10', 1);
INSERT INTO `ocmv_category` VALUES(65, 'Toys & Games', 0, 'shop10', 1);
INSERT INTO `ocmv_category` VALUES(66, 'Artwork 1', 64, 'shop10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_countries`
--

CREATE TABLE `ocmv_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=247 ;

--
-- Dumping data for table `ocmv_countries`
--

INSERT INTO `ocmv_countries` VALUES(1, 'AF', 'Afghanistan');
INSERT INTO `ocmv_countries` VALUES(2, 'AF', 'Afghanistan');
INSERT INTO `ocmv_countries` VALUES(3, 'AL', 'Albania');
INSERT INTO `ocmv_countries` VALUES(4, 'DZ', 'Algeria');
INSERT INTO `ocmv_countries` VALUES(5, 'DS', 'American Samoa');
INSERT INTO `ocmv_countries` VALUES(6, 'AD', 'Andorra');
INSERT INTO `ocmv_countries` VALUES(7, 'AO', 'Angola');
INSERT INTO `ocmv_countries` VALUES(8, 'AI', 'Anguilla');
INSERT INTO `ocmv_countries` VALUES(9, 'AQ', 'Antarctica');
INSERT INTO `ocmv_countries` VALUES(10, 'AG', 'Antigua and Barbuda');
INSERT INTO `ocmv_countries` VALUES(11, 'AR', 'Argentina');
INSERT INTO `ocmv_countries` VALUES(12, 'AM', 'Armenia');
INSERT INTO `ocmv_countries` VALUES(13, 'AW', 'Aruba');
INSERT INTO `ocmv_countries` VALUES(14, 'AU', 'Australia');
INSERT INTO `ocmv_countries` VALUES(15, 'AT', 'Austria');
INSERT INTO `ocmv_countries` VALUES(16, 'AZ', 'Azerbaijan');
INSERT INTO `ocmv_countries` VALUES(17, 'BS', 'Bahamas');
INSERT INTO `ocmv_countries` VALUES(18, 'BH', 'Bahrain');
INSERT INTO `ocmv_countries` VALUES(19, 'BD', 'Bangladesh');
INSERT INTO `ocmv_countries` VALUES(20, 'BB', 'Barbados');
INSERT INTO `ocmv_countries` VALUES(21, 'BY', 'Belarus');
INSERT INTO `ocmv_countries` VALUES(22, 'BE', 'Belgium');
INSERT INTO `ocmv_countries` VALUES(23, 'BZ', 'Belize');
INSERT INTO `ocmv_countries` VALUES(24, 'BJ', 'Benin');
INSERT INTO `ocmv_countries` VALUES(25, 'BM', 'Bermuda');
INSERT INTO `ocmv_countries` VALUES(26, 'BT', 'Bhutan');
INSERT INTO `ocmv_countries` VALUES(27, 'BO', 'Bolivia');
INSERT INTO `ocmv_countries` VALUES(28, 'BA', 'Bosnia and Herzegovina');
INSERT INTO `ocmv_countries` VALUES(29, 'BW', 'Botswana');
INSERT INTO `ocmv_countries` VALUES(30, 'BV', 'Bouvet Island');
INSERT INTO `ocmv_countries` VALUES(31, 'BR', 'Brazil');
INSERT INTO `ocmv_countries` VALUES(32, 'IO', 'British Indian Ocean Territory');
INSERT INTO `ocmv_countries` VALUES(33, 'BN', 'Brunei Darussalam');
INSERT INTO `ocmv_countries` VALUES(34, 'BG', 'Bulgaria');
INSERT INTO `ocmv_countries` VALUES(35, 'BF', 'Burkina Faso');
INSERT INTO `ocmv_countries` VALUES(36, 'BI', 'Burundi');
INSERT INTO `ocmv_countries` VALUES(37, 'KH', 'Cambodia');
INSERT INTO `ocmv_countries` VALUES(38, 'CM', 'Cameroon');
INSERT INTO `ocmv_countries` VALUES(39, 'CA', 'Canada');
INSERT INTO `ocmv_countries` VALUES(40, 'CV', 'Cape Verde');
INSERT INTO `ocmv_countries` VALUES(41, 'KY', 'Cayman Islands');
INSERT INTO `ocmv_countries` VALUES(42, 'CF', 'Central African Republic');
INSERT INTO `ocmv_countries` VALUES(43, 'TD', 'Chad');
INSERT INTO `ocmv_countries` VALUES(44, 'CL', 'Chile');
INSERT INTO `ocmv_countries` VALUES(45, 'CN', 'China');
INSERT INTO `ocmv_countries` VALUES(46, 'CX', 'Christmas Island');
INSERT INTO `ocmv_countries` VALUES(47, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `ocmv_countries` VALUES(48, 'CO', 'Colombia');
INSERT INTO `ocmv_countries` VALUES(49, 'KM', 'Comoros');
INSERT INTO `ocmv_countries` VALUES(50, 'CG', 'Congo');
INSERT INTO `ocmv_countries` VALUES(51, 'CK', 'Cook Islands');
INSERT INTO `ocmv_countries` VALUES(52, 'CR', 'Costa Rica');
INSERT INTO `ocmv_countries` VALUES(53, 'HR', 'Croatia (Hrvatska)');
INSERT INTO `ocmv_countries` VALUES(54, 'CU', 'Cuba');
INSERT INTO `ocmv_countries` VALUES(55, 'CY', 'Cyprus');
INSERT INTO `ocmv_countries` VALUES(56, 'CZ', 'Czech Republic');
INSERT INTO `ocmv_countries` VALUES(57, 'DK', 'Denmark');
INSERT INTO `ocmv_countries` VALUES(58, 'DJ', 'Djibouti');
INSERT INTO `ocmv_countries` VALUES(59, 'DM', 'Dominica');
INSERT INTO `ocmv_countries` VALUES(60, 'DO', 'Dominican Republic');
INSERT INTO `ocmv_countries` VALUES(61, 'TP', 'East Timor');
INSERT INTO `ocmv_countries` VALUES(62, 'EC', 'Ecuador');
INSERT INTO `ocmv_countries` VALUES(63, 'EG', 'Egypt');
INSERT INTO `ocmv_countries` VALUES(64, 'SV', 'El Salvador');
INSERT INTO `ocmv_countries` VALUES(65, 'GQ', 'Equatorial Guinea');
INSERT INTO `ocmv_countries` VALUES(66, 'ER', 'Eritrea');
INSERT INTO `ocmv_countries` VALUES(67, 'EE', 'Estonia');
INSERT INTO `ocmv_countries` VALUES(68, 'ET', 'Ethiopia');
INSERT INTO `ocmv_countries` VALUES(69, 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `ocmv_countries` VALUES(70, 'FO', 'Faroe Islands');
INSERT INTO `ocmv_countries` VALUES(71, 'FJ', 'Fiji');
INSERT INTO `ocmv_countries` VALUES(72, 'FI', 'Finland');
INSERT INTO `ocmv_countries` VALUES(73, 'FR', 'France');
INSERT INTO `ocmv_countries` VALUES(74, 'FX', 'France, Metropolitan');
INSERT INTO `ocmv_countries` VALUES(75, 'GF', 'French Guiana');
INSERT INTO `ocmv_countries` VALUES(76, 'PF', 'French Polynesia');
INSERT INTO `ocmv_countries` VALUES(77, 'TF', 'French Southern Territories');
INSERT INTO `ocmv_countries` VALUES(78, 'GA', 'Gabon');
INSERT INTO `ocmv_countries` VALUES(79, 'GM', 'Gambia');
INSERT INTO `ocmv_countries` VALUES(80, 'GE', 'Georgia');
INSERT INTO `ocmv_countries` VALUES(81, 'DE', 'Germany');
INSERT INTO `ocmv_countries` VALUES(82, 'GH', 'Ghana');
INSERT INTO `ocmv_countries` VALUES(83, 'GI', 'Gibraltar');
INSERT INTO `ocmv_countries` VALUES(84, 'GK', 'Guernsey');
INSERT INTO `ocmv_countries` VALUES(85, 'GR', 'Greece');
INSERT INTO `ocmv_countries` VALUES(86, 'GL', 'Greenland');
INSERT INTO `ocmv_countries` VALUES(87, 'GD', 'Grenada');
INSERT INTO `ocmv_countries` VALUES(88, 'GP', 'Guadeloupe');
INSERT INTO `ocmv_countries` VALUES(89, 'GU', 'Guam');
INSERT INTO `ocmv_countries` VALUES(90, 'GT', 'Guatemala');
INSERT INTO `ocmv_countries` VALUES(91, 'GN', 'Guinea');
INSERT INTO `ocmv_countries` VALUES(92, 'GW', 'Guinea-Bissau');
INSERT INTO `ocmv_countries` VALUES(93, 'GY', 'Guyana');
INSERT INTO `ocmv_countries` VALUES(94, 'HT', 'Haiti');
INSERT INTO `ocmv_countries` VALUES(95, 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `ocmv_countries` VALUES(96, 'HN', 'Honduras');
INSERT INTO `ocmv_countries` VALUES(97, 'HK', 'Hong Kong');
INSERT INTO `ocmv_countries` VALUES(98, 'HU', 'Hungary');
INSERT INTO `ocmv_countries` VALUES(99, 'IS', 'Iceland');
INSERT INTO `ocmv_countries` VALUES(100, 'IN', 'India');
INSERT INTO `ocmv_countries` VALUES(101, 'IM', 'Isle of Man');
INSERT INTO `ocmv_countries` VALUES(102, 'ID', 'Indonesia');
INSERT INTO `ocmv_countries` VALUES(103, 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `ocmv_countries` VALUES(104, 'IQ', 'Iraq');
INSERT INTO `ocmv_countries` VALUES(105, 'IE', 'Ireland');
INSERT INTO `ocmv_countries` VALUES(106, 'IL', 'Israel');
INSERT INTO `ocmv_countries` VALUES(107, 'IT', 'Italy');
INSERT INTO `ocmv_countries` VALUES(108, 'CI', 'Ivory Coast');
INSERT INTO `ocmv_countries` VALUES(109, 'JE', 'Jersey');
INSERT INTO `ocmv_countries` VALUES(110, 'JM', 'Jamaica');
INSERT INTO `ocmv_countries` VALUES(111, 'JP', 'Japan');
INSERT INTO `ocmv_countries` VALUES(112, 'JO', 'Jordan');
INSERT INTO `ocmv_countries` VALUES(113, 'KZ', 'Kazakhstan');
INSERT INTO `ocmv_countries` VALUES(114, 'KE', 'Kenya');
INSERT INTO `ocmv_countries` VALUES(115, 'KI', 'Kiribati');
INSERT INTO `ocmv_countries` VALUES(116, 'KP', 'Korea, Democratic People''s Republic of');
INSERT INTO `ocmv_countries` VALUES(117, 'KR', 'Korea, Republic of');
INSERT INTO `ocmv_countries` VALUES(118, 'XK', 'Kosovo');
INSERT INTO `ocmv_countries` VALUES(119, 'KW', 'Kuwait');
INSERT INTO `ocmv_countries` VALUES(120, 'KG', 'Kyrgyzstan');
INSERT INTO `ocmv_countries` VALUES(121, 'LA', 'Lao People''s Democratic Republic');
INSERT INTO `ocmv_countries` VALUES(122, 'LV', 'Latvia');
INSERT INTO `ocmv_countries` VALUES(123, 'LB', 'Lebanon');
INSERT INTO `ocmv_countries` VALUES(124, 'LS', 'Lesotho');
INSERT INTO `ocmv_countries` VALUES(125, 'LR', 'Liberia');
INSERT INTO `ocmv_countries` VALUES(126, 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `ocmv_countries` VALUES(127, 'LI', 'Liechtenstein');
INSERT INTO `ocmv_countries` VALUES(128, 'LT', 'Lithuania');
INSERT INTO `ocmv_countries` VALUES(129, 'LU', 'Luxembourg');
INSERT INTO `ocmv_countries` VALUES(130, 'MO', 'Macau');
INSERT INTO `ocmv_countries` VALUES(131, 'MK', 'Macedonia');
INSERT INTO `ocmv_countries` VALUES(132, 'MG', 'Madagascar');
INSERT INTO `ocmv_countries` VALUES(133, 'MW', 'Malawi');
INSERT INTO `ocmv_countries` VALUES(134, 'MY', 'Malaysia');
INSERT INTO `ocmv_countries` VALUES(135, 'MV', 'Maldives');
INSERT INTO `ocmv_countries` VALUES(136, 'ML', 'Mali');
INSERT INTO `ocmv_countries` VALUES(137, 'MT', 'Malta');
INSERT INTO `ocmv_countries` VALUES(138, 'MH', 'Marshall Islands');
INSERT INTO `ocmv_countries` VALUES(139, 'MQ', 'Martinique');
INSERT INTO `ocmv_countries` VALUES(140, 'MR', 'Mauritania');
INSERT INTO `ocmv_countries` VALUES(141, 'MU', 'Mauritius');
INSERT INTO `ocmv_countries` VALUES(142, 'TY', 'Mayotte');
INSERT INTO `ocmv_countries` VALUES(143, 'MX', 'Mexico');
INSERT INTO `ocmv_countries` VALUES(144, 'FM', 'Micronesia, Federated States of');
INSERT INTO `ocmv_countries` VALUES(145, 'MD', 'Moldova, Republic of');
INSERT INTO `ocmv_countries` VALUES(146, 'MC', 'Monaco');
INSERT INTO `ocmv_countries` VALUES(147, 'MN', 'Mongolia');
INSERT INTO `ocmv_countries` VALUES(148, 'ME', 'Montenegro');
INSERT INTO `ocmv_countries` VALUES(149, 'MS', 'Montserrat');
INSERT INTO `ocmv_countries` VALUES(150, 'MA', 'Morocco');
INSERT INTO `ocmv_countries` VALUES(151, 'MZ', 'Mozambique');
INSERT INTO `ocmv_countries` VALUES(152, 'MM', 'Myanmar');
INSERT INTO `ocmv_countries` VALUES(153, 'NA', 'Namibia');
INSERT INTO `ocmv_countries` VALUES(154, 'NR', 'Nauru');
INSERT INTO `ocmv_countries` VALUES(155, 'NP', 'Nepal');
INSERT INTO `ocmv_countries` VALUES(156, 'NL', 'Netherlands');
INSERT INTO `ocmv_countries` VALUES(157, 'AN', 'Netherlands Antilles');
INSERT INTO `ocmv_countries` VALUES(158, 'NC', 'New Caledonia');
INSERT INTO `ocmv_countries` VALUES(159, 'NZ', 'New Zealand');
INSERT INTO `ocmv_countries` VALUES(160, 'NI', 'Nicaragua');
INSERT INTO `ocmv_countries` VALUES(161, 'NE', 'Niger');
INSERT INTO `ocmv_countries` VALUES(162, 'NG', 'Nigeria');
INSERT INTO `ocmv_countries` VALUES(163, 'NU', 'Niue');
INSERT INTO `ocmv_countries` VALUES(164, 'NF', 'Norfolk Island');
INSERT INTO `ocmv_countries` VALUES(165, 'MP', 'Northern Mariana Islands');
INSERT INTO `ocmv_countries` VALUES(166, 'NO', 'Norway');
INSERT INTO `ocmv_countries` VALUES(167, 'OM', 'Oman');
INSERT INTO `ocmv_countries` VALUES(168, 'PK', 'Pakistan');
INSERT INTO `ocmv_countries` VALUES(169, 'PW', 'Palau');
INSERT INTO `ocmv_countries` VALUES(170, 'PS', 'Palestine');
INSERT INTO `ocmv_countries` VALUES(171, 'PA', 'Panama');
INSERT INTO `ocmv_countries` VALUES(172, 'PG', 'Papua New Guinea');
INSERT INTO `ocmv_countries` VALUES(173, 'PY', 'Paraguay');
INSERT INTO `ocmv_countries` VALUES(174, 'PE', 'Peru');
INSERT INTO `ocmv_countries` VALUES(175, 'PH', 'Philippines');
INSERT INTO `ocmv_countries` VALUES(176, 'PN', 'Pitcairn');
INSERT INTO `ocmv_countries` VALUES(177, 'PL', 'Poland');
INSERT INTO `ocmv_countries` VALUES(178, 'PT', 'Portugal');
INSERT INTO `ocmv_countries` VALUES(179, 'PR', 'Puerto Rico');
INSERT INTO `ocmv_countries` VALUES(180, 'QA', 'Qatar');
INSERT INTO `ocmv_countries` VALUES(181, 'RE', 'Reunion');
INSERT INTO `ocmv_countries` VALUES(182, 'RO', 'Romania');
INSERT INTO `ocmv_countries` VALUES(183, 'RU', 'Russian Federation');
INSERT INTO `ocmv_countries` VALUES(184, 'RW', 'Rwanda');
INSERT INTO `ocmv_countries` VALUES(185, 'KN', 'Saint Kitts and Nevis');
INSERT INTO `ocmv_countries` VALUES(186, 'LC', 'Saint Lucia');
INSERT INTO `ocmv_countries` VALUES(187, 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `ocmv_countries` VALUES(188, 'WS', 'Samoa');
INSERT INTO `ocmv_countries` VALUES(189, 'SM', 'San Marino');
INSERT INTO `ocmv_countries` VALUES(190, 'ST', 'Sao Tome and Principe');
INSERT INTO `ocmv_countries` VALUES(191, 'SA', 'Saudi Arabia');
INSERT INTO `ocmv_countries` VALUES(192, 'SN', 'Senegal');
INSERT INTO `ocmv_countries` VALUES(193, 'RS', 'Serbia');
INSERT INTO `ocmv_countries` VALUES(194, 'SC', 'Seychelles');
INSERT INTO `ocmv_countries` VALUES(195, 'SL', 'Sierra Leone');
INSERT INTO `ocmv_countries` VALUES(196, 'SG', 'Singapore');
INSERT INTO `ocmv_countries` VALUES(197, 'SK', 'Slovakia');
INSERT INTO `ocmv_countries` VALUES(198, 'SI', 'Slovenia');
INSERT INTO `ocmv_countries` VALUES(199, 'SB', 'Solomon Islands');
INSERT INTO `ocmv_countries` VALUES(200, 'SO', 'Somalia');
INSERT INTO `ocmv_countries` VALUES(201, 'ZA', 'South Africa');
INSERT INTO `ocmv_countries` VALUES(202, 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `ocmv_countries` VALUES(203, 'ES', 'Spain');
INSERT INTO `ocmv_countries` VALUES(204, 'LK', 'Sri Lanka');
INSERT INTO `ocmv_countries` VALUES(205, 'SH', 'St. Helena');
INSERT INTO `ocmv_countries` VALUES(206, 'PM', 'St. Pierre and Miquelon');
INSERT INTO `ocmv_countries` VALUES(207, 'SD', 'Sudan');
INSERT INTO `ocmv_countries` VALUES(208, 'SR', 'Suriname');
INSERT INTO `ocmv_countries` VALUES(209, 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `ocmv_countries` VALUES(210, 'SZ', 'Swaziland');
INSERT INTO `ocmv_countries` VALUES(211, 'SE', 'Sweden');
INSERT INTO `ocmv_countries` VALUES(212, 'CH', 'Switzerland');
INSERT INTO `ocmv_countries` VALUES(213, 'SY', 'Syrian Arab Republic');
INSERT INTO `ocmv_countries` VALUES(214, 'TW', 'Taiwan');
INSERT INTO `ocmv_countries` VALUES(215, 'TJ', 'Tajikistan');
INSERT INTO `ocmv_countries` VALUES(216, 'TZ', 'Tanzania, United Republic of');
INSERT INTO `ocmv_countries` VALUES(217, 'TH', 'Thailand');
INSERT INTO `ocmv_countries` VALUES(218, 'TG', 'Togo');
INSERT INTO `ocmv_countries` VALUES(219, 'TK', 'Tokelau');
INSERT INTO `ocmv_countries` VALUES(220, 'TO', 'Tonga');
INSERT INTO `ocmv_countries` VALUES(221, 'TT', 'Trinidad and Tobago');
INSERT INTO `ocmv_countries` VALUES(222, 'TN', 'Tunisia');
INSERT INTO `ocmv_countries` VALUES(223, 'TR', 'Turkey');
INSERT INTO `ocmv_countries` VALUES(224, 'TM', 'Turkmenistan');
INSERT INTO `ocmv_countries` VALUES(225, 'TC', 'Turks and Caicos Islands');
INSERT INTO `ocmv_countries` VALUES(226, 'TV', 'Tuvalu');
INSERT INTO `ocmv_countries` VALUES(227, 'UG', 'Uganda');
INSERT INTO `ocmv_countries` VALUES(228, 'UA', 'Ukraine');
INSERT INTO `ocmv_countries` VALUES(229, 'AE', 'United Arab Emirates');
INSERT INTO `ocmv_countries` VALUES(230, 'GB', 'United Kingdom');
INSERT INTO `ocmv_countries` VALUES(231, 'US', 'United States');
INSERT INTO `ocmv_countries` VALUES(232, 'UM', 'United States minor outlying islands');
INSERT INTO `ocmv_countries` VALUES(233, 'UY', 'Uruguay');
INSERT INTO `ocmv_countries` VALUES(234, 'UZ', 'Uzbekistan');
INSERT INTO `ocmv_countries` VALUES(235, 'VU', 'Vanuatu');
INSERT INTO `ocmv_countries` VALUES(236, 'VA', 'Vatican City State');
INSERT INTO `ocmv_countries` VALUES(237, 'VE', 'Venezuela');
INSERT INTO `ocmv_countries` VALUES(238, 'VN', 'Vietnam');
INSERT INTO `ocmv_countries` VALUES(239, 'VG', 'Virgin Islands (British)');
INSERT INTO `ocmv_countries` VALUES(240, 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `ocmv_countries` VALUES(241, 'WF', 'Wallis and Futuna Islands');
INSERT INTO `ocmv_countries` VALUES(242, 'EH', 'Western Sahara');
INSERT INTO `ocmv_countries` VALUES(243, 'YE', 'Yemen');
INSERT INTO `ocmv_countries` VALUES(244, 'ZR', 'Zaire');
INSERT INTO `ocmv_countries` VALUES(245, 'ZM', 'Zambia');
INSERT INTO `ocmv_countries` VALUES(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_currency`
--

CREATE TABLE `ocmv_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ocmv_currency`
--

INSERT INTO `ocmv_currency` VALUES(1, 'USA', '$', 'en_US', 1);
INSERT INTO `ocmv_currency` VALUES(2, 'Italia', 'Eu', 'it_IT', 0);
INSERT INTO `ocmv_currency` VALUES(6, 'India', '', 'hi_IN', 0);
INSERT INTO `ocmv_currency` VALUES(7, 'VietNam', 'Đ', 'vi_VN', 0);
INSERT INTO `ocmv_currency` VALUES(8, 'France', '€', 'fr_FR', 0);
INSERT INTO `ocmv_currency` VALUES(9, 'German', '', 'de_DE', 0);
INSERT INTO `ocmv_currency` VALUES(10, 'Brazil', '', 'pt_BR', 0);
INSERT INTO `ocmv_currency` VALUES(11, 'Spain', '', 'es_ES', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_customer`
--

CREATE TABLE `ocmv_customer` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `fullName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shopname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `creationdate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `shopname` (`shopname`),
  UNIQUE KEY `shopname_2` (`shopname`),
  KEY `roleId` (`roleId`),
  KEY `roleId_2` (`roleId`),
  KEY `roleId_3` (`roleId`),
  KEY `roleId_4` (`roleId`),
  KEY `roleId_5` (`roleId`),
  KEY `roleId_6` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ocmv_customer`
--

INSERT INTO `ocmv_customer` VALUES('customer1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, 1, 'Customer 1', NULL, 'United States', 'Chicago', 'Street 2', 'customer1@gmail.com', '123456', '', NULL);
INSERT INTO `ocmv_customer` VALUES('customer2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, 1, 'Customer 2', NULL, 'United States', 'Chicago', 'Street 2', 'customer2@gmail.com', '123456', '', '2017-01-12 10:41:32');
INSERT INTO `ocmv_customer` VALUES('shop1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 4, 1, 'David', 'Shop 1', 'United States', 'Chicago', '123 Street', 'shop12@gmail.com', '1234567', 'a3e82ce9f76328bad9de0af4cb6fe1b7.png', '2017-01-12 21:31:54');
INSERT INTO `ocmv_customer` VALUES('shop10', '7c4a8d09ca3762af61e59520943dc26494f8941b', 4, 1, 'Kevin', 'Shop 10', 'United States', 'Chicago', 'Street 2', 'shop10@gmail.com', '123456', '582263394e8f2edcd050307a6ffd2311.png', '2017-01-12 10:32:14');
INSERT INTO `ocmv_customer` VALUES('shop11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 4, 1, 'Kevin', 'Shop 11', 'United States', 'Chicago', 'Street 2', 'learningprogramming123@gmail.com', '123456', 'ccfc440f5676a4da41d13a6550a983ec.png', '2017-01-12 10:55:20');
INSERT INTO `ocmv_customer` VALUES('shop2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4, 1, 'Kevin', 'Shop 2', 'United States', 'New York', '123 Street', 'cus1@gmail.com', '123456781', '8c856ae6d86cdaca60d25384b7df053b.png', '2017-01-11 10:32:47');
INSERT INTO `ocmv_customer` VALUES('shop3', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4, 1, 'Mary', 'Shop 3', 'United States', 'Chicago', 'Street 2', 'shop3@gmail.com', '0984073472', '55021cabc8926df51c58e8c7cac3e728.jpg', '2017-01-12 21:29:43');
INSERT INTO `ocmv_customer` VALUES('shop4', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4, 1, 'Kevin', 'Shop 4', 'United States', 'Chicago', 'Street 2', 'trungtin@gmail.com', '3424234', '7d102478a40f389d6eaed0bfec293e62.jpg', '2017-01-11 11:28:37');
INSERT INTO `ocmv_customer` VALUES('shop7', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4, 1, 'Shop', 'shop 7', 'Indonesia', 'Los', '123 Street', 'shop@gmail.com', '23213', 'no-image.jpg', '2017-01-13 03:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_employee`
--

CREATE TABLE `ocmv_employee` (
  `username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ocmv_employee`
--

INSERT INTO `ocmv_employee` VALUES('admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Administrator', 1);
INSERT INTO `ocmv_employee` VALUES('emp01', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Employee 1', 1);
INSERT INTO `ocmv_employee` VALUES('emp02', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Employee 2', 2);
INSERT INTO `ocmv_employee` VALUES('emp03', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Employee 3', 2);
INSERT INTO `ocmv_employee` VALUES('emp04', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Employee 4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_message`
--

CREATE TABLE `ocmv_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `datepost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read` tinyint(11) NOT NULL,
  `vendor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor` (`vendor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ocmv_message`
--

INSERT INTO `ocmv_message` VALUES(5, 'Title 1', 'Description 1', '123456', 'customer1@gmail.com', '2017-01-12 01:14:45', 1, 'shop1');
INSERT INTO `ocmv_message` VALUES(6, 'Title 2', 'Description 2', '123456', 'customer2@gmail.com', '2017-01-12 03:18:38', 1, 'shop1');
INSERT INTO `ocmv_message` VALUES(7, 'Title 1', 'Description 1', '123456', 'aaa@yahoo.com', '2017-01-12 10:46:40', 1, 'shop10');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_orders`
--

CREATE TABLE `ocmv_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `employee` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `fullName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `employee` (`employee`),
  KEY `customer_2` (`customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=409 ;

--
-- Dumping data for table `ocmv_orders`
--

INSERT INTO `ocmv_orders` VALUES(395, 'Purchase Order', 2, '2017-01-11 10:58:26', 0, NULL, 'customer1', 6, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(396, 'Purchase Order', 10, '2017-01-11 11:58:35', 0, NULL, 'customer1', 7, 'Customer 1', 'customer1@gmail.com', '123456', 'Tajikistan', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(397, 'Purchase Order', 14, '2017-01-12 07:15:14', 0, NULL, 'customer1', 6, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(398, 'Purchase Order', 10, '2017-01-12 07:19:30', 0, NULL, 'shop1', 6, 'David', 'shop1@gmail.com', '1234567821212', 'United States', 'Chicago', '123 Street');
INSERT INTO `ocmv_orders` VALUES(399, 'Purchase Order', 8, '2017-01-12 08:47:04', 0, NULL, 'shop1', 4, 'David', 'shop1@gmail.com', '1234567821212', 'United States', 'Chicago', '123 Street');
INSERT INTO `ocmv_orders` VALUES(400, 'Purchase Order', 31, '2017-01-12 10:04:01', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(401, 'Purchase Order', 16, '2017-01-12 10:06:30', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(402, 'Purchase Order', 31, '2017-01-12 10:10:46', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(403, 'Purchase Order', 4, '2017-01-12 10:15:59', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(404, 'Purchase Order', 4, '2017-01-12 10:19:38', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(405, 'Purchase Order', 6, '2017-01-12 10:20:47', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(406, 'Purchase Order', 31, '2017-01-12 10:22:05', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(407, 'Purchase Order', 19, '2017-01-12 10:42:09', 0, NULL, 'customer2', 4, 'Customer 2', 'customer2@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');
INSERT INTO `ocmv_orders` VALUES(408, 'Purchase Order', 46, '2017-01-13 01:23:09', 0, NULL, 'customer1', 4, 'Customer 1', 'customer1@gmail.com', '123456', 'United States', 'Chicago', 'Street 2');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_ordersdetail`
--

CREATE TABLE `ocmv_ordersdetail` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`,`productId`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ocmv_ordersdetail`
--

INSERT INTO `ocmv_ordersdetail` VALUES(395, 52, 2, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(396, 52, 2, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(396, 53, 8, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(397, 52, 2, 3);
INSERT INTO `ocmv_ordersdetail` VALUES(397, 53, 8, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(398, 52, 2, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(398, 53, 8, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(399, 53, 8, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(400, 51, 6, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(400, 54, 6, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(400, 70, 7, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(401, 53, 8, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(402, 51, 6, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(402, 54, 6, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(402, 70, 7, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(403, 52, 2, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(404, 52, 2, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(405, 52, 2, 3);
INSERT INTO `ocmv_ordersdetail` VALUES(406, 51, 6, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(406, 54, 6, 2);
INSERT INTO `ocmv_ordersdetail` VALUES(406, 70, 7, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(407, 51, 6, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(407, 70, 7, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(407, 107, 6, 1);
INSERT INTO `ocmv_ordersdetail` VALUES(408, 51, 6, 4);
INSERT INTO `ocmv_ordersdetail` VALUES(408, 54, 6, 3);
INSERT INTO `ocmv_ordersdetail` VALUES(408, 57, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_payment`
--

CREATE TABLE `ocmv_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ocmv_payment`
--

INSERT INTO `ocmv_payment` VALUES(4, 'Paypal');
INSERT INTO `ocmv_payment` VALUES(6, 'ATM');
INSERT INTO `ocmv_payment` VALUES(7, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_product`
--

CREATE TABLE `ocmv_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `categoryId` int(11) NOT NULL,
  `customer` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=108 ;

--
-- Dumping data for table `ocmv_product`
--

INSERT INTO `ocmv_product` VALUES(51, 'Ipad Pro', 6, 8, '<p>good</p>\r\n', 'e0b41feaf083ddda09e439b3a7e20c04.png', 1, '2017-01-13 04:10:06', 31, 'shop1', 164);
INSERT INTO `ocmv_product` VALUES(52, 'IPhone 1', 2, 1, '<p>good</p>\r\n', 'e8e5e1416f085eecf36cb2354e0ba710.png', 1, '2017-01-13 03:58:06', 31, 'shop1', 44);
INSERT INTO `ocmv_product` VALUES(53, 'IPhone 2', 8, 2, '<p>good</p>\r\n', 'c4277f7d3148c64a1b60adefcd3f81f0.png', 1, '2017-01-12 07:36:57', 31, 'shop1', 50);
INSERT INTO `ocmv_product` VALUES(54, 'Nokia Lumia 930', 6, 8, '<p>good</p>\r\n', 'dc17f5567e6772f9b0e787be10805155.jpg', 1, '2017-01-11 10:17:47', 31, 'shop4', 21);
INSERT INTO `ocmv_product` VALUES(55, 'Nokia Lumia 929', 5, 44, '<p>good</p>\r\n', '97c37fbd0543a010007f2a10dbdf1226.jpg', 1, '2017-01-11 10:17:56', 31, 'shop1', 12);
INSERT INTO `ocmv_product` VALUES(56, 'Nokia X2 Dual SIM', 4, 44, '<p>good</p>\r\n', 'bbb54d208de33f635eecfbb1b7e7ff4e.jpg', 1, '2017-01-11 10:19:50', 31, 'shop1', 15);
INSERT INTO `ocmv_product` VALUES(57, 'Nokia XL', 2, 2, '<p>good</p>\r\n', '52eaa13a23f5232b96a1bf6d11d52137.jpg', 1, '2017-01-13 04:10:11', 31, 'shop2', 62);
INSERT INTO `ocmv_product` VALUES(58, 'Samsung Galaxy A9 2016', 7, 7, '<p>good</p>\r\n', 'c7be8d3a057ad75c7163736da465e564.jpg', 1, '2017-01-12 09:35:41', 31, 'shop1', 9);
INSERT INTO `ocmv_product` VALUES(59, 'Samsung Galaxy C5R3', 2, 66, '<p>good</p>\r\n', '84148f40e9ae86a44ff04a91059caaaf.jpg', 1, '2017-01-11 10:19:36', 31, 'shop4', 4);
INSERT INTO `ocmv_product` VALUES(60, 'Samsung Galaxy J7-2016', 3, 8, '<p>good</p>\r\n', '89276c7e27ed0260e5ad98dcbeabe774.jpg', 1, '2017-01-11 10:19:10', 31, 'shop2', 3);
INSERT INTO `ocmv_product` VALUES(61, 'Book 1', 2, 2, '<p>Good</p>\r\n', 'a74aa4e56da2a87ea7c770a651560e1b.jpg', 1, '2017-01-12 09:26:46', 20, 'shop1', 21);
INSERT INTO `ocmv_product` VALUES(62, 'Book 1', 6, 12, '<p>Good</p>\r\n', '5c4048e12b0f32e610f1f9a9df0f4a20.jpg', 1, '2017-01-11 10:19:00', 20, 'shop4', 6);
INSERT INTO `ocmv_product` VALUES(63, 'Book 3', 4, 6, '<p>Good</p>\r\n', 'ce1e5f2965b25ccd5cd612bfbdede753.jpg', 1, '2017-01-11 10:18:18', 20, 'shop1', 5);
INSERT INTO `ocmv_product` VALUES(64, 'Book 4', 3, 33, '<p>Good</p>\r\n', 'b0977f8b74311bb13699ef62c18582e7.jpg', 1, '2017-01-11 10:18:50', 20, 'shop4', 2);
INSERT INTO `ocmv_product` VALUES(65, 'Book 5', 5, 44, '<p>Good</p>\r\n', '6444e7ec9330f16e627b38ca1393a8e9.jpg', 1, '2017-01-11 10:27:36', 20, 'shop1', 9);
INSERT INTO `ocmv_product` VALUES(66, 'Book 6', 2, 8, '<p>Good</p>\r\n', 'f9b024017f5904aaa30b5563079568c1.jpg', 1, '2017-01-11 10:18:38', 20, 'shop3', 6);
INSERT INTO `ocmv_product` VALUES(67, 'Book 7', 4, 4, '<p>Good</p>\r\n', '61ae8ff60a7cb7f445315e32e7248ab6.jpg', 1, '2017-01-11 10:18:28', 20, 'shop2', 8);
INSERT INTO `ocmv_product` VALUES(68, 'Monitor 1', 9, 2, '<p>Good</p>\r\n', '6440bf65f82bd622dcd131bfc92310b9.jpg', 1, '2017-01-11 10:16:40', 35, 'shop3', 11);
INSERT INTO `ocmv_product` VALUES(69, 'Monitor 2', 8, 6, '<p>Good</p>\r\n', '8d85aa163ff1169916a35fc6a03056e2.jpg', 1, '2017-01-11 10:18:08', 35, 'shop2', 11);
INSERT INTO `ocmv_product` VALUES(70, 'Monitor 3', 7, 8, '<p>Good</p>\r\n', '033a23cbdc08ba862e26cbc59f6ec302.jpg', 1, '2017-01-11 10:16:28', 35, 'shop3', 10);
INSERT INTO `ocmv_product` VALUES(71, 'Monitor 4', 2, 5, '<p>Good</p>\r\n', '015027ae3aae7c705b04492bc8cc957d.jpg', 1, '2017-01-11 10:36:26', 39, 'shop3', 14);
INSERT INTO `ocmv_product` VALUES(76, 'Product Vendor2', 323, 32, '<p>&aacute;dsad</p>\r\n', '0c6a6b365270f334a55774629f28d2f6.jpg', 1, '2017-01-11 10:36:34', 39, 'shop2', 5);
INSERT INTO `ocmv_product` VALUES(102, 'tin 144', 32432, 423432, '<p>sdfsf</p>\r\n', '99946d17283494aefc08c79b6fd2f52a.png', 1, '2017-01-11 10:15:31', 39, 'shop2', 22);
INSERT INTO `ocmv_product` VALUES(103, 'Product 1 - Shop 1', 111, 2, '<p>aa</p>\r\n', 'e6578b7aa4aa55e2393b4b2fe4f40975.jpg', 1, '2017-01-05 04:31:42', 60, 'shop1', 9);
INSERT INTO `ocmv_product` VALUES(104, 'Product 2 - Shop 1', 55, 2, '<p>ggg</p>\r\n', '244b5c8469c8aa546e1cdad41e4f66bd.jpg', 1, '2017-01-12 07:37:04', 60, 'shop1', 23);
INSERT INTO `ocmv_product` VALUES(105, 'Handmade 1', 2, 4, '<p>Good</p>\r\n', '5ea84fe8cd0bd26f0668a450fc0bb2b2.jpg', 1, '2017-01-12 10:37:19', 62, 'shop10', 0);
INSERT INTO `ocmv_product` VALUES(106, 'Handmade 2', 5, 4, '<p>Good</p>\r\n', '0ecb53ddbc227ebddb3626afde481678.jpg', 1, '2017-01-12 23:22:02', 62, 'shop10', 1);
INSERT INTO `ocmv_product` VALUES(107, 'Handmade 3', 6, 2, '<p>Good</p>\r\n', 'bb66cb690d1af2e74edc54d81d75aa5b.jpg', 1, '2017-01-12 10:40:12', 66, 'shop10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_products_attributes`
--

CREATE TABLE `ocmv_products_attributes` (
  `productId` int(11) NOT NULL,
  `attributesId` int(11) NOT NULL,
  KEY `productId` (`productId`),
  KEY `attributesId` (`attributesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ocmv_products_attributes`
--

INSERT INTO `ocmv_products_attributes` VALUES(102, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_role`
--

CREATE TABLE `ocmv_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ocmv_role`
--

INSERT INTO `ocmv_role` VALUES(1, 'Admin');
INSERT INTO `ocmv_role` VALUES(2, 'Employee');
INSERT INTO `ocmv_role` VALUES(3, 'Customer');
INSERT INTO `ocmv_role` VALUES(4, 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_setting`
--

CREATE TABLE `ocmv_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `choose` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `ocmv_setting`
--

INSERT INTO `ocmv_setting` VALUES(1, 'websiteName', 'OctopusCode - Search Everythin', 0);
INSERT INTO `ocmv_setting` VALUES(3, 'highlight', 'true', 0);
INSERT INTO `ocmv_setting` VALUES(4, 'autoCompleteTooltip', 'true', 0);
INSERT INTO `ocmv_setting` VALUES(6, 'rowsPerAutoComplete', '3', 0);
INSERT INTO `ocmv_setting` VALUES(7, 'rowsPerResultPage', '5', 0);
INSERT INTO `ocmv_setting` VALUES(8, 'tableSearch', 'oacs_mobiles', 0);
INSERT INTO `ocmv_setting` VALUES(9, 'columnsSearch', 'name', 0);
INSERT INTO `ocmv_setting` VALUES(10, 'columnsDisplay', 'id,name,price,description,phot', 0);
INSERT INTO `ocmv_setting` VALUES(13, 'resultLayout', '<div class=''col-log-4 col-md-4', 0);
INSERT INTO `ocmv_setting` VALUES(14, 'resultDetailLayout', '<div style=''width: 100%''>\r\n	<i', 0);
INSERT INTO `ocmv_setting` VALUES(15, 'autoCompleteResultLayout', '<div style=''width: 100%; heigh', 0);
INSERT INTO `ocmv_setting` VALUES(19, 'autoCompleteTooltipLayout', '<div style="width: 100% !impor', 0);
INSERT INTO `ocmv_setting` VALUES(20, 'searchDirection', 'contains', 0);
INSERT INTO `ocmv_setting` VALUES(23, 'tuoitre9x123456789-facilitator@gmail.com', 'fz3ZJ9Oc3-F6ulVigGusQbH7Ek1CMv', 0);
INSERT INTO `ocmv_setting` VALUES(24, 'latest_product', '9', 0);
INSERT INTO `ocmv_setting` VALUES(25, 'best_seller', '9', 0);
INSERT INTO `ocmv_setting` VALUES(26, 'lastestvendor', '5', 0);
INSERT INTO `ocmv_setting` VALUES(27, 'newsproduct', '9', 0);
INSERT INTO `ocmv_setting` VALUES(28, 'viewsproduct', '9', 0);
INSERT INTO `ocmv_setting` VALUES(29, 'business', 'kevin-facilitator@findingsoftware.com', 0);
INSERT INTO `ocmv_setting` VALUES(30, 'authtoken', 'KED1sFNSDIkYeT7I_TUvduhGxw4kTOdesxQBdPy-13REDRf07w3InreHw0y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ocmv_social`
--

CREATE TABLE `ocmv_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vendor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vendorId` (`vendor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `ocmv_social`
--

INSERT INTO `ocmv_social` VALUES(1, 'facebook', 'https://www.facebook.com/phan.h.tri?fref=ts', 'shop1');
INSERT INTO `ocmv_social` VALUES(4, 'google', '', 'shop1');
INSERT INTO `ocmv_social` VALUES(7, 'linkedIn', '', 'shop1');
INSERT INTO `ocmv_social` VALUES(10, 'facebook', 'https://www.facebook.com/ta.tin.9275', 'shop2');
INSERT INTO `ocmv_social` VALUES(11, 'google', 'https://plus.google.com/u/0/110394845880496862895', 'shop2');
INSERT INTO `ocmv_social` VALUES(12, 'linkedIn', '', 'shop2');
INSERT INTO `ocmv_social` VALUES(13, 'twitter', '', 'shop2');
INSERT INTO `ocmv_social` VALUES(14, 'twitter', '', 'shop1');
INSERT INTO `ocmv_social` VALUES(15, 'facebook', '', 'shop3');
INSERT INTO `ocmv_social` VALUES(16, 'google', '', 'shop3');
INSERT INTO `ocmv_social` VALUES(17, 'twitter', '', 'shop3');
INSERT INTO `ocmv_social` VALUES(18, 'linkedIn', '', 'shop3');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ocmv_attributes`
--
ALTER TABLE `ocmv_attributes`
  ADD CONSTRAINT `ocmv_attributes_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `ocmv_customer` (`username`);

--
-- Constraints for table `ocmv_category`
--
ALTER TABLE `ocmv_category`
  ADD CONSTRAINT `ocmv_category_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `ocmv_customer` (`username`);

--
-- Constraints for table `ocmv_customer`
--
ALTER TABLE `ocmv_customer`
  ADD CONSTRAINT `ocmv_customer_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `ocmv_role` (`id`);

--
-- Constraints for table `ocmv_message`
--
ALTER TABLE `ocmv_message`
  ADD CONSTRAINT `ocmv_message_ibfk_1` FOREIGN KEY (`vendor`) REFERENCES `ocmv_customer` (`username`);

--
-- Constraints for table `ocmv_ordersdetail`
--
ALTER TABLE `ocmv_ordersdetail`
  ADD CONSTRAINT `ocmv_ordersdetail_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `ocmv_orders` (`id`),
  ADD CONSTRAINT `ocmv_ordersdetail_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `ocmv_product` (`id`);

--
-- Constraints for table `ocmv_product`
--
ALTER TABLE `ocmv_product`
  ADD CONSTRAINT `ocmv_product_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `ocmv_customer` (`username`);

--
-- Constraints for table `ocmv_products_attributes`
--
ALTER TABLE `ocmv_products_attributes`
  ADD CONSTRAINT `ocmv_products_attributes_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `ocmv_product` (`id`),
  ADD CONSTRAINT `ocmv_products_attributes_ibfk_2` FOREIGN KEY (`attributesId`) REFERENCES `ocmv_attributes` (`id`);

--
-- Constraints for table `ocmv_social`
--
ALTER TABLE `ocmv_social`
  ADD CONSTRAINT `ocmv_social_ibfk_1` FOREIGN KEY (`vendor`) REFERENCES `ocmv_customer` (`username`);
