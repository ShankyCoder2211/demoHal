-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 20, 2023 at 04:39 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haloa`
--

-- --------------------------------------------------------

--
-- Table structure for table `dad_designation`
--

DROP TABLE IF EXISTS `dad_designation`;
CREATE TABLE IF NOT EXISTS `dad_designation` (
  `id` int(11) NOT NULL,
  `designation_abbr` varchar(30) NOT NULL,
  `designation_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dad_designation`
--

INSERT INTO `dad_designation` (`id`, `designation_abbr`, `designation_name`) VALUES
(1, 'Aud', 'Auditor'),
(2, 'AAO', 'Assistant Audit Officer'),
(3, 'AO', 'Accounts Officer');

-- --------------------------------------------------------

--
-- Table structure for table `hal_office_details`
--

DROP TABLE IF EXISTS `hal_office_details`;
CREATE TABLE IF NOT EXISTS `hal_office_details` (
  `id` int(2) NOT NULL,
  `office_name` varchar(20) NOT NULL,
  `office_address` varchar(100) NOT NULL,
  `office_email` varchar(100) NOT NULL,
  `office_telephone_no` varchar(100) NOT NULL,
  `pm_section_code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hal_office_details`
--

INSERT INTO `hal_office_details` (`id`, `office_name`, `office_address`, `office_email`, `office_telephone_no`, `pm_section_code`) VALUES
(3, 'DCDAHAL', 'NEAR HAL OFFICE,BANGALORE EXTENSION-23', 'dcdahal@nic.in', '0802345678', 4205),
(2, 'AO DAD HAL KORAPUT', 'KORAPUT NEAR HAL EXTENSION-24', 'koraput@nic.in', '08023456789', 4206);

-- --------------------------------------------------------

--
-- Table structure for table `loginids`
--

DROP TABLE IF EXISTS `loginids`;
CREATE TABLE IF NOT EXISTS `loginids` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `dadDesignation` int(10) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `office_code` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginids`
--

