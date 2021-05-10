-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 06:11 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_accessories`
--

CREATE TABLE `tb_accessories` (
  `tb_acces_id` int(11) NOT NULL,
  `tb_acces_libid` int(11) NOT NULL,
  `tb_acces_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_acces_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tb_acces_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_acces_creby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_acces_editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_acces_editby` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_area`
--

CREATE TABLE `tb_area` (
  `tb_area_id` int(11) NOT NULL,
  `tb_area_libid` int(11) NOT NULL,
  `tb_area_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_area_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tb_area_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_area_creby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_area_editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_area_editby` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking_access`
--

CREATE TABLE `tb_booking_access` (
  `tb_booking_access_id` int(11) NOT NULL,
  `tb_booking_access_accessid` int(11) NOT NULL,
  `tb_booking_access_userid` int(11) NOT NULL,
  `tb_booking_access_datestart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_access_dateend` datetime NOT NULL,
  `tb_booking_access_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_access_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking_area`
--

CREATE TABLE `tb_booking_area` (
  `tb_booking_area_id` int(11) NOT NULL,
  `tb_booking_area_areaid` int(11) NOT NULL,
  `tb_booking_area_userid` int(11) NOT NULL,
  `tb_booking_area_datestart` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_area_dateend` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_area_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_area_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking_expert`
--

CREATE TABLE `tb_booking_expert` (
  `tb_booking_expert_id` int(11) NOT NULL,
  `tb_booking_expert_expertid` int(11) NOT NULL,
  `tb_booking_expert_userid` int(11) NOT NULL,
  `tb_booking_expert_datestart` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_expert_dateend` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tb_booking_expert_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tb_booking_expert_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_expert`
--

CREATE TABLE `tb_expert` (
  `tb_expert_id` int(11) NOT NULL,
  `tb_expert_libid` int(11) NOT NULL,
  `tb_expert_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_expert_gid` int(11) NOT NULL,
  `tb_expert_descript` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_expert_tel` int(10) UNSIGNED ZEROFILL NOT NULL,
  `tb_expert_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tb_expert_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_expertgroup`
--

CREATE TABLE `tb_expertgroup` (
  `tb_expertgroup_id` int(11) NOT NULL,
  `tb_expertgroup_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_library`
--

CREATE TABLE `tb_library` (
  `tb_library_id` int(11) NOT NULL,
  `tb_library_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_library_no` int(11) NOT NULL,
  `tb_library_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_library_creby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_library_editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_library_editby` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `tb_user_id` int(11) NOT NULL,
  `tb_user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tb_user_tel` int(10) UNSIGNED ZEROFILL NOT NULL,
  `tb_user_studentid` int(11) NOT NULL,
  `tb_user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tb_user_credate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `tb_user_lastlogin` datetime NOT NULL,
  `tb_user_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_accessories`
--
ALTER TABLE `tb_accessories`
  ADD PRIMARY KEY (`tb_acces_id`),
  ADD KEY `tb_acces_libid` (`tb_acces_libid`);

--
-- Indexes for table `tb_area`
--
ALTER TABLE `tb_area`
  ADD PRIMARY KEY (`tb_area_id`),
  ADD KEY `tb_area_libid` (`tb_area_libid`);

--
-- Indexes for table `tb_booking_access`
--
ALTER TABLE `tb_booking_access`
  ADD PRIMARY KEY (`tb_booking_access_id`),
  ADD KEY `tb_booking_access_accessid` (`tb_booking_access_accessid`),
  ADD KEY `tb_booking_access_userid` (`tb_booking_access_userid`);

--
-- Indexes for table `tb_booking_area`
--
ALTER TABLE `tb_booking_area`
  ADD PRIMARY KEY (`tb_booking_area_id`);

--
-- Indexes for table `tb_booking_expert`
--
ALTER TABLE `tb_booking_expert`
  ADD PRIMARY KEY (`tb_booking_expert_id`),
  ADD KEY `tb_booking_expert_userid` (`tb_booking_expert_userid`),
  ADD KEY `tb_booking_expert_expertid` (`tb_booking_expert_expertid`);

--
-- Indexes for table `tb_expert`
--
ALTER TABLE `tb_expert`
  ADD PRIMARY KEY (`tb_expert_id`),
  ADD KEY `tb_expert_descript` (`tb_expert_descript`),
  ADD KEY `tb_expert_libid` (`tb_expert_libid`);

--
-- Indexes for table `tb_expertgroup`
--
ALTER TABLE `tb_expertgroup`
  ADD PRIMARY KEY (`tb_expertgroup_id`);

--
-- Indexes for table `tb_library`
--
ALTER TABLE `tb_library`
  ADD PRIMARY KEY (`tb_library_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`tb_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_accessories`
--
ALTER TABLE `tb_accessories`
  MODIFY `tb_acces_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_area`
--
ALTER TABLE `tb_area`
  MODIFY `tb_area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_booking_access`
--
ALTER TABLE `tb_booking_access`
  MODIFY `tb_booking_access_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_booking_area`
--
ALTER TABLE `tb_booking_area`
  MODIFY `tb_booking_area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_booking_expert`
--
ALTER TABLE `tb_booking_expert`
  MODIFY `tb_booking_expert_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_expert`
--
ALTER TABLE `tb_expert`
  MODIFY `tb_expert_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_expertgroup`
--
ALTER TABLE `tb_expertgroup`
  MODIFY `tb_expertgroup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_library`
--
ALTER TABLE `tb_library`
  MODIFY `tb_library_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `tb_user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
