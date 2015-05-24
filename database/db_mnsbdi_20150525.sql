-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2015 at 09:39 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_mnsbdi`
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
(40, 'List Data Umat', 'data_umat', 1, 2, 2, 0, 0, '', '', '', ''),
(41, 'Distrik', 'distrik', 1, 2, 10, 0, 3, '', '', '', ''),
(42, 'Cetak Data Umat Dengan Alamat Sama', 'cetak_umat_almt', 1, 2, 2, 0, 0, '', '', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structure_menu`
--

INSERT INTO `structure_menu` (`structure_menu_id`, `menu_function_id`, `tb_group_id`, `structure_menu_action`, `status`, `structure_menu_order`) VALUES
(1, 1, 1, '2,2,2,1', 1, 0),
(2, 2, 1, '2,2,2,1', 1, 0),
(4, 3, 1, '1,2,2,1', 2, 0),
(6, 21, 1, '1,2,2,1', 2, 0),
(7, 20, 1, '1,2,2,1', 2, 0),
(8, 19, 1, '2,2,2,1', 1, 0),
(21, 16, 1, '2,2,2,1', 1, 0),
(29, 6, 1, '2,2,2,1', 1, 0),
(30, 10, 1, '2,2,2,1', 1, 0),
(31, 31, 1, '2,2,2,1', 1, 1),
(32, 12, 1, '1,1,1,1', 2, 0),
(33, 18, 1, '2,2,2,1', 1, 5),
(34, 33, 1, '2,2,2,1', 1, 4),
(35, 32, 1, '1,1,1,1', 2, 0),
(36, 34, 1, '2,2,2,1', 1, 2),
(37, 35, 1, '2,2,2,1', 1, 0),
(38, 36, 1, '1,1,1,1', 2, 0),
(39, 1, 6, '2,2,2,1', 1, 0),
(40, 2, 6, '2,2,2,1', 1, 1),
(41, 3, 6, '1,1,1,1', 2, 0),
(42, 6, 6, '2,2,2,1', 1, 4),
(43, 10, 6, '2,2,2,1', 1, 0),
(44, 20, 6, '1,2,2,1', 2, 0),
(45, 34, 6, '2,2,2,1', 1, 2),
(46, 33, 6, '2,2,2,1', 1, 4),
(47, 18, 6, '2,2,2,1', 1, 5),
(48, 35, 6, '2,1,2,1', 1, 0),
(49, 17, 6, '2,2,2,1', 1, 0),
(50, 16, 6, '2,2,2,2', 1, 0),
(52, 20, 6, '2,2,2,2', 1, 0),
(53, 21, 6, '2,2,2,2', 1, 0),
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
(73, 39, 1, '2,2,2,1', 1, 0),
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
(118, 40, 1, '2,2,2,1', 1, 0),
(119, 10, 7, '2,1,1,1', 1, 0),
(120, 12, 7, '2,1,1,1', 1, 0),
(121, 18, 7, '2,1,1,1', 1, 5),
(122, 31, 7, '2,1,1,1', 1, 1),
(123, 33, 7, '2,1,1,1', 1, 4),
(124, 34, 7, '2,1,1,1', 1, 2),
(125, 2, 7, '2,1,1,1', 1, 0),
(126, 6, 7, '2,1,1,1', 1, 0),
(127, 40, 7, '2,1,1,1', 1, 0),
(128, 41, 7, '2,1,1,1', 1, 3),
(129, 39, 7, '2,1,1,1', 1, 0),
(130, 19, 7, '2,1,1,1', 1, 0),
(131, 41, 1, '2,2,2,1', 1, 3),
(132, 42, 1, '2,1,1,1', 1, 0),
(133, 39, 6, '2,1,1,1', 1, 0),
(134, 42, 6, '2,1,1,1', 1, 2),
(135, 40, 6, '2,1,2,2', 1, 3),
(136, 41, 6, '2,1,1,1', 1, 3),
(137, 19, 6, '2,1,1,1', 1, 0),
(138, 19, 4, '2,1,1,1', 1, 0),
(139, 40, 4, '2,1,1,1', 1, 0),
(140, 42, 4, '2,1,1,1', 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alamat`
--

INSERT INTO `tb_alamat` (`tb_alamat_id`, `tb_alamat_tinggal`, `tb_alamat_telp`, `tb_alamat_perubahan`, `tb_alamat_order`, `tb_data_umat_id`) VALUES
(2, 'Jln tes dulu, dulu', '021-912380123', NULL, 1, 1),
(3, '', '', NULL, 2, 1),
(4, '', '', NULL, 3, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cetya`
--

INSERT INTO `tb_cetya` (`tb_cetya_id`, `tb_cetya_name`, `tb_cetya_code`, `tb_cetya_remarks`, `tb_cetya_sentra_id`, `tb_distrik_id`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(6, 'Balas Budi', 'Balas Budi', 'Balas Budi', 4, 81879, 0, 1, '0000-00-00', '2015-05-13'),
(19, 'Mandiri', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(20, 'Makmur', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(21, 'Sehati', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(22, 'Sayang', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(23, 'Persatuan', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(24, 'Perbaungan', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(25, 'Banda Aceh', NULL, NULL, NULL, 81888, 1, 1, '2015-05-13', '2015-05-13'),
(26, '-', NULL, NULL, NULL, 81889, 1, 0, '2015-05-13', '0000-00-00'),
(27, 'Cinta', NULL, NULL, NULL, 81891, 1, 1, '2015-05-13', '2015-05-13'),
(28, 'Impian', NULL, NULL, NULL, 81891, 1, 1, '2015-05-13', '2015-05-13'),
(29, 'Siantar', NULL, NULL, NULL, 81892, 1, 1, '2015-05-13', '2015-05-13'),
(30, 'Tebing Tinggi', NULL, NULL, NULL, 81892, 1, 1, '2015-05-13', '2015-05-13'),
(31, 'Tanjung Balai', NULL, NULL, NULL, 81893, 1, 1, '2015-05-13', '2015-05-13'),
(32, 'Rantau Prapat', NULL, NULL, NULL, 81893, 1, 1, '2015-05-13', '2015-05-13'),
(33, 'Kisaran', NULL, NULL, NULL, 81893, 1, 1, '2015-05-13', '2015-05-13'),
(34, 'Ceria', NULL, NULL, NULL, 81894, 1, 1, '2015-05-13', '2015-05-13'),
(35, 'Kosenrufu', NULL, NULL, NULL, 81894, 1, 1, '2015-05-13', '2015-05-13'),
(36, 'Ekayana', NULL, NULL, NULL, 81894, 1, 1, '2015-05-13', '2015-05-13'),
(37, 'Bangka', NULL, NULL, NULL, 81894, 1, 1, '2015-05-13', '2015-05-13'),
(38, 'Bandar Lampung', NULL, NULL, NULL, 81895, 1, 1, '2015-05-13', '2015-05-13'),
(39, 'Tulang Bawang', NULL, NULL, NULL, 81895, 1, 1, '2015-05-13', '2015-05-13'),
(40, 'Sinar Menangan', NULL, NULL, NULL, 81895, 1, 1, '2015-05-13', '2015-05-13'),
(41, '-', NULL, NULL, NULL, 81896, 1, 0, '2015-05-13', '0000-00-00'),
(42, '-', NULL, NULL, NULL, 81897, 1, 0, '2015-05-13', '0000-00-00'),
(43, 'Wangan', NULL, NULL, NULL, 81898, 1, 0, '2015-05-13', '0000-00-00'),
(44, 'Bakalan', NULL, NULL, NULL, 81898, 1, 0, '2015-05-13', '0000-00-00'),
(45, 'Boyolali', NULL, NULL, NULL, 81898, 1, 0, '2015-05-13', '0000-00-00'),
(46, 'Buling', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(47, 'Jamuran', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(48, 'Pesido', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(49, 'Jendi', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(50, 'Ngerapah', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(51, 'Badran', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(52, 'Bale Panjang', NULL, NULL, NULL, 81899, 1, 0, '2015-05-13', '0000-00-00'),
(53, 'Kedung Piring', NULL, NULL, NULL, 81900, 1, 1, '2015-05-13', '2015-05-13'),
(54, 'Mondokan', NULL, NULL, NULL, 81900, 1, 1, '2015-05-13', '2015-05-13'),
(55, 'Pengkok', NULL, NULL, NULL, 81900, 1, 0, '2015-05-13', '0000-00-00'),
(56, 'Sumber Lawang', NULL, NULL, NULL, 81900, 1, 0, '2015-05-13', '0000-00-00'),
(57, 'Tangen', NULL, NULL, NULL, 81900, 1, 0, '2015-05-13', '0000-00-00'),
(58, 'Ngawen', NULL, NULL, NULL, 81901, 1, 0, '2015-05-13', '0000-00-00'),
(59, 'Kemuning', NULL, NULL, NULL, 81901, 1, 0, '2015-05-13', '0000-00-00'),
(60, 'Karangsari', NULL, NULL, NULL, 81901, 1, 0, '2015-05-13', '0000-00-00'),
(61, 'Jumapolo', NULL, NULL, NULL, 81901, 1, 0, '2015-05-13', '0000-00-00'),
(62, 'Tegal', NULL, NULL, NULL, 81902, 1, 0, '2015-05-13', '0000-00-00'),
(63, 'Klampok', NULL, NULL, NULL, 81902, 1, 0, '2015-05-13', '0000-00-00'),
(64, 'Cilacap', NULL, NULL, NULL, 81902, 1, 0, '2015-05-13', '0000-00-00'),
(65, 'Wonosobo', NULL, NULL, NULL, 81902, 1, 0, '2015-05-13', '0000-00-00'),
(66, 'Banjarnegara', NULL, NULL, NULL, 81902, 1, 0, '2015-05-13', '0000-00-00'),
(67, 'Pekalongan', NULL, NULL, NULL, 81902, 1, 0, '2015-05-13', '0000-00-00'),
(68, 'Krandegan', NULL, NULL, NULL, 81903, 1, 0, '2015-05-13', '0000-00-00'),
(69, 'Purwodadi', NULL, NULL, NULL, 81903, 1, 0, '2015-05-13', '0000-00-00'),
(70, 'Timokerep', NULL, NULL, NULL, 81903, 1, 0, '2015-05-13', '0000-00-00'),
(71, '-', NULL, NULL, NULL, 81904, 1, 0, '2015-05-13', '0000-00-00'),
(72, '-', NULL, NULL, NULL, 81905, 1, 0, '2015-05-13', '0000-00-00'),
(73, '-', NULL, NULL, NULL, 81906, 1, 0, '2015-05-13', '0000-00-00'),
(74, 'Kudus', NULL, NULL, NULL, 81907, 1, 0, '2015-05-13', '0000-00-00'),
(76, 'Ungaran', NULL, NULL, NULL, 81908, 1, 0, '2015-05-18', '0000-00-00'),
(77, 'Denpasar', NULL, NULL, NULL, 81909, 9, 0, '2015-05-19', '0000-00-00');

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
) ENGINE=InnoDB AUTO_INCREMENT=41832 DEFAULT CHARSET=latin1;

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
(24994, 'BANGKA', NULL, NULL, NULL, 24993, NULL, NULL),
(25072, 'BELITUNG', NULL, NULL, NULL, 24993, NULL, NULL),
(25120, 'BANGKA SELATAN', NULL, NULL, NULL, 24993, NULL, NULL),
(25181, 'BANGKA TENGAH', NULL, NULL, NULL, 24993, NULL, NULL),
(25245, 'BANGKA BARAT', NULL, NULL, NULL, 24993, NULL, NULL),
(25316, 'BELITUNG TIMUR', NULL, NULL, NULL, 24993, NULL, NULL),
(25363, 'KOTA PANGKALPINANG', NULL, NULL, NULL, 24993, NULL, NULL),
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
(41831, 'KOTA TEGAL', NULL, NULL, NULL, 32676, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_keumatan`
--

INSERT INTO `tb_data_keumatan` (`tb_data_keumatan_id`, `tb_data_keumatan_marriage_status`, `tb_data_keumatan_nichiren_upacara`, `tb_data_keumatan_nichiren_tahun`, `tb_data_keumatan_nichiren_tempat`, `tb_data_keumatan_nichiren_pemimpin`, `tb_data_keumatan_gojukai`, `tb_data_keumatan_gohonzon_okatagi`, `tb_data_keumatan_gohonzon_omamori`, `tb_data_keumatan_gohonzon_tokubetsu`, `tb_data_keumatan_kankai`, `tb_data_keumatan_gohifu`, `tb_data_keumatan_gohifu_tahun`, `tb_data_keumatan_gohifu_penyakit`, `tb_data_umat_id`) VALUES
(8, 2, 0, 0, '[object Object]', '[object Object]', 2009, 0, 0, 0, 0, 2, 0, '[object Object]', 8),
(9, 2, 0, 0, '[object Object]', '[object Object]', 2008, 0, 0, 0, 0, 2, 0, '[object Object]', 9),
(11, 2, 0, 0, '[object Object]', '[object Object]', 1990, 0, 0, 0, 0, 2, 0, '[object Object]', 11),
(13, 2, 0, 0, '[object Object]', '[object Object]', 2000, 0, 0, 0, 0, 2, 0, '[object Object]', 13),
(14, 1, 1, 2014, 'Kuil Hosei-Ji', 'Y.A Sakabe', 1991, 2005, 0, 0, 0, 2, 0, '[object Object]', 14),
(15, 1, 1, 2014, 'Kuil Hosei-Ji', 'Y.A Sakabe', 2013, 0, 0, 0, 0, 2, 0, '[object Object]', 15),
(16, 3, 2, 0, '-', '-', 1991, 1991, 2006, 0, 0, 2, 0, '[object Object]', 16),
(17, 2, 0, 0, '[object Object]', '[object Object]', 1982, 0, 0, 0, 0, 2, 0, '[object Object]', 17),
(18, 2, 0, 0, '[object Object]', '[object Object]', 1981, 0, 0, 0, 0, 2, 0, '[object Object]', 18),
(19, 2, 0, 0, '[object Object]', '[object Object]', 1996, 0, 0, 0, 0, 2, 0, '[object Object]', 19),
(25, 2, 0, 0, '[object Object]', '[object Object]', 2009, 0, 0, 0, 0, 2, 0, '[object Object]', 25);

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
  `tb_data_umat_no_tlp` varchar(255) DEFAULT NULL,
  `created_by` varchar(225) NOT NULL,
  `created_date` date NOT NULL,
  `created_host` varchar(225) NOT NULL,
  `update_by` varchar(225) NOT NULL,
  `update_date` date NOT NULL,
  `update_host` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_umat`
--

INSERT INTO `tb_data_umat` (`tb_data_umat_id`, `tb_data_umat_code`, `tb_data_umat_nama_ktp`, `tb_data_umat_nama_panggilan`, `tb_data_umat_tempat`, `tb_data_umat_tgl_lahir`, `tb_data_umat_kewarganegaraan`, `tb_data_umat_pekerjaan`, `tb_data_umat_gender`, `tb_data_umat_no_id`, `tb_data_umat_alamat_ktp`, `tb_data_umat_no_hp`, `tb_data_umat_email`, `tb_data_umat_keaktifan`, `tb_data_umat_dana_goku`, `tb_data_umat_tanggung_jawab`, `tb_data_umat_hub1`, `tb_data_umat_hub2`, `tb_data_umat_alamat_tinggal`, `tb_data_umat_no_tlp`, `created_by`, `created_date`, `created_host`, `update_by`, `update_date`, `update_host`) VALUES
(8, '00001', 'Adi Damar Prasetyo', 'Adi', 'Klaten', '1971-04-08', 1, '-', 1, '-', 'Banarjo, RT 05 RW 07, Mranggen, Jatinom Klaten', '085714497733', 'sfan', 1, 1, '[object Object]', 18, 19, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '[object Object]-[object Object]', 'superadmin', '2015-05-05', '127.0.0.1', 'superadmin', '2015-05-24', '::1'),
(9, '00002', 'Andi Junaidi', 'Andi', 'Lampung Timur', '2030-11-01', 1, '-', 1, '000000000000000', 'Jl. Arteri Supadio RT 01 RW 01 Teluk Kapuas, Sungai Raya', ' 6285293791232', 'andi7naidi@gmail.com ', 1, 1, '-', 20, 21, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '021-83792515', '', '0000-00-00', '', 'superadmin', '2015-05-19', '139.0.96.219'),
(11, '00001', 'Kresna Kurnia Wijaya', 'Kresna', 'Sidoarjo', '0000-00-00', 1, '-', 1, '00000000000000000', 'Jl. Imam Bonjol gang 12 No.11 Denpasar Bali', '085817102725', '-', 1, 1, '-', 22, 23, 'Jl. Padang No.30 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '021-00000000', 'superadmin', '2015-05-16', '139.0.96.219', 'superadmin', '2015-05-19', '139.0.96.219'),
(13, '00001', 'Ernawati', 'Erna', 'Wonogiri', '0000-00-00', 1, '-', 2, '0000000000000000000', 'Buling RT 12/ RW 05 Bubakan Kec.Girimarto Wonogiri', '085729888773', 'ernawatiBDI97@gmail.com ', 1, 1, '-', 24, 25, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, Jakarta Selatan', '021-00000000', 'superadmin', '2015-05-16', '139.0.96.219', 'superadmin', '2015-05-18', '118.97.82.218'),
(14, '00001', 'Dion Satria', 'Dion', 'Purwokerto', '0000-00-00', 1, 'Wiraswasta', 1, '0000000000000000', 'Jalan Taman Osaka No.100 Lippo Village, Tangerang 15810.', '08159803707', 'dion@x-illusion.net', 1, 1, '-', 26, 27, 'Jalan Taman Osaka No.100 Lippo Village, Tangerang 15810.', '021-35958800', 'superadmin', '2015-05-17', '139.0.96.219', '', '0000-00-00', ''),
(15, '00001', 'Melita Suardian', 'Melita', 'Purwokerto', '0000-00-00', 1, 'Wiraswasta', 2, '00000000000000', 'Jl. Kombas 108', '081598030000000', '[object Object]', 1, 1, '[object Object]', 28, 29, 'Jalan Taman Osaka No.100 Lippo Village, Tangerang15810.', '[object Object]-[object Object]', 'superadmin', '2015-05-17', '139.0.96.219', 'superadmin', '2015-05-19', '139.0.96.219'),
(16, '00001', 'Sari Rusdi', 'Sari', 'Purwokerto', '0000-00-00', 1, 'Wiraswasta', 2, '00000000000000', 'Jl. Prof. M. Yamin No.1 Purwokerto, Jawa Tengah.', '0816690000', 'sari@x-illusion.net', 1, 1, '-', 30, 31, 'Jl. Prof. M. Yamin No.1 Purwokerto, Jawa Tengah.', '0281-631528', 'superadmin', '2015-05-17', '139.0.96.219', 'superadmin', '2015-05-19', '139.0.96.219'),
(17, '00003', 'Ari Ertanto', 'Arie', 'Jakarta', '0000-00-00', 1, 'Karyawan', 1, '00000000', 'kp kecil 01/08 sukabumi selatan', '62831137801', 'ari.ertanto@mnsbdi.org', 1, 1, 'umat', 32, 33, 'Jalan Padang no 30', '021-83792515', 'superadmin', '2015-05-19', '114.199.125.22', '', '0000-00-00', ''),
(18, '00001', 'Lo Lie Cian', 'Cyan', 'Medan', '0000-00-00', 1, 'Karyawan Swasta', 2, '1271155008760001', 'Jl Badur no. 10A, Medan Sumatra Utara', '628571111620000', '[object Object]', 1, 1, '[object Object]', 34, 35, 'Jl. Padang no. 30, Jakarta Selatan', '[object Object]-[object Object]', 'superadmin', '2015-05-19', '114.199.125.22', 'superadmin', '2015-05-19', '139.0.96.219'),
(19, '00002', 'Shanti Dyana Paramita', 'Shanti', 'Ngawi', '0000-00-00', 1, '-', 2, '000000000000000000', '-', '085727010552', 'shantidyana@gmail.com', 1, 1, '-', 36, 37, 'Jl. Padang No.27 RT 05 RW 08, Pasarmanggis, Setiabudi, JakartaSelatan', '021-0000000000', 'superadmin', '2015-05-19', '139.0.96.219', '', '0000-00-00', ''),
(25, '00001', 'Citata', 'cita', 'jakarta', '2015-05-24', 1, 'tes', 1, 'tes', 'tes', '000000000000', '-', 2, 2, '[object Object]', 52, 53, '-', '[object Object]-[object Object]', 'sekda-dki', '2015-05-24', '::1', '', '0000-00-00', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_umat_pembagian`
--

INSERT INTO `tb_data_umat_pembagian` (`tb_data_umat_pembagian_id`, `tb_province_id`, `tb_sentra_id`, `tb_distrik_id`, `tb_cetya_id`, `tb_dharmasala_id`, `tb_data_umat_id`) VALUES
(8, 25823, 4, 81879, 6, 3, 8),
(9, 25823, 4, 81879, 6, 3, 9),
(11, 25823, 4, 81879, 6, 3, 11),
(13, 25823, 4, 81879, 6, 3, 13),
(14, 25823, 0, 0, 0, 0, 14),
(15, 25823, 0, 0, 0, 0, 15),
(16, 32676, 37, 81902, 0, 0, 16),
(17, 25823, 4, 81879, 6, 3, 17),
(18, 25823, 4, 81879, 6, 3, 18),
(19, 25823, 4, 81879, 6, 0, 19),
(25, 25823, 4, 81879, 6, 3, 25);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dharmasala`
--

INSERT INTO `tb_dharmasala` (`tb_dharmasala_id`, `tb_dharmasala_name`, `tb_dharmasala_code`, `tb_dharmasala_remarks`, `tb_dharmasala_cetya_id`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(1, 'tes', NULL, 'sdf', 3, 0, 0, '0000-00-00', '0000-00-00'),
(3, 'Barisan Kosenrufu', 'Barisan Kosenrufu', 'Barisan Kosenrufu', 6, 0, 0, '0000-00-00', '0000-00-00'),
(4, 'Barisan Kosenrufu2', 'Barisan Kosenrufu2', 'Barisan Kosenrufu2', 6, 0, 0, '0000-00-00', '0000-00-00'),
(5, 'tes2', NULL, NULL, 3, 0, 0, '0000-00-00', '0000-00-00');

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
) ENGINE=InnoDB AUTO_INCREMENT=81910 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_distrik`
--

INSERT INTO `tb_distrik` (`tb_distrik_id`, `tb_distrik_name`, `tb_distrik_code`, `tb_distrik_count`, `tb_distrik_approved_status`, `tb_sentra_id`, `tb_distrik_remarks`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(81879, '-', '-', NULL, 1, 4, '1', 0, 1, '0000-00-00', '2015-05-11'),
(81887, '-', NULL, NULL, NULL, 20, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81888, '-', NULL, NULL, NULL, 3, NULL, 1, 1, '2015-05-13', '2015-05-13'),
(81889, 'Aceh', NULL, NULL, NULL, 3, NULL, 1, 1, '2015-05-13', '2015-05-13'),
(81891, '-', NULL, NULL, NULL, 21, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81892, '-', NULL, NULL, NULL, 22, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81893, '-', NULL, NULL, NULL, 23, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81894, 'Palembang', NULL, NULL, NULL, 31, NULL, 1, 1, '2015-05-13', '2015-05-13'),
(81895, '-', NULL, NULL, NULL, 32, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81896, 'Cirebon', NULL, NULL, NULL, 33, NULL, 1, 1, '2015-05-13', '2015-05-13'),
(81897, 'Bandung', NULL, NULL, NULL, 34, NULL, 1, 1, '2015-05-13', '2015-05-13'),
(81898, 'Solo', NULL, NULL, NULL, 35, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81899, 'Wonogiri', NULL, NULL, NULL, 35, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81900, 'Sragen', NULL, NULL, NULL, 36, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81901, 'Karanganyar', NULL, NULL, NULL, 36, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81902, 'Purwokerto', NULL, NULL, NULL, 37, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81903, '-', NULL, NULL, NULL, 38, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81904, 'Yogyakarta', NULL, NULL, NULL, 39, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81905, 'Purworejo', NULL, NULL, NULL, 39, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81906, 'Gombong', NULL, NULL, NULL, 39, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81907, '-', NULL, NULL, NULL, 40, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81908, 'Semarang', NULL, NULL, NULL, 40, NULL, 1, 0, '2015-05-13', '0000-00-00'),
(81909, '-', NULL, NULL, NULL, 41, NULL, 9, 0, '2015-05-19', '0000-00-00');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_family_relationship`
--

INSERT INTO `tb_family_relationship` (`tb_family_relationship_id`, `tb_family_relationship_personal_id`, `tb_family_relationship_related_personal_id`, `tb_family_relationship_relationship_id`, `tb_family_relationship_remarks`, `tb_data_umat_id`, `tb_family_relationship_type`) VALUES
(18, NULL, NULL, NULL, NULL, 8, 2),
(19, NULL, NULL, NULL, NULL, 0, 2),
(20, NULL, NULL, NULL, NULL, 9, 2),
(21, NULL, NULL, NULL, NULL, 8, 2),
(23, NULL, NULL, NULL, NULL, 0, 2),
(24, NULL, NULL, NULL, NULL, 11, 1),
(25, NULL, NULL, NULL, NULL, 11, 2),
(26, NULL, NULL, NULL, NULL, 12, 1),
(27, NULL, NULL, NULL, NULL, 12, 2),
(28, NULL, NULL, NULL, NULL, 13, 1),
(29, NULL, NULL, NULL, NULL, 13, 2),
(30, NULL, NULL, NULL, NULL, 14, 1),
(31, NULL, NULL, NULL, NULL, 14, 2),
(32, NULL, NULL, NULL, NULL, 15, 1),
(33, NULL, NULL, NULL, NULL, 15, 2),
(34, NULL, NULL, NULL, NULL, 16, 1),
(35, NULL, NULL, NULL, NULL, 16, 2),
(36, NULL, NULL, NULL, NULL, 17, 1),
(37, NULL, NULL, NULL, NULL, 17, 2),
(38, NULL, NULL, NULL, NULL, 18, 1),
(39, NULL, NULL, NULL, NULL, 18, 2),
(40, NULL, NULL, NULL, NULL, 19, 1),
(41, NULL, NULL, NULL, NULL, 19, 2),
(42, NULL, NULL, NULL, NULL, 20, 1),
(43, NULL, NULL, NULL, NULL, 20, 2),
(44, NULL, NULL, NULL, NULL, 21, 1),
(45, NULL, NULL, NULL, NULL, 21, 2),
(46, NULL, NULL, NULL, NULL, 22, 1),
(47, NULL, NULL, NULL, NULL, 22, 2),
(52, NULL, NULL, NULL, NULL, 0, 1),
(53, NULL, NULL, NULL, NULL, 0, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`tb_group_id`, `tb_group_name`, `tb_group_code`, `status`, `company_code`) VALUES
(1, 'admin', 'admin', 1, '1'),
(4, 'sekda', 'sekda', 1, '1'),
(5, 'admin', 'admin', 1, '3'),
(6, 'super admin', 'super admin', 1, '0000000000000001'),
(7, 'user1', 'user1', 1, '0000000000000001');

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
) ENGINE=InnoDB AUTO_INCREMENT=1565 DEFAULT CHARSET=latin1;

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
(695, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-13 08:05:37', NULL, NULL, NULL),
(696, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-13 08:05:18', NULL, NULL, NULL),
(697, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 01:05:20', NULL, NULL, NULL),
(698, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 01:05:21', NULL, NULL, NULL),
(699, NULL, 'Distrik = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:07', NULL, NULL, NULL),
(700, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 02:05:12', NULL, NULL, NULL),
(701, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 02:05:15', NULL, NULL, NULL),
(702, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 02:05:17', NULL, NULL, NULL),
(703, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 02:05:36', NULL, NULL, NULL),
(704, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:22', NULL, NULL, NULL),
(705, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:24', NULL, NULL, NULL),
(706, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:05', NULL, NULL, NULL),
(707, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:05', NULL, NULL, NULL),
(708, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:05', NULL, NULL, NULL),
(709, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:05', NULL, NULL, NULL),
(710, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 02:05:16', NULL, NULL, NULL),
(711, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:47', NULL, NULL, NULL),
(712, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:47', NULL, NULL, NULL),
(713, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:47', NULL, NULL, NULL),
(714, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:56', NULL, NULL, NULL),
(715, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:20', NULL, NULL, NULL),
(716, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 02:05:12', NULL, NULL, NULL),
(717, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 02:05:21', NULL, NULL, NULL),
(718, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 02:05:23', NULL, NULL, NULL),
(719, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 02:05:06', NULL, NULL, NULL),
(720, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 02:05:06', NULL, NULL, NULL),
(721, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 02:05:10', NULL, NULL, NULL),
(722, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 02:05:15', NULL, NULL, NULL),
(723, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:41', NULL, NULL, NULL),
(724, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 02:05:41', NULL, NULL, NULL),
(725, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:16', NULL, NULL, NULL),
(726, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(727, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 02:05:11', NULL, NULL, NULL),
(728, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 02:05:11', NULL, NULL, NULL),
(729, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 02:05:03', NULL, NULL, NULL),
(730, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:40', NULL, NULL, NULL),
(731, NULL, 'Distrik = delitem', 'admin', '139.0.96.219', '2015-05-13 02:05:21', NULL, NULL, NULL),
(732, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:03', NULL, NULL, NULL),
(733, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:11', NULL, NULL, NULL),
(734, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(735, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(736, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(737, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(738, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(739, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(740, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:18', NULL, NULL, NULL),
(741, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:33', NULL, NULL, NULL),
(742, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:37', NULL, NULL, NULL),
(743, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 02:05:13', NULL, NULL, NULL),
(744, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:51', NULL, NULL, NULL),
(745, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 02:05:51', NULL, NULL, NULL),
(746, NULL, 'Cetya = delitem', 'admin', '139.0.96.219', '2015-05-13 03:05:54', NULL, NULL, NULL),
(747, NULL, 'Distrik = delitem', 'admin', '139.0.96.219', '2015-05-13 03:05:01', NULL, NULL, NULL),
(748, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 03:05:29', NULL, NULL, NULL),
(749, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 03:05:07', NULL, NULL, NULL),
(750, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 03:05:59', NULL, NULL, NULL),
(751, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 03:05:59', NULL, NULL, NULL),
(752, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 03:05:51', NULL, NULL, NULL),
(753, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 03:05:46', NULL, NULL, NULL),
(754, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 03:05:46', NULL, NULL, NULL),
(755, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 03:05:46', NULL, NULL, NULL),
(756, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:39', NULL, NULL, NULL),
(757, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:41', NULL, NULL, NULL),
(758, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:00', NULL, NULL, NULL),
(759, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:02', NULL, NULL, NULL),
(760, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:05', NULL, NULL, NULL),
(761, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:05', NULL, NULL, NULL),
(762, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:08', NULL, NULL, NULL),
(763, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:10', NULL, NULL, NULL),
(764, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:26', NULL, NULL, NULL),
(765, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:26', NULL, NULL, NULL),
(766, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:29', NULL, NULL, NULL),
(767, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:31', NULL, NULL, NULL),
(768, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:39', NULL, NULL, NULL),
(769, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:39', NULL, NULL, NULL),
(770, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:46', NULL, NULL, NULL),
(771, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:47', NULL, NULL, NULL),
(772, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:55', NULL, NULL, NULL),
(773, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:55', NULL, NULL, NULL),
(774, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:01', NULL, NULL, NULL),
(775, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:02', NULL, NULL, NULL),
(776, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:50', NULL, NULL, NULL),
(777, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:50', NULL, NULL, NULL),
(778, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:57', NULL, NULL, NULL),
(779, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 03:05:58', NULL, NULL, NULL),
(780, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:06', NULL, NULL, NULL),
(781, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 03:05:06', NULL, NULL, NULL),
(782, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 03:05:14', NULL, NULL, NULL),
(783, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 03:05:24', NULL, NULL, NULL),
(784, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:10', NULL, NULL, NULL),
(785, NULL, 'Daerah = save', 'admin', '139.0.96.219', '2015-05-13 04:05:32', NULL, NULL, NULL),
(786, NULL, 'Daerah = save', 'admin', '139.0.96.219', '2015-05-13 04:05:32', NULL, NULL, NULL),
(787, NULL, 'Daerah = save', 'admin', '139.0.96.219', '2015-05-13 04:05:07', NULL, NULL, NULL),
(788, NULL, 'Daerah = save', 'admin', '139.0.96.219', '2015-05-13 04:05:07', NULL, NULL, NULL),
(789, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:23', NULL, NULL, NULL),
(790, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:29', NULL, NULL, NULL),
(791, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:40', NULL, NULL, NULL),
(792, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:11', NULL, NULL, NULL),
(793, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:07', NULL, NULL, NULL),
(794, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:22', NULL, NULL, NULL),
(795, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:36', NULL, NULL, NULL),
(796, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:39', NULL, NULL, NULL),
(797, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:17', NULL, NULL, NULL),
(798, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:48', NULL, NULL, NULL),
(799, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:49', NULL, NULL, NULL),
(800, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:42', NULL, NULL, NULL),
(801, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:42', NULL, NULL, NULL),
(802, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:02', NULL, NULL, NULL),
(803, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 04:05:50', NULL, NULL, NULL),
(804, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:18', NULL, NULL, NULL),
(805, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:19', NULL, NULL, NULL),
(806, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:26', NULL, NULL, NULL),
(807, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:26', NULL, NULL, NULL),
(808, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:04', NULL, NULL, NULL),
(809, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:05', NULL, NULL, NULL),
(810, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:09', NULL, NULL, NULL),
(811, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:09', NULL, NULL, NULL),
(812, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:20', NULL, NULL, NULL),
(813, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:22', NULL, NULL, NULL),
(814, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:32', NULL, NULL, NULL),
(815, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:32', NULL, NULL, NULL),
(816, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:41', NULL, NULL, NULL),
(817, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 04:05:33', NULL, NULL, NULL),
(818, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:40', NULL, NULL, NULL),
(819, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:41', NULL, NULL, NULL),
(820, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:43', NULL, NULL, NULL),
(821, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:44', NULL, NULL, NULL),
(822, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:50', NULL, NULL, NULL),
(823, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:27', NULL, NULL, NULL),
(824, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:33', NULL, NULL, NULL),
(825, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:56', NULL, NULL, NULL),
(826, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:52', NULL, NULL, NULL),
(827, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 04:05:12', NULL, NULL, NULL),
(828, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 04:05:13', NULL, NULL, NULL),
(829, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:17', NULL, NULL, NULL),
(830, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 04:05:17', NULL, NULL, NULL),
(831, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:19', NULL, NULL, NULL),
(832, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:53', NULL, NULL, NULL),
(833, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:52', NULL, NULL, NULL),
(834, NULL, 'Daerah = deleteAll', 'admin', '139.0.96.219', '2015-05-13 04:05:01', NULL, NULL, NULL),
(835, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 05:05:16', NULL, NULL, NULL),
(836, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 05:05:26', NULL, NULL, NULL),
(837, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-13 05:05:11', NULL, NULL, NULL),
(838, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-13 05:05:18', NULL, NULL, NULL),
(839, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 05:05:03', NULL, NULL, NULL),
(840, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-13 05:05:13', NULL, NULL, NULL),
(841, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-13 05:05:21', NULL, NULL, NULL),
(842, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-13 05:05:25', NULL, NULL, NULL),
(843, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-13 05:05:01', NULL, NULL, NULL),
(844, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-13 05:05:07', NULL, NULL, NULL),
(845, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 05:05:44', NULL, NULL, NULL),
(846, NULL, 'Hak Akses Akun = view', 'superadmin', '36.73.114.89', '2015-05-13 05:05:06', NULL, NULL, NULL),
(847, NULL, 'Hak Akses Akun = edit', 'superadmin', '36.73.114.89', '2015-05-13 05:05:07', NULL, NULL, NULL),
(848, NULL, 'Hak Akses Akun = view', 'superadmin', '36.73.114.89', '2015-05-13 06:05:02', NULL, NULL, NULL),
(849, NULL, 'Hak Akses Akun = edit', 'superadmin', '36.73.114.89', '2015-05-13 06:05:05', NULL, NULL, NULL),
(850, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:00', NULL, NULL, NULL),
(851, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:24', NULL, NULL, NULL),
(852, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:37', NULL, NULL, NULL),
(853, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:43', NULL, NULL, NULL),
(854, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:14', NULL, NULL, NULL),
(855, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:29', NULL, NULL, NULL),
(856, NULL, 'Daerah = edit', 'superadmin', '139.0.96.219', '2015-05-13 06:05:30', NULL, NULL, NULL),
(857, NULL, 'Daerah = update', 'superadmin', '139.0.96.219', '2015-05-13 06:05:40', NULL, NULL, NULL),
(858, NULL, 'Daerah = update', 'superadmin', '139.0.96.219', '2015-05-13 06:05:40', NULL, NULL, NULL),
(859, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:43', NULL, NULL, NULL),
(860, NULL, 'Daerah = edit', 'superadmin', '139.0.96.219', '2015-05-13 06:05:44', NULL, NULL, NULL),
(861, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:03', NULL, NULL, NULL),
(862, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-13 06:05:05', NULL, NULL, NULL),
(863, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:38', NULL, NULL, NULL),
(864, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-13 06:05:50', NULL, NULL, NULL),
(865, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:03', NULL, NULL, NULL),
(866, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-13 06:05:05', NULL, NULL, NULL),
(867, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 06:05:25', NULL, NULL, NULL),
(868, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-13 06:05:27', NULL, NULL, NULL),
(869, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-13 07:05:40', NULL, NULL, NULL),
(870, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-13 07:05:42', NULL, NULL, NULL),
(871, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:35', NULL, NULL, NULL),
(872, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:43', NULL, NULL, NULL),
(873, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:50', NULL, NULL, NULL),
(874, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:01', NULL, NULL, NULL),
(875, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:06', NULL, NULL, NULL),
(876, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:30', NULL, NULL, NULL),
(877, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:34', NULL, NULL, NULL),
(878, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:39', NULL, NULL, NULL),
(879, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:18', NULL, NULL, NULL),
(880, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:22', NULL, NULL, NULL),
(881, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:27', NULL, NULL, NULL),
(882, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:32', NULL, NULL, NULL),
(883, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:37', NULL, NULL, NULL),
(884, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(885, NULL, 'Sentra = delitem', 'admin', '139.0.96.219', '2015-05-13 07:05:54', NULL, NULL, NULL),
(886, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:10', NULL, NULL, NULL),
(887, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:43', NULL, NULL, NULL),
(888, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:48', NULL, NULL, NULL),
(889, NULL, 'Daerah = delete', 'admin', '139.0.96.219', '2015-05-13 07:05:05', NULL, NULL, NULL),
(890, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(891, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:36', NULL, NULL, NULL),
(892, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:53', NULL, NULL, NULL),
(893, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:53', NULL, NULL, NULL),
(894, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:53', NULL, NULL, NULL),
(895, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:54', NULL, NULL, NULL),
(896, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 07:05:10', NULL, NULL, NULL),
(897, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 07:05:12', NULL, NULL, NULL),
(898, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 07:05:21', NULL, NULL, NULL),
(899, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 07:05:22', NULL, NULL, NULL),
(900, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:41', NULL, NULL, NULL),
(901, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:50', NULL, NULL, NULL),
(902, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:40', NULL, NULL, NULL),
(903, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:40', NULL, NULL, NULL),
(904, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:40', NULL, NULL, NULL),
(905, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:06', NULL, NULL, NULL),
(906, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:06', NULL, NULL, NULL),
(907, NULL, 'Distrik = delitem', 'admin', '139.0.96.219', '2015-05-13 07:05:34', NULL, NULL, NULL),
(908, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:54', NULL, NULL, NULL),
(909, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:25', NULL, NULL, NULL),
(910, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:59', NULL, NULL, NULL),
(911, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:19', NULL, NULL, NULL),
(912, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:48', NULL, NULL, NULL),
(913, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:48', NULL, NULL, NULL),
(914, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:49', NULL, NULL, NULL),
(915, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:49', NULL, NULL, NULL),
(916, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:56', NULL, NULL, NULL),
(917, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:02', NULL, NULL, NULL),
(918, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:09', NULL, NULL, NULL),
(919, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:33', NULL, NULL, NULL),
(920, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:33', NULL, NULL, NULL),
(921, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:33', NULL, NULL, NULL),
(922, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:44', NULL, NULL, NULL),
(923, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(924, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(925, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(926, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(927, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(928, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(929, NULL, 'Sentra = save', 'admin', '139.0.96.219', '2015-05-13 07:05:45', NULL, NULL, NULL),
(930, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:21', NULL, NULL, NULL),
(931, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:21', NULL, NULL, NULL),
(932, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:01', NULL, NULL, NULL),
(933, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:01', NULL, NULL, NULL),
(934, NULL, 'Distrik = delitem', 'admin', '139.0.96.219', '2015-05-13 07:05:25', NULL, NULL, NULL),
(935, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:34', NULL, NULL, NULL),
(936, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:51', NULL, NULL, NULL),
(937, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:06', NULL, NULL, NULL),
(938, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:06', NULL, NULL, NULL),
(939, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:06', NULL, NULL, NULL),
(940, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:33', NULL, NULL, NULL),
(941, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 07:05:33', NULL, NULL, NULL),
(942, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:59', NULL, NULL, NULL),
(943, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:59', NULL, NULL, NULL),
(944, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:59', NULL, NULL, NULL),
(945, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:37', NULL, NULL, NULL),
(946, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(947, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(948, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(949, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(950, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(951, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 07:05:38', NULL, NULL, NULL),
(952, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 08:05:43', NULL, NULL, NULL),
(953, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 08:05:51', NULL, NULL, NULL),
(954, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 08:05:04', NULL, NULL, NULL),
(955, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 08:05:04', NULL, NULL, NULL),
(956, NULL, 'Distrik = save', 'admin', '139.0.96.219', '2015-05-13 08:05:48', NULL, NULL, NULL),
(957, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:34', NULL, NULL, NULL),
(958, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:34', NULL, NULL, NULL),
(959, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:13', NULL, NULL, NULL),
(960, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:13', NULL, NULL, NULL),
(961, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:13', NULL, NULL, NULL),
(962, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:13', NULL, NULL, NULL),
(963, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:13', NULL, NULL, NULL),
(964, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:11', NULL, NULL, NULL),
(965, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:11', NULL, NULL, NULL),
(966, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:11', NULL, NULL, NULL),
(967, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:11', NULL, NULL, NULL),
(968, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:22', NULL, NULL, NULL),
(969, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:22', NULL, NULL, NULL),
(970, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:22', NULL, NULL, NULL),
(971, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:22', NULL, NULL, NULL),
(972, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:22', NULL, NULL, NULL),
(973, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:22', NULL, NULL, NULL),
(974, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:30', NULL, NULL, NULL),
(975, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:30', NULL, NULL, NULL),
(976, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:30', NULL, NULL, NULL),
(977, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:44', NULL, NULL, NULL),
(978, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:55', NULL, NULL, NULL),
(979, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:07', NULL, NULL, NULL),
(980, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:26', NULL, NULL, NULL),
(981, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:36', NULL, NULL, NULL),
(982, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:50', NULL, NULL, NULL),
(983, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:59', NULL, NULL, NULL),
(984, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:28', NULL, NULL, NULL),
(985, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:28', NULL, NULL, NULL),
(986, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:28', NULL, NULL, NULL),
(987, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:28', NULL, NULL, NULL),
(988, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(989, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(990, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(991, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:39', NULL, NULL, NULL),
(992, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:39', NULL, NULL, NULL),
(993, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:53', NULL, NULL, NULL),
(994, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:53', NULL, NULL, NULL),
(995, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:14', NULL, NULL, NULL),
(996, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:14', NULL, NULL, NULL),
(997, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:14', NULL, NULL, NULL),
(998, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(999, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(1000, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(1001, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:29', NULL, NULL, NULL),
(1002, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:49', NULL, NULL, NULL),
(1003, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:49', NULL, NULL, NULL),
(1004, NULL, 'Cetya = save', 'admin', '139.0.96.219', '2015-05-13 08:05:49', NULL, NULL, NULL),
(1005, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 09:05:51', NULL, NULL, NULL),
(1006, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 09:05:52', NULL, NULL, NULL),
(1007, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 09:05:03', NULL, NULL, NULL),
(1008, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 09:05:03', NULL, NULL, NULL),
(1009, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-13 09:05:06', NULL, NULL, NULL),
(1010, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-13 09:05:07', NULL, NULL, NULL),
(1011, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 09:05:15', NULL, NULL, NULL),
(1012, NULL, 'Daerah = update', 'admin', '139.0.96.219', '2015-05-13 09:05:15', NULL, NULL, NULL),
(1013, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-13 09:05:18', NULL, NULL, NULL),
(1014, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-14 06:05:22', NULL, NULL, NULL),
(1015, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-14 06:05:46', NULL, NULL, NULL),
(1016, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-14 06:05:34', NULL, NULL, NULL),
(1017, NULL, 'Daerah = view', 'admin', '139.0.96.219', '2015-05-14 06:05:47', NULL, NULL, NULL),
(1018, NULL, 'Daerah = edit', 'admin', '139.0.96.219', '2015-05-14 06:05:49', NULL, NULL, NULL),
(1019, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:25', NULL, NULL, NULL),
(1020, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:54', NULL, NULL, NULL),
(1021, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:41', NULL, NULL, NULL),
(1022, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-14 07:05:01', NULL, NULL, NULL),
(1023, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:27', NULL, NULL, NULL),
(1024, NULL, 'Tambah Data Umat = view', 'user1', '139.0.96.219', '2015-05-14 07:05:07', NULL, NULL, NULL),
(1025, NULL, 'Tambah Data Umat = view', 'user1', '139.0.96.219', '2015-05-14 07:05:15', NULL, NULL, NULL),
(1026, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:10', NULL, NULL, NULL),
(1027, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:21', NULL, NULL, NULL),
(1028, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-14 07:05:13', NULL, NULL, NULL),
(1029, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-14 07:05:20', NULL, NULL, NULL),
(1030, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-14 07:05:52', NULL, NULL, NULL),
(1031, NULL, 'Tambah Data Umat = view', 'superadmin', '10.1.0.43', '2015-05-14 04:05:23', NULL, NULL, NULL),
(1032, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-15 10:05:16', NULL, NULL, NULL),
(1033, NULL, 'Hak Akses Akun = view', 'superadmin', '36.81.17.50', '2015-05-15 09:05:19', NULL, NULL, NULL),
(1034, NULL, 'Hak Akses Akun = edit', 'superadmin', '36.81.17.50', '2015-05-15 09:05:26', NULL, NULL, NULL),
(1035, NULL, 'Tambah Data Umat = view', 'superadmin', '36.81.17.50', '2015-05-15 09:05:21', NULL, NULL, NULL),
(1036, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:05', NULL, NULL, NULL),
(1037, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:31', NULL, NULL, NULL),
(1038, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:49', NULL, NULL, NULL),
(1039, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-16 07:05:42', NULL, NULL, NULL),
(1040, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:00', NULL, NULL, NULL),
(1041, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:44', NULL, NULL, NULL),
(1042, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-16 07:05:50', NULL, NULL, NULL),
(1043, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-16 07:05:58', NULL, NULL, NULL),
(1044, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-16 07:05:20', NULL, NULL, NULL),
(1045, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:33', NULL, NULL, NULL),
(1046, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:27', NULL, NULL, NULL),
(1047, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:34', NULL, NULL, NULL),
(1048, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:40', NULL, NULL, NULL),
(1049, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '139.0.96.219', '2015-05-16 07:05:59', NULL, NULL, NULL),
(1050, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '139.0.96.219', '2015-05-16 07:05:06', NULL, NULL, NULL),
(1051, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-16 07:05:04', NULL, NULL, NULL),
(1052, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:48', NULL, NULL, NULL),
(1053, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-16 07:05:16', NULL, NULL, NULL),
(1054, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-16 08:05:21', NULL, NULL, NULL),
(1055, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-16 08:05:26', NULL, NULL, NULL),
(1056, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-16 08:05:14', NULL, NULL, NULL),
(1057, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-16 08:05:51', NULL, NULL, NULL),
(1058, NULL, 'Tambah Data Umat = view', '', '139.0.96.219', '2015-05-16 09:05:32', NULL, NULL, NULL),
(1059, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-16 09:05:55', NULL, NULL, NULL),
(1060, NULL, 'Tambah Data Umat = view', 'admin', '10.1.0.43', '2015-05-16 12:05:58', NULL, NULL, NULL),
(1061, NULL, 'Tambah Data Umat = view', 'admin', '10.1.0.43', '2015-05-16 12:05:07', NULL, NULL, NULL),
(1062, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-17 03:05:25', NULL, NULL, NULL),
(1063, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-17 03:05:36', NULL, NULL, NULL),
(1064, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-17 03:05:58', NULL, NULL, NULL),
(1065, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-17 03:05:16', NULL, NULL, NULL),
(1066, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-17 03:05:04', NULL, NULL, NULL),
(1067, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-17 03:05:14', NULL, NULL, NULL),
(1068, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-17 03:05:21', NULL, NULL, NULL),
(1069, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-17 03:05:30', NULL, NULL, NULL),
(1070, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-17 03:05:33', NULL, NULL, NULL),
(1071, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 04:05:51', NULL, NULL, NULL),
(1072, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 04:05:01', NULL, NULL, NULL),
(1073, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-18 04:05:05', NULL, NULL, NULL),
(1074, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 04:05:11', NULL, NULL, NULL),
(1075, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 04:05:04', NULL, NULL, NULL),
(1076, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 04:05:12', NULL, NULL, NULL),
(1077, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-18 04:05:26', NULL, NULL, NULL),
(1078, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 04:05:57', NULL, NULL, NULL),
(1079, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:57', NULL, NULL, NULL),
(1080, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:12', NULL, NULL, NULL),
(1081, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:11', NULL, NULL, NULL),
(1082, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:14', NULL, NULL, NULL),
(1083, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:42', NULL, NULL, NULL),
(1084, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:44', NULL, NULL, NULL),
(1085, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:48', NULL, NULL, NULL),
(1086, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:49', NULL, NULL, NULL),
(1087, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:55', NULL, NULL, NULL),
(1088, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:04', NULL, NULL, NULL),
(1089, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:11', NULL, NULL, NULL),
(1090, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:20', NULL, NULL, NULL),
(1091, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:21', NULL, NULL, NULL),
(1092, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:27', NULL, NULL, NULL),
(1093, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:35', NULL, NULL, NULL),
(1094, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:41', NULL, NULL, NULL),
(1095, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:44', NULL, NULL, NULL),
(1096, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 05:05:47', NULL, NULL, NULL),
(1097, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 05:05:34', NULL, NULL, NULL),
(1098, NULL, 'Cetya = delitem', 'admin', '118.97.82.218', '2015-05-18 06:05:47', NULL, NULL, NULL),
(1099, NULL, 'Cetya = save', 'admin', '118.97.82.218', '2015-05-18 06:05:56', NULL, NULL, NULL),
(1100, NULL, 'User = view', 'superadmin', '124.195.118.97', '2015-05-18 08:05:18', NULL, NULL, NULL),
(1101, NULL, 'Tambah Data Umat = view', 'superadmin', '118.97.82.218', '2015-05-18 09:05:12', NULL, NULL, NULL),
(1102, NULL, 'Tambah Data Umat = edit', 'superadmin', '118.97.82.218', '2015-05-18 09:05:17', NULL, NULL, NULL),
(1103, NULL, 'Tambah Data Umat = update', 'superadmin', '118.97.82.218', '2015-05-18 09:05:23', NULL, NULL, NULL),
(1104, NULL, 'Tambah Data Umat = view', 'superadmin', '118.97.82.218', '2015-05-18 09:05:29', NULL, NULL, NULL);
INSERT INTO `tb_log_activity` (`tb_log_activity_id`, `tb_log_activity_log_code_id`, `tb_log_activity_description`, `tb_log_activity_created_by`, `tb_log_activity_created_ip`, `tb_log_activity_created_date`, `tb_log_activity_modified_by`, `tb_log_activity_modified_date`, `tb_log_activity_modified_ip`) VALUES
(1105, NULL, 'Tambah Data Umat = view', 'superadmin', '118.97.82.218', '2015-05-18 09:05:38', NULL, NULL, NULL),
(1106, NULL, 'Tambah Data Umat = edit', 'superadmin', '118.97.82.218', '2015-05-18 09:05:41', NULL, NULL, NULL),
(1107, NULL, 'Tambah Data Umat = update', 'superadmin', '118.97.82.218', '2015-05-18 09:05:48', NULL, NULL, NULL),
(1108, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 01:05:05', NULL, NULL, NULL),
(1109, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-18 01:05:09', NULL, NULL, NULL),
(1110, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 01:05:16', NULL, NULL, NULL),
(1111, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-18 01:05:20', NULL, NULL, NULL),
(1112, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-18 09:05:45', NULL, NULL, NULL),
(1113, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-18 09:05:06', NULL, NULL, NULL),
(1114, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-18 09:05:06', NULL, NULL, NULL),
(1115, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-18 09:05:10', NULL, NULL, NULL),
(1116, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-18 09:05:25', NULL, NULL, NULL),
(1117, NULL, 'User = view', 'superadmin', '10.1.0.43', '2015-05-18 10:05:27', NULL, NULL, NULL),
(1118, NULL, 'User = edit', 'superadmin', '10.1.0.43', '2015-05-18 10:05:29', NULL, NULL, NULL),
(1119, NULL, 'Hak Akses Akun = view', 'superadmin', '10.1.0.43', '2015-05-18 10:05:51', NULL, NULL, NULL),
(1120, NULL, 'Hak Akses Akun = edit', 'superadmin', '10.1.0.43', '2015-05-18 10:05:11', NULL, NULL, NULL),
(1121, NULL, 'User = view', 'superadmin', '10.1.0.43', '2015-05-18 10:05:48', NULL, NULL, NULL),
(1122, NULL, 'User = edit', 'superadmin', '10.1.0.43', '2015-05-18 10:05:50', NULL, NULL, NULL),
(1123, NULL, 'User = view', 'superadmin', '10.1.0.43', '2015-05-18 10:05:24', NULL, NULL, NULL),
(1124, NULL, 'User = edit', 'superadmin', '10.1.0.43', '2015-05-18 10:05:25', NULL, NULL, NULL),
(1125, NULL, 'Tambah Data Umat = view', 'superadmin', '203.176.181.40', '2015-05-18 11:05:35', NULL, NULL, NULL),
(1126, NULL, 'Tambah Data Umat = edit', 'superadmin', '203.176.181.40', '2015-05-18 11:05:37', NULL, NULL, NULL),
(1127, NULL, 'Tambah Data Umat = update', 'superadmin', '203.176.181.40', '2015-05-18 11:05:42', NULL, NULL, NULL),
(1128, NULL, 'Tambah Data Umat = view', 'superadmin', '203.176.181.40', '2015-05-18 11:05:48', NULL, NULL, NULL),
(1129, NULL, 'Tambah Data Umat = edit', 'superadmin', '203.176.181.40', '2015-05-18 11:05:52', NULL, NULL, NULL),
(1130, NULL, 'Tambah Data Umat = update', 'superadmin', '203.176.181.40', '2015-05-18 11:05:56', NULL, NULL, NULL),
(1131, NULL, 'Tambah Data Umat = view', 'superadmin', '203.176.181.40', '2015-05-18 11:05:47', NULL, NULL, NULL),
(1132, NULL, 'Tambah Data Umat = view', 'superadmin', '203.176.181.40', '2015-05-18 11:05:42', NULL, NULL, NULL),
(1133, NULL, 'User = view', 'superadmin', '203.176.181.40', '2015-05-18 11:05:41', NULL, NULL, NULL),
(1134, NULL, 'User = edit', 'superadmin', '203.176.181.40', '2015-05-18 11:05:44', NULL, NULL, NULL),
(1135, NULL, 'Cetya = delitem', 'admin', '118.97.82.218', '2015-05-19 02:05:10', NULL, NULL, NULL),
(1136, NULL, 'User = view', 'superadmin', '10.1.0.43', '2015-05-19 04:05:34', NULL, NULL, NULL),
(1137, NULL, 'User = edit', 'superadmin', '10.1.0.43', '2015-05-19 04:05:38', NULL, NULL, NULL),
(1138, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:01', NULL, NULL, NULL),
(1139, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:27', NULL, NULL, NULL),
(1140, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:48', NULL, NULL, NULL),
(1141, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:49', NULL, NULL, NULL),
(1142, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:09', NULL, NULL, NULL),
(1143, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:11', NULL, NULL, NULL),
(1144, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:53', NULL, NULL, NULL),
(1145, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:57', NULL, NULL, NULL),
(1146, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:00', NULL, NULL, NULL),
(1147, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:03', NULL, NULL, NULL),
(1148, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 04:05:22', NULL, NULL, NULL),
(1149, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:28', NULL, NULL, NULL),
(1150, NULL, 'Tambah Data Umat = view', 'admin', '114.199.125.22', '2015-05-19 05:05:02', NULL, NULL, NULL),
(1151, NULL, 'Tambah Data Umat = edit', 'admin', '114.199.125.22', '2015-05-19 05:05:19', NULL, NULL, NULL),
(1152, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:44', NULL, NULL, NULL),
(1153, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:45', NULL, NULL, NULL),
(1154, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:19', NULL, NULL, NULL),
(1155, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:21', NULL, NULL, NULL),
(1156, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:37', NULL, NULL, NULL),
(1157, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:39', NULL, NULL, NULL),
(1158, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:10', NULL, NULL, NULL),
(1159, NULL, 'Tambah Data Umat = view', 'admin', '114.199.125.22', '2015-05-19 05:05:06', NULL, NULL, NULL),
(1160, NULL, 'Tambah Data Umat = edit', 'admin', '114.199.125.22', '2015-05-19 05:05:18', NULL, NULL, NULL),
(1161, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:11', NULL, NULL, NULL),
(1162, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:13', NULL, NULL, NULL),
(1163, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:33', NULL, NULL, NULL),
(1164, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:31', NULL, NULL, NULL),
(1165, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 05:05:53', NULL, NULL, NULL),
(1166, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 05:05:57', NULL, NULL, NULL),
(1167, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 05:05:08', NULL, NULL, NULL),
(1168, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 05:05:15', NULL, NULL, NULL),
(1169, NULL, 'Daerah = view', 'superadmin', '114.199.125.22', '2015-05-19 05:05:14', NULL, NULL, NULL),
(1170, NULL, 'Daerah = edit', 'superadmin', '114.199.125.22', '2015-05-19 05:05:16', NULL, NULL, NULL),
(1171, NULL, 'Daerah = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:33', NULL, NULL, NULL),
(1172, NULL, 'Daerah = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:35', NULL, NULL, NULL),
(1173, NULL, 'Daerah = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:06', NULL, NULL, NULL),
(1174, NULL, 'Daerah = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:08', NULL, NULL, NULL),
(1175, NULL, 'Daerah = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:27', NULL, NULL, NULL),
(1176, NULL, 'Daerah = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:27', NULL, NULL, NULL),
(1177, NULL, 'Daerah = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:50', NULL, NULL, NULL),
(1178, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:12', NULL, NULL, NULL),
(1179, NULL, 'Sentra = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:21', NULL, NULL, NULL),
(1180, NULL, 'Sentra = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:15', NULL, NULL, NULL),
(1181, NULL, 'Daerah = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:32', NULL, NULL, NULL),
(1182, NULL, 'Distrik = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:26', NULL, NULL, NULL),
(1183, NULL, 'Cetya = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:45', NULL, NULL, NULL),
(1184, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:52', NULL, NULL, NULL),
(1185, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:53', NULL, NULL, NULL),
(1186, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:37', NULL, NULL, NULL),
(1187, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:43', NULL, NULL, NULL),
(1188, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:47', NULL, NULL, NULL),
(1189, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:50', NULL, NULL, NULL),
(1190, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:55', NULL, NULL, NULL),
(1191, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:01', NULL, NULL, NULL),
(1192, NULL, 'Tambah Data Umat = save', 'superadmin', '114.199.125.22', '2015-05-19 06:05:23', NULL, NULL, NULL),
(1193, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:12', NULL, NULL, NULL),
(1194, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:23', NULL, NULL, NULL),
(1195, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:40', NULL, NULL, NULL),
(1196, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:43', NULL, NULL, NULL),
(1197, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:51', NULL, NULL, NULL),
(1198, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 06:05:23', NULL, NULL, NULL),
(1199, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:45', NULL, NULL, NULL),
(1200, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:47', NULL, NULL, NULL),
(1201, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 06:05:04', NULL, NULL, NULL),
(1202, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:12', NULL, NULL, NULL),
(1203, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:22', NULL, NULL, NULL),
(1204, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:36', NULL, NULL, NULL),
(1205, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:47', NULL, NULL, NULL),
(1206, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 06:05:55', NULL, NULL, NULL),
(1207, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:03', NULL, NULL, NULL),
(1208, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:05', NULL, NULL, NULL),
(1209, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 06:05:12', NULL, NULL, NULL),
(1210, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:44', NULL, NULL, NULL),
(1211, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:50', NULL, NULL, NULL),
(1212, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 06:05:10', NULL, NULL, NULL),
(1213, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 06:05:12', NULL, NULL, NULL),
(1214, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 07:05:33', NULL, NULL, NULL),
(1215, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 07:05:23', NULL, NULL, NULL),
(1216, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 07:05:00', NULL, NULL, NULL),
(1217, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:58', NULL, NULL, NULL),
(1218, NULL, 'Daerah = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:01', NULL, NULL, NULL),
(1219, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:16', NULL, NULL, NULL),
(1220, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:20', NULL, NULL, NULL),
(1221, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:27', NULL, NULL, NULL),
(1222, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:31', NULL, NULL, NULL),
(1223, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:38', NULL, NULL, NULL),
(1224, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:43', NULL, NULL, NULL),
(1225, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:44', NULL, NULL, NULL),
(1226, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:06', NULL, NULL, NULL),
(1227, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:07', NULL, NULL, NULL),
(1228, NULL, 'Tambah Data Umat = view', 'sekda-dki', '139.0.96.219', '2015-05-19 09:05:15', NULL, NULL, NULL),
(1229, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 09:05:18', NULL, NULL, NULL),
(1230, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 09:05:20', NULL, NULL, NULL),
(1231, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 09:05:36', NULL, NULL, NULL),
(1232, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 09:05:37', NULL, NULL, NULL),
(1233, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 09:05:46', NULL, NULL, NULL),
(1234, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 09:05:54', NULL, NULL, NULL),
(1235, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 09:05:05', NULL, NULL, NULL),
(1236, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 09:05:16', NULL, NULL, NULL),
(1237, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 09:05:23', NULL, NULL, NULL),
(1238, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 09:05:15', NULL, NULL, NULL),
(1239, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 09:05:26', NULL, NULL, NULL),
(1240, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 09:05:33', NULL, NULL, NULL),
(1241, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:29', NULL, NULL, NULL),
(1242, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:33', NULL, NULL, NULL),
(1243, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:45', NULL, NULL, NULL),
(1244, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:49', NULL, NULL, NULL),
(1245, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 09:05:02', NULL, NULL, NULL),
(1246, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:07', NULL, NULL, NULL),
(1247, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:19', NULL, NULL, NULL),
(1248, NULL, 'Daerah = view', 'superadmin', '114.199.125.22', '2015-05-19 10:05:17', NULL, NULL, NULL),
(1249, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 11:05:13', NULL, NULL, NULL),
(1250, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 11:05:30', NULL, NULL, NULL),
(1251, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 11:05:07', NULL, NULL, NULL),
(1252, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 11:05:20', NULL, NULL, NULL),
(1253, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 11:05:43', NULL, NULL, NULL),
(1254, NULL, 'Tambah Data Umat = view', 'admin', '139.0.96.219', '2015-05-19 11:05:58', NULL, NULL, NULL),
(1255, NULL, 'Tambah Data Umat = edit', 'admin', '139.0.96.219', '2015-05-19 11:05:59', NULL, NULL, NULL),
(1256, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 11:05:24', NULL, NULL, NULL),
(1257, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 11:05:27', NULL, NULL, NULL),
(1258, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-19 11:05:43', NULL, NULL, NULL),
(1259, NULL, 'Daerah = edit', 'superadmin', '139.0.96.219', '2015-05-19 11:05:45', NULL, NULL, NULL),
(1260, NULL, 'Tambah Data Umat = save', 'superadmin', '114.199.125.22', '2015-05-19 12:05:57', NULL, NULL, NULL),
(1261, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 12:05:54', NULL, NULL, NULL),
(1262, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 01:05:02', NULL, NULL, NULL),
(1263, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 01:05:21', NULL, NULL, NULL),
(1264, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 01:05:29', NULL, NULL, NULL),
(1265, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 01:05:38', NULL, NULL, NULL),
(1266, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 01:05:45', NULL, NULL, NULL),
(1267, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 01:05:24', NULL, NULL, NULL),
(1268, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 01:05:25', NULL, NULL, NULL),
(1269, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 01:05:40', NULL, NULL, NULL),
(1270, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 01:05:45', NULL, NULL, NULL),
(1271, NULL, 'Tambah Data Umat = edit', 'superadmin', '114.199.125.22', '2015-05-19 01:05:51', NULL, NULL, NULL),
(1272, NULL, 'Tambah Data Umat = update', 'superadmin', '114.199.125.22', '2015-05-19 01:05:58', NULL, NULL, NULL),
(1273, NULL, 'Tambah Data Umat = view', 'superadmin', '114.199.125.22', '2015-05-19 01:05:05', NULL, NULL, NULL),
(1274, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 01:05:46', NULL, NULL, NULL),
(1275, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:12', NULL, NULL, NULL),
(1276, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 03:05:18', NULL, NULL, NULL),
(1277, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:02', NULL, NULL, NULL),
(1278, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:30', NULL, NULL, NULL),
(1279, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 03:05:41', NULL, NULL, NULL),
(1280, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 03:05:26', NULL, NULL, NULL),
(1281, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:31', NULL, NULL, NULL),
(1282, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:55', NULL, NULL, NULL),
(1283, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 03:05:00', NULL, NULL, NULL),
(1284, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:07', NULL, NULL, NULL),
(1285, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 03:05:09', NULL, NULL, NULL),
(1286, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:13', NULL, NULL, NULL),
(1287, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:25', NULL, NULL, NULL),
(1288, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:59', NULL, NULL, NULL),
(1289, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:08', NULL, NULL, NULL),
(1290, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:15', NULL, NULL, NULL),
(1291, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:21', NULL, NULL, NULL),
(1292, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:55', NULL, NULL, NULL),
(1293, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:33', NULL, NULL, NULL),
(1294, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:01', NULL, NULL, NULL),
(1295, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:00', NULL, NULL, NULL),
(1296, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:57', NULL, NULL, NULL),
(1297, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:39', NULL, NULL, NULL),
(1298, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:43', NULL, NULL, NULL),
(1299, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:49', NULL, NULL, NULL),
(1300, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:10', NULL, NULL, NULL),
(1301, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:50', NULL, NULL, NULL),
(1302, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:11', NULL, NULL, NULL),
(1303, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:00', NULL, NULL, NULL),
(1304, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 03:05:45', NULL, NULL, NULL),
(1305, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:03', NULL, NULL, NULL),
(1306, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:03', NULL, NULL, NULL),
(1307, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:14', NULL, NULL, NULL),
(1308, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 04:05:33', NULL, NULL, NULL),
(1309, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:37', NULL, NULL, NULL),
(1310, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:10', NULL, NULL, NULL),
(1311, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:29', NULL, NULL, NULL),
(1312, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:42', NULL, NULL, NULL),
(1313, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:54', NULL, NULL, NULL),
(1314, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:54', NULL, NULL, NULL),
(1315, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:40', NULL, NULL, NULL),
(1316, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:42', NULL, NULL, NULL),
(1317, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 04:05:06', NULL, NULL, NULL),
(1318, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 04:05:20', NULL, NULL, NULL),
(1319, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:09', NULL, NULL, NULL),
(1320, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:12', NULL, NULL, NULL),
(1321, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:35', NULL, NULL, NULL),
(1322, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:41', NULL, NULL, NULL),
(1323, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:20', NULL, NULL, NULL),
(1324, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 05:05:21', NULL, NULL, NULL),
(1325, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:21', NULL, NULL, NULL),
(1326, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 05:05:11', NULL, NULL, NULL),
(1327, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:38', NULL, NULL, NULL),
(1328, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:33', NULL, NULL, NULL),
(1329, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:44', NULL, NULL, NULL),
(1330, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:07', NULL, NULL, NULL),
(1331, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:47', NULL, NULL, NULL),
(1332, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:48', NULL, NULL, NULL),
(1333, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:18', NULL, NULL, NULL),
(1334, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:31', NULL, NULL, NULL),
(1335, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:52', NULL, NULL, NULL),
(1336, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:19', NULL, NULL, NULL),
(1337, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:49', NULL, NULL, NULL),
(1338, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:03', NULL, NULL, NULL),
(1339, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:06', NULL, NULL, NULL),
(1340, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:30', NULL, NULL, NULL),
(1341, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:34', NULL, NULL, NULL),
(1342, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:12', NULL, NULL, NULL),
(1343, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:14', NULL, NULL, NULL),
(1344, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:07', NULL, NULL, NULL),
(1345, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:09', NULL, NULL, NULL),
(1346, NULL, 'Tambah Data Umat = view', 'user1', '139.0.96.219', '2015-05-19 06:05:25', NULL, NULL, NULL),
(1347, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:59', NULL, NULL, NULL),
(1348, NULL, 'Hak Akses Akun = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:01', NULL, NULL, NULL),
(1349, NULL, 'Hak Akses Akun = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:13', NULL, NULL, NULL),
(1350, NULL, 'User = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:52', NULL, NULL, NULL),
(1351, NULL, 'User = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:55', NULL, NULL, NULL),
(1352, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:57', NULL, NULL, NULL),
(1353, NULL, 'Daerah = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:59', NULL, NULL, NULL),
(1354, NULL, 'Daerah = view', 'superadmin', '139.0.96.219', '2015-05-19 06:05:21', NULL, NULL, NULL),
(1355, NULL, 'Daerah = edit', 'superadmin', '139.0.96.219', '2015-05-19 06:05:24', NULL, NULL, NULL),
(1356, NULL, 'Tambah Data Umat = save', 'superadmin', '139.0.96.219', '2015-05-19 09:05:30', NULL, NULL, NULL),
(1357, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:50', NULL, NULL, NULL),
(1358, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:19', NULL, NULL, NULL),
(1359, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:27', NULL, NULL, NULL),
(1360, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:44', NULL, NULL, NULL),
(1361, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:34', NULL, NULL, NULL),
(1362, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 09:05:37', NULL, NULL, NULL),
(1363, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 09:05:54', NULL, NULL, NULL),
(1364, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 09:05:57', NULL, NULL, NULL),
(1365, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 10:05:15', NULL, NULL, NULL),
(1366, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:22', NULL, NULL, NULL),
(1367, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 10:05:24', NULL, NULL, NULL),
(1368, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 10:05:31', NULL, NULL, NULL),
(1369, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:35', NULL, NULL, NULL),
(1370, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 10:05:52', NULL, NULL, NULL),
(1371, NULL, 'Tambah Data Umat = update', 'superadmin', '139.0.96.219', '2015-05-19 10:05:03', NULL, NULL, NULL),
(1372, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:08', NULL, NULL, NULL),
(1373, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:17', NULL, NULL, NULL),
(1374, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:35', NULL, NULL, NULL),
(1375, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:43', NULL, NULL, NULL),
(1376, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:48', NULL, NULL, NULL),
(1377, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:53', NULL, NULL, NULL),
(1378, NULL, 'Tambah Data Umat = edit', 'superadmin', '139.0.96.219', '2015-05-19 10:05:55', NULL, NULL, NULL),
(1379, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:26', NULL, NULL, NULL),
(1380, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:22', NULL, NULL, NULL),
(1381, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:31', NULL, NULL, NULL),
(1382, NULL, 'Tambah Data Umat = view', 'superadmin', '139.0.96.219', '2015-05-19 10:05:36', NULL, NULL, NULL),
(1383, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-21 02:05:19', NULL, NULL, NULL),
(1384, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-21 02:05:29', NULL, NULL, NULL),
(1385, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:32', NULL, NULL, NULL),
(1386, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-22 06:05:38', NULL, NULL, NULL),
(1387, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:01', NULL, NULL, NULL),
(1388, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-22 06:05:05', NULL, NULL, NULL),
(1389, NULL, 'Tambah Data Umat = update', 'superadmin', '::1', '2015-05-22 06:05:17', NULL, NULL, NULL),
(1390, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:26', NULL, NULL, NULL),
(1391, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:19', NULL, NULL, NULL),
(1392, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-22 06:05:21', NULL, NULL, NULL),
(1393, NULL, 'Tambah Data Umat = update', 'superadmin', '::1', '2015-05-22 06:05:38', NULL, NULL, NULL),
(1394, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:42', NULL, NULL, NULL),
(1395, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:46', NULL, NULL, NULL),
(1396, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-22 06:05:51', NULL, NULL, NULL),
(1397, NULL, 'Tambah Data Umat = update', 'superadmin', '::1', '2015-05-22 06:05:05', NULL, NULL, NULL),
(1398, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:09', NULL, NULL, NULL),
(1399, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:51', NULL, NULL, NULL),
(1400, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-22 06:05:53', NULL, NULL, NULL),
(1401, NULL, 'Tambah Data Umat = update', 'superadmin', '::1', '2015-05-22 06:05:01', NULL, NULL, NULL),
(1402, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 06:05:07', NULL, NULL, NULL),
(1403, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 07:05:39', NULL, NULL, NULL),
(1404, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-22 07:05:14', NULL, NULL, NULL),
(1405, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-23 12:05:54', NULL, NULL, NULL),
(1406, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:00', NULL, NULL, NULL),
(1407, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:52', NULL, NULL, NULL),
(1408, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:19', NULL, NULL, NULL),
(1409, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:39', NULL, NULL, NULL),
(1410, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:02', NULL, NULL, NULL),
(1411, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:29', NULL, NULL, NULL),
(1412, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:27', NULL, NULL, NULL),
(1413, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:28', NULL, NULL, NULL),
(1414, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:54', NULL, NULL, NULL),
(1415, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 08:05:05', NULL, NULL, NULL),
(1416, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-24 09:05:07', NULL, NULL, NULL),
(1417, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 09:05:12', NULL, NULL, NULL),
(1418, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 09:05:15', NULL, NULL, NULL),
(1419, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-24 09:05:56', NULL, NULL, NULL),
(1420, NULL, 'Hak Akses Akun = edit', 'superadmin', '::1', '2015-05-24 09:05:57', NULL, NULL, NULL),
(1421, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 09:05:04', NULL, NULL, NULL),
(1422, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 09:05:07', NULL, NULL, NULL),
(1423, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 09:05:59', NULL, NULL, NULL),
(1424, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 09:05:06', NULL, NULL, NULL),
(1425, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 09:05:58', NULL, NULL, NULL),
(1426, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:29', NULL, NULL, NULL),
(1427, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:31', NULL, NULL, NULL),
(1428, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:51', NULL, NULL, NULL),
(1429, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:52', NULL, NULL, NULL),
(1430, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:42', NULL, NULL, NULL),
(1431, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:43', NULL, NULL, NULL),
(1432, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:02', NULL, NULL, NULL),
(1433, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:03', NULL, NULL, NULL),
(1434, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:04', NULL, NULL, NULL),
(1435, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:05', NULL, NULL, NULL),
(1436, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:40', NULL, NULL, NULL),
(1437, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:41', NULL, NULL, NULL),
(1438, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:26', NULL, NULL, NULL),
(1439, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:29', NULL, NULL, NULL),
(1440, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:51', NULL, NULL, NULL),
(1441, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:53', NULL, NULL, NULL),
(1442, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:08', NULL, NULL, NULL),
(1443, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:10', NULL, NULL, NULL),
(1444, NULL, 'Hak Akses Akun = view', 'superadmin', '::1', '2015-05-24 10:05:28', NULL, NULL, NULL),
(1445, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:34', NULL, NULL, NULL),
(1446, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:35', NULL, NULL, NULL),
(1447, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:43', NULL, NULL, NULL),
(1448, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:44', NULL, NULL, NULL),
(1449, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:24', NULL, NULL, NULL),
(1450, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:25', NULL, NULL, NULL),
(1451, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:43', NULL, NULL, NULL),
(1452, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:44', NULL, NULL, NULL),
(1453, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:49', NULL, NULL, NULL),
(1454, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:51', NULL, NULL, NULL),
(1455, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:07', NULL, NULL, NULL),
(1456, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:09', NULL, NULL, NULL),
(1457, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:45', NULL, NULL, NULL),
(1458, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:46', NULL, NULL, NULL),
(1459, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:57', NULL, NULL, NULL),
(1460, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:59', NULL, NULL, NULL),
(1461, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:11', NULL, NULL, NULL),
(1462, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:14', NULL, NULL, NULL),
(1463, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:45', NULL, NULL, NULL),
(1464, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:16', NULL, NULL, NULL),
(1465, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:19', NULL, NULL, NULL),
(1466, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:46', NULL, NULL, NULL),
(1467, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:00', NULL, NULL, NULL),
(1468, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:52', NULL, NULL, NULL),
(1469, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:53', NULL, NULL, NULL),
(1470, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:21', NULL, NULL, NULL),
(1471, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:22', NULL, NULL, NULL),
(1472, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:34', NULL, NULL, NULL),
(1473, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:57', NULL, NULL, NULL),
(1474, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:59', NULL, NULL, NULL),
(1475, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:10', NULL, NULL, NULL),
(1476, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:11', NULL, NULL, NULL),
(1477, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 10:05:02', NULL, NULL, NULL),
(1478, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 10:05:16', NULL, NULL, NULL),
(1479, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:40', NULL, NULL, NULL),
(1480, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:41', NULL, NULL, NULL),
(1481, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:49', NULL, NULL, NULL),
(1482, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:50', NULL, NULL, NULL),
(1483, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:26', NULL, NULL, NULL),
(1484, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:27', NULL, NULL, NULL),
(1485, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:12', NULL, NULL, NULL),
(1486, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:45', NULL, NULL, NULL),
(1487, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:48', NULL, NULL, NULL),
(1488, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:42', NULL, NULL, NULL),
(1489, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:43', NULL, NULL, NULL),
(1490, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:02', NULL, NULL, NULL),
(1491, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:04', NULL, NULL, NULL),
(1492, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:50', NULL, NULL, NULL),
(1493, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:51', NULL, NULL, NULL),
(1494, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:18', NULL, NULL, NULL),
(1495, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:19', NULL, NULL, NULL),
(1496, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:31', NULL, NULL, NULL),
(1497, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:32', NULL, NULL, NULL),
(1498, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:51', NULL, NULL, NULL),
(1499, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:57', NULL, NULL, NULL),
(1500, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:05', NULL, NULL, NULL),
(1501, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:06', NULL, NULL, NULL),
(1502, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:33', NULL, NULL, NULL),
(1503, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:35', NULL, NULL, NULL),
(1504, NULL, 'User = view', 'superadmin', '::1', '2015-05-24 11:05:42', NULL, NULL, NULL),
(1505, NULL, 'User = edit', 'superadmin', '::1', '2015-05-24 11:05:44', NULL, NULL, NULL),
(1506, NULL, 'Tambah Data Umat = save', 'sekda-dki', '::1', '2015-05-24 11:05:04', NULL, NULL, NULL),
(1507, NULL, 'Tambah Data Umat = view', 'sekda-dki', '::1', '2015-05-24 11:05:11', NULL, NULL, NULL),
(1508, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '::1', '2015-05-24 11:05:19', NULL, NULL, NULL),
(1509, NULL, 'Tambah Data Umat = save', 'sekda-dki', '::1', '2015-05-24 11:05:14', NULL, NULL, NULL),
(1510, NULL, 'Tambah Data Umat = view', 'sekda-dki', '::1', '2015-05-24 11:05:05', NULL, NULL, NULL),
(1511, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '::1', '2015-05-24 11:05:02', NULL, NULL, NULL),
(1512, NULL, 'Tambah Data Umat = save', 'sekda-dki', '::1', '2015-05-24 11:05:41', NULL, NULL, NULL),
(1513, NULL, 'Tambah Data Umat = view', 'sekda-dki', '::1', '2015-05-24 11:05:46', NULL, NULL, NULL),
(1514, NULL, 'Tambah Data Umat = view', 'sekda-dki', '::1', '2015-05-24 11:05:00', NULL, NULL, NULL),
(1515, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '::1', '2015-05-24 11:05:26', NULL, NULL, NULL),
(1516, NULL, 'Tambah Data Umat = save', 'superadmin', '::1', '2015-05-24 11:05:53', NULL, NULL, NULL),
(1517, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 11:05:59', NULL, NULL, NULL),
(1518, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '::1', '2015-05-24 11:05:45', NULL, NULL, NULL),
(1519, NULL, 'Tambah Data Umat = save', 'superadmin', '::1', '2015-05-24 11:05:08', NULL, NULL, NULL),
(1520, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-24 11:05:17', NULL, NULL, NULL),
(1521, NULL, 'Tambah Data Umat = deletemanual', 'superadmin', '::1', '2015-05-25 12:05:15', NULL, NULL, NULL),
(1522, NULL, 'Tambah Data Umat = save', 'sekda-dki', '::1', '2015-05-25 12:05:46', NULL, NULL, NULL),
(1523, NULL, 'Tambah Data Umat = view', 'sekda-dki', '::1', '2015-05-25 12:05:56', NULL, NULL, NULL),
(1524, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:23', NULL, NULL, NULL),
(1525, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:29', NULL, NULL, NULL),
(1526, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:33', NULL, NULL, NULL),
(1527, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:34', NULL, NULL, NULL),
(1528, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:25', NULL, NULL, NULL),
(1529, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:30', NULL, NULL, NULL),
(1530, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:31', NULL, NULL, NULL),
(1531, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:20', NULL, NULL, NULL),
(1532, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:21', NULL, NULL, NULL),
(1533, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:59', NULL, NULL, NULL),
(1534, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:00', NULL, NULL, NULL),
(1535, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:24', NULL, NULL, NULL),
(1536, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:26', NULL, NULL, NULL),
(1537, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:04', NULL, NULL, NULL),
(1538, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:07', NULL, NULL, NULL),
(1539, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:10', NULL, NULL, NULL),
(1540, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:38', NULL, NULL, NULL),
(1541, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:40', NULL, NULL, NULL),
(1542, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:53', NULL, NULL, NULL),
(1543, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:02', NULL, NULL, NULL),
(1544, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:35', NULL, NULL, NULL),
(1545, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:37', NULL, NULL, NULL),
(1546, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:39', NULL, NULL, NULL),
(1547, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:12', NULL, NULL, NULL),
(1548, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:16', NULL, NULL, NULL),
(1549, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:17', NULL, NULL, NULL),
(1550, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:34', NULL, NULL, NULL),
(1551, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:35', NULL, NULL, NULL),
(1552, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:55', NULL, NULL, NULL),
(1553, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:58', NULL, NULL, NULL),
(1554, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:04', NULL, NULL, NULL),
(1555, NULL, 'Tambah Data Umat = edit', 'superadmin', '::1', '2015-05-25 12:05:07', NULL, NULL, NULL),
(1556, NULL, 'Tambah Data Umat = update', 'superadmin', '::1', '2015-05-25 12:05:15', NULL, NULL, NULL),
(1557, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 12:05:18', NULL, NULL, NULL),
(1558, NULL, 'User = view', 'superadmin', '::1', '2015-05-25 12:05:32', NULL, NULL, NULL),
(1559, NULL, 'User = view', 'superadmin', '::1', '2015-05-25 12:05:36', NULL, NULL, NULL),
(1560, NULL, 'User = view', 'superadmin', '::1', '2015-05-25 12:05:56', NULL, NULL, NULL),
(1561, NULL, 'User = view', 'superadmin', '::1', '2015-05-25 12:05:52', NULL, NULL, NULL),
(1562, NULL, 'User = view', 'superadmin', '::1', '2015-05-25 12:05:55', NULL, NULL, NULL),
(1563, NULL, 'User = edit', 'superadmin', '::1', '2015-05-25 12:05:57', NULL, NULL, NULL),
(1564, NULL, 'Tambah Data Umat = view', 'superadmin', '::1', '2015-05-25 01:05:21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_log_code`
--

CREATE TABLE IF NOT EXISTS `tb_log_code` (
`tb_log_code_id` int(10) unsigned NOT NULL,
  `tb_log_code_name` varchar(50) DEFAULT NULL,
  `tb_log_code_approved_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=81882 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_province`
--

INSERT INTO `tb_province` (`tb_province_id`, `tb_province_name`, `tb_province_code`, `tb_province_count`, `tb_province_approved_status`, `tb_country_id`, `tb_province_city_json`, `tb_province_remarks`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(1, 'z-KHUSUS', '01', NULL, NULL, 1, NULL, '-', 0, 1, '0000-00-00', '0000-00-00'),
(6728, 'SUMATERA UTARA', '02', NULL, NULL, 1, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(12920, 'SUMATERA BAG.SELATAN', '03', NULL, NULL, 1, NULL, '-', 0, 1, '0000-00-00', '0000-00-00'),
(14086, 'RIAU', '04', NULL, NULL, 1, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(24993, 'LAMPUNG', '05', NULL, NULL, 1, NULL, '-', 0, 1, '0000-00-00', '0000-00-00'),
(25405, 'KEPULAUAN RIAU', '06', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(25823, 'DKI JAKARTA', '07', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(26141, 'JAWA BARAT', '08', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(32676, 'JAWA TENGAH', '09', NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00', '0000-00-00'),
(80888, 'z-COBA', '30', NULL, NULL, 1, NULL, '-', 1, 1, '0000-00-00', '0000-00-00'),
(81881, 'BALI', '11', NULL, NULL, NULL, NULL, '-', 9, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE IF NOT EXISTS `tb_provinsi` (
`tb_provinsi_id` int(100) NOT NULL,
  `tb_provinsi_code` varchar(225) NOT NULL,
  `tb_provinsi_name` varchar(225) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_relationship`
--

INSERT INTO `tb_relationship` (`tb_relationship_id`, `tb_relationship_relation_code`, `tb_relationship_relationship_id`, `tb_family_relationship_id`, `tb_relationship_approved_status`, `tb_data_umat_id`, `tb_relationship_name`) VALUES
(25, 'AYAH', 18, 0, NULL, 8, 'TES'),
(26, 'AYAH', 19, 0, NULL, 9, 'TES'),
(27, 'AYAH', 20, 0, NULL, 8, ''),
(28, 'AYAH', 21, 0, NULL, NULL, 'Bapake'),
(29, 'AYAH', 18, 0, NULL, 8, 'TES'),
(32, 'null', 23, 0, NULL, NULL, 'Bapake'),
(33, 'AYAH', 20, 0, NULL, 8, ''),
(34, 'AYAH', 20, 0, NULL, 8, ''),
(35, 'AYAH', 20, 0, NULL, 8, ''),
(36, 'AYAH', 24, 0, NULL, NULL, '0'),
(37, 'AYAH', 26, 0, NULL, NULL, '0'),
(38, 'AYAH', 28, 0, NULL, NULL, '0'),
(39, 'AYAH', 30, 0, NULL, NULL, '0'),
(40, 'AYAH', 32, 0, NULL, NULL, '0'),
(41, 'AYAH', 34, 0, NULL, NULL, '0'),
(42, 'AYAH', 36, 0, NULL, NULL, '8'),
(43, 'ADIK', 38, 0, NULL, NULL, '8'),
(44, 'AYAH', 40, 0, NULL, NULL, '8'),
(50, 'AYAH', 42, 0, NULL, NULL, '11'),
(51, 'AYAH', 44, 0, NULL, NULL, '8'),
(52, 'AYAH', 46, 0, NULL, 8, NULL),
(53, 'ANAK', 46, 0, NULL, 11, NULL),
(56, 'AYAH', 52, 0, NULL, 8, NULL),
(57, 'KAKAK', 53, 0, NULL, 9, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sentra`
--

INSERT INTO `tb_sentra` (`tb_sentra_id`, `tb_sentra_remarks`, `tb_sentra_province_id`, `tb_sentra_name`, `created_by`, `update_by`, `created_date`, `update_date`) VALUES
(3, 'TES SUMUT', 6728, 'SENTRA 1 Medan', 0, 1, '0000-00-00', '2015-05-13'),
(4, 'DKI B', 25823, 'DKI B', 0, 1, '0000-00-00', '2015-05-11'),
(20, NULL, 25823, 'DKI A', 1, 0, '2015-05-11', '0000-00-00'),
(21, NULL, 6728, 'SENTRA 2 Binjai', 1, 1, '2015-05-13', '2015-05-13'),
(22, NULL, 6728, 'SENTRA 3 Siantar', 1, 1, '2015-05-13', '2015-05-13'),
(23, NULL, 6728, 'SENTRA 4 Asahan', 1, 1, '2015-05-13', '2015-05-13'),
(24, NULL, 25405, 'SENTRA 1 Batam', 1, 1, '2015-05-13', '2015-05-13'),
(25, NULL, 25405, 'SENTRA 2 T.Pinang', 1, 1, '2015-05-13', '2015-05-13'),
(26, NULL, 25405, 'SENTRA 3 T.Balai Karimun', 1, 1, '2015-05-13', '2015-05-13'),
(27, NULL, 14086, 'RIAU 1 Pekanbaru', 1, 1, '2015-05-13', '2015-05-13'),
(31, NULL, 12920, 'SUMBAGSEL 1 Palembang', 1, 1, '2015-05-13', '2015-05-13'),
(32, NULL, 24993, 'Lampung', 1, 1, '2015-05-13', '2015-05-13'),
(33, NULL, 26141, '-', 1, 1, '2015-05-13', '2015-05-13'),
(34, NULL, 26141, 'SENTRA 1 Bandung', 1, 1, '2015-05-13', '2015-05-13'),
(35, NULL, 32676, 'SENTRA 1 Surakarta', 1, 0, '2015-05-13', '0000-00-00'),
(36, NULL, 32676, 'SENTRA 2 Karanganyar', 1, 0, '2015-05-13', '0000-00-00'),
(37, NULL, 32676, 'SENTRA 3 Purwokerto', 1, 0, '2015-05-13', '0000-00-00'),
(38, NULL, 32676, 'SENTRA 4 Salatiga', 1, 0, '2015-05-13', '0000-00-00'),
(39, NULL, 32676, 'SENTRA 5 Purworejo', 1, 0, '2015-05-13', '0000-00-00'),
(40, NULL, 32676, 'SENTRA 6 Semarang', 1, 0, '2015-05-13', '0000-00-00'),
(41, NULL, 81881, '-', 9, 9, '2015-05-19', '2015-05-19');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_username`, `user_password`, `user_status`, `tb_group_id`, `user_fullname`, `company_code`, `user_email`, `user_birthday`, `user_country`, `user_address`) VALUES
(1, 'admin', 'admin', 1, 1, 'admin', 1, 'sfandrianah2@gmail.com', '1995-03-12', 'INDONESIA', 'pondok aren'),
(4, 'nanang', 'nanang', 1, 5, 'Nanang Hendro', 3, '', '1992-03-10', '', ''),
(6, 'admin123', '123', 1, 1, 'admin123', 1, '', '0000-00-00', '', ''),
(7, 'agung', 'agung', 1, 1, 'agung', 1, '', '0000-00-00', '', ''),
(8, 'user1', 'user1', 1, 7, 'Nama User1', 1, '', '0000-00-00', '', ''),
(9, 'superadmin', 'superadmin', 1, 6, 'Nama Super Admin', 1, '', '0000-00-00', '', ''),
(10, 'sekda', '123456', 1, 4, 'sekda', 1, '', '0000-00-00', '', ''),
(11, 'sekda-dki', 'sekdadki', 1, 4, 'sekda-dki', 1, '', '0000-00-00', '', ''),
(12, 'sekda-jabar', 'sekda', 1, 4, 'sekda Agung', 1, '', '0000-00-00', '', ''),
(13, 'sekda-dkia', 'sekda', 1, 4, 'sekda DKI', 1, '', '0000-00-00', '', ''),
(14, 'sekda-jateng', 'sekdajateng', 1, 4, 'Nama Sekda Jateng', 1, '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_province`
--

CREATE TABLE IF NOT EXISTS `tb_user_province` (
  `tb_user_province_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `tb_province_id` int(10) NOT NULL,
  `tb_user_province_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_province`
--

INSERT INTO `tb_user_province` (`tb_user_province_id`, `user_id`, `tb_province_id`, `tb_user_province_remarks`) VALUES
(1, 10, 25823, 'Sekda Jakarta'),
(16, 27, 54020, ''),
(20, 31, 42385, ''),
(24, 40, 14086, ''),
(25, 41, 41863, ''),
(0, 12, 26141, ''),
(0, 13, 25823, ''),
(0, 14, 32676, ''),
(0, 0, 25823, ''),
(0, 0, 25823, ''),
(0, 11, 25823, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_role`
--

CREATE TABLE IF NOT EXISTS `tb_user_role` (
`tb_user_role_id` int(10) unsigned NOT NULL,
  `tb_user_role_username` varchar(50) DEFAULT NULL,
  `tb_user_role_password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
MODIFY `menu_function_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `structure_menu`
--
ALTER TABLE `structure_menu`
MODIFY `structure_menu_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
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
-- AUTO_INCREMENT for table `tb_cetya`
--
ALTER TABLE `tb_cetya`
MODIFY `tb_cetya_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tb_city`
--
ALTER TABLE `tb_city`
MODIFY `tb_city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41832;
--
-- AUTO_INCREMENT for table `tb_country`
--
ALTER TABLE `tb_country`
MODIFY `tb_country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_data_keumatan`
--
ALTER TABLE `tb_data_keumatan`
MODIFY `tb_data_keumatan_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_data_umat`
--
ALTER TABLE `tb_data_umat`
MODIFY `tb_data_umat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_data_umat_pembagian`
--
ALTER TABLE `tb_data_umat_pembagian`
MODIFY `tb_data_umat_pembagian_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_dharmasala`
--
ALTER TABLE `tb_dharmasala`
MODIFY `tb_dharmasala_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_distrik`
--
ALTER TABLE `tb_distrik`
MODIFY `tb_distrik_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81910;
--
-- AUTO_INCREMENT for table `tb_family_relationship`
--
ALTER TABLE `tb_family_relationship`
MODIFY `tb_family_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
MODIFY `tb_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
MODIFY `tb_log_activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1565;
--
-- AUTO_INCREMENT for table `tb_log_code`
--
ALTER TABLE `tb_log_code`
MODIFY `tb_log_code_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_personal_identity`
--
ALTER TABLE `tb_personal_identity`
MODIFY `tb_personal_identity_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_province`
--
ALTER TABLE `tb_province`
MODIFY `tb_province_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81882;
--
-- AUTO_INCREMENT for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
MODIFY `tb_provinsi_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_relationship`
--
ALTER TABLE `tb_relationship`
MODIFY `tb_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tb_ritual_activity`
--
ALTER TABLE `tb_ritual_activity`
MODIFY `tb_ritual_activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sentra`
--
ALTER TABLE `tb_sentra`
MODIFY `tb_sentra_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tb_settings`
--
ALTER TABLE `tb_settings`
MODIFY `tb_settings_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