INSERT INTO `loginids` (`id`, `userName`, `password`, `dadDesignation`, `isActive`, `office_code`) VALUES
(1, 'mayank', 'Shanky@2021', 1, 1, 2),
(2, 'rahul', 'rahul@2022', 1, 1, 3),
(3, 'Hariharan', 'Shanky@2021', 2, 1, 2),
(4, 'R Mukundan', 'Shanky@2021', 2, 1, 2),
(5, 'RamGopal', 'Shanky@2021', 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pm_table`
--

DROP TABLE IF EXISTS `pm_table`;
CREATE TABLE IF NOT EXISTS `pm_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_rmso_master` int(11) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `codeHead` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL,
  `R_C` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `pm_month_year` varchar(255) NOT NULL,
  `vr_class` int(11) NOT NULL,
  `vr_no` int(11) DEFAULT NULL,
  `pm_section_code` varchar(255) NOT NULL,
  `fk_task_usr` int(11) NOT NULL,
  `fk_task_date` date NOT NULL,
  `fk_aao_boss` int(11) DEFAULT NULL,
  `fk_aao_date` date DEFAULT NULL,
  `fk_ao_boss` int(11) DEFAULT NULL,
  `fk_ao_date` date DEFAULT NULL,
  `fk_go_boss` int(11) DEFAULT NULL,
  `fk_go_date` date DEFAULT NULL,
  `record_status` varchar(255) NOT NULL,
  `ncs_remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pm_table`
--

INSERT INTO `pm_table` (`id`, `fk_rmso_master`, `prefix`, `codeHead`, `sign`, `R_C`, `amount`, `pm_month_year`, `vr_class`, `vr_no`, `pm_section_code`, `fk_task_usr`, `fk_task_date`, `fk_aao_boss`, `fk_aao_date`, `fk_ao_boss`, `fk_ao_date`, `fk_go_boss`, `fk_go_date`, `record_status`, `ncs_remarks`, `created_at`) VALUES
(1, 1, '03', '919/36', '+', 'C', 1010000, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(2, 1, '27', '919/36', '+', 'C', 20, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(3, 1, '28', '919/36', '+', 'C', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(4, 1, '25', '919/36', '+', 'C', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(5, 1, '93', '020/91', '+', 'R', 1009970, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(6, 1, '00', '200/04', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(7, 1, '27', '200/04', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(8, 1, '28', '200/04', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(9, 1, '25', '200/04', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(10, 1, '01', '057/30', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(11, 1, '00', 'dummy', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(12, 1, '00', '200/00', '+', 'R', 10, '1/2023', 1, 2, '4206', 1, '2023-01-14', 3, '2023-01-17', 5, '2023-01-17', NULL, NULL, 'V', '0-Not yet posted', '2023-01-17 17:13:36'),
(233, 2, '05', '919/36', '+', 'C', 1009, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(234, 2, '27', '919/36', '+', 'C', 10, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(235, 2, '28', '919/36', '+', 'C', 10, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(236, 2, '25', '919/36', '+', 'C', 10, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(237, 2, '93', '020/91', '+', 'R', 787, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(238, 2, '27', '200/04', '+', 'R', 1, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(239, 2, '28', '200/04', '+', 'R', 10, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(240, 2, '25', '200/04', '+', 'R', 101, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(241, 2, '01', '057/30', '+', 'R', 20, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(242, 2, '00', 'dummy', '+', 'R', 100, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(243, 2, '00', '200/00', '+', 'R', 20, '1/2023', 1, 4, '4206', 1, '2023-01-18', 3, '2023-01-18', 5, '2023-01-18', NULL, NULL, 'V', '0-Not yet posted', '2023-01-18 16:15:23'),
(255, 3, '14', '919/36', '+', 'C', 1431, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(256, 3, '27', '919/36', '+', 'C', 1020, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(257, 3, '28', '919/36', '+', 'C', 10, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(258, 3, '25', '919/36', '+', 'C', 10, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(259, 3, '93', '020/91', '+', 'R', 1127, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(260, 3, '27', '200/04', '+', 'R', 1, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(261, 3, '28', '200/04', '+', 'R', 10, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(262, 3, '25', '200/04', '+', 'R', 101, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(263, 3, '01', '057/30', '+', 'R', 1112, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(264, 3, '00', 'dummy', '+', 'R', 100, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05'),
(265, 3, '00', '200/00', '+', 'R', 20, '1/2023', 1, 6, '4206', 1, '2023-01-19', 3, '2023-01-19', 5, '2023-01-19', NULL, NULL, 'V', '0-Not yet posted', '2023-01-19 08:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `rmso_master`
--

DROP TABLE IF EXISTS `rmso_master`;
CREATE TABLE IF NOT EXISTS `rmso_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_authority_id` int(11) NOT NULL,
  `dakid_no` varchar(32) NOT NULL,
  `rmso_no` varchar(100) NOT NULL,
  `Task_year` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `fk_task_usr` int(11) NOT NULL,
  `fk_task_date` timestamp NULL DEFAULT NULL,
  `fk_AAO_boss` int(11) DEFAULT NULL,
  `fk_AAO_date` timestamp NULL DEFAULT NULL,
  `fk_AO_boss` int(11) DEFAULT NULL,
  `fk_AO_date` timestamp NULL DEFAULT NULL,
  `fk_GO_boss` int(11) DEFAULT NULL,
  `fk_GO_date` timestamp NULL DEFAULT NULL,
  `disposal_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_status` char(1) NOT NULL DEFAULT 'P',
  `remarks` text DEFAULT NULL,
  `fk_AAO_remarks` text DEFAULT NULL,
  `fk_AO_remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmso_master`
--

INSERT INTO `rmso_master` (`id`, `fk_authority_id`, `dakid_no`, `rmso_no`, `Task_year`, `amount`, `fk_task_usr`, `fk_task_date`, `fk_AAO_boss`, `fk_AAO_date`, `fk_AO_boss`, `fk_AO_date`, `fk_GO_boss`, `fk_GO_date`, `disposal_date`, `created_at`, `record_status`, `remarks`, `fk_AAO_remarks`, `fk_AO_remarks`) VALUES
(1, 1, 'R2316RMB1', 'R12213/XVII', '2022-2023', 100000, 1, '2023-01-14 10:25:02', 3, '2023-01-17 07:30:58', 5, '2023-01-17 11:43:09', NULL, NULL, '2023-01-16 18:30:00', '2023-01-14 04:47:39', 'D', 'Bill Completed', 'bills are checked.please pass the bill', 'yes approved '),
(2, 2, 'R2316RMB2', 'R2316XVII', '2022-2023', 10000000, 1, '2023-01-18 16:15:22', 3, '2023-01-18 17:17:43', 5, '2023-01-18 17:42:55', NULL, NULL, '2023-01-18 17:42:55', '2023-01-17 18:30:00', 'D', 'Bill Completed', 'bill submitted to ao', 'bill completed'),
(3, 3, 'R2316RMB3', 'R2314XVII', '2022-2023', 1500000, 1, '2023-01-19 08:27:05', 3, '2023-01-19 08:28:17', 5, '2023-01-19 08:29:40', NULL, NULL, '2023-01-19 08:29:40', '2023-01-15 18:30:00', 'D', 'Bill Completed', 'minor objection bill can be rejected', 'Bill is approved..'),
(4, 4, 'R2316RMB4', 'R2314XVII', '2022-2023', 12512131, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:30:00', 'P', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmso_part_details`
--

DROP TABLE IF EXISTS `rmso_part_details`;
CREATE TABLE IF NOT EXISTS `rmso_part_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_rmso_master` int(11) DEFAULT NULL,
  `Part_Number` varchar(255) DEFAULT NULL,
  `PartName` varchar(255) DEFAULT NULL,
  `Alt_part_no` varchar(255) DEFAULT NULL,
  `IV_date` date DEFAULT NULL,
  `Sch_del_date` date DEFAULT NULL,
  `Actual_del_date` date DEFAULT NULL,
  `RV_Date` date DEFAULT NULL,
  `FPQ_Year` varchar(255) DEFAULT NULL,
  `MHR` double DEFAULT NULL,
  `Lab_Hours` double DEFAULT NULL,
  `FPQ_Rate_Unit_Price` double DEFAULT NULL,
  `Basic_Lab_Cost` double DEFAULT NULL,
  `Final_Labour_Cost` double DEFAULT NULL,
  `Basic_Mat_Cost` double DEFAULT NULL,
  `Final_Mat_Cost` double DEFAULT NULL,
  `Rebate` double DEFAULT NULL,
  `Non_Bom` double DEFAULT NULL,
  `FNI` double DEFAULT NULL,
  `BCD_Cess` double DEFAULT NULL,
  `Claimed_Amt` double DEFAULT NULL,
  `Adjusted_Claimed` double DEFAULT NULL,
  `Gross` double DEFAULT NULL,
  `Income_Tax` double DEFAULT NULL,
  `Service_Tax` double DEFAULT NULL,
  `VAT` double DEFAULT NULL,
  `CGST` double DEFAULT NULL,
  `SGST` double DEFAULT NULL,
  `IGST` double DEFAULT NULL,
  `TDS_basic_Cost` double DEFAULT NULL,
  `TDS_CGST` double DEFAULT NULL,
  `TDS_SGST` double DEFAULT NULL,
  `TDS_IGST` double DEFAULT NULL,
  `LD` double DEFAULT NULL,
  `Interest` double DEFAULT NULL,
  `Nature_Of_Work` varchar(255) DEFAULT NULL,
  `Engine` varchar(255) DEFAULT NULL,
  `PFACTOR` varchar(255) DEFAULT NULL,
  `Xlist` varchar(255) DEFAULT NULL,
  `Ylist` varchar(255) DEFAULT NULL,
  `Profit_Warranty_On_Lab_Cost` text DEFAULT NULL,
  `Profit_Warranty_On_Mat_Cost` text DEFAULT NULL,
  `RV_No` varchar(255) DEFAULT NULL,
  `Tran_Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmso_part_details`
--

INSERT INTO `rmso_part_details` (`id`, `fk_rmso_master`, `Part_Number`, `PartName`, `Alt_part_no`, `IV_date`, `Sch_del_date`, `Actual_del_date`, `RV_Date`, `FPQ_Year`, `MHR`, `Lab_Hours`, `FPQ_Rate_Unit_Price`, `Basic_Lab_Cost`, `Final_Labour_Cost`, `Basic_Mat_Cost`, `Final_Mat_Cost`, `Rebate`, `Non_Bom`, `FNI`, `BCD_Cess`, `Claimed_Amt`, `Adjusted_Claimed`, `Gross`, `Income_Tax`, `Service_Tax`, `VAT`, `CGST`, `SGST`, `IGST`, `TDS_basic_Cost`, `TDS_CGST`, `TDS_SGST`, `TDS_IGST`, `LD`, `Interest`, `Nature_Of_Work`, `Engine`, `PFACTOR`, `Xlist`, `Ylist`, `Profit_Warranty_On_Lab_Cost`, `Profit_Warranty_On_Mat_Cost`, `RV_No`, `Tran_Type`) VALUES
(4, 1, 'XVIIII', 'XVII', 'XVIIIZ', '1989-11-22', '1989-11-22', '1989-11-22', '1989-11-22', '2022-2034', 10.5, 10, 10.5, 10, 10, 10, 10, 10, 10, 10, 1, 10, 1000000, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 'wda', 'qweq', '12313ds', '1231dsad', '1231dassd', '1321asda', '123asds', '123asda', '3123asd'),
(5, 1, 'XVII', '', '', NULL, '1989-11-22', '2022-01-01', '2023-01-01', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 10, 10.51, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', ''),
(7, 3, 'PartNo1', 'PartNo2', '', '2022-12-12', '2023-01-02', NULL, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 132, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, '', '', '', '', '', '', '', '', ''),
(8, 3, 'PartNo2', '', '', NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 999, 100, 10, 0, 10, 10, 10, 10, 0, 1, 10, 1, 10, 100, '', '', '', '', '', '', '', '', ''),
(29, 2, 'adadf', '', '', NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, '', '', '', '', '', '', '', '', ''),
(30, 3, 'partno3', '', '', NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 100, 100, 1010, 0, 0, 0, 0, 0, 0, 102, 0, '', '', '', '', '', '', '', '', ''),
(32, 3, 'partno4', '', '', NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `section_dv_block`
--

DROP TABLE IF EXISTS `section_dv_block`;
CREATE TABLE IF NOT EXISTS `section_dv_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_office_id` int(11) NOT NULL,
  `nature` varchar(255) NOT NULL,
  `pm_section_code` int(11) NOT NULL,
  `pm_month` varchar(255) NOT NULL,
  `dv_block_start` int(11) NOT NULL,
  `dv_block_end` int(11) NOT NULL,
  `voucher_class` int(11) NOT NULL,
  `current_record` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_dv_block`
--

INSERT INTO `section_dv_block` (`id`, `fk_office_id`, `nature`, `pm_section_code`, `pm_month`, `dv_block_start`, `dv_block_end`, `voucher_class`, `current_record`, `created_at`) VALUES
(1, 2, 'RMSO', 4206, '1/2023', 1, 6, 1, 'V', '2023-01-17 10:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `usr_boss`
--

DROP TABLE IF EXISTS `usr_boss`;
CREATE TABLE IF NOT EXISTS `usr_boss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_task_usr` int(11) NOT NULL,
  `fk_usr_boss` int(11) NOT NULL,
  `record_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_boss`
--

INSERT INTO `usr_boss` (`id`, `fk_task_usr`, `fk_usr_boss`, `record_status`) VALUES
(1, 1, 3, 'V'),
(2, 1, 4, 'V'),
(3, 3, 5, 'V'),
(4, 4, 5, 'V');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
