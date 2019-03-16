-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2019 at 10:54 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmabdcom_smartwatermeter`
--

-- --------------------------------------------------------

--
-- Table structure for table `current_reading`
--

CREATE TABLE `current_reading` (
  `number` int(10) NOT NULL,
  `datetimee` datetime(6) NOT NULL,
  `MeterAddr` bigint(32) NOT NULL,
  `MeterReading` double NOT NULL,
  `MeterStatus` int(1) NOT NULL,
  `valveStatus` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `current_reading`
--

INSERT INTO `current_reading` (`number`, `datetimee`, `MeterAddr`, `MeterReading`, `MeterStatus`, `valveStatus`) VALUES
(1, '2019-03-13 10:55:53.000000', 101806060908, 0.6, 1, 1),
(2, '2019-03-16 20:38:05.622118', 101806060700, 1561, 0, 0),
(3, '2019-03-12 11:53:04.422124', 101806060800, 2639, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_area`
--

CREATE TABLE `tbl_add_area` (
  `area_id` int(32) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `area_code` varchar(20) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_add_area`
--

INSERT INTO `tbl_add_area` (`area_id`, `area_name`, `area_code`, `remark`) VALUES
(1, 'Mirpur', '001', 'test'),
(2, 'Mirpur-10', '002', 'test'),
(3, 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `privilege` int(1) NOT NULL DEFAULT '1',
  `user_name` varchar(32) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `user_id`, `privilege`, `user_name`, `time`) VALUES
(900001, 3, 1, 'admin', '0000-00-00 00:00:00'),
(900002, 21, 1, 'sumaiya', '2018-09-18 18:08:04'),
(900003, 22, 1, 'dpridoy', '2018-09-18 18:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_collector`
--

CREATE TABLE `tbl_collector` (
  `id` int(32) NOT NULL,
  `concentrator_address` int(32) NOT NULL,
  `collector_name` int(32) NOT NULL,
  `boundary_value` int(32) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_collector`
--

INSERT INTO `tbl_collector` (`id`, `concentrator_address`, `collector_name`, `boundary_value`, `remark`) VALUES
(1, 18625, 300, 10, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `company_id` int(32) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `contact_number` varchar(32) NOT NULL,
  `email_address` varchar(32) NOT NULL,
  `company_additional_address` varchar(32) NOT NULL,
  `company_area` varchar(32) NOT NULL,
  `company_district` varchar(32) NOT NULL,
  `company_city` varchar(32) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`company_id`, `company_name`, `contact_number`, `email_address`, `company_additional_address`, `company_area`, `company_district`, `company_city`, `time`) VALUES
(20001, 'DataSoft Manufacturing & Assembly Inc. Ltd.', '+8801749466468', 'info@dma-bd.com', 'Bangobandhu Hi Tech City', 'Kaliakoir', 'Gazipur', 'Dhaka', '2018-07-01 05:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_concentrator`
--

CREATE TABLE `tbl_concentrator` (
  `id` int(32) NOT NULL,
  `concentrator_name` varchar(32) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `concentrator_address` int(32) NOT NULL,
  `protocol_type` varchar(50) NOT NULL,
  `communication_type` varchar(50) NOT NULL,
  `overtime_time` int(32) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `port` int(32) NOT NULL,
  `network_access_point` varchar(50) NOT NULL,
  `heart_cycle` int(32) NOT NULL,
  `reading_day` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_concentrator`
--

INSERT INTO `tbl_concentrator` (`id`, `concentrator_name`, `area_name`, `concentrator_address`, `protocol_type`, `communication_type`, `overtime_time`, `ip_address`, `port`, `network_access_point`, `heart_cycle`, `reading_day`) VALUES
(1, '18625', 'Mirpur', 18625, 'DTU Transparent', 'Gprs Fixed Ip', 30, '182.163.112.197', 8001, 'CMNET', 3, 28),
(2, '1212', 'Mirpur-10', 1212, 'DTU Transparent', 'Gprs Fixed Ip', 30, '182.163.112.197', 8001, 'CMNET', 3, 28),
(3, '1213', 'Mirpur', 1213, 'DTU Transparent', 'Gprs Fixed Ip', 30, '182.163.112.197', 8001, 'CMNET', 3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `privilege` int(1) NOT NULL DEFAULT '3',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `user_id`, `user_name`, `privilege`, `time`) VALUES
(1, 4, 'nuha', 3, '2018-08-13 12:11:50'),
(14, 18, 'ridoy', 3, '2018-09-05 14:42:54'),
(15, 19, 'prio', 3, '2018-09-05 14:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_assigned`
--

CREATE TABLE `tbl_device_assigned` (
  `assign_id` int(32) NOT NULL,
  `device_id` varchar(32) NOT NULL,
  `assigned_by` int(32) NOT NULL,
  `assigned_to` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_device_assigned`
--

INSERT INTO `tbl_device_assigned` (`assign_id`, `device_id`, `assigned_by`, `assigned_to`) VALUES
(1, '00000047100', 12, 12),
(2, '00000047100', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_data`
--

CREATE TABLE `tbl_device_data` (
  `data_id` int(32) NOT NULL,
  `device_id` varchar(15) NOT NULL,
  `tank_percentage` double NOT NULL,
  `status_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_device_data`
--

INSERT INTO `tbl_device_data` (`data_id`, `device_id`, `tank_percentage`, `status_time`) VALUES
(51, '00000047105', 96.875, '2016-12-31 18:25:30'),
(52, '00000047105', 96.8125, '2016-12-31 18:26:00'),
(53, '00000047105', 96.75, '2016-12-31 18:26:30'),
(54, '00000047105', 96.6875, '2016-12-31 18:27:00'),
(55, '00000047105', 96.625, '2016-12-31 18:27:30'),
(56, '00000047105', 96.5625, '2016-12-31 18:28:00'),
(57, '00000047105', 96.5, '2016-12-31 18:28:30'),
(58, '00000047105', 96.4375, '2016-12-31 18:29:00'),
(59, '00000047105', 96.375, '2016-12-31 18:29:30'),
(60, '00000047105', 96.3125, '2016-12-31 18:30:00'),
(61, '00000047105', 96.25, '2016-12-31 18:30:30'),
(62, '00000047105', 96.1875, '2016-12-31 18:31:00'),
(63, '00000047105', 96.125, '2016-12-31 18:31:30'),
(64, '00000047105', 96.0625, '2016-12-31 18:32:00'),
(65, '00000047105', 96, '2016-12-31 18:32:30'),
(66, '00000047105', 95.9375, '2016-12-31 18:33:00'),
(67, '00000047105', 95.875, '2016-12-31 18:33:30'),
(68, '00000047105', 95.8125, '2016-12-31 18:34:00'),
(69, '00000047105', 95.75, '2016-12-31 18:34:30'),
(70, '00000047105', 95.6875, '2016-12-31 18:35:00'),
(71, '00000047105', 95.625, '2016-12-31 18:35:30'),
(72, '00000047105', 95.5625, '2016-12-31 18:36:00'),
(73, '00000047105', 95.5, '2016-12-31 18:36:30'),
(74, '00000047105', 95.4375, '2016-12-31 18:37:00'),
(75, '00000047105', 95.375, '2016-12-31 18:37:30'),
(76, '00000047105', 95.3125, '2016-12-31 18:38:00'),
(77, '00000047105', 95.25, '2016-12-31 18:38:30'),
(78, '00000047105', 95.1875, '2016-12-31 18:39:00'),
(79, '00000047105', 95.125, '2016-12-31 18:39:30'),
(80, '00000047105', 95.0625, '2016-12-31 18:40:00'),
(81, '00000047105', 95, '2016-12-31 18:40:30'),
(82, '00000047105', 94.9375, '2016-12-31 18:41:00'),
(83, '00000047105', 94.875, '2016-12-31 18:41:30'),
(84, '00000047105', 94.8125, '2016-12-31 18:42:00'),
(85, '00000047105', 94.75, '2016-12-31 18:42:30'),
(86, '00000047105', 94.6875, '2016-12-31 18:43:00'),
(87, '00000047105', 94.625, '2016-12-31 18:43:30'),
(88, '00000047105', 94.5625, '2016-12-31 18:44:00'),
(89, '00000047105', 94.5, '2016-12-31 18:44:30'),
(90, '00000047105', 94.4375, '2016-12-31 18:45:00'),
(91, '00000047105', 94.375, '2016-12-31 18:45:30'),
(92, '00000047105', 94.3125, '2016-12-31 18:46:00'),
(93, '00000047105', 94.25, '2016-12-31 18:46:30'),
(94, '00000047105', 94.1875, '2016-12-31 18:47:00'),
(95, '00000047105', 94.125, '2016-12-31 18:47:30'),
(96, '00000047105', 94.0625, '2016-12-31 18:48:00'),
(97, '00000047105', 94, '2016-12-31 18:48:30'),
(98, '00000047105', 93.9375, '2016-12-31 18:49:00'),
(99, '00000047105', 93.875, '2016-12-31 18:49:30'),
(100, '00000047105', 93.8125, '2016-12-31 18:50:00'),
(101, '00000047105', 93.75, '2016-12-31 18:50:30'),
(102, '00000047105', 93.6875, '2016-12-31 18:51:00'),
(103, '00000047105', 93.625, '2016-12-31 18:51:30'),
(104, '00000047105', 93.5625, '2016-12-31 18:52:00'),
(105, '00000047105', 93.5, '2016-12-31 18:52:30'),
(106, '00000047105', 93.4375, '2016-12-31 18:53:00'),
(107, '00000047105', 93.375, '2016-12-31 18:53:30'),
(108, '00000047105', 93.3125, '2016-12-31 18:54:00'),
(109, '00000047105', 93.25, '2016-12-31 18:54:30'),
(110, '00000047105', 93.1875, '2016-12-31 18:55:00'),
(111, '00000047105', 93.125, '2016-12-31 18:55:30'),
(112, '00000047105', 93.0625, '2016-12-31 18:56:00'),
(113, '00000047105', 93, '2016-12-31 18:56:30'),
(114, '00000047105', 92.9375, '2016-12-31 18:57:00'),
(115, '00000047105', 92.875, '2016-12-31 18:57:30'),
(116, '00000047105', 92.8125, '2016-12-31 18:58:00'),
(117, '00000047105', 92.75, '2016-12-31 18:58:30'),
(118, '00000047105', 92.6875, '2016-12-31 18:59:00'),
(119, '00000047105', 92.625, '2016-12-31 18:59:30'),
(120, '00000047105', 92.5625, '2016-12-31 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_list`
--

CREATE TABLE `tbl_device_list` (
  `id` int(11) NOT NULL,
  `device_id` varchar(20) NOT NULL,
  `puk` varchar(60) NOT NULL,
  `sys_registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_device_list`
--

INSERT INTO `tbl_device_list` (`id`, `device_id`, `puk`, `sys_registration_date`) VALUES
(101, '00000047100', 'd451b6247efc013cb1c45c0020be0f3f', '2018-08-16'),
(102, '00000047101', '42bbf1faa904db802af2d2f16e3df514', '2018-08-16'),
(103, '00000047102', '7b1b602c14fec7e66a35d909fe822d43', '2018-08-16'),
(104, '00000047103', '7c31001432aaa353347fdf2c26098881', '2018-08-16'),
(105, '00000047104', '376759bb6290939e646372b2c48e931d', '2018-08-16'),
(106, '00000047105', 'a0cc2fe436b0ee3221f7f05f97c1cfd9', '2018-08-16'),
(107, '00000047106', '60c3699f0526cb70dde4e5d6536684f6', '2018-08-16'),
(108, '00000047107', 'ae4c54d023399547336d2a32dc4af363', '2018-08-16'),
(109, '00000047108', '3ba00d5867d24c94d643a75a3f9163c7', '2018-08-16'),
(110, '00000047109', 'c27af76654b1d8c4ddd2b76527ef5aa0', '2018-08-16'),
(111, '00000047110', 'e71bd1ab83ced9159aba134e54eb4a6d', '2018-08-16'),
(112, '00000047111', '4e1002418d82b766ab32f9952e318be1', '2018-08-16'),
(113, '00000047112', '0ec3033480be4ebb0de818f3d9f561de', '2018-08-16'),
(114, '00000047113', '87a990e788d070975f41f137ccb2f3ad', '2018-08-16'),
(115, '00000047114', '0367004910662bdd52c1089c9febdf37', '2018-08-16'),
(116, '00000047115', '87f05a2b79bfb80ee944ec54019ce4cf', '2018-08-16'),
(117, '00000047116', '5e67e95187964a9223bc82a0a1745f66', '2018-08-16'),
(118, '00000047117', '40fc7c0efe58beba097a764ed85c0dd7', '2018-08-16'),
(119, '00000047118', 'b002fbc4d51da02e47c8950a66977817', '2018-08-16'),
(120, '00000047119', '75d8a208afbcd226341326c1d975d836', '2018-08-16'),
(121, '00000047120', '0740beda4f742194cefd37459b7d243e', '2018-08-16'),
(122, '00000047121', '647563466a3eae04d90ceaf981959ecb', '2018-08-16'),
(123, '00000047122', 'd83b8b2d6fcb6c4e66b0d947797ba393', '2018-08-16'),
(124, '00000047123', '4d8570137eb55da0c7d267a0bb050e83', '2018-08-16'),
(125, '00000047124', 'ca51ee38d6f03165bd8b2bf3fc1bada6', '2018-08-16'),
(126, '00000047125', '80206a63e56f7ca32e938011da18503b', '2018-08-16'),
(127, '00000047126', '8d1e0e5f359bc598896d4392062fcfe7', '2018-08-16'),
(128, '00000047127', 'aed8f7c51aff52dbebaf06004cfc2b9a', '2018-08-16'),
(129, '00000047128', '8f48623a7349e77930d1d93d3c7a9724', '2018-08-16'),
(130, '00000047129', '79e8ae2015e3ef7226f7e7c56b09e0a7', '2018-08-16'),
(131, '00000047130', 'd96f4b20bff3bd6a4cdefdf364e71dba', '2018-08-16'),
(132, '00000047131', '47b5a8383cd39aaf1c6b051fa9cdec32', '2018-08-16'),
(133, '00000047132', 'c6d73e860bca9fe346e4da1c3fe90dc9', '2018-08-16'),
(134, '00000047133', '32fd9d318f8c52504b0ee6f4c4e48e81', '2018-08-16'),
(135, '00000047134', '78a579077e8bd37518dcfe0ca5eb6399', '2018-08-16'),
(136, '00000047135', '7501c9d7af61bf27f658e934b1f25f6b', '2018-08-16'),
(137, '00000047136', '21cf791b833535994896865d7849d414', '2018-08-16'),
(138, '00000047137', 'fcbe21761ec6b7b27ae0cf7d784e1484', '2018-08-16'),
(139, '00000047138', 'de0a0476a0bac81784062a75186758a6', '2018-08-16'),
(140, '00000047139', '28028fd2e722e8d3a742c5f6a3d007be', '2018-08-16'),
(141, '00000047140', 'a19ecdfec73ba3d3da9d04294b2b8dba', '2018-08-16'),
(142, '00000047141', '4c154052e92d3c45d0ffe3e00e21ce56', '2018-08-16'),
(143, '00000047142', '3f9c851005154a269db7c1fc18c9818c', '2018-08-16'),
(144, '00000047143', '90c511fa091ea54a6a0751fcf2d4a179', '2018-08-16'),
(145, '00000047144', '9278805f2bc3fa6d4f7b34435381a0b1', '2018-08-16'),
(146, '01', '0aa8d9c9d7ebcc2368f06b8e308f35e7', '2018-08-16'),
(147, '00000047146', 'cd6d47fbb517e8658278c96142739c19', '2018-08-16'),
(148, '00000047147', 'f742d09c04759be0f3c1329f2488c842', '2018-08-16'),
(149, '00000047148', '8cd60138fb504e2af8656ab0799ad0c0', '2018-08-16'),
(150, '00000047149', '5cc86855687b01a80ecdd7d16aae2877', '2018-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_reserved`
--

CREATE TABLE `tbl_device_reserved` (
  `reservation_id` int(32) NOT NULL,
  `device_id` varchar(32) NOT NULL,
  `reserved_by` int(32) NOT NULL,
  `reserved_reason` text NOT NULL,
  `reservation_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_device_reserved`
--

INSERT INTO `tbl_device_reserved` (`reservation_id`, `device_id`, `reserved_by`, `reserved_reason`, `reservation_time`) VALUES
(1, '00000047109', 3, 'Broken', '2018-10-30 12:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meter_details`
--

CREATE TABLE `tbl_meter_details` (
  `id` int(32) NOT NULL,
  `meter_id` varchar(50) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `concentrator_name` varchar(50) NOT NULL,
  `collector_name` varchar(50) NOT NULL,
  `meter_address` varchar(100) NOT NULL,
  `user_id` int(32) NOT NULL,
  `registered_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_meter_details`
--

INSERT INTO `tbl_meter_details` (`id`, `meter_id`, `area_name`, `concentrator_name`, `collector_name`, `meter_address`, `user_id`, `registered_time`) VALUES
(1, '101806060908', 'Mirpur', '18625', '300', '192/2, mirpur-10', 4, '0000-00-00 00:00:00'),
(2, '101806060907', 'Mirpur', '18625', '300', '192/2, Mirpur-10', 4, '2018-11-08 03:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monthlymeterreading`
--

CREATE TABLE `tbl_monthlymeterreading` (
  `meterreadingId` int(10) NOT NULL,
  `meterno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `meterReading` int(10) NOT NULL,
  `meterBill` int(10) NOT NULL,
  `balance` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_monthlymeterreading`
--

INSERT INTO `tbl_monthlymeterreading` (`meterreadingId`, `meterno`, `Date`, `meterReading`, `meterBill`, `balance`, `status`) VALUES
(1, '101806060700', '2018-12-31', 1123, 225, 50, 1),
(2, '101806060700', '2019-01-31', 1250, 250, -100, 1),
(3, '101806060700', '2019-02-28', 1355, 270, 60, 0),
(5, '101806060800', '2018-12-31', 1510, 302, -20, 1),
(6, '101806060800', '2019-01-31', 1800, 360, 60, 1),
(7, '101806060800', '2019-02-28', 2550, 510, -10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_operator`
--

CREATE TABLE `tbl_operator` (
  `operator_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `privilege` int(1) NOT NULL DEFAULT '2',
  `user_name` varchar(32) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_operator`
--

INSERT INTO `tbl_operator` (`operator_id`, `user_id`, `privilege`, `user_name`, `time`) VALUES
(1, 20, 2, 'azprio', '2018-09-18 17:53:44'),
(2, 23, 2, 'aktar', '2018-09-18 18:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_secret`
--

CREATE TABLE `tbl_secret` (
  `code_id` int(11) NOT NULL,
  `puk_code` varchar(20) NOT NULL,
  `hash_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_secret`
--

INSERT INTO `tbl_secret` (`code_id`, `puk_code`, `hash_code`) VALUES
(51, '4Z0US148', 'd451b6247efc013cb1c45c0020be0f3f'),
(52, 'OKHRETCD', '42bbf1faa904db802af2d2f16e3df514'),
(53, 'HSW42ELZ', '7b1b602c14fec7e66a35d909fe822d43'),
(54, 'U6QWE67X', '7c31001432aaa353347fdf2c26098881'),
(55, 'THYVVY5A', '376759bb6290939e646372b2c48e931d'),
(56, '2T53TVMK', 'a0cc2fe436b0ee3221f7f05f97c1cfd9'),
(57, 'EI441N3V', '60c3699f0526cb70dde4e5d6536684f6'),
(58, 'AB8O6JV3', 'ae4c54d023399547336d2a32dc4af363'),
(59, 'EGYWH81Q', '3ba00d5867d24c94d643a75a3f9163c7'),
(60, 'O4HYKYPZ', 'c27af76654b1d8c4ddd2b76527ef5aa0'),
(61, 'CT1BYPNE', 'e71bd1ab83ced9159aba134e54eb4a6d'),
(62, 'I7IALD5T', '4e1002418d82b766ab32f9952e318be1'),
(63, '3BQP8Z8Y', '0ec3033480be4ebb0de818f3d9f561de'),
(64, 'YQ3XYU40', '87a990e788d070975f41f137ccb2f3ad'),
(65, 'KQ719L31', '0367004910662bdd52c1089c9febdf37'),
(66, '2HVOP3L1', '87f05a2b79bfb80ee944ec54019ce4cf'),
(67, 'RSB3YFYQ', '5e67e95187964a9223bc82a0a1745f66'),
(68, 'SLYW58UB', '40fc7c0efe58beba097a764ed85c0dd7'),
(69, 'Y0JWB0MK', 'b002fbc4d51da02e47c8950a66977817'),
(70, 'XO30BPAU', '75d8a208afbcd226341326c1d975d836'),
(71, 'D3LPCRCY', '0740beda4f742194cefd37459b7d243e'),
(72, '8L2SSS1F', '647563466a3eae04d90ceaf981959ecb'),
(73, '87XR29IB', 'd83b8b2d6fcb6c4e66b0d947797ba393'),
(74, 'TC0ITIAJ', '4d8570137eb55da0c7d267a0bb050e83'),
(75, 'EN535GGB', 'ca51ee38d6f03165bd8b2bf3fc1bada6'),
(76, 'MLW9ZA1P', '80206a63e56f7ca32e938011da18503b'),
(77, '4ZVCPD0I', '8d1e0e5f359bc598896d4392062fcfe7'),
(78, 'C2SFHPPD', 'aed8f7c51aff52dbebaf06004cfc2b9a'),
(79, '2EGEW337', '8f48623a7349e77930d1d93d3c7a9724'),
(80, '98IS61EU', '79e8ae2015e3ef7226f7e7c56b09e0a7'),
(81, '6X0S0NT5', 'd96f4b20bff3bd6a4cdefdf364e71dba'),
(82, 'UVV5L8O9', '47b5a8383cd39aaf1c6b051fa9cdec32'),
(83, 'MHB7XQC6', 'c6d73e860bca9fe346e4da1c3fe90dc9'),
(84, 'VR9H1ZVH', '32fd9d318f8c52504b0ee6f4c4e48e81'),
(85, '3EYMPF5C', '78a579077e8bd37518dcfe0ca5eb6399'),
(86, 'GKF5OO3H', '7501c9d7af61bf27f658e934b1f25f6b'),
(87, 'TGVWLEUW', '21cf791b833535994896865d7849d414'),
(88, 'L7I9F8TF', 'fcbe21761ec6b7b27ae0cf7d784e1484'),
(89, 'Y9M5TEHY', 'de0a0476a0bac81784062a75186758a6'),
(90, 'FG1H0YGH', '28028fd2e722e8d3a742c5f6a3d007be'),
(91, '92AG95J6', 'a19ecdfec73ba3d3da9d04294b2b8dba'),
(92, 'XIA2MUVD', '4c154052e92d3c45d0ffe3e00e21ce56'),
(93, 'OTJ5OFIT', '3f9c851005154a269db7c1fc18c9818c'),
(94, 'XC4JHQT9', '90c511fa091ea54a6a0751fcf2d4a179'),
(95, 'OIZF5NH5', '9278805f2bc3fa6d4f7b34435381a0b1'),
(96, 'O4RHLI7G', '0aa8d9c9d7ebcc2368f06b8e308f35e7'),
(97, '7AC03YJQ', 'cd6d47fbb517e8658278c96142739c19'),
(98, 'K7DGBA7K', 'f742d09c04759be0f3c1329f2488c842'),
(99, '6MIES357', '8cd60138fb504e2af8656ab0799ad0c0'),
(100, 'B5W07EHZ', '5cc86855687b01a80ecdd7d16aae2877');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `settings_id` int(1) NOT NULL,
  `email_host` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email_port` int(10) NOT NULL,
  `sender_login_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sender_login_password` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email_footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `email_host`, `email_port`, `sender_login_email`, `sender_login_password`, `email_footer`) VALUES
(1, 'mail.dma-bd.com', 465, 'watertank@dma-bd.com', 'dmabd987', 'Best Regards,\r\nDataSoft Manufacturing & Assembly Inc. Limited');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shared_users`
--

CREATE TABLE `tbl_shared_users` (
  `shared_id` int(32) NOT NULL,
  `shared_tank_id` int(32) NOT NULL,
  `shared_device_id` varchar(32) NOT NULL,
  `shared_user_id` varchar(32) NOT NULL,
  `shared_user_name` varchar(32) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shared_users`
--

INSERT INTO `tbl_shared_users` (`shared_id`, `shared_tank_id`, `shared_device_id`, `shared_user_id`, `shared_user_name`, `time`) VALUES
(1, 3, '01', '4', 'nuha', '2018-09-24 17:45:47'),
(2, 3, '01', '18', 'ridoy', '2018-10-01 13:30:02'),
(3, 1, '00000047100', '19', 'prio', '2018-10-09 18:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tank_cubicle`
--

CREATE TABLE `tbl_tank_cubicle` (
  `cubicle_tank_id` int(32) NOT NULL,
  `tank_id` int(32) NOT NULL,
  `tank_length` float NOT NULL,
  `tank_width` float NOT NULL,
  `tank_height` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tank_cubicle`
--

INSERT INTO `tbl_tank_cubicle` (`cubicle_tank_id`, `tank_id`, `tank_length`, `tank_width`, `tank_height`) VALUES
(1, 1, 20, 15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tank_cylindrical`
--

CREATE TABLE `tbl_tank_cylindrical` (
  `cylindrical_tank_id` int(32) NOT NULL,
  `tank_id` int(32) NOT NULL,
  `tank_diameter` float NOT NULL,
  `tank_height` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tank_cylindrical`
--

INSERT INTO `tbl_tank_cylindrical` (`cylindrical_tank_id`, `tank_id`, `tank_diameter`, `tank_height`) VALUES
(1, 2, 15, 20),
(2, 3, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tank_details`
--

CREATE TABLE `tbl_tank_details` (
  `tank_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `device_id` varchar(11) NOT NULL,
  `tank_title` varchar(32) NOT NULL,
  `tank_type` varchar(32) NOT NULL,
  `tank_gps_coordinate` varchar(32) NOT NULL,
  `tank_address` text NOT NULL,
  `notification_percentage` int(2) NOT NULL DEFAULT '20',
  `notification_flag` tinyint(1) NOT NULL DEFAULT '0',
  `registered_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tank_details`
--

INSERT INTO `tbl_tank_details` (`tank_id`, `user_id`, `device_id`, `tank_title`, `tank_type`, `tank_gps_coordinate`, `tank_address`, `notification_percentage`, `notification_flag`, `registered_time`) VALUES
(1, 4, '00000047100', 'Kaunia Tank', 'cubicle', '22.37903167900753, 90.1991958450', 'Kaunia Jamidar Bari', 5, 0, '2018-08-29 15:37:40'),
(2, 4, '00000047101', 'Dhaka Tank', 'cylindrical', '23.746039177835584, 90.378726303', 'Dhanmodi', 20, 0, '2018-09-03 13:23:14'),
(3, 19, '01', 'Kaliakoir Tank', 'cylindrical', '24.06090505233564, 90.2249375583', 'Kaliakoir, Gazipur', 20, 0, '2018-09-24 17:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tank_status`
--

CREATE TABLE `tbl_tank_status` (
  `tank_status_id` int(32) NOT NULL,
  `tank_id` int(32) NOT NULL,
  `device_id` varchar(32) NOT NULL,
  `water_percentage` int(3) NOT NULL,
  `last_live_time` datetime NOT NULL,
  `health` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tank_status`
--

INSERT INTO `tbl_tank_status` (`tank_status_id`, `tank_id`, `device_id`, `water_percentage`, `last_live_time`, `health`) VALUES
(1, 1, '00000047100', 15, '2018-08-29 15:37:40', 0),
(2, 2, '00000047101', 10, '2018-09-03 13:23:14', 0),
(3, 3, '01', 1, '2018-09-24 17:45:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(32) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `full_name` varchar(32) NOT NULL,
  `user_address` text NOT NULL,
  `phone_number` varchar(32) NOT NULL,
  `password` varchar(500) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `email_address`, `user_name`, `full_name`, `user_address`, `phone_number`, `password`, `time`) VALUES
(3, 'admin@dma-bd.com', 'admin', 'admin', 'Dhaka', '+8801911227945', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-17 22:44:29'),
(4, 'ariful.haque@dma-bd.com', 'real', 'AZM Ariful Haque Real', 'Dhaka', '+8801700696574', 'e10adc3949ba59abbe56e057f20f883e', '2018-12-13 12:11:50'),
(18, 'dpridoy@gmail.com', 'ridoy', 'Ridoy', 'Mirpur', '+9661557041299', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-05 14:42:54'),
(19, 'prio@motlob.com', 'prio', 'Aktaruzzaman', 'Dhaka', '+8801749466468', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-05 14:55:17'),
(20, 'aktaruzzamanprio@gmail.com', 'azprio', 'Aktaruzzaman Prio', 'Dhaka', '+8801729466468', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-18 17:53:44'),
(21, 'sumaiya.nuha@dma-bd.com', 'sumaiya', 'Sumaiya Tasmim', 'Dhaka', '+8801729466468', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-18 18:08:04'),
(22, 'nasirul.haque@dma-bd.com', 'dpridoy', 'Nasirul Haque', 'Dhaka', '+8801729466468', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-18 18:10:37'),
(23, 'aktar@dma-bd.com', 'aktar', 'M. M. Aktaruzzaman', 'Dhaka', '+8801749466468', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-18 18:17:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `current_reading`
--
ALTER TABLE `current_reading`
  ADD PRIMARY KEY (`MeterAddr`);

--
-- Indexes for table `tbl_add_area`
--
ALTER TABLE `tbl_add_area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_collector`
--
ALTER TABLE `tbl_collector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_concentrator`
--
ALTER TABLE `tbl_concentrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_device_assigned`
--
ALTER TABLE `tbl_device_assigned`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `tbl_device_data`
--
ALTER TABLE `tbl_device_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `tbl_device_list`
--
ALTER TABLE `tbl_device_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`);

--
-- Indexes for table `tbl_device_reserved`
--
ALTER TABLE `tbl_device_reserved`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `device_id` (`device_id`);

--
-- Indexes for table `tbl_meter_details`
--
ALTER TABLE `tbl_meter_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meter_id` (`meter_id`);

--
-- Indexes for table `tbl_monthlymeterreading`
--
ALTER TABLE `tbl_monthlymeterreading`
  ADD PRIMARY KEY (`meterreadingId`);

--
-- Indexes for table `tbl_operator`
--
ALTER TABLE `tbl_operator`
  ADD PRIMARY KEY (`operator_id`);

--
-- Indexes for table `tbl_secret`
--
ALTER TABLE `tbl_secret`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `tbl_shared_users`
--
ALTER TABLE `tbl_shared_users`
  ADD PRIMARY KEY (`shared_id`);

--
-- Indexes for table `tbl_tank_cubicle`
--
ALTER TABLE `tbl_tank_cubicle`
  ADD PRIMARY KEY (`cubicle_tank_id`);

--
-- Indexes for table `tbl_tank_cylindrical`
--
ALTER TABLE `tbl_tank_cylindrical`
  ADD PRIMARY KEY (`cylindrical_tank_id`);

--
-- Indexes for table `tbl_tank_details`
--
ALTER TABLE `tbl_tank_details`
  ADD PRIMARY KEY (`tank_id`);

--
-- Indexes for table `tbl_tank_status`
--
ALTER TABLE `tbl_tank_status`
  ADD PRIMARY KEY (`tank_status_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_add_area`
--
ALTER TABLE `tbl_add_area`
  MODIFY `area_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900004;

--
-- AUTO_INCREMENT for table `tbl_collector`
--
ALTER TABLE `tbl_collector`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `company_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20002;

--
-- AUTO_INCREMENT for table `tbl_concentrator`
--
ALTER TABLE `tbl_concentrator`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_device_assigned`
--
ALTER TABLE `tbl_device_assigned`
  MODIFY `assign_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_device_data`
--
ALTER TABLE `tbl_device_data`
  MODIFY `data_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tbl_device_list`
--
ALTER TABLE `tbl_device_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tbl_meter_details`
--
ALTER TABLE `tbl_meter_details`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_monthlymeterreading`
--
ALTER TABLE `tbl_monthlymeterreading`
  MODIFY `meterreadingId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_operator`
--
ALTER TABLE `tbl_operator`
  MODIFY `operator_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_secret`
--
ALTER TABLE `tbl_secret`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_shared_users`
--
ALTER TABLE `tbl_shared_users`
  MODIFY `shared_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tank_cubicle`
--
ALTER TABLE `tbl_tank_cubicle`
  MODIFY `cubicle_tank_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tank_cylindrical`
--
ALTER TABLE `tbl_tank_cylindrical`
  MODIFY `cylindrical_tank_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tank_details`
--
ALTER TABLE `tbl_tank_details`
  MODIFY `tank_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tank_status`
--
ALTER TABLE `tbl_tank_status`
  MODIFY `tank_status_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
