-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2015 at 09:15 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

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
  `menu_function_image` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `menu_function`
--

INSERT INTO `menu_function` (`menu_function_id`, `menu_function_name`, `menu_function_link`, `status`, `menu_function_level`, `menu_function_parent`, `company_code`, `menu_function_order`, `menu_function_idul`, `menu_function_color`, `menu_function_image`) VALUES
(1, 'Dashboard', 'javascript::', 1, 1, 0, 0, 1, '', 'color_26', 'img/menu_icons/others.png'),
(2, 'Data Umat', '#collapse2', 1, 1, 0, 0, 2, 'collapse2', 'color_12', 'img/menu_icons/tables.png'),
(3, 'List Umat', 'listumat', 1, 2, 2, 0, 0, '', '', ''),
(6, 'Input Umat', 'inputumat', 1, 2, 2, 0, 0, '', '', ''),
(10, 'Administator', '#collapse4', 1, 1, 0, 0, 2, 'collapse4', 'color_12', 'img/menu_icons/tables.png'),
(12, 'Country', 'country', 1, 2, 10, 0, 3, '', '', ''),
(16, 'Setting', 'setting', 2, 1, 0, 0, 6, '', '', ''),
(19, 'User', '#collapse3', 1, 1, 0, 0, 8, 'collapse3', 'color_25', 'img/menu_icons/others.png'),
(20, 'User', 'user', 1, 2, 19, 0, 2, '', '', ''),
(21, 'Group', 'group', 1, 2, 19, 0, 0, '', '', ''),
(31, 'Provinsi', 'provinsi', 1, 2, 10, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `structure_menu`
--

CREATE TABLE IF NOT EXISTS `structure_menu` (
`structure_menu_id` int(10) NOT NULL,
  `menu_function_id` int(10) NOT NULL,
  `tb_group_id` int(10) NOT NULL,
  `structure_menu_action` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `structure_menu`
--

INSERT INTO `structure_menu` (`structure_menu_id`, `menu_function_id`, `tb_group_id`, `structure_menu_action`, `status`) VALUES
(1, 1, 1, '2,2,2,2', 1),
(2, 2, 1, '2,1,2,2', 1),
(4, 3, 1, '2,2,2,2', 1),
(6, 21, 1, '2,2,2,2', 1),
(7, 20, 1, '2,2,2,2', 1),
(8, 19, 1, '2,2,2,2', 1),
(21, 16, 1, '2,1,1,1', 1),
(29, 6, 1, '2,2,2,2', 1),
(30, 10, 1, '2,2,2,2', 1),
(31, 31, 1, '2,2,2,2', 1),
(32, 12, 1, '2,2,2,2', 1);

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
  `tb_address_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
-- Table structure for table `tb_cetya`
--

CREATE TABLE IF NOT EXISTS `tb_cetya` (
`tb_cetya_id` int(10) unsigned NOT NULL,
  `tb_cetya_cetya_name` varchar(50) DEFAULT NULL,
  `tb_cetya_cetya_code` varchar(50) DEFAULT NULL,
  `tb_cetya_remarks` varchar(255) DEFAULT NULL,
  `tb_cetya_sentra_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

CREATE TABLE IF NOT EXISTS `tb_city` (
`tb_city_id` int(10) unsigned NOT NULL,
  `tb_city_city_name` varchar(50) DEFAULT NULL,
  `tb_city_city_code` varchar(50) DEFAULT NULL,
  `tb_city_city_count` int(11) DEFAULT NULL,
  `tb_city_approved_status` tinyint(1) DEFAULT NULL,
  `tb_province_id` int(10) unsigned DEFAULT NULL,
  `tb_city_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE IF NOT EXISTS `tb_country` (
`tb_country_id` int(10) unsigned NOT NULL,
  `tb_country_country_name` varchar(50) DEFAULT NULL,
  `tb_country_country_code` varchar(50) DEFAULT NULL,
  `tb_country_country_count` int(11) DEFAULT NULL,
  `tb_country_approved_status` tinyint(1) DEFAULT NULL,
  `tb_address_id` int(10) unsigned DEFAULT NULL,
  `tb_country_province_json` text,
  `tb_country_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dharmasala`
--

CREATE TABLE IF NOT EXISTS `tb_dharmasala` (
`tb_dharmasala_id` int(10) unsigned NOT NULL,
  `tb_dharmasala_dharmasala_name` varchar(50) DEFAULT NULL,
  `tb_dharmasala_dharmasala_code` varchar(50) DEFAULT NULL,
  `tb_dharmasala_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_family_relationship`
--

CREATE TABLE IF NOT EXISTS `tb_family_relationship` (
`tb_family_relationship_id` int(10) unsigned NOT NULL,
  `tb_family_relationship_personal_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_related_personal_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_relationship_id` int(10) unsigned DEFAULT NULL,
  `tb_family_relationship_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`tb_group_id`, `tb_group_name`, `tb_group_code`, `status`, `company_code`) VALUES
(1, 'admin', 'admin', 1, '1'),
(4, 'sales', 'sales', 1, '1'),
(5, 'admin', 'admin', 1, '3');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_log_code`
--

CREATE TABLE IF NOT EXISTS `tb_log_code` (
`tb_log_code_id` int(10) unsigned NOT NULL,
  `tb_log_code_code_name` varchar(50) DEFAULT NULL,
  `tb_log_code_approved_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_personal_identity`
--

CREATE TABLE IF NOT EXISTS `tb_personal_identity` (
`tb_personal_identity_id` int(10) unsigned NOT NULL,
  `tb_personal_identity_name` varchar(50) DEFAULT NULL,
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
  `tb_personal_identity_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_province`
--

CREATE TABLE IF NOT EXISTS `tb_province` (
`tb_province_id` int(10) unsigned NOT NULL,
  `tb_province_province_name` varchar(50) DEFAULT NULL,
  `tb_province_province_code` varchar(50) DEFAULT NULL,
  `tb_province_province_count` int(11) DEFAULT NULL,
  `tb_province_approved_status` tinyint(1) DEFAULT NULL,
  `tb_country_id` int(10) unsigned DEFAULT NULL,
  `tb_province_city_json` text,
  `tb_province_remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `tb_relationship_relation_code` varchar(50) DEFAULT NULL,
  `tb_relationship_relationship_id` int(10) unsigned DEFAULT NULL,
  `tb_relationship_approved_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sentra`
--

CREATE TABLE IF NOT EXISTS `tb_sentra` (
`tb_sentra_id` int(10) unsigned NOT NULL,
  `tb_sentra_remarks` varchar(255) DEFAULT NULL,
  `tb_sentra_province_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_settings`
--

CREATE TABLE IF NOT EXISTS `tb_settings` (
`tb_settings_id` int(6) NOT NULL,
  `tb_settings_code` varchar(225) NOT NULL,
  `tb_settings_name` varchar(225) NOT NULL,
  `user_username` varchar(225) NOT NULL,
  `type_backend` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_settings`
--

INSERT INTO `tb_settings` (`tb_settings_id`, `tb_settings_code`, `tb_settings_name`, `user_username`, `type_backend`) VALUES
(1, '0000000000000001', 'BDI', 'admin', 1),
(2, '2', 'TES', 'tes', 1),
(3, '003', 'Quick Example', 'admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`user_id` int(11) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_status` int(11) NOT NULL,
  `tb_group_id` int(6) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `company_code` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_username`, `user_password`, `user_status`, `tb_group_id`, `user_fullname`, `company_code`) VALUES
(1, 'admin', 'admin', 1, 1, 'tes', 1),
(4, 'nanang', 'nanang', 1, 5, 'Nanang Hendro', 3);

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
 ADD PRIMARY KEY (`tb_country_id`), ADD KEY `fk_tb_country_tb_address_id` (`tb_address_id`);

--
-- Indexes for table `tb_dharmasala`
--
ALTER TABLE `tb_dharmasala`
 ADD PRIMARY KEY (`tb_dharmasala_id`);

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
MODIFY `menu_function_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `structure_menu`
--
ALTER TABLE `structure_menu`
MODIFY `structure_menu_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
MODIFY `tb_address_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_address_history`
--
ALTER TABLE `tb_address_history`
MODIFY `tb_address_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_cetya`
--
ALTER TABLE `tb_cetya`
MODIFY `tb_cetya_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_city`
--
ALTER TABLE `tb_city`
MODIFY `tb_city_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_country`
--
ALTER TABLE `tb_country`
MODIFY `tb_country_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dharmasala`
--
ALTER TABLE `tb_dharmasala`
MODIFY `tb_dharmasala_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_family_relationship`
--
ALTER TABLE `tb_family_relationship`
MODIFY `tb_family_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
MODIFY `tb_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_log_activity`
--
ALTER TABLE `tb_log_activity`
MODIFY `tb_log_activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
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
MODIFY `tb_province_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
MODIFY `tb_provinsi_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_relationship`
--
ALTER TABLE `tb_relationship`
MODIFY `tb_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_ritual_activity`
--
ALTER TABLE `tb_ritual_activity`
MODIFY `tb_ritual_activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_sentra`
--
ALTER TABLE `tb_sentra`
MODIFY `tb_sentra_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_settings`
--
ALTER TABLE `tb_settings`
MODIFY `tb_settings_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
ADD CONSTRAINT `fk_tb_address_history_tb_personal_id` FOREIGN KEY (`tb_address_history_personal_id`) REFERENCES `tb_personal_identity` (`tb_personal_identity_id`),
ADD CONSTRAINT `fk_tb_address_history_tb_address_id` FOREIGN KEY (`tb_address_history_address_id`) REFERENCES `tb_address` (`tb_address_id`),
ADD CONSTRAINT `fk_tb_address_history_tb_approved_by` FOREIGN KEY (`tb_address_history_approved_by`) REFERENCES `tb_user_role` (`tb_user_role_id`);

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
-- Constraints for table `tb_country`
--
ALTER TABLE `tb_country`
ADD CONSTRAINT `fk_tb_country_tb_address_id` FOREIGN KEY (`tb_address_id`) REFERENCES `tb_address` (`tb_address_id`);

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
ADD CONSTRAINT `fk_tb_relationship_tb_relationship_id` FOREIGN KEY (`tb_relationship_relationship_id`) REFERENCES `tb_personal_identity` (`tb_personal_identity_id`);

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
