-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2015 at 11:49 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_bdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_function`
--

CREATE TABLE IF NOT EXISTS `menu_function` (
`menu_function_id` int(6) NOT NULL,
  `menu_function_name` varchar(50) NOT NULL,
  `menu_function_link` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `menu_function_level` int(6) NOT NULL,
  `menu_function_parent` int(6) NOT NULL,
  `company_code` int(100) NOT NULL,
  `menu_function_order` int(6) NOT NULL,
  `menu_function_idul` varchar(25) NOT NULL,
  `menu_function_color` varchar(50) NOT NULL,
  `menu_function_image` varchar(50) NOT NULL,
  `menu_function_collapse` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `menu_function`
--

INSERT INTO `menu_function` (`menu_function_id`, `menu_function_name`, `menu_function_link`, `status`, `menu_function_level`, `menu_function_parent`, `company_code`, `menu_function_order`, `menu_function_idul`, `menu_function_color`, `menu_function_image`, `menu_function_collapse`) VALUES
(1, 'Dashboard', 'javascript::', 1, 1, 0, 0, 1, '', 'color_26', 'img/menu_icons/dashboard.png', 'dashboard'),
(2, 'Data Umat', '#collapse2', 1, 1, 0, 0, 2, 'collapse2', 'color_12', 'img/menu_icons/tables.png', 'accordion-toggle widgets collapsed'),
(3, 'Kartu Keluarga', 'family_relationship', 1, 2, 2, 0, 0, '', '', '', ''),
(6, 'Tambah Data Umat', 'data_umat', 1, 2, 2, 0, 0, '', '', '', ''),
(10, 'Administrasi', '#collapse4', 1, 1, 0, 0, 3, 'collapse4', 'color_12', 'img/menu_icons/tables.png', 'accordion-toggle widgets collapsed'),
(12, 'Country', 'country', 1, 2, 10, 0, 3, '', '', '', ''),
(16, 'Setting', 'setting', 2, 1, 0, 0, 6, '', '', '', ''),
(17, 'Profile', 'profile', 2, 1, 0, 0, 6, '', '', '', ''),
(18, 'Dharmasala', 'dharmasala', 1, 2, 10, 0, 3, '', '', '', ''),
(19, 'User', '#collapse3', 1, 1, 0, 0, 4, 'collapse3', 'color_25', 'img/menu_icons/others.png', 'accordion-toggle widgets collapsed'),
(20, 'User', 'user', 1, 2, 19, 0, 2, '', '', '', ''),
(21, 'Hak Akses Akun', 'group', 1, 2, 19, 0, 0, '', '', '', ''),
(31, 'Daerah', 'province', 1, 2, 10, 0, 0, '', '', '', ''),
(32, 'City', 'city', 1, 2, 10, 0, 3, '', '', '', ''),
(33, 'Cetya', 'cetya', 1, 2, 10, 0, 3, '', '', '', ''),
(34, 'Sentra', 'sentra', 1, 2, 10, 0, 3, '', '', '', ''),
(35, 'Change password', 'change-password', 1, 2, 19, 0, 2, '', '', '', ''),
(36, 'Menu Function', 'menu-function', 1, 2, 19, 0, 2, '', '', '', ''),
(38, 'Ritual Activity', 'ritual-activity', 1, 2, 10, 0, 3, '', '', '', ''),
(39, 'Log Activity', 'log_activity', 1, 2, 19, 0, 0, '', '', '', ''),
(40, 'List Umat', 'data_umat', 1, 2, 2, 0, 0, '', '', '', ''),
(41, 'Distrik', 'distrik', 1, 2, 10, 0, 3, '', '', '', ''),
(42, 'Cetak Data Umat Dengan Alamat Sama', 'cetak_umat_almt', 1, 2, 2, 0, 0, '', '', '', ''),
(43, 'Data Bimbingan', '#collapse5', 1, 1, 0, 0, 5, 'collapse5', 'color25', 'img/menu_icons/tables.png', 'accordion-toggle widgets collapsed'),
(44, 'Data Bimbingan', 'bimbingan', 1, 2, 43, 0, 0, '', '', '', ''),
(46, 'Pembimbing', 'pembimbing', 1, 2, 10, 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `structure_menu`
--

CREATE TABLE IF NOT EXISTS `structure_menu` (
`structure_menu_id` int(10) NOT NULL,
  `menu_function_id` int(10) NOT NULL,
  `tb_group_id` int(10) NOT NULL,
  `structure_menu_action` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `structure_menu_order` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `structure_menu`
--

INSERT INTO `structure_menu` (`structure_menu_id`, `menu_function_id`, `tb_group_id`, `structure_menu_action`, `status`, `structure_menu_order`) VALUES
(1, 1, 1, '2,2,2,2', 1, 0),
(2, 2, 1, '2,2,2,2', 1, 0),
(4, 3, 1, '1,2,2,2', 2, 0),
(6, 21, 1, '1,2,2,2', 2, 0),
(7, 20, 1, '1,2,2,2', 2, 0),
(8, 19, 1, '2,2,2,2', 1, 0),
(21, 16, 1, '2,2,2,2', 1, 0),
(29, 6, 1, '2,2,1,1', 1, 0),
(30, 10, 1, '2,2,2,2', 1, 0),
(31, 31, 1, '2,2,2,2', 1, 0),
(32, 12, 1, '1,1,1,1', 2, 0),
(33, 18, 1, '2,2,2,2', 1, 0),
(34, 33, 1, '2,2,2,2', 1, 0),
(35, 32, 1, '1,1,1,1', 2, 0),
(36, 34, 1, '2,2,2,2', 1, 0),
(37, 35, 1, '2,2,2,2', 1, 0),
(38, 36, 1, '1,1,1,1', 2, 0),
(39, 1, 6, '2,2,2,1', 1, 0),
(40, 2, 6, '2,2,1,1', 1, 0),
(41, 3, 6, '1,1,1,1', 2, 0),
(42, 6, 6, '2,2,1,1', 1, 0),
(43, 10, 6, '2,2,2,1', 1, 0),
(44, 20, 6, '1,2,2,1', 2, 0),
(45, 34, 6, '2,2,2,1', 1, 2),
(46, 33, 6, '2,2,2,1', 1, 4),
(47, 18, 6, '2,2,2,1', 1, 5),
(48, 35, 6, '2,2,2,1', 1, 0),
(49, 17, 6, '2,2,2,1', 1, 0),
(50, 16, 6, '2,2,2,2', 1, 0),
(52, 20, 6, '2,2,1,1', 1, 0),
(53, 21, 6, '2,2,2,1', 1, 0),
(54, 31, 6, '2,2,2,1', 1, 1),
(55, 32, 6, '1,2,2,1', 2, 0),
(56, 36, 6, '1,2,2,2', 2, 0),
(57, 1, 4, '2,1,1,1', 1, 0),
(58, 2, 4, '2,2,2,1', 1, 0),
(59, 3, 4, '1,2,2,1', 2, 0),
(60, 6, 4, '2,2,2,1', 1, 0),
(61, 10, 4, '1,1,1,1', 2, 0),
(62, 35, 4, '2,2,2,1', 1, 0),
(63, 1, 4, '1,1,1,1', 1, 0),
(64, 12, 4, '2,1,1,1', 1, 0),
(65, 31, 4, '2,1,1,1', 1, 0),
(66, 32, 4, '2,1,1,1', 1, 0),
(67, 32, 4, '2,1,1,1', 1, 0),
(68, 37, 1, '2,2,2,2', 1, 0),
(69, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(70, 38, 1, '1,1,1,1', 2, 0),
(71, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(72, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(73, 39, 1, '2,2,2,2', 1, 0),
(74, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(75, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(76, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(77, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(78, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(79, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(80, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(81, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(82, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(83, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(84, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(85, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(86, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(87, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(88, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(89, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(90, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(91, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(92, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(93, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(94, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(95, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(96, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(97, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(98, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(99, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(100, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(101, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(102, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(103, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(104, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(105, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(106, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(107, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(108, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(109, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(110, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(111, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(112, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(113, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(114, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(115, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(116, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(117, 0, 1, 'undefined,undefined,undefined,undefined', 0, 0),
(118, 40, 1, '2,2,2,2', 1, 0),
(119, 10, 7, '2,1,1,1', 1, 0),
(120, 12, 7, '2,2,1,1', 1, 0),
(121, 18, 7, '2,2,1,1', 1, 0),
(122, 31, 7, '2,2,1,1', 1, 0),
(123, 33, 7, '2,2,1,1', 1, 0),
(124, 34, 7, '2,2,1,1', 1, 0),
(125, 2, 7, '2,2,1,1', 1, 0),
(126, 6, 7, '2,2,1,1', 1, 0),
(127, 40, 7, '2,2,1,1', 1, 0),
(128, 41, 7, '2,2,1,1', 1, 0),
(129, 39, 7, '2,1,1,1', 1, 0),
(130, 19, 7, '2,1,1,1', 1, 0),
(131, 41, 1, '2,2,2,2', 1, 0),
(132, 42, 1, '2,1,1,1', 1, 0),
(133, 39, 6, '2,1,1,1', 1, 0),
(134, 42, 6, '2,1,1,1', 1, 0),
(135, 40, 6, '2,1,1,1', 1, 0),
(136, 41, 6, '2,2,1,1', 1, 3),
(137, 19, 6, '2,1,1,1', 1, 0),
(138, 19, 4, '2,1,1,1', 1, 0),
(139, 40, 4, '2,1,1,1', 1, 0),
(140, 42, 4, '2,1,1,1', 1, 0),
(141, 43, 8, '2,2,2,2', 1, 0),
(142, 44, 8, '2,2,2,2', 1, 0),
(143, 1, 8, '2,2,2,2', 1, 0),
(145, 10, 8, '2,2,2,2', 1, 0),
(148, 46, 8, '2,2,2,2', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE IF NOT EXISTS `tb_address` (
`tb_address_id` int(10) unsigned NOT NULL,
  `tb_address_ktp` varchar(50) DEFAULT NULL,
  `tb_address_street` varchar(255) DEFAULT NULL,
  `tb_address_district` varchar(255) DEFAULT NULL,
  `tb_address_sub_district` varchar(255) DEFAULT NULL,
  `tb_address_mobile_number` varchar(50) DEFAULT NULL,
  `tb_address_is_active` tinyint(1) DEFAULT NULL,
  `tb_address_remarks` varchar(255) DEFAULT NULL,
  `tb_city_id` int(10) NOT NULL,
  `tb_province_id` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`tb_address_id`, `tb_address_ktp`, `tb_address_street`, `tb_address_district`, `tb_address_sub_district`, `tb_address_mobile_number`, `tb_address_is_active`, `tb_address_remarks`, `tb_city_id`, `tb_province_id`) VALUES
(31, '87', 'Jln KH. Ahmad Fauzi', '1', 'PO', '1', NULL, NULL, 2, 14086),
(32, '2', 'Jl. Ngepunk', '2', 'PO', '2', NULL, NULL, 2, 26141),
(33, '69', 'Kp. Kinayungan Timur ', 'BSD TiMUR', 'TES', '08973248342', NULL, NULL, 52287, 51578),
(34, '69', 'Kp. Kinayungan Timur ', 'BSD TiMUR', '', '08973248342', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_address_history`
--

