-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 03:21 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_icmrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `md_amc`
--

CREATE TABLE `md_amc` (
  `id` int(10) NOT NULL,
  `comp_id` int(10) NOT NULL,
  `item` int(20) NOT NULL,
  `item_serial` varchar(50) DEFAULT NULL,
  `instl_loc` varchar(100) NOT NULL,
  `instl_dt` date NOT NULL,
  `frm_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `period` enum('M','Q','H','Y') NOT NULL DEFAULT 'M',
  `amc_chrg` decimal(20,2) NOT NULL,
  `gst_rt` decimal(20,2) NOT NULL,
  `cgst` decimal(20,0) NOT NULL,
  `sgst` decimal(20,2) NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `modified_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `md_catg`
--

CREATE TABLE `md_catg` (
  `sl_no` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_catg`
--

INSERT INTO `md_catg` (`sl_no`, `category`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'Heavy, Medium & Light Machinery  [Dead Stock]', 'synergic', '2022-08-03 09:06:20', NULL, NULL),
(2, 'Electronic Items ', 'synergic', '2022-08-03 09:06:28', NULL, NULL),
(3, 'Dead Stock', 'synergic', '2022-08-03 09:06:38', NULL, NULL),
(4, 'General Items', 'synergic', '2022-08-03 09:06:46', NULL, NULL),
(5, 'Printing & Stationery', 'synergic', '2022-08-03 09:06:55', NULL, NULL),
(6, 'Training Materials', 'synergic', '2022-08-03 09:07:03', NULL, NULL),
(7, 'Documents & Records', 'synergic', '2022-08-03 09:07:10', NULL, NULL),
(8, 'Maintenance Items', 'synergic', '2022-08-03 09:07:19', NULL, NULL),
(9, 'Scrap', 'synergic', '2022-08-03 09:07:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_customer`
--

CREATE TABLE `md_customer` (
  `uin` int(10) NOT NULL,
  `cust_type` varchar(5) NOT NULL COMMENT 'C-> Customer; V-> Vender; T-> Tenant',
  `cust_name` varchar(100) NOT NULL,
  `addr_line1` varchar(100) NOT NULL,
  `addr_line2` varchar(100) DEFAULT NULL,
  `pin` int(10) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `pan` varchar(50) NOT NULL,
  `tan` varchar(50) NOT NULL,
  `propieter_namr` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company_type` varchar(5) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `ac_no` varchar(30) NOT NULL,
  `ifs_code` varchar(30) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_customer`
--

INSERT INTO `md_customer` (`uin`, `cust_type`, `cust_name`, `addr_line1`, `addr_line2`, `pin`, `gstin`, `pan`, `tan`, `propieter_namr`, `contact_person`, `mobile_no`, `email`, `company_type`, `bank_name`, `branch_name`, `ac_no`, `ifs_code`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(10000000, 'V', 'xyz', 'abc', '', 6789999, 'w6yyi99', '', '', '', '', '', '', 'P', '', '', '', '', 'synergic', '2021-08-07 05:00:42', NULL, NULL),
(10000001, 'C', 'difhisdhfihfihif', 'kjvnjsdn', 'hhcah', 700065, '', '', '', '', '', '', '', 'P', '', '', '', '', 'synergic', '2021-08-09 08:51:41', NULL, NULL),
(10000002, 'C', 'cvxvxvdfgdrg', 'bfbfsbg', 'bdfbf', 700065, '', '', '', '', '', '', '', 'P', '', '', '', '', 'synergic', '2021-08-09 08:53:13', NULL, NULL),
(10000003, 'C', 'Tanmoy Mondal', 'bfbfsbg', 'bdfbf', 700065, '', '', '', '', '', '', 'mondal.tanmoy@synergicsoftek.com', 'I', '', '', '', '', 'synergic', '2021-08-09 08:54:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_insu`
--

CREATE TABLE `md_insu` (
  `id` int(10) NOT NULL,
  `item` int(20) NOT NULL,
  `frm_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `auth_person` varchar(200) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `modified_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_insu`
--

INSERT INTO `md_insu` (`id`, `item`, `frm_dt`, `to_dt`, `remarks`, `auth_person`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 2, '2021-08-09', '2021-08-31', NULL, 'uuuuuu', 'synergic', '2021-08-09 07:26:08', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `md_item`
--

CREATE TABLE `md_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `created_by` varchar(55) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(55) DEFAULT NULL,
  `modified_dt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_item`
--

INSERT INTO `md_item` (`id`, `item_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(2, 'bcd', 'synergic', '2021-07-29 13:13:03', 'synergic', 2021),
(3, 'ssss', 'synergic', '2021-08-04 11:19:26', 'synergic', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `md_licence`
--

CREATE TABLE `md_licence` (
  `id` int(10) NOT NULL,
  `item` int(20) NOT NULL,
  `frm_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `rnw_from` date DEFAULT NULL,
  `rnw_to` date DEFAULT NULL,
  `auth_person` varchar(200) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `modified_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_licence`
--

INSERT INTO `md_licence` (`id`, `item`, `frm_dt`, `to_dt`, `rnw_from`, `rnw_to`, `auth_person`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(4, 2, '2021-08-06', '2021-08-20', '2021-08-20', '2021-08-31', 'test1', 'synergic', '2021-08-06 14:09:39', 'synergic', '2021-08-06 14:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `md_stakeholder_type`
--

CREATE TABLE `md_stakeholder_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_stakeholder_type`
--

INSERT INTO `md_stakeholder_type` (`id`, `name`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Employees', 'synergic', '2022-08-03 12:46:30', NULL, NULL),
(2, 'Security Staff', 'synergic', '2022-08-03 12:46:45', NULL, NULL),
(3, 'Contingent Menials', 'synergic', '2022-08-03 12:46:57', NULL, NULL),
(4, 'Service Provider (Individual)', 'synergic', '2022-08-03 12:47:06', NULL, NULL),
(5, 'Vendors & Suppliers', 'synergic', '2022-08-03 12:47:14', NULL, NULL),
(6, 'Caterer', 'synergic', '2022-08-03 12:47:25', NULL, NULL),
(7, 'Tenants', 'synergic', '2022-08-03 12:47:33', NULL, NULL),
(8, 'Guest Faculty & Others', 'synergic', '2022-08-03 12:47:39', NULL, NULL),
(9, 'Training Provider Individual', 'synergic', '2022-08-03 12:47:57', NULL, NULL),
(10, 'Training Provider Agency', 'synergic', '2022-08-03 12:48:09', NULL, NULL),
(11, 'Individual Customers', 'synergic', '2022-08-03 12:48:32', 'synergic', '2022-08-03 12:50:18'),
(12, 'Cooperation Department Customers', 'synergic', '2022-08-03 12:48:56', 'synergic', '2022-08-03 12:50:26'),
(13, 'PCARDB Customers', 'synergic', '2022-08-03 12:49:07', NULL, NULL),
(14, 'Other Cooperative Customers', 'synergic', '2022-08-03 12:49:19', NULL, NULL),
(15, 'Other Govt. Departments & Organization Customers', 'synergic', '2022-08-03 12:49:39', NULL, NULL),
(16, 'Company/ NGO/ Firm/ Organization (Other Customers)', 'synergic', '2022-08-03 12:50:03', 'synergic', '2022-08-03 12:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `md_stk_item`
--

CREATE TABLE `md_stk_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `catg` int(11) DEFAULT NULL COMMENT 'md_catg -> id',
  `sub_catg_id` int(11) NOT NULL COMMENT 'md_stk_sub_catg -> id',
  `license` int(1) NOT NULL DEFAULT 0,
  `Insurance` int(1) NOT NULL DEFAULT 0,
  `amc` int(1) NOT NULL DEFAULT 0,
  `created_by` varchar(55) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(55) DEFAULT NULL,
  `modified_dt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_stk_item`
--

INSERT INTO `md_stk_item` (`id`, `item_name`, `catg`, `sub_catg_id`, `license`, `Insurance`, `amc`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'Elevator', 1, 1, 0, 0, 0, 'synergic', '2022-08-03 10:09:24', NULL, NULL),
(2, 'Generator', 1, 1, 0, 0, 0, 'synergic', '2022-08-03 10:09:24', NULL, NULL),
(3, 'Transformer', 1, 1, 0, 0, 0, 'synergic', '2022-08-03 10:09:24', NULL, NULL),
(4, 'CESC Transformer', 1, 1, 0, 0, 0, 'synergic', '2022-08-03 10:09:24', NULL, NULL),
(5, 'Drinking Water Supply Pump', 1, 2, 0, 0, 0, 'synergic', '2022-08-03 10:10:11', NULL, NULL),
(6, 'Fire Pump', 1, 2, 0, 0, 0, 'synergic', '2022-08-03 10:10:11', NULL, NULL),
(7, 'Submersible Pump for ground water lifting', 1, 2, 0, 0, 0, 'synergic', '2022-08-03 10:10:11', NULL, NULL),
(8, 'Submersible Pump', 1, 2, 0, 0, 0, 'synergic', '2022-08-03 10:10:11', NULL, NULL),
(9, 'Fire Extinguishers, Sprinkler', 1, 3, 0, 0, 0, 'synergic', '2022-08-03 10:11:42', NULL, NULL),
(10, 'Fire Alarm System', 1, 3, 0, 0, 0, 'synergic', '2022-08-03 10:11:42', NULL, NULL),
(11, 'CCTV and Accessories', 1, 3, 0, 0, 0, 'synergic', '2022-08-03 10:11:42', NULL, NULL),
(12, 'Smoke & Heat Detector', 1, 3, 0, 0, 0, 'synergic', '2022-08-03 10:11:42', NULL, NULL),
(13, 'AC Package Unit', 1, 4, 0, 0, 0, 'synergic', '2022-08-03 10:12:14', NULL, NULL),
(14, 'Window AC', 1, 4, 0, 0, 0, 'synergic', '2022-08-03 10:12:14', NULL, NULL),
(15, 'Split AC', 1, 4, 0, 0, 0, 'synergic', '2022-08-03 10:12:14', NULL, NULL),
(16, 'Fan', 1, 5, 0, 0, 0, 'synergic', '2022-08-03 10:12:38', NULL, NULL),
(17, 'Lights', 1, 5, 0, 0, 0, 'synergic', '2022-08-03 10:12:38', NULL, NULL),
(18, 'Exhaust Fan', 1, 5, 0, 0, 0, 'synergic', '2022-08-03 10:12:38', NULL, NULL),
(19, 'Water Vending Machines', 1, 5, 0, 0, 0, 'synergic', '2022-08-03 10:13:04', NULL, NULL),
(20, 'Kitchen Chimney', 1, 5, 0, 0, 0, 'synergic', '2022-08-03 10:13:04', NULL, NULL),
(21, 'Desktop', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(22, 'Laptop', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(23, 'UPS', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(24, 'Keyboard', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(25, 'Mouse', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(26, 'Scanner', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(27, 'Printer', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(28, 'Photocopier', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(29, 'Internet & Wifi Accessories', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(30, 'Switch', 2, 7, 0, 0, 0, 'synergic', '2022-08-03 10:14:07', NULL, NULL),
(31, 'Applications', 2, 8, 0, 0, 0, 'synergic', '2022-08-03 10:15:44', NULL, NULL),
(32, 'Antivirus', 2, 8, 0, 0, 0, 'synergic', '2022-08-03 10:15:44', NULL, NULL),
(33, 'Refrigerator', 2, 9, 0, 0, 0, 'synergic', '2022-08-03 10:16:05', NULL, NULL),
(34, 'Microwave', 2, 9, 0, 0, 0, 'synergic', '2022-08-03 10:16:05', NULL, NULL),
(35, 'Induction', 2, 9, 0, 0, 0, 'synergic', '2022-08-03 10:16:05', NULL, NULL),
(36, 'TV', 2, 10, 0, 0, 0, 'synergic', '2022-08-03 10:16:22', NULL, NULL),
(37, 'Cash counting machine', 2, 11, 0, 0, 0, 'synergic', '2022-08-03 10:16:52', NULL, NULL),
(38, 'Telephone Set', 2, 11, 0, 0, 0, 'synergic', '2022-08-03 10:16:52', NULL, NULL),
(39, 'Clock', 2, 11, 0, 0, 0, 'synergic', '2022-08-03 10:16:52', NULL, NULL),
(40, 'Pointer', 2, 11, 0, 0, 0, 'synergic', '2022-08-03 10:16:52', NULL, NULL),
(41, 'Dongle', 2, 11, 0, 0, 0, 'synergic', '2022-08-03 10:16:52', NULL, NULL),
(42, 'Projector', 2, 12, 0, 0, 0, 'synergic', '2022-08-03 10:17:19', NULL, NULL),
(43, 'Screen', 2, 12, 0, 0, 0, 'synergic', '2022-08-03 10:17:19', NULL, NULL),
(44, 'Amplifiers', 2, 12, 0, 0, 0, 'synergic', '2022-08-03 10:17:19', NULL, NULL),
(45, 'Microphones', 2, 12, 0, 0, 0, 'synergic', '2022-08-03 10:17:19', NULL, NULL),
(46, 'Sound Box', 2, 12, 0, 0, 0, 'synergic', '2022-08-03 10:17:19', NULL, NULL),
(47, 'Office Table', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:32', NULL, NULL),
(48, 'Chairs', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:32', NULL, NULL),
(49, 'Almirah', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:32', NULL, NULL),
(50, 'File Cabinet', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:32', NULL, NULL),
(51, 'Cot', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:32', NULL, NULL),
(52, 'Sofa', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:32', NULL, NULL),
(53, 'Couch', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(54, 'Tea Table', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(55, 'Computer Table', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(56, 'Bookshelf', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(57, 'Cupboard', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(58, 'Cloth Hanger', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(59, 'Dining Table', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(60, 'Dinning Chairs', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(61, 'Training Desk', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(62, 'Training Table', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(63, 'Dias Table', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(64, 'Dias Chairs', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(65, 'White Boards', 3, 13, 0, 0, 0, 'synergic', '2022-08-03 10:18:33', NULL, NULL),
(66, 'Mattress', 4, 14, 0, 0, 0, 'synergic', '2022-08-03 11:43:21', NULL, NULL),
(67, 'Pillow', 4, 14, 0, 0, 0, 'synergic', '2022-08-03 11:43:21', NULL, NULL),
(68, 'Toshok', 4, 14, 0, 0, 0, 'synergic', '2022-08-03 11:43:21', NULL, NULL),
(69, 'Mosquito Net', 4, 14, 0, 0, 0, 'synergic', '2022-08-03 11:43:21', NULL, NULL),
(70, 'Blanket', 4, 14, 0, 0, 0, 'synergic', '2022-08-03 11:43:21', NULL, NULL),
(71, 'Quilt', 4, 14, 0, 0, 0, 'synergic', '2022-08-03 11:43:22', NULL, NULL),
(72, 'Utensils', 4, 15, 0, 0, 0, 'synergic', '2022-08-03 11:43:42', NULL, NULL),
(73, 'Ovens', 4, 15, 0, 0, 0, 'synergic', '2022-08-03 11:43:42', NULL, NULL),
(74, 'Glass', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(75, 'Water Pitcher', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(76, 'Hostel Room Kit', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(77, 'Mosquito Repellent', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(78, 'Ashtray', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(79, 'Hanger', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(80, 'Room Slippers', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(81, 'Tray', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(82, 'Towel', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(83, 'Soap', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(84, 'Room Dustbin', 4, 16, 0, 0, 0, 'synergic', '2022-08-03 11:44:30', NULL, NULL),
(85, 'Big Towel', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:13', NULL, NULL),
(86, 'Small Towel', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:13', NULL, NULL),
(87, 'Curtains', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:13', NULL, NULL),
(88, 'Table Covers', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:14', NULL, NULL),
(89, 'Mask', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:14', NULL, NULL),
(90, 'Bedsheet', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:14', NULL, NULL),
(91, 'Pillow Cover', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:14', NULL, NULL),
(92, 'Blanket Cover', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:14', NULL, NULL),
(93, 'Mattress Cover', 4, 17, 0, 0, 0, 'synergic', '2022-08-03 11:45:14', NULL, NULL),
(94, 'Forms', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(95, 'Vouchers', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(96, 'Receipts', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(97, 'Coupons', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(98, 'Letterhead', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(99, 'Registers', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(100, 'Brochure', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(101, 'Visiting Card', 5, 19, 0, 0, 0, 'synergic', '2022-08-03 11:45:50', NULL, NULL),
(102, 'Pen', 6, 21, 0, 0, 0, 'synergic', '2022-08-03 11:46:28', NULL, NULL),
(103, 'Bag', 6, 21, 0, 0, 0, 'synergic', '2022-08-03 11:46:28', NULL, NULL),
(104, 'Folder', 6, 21, 0, 0, 0, 'synergic', '2022-08-03 11:46:28', NULL, NULL),
(105, 'Flex Banner', 6, 21, 0, 0, 0, 'synergic', '2022-08-03 11:46:28', NULL, NULL),
(106, 'Study Material', 6, 21, 0, 0, 0, 'synergic', '2022-08-03 11:46:28', NULL, NULL),
(107, 'Skill Training Raw materials', 6, 23, 0, 0, 0, 'synergic', '2022-08-03 11:47:00', NULL, NULL),
(108, 'Skill Training finished goods', 6, 24, 0, 0, 0, 'synergic', '2022-08-03 11:47:22', NULL, NULL),
(109, 'File List', 7, 25, 0, 0, 0, 'synergic', '2022-08-03 11:48:58', NULL, NULL),
(110, 'AMC', 7, 26, 0, 0, 0, 'synergic', '2022-08-03 11:50:58', NULL, NULL),
(111, 'Licence', 7, 26, 0, 0, 0, 'synergic', '2022-08-03 11:50:58', NULL, NULL),
(112, 'Agreements', 7, 26, 0, 0, 0, 'synergic', '2022-08-03 11:50:58', NULL, NULL),
(113, 'Deeds', 7, 26, 0, 0, 0, 'synergic', '2022-08-03 11:50:58', NULL, NULL),
(114, 'Insurance', 7, 26, 0, 0, 0, 'synergic', '2022-08-03 11:50:58', NULL, NULL),
(115, 'Sanitation & Plumbing', 8, 27, 0, 0, 0, 'synergic', '2022-08-03 11:51:18', NULL, NULL),
(116, 'Repair and Renewals materials', 8, 27, 0, 0, 0, 'synergic', '2022-08-03 11:51:38', NULL, NULL),
(117, 'Electrical materials', 8, 28, 0, 0, 0, 'synergic', '2022-08-03 11:51:54', NULL, NULL),
(118, 'Carpentry materials', 8, 29, 0, 0, 0, 'synergic', '2022-08-03 11:52:17', NULL, NULL),
(119, 'Application Forms (Hostel)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(120, 'ARCH File', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(121, 'Alpin', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(122, 'Board (Clip)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(123, 'Bell Clips', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(124, 'Bell Pins', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(125, 'Box File', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(126, 'Board Pin', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(127, 'Battery (Pincil)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(128, 'Binder Clip', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(129, 'Board File', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(130, 'Battery (Cardless)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(131, 'Banner', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(132, 'Battle', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(133, 'Breakfast Caupon', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(134, '9 Valt Battery', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(135, 'Remote Battery', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(136, 'Calculator', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(137, 'Cover Files', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(138, 'Comact DISC', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(139, 'CD Cover', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(140, 'Cartrige', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(141, 'Chart Paper', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(142, 'Correction Pen', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(143, 'Clip (Metal)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(144, 'Clip (Paper)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(145, 'Clip Board', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(146, 'Cello Tap', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:41', NULL, NULL),
(147, 'Certificate Cover', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(148, 'Cover Digital Prial & Spiral Binding., A4 5i3e', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(149, 'Cash Box', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(150, 'Certificate Lamination', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(151, 'Catridge', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(152, 'Clath (Bag)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(153, 'Cash Book Register', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(154, 'Calling Bell', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(155, 'Dampner', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(156, 'Diary', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(157, 'Drum 12 A', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(158, 'Doctor Blade 12 A', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(159, 'Duster', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(160, 'Dak Depatch Register', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(161, 'Envelope (Printed)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(162, 'Envelope (Large) (Canvas)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(163, 'Envelope (Large) (Brown)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(164, 'Eraser', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(165, 'Ex- Book', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(166, 'Envelope (Small) Brown', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(167, 'Envelope (White)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(168, 'Envelope (Star Craft)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(169, 'Ex- Book (Small)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(170, 'Envelope ( Clath Linening)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(171, 'Evaluation of Training activities Digital Printing 130 GSM Art Paper etc. for accrediration', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(172, 'File (Office), (Printed), (Cover), (Folder)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(173, 'File (Channel)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(174, 'File - Plastic (Participants)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(175, 'File- Folder- Cloth (Participants)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(176, 'File (Clip)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(177, 'Fevicol', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(178, 'Fevistick', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:42', NULL, NULL),
(179, 'File- Clip (Paper)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(180, 'Folder (Plastic)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(181, 'Folder (Jute)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(182, 'Flower Vase', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(183, 'File', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(184, 'Folder (Kham)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(185, 'Fare head Thermometer', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(186, 'Gum', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(187, 'Gala', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(188, 'Guest Room Charges Collection', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(189, 'Gloves', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(190, 'Glass', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(191, 'Genesis Automatia Systems (Note Counting Machine)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(192, 'Highlighter', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(193, 'Harddisk', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(194, 'INK', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(195, 'Jems Clips', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(196, 'Jug', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(197, 'Jute Bag', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(198, 'Letter Head (ICMARD)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(199, 'letter Head (WBSCARD)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(200, 'Legal Paper', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(201, 'LG 43 T.V', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(202, 'LG 32 T.V', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(203, 'Loan Manual Val- I', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(204, 'Library Book Register', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(205, 'Library Card', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(206, 'Laptop Bag', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(207, 'Letter Book', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:01:43', NULL, NULL),
(208, 'Marker- White Board', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(209, 'Marker- Permanent', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(210, 'Marker- CD (VYNYLE)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(211, 'Meta Plan Card', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(212, 'Multi Colour Certificate', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(213, 'Milton Water Cool.', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(214, 'Note Sheet', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(215, 'NABARD', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(216, 'Paper- A4 RIM', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:20', NULL, NULL),
(217, 'Paper- A4', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(218, 'Pen (For Participants)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(219, 'Pen (For Office Use)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(220, 'Pen- Sketch', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(221, 'Punchine Machine', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(222, 'Pin', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(223, 'Pad- Writing', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(224, 'Pad- Printed (Participants)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(225, 'Paper Cutter', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(226, 'Pencil', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(227, 'Pencil Sharpner', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(228, 'Pen Drive', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(229, 'Phar', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(230, 'Printer', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(231, 'Pen Stand', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(232, 'paper Weight', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(233, 'Pouch', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(234, 'Pen (Use & Throw)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(235, 'Photo Capier Machine', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(236, 'Pentonic Pen', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(237, 'Past if', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(238, 'Plastic Clip', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(239, 'Registers (Printed)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(240, 'Registers (4 No.)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(241, 'Registers (6 No.)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(242, 'Refill', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(243, 'Rubber Band', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(244, 'Rent Collection Recpt.', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:21', NULL, NULL),
(245, 'Register (Training Related Fund)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(246, 'Register (Meeting/ Workshop related Fund)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(247, 'Register ( Hall Booking)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(248, 'Register (Dormitary Booking)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(249, 'Register (Canteen)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(250, 'Register ( Dead Stock & Bedding Materials)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(251, 'Register (Room Booking)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(252, 'Stapler (Big)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(253, 'Stapler (Small)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(254, 'Stapler Pin (Big)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(255, 'Stapler Pin (Small)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(256, 'Snap Off Cutter', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(257, 'Stamp', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(258, 'Sharpner', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(259, 'Sheet Prafetor', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(260, 'Speaker', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(261, 'Scissons', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(262, 'Stock Registered', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(263, 'Tape', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(264, 'Tag', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(265, 'Tape (Brown)', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(266, 'Toner Canon NPG 28', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(267, 'Tonner 12A', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(268, 'Tonner 110A', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(269, 'Trng. Manual Xerox digital', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(270, 'Voucher- Receipt', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(271, 'Voucher- Cash payment', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(272, 'Voucher- Bank receipt', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:22', NULL, NULL),
(273, 'Voucher- Bank Payment', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(274, 'Voucher- Journal', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(275, 'Voucher- Advice', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(276, 'Veg Meal Caupon', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(277, 'Non-Veg Meal Caupon', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(278, 'White Board Eraser', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(279, 'White Board Magnetic Duster', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(280, 'Whitener', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(281, 'Wall Clock', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(282, 'Wiper Blade', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL),
(283, 'White Board Marker', 5, 20, 0, 0, 0, 'synergic', '2022-08-03 13:07:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_stk_sub_catg`
--

CREATE TABLE `md_stk_sub_catg` (
  `id` int(11) NOT NULL,
  `catg_id` int(11) NOT NULL COMMENT 'md_catg->id',
  `name` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_stk_sub_catg`
--

INSERT INTO `md_stk_sub_catg` (`id`, `catg_id`, `name`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, 'Heavy Duty Electricals', 'synergic', '2022-08-03 09:09:11', NULL, NULL),
(2, 1, 'Water Pumps', 'synergic', '2022-08-03 09:09:23', NULL, NULL),
(3, 1, 'Security Items', 'synergic', '2022-08-03 09:10:38', NULL, NULL),
(4, 1, 'Air Conditioners', 'synergic', '2022-08-03 09:10:47', NULL, NULL),
(5, 1, 'Electrical Equipments', 'synergic', '2022-08-03 09:11:03', NULL, NULL),
(6, 1, 'LPG Gas Bank', 'synergic', '2022-08-03 09:11:17', NULL, NULL),
(7, 2, 'Computer Hardware', 'synergic', '2022-08-03 09:11:28', NULL, NULL),
(8, 2, 'Computer Software', 'synergic', '2022-08-03 09:11:39', NULL, NULL),
(9, 2, 'Kitchen Items', 'synergic', '2022-08-03 09:11:50', NULL, NULL),
(10, 2, 'Entertainment', 'synergic', '2022-08-03 09:12:01', NULL, NULL),
(11, 2, 'Office Electronic Items', 'synergic', '2022-08-03 09:12:09', NULL, NULL),
(12, 2, 'Audio Visuals', 'synergic', '2022-08-03 09:12:18', NULL, NULL),
(13, 3, 'Furniture & Fixtures', 'synergic', '2022-08-03 09:12:29', NULL, NULL),
(14, 4, 'Bedding Materials', 'synergic', '2022-08-03 09:12:41', NULL, NULL),
(15, 4, 'Kitchen & Canteen', 'synergic', '2022-08-03 09:12:52', NULL, NULL),
(16, 4, 'Guest room supplies', 'synergic', '2022-08-03 09:13:03', NULL, NULL),
(17, 4, 'Clothing & Linen', 'synergic', '2022-08-03 09:13:14', NULL, NULL),
(18, 4, 'Housekeeping Items', 'synergic', '2022-08-03 09:13:25', NULL, NULL),
(19, 5, 'Printed Items', 'synergic', '2022-08-03 09:13:36', NULL, NULL),
(20, 5, 'Office Stationery', 'synergic', '2022-08-03 09:13:48', NULL, NULL),
(21, 6, 'Stationery', 'synergic', '2022-08-03 09:14:01', NULL, NULL),
(22, 6, 'Machinery, Tools and Equipments', 'synergic', '2022-08-03 09:14:14', NULL, NULL),
(23, 6, 'Raw Materials', 'synergic', '2022-08-03 09:14:28', NULL, NULL),
(24, 6, 'Finished Goods/ Items', 'synergic', '2022-08-03 09:14:41', NULL, NULL),
(25, 7, 'Files', 'synergic', '2022-08-03 09:14:49', NULL, NULL),
(26, 7, 'Legal Documents', 'synergic', '2022-08-03 09:15:00', NULL, NULL),
(27, 8, 'Civil Works', 'synergic', '2022-08-03 09:15:15', NULL, NULL),
(28, 8, 'Electrical Works', 'synergic', '2022-08-03 09:15:25', NULL, NULL),
(29, 8, 'Carpentry Works', 'synergic', '2022-08-03 09:15:36', NULL, NULL),
(30, 9, 'Computer & Electronic Scrap', 'synergic', '2022-08-03 09:15:48', NULL, NULL),
(31, 9, 'Wooden Scrap', 'synergic', '2022-08-03 09:15:58', NULL, NULL),
(32, 9, 'Metal Scrap', 'synergic', '2022-08-03 09:16:11', NULL, NULL),
(33, 9, 'Furniture & Fixtures Scrap', 'synergic', '2022-08-03 09:16:19', NULL, NULL),
(34, 9, 'Heavy Machinery Scrap', 'synergic', '2022-08-03 09:16:29', NULL, NULL),
(35, 9, 'Paper and Boxes Scrap', 'synergic', '2022-08-03 09:16:39', NULL, NULL),
(36, 9, 'Plastic & Glass Scrap', 'synergic', '2022-08-03 09:16:50', NULL, NULL),
(37, 9, 'Other Scrap', 'synergic', '2022-08-03 09:16:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_tenant`
--

CREATE TABLE `md_tenant` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `floor_no` int(5) DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `agree_st_dt` varchar(15) DEFAULT NULL,
  `agree_end_dt` varchar(15) DEFAULT NULL,
  `covd_area` decimal(20,2) DEFAULT NULL,
  `rent_per_sqrt` decimal(20,2) DEFAULT NULL,
  `rent_per_mnth` decimal(20,2) DEFAULT NULL,
  `water_chrg` decimal(20,2) DEFAULT 0.00,
  `electric_chrg` decimal(20,2) DEFAULT 0.00,
  `car_pk_chrg` decimal(20,2) NOT NULL DEFAULT 0.00,
  `gst_rt` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cgst` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sgst` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_by` varchar(100) DEFAULT NULL,
  `created_dt` date NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `modified_dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_tenant`
--

INSERT INTO `md_tenant` (`id`, `name`, `floor_no`, `room_no`, `agree_st_dt`, `agree_end_dt`, `covd_area`, `rent_per_sqrt`, `rent_per_mnth`, `water_chrg`, `electric_chrg`, `car_pk_chrg`, `gst_rt`, `cgst`, `sgst`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'raja', 3, '50', '2021-08-05', '2021-08-13', '555.00', '100.00', '55500.00', '512.00', '689.00', '444.00', '18.00', '455.00', '455.00', 'synergic', '2021-08-06', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `md_users`
--

CREATE TABLE `md_users` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` enum('U','M','A','B') NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_status` char(1) NOT NULL,
  `branch_id` varchar(20) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_users`
--

INSERT INTO `md_users` (`user_id`, `password`, `user_type`, `user_name`, `user_status`, `branch_id`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
('sss', '$2y$10$4lh8owRjV9NClHfR6nA11O67Btw/HrMsU0L01QAg4DTcQRubInxdW', 'A', 'synergic', 'A', '342', 'synergic', '2020-07-27 06:20:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_stockin`
--

CREATE TABLE `td_stockin` (
  `id` int(10) NOT NULL,
  `item` int(10) DEFAULT NULL COMMENT 'md_stk_item -> id',
  `inventry_no` varchar(50) DEFAULT NULL,
  `pur_dt` date DEFAULT NULL,
  `inv_no` varchar(10) DEFAULT NULL,
  `challan_no` varchar(10) DEFAULT NULL,
  `vendor` int(10) DEFAULT NULL COMMENT 'md_customer -> uin',
  `received_by` int(11) DEFAULT NULL COMMENT 'md_customer -> uin',
  `sl_no` varchar(50) DEFAULT NULL,
  `amt` decimal(20,0) NOT NULL DEFAULT 0,
  `gst_rt` decimal(20,2) NOT NULL DEFAULT 0.00,
  `cgst` decimal(20,2) NOT NULL DEFAULT 0.00,
  `sgst` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `stock` int(10) NOT NULL,
  `in_out_flag` enum('P','I','O','C') NOT NULL COMMENT 'P -> Oppening; I -> In; O -> Out; C -> Closing',
  `description` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(20) NOT NULL,
  `modified_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `td_stockin`
--

INSERT INTO `td_stockin` (`id`, `item`, `inventry_no`, `pur_dt`, `inv_no`, `challan_no`, `vendor`, `received_by`, `sl_no`, `amt`, `gst_rt`, `cgst`, `sgst`, `total`, `stock`, `in_out_flag`, `description`, `remarks`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 119, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 16, 'I', '', '', 'synergic', '2022-08-03 13:16:30', '', '0000-00-00 00:00:00'),
(2, 120, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 3, 'I', '', '', 'synergic', '2022-08-03 14:16:32', '', '0000-00-00 00:00:00'),
(3, 122, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 9, 'I', '', '', 'synergic', '2022-08-03 14:16:33', '', '0000-00-00 00:00:00'),
(4, 123, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 8, 'I', '', '', 'synergic', '2022-08-03 14:16:33', '', '0000-00-00 00:00:00'),
(5, 124, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:16:33', '', '0000-00-00 00:00:00'),
(6, 125, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 9, 'I', '', '', 'synergic', '2022-08-03 14:16:33', '', '0000-00-00 00:00:00'),
(7, 126, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:16:33', '', '0000-00-00 00:00:00'),
(8, 127, '0', '2022-07-28', '0', '0', 10000000, NULL, '0', '0', '0.00', '0.00', '0.00', '0.00', 115, 'I', '', '', 'synergic', '2022-08-03 14:16:33', '', '0000-00-00 00:00:00'),
(9, 128, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 10, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(10, 129, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(11, 130, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 16, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(12, 133, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 48, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(13, 135, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 10, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(14, 136, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(15, 139, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(16, 140, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 7, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(17, 146, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 14, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(18, 153, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(19, 159, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:19:23', '', '0000-00-00 00:00:00'),
(20, 165, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(21, 176, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(22, 178, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(23, 180, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 5, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(24, 184, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(25, 186, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 3, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(26, 192, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(27, 198, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(28, 200, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(29, 208, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(30, 214, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(31, 216, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(32, 219, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 3, 'I', '', '', 'synergic', '2022-08-03 14:27:23', '', '0000-00-00 00:00:00'),
(33, 220, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 2, 'I', '', '', 'synergic', '2022-08-03 14:27:24', '', '0000-00-00 00:00:00'),
(34, 226, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 4, 'I', '', '', 'synergic', '2022-08-03 14:27:24', '', '0000-00-00 00:00:00'),
(35, 227, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:27:24', '', '0000-00-00 00:00:00'),
(36, 242, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 8, 'I', '', '', 'synergic', '2022-08-03 14:27:24', '', '0000-00-00 00:00:00'),
(37, 250, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(38, 251, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(39, 253, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 3, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(40, 254, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 7, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(41, 255, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 7, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(42, 264, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(43, 270, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 5, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(44, 271, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(45, 273, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 3, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(46, 274, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 8, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(47, 275, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 1, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(48, 276, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 12, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00'),
(49, 277, '', '2022-07-28', '', '', 10000000, NULL, '', '0', '0.00', '0.00', '0.00', '0.00', 15, 'I', '', '', 'synergic', '2022-08-03 14:30:45', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `md_amc`
--
ALTER TABLE `md_amc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_catg`
--
ALTER TABLE `md_catg`
  ADD UNIQUE KEY `sl_no_catg` (`sl_no`);

--
-- Indexes for table `md_customer`
--
ALTER TABLE `md_customer`
  ADD PRIMARY KEY (`uin`);

--
-- Indexes for table `md_insu`
--
ALTER TABLE `md_insu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_item`
--
ALTER TABLE `md_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_licence`
--
ALTER TABLE `md_licence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_stakeholder_type`
--
ALTER TABLE `md_stakeholder_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_stk_item`
--
ALTER TABLE `md_stk_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_stk_sub_catg`
--
ALTER TABLE `md_stk_sub_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_tenant`
--
ALTER TABLE `md_tenant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_users`
--
ALTER TABLE `md_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `td_stockin`
--
ALTER TABLE `td_stockin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `md_amc`
--
ALTER TABLE `md_amc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `md_catg`
--
ALTER TABLE `md_catg`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `md_insu`
--
ALTER TABLE `md_insu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_item`
--
ALTER TABLE `md_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `md_licence`
--
ALTER TABLE `md_licence`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `md_stakeholder_type`
--
ALTER TABLE `md_stakeholder_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `md_stk_item`
--
ALTER TABLE `md_stk_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `md_stk_sub_catg`
--
ALTER TABLE `md_stk_sub_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `md_tenant`
--
ALTER TABLE `md_tenant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `td_stockin`
--
ALTER TABLE `td_stockin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