CREATE TABLE IF NOT EXISTS `tb_address_history` (
`tb_address_history_id` int(10) unsigned NOT NULL,
  `tb_address_history_personal_id` int(10) unsigned DEFAULT NULL,
  `tb_address_history_address_id` int(10) unsigned DEFAULT NULL,
  `tb_address_history_approved_date` datetime DEFAULT NULL,
  `tb_address_history_approved_by` int(10) unsigned DEFAULT NULL,
  `tb_address_history_approved_ip` varchar(50) DEFAULT NULL,
  `tb_address_history_approved_status` tinyint(1) DEFAULT NULL,
  `tb_address_history_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_alamat`
--

CREATE TABLE IF NOT EXISTS `tb_alamat` (
`tb_alamat_id` int(10) NOT NULL,
  `tb_alamat_tinggal` varchar(255) DEFAULT NULL,
  `tb_alamat_telp` varchar(255) DEFAULT NULL,
  `tb_alamat_perubahan` date DEFAULT NULL,
  `tb_alamat_order` int(10) DEFAULT NULL,
  `tb_data_umat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_alamat`
--

INSERT INTO `tb_alamat` (`tb_alamat_id`, `tb_alamat_tinggal`, `tb_alamat_telp`, `tb_alamat_perubahan`, `tb_alamat_order`, `tb_data_umat_id`) VALUES
(2, 'Jln tes dulu, dulu', '021-912380123', NULL, 1, 1),
(3, '', '', NULL, 2, 1),
(4, '', '', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bimbingan_detail`
--

CREATE TABLE IF NOT EXISTS `tb_bimbingan_detail` (
`tb_bimbingan_detail_id` int(10) NOT NULL,
  `tb_user_id` int(10) NOT NULL,
  `tb_bimbingan_header_id` int(10) NOT NULL,
  `tb_bimbingan_detail_pertanyaan` text NOT NULL,
  `tb_bimbingan_detail_jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bimbingan_header`
--

CREATE TABLE IF NOT EXISTS `tb_bimbingan_header` (
`tb_bimbingan_header_id` int(10) NOT NULL,
  `tb_pembimbing_id` int(10) NOT NULL,
  `tb_bimbingan_header_date` varchar(255) NOT NULL,
  `tb_bimbingan_header_judul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_cetya`
--

CREATE TABLE IF NOT EXISTS `tb_cetya` (
`tb_cetya_id` int(10) unsigned NOT NULL,
  `tb_cetya_name` varchar(50) DEFAULT NULL,
  `tb_cetya_code` varchar(50) DEFAULT NULL,
  `tb_cetya_remarks` varchar(255) DEFAULT NULL,
  `tb_cetya_sentra_id` int(10) unsigned DEFAULT NULL,
  `tb_distrik_id` int(11) NOT NULL,
  `created_by` int(10) NOT NULL,
  `update_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tb_cetya`
--

INSERT INTO `tb_cetya` (`tb_cetya_id`, `tb_cetya_name`, `tb_cetya_code`, `tb_cetya_remarks`, `tb_cetya_sentra_id`, `tb_distrik_id`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(3, 'NURUL HIKMAH', NULL, 'nurul hikmah', 2, 81878, 0, 0, '0000-00-00', '0000-00-00'),
(5, 'SUMUT', NULL, 'SUMUTS', 3, 81878, 0, 0, '0000-00-00', '0000-00-00'),
(6, 'Balas Budi', 'Balas Budi', 'Balas Budi', 4, 81879, 0, 0, '0000-00-00', '0000-00-00'),
(8, 'tes dis2', NULL, NULL, NULL, 81880, 1, 1, '2015-05-09', '2015-05-09'),
(9, 'tes dis', NULL, NULL, NULL, 81880, 1, 1, '2015-05-09', '2015-05-09'),
(16, '1', NULL, NULL, NULL, 81883, 1, 0, '2015-05-09', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

CREATE TABLE IF NOT EXISTS `tb_city` (
`tb_city_id` int(10) unsigned NOT NULL,
  `tb_city_name` varchar(50) DEFAULT NULL,
  `tb_city_code` varchar(50) DEFAULT NULL,
  `tb_city_count` int(11) DEFAULT NULL,
  `tb_city_approved_status` tinyint(1) DEFAULT NULL,
  `tb_province_id` int(10) unsigned DEFAULT NULL,
  `tb_country_id` int(10) DEFAULT NULL,
  `tb_city_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83290 ;

--
-- Dumping data for table `tb_city`
--

INSERT INTO `tb_city` (`tb_city_id`, `tb_city_name`, `tb_city_code`, `tb_city_count`, `tb_city_approved_status`, `tb_province_id`, `tb_country_id`, `tb_city_remarks`) VALUES
(2, 'ACEH SELATAN', NULL, NULL, NULL, 1, NULL, NULL),
(269, 'ACEH TENGGARA', NULL, NULL, NULL, 1, NULL, NULL),
(671, 'ACEH TIMUR', NULL, NULL, NULL, 1, NULL, NULL),
(1207, 'ACEH TENGAH', NULL, NULL, NULL, 1, NULL, NULL),
(1492, 'ACEH BARAT', NULL, NULL, NULL, 1, NULL, NULL),
(1824, 'ACEH BESAR', NULL, NULL, NULL, 1, NULL, NULL),
(2452, 'PIDIE', NULL, NULL, NULL, 1, NULL, NULL),
(3205, 'ACEH UTARA', NULL, NULL, NULL, 1, NULL, NULL),
(4086, 'SIMEULUE', NULL, NULL, NULL, 1, NULL, NULL),
(4233, 'ACEH SINGKIL', NULL, NULL, NULL, 1, NULL, NULL),
(4362, 'BIREUEN', NULL, NULL, NULL, 1, NULL, NULL),
(4989, 'ACEH BARAT DAYA', NULL, NULL, NULL, 1, NULL, NULL),
(5138, 'GAYO LUES', NULL, NULL, NULL, 1, NULL, NULL),
(5286, 'ACEH JAYA', NULL, NULL, NULL, 1, NULL, NULL),
(5463, 'NAGAN RAYA', NULL, NULL, NULL, 1, NULL, NULL),
(5694, 'ACEH TAMIANG', NULL, NULL, NULL, 1, NULL, NULL),
(5920, 'BENER MERIAH', NULL, NULL, NULL, 1, NULL, NULL),
(6166, 'PIDIE JAYA', NULL, NULL, NULL, 1, NULL, NULL),
(6397, 'KOTA BANDA ACEH', NULL, NULL, NULL, 1, NULL, NULL),
(6497, 'KOTA SABANG', NULL, NULL, NULL, 1, NULL, NULL),
(6518, 'KOTA LHOKSEUMAWE', NULL, NULL, NULL, 1, NULL, NULL),
(6591, 'KOTA LANGSA', NULL, NULL, NULL, 1, NULL, NULL),
(6648, 'KOTA SUBULUSSALAM', NULL, NULL, NULL, 1, NULL, NULL),
(6729, 'LABUHANBATU SELATAN', NULL, NULL, NULL, 6728, NULL, NULL),
(6789, 'LABUHANBATU UTARA', NULL, NULL, NULL, 6728, NULL, NULL),
(6888, 'NIAS UTARA', NULL, NULL, NULL, 6728, NULL, NULL),
(7013, 'NIAS BARAT', NULL, NULL, NULL, 6728, NULL, NULL),
(7132, 'KOTA GUNUNGSITOLI', NULL, NULL, NULL, 6728, NULL, NULL),
(7240, 'TAPANULI TENGAH', NULL, NULL, NULL, 6728, NULL, NULL),
(7438, 'TAPANULI UTARA', NULL, NULL, NULL, 6728, NULL, NULL),
(7697, 'TAPANULI SELATAN', NULL, NULL, NULL, 6728, NULL, NULL),
(7960, 'NIAS', NULL, NULL, NULL, 6728, NULL, NULL),
(8094, 'LANGKAT', NULL, NULL, NULL, 6728, NULL, NULL),
(8408, 'KARO', NULL, NULL, NULL, 6728, NULL, NULL),
(8688, 'DELI SERDANG', NULL, NULL, NULL, 6728, NULL, NULL),
(9114, 'SIMALUNGUN', NULL, NULL, NULL, 6728, NULL, NULL),
(9497, 'ASAHAN', NULL, NULL, NULL, 6728, NULL, NULL),
(9727, 'LABUHANBATU', NULL, NULL, NULL, 6728, NULL, NULL),
(9835, 'DAIRI', NULL, NULL, NULL, 6728, NULL, NULL),
(10020, 'TOBA SAMOSIR', NULL, NULL, NULL, 6728, NULL, NULL),
(10227, 'MANDAILING NATAL', NULL, NULL, NULL, 6728, NULL, NULL),
(10646, 'NIAS SELATAN', NULL, NULL, NULL, 6728, NULL, NULL),
(11022, 'PAKPAK BHARAT', NULL, NULL, NULL, 6728, NULL, NULL),
(11083, 'HUMBANG HASUNDUTAN', NULL, NULL, NULL, 6728, NULL, NULL),
(11247, 'SAMOSIR', NULL, NULL, NULL, 6728, NULL, NULL),
(11374, 'SERDANG BEDAGAI', NULL, NULL, NULL, 6728, NULL, NULL),
(11635, 'BATU BARA', NULL, NULL, NULL, 6728, NULL, NULL),
(11743, 'KOTA MEDAN', NULL, NULL, NULL, 6728, NULL, NULL),
(11916, 'KOTA PEMATANGSIANTAR', NULL, NULL, NULL, 6728, NULL, NULL),
(11978, 'KOTA SIBOLGA', NULL, NULL, NULL, 6728, NULL, NULL),
(12000, 'KOTA TANJUNG BALAI', NULL, NULL, NULL, 6728, NULL, NULL),
(12038, 'KOTA BINJAI', NULL, NULL, NULL, 6728, NULL, NULL),
(12081, 'KOTA TEBING TINGGI', NULL, NULL, NULL, 6728, NULL, NULL),
(12122, 'KOTA PADANG SIDIMPUAN', NULL, NULL, NULL, 6728, NULL, NULL),
(12208, 'PADANG LAWAS UTARA', NULL, NULL, NULL, 6728, NULL, NULL),
(12606, 'PADANG LAWAS', NULL, NULL, NULL, 6728, NULL, NULL),
(12921, 'PESISIR SELATAN', NULL, NULL, NULL, 12920, NULL, NULL),
(13010, 'SOLOK', NULL, NULL, NULL, 12920, NULL, NULL),
(13099, 'SIJUNJUNG', NULL, NULL, NULL, 12920, NULL, NULL),
(13163, 'TANAH DATAR', NULL, NULL, NULL, 12920, NULL, NULL),
(13253, 'PADANG PARIAMAN', NULL, NULL, NULL, 12920, NULL, NULL),
(13317, 'AGAM', NULL, NULL, NULL, 12920, NULL, NULL),
(13416, 'LIMA PULUH KOTA', NULL, NULL, NULL, 12920, NULL, NULL),
(13509, 'PASAMAN', NULL, NULL, NULL, 12920, NULL, NULL),
(13554, 'KEPULAUAN MENTAWAI', NULL, NULL, NULL, 12920, NULL, NULL),
(13608, 'DHARMASRAYA', NULL, NULL, NULL, 12920, NULL, NULL),
(13634, 'SOLOK SELATAN', NULL, NULL, NULL, 12920, NULL, NULL),
(13681, 'PASAMAN BARAT', NULL, NULL, NULL, 12920, NULL, NULL),
(13712, 'KOTA PADANG', NULL, NULL, NULL, 12920, NULL, NULL),
(13828, 'KOTA SOLOK', NULL, NULL, NULL, 12920, NULL, NULL),
(13844, 'KOTA SAWAHLUNTO', NULL, NULL, NULL, 12920, NULL, NULL),
(13886, 'KOTA PADANG PANJANG', NULL, NULL, NULL, 12920, NULL, NULL),
(13905, 'KOTA BUKITTINGGI', NULL, NULL, NULL, 12920, NULL, NULL),
(13933, 'KOTA PAYAKUMBUH', NULL, NULL, NULL, 12920, NULL, NULL),
(14010, 'KOTA PARIAMAN', NULL, NULL, NULL, 12920, NULL, NULL),
(14087, 'KEPULAUAN MERANTI', NULL, NULL, NULL, 14086, NULL, NULL),
(14166, 'KAMPAR', NULL, NULL, NULL, 14086, NULL, NULL),
(14414, 'INDRAGIRI HULU', NULL, NULL, NULL, 14086, NULL, NULL),
(14630, 'BENGKALIS', NULL, NULL, NULL, 14086, NULL, NULL),
(14741, 'INDRAGIRI HILIR', NULL, NULL, NULL, 14086, NULL, NULL),
(14955, 'PELALAWAN', NULL, NULL, NULL, 14086, NULL, NULL),
(15087, 'ROKAN HULU', NULL, NULL, NULL, 14086, NULL, NULL),
(15254, 'ROKAN HILIR', NULL, NULL, NULL, 14086, NULL, NULL),
(15412, 'SIAK', NULL, NULL, NULL, 14086, NULL, NULL),
(15553, 'KUANTAN SINGINGI', NULL, NULL, NULL, 14086, NULL, NULL),
(15775, 'KOTA PEKANBARU', NULL, NULL, NULL, 14086, NULL, NULL),
(15846, 'KOTA DUMAI', NULL, NULL, NULL, 14086, NULL, NULL),
(15886, 'KOTA SUNGAI PENUH', NULL, NULL, NULL, 15885, NULL, NULL),
(15961, 'KERINCI', NULL, NULL, NULL, 15885, NULL, NULL),
(16183, 'MERANGIN', NULL, NULL, NULL, 15885, NULL, NULL),
(16420, 'SAROLANGUN', NULL, NULL, NULL, 15885, NULL, NULL),
(16576, 'BATANGHARI', NULL, NULL, NULL, 15885, NULL, NULL),
(16699, 'MUARO JAMBI', NULL, NULL, NULL, 15885, NULL, NULL),
(16862, 'TANJUNG JABUNG BARAT', NULL, NULL, NULL, 15885, NULL, NULL),
(16946, 'TANJUNG JABUNG TIMUR', NULL, NULL, NULL, 15885, NULL, NULL),
(17051, 'BUNGO', NULL, NULL, NULL, 15885, NULL, NULL),
(17215, 'TEBO', NULL, NULL, NULL, 15885, NULL, NULL),
(17333, 'KOTA JAMBI', NULL, NULL, NULL, 15885, NULL, NULL),
(17405, 'OGAN KOMERING ULU', NULL, NULL, NULL, 17404, NULL, NULL),
(17570, 'OGAN KOMERING ILIR', NULL, NULL, NULL, 17404, NULL, NULL),
(17895, 'MUARA ENIM', NULL, NULL, NULL, 17404, NULL, NULL),
(18244, 'LAHAT', NULL, NULL, NULL, 17404, NULL, NULL),
(18643, 'MUSI RAWAS', NULL, NULL, NULL, 17404, NULL, NULL),
(18942, 'MUSI BANYUASIN', NULL, NULL, NULL, 17404, NULL, NULL),
(19172, 'BANYUASIN', NULL, NULL, NULL, 17404, NULL, NULL),
(19492, 'OGAN KOMERING ULU TIMUR', NULL, NULL, NULL, 17404, NULL, NULL),
(19808, 'OGAN KOMERING ULU SELATAN', NULL, NULL, NULL, 17404, NULL, NULL),
(20087, 'OGAN ILIR', NULL, NULL, NULL, 17404, NULL, NULL),
(20345, 'EMPAT LAWANG', NULL, NULL, NULL, 17404, NULL, NULL),
(20512, 'KOTA PALEMBANG', NULL, NULL, NULL, 17404, NULL, NULL),
(20636, 'KOTA PAGAR ALAM', NULL, NULL, NULL, 17404, NULL, NULL),
(20677, 'KOTA LUBUKLINGGAU', NULL, NULL, NULL, 17404, NULL, NULL),
(20758, 'KOTA PRABUMULIH', NULL, NULL, NULL, 17404, NULL, NULL),
(20803, 'BENGKULU TENGAH', NULL, NULL, NULL, 20802, NULL, NULL),
(20923, 'BENGKULU SELATAN', NULL, NULL, NULL, 20802, NULL, NULL),
(21093, 'REJANG LEBONG', NULL, NULL, NULL, 20802, NULL, NULL),
(21265, 'BENGKULU UTARA', NULL, NULL, NULL, 20802, NULL, NULL),
(21492, 'KAUR', NULL, NULL, NULL, 20802, NULL, NULL),
(21702, 'SELUMA', NULL, NULL, NULL, 20802, NULL, NULL),
(21885, 'MUKOMUKO', NULL, NULL, NULL, 20802, NULL, NULL),
(22052, 'LEBONG', NULL, NULL, NULL, 20802, NULL, NULL),
(22135, 'KEPAHIANG', NULL, NULL, NULL, 20802, NULL, NULL),
(22252, 'KOTA BENGKULU', NULL, NULL, NULL, 20802, NULL, NULL),
(22329, 'PRINGSEWU', NULL, NULL, NULL, 22328, NULL, NULL),
(22439, 'MESUJI', NULL, NULL, NULL, 22328, NULL, NULL),
(22522, 'TULANG BAWANG BARAT', NULL, NULL, NULL, 22328, NULL, NULL),
(22605, 'LAMPUNG SELATAN', NULL, NULL, NULL, 22328, NULL, NULL),
(22875, 'LAMPUNG TENGAH', NULL, NULL, NULL, 22328, NULL, NULL),
(23189, 'LAMPUNG UTARA', NULL, NULL, NULL, 22328, NULL, NULL),
(23460, 'LAMPUNG BARAT', NULL, NULL, NULL, 22328, NULL, NULL),
(23737, 'TULANG BAWANG', NULL, NULL, NULL, 22328, NULL, NULL),
(23903, 'TANGGAMUS', NULL, NULL, NULL, 22328, NULL, NULL),
(24202, 'LAMPUNG TIMUR', NULL, NULL, NULL, 22328, NULL, NULL),
(24484, 'WAY KANAN', NULL, NULL, NULL, 22328, NULL, NULL),
(24709, 'KOTA BANDAR LAMPUNG', NULL, NULL, NULL, 22328, NULL, NULL),
(24822, 'KOTA METRO', NULL, NULL, NULL, 22328, NULL, NULL),
(24850, 'PESAWARAN', NULL, NULL, NULL, 22328, NULL, NULL),
(24994, 'BANGKA', NULL, NULL, NULL, 24993, NULL, NULL),
(25072, 'BELITUNG', NULL, NULL, NULL, 24993, NULL, NULL),
(25120, 'BANGKA SELATAN', NULL, NULL, NULL, 24993, NULL, NULL),
(25181, 'BANGKA TENGAH', NULL, NULL, NULL, 24993, NULL, NULL),
(25245, 'BANGKA BARAT', NULL, NULL, NULL, 24993, NULL, NULL),
(25316, 'BELITUNG TIMUR', NULL, NULL, NULL, 24993, NULL, NULL),
(25363, 'KOTA PANGKALPINANG', NULL, NULL, NULL, 24993, NULL, NULL),
(25406, 'KOTA TANJUNGPINANG', NULL, NULL, NULL, 25405, NULL, NULL),
(25429, 'KEPULAUAN ANAMBAS', NULL, NULL, NULL, 25405, NULL, NULL),
(25471, 'BINTAN', NULL, NULL, NULL, 25405, NULL, NULL),
(25533, 'KARIMUN', NULL, NULL, NULL, 25405, NULL, NULL),
(25597, 'NATUNA', NULL, NULL, NULL, 25405, NULL, NULL),
(25683, 'LINGGA', NULL, NULL, NULL, 25405, NULL, NULL),
(25746, 'KOTA BATAM', NULL, NULL, NULL, 25405, NULL, NULL),
(25824, 'KEPULAUAN SERIBU', NULL, NULL, NULL, 25823, NULL, NULL),
(25833, 'JAKARTA PUSAT', NULL, NULL, NULL, 25823, NULL, NULL),
(25886, 'JAKARTA UTARA', NULL, NULL, NULL, 25823, NULL, NULL),
(25924, 'JAKARTA BARAT', NULL, NULL, NULL, 25823, NULL, NULL),
(25989, 'JAKARTA SELATAN', NULL, NULL, NULL, 25823, NULL, NULL),
(26065, 'JAKARTA TIMUR', NULL, NULL, NULL, 25823, NULL, NULL),
(26142, 'BOGOR', NULL, NULL, NULL, 26141, NULL, NULL),
(26611, 'SUKABUMI', NULL, NULL, NULL, 26141, NULL, NULL),
(27026, 'CIANJUR', NULL, NULL, NULL, 26141, NULL, NULL),
(27407, 'BANDUNG', NULL, NULL, NULL, 26141, NULL, NULL),
(27714, 'GARUT', NULL, NULL, NULL, 26141, NULL, NULL),
(28182, 'TASIKMALAYA', NULL, NULL, NULL, 26141, NULL, NULL),
(28573, 'CIAMIS', NULL, NULL, NULL, 26141, NULL, NULL),
(28960, 'KUNINGAN', NULL, NULL, NULL, 26141, NULL, NULL),
(29369, 'CIREBON', NULL, NULL, NULL, 26141, NULL, NULL),
(29834, 'MAJALENGKA', NULL, NULL, NULL, 26141, NULL, NULL),
(30197, 'SUMEDANG', NULL, NULL, NULL, 26141, NULL, NULL),
(30503, 'INDRAMAYU', NULL, NULL, NULL, 26141, NULL, NULL),
(30851, 'SUBANG', NULL, NULL, NULL, 26141, NULL, NULL),
(31135, 'PURWAKARTA', NULL, NULL, NULL, 26141, NULL, NULL),
(31345, 'KARAWANG', NULL, NULL, NULL, 26141, NULL, NULL),
(31685, 'BEKASI', NULL, NULL, NULL, 26141, NULL, NULL),
(31896, 'BANDUNG BARAT', NULL, NULL, NULL, 26141, NULL, NULL),
(32077, 'KOTA BOGOR', NULL, NULL, NULL, 26141, NULL, NULL),
(32152, 'KOTA SUKABUMI', NULL, NULL, NULL, 26141, NULL, NULL),
(32193, 'KOTA BANDUNG', NULL, NULL, NULL, 26141, NULL, NULL),
(32375, 'KOTA CIREBON', NULL, NULL, NULL, 26141, NULL, NULL),
(32403, 'KOTA BEKASI', NULL, NULL, NULL, 26141, NULL, NULL),
(32472, 'KOTA DEPOK', NULL, NULL, NULL, 26141, NULL, NULL),
(32547, 'KOTA CIMAHI', NULL, NULL, NULL, 26141, NULL, NULL),
(32566, 'KOTA TASIKMALAYA', NULL, NULL, NULL, 26141, NULL, NULL),
(32646, 'KOTA BANJAR', NULL, NULL, NULL, 26141, NULL, NULL),
(32677, 'CILACAP', NULL, NULL, NULL, 32676, NULL, NULL),
(32986, 'BANYUMAS', NULL, NULL, NULL, 32676, NULL, NULL),
(33345, 'PURBALINGGA', NULL, NULL, NULL, 32676, NULL, NULL),
(33603, 'BANJARNEGARA', NULL, NULL, NULL, 32676, NULL, NULL),
(33902, 'KEBUMEN', NULL, NULL, NULL, 32676, NULL, NULL),
(34389, 'PURWOREJO', NULL, NULL, NULL, 32676, NULL, NULL),
(34900, 'WONOSOBO', NULL, NULL, NULL, 32676, NULL, NULL),
(35181, 'MAGELANG', NULL, NULL, NULL, 32676, NULL, NULL),
(35575, 'BOYOLALI', NULL, NULL, NULL, 32676, NULL, NULL),
(35862, 'KLATEN', NULL, NULL, NULL, 32676, NULL, NULL),
(36290, 'SUKOHARJO', NULL, NULL, NULL, 32676, NULL, NULL),
(36470, 'WONOGIRI', NULL, NULL, NULL, 32676, NULL, NULL),
(36790, 'KARANGANYAR', NULL, NULL, NULL, 32676, NULL, NULL),
(36985, 'SRAGEN', NULL, NULL, NULL, 32676, NULL, NULL),
(37214, 'GROBOGAN', NULL, NULL, NULL, 32676, NULL, NULL),
(37514, 'BLORA', NULL, NULL, NULL, 32676, NULL, NULL),
(37826, 'REMBANG', NULL, NULL, NULL, 32676, NULL, NULL),
(38136, 'PATI', NULL, NULL, NULL, 32676, NULL, NULL),
(38564, 'KUDUS', NULL, NULL, NULL, 32676, NULL, NULL),
(38706, 'JEPARA', NULL, NULL, NULL, 32676, NULL, NULL),
(38917, 'DEMAK', NULL, NULL, NULL, 32676, NULL, NULL),
(39181, 'SEMARANG', NULL, NULL, NULL, 32676, NULL, NULL),
(39436, 'TEMANGGUNG', NULL, NULL, NULL, 32676, NULL, NULL),
(39746, 'KENDAL', NULL, NULL, NULL, 32676, NULL, NULL),
(40053, 'BATANG', NULL, NULL, NULL, 32676, NULL, NULL),
(40317, 'PEKALONGAN', NULL, NULL, NULL, 32676, NULL, NULL),
(40622, 'PEMALANG', NULL, NULL, NULL, 32676, NULL, NULL),
(40859, 'TEGAL', NULL, NULL, NULL, 32676, NULL, NULL),
(41165, 'BREBES', NULL, NULL, NULL, 32676, NULL, NULL),
(41480, 'KOTA MAGELANG', NULL, NULL, NULL, 32676, NULL, NULL),
(41501, 'KOTA SURAKARTA', NULL, NULL, NULL, 32676, NULL, NULL),
(41558, 'KOTA SALATIGA', NULL, NULL, NULL, 32676, NULL, NULL),
(41585, 'KOTA SEMARANG', NULL, NULL, NULL, 32676, NULL, NULL),
(41779, 'KOTA PEKALONGAN', NULL, NULL, NULL, 32676, NULL, NULL),
(41831, 'KOTA TEGAL', NULL, NULL, NULL, 32676, NULL, NULL),
(41864, 'KULON PROGO', NULL, NULL, NULL, 41863, NULL, NULL),
(41965, 'BANTUL', NULL, NULL, NULL, 41863, NULL, NULL),
(42058, 'GUNUNGKIDUL', NULL, NULL, NULL, 41863, NULL, NULL),
(42221, 'SLEMAN', NULL, NULL, NULL, 41863, NULL, NULL),
(42325, 'KOTA YOGYAKARTA', NULL, NULL, NULL, 41863, NULL, NULL),
(42386, 'PACITAN', NULL, NULL, NULL, 42385, NULL, NULL),
(42570, 'PONOROGO', NULL, NULL, NULL, 42385, NULL, NULL),
(42897, 'TRENGGALEK', NULL, NULL, NULL, 42385, NULL, NULL),
(43069, 'TULUNGAGUNG', NULL, NULL, NULL, 42385, NULL, NULL),
(43360, 'BLITAR', NULL, NULL, NULL, 42385, NULL, NULL),
(43630, 'KEDIRI', NULL, NULL, NULL, 42385, NULL, NULL),
(43993, 'MALANG', NULL, NULL, NULL, 42385, NULL, NULL),
(44417, 'LUMAJANG', NULL, NULL, NULL, 42385, NULL, NULL),
(44643, 'JEMBER', NULL, NULL, NULL, 42385, NULL, NULL),
(44923, 'BANYUWANGI', NULL, NULL, NULL, 42385, NULL, NULL),
(45165, 'BONDOWOSO', NULL, NULL, NULL, 42385, NULL, NULL),
(45407, 'SITUBONDO', NULL, NULL, NULL, 42385, NULL, NULL),
(45561, 'PROBOLINGGO', NULL, NULL, NULL, 42385, NULL, NULL),
(45916, 'PASURUAN', NULL, NULL, NULL, 42385, NULL, NULL),
(46306, 'SIDOARJO', NULL, NULL, NULL, 42385, NULL, NULL),
(46678, 'MOJOKERTO', NULL, NULL, NULL, 42385, NULL, NULL),
(47001, 'JOMBANG', NULL, NULL, NULL, 42385, NULL, NULL),
(47329, 'NGANJUK', NULL, NULL, NULL, 42385, NULL, NULL),
(47634, 'MADIUN', NULL, NULL, NULL, 42385, NULL, NULL),
(47856, 'MAGETAN', NULL, NULL, NULL, 42385, NULL, NULL),
(48110, 'NGAWI', NULL, NULL, NULL, 42385, NULL, NULL),
(48347, 'BOJONEGORO', NULL, NULL, NULL, 42385, NULL, NULL),
(48805, 'TUBAN', NULL, NULL, NULL, 42385, NULL, NULL),
(49154, 'LAMONGAN', NULL, NULL, NULL, 42385, NULL, NULL),
(49656, 'GRESIK', NULL, NULL, NULL, 42385, NULL, NULL),
(50031, 'BANGKALAN', NULL, NULL, NULL, 42385, NULL, NULL),
(50331, 'SAMPANG', NULL, NULL, NULL, 42385, NULL, NULL),
(50532, 'PAMEKASAN', NULL, NULL, NULL, 42385, NULL, NULL),
(50735, 'SUMENEP', NULL, NULL, NULL, 42385, NULL, NULL),
(51095, 'KOTA KEDIRI', NULL, NULL, NULL, 42385, NULL, NULL),
(51145, 'KOTA BLITAR', NULL, NULL, NULL, 42385, NULL, NULL),
(51170, 'KOTA MALANG', NULL, NULL, NULL, 42385, NULL, NULL),
(51233, 'KOTA PROBOLINGGO', NULL, NULL, NULL, 42385, NULL, NULL),
(51268, 'KOTA PASURUAN', NULL, NULL, NULL, 42385, NULL, NULL),
(51306, 'KOTA MOJOKERTO', NULL, NULL, NULL, 42385, NULL, NULL),
(51327, 'KOTA MADIUN', NULL, NULL, NULL, 42385, NULL, NULL),
(51358, 'KOTA SURABAYA', NULL, NULL, NULL, 42385, NULL, NULL),
(51550, 'KOTA BATU', NULL, NULL, NULL, 42385, NULL, NULL),
(51579, 'PANDEGLANG', NULL, NULL, NULL, 51578, NULL, NULL),
(51913, 'LEBAK', NULL, NULL, NULL, 51578, NULL, NULL),
(52287, 'TANGERANG', NULL, NULL, NULL, 51578, NULL, NULL),
(52593, 'SERANG', NULL, NULL, NULL, 51578, NULL, NULL),
(52936, 'KOTA TANGERANG', NULL, NULL, NULL, 51578, NULL, NULL),
(53054, 'KOTA CILEGON', NULL, NULL, NULL, 51578, NULL, NULL),
(53106, 'KOTA SERANG', NULL, NULL, NULL, 51578, NULL, NULL),
(53179, 'KOTA TANGERANG SELATAN', NULL, NULL, NULL, 51578, NULL, NULL),
(53242, 'JEMBRANA', NULL, NULL, NULL, 53241, NULL, NULL),
(53299, 'TABANAN', NULL, NULL, NULL, 53241, NULL, NULL),
(53439, 'BADUNG', NULL, NULL, NULL, 53241, NULL, NULL),
(53508, 'GIANYAR', NULL, NULL, NULL, 53241, NULL, NULL),
(53586, 'KLUNGKUNG', NULL, NULL, NULL, 53241, NULL, NULL),
(53650, 'BANGLI', NULL, NULL, NULL, 53241, NULL, NULL),
(53727, 'KARANGASEM', NULL, NULL, NULL, 53241, NULL, NULL),
(53814, 'BULELENG', NULL, NULL, NULL, 53241, NULL, NULL),
(53972, 'KOTA DENPASAR', NULL, NULL, NULL, 53241, NULL, NULL),
(54021, 'LOMBOK BARAT', NULL, NULL, NULL, 54020, NULL, NULL),
(54123, 'LOMBOK TENGAH', NULL, NULL, NULL, 54020, NULL, NULL),
(54260, 'LOMBOK TIMUR', NULL, NULL, NULL, 54020, NULL, NULL),
(54400, 'SUMBAWA', NULL, NULL, NULL, 54020, NULL, NULL),
(54590, 'DOMPU', NULL, NULL, NULL, 54020, NULL, NULL),
(54666, 'BIMA', NULL, NULL, NULL, 54020, NULL, NULL),
(54853, 'SUMBAWA BARAT', NULL, NULL, NULL, 54020, NULL, NULL),
(54925, 'KOTA MATARAM', NULL, NULL, NULL, 54020, NULL, NULL),
(54982, 'KOTA BIMA', NULL, NULL, NULL, 54020, NULL, NULL),
(55026, 'LOMBOK UTARA', NULL, NULL, NULL, 54020, NULL, NULL),
(55066, 'KUPANG', NULL, NULL, NULL, 55065, NULL, NULL),
(55347, 'TIMOR TENGAH SELATAN', NULL, NULL, NULL, 55065, NULL, NULL),
(55620, 'TIMOR TENGAH UTARA', NULL, NULL, NULL, 55065, NULL, NULL),
(55819, 'BELU', NULL, NULL, NULL, 55065, NULL, NULL),
(56051, 'ALOR', NULL, NULL, NULL, 55065, NULL, NULL),
(56244, 'FLORES TIMUR', NULL, NULL, NULL, 55065, NULL, NULL),
(56489, 'SIKKA', NULL, NULL, NULL, 55065, NULL, NULL),
(56671, 'ENDE', NULL, NULL, NULL, 55065, NULL, NULL),
(56904, 'NGADA', NULL, NULL, NULL, 55065, NULL, NULL),
(57008, 'MANGGARAI', NULL, NULL, NULL, 55065, NULL, NULL),
(57167, 'SUMBA TIMUR', NULL, NULL, NULL, 55065, NULL, NULL),
(57346, 'SUMBA BARAT', NULL, NULL, NULL, 55065, NULL, NULL),
(57406, 'LEMBATA', NULL, NULL, NULL, 55065, NULL, NULL),
(57560, 'ROTE NDAO', NULL, NULL, NULL, 55065, NULL, NULL),
(57649, 'MANGGARAI BARAT', NULL, NULL, NULL, 55065, NULL, NULL),
(57778, 'NAGEKEO', NULL, NULL, NULL, 55065, NULL, NULL),
(57886, 'SUMBA TENGAH', NULL, NULL, NULL, 55065, NULL, NULL),
(57935, 'SUMBA BARAT DAYA', NULL, NULL, NULL, 55065, NULL, NULL),
(58040, 'KOTA KUPANG', NULL, NULL, NULL, 55065, NULL, NULL),
(58098, 'MANGGARAI TIMUR', NULL, NULL, NULL, 55065, NULL, NULL),
(58219, 'SABU RAIJUA', NULL, NULL, NULL, 55065, NULL, NULL),
(58286, 'SAMBAS', NULL, NULL, NULL, 58285, NULL, NULL),
(58490, 'PONTIANAK', NULL, NULL, NULL, 58285, NULL, NULL),
(58567, 'SANGGAU', NULL, NULL, NULL, 58285, NULL, NULL),
(58749, 'KETAPANG', NULL, NULL, NULL, 58285, NULL, NULL),
(59018, 'SINTANG', NULL, NULL, NULL, 58285, NULL, NULL),
(59320, 'KAPUAS HULU', NULL, NULL, NULL, 58285, NULL, NULL),
(59557, 'BENGKAYANG', NULL, NULL, NULL, 58285, NULL, NULL),
(59699, 'LANDAK', NULL, NULL, NULL, 58285, NULL, NULL),
(59869, 'SEKADAU', NULL, NULL, NULL, 58285, NULL, NULL),
(59953, 'MELAWI', NULL, NULL, NULL, 58285, NULL, NULL),
(60134, 'KAYONG UTARA', NULL, NULL, NULL, 58285, NULL, NULL),
(60183, 'KOTA PONTIANAK', NULL, NULL, NULL, 58285, NULL, NULL),
(60223, 'KOTA SINGKAWANG', NULL, NULL, NULL, 58285, NULL, NULL),
(60255, 'KUBU RAYA', NULL, NULL, NULL, 58285, NULL, NULL),
(60372, 'KOTAWARINGIN BARAT', NULL, NULL, NULL, 60371, NULL, NULL),
(60468, 'KOTAWARINGIN TIMUR', NULL, NULL, NULL, 60371, NULL, NULL),
(60653, 'KAPUAS', NULL, NULL, NULL, 60371, NULL, NULL),
(60867, 'BARITO SELATAN', NULL, NULL, NULL, 60371, NULL, NULL),
(60967, 'BARITO UTARA', NULL, NULL, NULL, 60371, NULL, NULL),
(61077, 'KATINGAN', NULL, NULL, NULL, 60371, NULL, NULL),
(61251, 'SERUYAN', NULL, NULL, NULL, 60371, NULL, NULL),
(61362, 'SUKAMARA', NULL, NULL, NULL, 60371, NULL, NULL),
(61400, 'LAMANDAU', NULL, NULL, NULL, 60371, NULL, NULL),
(61492, 'GUNUNG MAS', NULL, NULL, NULL, 60371, NULL, NULL),
(61614, 'PULANG PISAU', NULL, NULL, NULL, 60371, NULL, NULL),
(61711, 'MURUNG RAYA', NULL, NULL, NULL, 60371, NULL, NULL),
(61846, 'BARITO TIMUR', NULL, NULL, NULL, 60371, NULL, NULL),
(61929, 'KOTA PALANGKARAYA', NULL, NULL, NULL, 60371, NULL, NULL),
(61966, 'TANAH LAUT', NULL, NULL, NULL, 61965, NULL, NULL),
(62112, 'KOTABARU', NULL, NULL, NULL, 61965, NULL, NULL),
(62333, 'BANJAR', NULL, NULL, NULL, 61965, NULL, NULL),
(62643, 'BARITO KUALA', NULL, NULL, NULL, 61965, NULL, NULL),
(62861, 'TAPIN', NULL, NULL, NULL, 61965, NULL, NULL),
(63007, 'HULU SUNGAI SELATAN', NULL, NULL, NULL, 61965, NULL, NULL),
(63167, 'HULU SUNGAI TENGAH', NULL, NULL, NULL, 61965, NULL, NULL),
(63348, 'HULU SUNGAI UTARA', NULL, NULL, NULL, 61965, NULL, NULL),
(63578, 'TABALONG', NULL, NULL, NULL, 61965, NULL, NULL),
(63722, 'TANAH BUMBU', NULL, NULL, NULL, 61965, NULL, NULL),
(63866, 'BALANGAN', NULL, NULL, NULL, 61965, NULL, NULL),
(64027, 'KOTA BANJARMASIN', NULL, NULL, NULL, 61965, NULL, NULL),
(64085, 'KOTA BANJARBARU', NULL, NULL, NULL, 61965, NULL, NULL),
(64112, 'PASER', NULL, NULL, NULL, 64111, NULL, NULL),
(64248, 'KUTAI KARTANEGARA', NULL, NULL, NULL, 64111, NULL, NULL),
(64496, 'BERAU', NULL, NULL, NULL, 64111, NULL, NULL),
(64617, 'BULUNGAN', NULL, NULL, NULL, 64111, NULL, NULL),
(64709, 'NUNUKAN', NULL, NULL, NULL, 64111, NULL, NULL),
(64949, 'MALINAU', NULL, NULL, NULL, 64111, NULL, NULL),
(65069, 'KUTAI BARAT', NULL, NULL, NULL, 64111, NULL, NULL),
(65315, 'KUTAI TIMUR', NULL, NULL, NULL, 64111, NULL, NULL),
(65469, 'PENAJAM PASER UTARA', NULL, NULL, NULL, 64111, NULL, NULL),
(65528, 'KOTA BALIKPAPAN', NULL, NULL, NULL, 64111, NULL, NULL),
(65567, 'KOTA SAMARINDA', NULL, NULL, NULL, 64111, NULL, NULL),
(65631, 'KOTA TARAKAN', NULL, NULL, NULL, 64111, NULL, NULL),
(65656, 'KOTA BONTANG', NULL, NULL, NULL, 64111, NULL, NULL),
(65675, 'TANA TIDUNG', NULL, NULL, NULL, 64111, NULL, NULL),
(65703, 'BOLAANG MONGONDOW TIMUR', NULL, NULL, NULL, 65702, NULL, NULL),
(65760, 'BOLAANG MONGONDOW SELATAN', NULL, NULL, NULL, 65702, NULL, NULL),
(65822, 'BOLAANG MONGONDOW', NULL, NULL, NULL, 65702, NULL, NULL),
(65974, 'MINAHASA', NULL, NULL, NULL, 65702, NULL, NULL),
(66188, 'KEPULAUAN SANGIHE', NULL, NULL, NULL, 65702, NULL, NULL),
(66371, 'KEPULAUAN TALAUD', NULL, NULL, NULL, 65702, NULL, NULL),
(66544, 'MINAHASA SELATAN', NULL, NULL, NULL, 65702, NULL, NULL),
(66718, 'MINAHASA UTARA', NULL, NULL, NULL, 65702, NULL, NULL),
(66853, 'MINAHASA TENGGARA', NULL, NULL, NULL, 65702, NULL, NULL),
(66936, 'BOLAANG MONGONDOW UTARA', NULL, NULL, NULL, 65702, NULL, NULL),
(67035, 'KEP. SIAU TAGULANDANG BIARO', NULL, NULL, NULL, 65702, NULL, NULL),
(67130, 'KOTA MANADO', NULL, NULL, NULL, 65702, NULL, NULL),
(67227, 'KOTA BITUNG', NULL, NULL, NULL, 65702, NULL, NULL),
(67305, 'KOTA TOMOHON', NULL, NULL, NULL, 65702, NULL, NULL),
(67355, 'KOTA KOTAMOBAGU', NULL, NULL, NULL, 65702, NULL, NULL),
(67394, 'SIGI', NULL, NULL, NULL, 67393, NULL, NULL),
(67558, 'BANGGAI', NULL, NULL, NULL, 67393, NULL, NULL),
(67866, 'POSO', NULL, NULL, NULL, 67393, NULL, NULL),
(68041, 'DONGGALA', NULL, NULL, NULL, 67393, NULL, NULL),
(68206, 'TOLITOLI', NULL, NULL, NULL, 67393, NULL, NULL),
(68309, 'BUOL', NULL, NULL, NULL, 67393, NULL, NULL),
(68428, 'MOROWALI', NULL, NULL, NULL, 67393, NULL, NULL),
(68681, 'BANGGAI KEPULAUAN', NULL, NULL, NULL, 67393, NULL, NULL),
(68887, 'PARIGI MOUTONG', NULL, NULL, NULL, 67393, NULL, NULL),
(69089, 'TOJO UNA-UNA', NULL, NULL, NULL, 67393, NULL, NULL),
(69220, 'KOTA PALU', NULL, NULL, NULL, 67393, NULL, NULL),
(69269, 'TORAJA UTARA', NULL, NULL, NULL, 69268, NULL, NULL),
(69442, 'KEPULAUAN SELAYAR', NULL, NULL, NULL, 69268, NULL, NULL),
(69531, 'BULUKUMBA', NULL, NULL, NULL, 69268, NULL, NULL),
(69668, 'BANTAENG', NULL, NULL, NULL, 69268, NULL, NULL),
(69744, 'JENEPONTO', NULL, NULL, NULL, 69268, NULL, NULL),
(69869, 'TAKALAR', NULL, NULL, NULL, 69268, NULL, NULL),
(69962, 'GOWA', NULL, NULL, NULL, 69268, NULL, NULL),
(70149, 'SINJAI', NULL, NULL, NULL, 69268, NULL, NULL),
(70239, 'BONE', NULL, NULL, NULL, 69268, NULL, NULL),
(70639, 'MAROS', NULL, NULL, NULL, 69268, NULL, NULL),
(70757, 'PANGKAJENE DAN KEPULAUAN', NULL, NULL, NULL, 69268, NULL, NULL),
(70873, 'BARRU', NULL, NULL, NULL, 69268, NULL, NULL),
(70935, 'SOPPENG', NULL, NULL, NULL, 69268, NULL, NULL),
(71014, 'WAJO', NULL, NULL, NULL, 69268, NULL, NULL),
(71209, 'SIDENRENG RAPPANG', NULL, NULL, NULL, 69268, NULL, NULL),
(71327, 'PINRANG', NULL, NULL, NULL, 69268, NULL, NULL),
(71437, 'ENREKANG', NULL, NULL, NULL, 69268, NULL, NULL),
(71579, 'LUWU', NULL, NULL, NULL, 69268, NULL, NULL),
(71828, 'TANA TORAJA', NULL, NULL, NULL, 69268, NULL, NULL),
(72007, 'LUWU UTARA', NULL, NULL, NULL, 69268, NULL, NULL),
(72190, 'LUWU TIMUR', NULL, NULL, NULL, 69268, NULL, NULL),
(72309, 'KOTA MAKASSAR', NULL, NULL, NULL, 69268, NULL, NULL),
(72467, 'KOTA PARE PARE', NULL, NULL, NULL, 69268, NULL, NULL),
(72493, 'KOTA PALOPO', NULL, NULL, NULL, 69268, NULL, NULL),
(72552, 'KOLAKA', NULL, NULL, NULL, 72551, NULL, NULL),
(72786, 'KONAWE', NULL, NULL, NULL, 72551, NULL, NULL),
(73150, 'MUNA', NULL, NULL, NULL, 72551, NULL, NULL),
(73420, 'BUTON', NULL, NULL, NULL, 72551, NULL, NULL),
(73650, 'KONAWE SELATAN', NULL, NULL, NULL, 72551, NULL, NULL),
(74018, 'BOMBANA', NULL, NULL, NULL, 72551, NULL, NULL),
(74179, 'WAKATOBI', NULL, NULL, NULL, 72551, NULL, NULL),
(74288, 'KOLAKA UTARA', NULL, NULL, NULL, 72551, NULL, NULL),
(74437, 'KONAWE UTARA', NULL, NULL, NULL, 72551, NULL, NULL),
(74525, 'BUTON UTARA', NULL, NULL, NULL, 72551, NULL, NULL),
(74590, 'KOTA KENDARI', NULL, NULL, NULL, 72551, NULL, NULL),
(74665, 'KOTA BAU BAU', NULL, NULL, NULL, 72551, NULL, NULL),
(74717, 'GORONTALO', NULL, NULL, NULL, 74716, NULL, NULL),
(74941, 'BOALEMO', NULL, NULL, NULL, 74716, NULL, NULL),
(75031, 'BONE BOLANGO', NULL, NULL, NULL, 74716, NULL, NULL),
(75183, 'PAHUWATO', NULL, NULL, NULL, 74716, NULL, NULL),
(75301, 'GORONTALO UTARA', NULL, NULL, NULL, 74716, NULL, NULL),
(75365, 'KOTA GORONTALO', NULL, NULL, NULL, 74716, NULL, NULL),
(75426, 'MAMUJU UTARA', NULL, NULL, NULL, 75425, NULL, NULL),
(75502, 'MAMUJU', NULL, NULL, NULL, 75425, NULL, NULL),
(75670, 'MAMASA', NULL, NULL, NULL, 75425, NULL, NULL),
(75863, 'POLEWALI MANDAR', NULL, NULL, NULL, 75425, NULL, NULL),
(76047, 'MAJENE', NULL, NULL, NULL, 75425, NULL, NULL),
(76097, 'MALUKU BARAT DAYA', NULL, NULL, NULL, 76096, NULL, NULL),
(76223, 'BURU SELATAN', NULL, NULL, NULL, 76096, NULL, NULL),
(76284, 'MALUKU TENGAH', NULL, NULL, NULL, 76096, NULL, NULL),
(76470, 'MALUKU TENGGARA', NULL, NULL, NULL, 76096, NULL, NULL),
(76568, 'MALUKU TENGGARA BARAT', NULL, NULL, NULL, 76096, NULL, NULL),
(76651, 'BURU', NULL, NULL, NULL, 76096, NULL, NULL),
(76708, 'SERAM BAGIAN TIMUR', NULL, NULL, NULL, 76096, NULL, NULL),
(76771, 'SERAM BAGIAN BARAT', NULL, NULL, NULL, 76096, NULL, NULL),
(76868, 'KEPULAUAN ARU', NULL, NULL, NULL, 76096, NULL, NULL),
(76995, 'KOTA AMBON', NULL, NULL, NULL, 76096, NULL, NULL),
(77051, 'KOTA TUAL', NULL, NULL, NULL, 76096, NULL, NULL),
(77086, 'PULAU MOROTAI', NULL, NULL, NULL, 77085, NULL, NULL),
(77155, 'HALMAHERA BARAT', NULL, NULL, NULL, 77085, NULL, NULL),
(77311, 'HALMAHERA TENGAH', NULL, NULL, NULL, 77085, NULL, NULL),
(77364, 'HALMAHERA UTARA', NULL, NULL, NULL, 77085, NULL, NULL),
(77578, 'HALMAHERA SELATAN', NULL, NULL, NULL, 77085, NULL, NULL),
(77858, 'KEPULAUAN SULA', NULL, NULL, NULL, 77085, NULL, NULL),
(77956, 'HALMAHERA TIMUR', NULL, NULL, NULL, 77085, NULL, NULL),
(78040, 'KOTA TERNATE', NULL, NULL, NULL, 77085, NULL, NULL),
(78122, 'KOTA TIDORE KEPULAUAN', NULL, NULL, NULL, 77085, NULL, NULL),
(78204, 'INTAN JAYA', NULL, NULL, NULL, 78203, NULL, NULL),
(78289, 'DEIYAI', NULL, NULL, NULL, 78203, NULL, NULL),
(78324, 'TOLIKARA', NULL, NULL, NULL, 78203, NULL, NULL),
(78862, 'WAROPEN', NULL, NULL, NULL, 78203, NULL, NULL),
(78927, 'BOVEN DIGOEL', NULL, NULL, NULL, 78203, NULL, NULL),
(79019, 'MAPPI', NULL, NULL, NULL, 78203, NULL, NULL),
(79163, 'ASMAT', NULL, NULL, NULL, 78203, NULL, NULL),
(79310, 'SUPIORI', NULL, NULL, NULL, 78203, NULL, NULL),
(79354, 'MAMBERAMO RAYA', NULL, NULL, NULL, 78203, NULL, NULL),
(79421, 'KOTA JAYAPURA', NULL, NULL, NULL, 78203, NULL, NULL),
(79466, 'MAMBERAMO TENGAH', NULL, NULL, NULL, 78203, NULL, NULL),
(79531, 'YALIMO', NULL, NULL, NULL, 78203, NULL, NULL),
(79564, 'LANNY JAYA', NULL, NULL, NULL, 78203, NULL, NULL),
(79629, 'NDUGA', NULL, NULL, NULL, 78203, NULL, NULL),
(79663, 'PUNCAK', NULL, NULL, NULL, 78203, NULL, NULL),
(79752, 'DOGIYAI', NULL, NULL, NULL, 78203, NULL, NULL),
(79826, 'MERAUKE', NULL, NULL, NULL, 78203, NULL, NULL),
(80015, 'JAYAWIJAYA', NULL, NULL, NULL, 78203, NULL, NULL),
(80144, 'JAYAPURA', NULL, NULL, NULL, 78203, NULL, NULL),
(80309, 'NABIRE', NULL, NULL, NULL, 78203, NULL, NULL),
(80402, 'KEPULAUAN YAPEN', NULL, NULL, NULL, 78203, NULL, NULL),
(80526, 'BIAK NUMFOR', NULL, NULL, NULL, 78203, NULL, NULL),
(80724, 'PUNCAK JAYA', NULL, NULL, NULL, 78203, NULL, NULL),
(80851, 'PANIAI', NULL, NULL, NULL, 78203, NULL, NULL),
(81007, 'MIMIKA', NULL, NULL, NULL, 78203, NULL, NULL),
(81104, 'SARMI', NULL, NULL, NULL, 78203, NULL, NULL),
(81192, 'KEEROM', NULL, NULL, NULL, 78203, NULL, NULL),
(81261, 'PEGUNUNGAN BINTANG', NULL, NULL, NULL, 78203, NULL, NULL),
(81357, 'YAHUKIMO', NULL, NULL, NULL, 78203, NULL, NULL),
(81878, 'MAYBRAT', NULL, NULL, NULL, 81877, NULL, NULL),
(81992, 'TAMBRAUW', NULL, NULL, NULL, 81877, NULL, NULL),
(82022, 'SORONG', NULL, NULL, NULL, 81877, NULL, NULL),
(82154, 'MANOKWARI', NULL, NULL, NULL, 81877, NULL, NULL),
(82605, 'FAKFAK', NULL, NULL, NULL, 81877, NULL, NULL),
(82724, 'SORONG SELATAN', NULL, NULL, NULL, 81877, NULL, NULL),
(82850, 'RAJA AMPAT', NULL, NULL, NULL, 81877, NULL, NULL),
(82965, 'TELUK BINTUNI', NULL, NULL, NULL, 81877, NULL, NULL),
(83107, 'TELUK WONDAMA', NULL, NULL, NULL, 81877, NULL, NULL),
(83194, 'KAIMANA', NULL, NULL, NULL, 81877, NULL, NULL),
(83289, 'KOTA SORONG', NULL, NULL, NULL, 81877, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE IF NOT EXISTS `tb_country` (
`tb_country_id` int(10) unsigned NOT NULL,
  `tb_country_name` varchar(50) DEFAULT NULL,
  `tb_country_code` varchar(50) DEFAULT NULL,
  `tb_country_count` int(11) DEFAULT NULL,
  `tb_country_approved_status` tinyint(1) DEFAULT NULL,
  `tb_country_province_json` text,
  `tb_country_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_country`
--

INSERT INTO `tb_country` (`tb_country_id`, `tb_country_name`, `tb_country_code`, `tb_country_count`, `tb_country_approved_status`, `tb_country_province_json`, `tb_country_remarks`) VALUES
(1, 'INDONESIA', 'IND', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_keumatan`
--

CREATE TABLE IF NOT EXISTS `tb_data_keumatan` (
`tb_data_keumatan_id` int(10) NOT NULL,
  `tb_data_keumatan_marriage_status` int(10) DEFAULT NULL,
  `tb_data_keumatan_nichiren_upacara` int(10) DEFAULT NULL,
  `tb_data_keumatan_nichiren_tahun` int(10) DEFAULT NULL,
  `tb_data_keumatan_nichiren_tempat` varchar(255) NOT NULL,
  `tb_data_keumatan_nichiren_pemimpin` varchar(255) NOT NULL,
  `tb_data_keumatan_gojukai` int(11) DEFAULT NULL,
  `tb_data_keumatan_gohonzon_okatagi` int(10) DEFAULT NULL,
  `tb_data_keumatan_gohonzon_omamori` int(10) DEFAULT NULL,
  `tb_data_keumatan_gohonzon_tokubetsu` int(10) DEFAULT NULL,
  `tb_data_keumatan_kankai` int(10) DEFAULT NULL,
  `tb_data_keumatan_gohifu` int(10) DEFAULT NULL,
  `tb_data_keumatan_gohifu_tahun` int(10) DEFAULT NULL,
  `tb_data_keumatan_gohifu_penyakit` varchar(255) NOT NULL,
  `tb_data_umat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tb_data_keumatan`
--

INSERT INTO `tb_data_keumatan` (`tb_data_keumatan_id`, `tb_data_keumatan_marriage_status`, `tb_data_keumatan_nichiren_upacara`, `tb_data_keumatan_nichiren_tahun`, `tb_data_keumatan_nichiren_tempat`, `tb_data_keumatan_nichiren_pemimpin`, `tb_data_keumatan_gojukai`, `tb_data_keumatan_gohonzon_okatagi`, `tb_data_keumatan_gohonzon_omamori`, `tb_data_keumatan_gohonzon_tokubetsu`, `tb_data_keumatan_kankai`, `tb_data_keumatan_gohifu`, `tb_data_keumatan_gohifu_tahun`, `tb_data_keumatan_gohifu_penyakit`, `tb_data_umat_id`) VALUES
(8, 2, 0, 0, '[object Object]', '[object Object]', 2009, 0, 0, 0, 0, 2, 0, '[object Object]', 8),
(9, 2, 0, 0, '[object Object]', '[object Object]', 2008, 0, 0, 0, 0, 2, 0, '[object Object]', 9),
(10, 2, 0, 0, '[object Object]', '[object Object]', 2000, 0, 0, 0, 0, 2, 0, '[object Object]', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_umat`
--

CREATE TABLE IF NOT EXISTS `tb_data_umat` (
`tb_data_umat_id` int(10) NOT NULL,
  `tb_data_umat_code` varchar(255) NOT NULL,
  `tb_data_umat_nama_ktp` varchar(255) DEFAULT NULL,
  `tb_data_umat_nama_panggilan` varchar(255) DEFAULT NULL,
  `tb_data_umat_tempat` varchar(255) DEFAULT NULL,
  `tb_data_umat_tgl_lahir` date DEFAULT NULL,
  `tb_data_umat_kewarganegaraan` int(10) DEFAULT NULL,
  `tb_data_umat_pekerjaan` varchar(255) DEFAULT NULL,
  `tb_data_umat_gender` int(10) DEFAULT NULL,
  `tb_data_umat_no_id` varchar(255) DEFAULT NULL,
  `tb_data_umat_alamat_ktp` varchar(255) DEFAULT NULL,
  `tb_data_umat_no_hp` varchar(255) DEFAULT NULL,
  `tb_data_umat_email` varchar(255) DEFAULT NULL,
  `tb_data_umat_keaktifan` int(10) DEFAULT NULL,
  `tb_data_umat_dana_goku` int(10) DEFAULT NULL,
  `tb_data_umat_tanggung_jawab` varchar(255) DEFAULT NULL,
  `tb_data_umat_hub1` int(10) DEFAULT NULL,
  `tb_data_umat_hub2` int(10) DEFAULT NULL,
  `tb_data_umat_alamat_tinggal` varchar(255) DEFAULT NULL,
  `tb_data_umat_no_tlp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tb_data_umat`
--

INSERT INTO `tb_data_umat` (`tb_data_umat_id`, `tb_data_umat_code`, `tb_data_umat_nama_ktp`, `tb_data_umat_nama_panggilan`, `tb_data_umat_tempat`, `tb_data_umat_tgl_lahir`, `tb_data_umat_kewarganegaraan`, `tb_data_umat_pekerjaan`, `tb_data_umat_gender`, `tb_data_umat_no_id`, `tb_data_umat_alamat_ktp`, `tb_data_umat_no_hp`, `tb_data_umat_email`, `tb_data_umat_keaktifan`, `tb_data_umat_dana_goku`, `tb_data_umat_tanggung_jawab`, `tb_data_umat_hub1`, `tb_data_umat_hub2`, `tb_data_umat_alamat_tinggal`, `tb_data_umat_no_tlp`) VALUES
(8, '00001', 'Adi Damar Prasetyo', 'Adi', 'Klaten', '2015-05-11', 1, '-', 1, '-', 'Banarjo, RT 05 RW 07, Mranggen, Jatinom Klaten', '085714497733', 'adidamar92@gmail.com', 1, 1, '-', 18, 18, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '021-000000'),
(9, '00002', 'Andi Junaidi', 'Andi', 'Lampung Timur', '2015-05-12', 1, '-', 1, '000000000000000', 'Jl. Arteri Supadio RT 01 RW 01 Teluk Kapuas, Sungai Raya', ' 6285293791232', 'andi7naidi@gmail.com ', 1, 1, '-', 20, 20, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '021-000000'),
(10, '00003', 'Ernawati', 'Ernawati', 'Wonogiri', '2015-05-12', 0, '-', 2, '000000000000', 'Buling RT 12/ RW 05 Bubakan Kec.Girimarto Wonogiri', '085729888773', 'ernawatiBDI97@gmail.com', 1, 1, '-', 22, 22, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '021-000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_umat_pembagian`
--

CREATE TABLE IF NOT EXISTS `tb_data_umat_pembagian` (
`tb_data_umat_pembagian_id` int(10) NOT NULL,
  `tb_province_id` int(10) NOT NULL,
  `tb_sentra_id` int(10) NOT NULL,
  `tb_distrik_id` int(10) NOT NULL,
  `tb_cetya_id` int(10) NOT NULL,
  `tb_dharmasala_id` int(10) NOT NULL,
  `tb_data_umat_id` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tb_data_umat_pembagian`
--

INSERT INTO `tb_data_umat_pembagian` (`tb_data_umat_pembagian_id`, `tb_province_id`, `tb_sentra_id`, `tb_distrik_id`, `tb_cetya_id`, `tb_dharmasala_id`, `tb_data_umat_id`) VALUES
(8, 6728, 4, 81879, 6, 3, 8),
(9, 25823, 4, 81879, 6, 3, 9),
(10, 25823, 4, 81879, 6, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_dharmasala`
--

CREATE TABLE IF NOT EXISTS `tb_dharmasala` (
`tb_dharmasala_id` int(10) unsigned NOT NULL,
  `tb_dharmasala_name` varchar(50) DEFAULT NULL,
  `tb_dharmasala_code` varchar(50) DEFAULT NULL,
  `tb_dharmasala_remarks` varchar(255) DEFAULT NULL,
  `tb_dharmasala_cetya_id` int(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  `update_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tb_dharmasala`
--

INSERT INTO `tb_dharmasala` (`tb_dharmasala_id`, `tb_dharmasala_name`, `tb_dharmasala_code`, `tb_dharmasala_remarks`, `tb_dharmasala_cetya_id`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(1, 'abc', NULL, 'sdf', 3, 0, 1, '0000-00-00', '2015-05-16'),
(2, 'tes', NULL, 'tes', 5, 0, 0, '0000-00-00', '0000-00-00'),
(3, 'Barisan Kosenrufu', 'Barisan Kosenrufu', 'Barisan Kosenrufu', 6, 0, 0, '0000-00-00', '0000-00-00'),
(4, 'Barisan Kosenrufu2', 'Barisan Kosenrufu2', 'Barisan Kosenrufu2', 6, 0, 0, '0000-00-00', '0000-00-00'),
(5, 'abcd', NULL, NULL, 3, 0, 1, '0000-00-00', '2015-05-16'),
(26, 'dua', NULL, NULL, 16, 1, 0, '2015-05-09', '0000-00-00'),
(27, 'abcde', NULL, NULL, 3, 1, 0, '2015-05-16', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_distrik`
--

CREATE TABLE IF NOT EXISTS `tb_distrik` (
`tb_distrik_id` int(10) unsigned NOT NULL,
  `tb_distrik_name` varchar(50) DEFAULT NULL,
  `tb_distrik_code` varchar(50) DEFAULT NULL,
  `tb_distrik_count` int(11) DEFAULT NULL,
  `tb_distrik_approved_status` tinyint(1) DEFAULT NULL,
  `tb_sentra_id` int(10) unsigned DEFAULT NULL,
  `tb_distrik_remarks` varchar(255) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `update_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81884 ;

--
-- Dumping data for table `tb_distrik`
--

INSERT INTO `tb_distrik` (`tb_distrik_id`, `tb_distrik_name`, `tb_distrik_code`, `tb_distrik_count`, `tb_distrik_approved_status`, `tb_sentra_id`, `tb_distrik_remarks`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(81878, 'ab1', '-', NULL, 1, 2, '1', 0, 1, '0000-00-00', '2015-05-16'),
(81879, '-', '-', NULL, 1, 4, '1', 0, 1, '0000-00-00', '2015-05-11'),
(81880, 'ab1', NULL, NULL, NULL, 2, NULL, 0, 1, '0000-00-00', '2015-05-16'),
(81883, 'js', NULL, NULL, NULL, 18, NULL, 1, 0, '2015-05-09', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_family_relationship`
--

CREATE TABLE IF NOT EXISTS `tb_family_relationship` (
`tb_family_relationship_id` int(10) unsigned NOT NULL,
  `tb_family_relationship_personal_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_related_personal_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_relationship_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_remarks` varchar(255) DEFAULT NULL,
  `tb_data_umat_id` int(10) DEFAULT NULL,
  `tb_family_relationship_type` int(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tb_family_relationship`
--

INSERT INTO `tb_family_relationship` (`tb_family_relationship_id`, `tb_family_relationship_personal_id`, `tb_family_relationship_related_personal_id`, `tb_family_relationship_relationship_id`, `tb_family_relationship_remarks`, `tb_data_umat_id`, `tb_family_relationship_type`) VALUES
(18, NULL, NULL, NULL, NULL, 0, 2),
(19, NULL, NULL, NULL, NULL, 0, 2),
(20, NULL, NULL, NULL, NULL, 0, 2),
(21, NULL, NULL, NULL, NULL, 8, 2),
(22, NULL, NULL, NULL, NULL, 0, 2),
(23, NULL, NULL, NULL, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_group`
--

CREATE TABLE IF NOT EXISTS `tb_group` (
`tb_group_id` int(11) NOT NULL,
  `tb_group_name` varchar(50) NOT NULL,
  `tb_group_code` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `company_code` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`tb_group_id`, `tb_group_name`, `tb_group_code`, `status`, `company_code`) VALUES
(1, 'admin', 'admin', 1, '1'),
(4, 'sekda', 'sekda', 1, '1'),
(5, 'admin', 'admin', 1, '3'),
(6, 'super admin', 'super admin', 1, '1'),
(7, 'user1', 'user1', 1, '0000000000000001'),
(8, 'notulen', 'notulen', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log_activity`
--

CREATE TABLE IF NOT EXISTS `tb_log_activity` (
`tb_log_activity_id` int(10) unsigned NOT NULL,
  `tb_log_activity_log_code_id` int(10) unsigned DEFAULT NULL,
  `tb_log_activity_description` varchar(255) DEFAULT NULL,
  `tb_log_activity_created_by` varchar(50) DEFAULT NULL,
  `tb_log_activity_created_ip` varchar(50) DEFAULT NULL,
  `tb_log_activity_created_date` datetime DEFAULT NULL,
  `tb_log_activity_modified_by` varchar(50) DEFAULT NULL,
  `tb_log_activity_modified_date` datetime DEFAULT NULL,
  `tb_log_activity_modified_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=814 ;

--
-- Dumping data for table `tb_log_activity`
--

INSERT INTO `tb_log_activity` (`tb_log_activity_id`, `tb_log_activity_log_code_id`, `tb_log_activity_description`, `tb_log_activity_created_by`, `tb_log_activity_created_ip`, `tb_log_activity_created_date`, `tb_log_activity_modified_by`, `tb_log_activity_modified_date`, `tb_log_activity_modified_ip`) VALUES
(24, NULL, 'Kartu Keluarga = view', 'admin', '127.0.0.1', '2015-04-16 05:04:50', NULL, NULL, NULL),
(25, NULL, 'Kartu Keluarga = view', 'admin', '127.0.0.1', '2015-04-16 05:04:01', NULL, NULL, NULL),
(26, NULL, 'Kartu Keluarga = view', 'admin', '127.0.0.1', '2015-04-16 05:04:24', NULL, NULL, NULL),
(27, NULL, 'Kartu Keluarga = view', 'admin', '127.0.0.1', '2015-04-16 05:04:53', NULL, NULL, NULL),
(28, NULL, 'Kartu Keluarga = view', 'admin', '127.0.0.1', '2015-04-16 06:04:24', NULL, NULL, NULL),
(29, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:19', NULL, NULL, NULL),
(30, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:44', NULL, NULL, NULL),
(31, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:28', NULL, NULL, NULL),
(32, NULL, 'Country = deleteAll', 'admin', '127.0.0.1', '2015-04-25 01:04:05', NULL, NULL, NULL),
(33, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:45', NULL, NULL, NULL),
(34, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:22', NULL, NULL, NULL),
(35, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:55', NULL, NULL, NULL),
(36, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:21', NULL, NULL, NULL),
(37, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:24', NULL, NULL, NULL),
(38, NULL, 'Country = delete', 'admin', '127.0.0.1', '2015-04-25 01:04:27', NULL, NULL, NULL),
(39, NULL, 'Country = deleteAll', 'admin', '127.0.0.1', '2015-04-25 01:04:33', NULL, NULL, NULL),
(40, NULL, 'Country = save', 'admin', '127.0.0.1', '2015-04-25 01:04:43', NULL, NULL, NULL),
(41, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-28 11:04:25', NULL, NULL, NULL),
(42, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-04-28 11:04:26', NULL, NULL, NULL),
(43, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-28 11:04:00', NULL, NULL, NULL),
(44, NULL, 'User = view', 'user1', '127.0.0.1', '2015-04-28 11:04:21', NULL, NULL, NULL),
(45, NULL, 'User = edit', 'user1', '127.0.0.1', '2015-04-28 11:04:23', NULL, NULL, NULL),
(46, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-29 12:04:54', NULL, NULL, NULL),
(47, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-04-29 12:04:55', NULL, NULL, NULL),
(48, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-29 01:04:30', NULL, NULL, NULL),
(49, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-04-29 01:04:32', NULL, NULL, NULL),
(50, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-29 01:04:59', NULL, NULL, NULL),
(51, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-04-29 01:04:03', NULL, NULL, NULL),
(52, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-29 01:04:12', NULL, NULL, NULL),
(53, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-04-29 01:04:14', NULL, NULL, NULL),
(54, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-04-29 01:04:59', NULL, NULL, NULL),
(55, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-04-29 01:04:02', NULL, NULL, NULL),
(56, NULL, 'Country = view', 'user1', '127.0.0.1', '2015-04-29 01:04:05', NULL, NULL, NULL),
(57, NULL, 'Data Umat = view', 'user1', '127.0.0.1', '2015-04-29 01:04:00', NULL, NULL, NULL),
(58, NULL, 'Data Umat = view', 'user1', '127.0.0.1', '2015-04-29 01:04:25', NULL, NULL, NULL),
(59, NULL, 'Kartu Keluarga = view', 'admin', '127.0.0.1', '2015-05-04 11:05:36', NULL, NULL, NULL),
(60, NULL, 'Kartu Keluarga = edit', 'admin', '127.0.0.1', '2015-05-04 11:05:39', NULL, NULL, NULL),
(61, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 02:05:01', NULL, NULL, NULL),
(62, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-05-05 02:05:23', NULL, NULL, NULL),
(63, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-05-05 02:05:25', NULL, NULL, NULL),
(64, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-05-05 03:05:27', NULL, NULL, NULL),
(65, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-05-05 03:05:29', NULL, NULL, NULL),
(66, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-05-05 03:05:00', NULL, NULL, NULL),
(67, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-05-05 03:05:02', NULL, NULL, NULL),
(68, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-05-05 03:05:34', NULL, NULL, NULL),
(69, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-05-05 03:05:35', NULL, NULL, NULL),
(70, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-05-05 03:05:44', NULL, NULL, NULL),
(71, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-05-05 03:05:49', NULL, NULL, NULL),
(72, NULL, 'Group = view', 'admin', '127.0.0.1', '2015-05-05 03:05:21', NULL, NULL, NULL),
(73, NULL, 'Group = edit', 'admin', '127.0.0.1', '2015-05-05 03:05:22', NULL, NULL, NULL),
(74, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:54', NULL, NULL, NULL),
(75, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:23', NULL, NULL, NULL),
(76, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:34', NULL, NULL, NULL),
(77, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:27', NULL, NULL, NULL),
(78, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:48', NULL, NULL, NULL),
(79, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:08', NULL, NULL, NULL),
(80, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:45', NULL, NULL, NULL),
(81, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:25', NULL, NULL, NULL),
(82, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:55', NULL, NULL, NULL),
(83, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 03:05:48', NULL, NULL, NULL),
(84, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:04', NULL, NULL, NULL),
(85, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:42', NULL, NULL, NULL),
(86, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:47', NULL, NULL, NULL),
(87, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:07', NULL, NULL, NULL),
(88, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:11', NULL, NULL, NULL),
(89, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:49', NULL, NULL, NULL),
(90, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:18', NULL, NULL, NULL),
(91, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:25', NULL, NULL, NULL),
(92, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:57', NULL, NULL, NULL),
(93, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:32', NULL, NULL, NULL),
(94, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:15', NULL, NULL, NULL),
(95, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:04', NULL, NULL, NULL),
(96, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:18', NULL, NULL, NULL),
(97, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:35', NULL, NULL, NULL),
(98, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:55', NULL, NULL, NULL),
(99, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:24', NULL, NULL, NULL),
(100, NULL, 'Data Umat = edit', 'admin', '127.0.0.1', '2015-05-05 04:05:25', NULL, NULL, NULL),
(101, NULL, 'Data Umat = view', 'admin', '127.0.0.1', '2015-05-05 04:05:32', NULL, NULL, NULL),
(102, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 10:05:35', NULL, NULL, NULL),
(103, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 10:05:08', NULL, NULL, NULL),
(104, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 10:05:35', NULL, NULL, NULL),
(105, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-05 10:05:37', NULL, NULL, NULL),
(106, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 10:05:49', NULL, NULL, NULL),
(107, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 10:05:09', NULL, NULL, NULL),
(108, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 11:05:32', NULL, NULL, NULL),
(109, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 11:05:55', NULL, NULL, NULL),
(110, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:59', NULL, NULL, NULL),
(111, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:12', NULL, NULL, NULL),
(112, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:00', NULL, NULL, NULL),
(113, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:43', NULL, NULL, NULL),
(114, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:49', NULL, NULL, NULL),
(115, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:58', NULL, NULL, NULL),
(116, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:12', NULL, NULL, NULL),
(117, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:01', NULL, NULL, NULL),
(118, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:32', NULL, NULL, NULL),
(119, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:51', NULL, NULL, NULL),
(120, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:51', NULL, NULL, NULL),
(121, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:15', NULL, NULL, NULL),
(122, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:36', NULL, NULL, NULL),
(123, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 12:05:49', NULL, NULL, NULL),
(124, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:32', NULL, NULL, NULL),
(125, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:11', NULL, NULL, NULL),
(126, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:53', NULL, NULL, NULL),
(127, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:42', NULL, NULL, NULL),
(128, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:58', NULL, NULL, NULL),
(129, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:15', NULL, NULL, NULL),
(130, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:59', NULL, NULL, NULL),
(131, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:11', NULL, NULL, NULL),
(132, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:26', NULL, NULL, NULL),
(133, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:06', NULL, NULL, NULL),
(134, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:22', NULL, NULL, NULL),
(135, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:23', NULL, NULL, NULL),
(136, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:16', NULL, NULL, NULL),
(137, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:17', NULL, NULL, NULL),
(138, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:59', NULL, NULL, NULL),
(139, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:12', NULL, NULL, NULL),
(140, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:31', NULL, NULL, NULL),
(141, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:53', NULL, NULL, NULL),
(142, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:20', NULL, NULL, NULL),
(143, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:22', NULL, NULL, NULL),
(144, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:18', NULL, NULL, NULL),
(145, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:44', NULL, NULL, NULL),
(146, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:19', NULL, NULL, NULL),
(147, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:54', NULL, NULL, NULL),
(148, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 01:05:58', NULL, NULL, NULL),
(149, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:51', NULL, NULL, NULL),
(150, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:30', NULL, NULL, NULL),
(151, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:49', NULL, NULL, NULL),
(152, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:30', NULL, NULL, NULL),
(153, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:08', NULL, NULL, NULL),
(154, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:34', NULL, NULL, NULL),
(155, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:42', NULL, NULL, NULL),
(156, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:47', NULL, NULL, NULL),
(157, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-05 02:05:58', NULL, NULL, NULL),
(158, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 04:05:40', NULL, NULL, NULL),
(159, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 08:05:36', NULL, NULL, NULL),
(160, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 08:05:55', NULL, NULL, NULL),
(161, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 08:05:42', NULL, NULL, NULL),
(162, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 08:05:08', NULL, NULL, NULL),
(163, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 09:05:48', NULL, NULL, NULL),
(164, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 09:05:41', NULL, NULL, NULL),
(165, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 09:05:38', NULL, NULL, NULL),
(166, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 09:05:15', NULL, NULL, NULL),
(170, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 09:05:29', NULL, NULL, NULL),
(171, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 09:05:37', NULL, NULL, NULL),
(172, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-07 10:05:50', NULL, NULL, NULL),
(173, NULL, 'Hak Akses = edit', 'admin', '::1', '2015-05-07 10:05:51', NULL, NULL, NULL),
(174, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-07 10:05:49', NULL, NULL, NULL),
(178, NULL, 'Log Activity = deleteAll', 'admin', '::1', '2015-05-07 10:05:08', NULL, NULL, NULL),
(179, NULL, 'Log Activity = deleteAll', 'admin', '::1', '2015-05-07 10:05:34', NULL, NULL, NULL),
(180, NULL, 'Log Activity = deleteAll', 'admin', '::1', '2015-05-07 10:05:50', NULL, NULL, NULL),
(181, NULL, 'Log Activity = deleteAll', 'admin', '::1', '2015-05-07 10:05:01', NULL, NULL, NULL),
(182, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 10:05:10', NULL, NULL, NULL),
(183, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 10:05:12', NULL, NULL, NULL),
(184, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 10:05:19', NULL, NULL, NULL),
(185, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 10:05:26', NULL, NULL, NULL),
(186, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 10:05:49', NULL, NULL, NULL),
(187, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 10:05:50', NULL, NULL, NULL),
(188, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 10:05:37', NULL, NULL, NULL),
(189, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 10:05:40', NULL, NULL, NULL),
(190, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 10:05:10', NULL, NULL, NULL),
(191, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 10:05:11', NULL, NULL, NULL),
(192, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:09', NULL, NULL, NULL),
(193, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:11', NULL, NULL, NULL),
(194, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:23', NULL, NULL, NULL),
(195, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:24', NULL, NULL, NULL),
(196, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:34', NULL, NULL, NULL),
(197, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:35', NULL, NULL, NULL),
(198, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:46', NULL, NULL, NULL),
(199, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:28', NULL, NULL, NULL),
(200, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:30', NULL, NULL, NULL),
(201, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:46', NULL, NULL, NULL),
(202, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:47', NULL, NULL, NULL),
(203, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:49', NULL, NULL, NULL),
(204, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:51', NULL, NULL, NULL),
(205, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:35', NULL, NULL, NULL),
(206, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:39', NULL, NULL, NULL),
(207, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:55', NULL, NULL, NULL),
(208, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:57', NULL, NULL, NULL),
(209, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:11', NULL, NULL, NULL),
(210, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:13', NULL, NULL, NULL),
(211, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:30', NULL, NULL, NULL),
(212, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:31', NULL, NULL, NULL),
(213, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:00', NULL, NULL, NULL),
(214, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:02', NULL, NULL, NULL),
(215, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:16', NULL, NULL, NULL),
(216, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:18', NULL, NULL, NULL),
(217, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:45', NULL, NULL, NULL),
(218, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:46', NULL, NULL, NULL),
(219, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:20', NULL, NULL, NULL),
(220, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:21', NULL, NULL, NULL),
(221, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:47', NULL, NULL, NULL),
(222, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:49', NULL, NULL, NULL),
(223, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:27', NULL, NULL, NULL),
(224, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:28', NULL, NULL, NULL),
(225, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:42', NULL, NULL, NULL),
(226, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:44', NULL, NULL, NULL),
(227, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:23', NULL, NULL, NULL),
(228, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:24', NULL, NULL, NULL),
(229, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:36', NULL, NULL, NULL),
(230, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:38', NULL, NULL, NULL),
(231, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:53', NULL, NULL, NULL),
(232, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:56', NULL, NULL, NULL),
(233, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:06', NULL, NULL, NULL),
(234, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:07', NULL, NULL, NULL),
(235, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:32', NULL, NULL, NULL),
(236, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:33', NULL, NULL, NULL),
(237, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-07 11:05:03', NULL, NULL, NULL),
(238, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-07 11:05:04', NULL, NULL, NULL),
(239, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:02', NULL, NULL, NULL),
(240, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:04', NULL, NULL, NULL),
(241, NULL, 'Dharmasala = view', 'admin', '::1', '2015-05-08 04:05:02', NULL, NULL, NULL),
(242, NULL, 'Dharmasala = edit', 'admin', '::1', '2015-05-08 04:05:03', NULL, NULL, NULL),
(243, NULL, 'Dharmasala = view', 'admin', '::1', '2015-05-08 04:05:42', NULL, NULL, NULL),
(244, NULL, 'Dharmasala = edit', 'admin', '::1', '2015-05-08 04:05:43', NULL, NULL, NULL),
(245, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:49', NULL, NULL, NULL),
(246, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:50', NULL, NULL, NULL),
(247, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:13', NULL, NULL, NULL),
(248, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:15', NULL, NULL, NULL),
(249, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:37', NULL, NULL, NULL),
(250, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:39', NULL, NULL, NULL),
(251, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 06:05:34', NULL, NULL, NULL),
(252, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 06:05:36', NULL, NULL, NULL),
(253, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:49', NULL, NULL, NULL),
(254, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:51', NULL, NULL, NULL),
(255, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:33', NULL, NULL, NULL),
(256, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:34', NULL, NULL, NULL),
(257, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:12', NULL, NULL, NULL),
(258, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:14', NULL, NULL, NULL),
(259, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 04:05:34', NULL, NULL, NULL),
(260, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 04:05:35', NULL, NULL, NULL),
(261, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:10', NULL, NULL, NULL),
(262, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:12', NULL, NULL, NULL),
(263, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:03', NULL, NULL, NULL),
(264, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:05', NULL, NULL, NULL),
(265, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:48', NULL, NULL, NULL),
(266, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:51', NULL, NULL, NULL),
(267, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:21', NULL, NULL, NULL),
(268, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:22', NULL, NULL, NULL),
(269, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:23', NULL, NULL, NULL),
(270, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:31', NULL, NULL, NULL),
(271, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:50', NULL, NULL, NULL),
(272, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:51', NULL, NULL, NULL),
(273, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:14', NULL, NULL, NULL),
(274, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:16', NULL, NULL, NULL),
(275, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:02', NULL, NULL, NULL),
(276, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:03', NULL, NULL, NULL),
(277, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:37', NULL, NULL, NULL),
(278, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:39', NULL, NULL, NULL),
(279, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:19', NULL, NULL, NULL),
(280, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:22', NULL, NULL, NULL),
(281, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:51', NULL, NULL, NULL),
(282, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:52', NULL, NULL, NULL),
(283, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:44', NULL, NULL, NULL),
(284, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:45', NULL, NULL, NULL),
(285, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:54', NULL, NULL, NULL),
(286, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:55', NULL, NULL, NULL),
(287, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:00', NULL, NULL, NULL),
(288, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:01', NULL, NULL, NULL),
(289, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:01', NULL, NULL, NULL),
(290, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:03', NULL, NULL, NULL),
(291, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:28', NULL, NULL, NULL),
(292, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:30', NULL, NULL, NULL),
(293, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:28', NULL, NULL, NULL),
(294, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:29', NULL, NULL, NULL),
(295, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:40', NULL, NULL, NULL),
(296, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:43', NULL, NULL, NULL),
(297, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:38', NULL, NULL, NULL),
(298, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:41', NULL, NULL, NULL),
(299, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:46', NULL, NULL, NULL),
(300, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:47', NULL, NULL, NULL),
(301, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:46', NULL, NULL, NULL),
(302, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:47', NULL, NULL, NULL),
(303, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:01', NULL, NULL, NULL),
(304, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:02', NULL, NULL, NULL),
(305, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:11', NULL, NULL, NULL),
(306, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:12', NULL, NULL, NULL),
(307, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:40', NULL, NULL, NULL),
(308, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:41', NULL, NULL, NULL),
(309, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:09', NULL, NULL, NULL),
(310, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:10', NULL, NULL, NULL),
(311, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:42', NULL, NULL, NULL),
(312, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:44', NULL, NULL, NULL),
(313, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:44', NULL, NULL, NULL),
(314, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 05:05:27', NULL, NULL, NULL),
(315, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 05:05:28', NULL, NULL, NULL),
(316, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 06:05:54', NULL, NULL, NULL),
(317, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 06:05:57', NULL, NULL, NULL),
(318, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 06:05:23', NULL, NULL, NULL),
(319, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 06:05:25', NULL, NULL, NULL),
(320, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 06:05:50', NULL, NULL, NULL),
(321, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 06:05:52', NULL, NULL, NULL),
(322, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 06:05:08', NULL, NULL, NULL),
(323, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 06:05:09', NULL, NULL, NULL),
(324, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 06:05:10', NULL, NULL, NULL),
(325, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 06:05:12', NULL, NULL, NULL),
(326, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:23', NULL, NULL, NULL),
(327, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:27', NULL, NULL, NULL),
(328, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:55', NULL, NULL, NULL),
(329, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:56', NULL, NULL, NULL),
(330, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:56', NULL, NULL, NULL),
(331, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:59', NULL, NULL, NULL),
(332, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:45', NULL, NULL, NULL),
(333, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:48', NULL, NULL, NULL),
(334, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:10', NULL, NULL, NULL),
(335, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:12', NULL, NULL, NULL),
(336, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:17', NULL, NULL, NULL),
(337, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:21', NULL, NULL, NULL),
(338, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:29', NULL, NULL, NULL),
(339, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:30', NULL, NULL, NULL),
(340, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:25', NULL, NULL, NULL),
(341, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:27', NULL, NULL, NULL),
(342, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:49', NULL, NULL, NULL),
(343, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:50', NULL, NULL, NULL),
(344, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:26', NULL, NULL, NULL),
(345, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:28', NULL, NULL, NULL),
(346, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:35', NULL, NULL, NULL),
(347, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:37', NULL, NULL, NULL),
(348, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:29', NULL, NULL, NULL),
(349, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:33', NULL, NULL, NULL),
(350, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:59', NULL, NULL, NULL),
(351, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:00', NULL, NULL, NULL),
(352, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:15', NULL, NULL, NULL),
(353, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:17', NULL, NULL, NULL),
(354, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:59', NULL, NULL, NULL),
(355, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:02', NULL, NULL, NULL),
(356, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:11', NULL, NULL, NULL),
(357, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:13', NULL, NULL, NULL),
(358, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:27', NULL, NULL, NULL),
(359, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:29', NULL, NULL, NULL),
(360, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:45', NULL, NULL, NULL),
(361, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:46', NULL, NULL, NULL),
(362, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:57', NULL, NULL, NULL),
(363, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:57', NULL, NULL, NULL),
(364, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:59', NULL, NULL, NULL),
(365, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 07:05:37', NULL, NULL, NULL),
(366, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 07:05:39', NULL, NULL, NULL),
(367, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:27', NULL, NULL, NULL),
(368, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:28', NULL, NULL, NULL),
(369, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:50', NULL, NULL, NULL),
(370, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:51', NULL, NULL, NULL),
(371, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:00', NULL, NULL, NULL),
(372, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:01', NULL, NULL, NULL),
(373, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:09', NULL, NULL, NULL),
(374, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:11', NULL, NULL, NULL),
(375, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:39', NULL, NULL, NULL),
(376, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:40', NULL, NULL, NULL),
(377, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:26', NULL, NULL, NULL),
(378, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:28', NULL, NULL, NULL),
(379, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:02', NULL, NULL, NULL),
(380, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:03', NULL, NULL, NULL),
(381, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:43', NULL, NULL, NULL),
(382, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:46', NULL, NULL, NULL),
(383, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:12', NULL, NULL, NULL),
(384, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:13', NULL, NULL, NULL),
(385, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:33', NULL, NULL, NULL),
(386, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:36', NULL, NULL, NULL),
(387, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:06', NULL, NULL, NULL),
(388, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:33', NULL, NULL, NULL),
(389, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:34', NULL, NULL, NULL),
(390, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:26', NULL, NULL, NULL),
(391, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:27', NULL, NULL, NULL),
(392, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:58', NULL, NULL, NULL),
(393, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:00', NULL, NULL, NULL),
(394, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:23', NULL, NULL, NULL),
(395, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:25', NULL, NULL, NULL),
(396, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:57', NULL, NULL, NULL),
(397, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:01', NULL, NULL, NULL),
(398, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:05', NULL, NULL, NULL),
(399, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:12', NULL, NULL, NULL),
(400, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:14', NULL, NULL, NULL),
(401, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:21', NULL, NULL, NULL),
(402, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:23', NULL, NULL, NULL),
(403, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:04', NULL, NULL, NULL),
(404, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:06', NULL, NULL, NULL),
(405, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:38', NULL, NULL, NULL),
(406, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:39', NULL, NULL, NULL),
(407, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:50', NULL, NULL, NULL),
(408, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:53', NULL, NULL, NULL),
(409, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:04', NULL, NULL, NULL),
(410, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:06', NULL, NULL, NULL),
(411, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:56', NULL, NULL, NULL),
(412, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:58', NULL, NULL, NULL),
(413, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:34', NULL, NULL, NULL),
(414, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:35', NULL, NULL, NULL),
(415, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:58', NULL, NULL, NULL),
(416, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:00', NULL, NULL, NULL),
(417, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:56', NULL, NULL, NULL),
(418, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:57', NULL, NULL, NULL),
(419, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 08:05:33', NULL, NULL, NULL),
(420, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 08:05:34', NULL, NULL, NULL),
(421, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 09:05:49', NULL, NULL, NULL),
(422, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 09:05:50', NULL, NULL, NULL),
(423, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 09:05:28', NULL, NULL, NULL),
(424, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 09:05:29', NULL, NULL, NULL),
(425, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 09:05:37', NULL, NULL, NULL),
(426, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 09:05:38', NULL, NULL, NULL),
(427, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 09:05:48', NULL, NULL, NULL),
(428, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-08 09:05:50', NULL, NULL, NULL),
(429, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-08 09:05:30', NULL, NULL, NULL),
(438, NULL, 'Log Activity = deleteAll', 'admin', '::1', '2015-05-09 11:05:42', NULL, NULL, NULL),
(439, NULL, 'Log Activity = deleteAll', 'admin', '::1', '2015-05-09 11:05:54', NULL, NULL, NULL),
(440, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:50', NULL, NULL, NULL),
(441, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:04', NULL, NULL, NULL),
(442, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:06', NULL, NULL, NULL),
(443, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:00', NULL, NULL, NULL),
(444, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:01', NULL, NULL, NULL),
(445, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:41', NULL, NULL, NULL),
(446, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:42', NULL, NULL, NULL),
(447, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:15', NULL, NULL, NULL),
(448, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:27', NULL, NULL, NULL),
(449, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:13', NULL, NULL, NULL),
(450, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:16', NULL, NULL, NULL),
(451, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:07', NULL, NULL, NULL),
(452, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:21', NULL, NULL, NULL),
(453, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:02', NULL, NULL, NULL),
(454, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:58', NULL, NULL, NULL),
(455, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:06', NULL, NULL, NULL),
(456, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 12:05:15', NULL, NULL, NULL),
(457, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 12:05:19', NULL, NULL, NULL),
(458, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:05', NULL, NULL, NULL),
(459, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:06', NULL, NULL, NULL),
(460, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:36', NULL, NULL, NULL),
(461, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:37', NULL, NULL, NULL),
(462, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:46', NULL, NULL, NULL),
(463, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:49', NULL, NULL, NULL),
(464, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:17', NULL, NULL, NULL),
(465, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:20', NULL, NULL, NULL),
(466, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:47', NULL, NULL, NULL),
(467, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:49', NULL, NULL, NULL),
(468, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:28', NULL, NULL, NULL),
(469, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:30', NULL, NULL, NULL),
(470, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:39', NULL, NULL, NULL),
(471, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:40', NULL, NULL, NULL),
(472, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:10', NULL, NULL, NULL),
(473, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:12', NULL, NULL, NULL),
(474, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:22', NULL, NULL, NULL),
(475, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:28', NULL, NULL, NULL),
(476, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:03', NULL, NULL, NULL),
(477, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:04', NULL, NULL, NULL),
(478, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:41', NULL, NULL, NULL),
(479, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:03', NULL, NULL, NULL),
(480, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:38', NULL, NULL, NULL),
(481, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:45', NULL, NULL, NULL),
(482, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:00', NULL, NULL, NULL),
(483, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:03', NULL, NULL, NULL),
(484, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:45', NULL, NULL, NULL),
(485, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:46', NULL, NULL, NULL),
(486, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:03', NULL, NULL, NULL),
(487, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:05', NULL, NULL, NULL),
(488, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:18', NULL, NULL, NULL),
(489, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:20', NULL, NULL, NULL),
(490, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:28', NULL, NULL, NULL),
(491, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:30', NULL, NULL, NULL),
(492, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:57', NULL, NULL, NULL),
(493, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:59', NULL, NULL, NULL),
(494, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 01:05:49', NULL, NULL, NULL),
(495, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 01:05:50', NULL, NULL, NULL),
(496, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:44', NULL, NULL, NULL),
(497, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:45', NULL, NULL, NULL),
(498, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:56', NULL, NULL, NULL),
(499, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:59', NULL, NULL, NULL),
(500, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:00', NULL, NULL, NULL),
(501, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:03', NULL, NULL, NULL),
(502, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:04', NULL, NULL, NULL),
(503, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:06', NULL, NULL, NULL),
(504, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:11', NULL, NULL, NULL),
(505, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:18', NULL, NULL, NULL),
(506, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:32', NULL, NULL, NULL),
(507, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:51', NULL, NULL, NULL),
(508, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:52', NULL, NULL, NULL),
(509, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:58', NULL, NULL, NULL),
(510, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:12', NULL, NULL, NULL),
(511, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:16', NULL, NULL, NULL),
(512, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:24', NULL, NULL, NULL),
(513, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:31', NULL, NULL, NULL),
(514, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:27', NULL, NULL, NULL),
(515, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:30', NULL, NULL, NULL),
(516, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:39', NULL, NULL, NULL),
(517, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:39', NULL, NULL, NULL),
(518, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:43', NULL, NULL, NULL),
(519, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:42', NULL, NULL, NULL),
(520, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:46', NULL, NULL, NULL),
(521, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:56', NULL, NULL, NULL),
(522, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:14', NULL, NULL, NULL),
(523, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:49', NULL, NULL, NULL),
(524, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 02:05:02', NULL, NULL, NULL),
(525, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 02:05:31', NULL, NULL, NULL),
(526, NULL, 'Data Umat = view', 'admin', '::1', '2015-05-09 03:05:40', NULL, NULL, NULL),
(527, NULL, 'Data Umat = edit', 'admin', '::1', '2015-05-09 03:05:41', NULL, NULL, NULL),
(528, NULL, 'Daerah = save', 'admin', '::1', '2015-05-09 03:05:10', NULL, NULL, NULL),
(529, NULL, 'Daerah = delete', 'admin', '::1', '2015-05-09 03:05:27', NULL, NULL, NULL),
(530, NULL, 'Sentra = save', 'admin', '::1', '2015-05-09 03:05:26', NULL, NULL, NULL),
(531, NULL, 'Sentra = save', 'admin', '::1', '2015-05-09 03:05:05', NULL, NULL, NULL),
(532, NULL, 'Sentra = view', 'admin', '::1', '2015-05-09 03:05:28', NULL, NULL, NULL),
(533, NULL, 'Daerah = view', 'admin', '::1', '2015-05-09 09:05:09', NULL, NULL, NULL),
(534, NULL, 'Daerah = edit', 'admin', '::1', '2015-05-09 09:05:11', NULL, NULL, NULL),
(535, NULL, 'Sentra = delitem', 'admin', '::1', '2015-05-09 09:05:43', NULL, NULL, NULL),
(536, NULL, 'Sentra = delitem', 'admin', '::1', '2015-05-09 09:05:01', NULL, NULL, NULL),
(537, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 09:05:00', NULL, NULL, NULL),
(538, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 09:05:01', NULL, NULL, NULL),
(539, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 09:05:01', NULL, NULL, NULL),
(540, NULL, 'Distrik = delitem', 'admin', '::1', '2015-05-09 09:05:13', NULL, NULL, NULL),
(541, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 09:05:48', NULL, NULL, NULL),
(542, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 09:05:48', NULL, NULL, NULL),
(543, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 09:05:49', NULL, NULL, NULL),
(544, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 09:05:54', NULL, NULL, NULL),
(545, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 09:05:54', NULL, NULL, NULL),
(546, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 09:05:54', NULL, NULL, NULL),
(547, NULL, 'Cetya = delitem', 'admin', '::1', '2015-05-09 09:05:28', NULL, NULL, NULL),
(548, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 10:05:11', NULL, NULL, NULL),
(549, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 10:05:11', NULL, NULL, NULL),
(550, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 10:05:18', NULL, NULL, NULL),
(551, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 10:05:18', NULL, NULL, NULL),
(552, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:48', NULL, NULL, NULL),
(553, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:48', NULL, NULL, NULL),
(554, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:53', NULL, NULL, NULL),
(555, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:53', NULL, NULL, NULL),
(556, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:00', NULL, NULL, NULL),
(557, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:01', NULL, NULL, NULL),
(558, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 10:05:32', NULL, NULL, NULL),
(559, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 10:05:34', NULL, NULL, NULL),
(560, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 10:05:38', NULL, NULL, NULL),
(561, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 10:05:21', NULL, NULL, NULL),
(562, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 10:05:21', NULL, NULL, NULL),
(563, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:53', NULL, NULL, NULL),
(564, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:54', NULL, NULL, NULL),
(565, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:07', NULL, NULL, NULL),
(566, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:07', NULL, NULL, NULL),
(567, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:07', NULL, NULL, NULL),
(568, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 10:05:07', NULL, NULL, NULL),
(569, NULL, 'Distrik = delitem', 'admin', '::1', '2015-05-09 10:05:33', NULL, NULL, NULL),
(570, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:00', NULL, NULL, NULL),
(571, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:00', NULL, NULL, NULL),
(572, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:00', NULL, NULL, NULL),
(573, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:00', NULL, NULL, NULL),
(574, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:12', NULL, NULL, NULL),
(575, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:14', NULL, NULL, NULL),
(576, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:16', NULL, NULL, NULL),
(577, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:18', NULL, NULL, NULL),
(578, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:56', NULL, NULL, NULL),
(579, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:56', NULL, NULL, NULL),
(580, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:25', NULL, NULL, NULL),
(581, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:27', NULL, NULL, NULL),
(582, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:37', NULL, NULL, NULL),
(583, NULL, 'Dharmasala = delitem', 'admin', '::1', '2015-05-09 11:05:39', NULL, NULL, NULL),
(584, NULL, 'Sentra = save', 'admin', '::1', '2015-05-09 11:05:12', NULL, NULL, NULL),
(585, NULL, 'Sentra = save', 'admin', '::1', '2015-05-09 11:05:12', NULL, NULL, NULL),
(586, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:29', NULL, NULL, NULL),
(587, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:35', NULL, NULL, NULL),
(588, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:35', NULL, NULL, NULL),
(589, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:45', NULL, NULL, NULL),
(590, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:45', NULL, NULL, NULL),
(591, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:40', NULL, NULL, NULL),
(592, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:40', NULL, NULL, NULL),
(593, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:40', NULL, NULL, NULL),
(594, NULL, 'Distrik = save', 'admin', '::1', '2015-05-09 11:05:57', NULL, NULL, NULL),
(595, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 11:05:07', NULL, NULL, NULL),
(596, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 11:05:07', NULL, NULL, NULL),
(597, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 11:05:04', NULL, NULL, NULL),
(598, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 11:05:04', NULL, NULL, NULL);
INSERT INTO `tb_log_activity` (`tb_log_activity_id`, `tb_log_activity_log_code_id`, `tb_log_activity_description`, `tb_log_activity_created_by`, `tb_log_activity_created_ip`, `tb_log_activity_created_date`, `tb_log_activity_modified_by`, `tb_log_activity_modified_date`, `tb_log_activity_modified_ip`) VALUES
(599, NULL, 'Cetya = delitem', 'admin', '::1', '2015-05-09 11:05:14', NULL, NULL, NULL),
(600, NULL, 'Cetya = delitem', 'admin', '::1', '2015-05-09 11:05:16', NULL, NULL, NULL),
(601, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 11:05:09', NULL, NULL, NULL),
(602, NULL, 'Cetya = save', 'admin', '::1', '2015-05-09 11:05:19', NULL, NULL, NULL),
(603, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:41', NULL, NULL, NULL),
(604, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:24', NULL, NULL, NULL),
(605, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:10', NULL, NULL, NULL),
(606, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:37', NULL, NULL, NULL),
(607, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-09 11:05:41', NULL, NULL, NULL),
(608, NULL, 'Sentra = delitem', 'admin', '::1', '2015-05-09 11:05:01', NULL, NULL, NULL),
(609, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-09 11:05:01', NULL, NULL, NULL),
(610, NULL, 'Hak Akses = edit', 'admin', '::1', '2015-05-09 11:05:07', NULL, NULL, NULL),
(611, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-10 12:05:44', NULL, NULL, NULL),
(612, NULL, 'Hak Akses = edit', 'admin', '::1', '2015-05-10 12:05:59', NULL, NULL, NULL),
(613, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-10 12:05:10', NULL, NULL, NULL),
(614, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-10 12:05:23', NULL, NULL, NULL),
(615, NULL, 'Hak Akses = edit', 'admin', '::1', '2015-05-10 12:05:25', NULL, NULL, NULL),
(616, NULL, 'Hak Akses = view', 'admin', '::1', '2015-05-10 12:05:53', NULL, NULL, NULL),
(617, NULL, 'Hak Akses = edit', 'admin', '::1', '2015-05-10 12:05:01', NULL, NULL, NULL),
(618, NULL, 'User = view', 'superadmin', '::1', '2015-05-10 12:05:57', NULL, NULL, NULL),
(619, NULL, 'User = view', 'superadmin', '::1', '2015-05-10 12:05:28', NULL, NULL, NULL),
(620, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:43', NULL, NULL, NULL),
(621, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:59', NULL, NULL, NULL),
(622, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:17', NULL, NULL, NULL),
(623, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:30', NULL, NULL, NULL),
(624, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:11', NULL, NULL, NULL),
(625, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:15', NULL, NULL, NULL),
(626, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:19', NULL, NULL, NULL),
(627, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:40', NULL, NULL, NULL),
(628, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:41', NULL, NULL, NULL),
(629, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:12', NULL, NULL, NULL),
(630, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:28', NULL, NULL, NULL),
(631, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:15', NULL, NULL, NULL),
(632, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:17', NULL, NULL, NULL),
(633, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:25', NULL, NULL, NULL),
(634, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:26', NULL, NULL, NULL),
(635, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-10 12:05:01', NULL, NULL, NULL),
(636, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-10 12:05:20', NULL, NULL, NULL),
(637, NULL, 'Tambah Data Umat = view', 'admin', '10.1.0.43', '2015-05-10 02:05:33', NULL, NULL, NULL),
(638, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-10 04:05:19', NULL, NULL, NULL),
(639, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-10 05:05:51', NULL, NULL, NULL),
(640, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-10 07:05:13', NULL, NULL, NULL),
(641, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-10 07:05:28', NULL, NULL, NULL),
(642, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-10 07:05:51', NULL, NULL, NULL),
(643, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-10 07:05:00', NULL, NULL, NULL),
(644, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-10 07:05:09', NULL, NULL, NULL),
(645, NULL, 'Tambah Data Umat = view', 'admin', '10.1.0.43', '2015-05-11 10:05:17', NULL, NULL, NULL),
(646, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 11:05:34', NULL, NULL, NULL),
(647, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-11 12:05:27', NULL, NULL, NULL),
(648, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-11 12:05:28', NULL, NULL, NULL),
(649, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-11 12:05:21', NULL, NULL, NULL),
(650, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-11 12:05:21', NULL, NULL, NULL),
(651, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-11 12:05:36', NULL, NULL, NULL),
(652, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-11 12:05:08', NULL, NULL, NULL),
(653, NULL, 'Tambah Data Umat = save', 'admin', '139.0.96.219', '2015-05-11 12:05:20', NULL, NULL, NULL),
(654, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:04', NULL, NULL, NULL),
(655, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:11', NULL, NULL, NULL),
(656, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-11 12:05:14', NULL, NULL, NULL),
(657, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:55', NULL, NULL, NULL),
(658, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:24', NULL, NULL, NULL),
(659, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-11 12:05:37', NULL, NULL, NULL),
(660, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:51', NULL, NULL, NULL),
(661, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:18', NULL, NULL, NULL),
(662, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-11 12:05:22', NULL, NULL, NULL),
(663, NULL, 'Tambah Data Umat = update', 'admin', '139.0.96.219', '2015-05-11 12:05:35', NULL, NULL, NULL),
(664, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:39', NULL, NULL, NULL),
(665, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-11 12:05:46', NULL, NULL, NULL),
(666, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-11 12:05:01', NULL, NULL, NULL),
(667, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-11 12:05:03', NULL, NULL, NULL),
(668, NULL, 'Tambah Data Umat = update', 'admin', '139.0.96.219', '2015-05-11 12:05:22', NULL, NULL, NULL),
(669, NULL, 'Distrik = delitem', 'admin', '139.0.96.219', '2015-05-11 12:05:38', NULL, NULL, NULL),
(670, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:16', NULL, NULL, NULL),
(671, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:50', NULL, NULL, NULL),
(672, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:23', NULL, NULL, NULL),
(673, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:36', NULL, NULL, NULL),
(674, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:01', NULL, NULL, NULL),
(675, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:14', NULL, NULL, NULL),
(676, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-12 03:05:23', NULL, NULL, NULL),
(677, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:05', NULL, NULL, NULL),
(678, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:02', NULL, NULL, NULL),
(679, NULL, 'Tambah Data Umat = save', 'admin', '139.0.96.219', '2015-05-12 03:05:42', NULL, NULL, NULL),
(680, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:14', NULL, NULL, NULL),
(681, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-12 03:05:34', NULL, NULL, NULL),
(682, NULL, 'Tambah Data Umat = update', 'admin', '139.0.96.219', '2015-05-12 03:05:39', NULL, NULL, NULL),
(683, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:43', NULL, NULL, NULL),
(684, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-12 03:05:45', NULL, NULL, NULL),
(685, NULL, 'Tambah Data Umat = update', 'admin', '139.0.96.219', '2015-05-12 03:05:57', NULL, NULL, NULL),
(686, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:44', NULL, NULL, NULL),
(687, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-12 03:05:45', NULL, NULL, NULL),
(688, NULL, 'Tambah Data Umat = update', 'admin', '139.0.96.219', '2015-05-12 03:05:11', NULL, NULL, NULL),
(689, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 03:05:17', NULL, NULL, NULL),
(690, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-12 03:05:19', NULL, NULL, NULL),
(691, NULL, 'Tambah Data Umat = update', 'admin', '139.0.96.219', '2015-05-12 03:05:42', NULL, NULL, NULL),
(692, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 04:05:21', NULL, NULL, NULL),
(693, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-12 04:05:22', NULL, NULL, NULL),
(694, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-12 04:05:40', NULL, NULL, NULL),
(695, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-12 09:05:29', NULL, NULL, NULL),
(696, NULL, 'Tambah Data Umat = view', 'admin', '::1', '2015-05-15 08:05:04', NULL, NULL, NULL),
(697, NULL, 'Tambah Data Umat = view', 'admin', '::1', '2015-05-15 08:05:45', NULL, NULL, NULL),
(698, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-16 08:05:55', NULL, NULL, NULL),
(699, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-16 08:05:55', NULL, NULL, NULL),
(700, NULL, 'Dharmasala = save', 'admin', '::1', '2015-05-16 08:05:55', NULL, NULL, NULL),
(701, NULL, 'Distrik = save', 'admin', '::1', '2015-05-16 08:05:24', NULL, NULL, NULL),
(702, NULL, 'Distrik = save', 'admin', '::1', '2015-05-16 08:05:25', NULL, NULL, NULL),
(703, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 08:05:49', NULL, NULL, NULL),
(704, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:51', NULL, NULL, NULL),
(705, NULL, 'Distrik = delitem', 'superadmin', '::1', '2015-05-16 09:05:20', NULL, NULL, NULL),
(706, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 04:05:37', NULL, NULL, NULL),
(707, NULL, 'Tambah Data Umat = view', 'sekda', '::1', '2015-05-16 05:05:49', NULL, NULL, NULL),
(708, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 06:05:59', NULL, NULL, NULL),
(709, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 06:05:06', NULL, NULL, NULL),
(710, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 06:05:13', NULL, NULL, NULL),
(711, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 07:05:02', NULL, NULL, NULL),
(712, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 07:05:43', NULL, NULL, NULL),
(713, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 07:05:46', NULL, NULL, NULL),
(714, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 07:05:27', NULL, NULL, NULL),
(715, NULL, 'Tambah Data Umat = view', 'sekda', '::1', '2015-05-16 08:05:22', NULL, NULL, NULL),
(716, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:23', NULL, NULL, NULL),
(717, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:55', NULL, NULL, NULL),
(718, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:57', NULL, NULL, NULL),
(719, NULL, 'Daerah = view', 'superadmin', '::1', '2015-05-16 08:05:04', NULL, NULL, NULL),
(720, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:28', NULL, NULL, NULL),
(721, NULL, 'Sekda = edit', 'superadmin', '::1', '2015-05-16 08:05:29', NULL, NULL, NULL),
(722, NULL, 'Tambah Data Umat = view', 'admin', '::1', '2015-05-16 08:05:46', NULL, NULL, NULL),
(723, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:03', NULL, NULL, NULL),
(724, NULL, 'Sekda = edit', 'superadmin', '::1', '2015-05-16 08:05:07', NULL, NULL, NULL),
(725, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:35', NULL, NULL, NULL),
(726, NULL, 'Sekda = edit', 'superadmin', '::1', '2015-05-16 08:05:39', NULL, NULL, NULL),
(727, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:26', NULL, NULL, NULL),
(728, NULL, 'Sekda = edit', 'superadmin', '::1', '2015-05-16 08:05:27', NULL, NULL, NULL),
(729, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:50', NULL, NULL, NULL),
(730, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-16 08:05:09', NULL, NULL, NULL),
(731, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 08:05:32', NULL, NULL, NULL),
(732, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 08:05:52', NULL, NULL, NULL),
(733, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 08:05:57', NULL, NULL, NULL),
(734, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-16 08:05:26', NULL, NULL, NULL),
(735, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 08:05:39', NULL, NULL, NULL),
(736, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 08:05:58', NULL, NULL, NULL),
(737, NULL, 'Daerah = view', 'superadmin', '::1', '2015-05-16 08:05:30', NULL, NULL, NULL),
(738, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:29', NULL, NULL, NULL),
(739, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:44', NULL, NULL, NULL),
(740, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:49', NULL, NULL, NULL),
(741, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:57', NULL, NULL, NULL),
(742, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 09:05:15', NULL, NULL, NULL),
(743, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:02', NULL, NULL, NULL),
(744, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:06', NULL, NULL, NULL),
(745, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 09:05:09', NULL, NULL, NULL),
(746, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:14', NULL, NULL, NULL),
(747, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:20', NULL, NULL, NULL),
(748, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:46', NULL, NULL, NULL),
(749, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:52', NULL, NULL, NULL),
(750, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:55', NULL, NULL, NULL),
(751, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:03', NULL, NULL, NULL),
(752, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:29', NULL, NULL, NULL),
(753, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:32', NULL, NULL, NULL),
(754, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 09:05:52', NULL, NULL, NULL),
(755, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-16 09:05:59', NULL, NULL, NULL),
(756, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:16', NULL, NULL, NULL),
(757, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:29', NULL, NULL, NULL),
(758, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:35', NULL, NULL, NULL),
(759, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 09:05:00', NULL, NULL, NULL),
(760, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 09:05:06', NULL, NULL, NULL),
(761, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:00', NULL, NULL, NULL),
(762, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:03', NULL, NULL, NULL),
(763, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:07', NULL, NULL, NULL),
(764, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:09', NULL, NULL, NULL),
(765, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:13', NULL, NULL, NULL),
(766, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:26', NULL, NULL, NULL),
(767, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:57', NULL, NULL, NULL),
(768, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:00', NULL, NULL, NULL),
(769, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:20', NULL, NULL, NULL),
(770, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:22', NULL, NULL, NULL),
(771, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:59', NULL, NULL, NULL),
(772, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:02', NULL, NULL, NULL),
(773, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:47', NULL, NULL, NULL),
(774, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:04', NULL, NULL, NULL),
(775, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:33', NULL, NULL, NULL),
(776, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:38', NULL, NULL, NULL),
(777, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:42', NULL, NULL, NULL),
(778, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:45', NULL, NULL, NULL),
(779, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:00', NULL, NULL, NULL),
(780, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:05', NULL, NULL, NULL),
(781, NULL, 'User = delete', 'superadmin', '::1', '2015-05-16 09:05:21', NULL, NULL, NULL),
(782, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:45', NULL, NULL, NULL),
(783, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:52', NULL, NULL, NULL),
(784, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:21', NULL, NULL, NULL),
(785, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:38', NULL, NULL, NULL),
(786, NULL, 'User = edit', 'superadmin', '::1', '2015-05-16 09:05:41', NULL, NULL, NULL),
(787, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:53', NULL, NULL, NULL),
(788, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:03', NULL, NULL, NULL),
(789, NULL, 'User = edit', 'superadmin', '::1', '2015-05-16 09:05:09', NULL, NULL, NULL),
(790, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:16', NULL, NULL, NULL),
(791, NULL, 'User = edit', 'superadmin', '::1', '2015-05-16 09:05:20', NULL, NULL, NULL),
(792, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:26', NULL, NULL, NULL),
(793, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:03', NULL, NULL, NULL),
(794, NULL, 'User = edit', 'superadmin', '::1', '2015-05-16 09:05:06', NULL, NULL, NULL),
(795, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:24', NULL, NULL, NULL),
(796, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:38', NULL, NULL, NULL),
(797, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:59', NULL, NULL, NULL),
(798, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:46', NULL, NULL, NULL),
(799, NULL, 'Sekda = view', 'superadmin', '::1', '2015-05-16 09:05:54', NULL, NULL, NULL),
(800, NULL, 'Sekda = edit', 'superadmin', '::1', '2015-05-16 09:05:56', NULL, NULL, NULL),
(801, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:09', NULL, NULL, NULL),
(802, NULL, 'User = edit', 'superadmin', '::1', '2015-05-16 09:05:15', NULL, NULL, NULL),
(803, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:44', NULL, NULL, NULL),
(804, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:27', NULL, NULL, NULL),
(805, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 09:05:38', NULL, NULL, NULL),
(806, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 10:05:12', NULL, NULL, NULL),
(807, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 11:05:58', NULL, NULL, NULL),
(808, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 11:05:06', NULL, NULL, NULL),
(809, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 11:05:11', NULL, NULL, NULL),
(810, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 11:05:36', NULL, NULL, NULL),
(811, NULL, 'User = view', 'superadmin', '::1', '2015-05-16 11:05:37', NULL, NULL, NULL),
(812, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-16 11:05:04', NULL, NULL, NULL),
(813, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-16 11:05:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_log_code`
--

CREATE TABLE IF NOT EXISTS `tb_log_code` (
`tb_log_code_id` int(10) unsigned NOT NULL,
  `tb_log_code_name` varchar(50) DEFAULT NULL,
  `tb_log_code_approved_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembimbing`
--

CREATE TABLE IF NOT EXISTS `tb_pembimbing` (
`tb_pembimbing_id` int(10) NOT NULL,
  `tb_pembimbing_name` varchar(255) NOT NULL,
  `tb_pembimbing_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_pembimbing`
--

INSERT INTO `tb_pembimbing` (`tb_pembimbing_id`, `tb_pembimbing_name`, `tb_pembimbing_remarks`) VALUES
(1, 'kuhfdsiufhas', 'kjsdfnhdsf'),
(2, 'kjgvnkjsfn', 'dhfvfiushvis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_personal_identity`
--

CREATE TABLE IF NOT EXISTS `tb_personal_identity` (
`tb_personal_identity_id` int(10) unsigned NOT NULL,
  `tb_personal_identity_name` varchar(50) DEFAULT NULL,
  `tb_personal_identity_code` varchar(50) NOT NULL,
  `tb_personal_identity_current_address` int(10) unsigned DEFAULT NULL,
  `tb_personal_identity_ktp_address` int(10) unsigned DEFAULT NULL,
  `tb_personal_identity_email_address` varchar(255) DEFAULT NULL,
  `tb_personal_identity_birth_date` date DEFAULT NULL,
  `tb_personal_identity_place_of_birth` varchar(50) DEFAULT NULL,
  `tb_personal_identity_gender` tinyint(1) DEFAULT NULL,
  `tb_personal_identity_job` varchar(50) DEFAULT NULL,
  `tb_personal_identity_gojukai_date` date DEFAULT NULL,
  `tb_personal_identity_gohozon_accept_date` date DEFAULT NULL,
  `tb_personal_identity_okataki_gohozon` varchar(50) DEFAULT NULL,
  `tb_personal_identity_omamori_gohozon` varchar(50) DEFAULT NULL,
  `tb_personal_identity_tokubetsu_gohozon` varchar(50) DEFAULT NULL,
  `tb_personal_identity_kankai_date` date DEFAULT NULL,
  `tb_personal_identity_marital_status` tinyint(1) DEFAULT NULL,
  `tb_personal_identity_is_nichiren_shosu` tinyint(1) DEFAULT NULL,
  `tb_personal_identity_nichiren_shosu_year` date DEFAULT NULL,
  `tb_personal_identity_nichiren_shosu_place` varchar(50) DEFAULT NULL,
  `tb_personal_identity_nichiren_shosu_leader` varchar(50) DEFAULT NULL,
  `tb_personal_identity_remarks` varchar(255) DEFAULT NULL,
  `tb_country_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_province`
--

CREATE TABLE IF NOT EXISTS `tb_province` (
`tb_province_id` int(10) unsigned NOT NULL,
  `tb_province_name` varchar(50) DEFAULT NULL,
  `tb_province_code` varchar(50) DEFAULT NULL,
  `tb_province_count` int(11) DEFAULT NULL,
  `tb_province_approved_status` tinyint(1) DEFAULT NULL,
  `tb_country_id` int(10) unsigned DEFAULT NULL,
  `tb_province_city_json` text,
  `tb_province_remarks` varchar(255) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `update_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81878 ;

--
-- Dumping data for table `tb_province`
--

INSERT INTO `tb_province` (`tb_province_id`, `tb_province_name`, `tb_province_code`, `tb_province_count`, `tb_province_approved_status`, `tb_country_id`, `tb_province_city_json`, `tb_province_remarks`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(1, 'ACEH', '01', NULL, NULL, 1, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(6728, 'SUMATERA UTARA', '02', NULL, NULL, 1, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(12920, 'SUMATERA BARAT', '03', NULL, NULL, 1, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(14086, 'RIAU', '04', NULL, NULL, 1, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(15885, 'JAMBI', '05', NULL, NULL, 1, NULL, 'tes', 0, 0, '0000-00-00', '0000-00-00'),
(17404, 'SUMATERA SELATAN', '06', NULL, NULL, 1, NULL, 'SUMATERA SELATAN', 0, 0, '0000-00-00', '0000-00-00'),
(20802, 'BENGKULU', '07', NULL, NULL, 1, NULL, 'desc', 0, 0, '0000-00-00', '0000-00-00'),
(22328, 'LAMPUNG', '08', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(24993, 'KEPULAUAN BANGKA BELITUNG', '09', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(25405, 'KEPULAUAN RIAU', '10', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(25823, 'DKI JAKARTA', '11', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(26141, 'JAWA BARAT', '12', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(32676, 'JAWA TENGAH', '13', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(41863, 'DAERAH ISTIMEWA YOGYAKARTA', '14', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(42385, 'JAWA TIMUR', '15', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(51578, 'BANTEN', '16', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(53241, 'BALI', '17', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(54020, 'NUSA TENGGARA BARAT', '18', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(55065, 'NUSA TENGGARA TIMUR', '19', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(58285, 'KALIMANTAN BARAT', '20', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(60371, 'KALIMANTAN TENGAH', '21', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(61965, 'KALIMANTAN SELATAN', '22', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(64111, 'KALIMANTAN TIMUR', '23', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(65702, 'SULAWESI UTARA', '24', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(67393, 'SULAWESI TENGAH', '25', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(69268, 'SULAWESI SELATAN', '26', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(72551, 'SULAWESI TENGGARA', '27', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(74716, 'GORONTALO', '28', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(75425, 'SULAWESI BARAT', '29', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(76096, 'MALUKU', '30', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(77085, 'MALUKU UTARA', '31', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(78203, 'PAPUA', '32', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(81877, 'PAPUA BARAT', '33', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE IF NOT EXISTS `tb_provinsi` (
`tb_provinsi_id` int(100) NOT NULL,
  `tb_provinsi_code` varchar(225) NOT NULL,
  `tb_provinsi_name` varchar(225) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_relationship`
--

CREATE TABLE IF NOT EXISTS `tb_relationship` (
`tb_relationship_id` int(10) unsigned NOT NULL,
  `tb_relationship_relation_code` varchar(255) DEFAULT NULL,
  `tb_relationship_relationship_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_id` int(10) NOT NULL,
  `tb_relationship_approved_status` tinyint(1) DEFAULT NULL,
  `tb_data_umat_id` int(10) DEFAULT NULL,
  `tb_relationship_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tb_relationship`
--

INSERT INTO `tb_relationship` (`tb_relationship_id`, `tb_relationship_relation_code`, `tb_relationship_relationship_id`, `tb_family_relationship_id`, `tb_relationship_approved_status`, `tb_data_umat_id`, `tb_relationship_name`) VALUES
(25, 'AYAH', 18, 0, NULL, NULL, 'TES'),
(26, 'AYAH', 19, 0, NULL, NULL, 'TES'),
(27, 'AYAH', 20, 0, NULL, NULL, ''),
(28, 'AYAH', 21, 0, NULL, NULL, 'Bapake'),
(29, 'AYAH', 18, 0, NULL, NULL, 'TES'),
(30, 'AYAH', 18, 0, NULL, NULL, 'TES'),
(31, 'AYAH', 18, 0, NULL, NULL, 'TES'),
(32, 'null', 23, 0, NULL, NULL, 'Bapake'),
(33, 'AYAH', 20, 0, NULL, NULL, ''),
(34, 'AYAH', 20, 0, NULL, NULL, ''),
(35, 'AYAH', 20, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ritual_activity`
--

CREATE TABLE IF NOT EXISTS `tb_ritual_activity` (
`tb_ritual_activity_id` int(10) unsigned NOT NULL,
  `tb_ritual_activity_dharmasala_id` int(10) unsigned DEFAULT NULL,
  `tb_ritual_activity_responsibility` varchar(50) DEFAULT NULL,
  `tb_ritual_activity_is_attend_ritual` tinyint(1) DEFAULT NULL,
  `tb_ritual_activity_is_danapamita_or_gokuyo` tinyint(1) DEFAULT NULL,
  `tb_ritual_activity_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_ritual_activity`
--

INSERT INTO `tb_ritual_activity` (`tb_ritual_activity_id`, `tb_ritual_activity_dharmasala_id`, `tb_ritual_activity_responsibility`, `tb_ritual_activity_is_attend_ritual`, `tb_ritual_activity_is_danapamita_or_gokuyo`, `tb_ritual_activity_remarks`) VALUES
(1, 1, '2', 3, 4, '5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sentra`
--

CREATE TABLE IF NOT EXISTS `tb_sentra` (
`tb_sentra_id` int(10) unsigned NOT NULL,
  `tb_sentra_remarks` varchar(255) DEFAULT NULL,
  `tb_sentra_province_id` int(10) unsigned DEFAULT NULL,
  `tb_sentra_name` varchar(255) NOT NULL,
  `created_by` int(10) NOT NULL,
  `update_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tb_sentra`
--

INSERT INTO `tb_sentra` (`tb_sentra_id`, `tb_sentra_remarks`, `tb_sentra_province_id`, `tb_sentra_name`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(2, 'ACEH', 1, 'ACEH A', 0, 0, '0000-00-00', '0000-00-00'),
(3, 'TES SUMUT', 6728, 'SUMATERA A', 0, 0, '0000-00-00', '0000-00-00'),
(4, 'DKI B', 25823, 'DKI B', 0, 1, '0000-00-00', '2015-05-11'),
(5, 'BANTEN A', 51578, 'BANTEN A', 0, 0, '0000-00-00', '0000-00-00'),
(11, NULL, 1, 'ACEH B', 0, 0, '0000-00-00', '0000-00-00'),
(18, NULL, 15885, 'JAMBI A', 1, 0, '2015-05-09', '0000-00-00'),
(20, NULL, 25823, 'DKI A', 1, 0, '2015-05-11', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_settings`
--

CREATE TABLE IF NOT EXISTS `tb_settings` (
`tb_settings_id` int(6) NOT NULL,
  `tb_settings_code` varchar(225) NOT NULL,
  `tb_settings_name` varchar(225) NOT NULL,
  `user_username` varchar(225) NOT NULL,
  `type_backend` int(10) NOT NULL,
  `tb_settings_favicon` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_settings`
--

INSERT INTO `tb_settings` (`tb_settings_id`, `tb_settings_code`, `tb_settings_name`, `user_username`, `type_backend`, `tb_settings_favicon`) VALUES
(1, '0000000000000001', 'BDI', 'admin', 1, 'img/favicon.png'),
(2, '2', 'TES', 'tes', 1, ''),
(3, '003', 'Quick Example', 'admin', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`user_id` int(11) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_status` int(11) NOT NULL,
  `tb_group_id` int(6) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `company_code` int(100) NOT NULL,
  `user_email` varchar(225) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_country` varchar(225) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_username`, `user_password`, `user_status`, `tb_group_id`, `user_fullname`, `company_code`, `user_email`, `user_birthday`, `user_country`, `user_address`) VALUES
(1, 'admin', 'admin', 1, 1, 'Syahrial Fandrianah', 1, 'sfandrianah2@gmail.com', '1995-03-12', 'INDONESIA', 'pondok aren'),
(4, 'nanang', 'nanang', 1, 5, 'Nanang Hendro', 3, '', '1992-03-10', '', ''),
(6, 'admin123', '123', 1, 1, 'admin123', 1, '', '0000-00-00', '', ''),
(8, 'user1', 'user1', 1, 7, 'user1', 1, '', '0000-00-00', '', ''),
(9, 'superadmin', 'superadmin', 1, 6, 'DION', 1, '', '0000-00-00', '', ''),
(10, 'sekda', '123456', 1, 4, 'sekda', 1, '', '0000-00-00', '', ''),
(11, 'notulen', 'notulen', 1, 8, 'notulen', 1, '', '0000-00-00', '', ''),
(27, 'warh', 'rh', 1, 4, 'awrh', 1, '', '0000-00-00', '', ''),
(31, 'Ahmad', 'testes', 1, 4, 'Ahmad Fauzi', 1, '', '0000-00-00', '', ''),
(40, 'eas', 'asf', 1, 4, 'asf', 1, '', '0000-00-00', '', ''),
(41, 'tesA', '123456', 1, 4, 'Agung Tes', 1, '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_province`
--

CREATE TABLE IF NOT EXISTS `tb_user_province` (
`tb_user_province_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `tb_province_id` int(10) NOT NULL,
  `tb_user_province_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tb_user_province`
--

INSERT INTO `tb_user_province` (`tb_user_province_id`, `user_id`, `tb_province_id`, `tb_user_province_remarks`) VALUES
(1, 10, 25823, 'Sekda Jakarta'),
(16, 27, 54020, ''),
(20, 31, 42385, ''),
(24, 40, 14086, ''),
(25, 41, 41863, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_role`
--

CREATE TABLE IF NOT EXISTS `tb_user_role` (
`tb_user_role_id` int(10) unsigned NOT NULL,
  `tb_user_role_username` varchar(50) DEFAULT NULL,
  `tb_user_role_password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_function`
--
ALTER TABLE `menu_function`
 ADD PRIMARY KEY (`menu_function_id`);

--
-- Indexes for table `structure_menu`
--
ALTER TABLE `structure_menu`
 ADD PRIMARY KEY (`structure_menu_id`);

--
-- Indexes for table `tb_address`
--
ALTER TABLE `tb_address`
 ADD PRIMARY KEY (`tb_address_id`);

--
-- Indexes for table `tb_address_history`
--
ALTER TABLE `tb_address_history`
 ADD PRIMARY KEY (`tb_address_history_id`), ADD KEY `fk_tb_address_history_tb_personal_id` (`tb_address_history_personal_id`), ADD KEY `fk_tb_address_history_tb_address_id` (`tb_address_history_address_id`), ADD KEY `fk_tb_address_history_tb_approved_by` (`tb_address_history_approved_by`);

--
-- Indexes for table `tb_alamat`
--
ALTER TABLE `tb_alamat`
 ADD PRIMARY KEY (`tb_alamat_id`);

--
-- Indexes for table `tb_bimbingan_detail`
--
ALTER TABLE `tb_bimbingan_detail`
 ADD PRIMARY KEY (`tb_bimbingan_detail_id`);

--
-- Indexes for table `tb_bimbingan_header`
--
ALTER TABLE `tb_bimbingan_header`
 ADD PRIMARY KEY (`tb_bimbingan_header_id`);

--
-- Indexes for table `tb_cetya`
--
ALTER TABLE `tb_cetya`
 ADD PRIMARY KEY (`tb_cetya_id`), ADD KEY `fk_tb_cetya_tb_sentra_id` (`tb_cetya_sentra_id`);

--
-- Indexes for table `tb_city`
--
ALTER TABLE `tb_city`
 ADD PRIMARY KEY (`tb_city_id`), ADD KEY `fk_tb_city_tb_tb_province_id` (`tb_province_id`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
 ADD PRIMARY KEY (`tb_country_id`);

--
-- Indexes for table `tb_data_keumatan`
--
ALTER TABLE `tb_data_keumatan`
 ADD PRIMARY KEY (`tb_data_keumatan_id`);

--
-- Indexes for table `tb_data_umat`
--
ALTER TABLE `tb_data_umat`
 ADD PRIMARY KEY (`tb_data_umat_id`), ADD KEY `tb_data_umat_code` (`tb_data_umat_code`), ADD KEY `tb_data_umat_id` (`tb_data_umat_id`);

--
-- Indexes for table `tb_data_umat_pembagian`
--
ALTER TABLE `tb_data_umat_pembagian`
 ADD PRIMARY KEY (`tb_data_umat_pembagian_id`);

--
-- Indexes for table `tb_dharmasala`
--
ALTER TABLE `tb_dharmasala`
 ADD PRIMARY KEY (`tb_dharmasala_id`);

--
-- Indexes for table `tb_distrik`
--
ALTER TABLE `tb_distrik`
 ADD PRIMARY KEY (`tb_distrik_id`), ADD KEY `fk_tb_distrik_tb_tb_sentra_id` (`tb_sentra_id`);

--
-- Indexes for table `tb_family_relationship`
--
ALTER TABLE `tb_family_relationship`
 ADD PRIMARY KEY (`tb_family_relationship_id`), ADD KEY `fk_tb_family_relationship_personal_id` (`tb_family_relationship_personal_id`), ADD KEY `fk_tb_family_relationship_related_personal_id` (`tb_family_relationship_related_personal_id`), ADD KEY `fk_tb_family_relationship_relationship_id` (`tb_family_relationship_relationship_id`);

--
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
 ADD PRIMARY KEY (`tb_group_id`), ADD UNIQUE KEY `tb_group_id` (`tb_group_id`);

--
-- Indexes for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
 ADD PRIMARY KEY (`tb_log_activity_id`), ADD KEY `fk_tb_log_activity_tb_log_code_id` (`tb_log_activity_log_code_id`);

--
-- Indexes for table `tb_log_code`
--
ALTER TABLE `tb_log_code`
 ADD PRIMARY KEY (`tb_log_code_id`);

--
-- Indexes for table `tb_pembimbing`
--
ALTER TABLE `tb_pembimbing`
 ADD PRIMARY KEY (`tb_pembimbing_id`);

--
-- Indexes for table `tb_personal_identity`
--
ALTER TABLE `tb_personal_identity`
 ADD PRIMARY KEY (`tb_personal_identity_id`), ADD KEY `fk_tb_personal_identity_current_address` (`tb_personal_identity_current_address`), ADD KEY `fk_tb_personal_identity_ktp_address` (`tb_personal_identity_ktp_address`);

--
-- Indexes for table `tb_province`
--
ALTER TABLE `tb_province`
 ADD PRIMARY KEY (`tb_province_id`), ADD KEY `fk_tb_province_tb_tb_country_id` (`tb_country_id`);

--
-- Indexes for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
 ADD PRIMARY KEY (`tb_provinsi_id`);

--
-- Indexes for table `tb_relationship`
--
ALTER TABLE `tb_relationship`
 ADD PRIMARY KEY (`tb_relationship_id`), ADD KEY `fk_tb_relationship_tb_relationship_id` (`tb_relationship_relationship_id`);

--
-- Indexes for table `tb_ritual_activity`
--
ALTER TABLE `tb_ritual_activity`
 ADD PRIMARY KEY (`tb_ritual_activity_id`), ADD KEY `fk_tb_ritual_activity_tb_dharmasala_id` (`tb_ritual_activity_dharmasala_id`);

--
-- Indexes for table `tb_sentra`
--
ALTER TABLE `tb_sentra`
 ADD PRIMARY KEY (`tb_sentra_id`), ADD KEY `fk_tb_sentra_tb_province_id` (`tb_sentra_province_id`);

--
-- Indexes for table `tb_settings`
--
ALTER TABLE `tb_settings`
 ADD PRIMARY KEY (`tb_settings_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_user_province`
--
ALTER TABLE `tb_user_province`
 ADD PRIMARY KEY (`tb_user_province_id`);

--
-- Indexes for table `tb_user_role`
--
ALTER TABLE `tb_user_role`
 ADD PRIMARY KEY (`tb_user_role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_function`
--
ALTER TABLE `menu_function`
MODIFY `menu_function_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `structure_menu`
--
ALTER TABLE `structure_menu`
MODIFY `structure_menu_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
MODIFY `tb_address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tb_address_history`
--
ALTER TABLE `tb_address_history`
MODIFY `tb_address_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_alamat`
--
ALTER TABLE `tb_alamat`
MODIFY `tb_alamat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_bimbingan_detail`
--
ALTER TABLE `tb_bimbingan_detail`
MODIFY `tb_bimbingan_detail_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_bimbingan_header`
--
ALTER TABLE `tb_bimbingan_header`
MODIFY `tb_bimbingan_header_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_cetya`
--
ALTER TABLE `tb_cetya`
MODIFY `tb_cetya_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_city`
--
ALTER TABLE `tb_city`
MODIFY `tb_city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83290;
--
-- AUTO_INCREMENT for table `tb_country`
--
ALTER TABLE `tb_country`
MODIFY `tb_country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_data_keumatan`
--
ALTER TABLE `tb_data_keumatan`
MODIFY `tb_data_keumatan_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_data_umat`
--
ALTER TABLE `tb_data_umat`
MODIFY `tb_data_umat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_data_umat_pembagian`
--
ALTER TABLE `tb_data_umat_pembagian`
MODIFY `tb_data_umat_pembagian_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_dharmasala`
--
ALTER TABLE `tb_dharmasala`
MODIFY `tb_dharmasala_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_distrik`
--
ALTER TABLE `tb_distrik`
MODIFY `tb_distrik_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81884;
--
-- AUTO_INCREMENT for table `tb_family_relationship`
--
ALTER TABLE `tb_family_relationship`
MODIFY `tb_family_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
MODIFY `tb_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
MODIFY `tb_log_activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=814;
--
-- AUTO_INCREMENT for table `tb_log_code`
--
ALTER TABLE `tb_log_code`
MODIFY `tb_log_code_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pembimbing`
--
ALTER TABLE `tb_pembimbing`
MODIFY `tb_pembimbing_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_personal_identity`
--
ALTER TABLE `tb_personal_identity`
MODIFY `tb_personal_identity_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_province`
--
ALTER TABLE `tb_province`
MODIFY `tb_province_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81878;
--
-- AUTO_INCREMENT for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
MODIFY `tb_provinsi_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_relationship`
--
ALTER TABLE `tb_relationship`
MODIFY `tb_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tb_ritual_activity`
--
ALTER TABLE `tb_ritual_activity`
MODIFY `tb_ritual_activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sentra`
--
ALTER TABLE `tb_sentra`
MODIFY `tb_sentra_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_settings`
--
ALTER TABLE `tb_settings`
MODIFY `tb_settings_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tb_user_province`
--
ALTER TABLE `tb_user_province`
MODIFY `tb_user_province_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_user_role`
--
ALTER TABLE `tb_user_role`
MODIFY `tb_user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_address_history`
--
ALTER TABLE `tb_address_history`
ADD CONSTRAINT `fk_tb_address_history_tb_address_id` FOREIGN KEY (`tb_address_history_address_id`) REFERENCES `tb_address` (`tb_address_id`),
ADD CONSTRAINT `fk_tb_address_history_tb_approved_by` FOREIGN KEY (`tb_address_history_approved_by`) REFERENCES `tb_user_role` (`tb_user_role_id`),
ADD CONSTRAINT `fk_tb_address_history_tb_personal_id` FOREIGN KEY (`tb_address_history_personal_id`) REFERENCES `tb_personal_identity` (`tb_personal_identity_id`);

--
-- Constraints for table `tb_cetya`
--
ALTER TABLE `tb_cetya`
ADD CONSTRAINT `fk_tb_cetya_tb_sentra_id` FOREIGN KEY (`tb_cetya_sentra_id`) REFERENCES `tb_sentra` (`tb_sentra_id`);

--
-- Constraints for table `tb_city`
--
ALTER TABLE `tb_city`
ADD CONSTRAINT `fk_tb_city_tb_tb_province_id` FOREIGN KEY (`tb_province_id`) REFERENCES `tb_province` (`tb_province_id`);

--
-- Constraints for table `tb_distrik`
--
ALTER TABLE `tb_distrik`
ADD CONSTRAINT `fk_tb_distrik_tb_tb_sentra_id` FOREIGN KEY (`tb_sentra_id`) REFERENCES `tb_sentra` (`tb_sentra_id`);

--
-- Constraints for table `tb_family_relationship`
--
ALTER TABLE `tb_family_relationship`
ADD CONSTRAINT `fk_tb_family_relationship_personal_id` FOREIGN KEY (`tb_family_relationship_personal_id`) REFERENCES `tb_personal_identity` (`tb_personal_identity_id`),
ADD CONSTRAINT `fk_tb_family_relationship_related_personal_id` FOREIGN KEY (`tb_family_relationship_related_personal_id`) REFERENCES `tb_personal_identity` (`tb_personal_identity_id`),
ADD CONSTRAINT `fk_tb_family_relationship_relationship_id` FOREIGN KEY (`tb_family_relationship_relationship_id`) REFERENCES `tb_personal_identity` (`tb_personal_identity_id`);

--
-- Constraints for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
ADD CONSTRAINT `fk_tb_log_activity_tb_log_code_id` FOREIGN KEY (`tb_log_activity_log_code_id`) REFERENCES `tb_log_code` (`tb_log_code_id`);

--
-- Constraints for table `tb_personal_identity`
--
ALTER TABLE `tb_personal_identity`
ADD CONSTRAINT `fk_tb_personal_identity_current_address` FOREIGN KEY (`tb_personal_identity_current_address`) REFERENCES `tb_address` (`tb_address_id`),
ADD CONSTRAINT `fk_tb_personal_identity_ktp_address` FOREIGN KEY (`tb_personal_identity_ktp_address`) REFERENCES `tb_address` (`tb_address_id`);

--
-- Constraints for table `tb_province`
--
ALTER TABLE `tb_province`
ADD CONSTRAINT `fk_tb_province_tb_tb_country_id` FOREIGN KEY (`tb_country_id`) REFERENCES `tb_country` (`tb_country_id`);

--
-- Constraints for table `tb_relationship`
--
ALTER TABLE `tb_relationship`
ADD CONSTRAINT `fk_tb_relationship_tb_relationship_id` FOREIGN KEY (`tb_relationship_relationship_id`) REFERENCES `tb_family_relationship` (`tb_family_relationship_id`);

--
-- Constraints for table `tb_ritual_activity`
--
ALTER TABLE `tb_ritual_activity`
ADD CONSTRAINT `fk_tb_ritual_activity_tb_dharmasala_id` FOREIGN KEY (`tb_ritual_activity_dharmasala_id`) REFERENCES `tb_dharmasala` (`tb_dharmasala_id`);

--
-- Constraints for table `tb_sentra`
--
ALTER TABLE `tb_sentra`
ADD CONSTRAINT `fk_tb_sentra_tb_province_id` FOREIGN KEY (`tb_sentra_province_id`) REFERENCES `tb_province` (`tb_province_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
