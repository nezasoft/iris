-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2022 at 03:54 PM
-- Server version: 10.3.25-MariaDB
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
-- Database: `nezasoft_realex`
--
DROP DATABASE IF EXISTS `nezasoft_realex`;
CREATE DATABASE IF NOT EXISTS `nezasoft_realex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nezasoft_realex`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`) VALUES
(1, 'Deskjet 7110'),
(2, 'Sample Brand'),
(3, 'No Brand'),
(4, 'TELWIN- ITALY'),
(5, 'NYUMBA CEMENT'),
(6, 'STANDARD'),
(7, 'SOFT/EASY'),
(8, 'SOFT/EASY TYPE'),
(9, 'PREMIER'),
(10, 'OCEAN FRESH'),
(11, 'ORBITA'),
(12, 'WARM WHITE'),
(13, 'POLISHED GRANITO TILE'),
(14, 'REACT'),
(15, 'LIMIT'),
(16, 'THICK LAVENDER '),
(17, 'ARMCO'),
(18, 'EAST AFRICA CABLE LTD'),
(19, 'EAST AFRICA '),
(20, 'CANON'),
(21, 'RECESSED');

-- --------------------------------------------------------

--
-- Table structure for table `building_floors`
--

DROP TABLE IF EXISTS `building_floors`;
CREATE TABLE `building_floors` (
  `id` int(11) NOT NULL,
  `floor_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building_floors`
--

INSERT INTO `building_floors` (`id`, `floor_no`) VALUES
(1, 'Basement 6'),
(2, 'Basement 5'),
(3, 'Basement 4'),
(24, 'Basement 3'),
(25, 'Basement 2'),
(26, 'Basement 1'),
(27, 'Mezzanine 1'),
(28, 'Mezzanine 2'),
(29, 'Ground Floor'),
(30, '1st Floor'),
(31, '2nd Floor'),
(32, '3rd Floor'),
(33, '4th Floor'),
(34, '5th Floor'),
(35, '6th Floor'),
(36, '7th Floor'),
(37, '8th Floor'),
(38, '9th Floor'),
(39, '10th Floor'),
(40, '11th Floor'),
(41, '12th Floor'),
(42, '13th Floor'),
(43, '14th Floor'),
(44, '15th Floor'),
(45, '16th Floor'),
(46, '17th Floor'),
(47, '18th Floor'),
(48, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `building_sections`
--

DROP TABLE IF EXISTS `building_sections`;
CREATE TABLE `building_sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building_sections`
--

INSERT INTO `building_sections` (`id`, `section_name`) VALUES
(1, 'Plumbing Section'),
(2, 'Flooring Section'),
(3, 'Wall Section'),
(4, 'Gypsum Section'),
(5, 'Electrical & Wiring Section'),
(6, 'Paint Section'),
(7, 'Welding Section'),
(8, 'Roofing Section'),
(9, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `confirmation_approvals`
--

DROP TABLE IF EXISTS `confirmation_approvals`;
CREATE TABLE `confirmation_approvals` (
  `con_approval_id` int(11) NOT NULL,
  `conf_id` varchar(100) NOT NULL,
  `con_user_id` int(11) NOT NULL,
  `confirm_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `confirmation_approvals`
--

INSERT INTO `confirmation_approvals` (`con_approval_id`, `conf_id`, `con_user_id`, `confirm_code`) VALUES
(1, '', 2, '2562DF493015F5'),
(2, '', 6, '2562DF493015F5'),
(3, '', 20, '2562DF493015F5'),
(4, '', 0, '2562DF493015F5'),
(5, '', 24, '2562F65FC59A75'),
(6, '', 25, '2562F65FC59A75'),
(7, '', 0, '2562F65FC59A75'),
(8, '', 24, '3562F67E3C4C2C'),
(9, '', 25, '3562F67E3C4C2C'),
(10, '', 0, '3562F67E3C4C2C'),
(11, '', 24, '5562F6D580005B'),
(12, '', 25, '5562F6D580005B'),
(13, '', 0, '5562F6D580005B'),
(14, '', 24, '2562F6FCD8C398'),
(15, '', 25, '2562F6FCD8C398'),
(16, '', 6, '2562F6FCD8C398'),
(17, '', 0, '2562F6FCD8C398'),
(18, '', 24, '4562F71CC5D1B1'),
(19, '', 25, '4562F71CC5D1B1'),
(20, '', 6, '4562F71CC5D1B1'),
(21, '', 26, '4562F71CC5D1B1'),
(22, '', 0, '4562F71CC5D1B1'),
(23, '', 24, '4562F72C83DD4F'),
(24, '', 25, '4562F72C83DD4F'),
(25, '', 6, '4562F72C83DD4F'),
(26, '', 26, '4562F72C83DD4F'),
(27, '', 0, '4562F72C83DD4F'),
(28, '', 24, '1562F757175772'),
(29, '', 25, '1562F757175772'),
(30, '', 6, '1562F757175772'),
(31, '', 26, '1562F757175772'),
(32, '', 0, '1562F757175772'),
(33, '', 24, '3562F77B7A1DEF'),
(34, '', 25, '3562F77B7A1DEF'),
(35, '', 6, '3562F77B7A1DEF'),
(36, '', 26, '3562F77B7A1DEF'),
(37, '', 0, '3562F77B7A1DEF'),
(38, '', 24, '2562F78F07CB83'),
(39, '', 25, '2562F78F07CB83'),
(40, '', 6, '2562F78F07CB83'),
(41, '', 26, '2562F78F07CB83'),
(42, '', 0, '2562F78F07CB83'),
(43, '', 24, '4562F79E834341'),
(44, '', 25, '4562F79E834341'),
(45, '', 6, '4562F79E834341'),
(46, '', 26, '4562F79E834341'),
(47, '', 0, '4562F79E834341'),
(48, '', 24, '5562F7ACE867D4'),
(49, '', 25, '5562F7ACE867D4'),
(50, '', 0, '5562F7ACE867D4'),
(51, '', 24, '3563336CF6E731'),
(52, '', 25, '3563336CF6E731'),
(53, '', 0, '3563336CF6E731'),
(54, '', 24, '356333B9E2897D'),
(55, '', 25, '356333B9E2897D'),
(56, '', 6, '356333B9E2897D'),
(57, '', 26, '356333B9E2897D'),
(58, '', 0, '356333B9E2897D'),
(59, '', 24, '156333BD704F68'),
(60, '', 25, '156333BD704F68'),
(61, '', 6, '156333BD704F68'),
(62, '', 26, '156333BD704F68'),
(63, '', 0, '156333BD704F68'),
(64, '', 24, '356333DA0B5527'),
(65, '', 25, '356333DA0B5527'),
(66, '', 6, '356333DA0B5527'),
(67, '', 26, '356333DA0B5527'),
(68, '', 0, '356333DA0B5527'),
(69, '', 24, '456333EE254B18'),
(70, '', 25, '456333EE254B18'),
(71, '', 6, '456333EE254B18'),
(72, '', 26, '456333EE254B18'),
(73, '', 0, '456333EE254B18'),
(74, '', 24, '456334126C42EA'),
(75, '', 25, '456334126C42EA'),
(76, '', 6, '456334126C42EA'),
(77, '', 26, '456334126C42EA'),
(78, '', 0, '456334126C42EA'),
(79, '', 24, '4563341C0E15B5'),
(80, '', 6, '4563341C0E15B5'),
(81, '', 0, '4563341C0E15B5'),
(82, '', 24, '5563342A70E6DA'),
(83, '', 6, '5563342A70E6DA'),
(84, '', 0, '5563342A70E6DA'),
(85, '', 0, '1563B2D08CE3C5'),
(86, '', 0, '1563B2D08CE3C5'),
(87, '', 0, '4563B349AF1457'),
(88, '', 0, '4563B349AF1457'),
(89, '', 24, '5563C67E2AE92B'),
(90, '', 25, '5563C67E2AE92B'),
(91, '', 6, '5563C67E2AE92B'),
(92, '', 26, '5563C67E2AE92B'),
(93, '', 0, '5563C67E2AE92B'),
(94, '', 24, '2563C731201950'),
(95, '', 25, '2563C731201950'),
(96, '', 6, '2563C731201950'),
(97, '', 26, '2563C731201950'),
(98, '', 0, '2563C731201950'),
(99, '', 24, '5563C754C3563A'),
(100, '', 0, '5563C754C3563A'),
(101, '', 24, '5563C7630527DA'),
(102, '', 0, '5563C7630527DA'),
(103, '', 0, '1563C765CA8278'),
(104, '', 0, '1563C765CA8278'),
(105, '', 0, '5563C76D0140F3'),
(106, '', 0, '5563C76D0140F3'),
(107, '', 0, '5563C773E2DB14'),
(108, '', 0, '5563C773E2DB14'),
(109, '', 0, '1563C779FA7CE0'),
(110, '', 0, '1563C779FA7CE0'),
(111, '', 0, '5563C780F33BD4'),
(112, '', 0, '5563C780F33BD4'),
(113, '', 0, '1563C78A6BB0EE'),
(114, '', 0, '1563C78A6BB0EE'),
(115, '', 0, '4563C7900D111C'),
(116, '', 0, '4563C7900D111C'),
(117, '', 0, '4563C7962D4B98'),
(118, '', 0, '4563C7962D4B98'),
(119, '', 0, '2563C79F53C269'),
(120, '', 0, '2563C79F53C269'),
(121, '', 0, '2563C7A47017E9'),
(122, '', 0, '2563C7A47017E9'),
(123, '', 0, '3563C7B63C72CD'),
(124, '', 0, '3563C7B63C72CD'),
(125, '', 0, '3563C7BB2F0B68'),
(126, '', 0, '3563C7BB2F0B68'),
(127, '', 0, '2563C7C396FDD4'),
(128, '', 0, '2563C7C396FDD4'),
(129, '', 0, '1563C7C91DA720'),
(130, '', 0, '1563C7C91DA720'),
(131, '', 24, '15642D6BF91A0F'),
(132, '', 25, '15642D6BF91A0F'),
(133, '', 6, '15642D6BF91A0F'),
(134, '', 26, '15642D6BF91A0F'),
(135, '', 0, '15642D6BF91A0F'),
(136, '', 24, '25642EAB42CFCC'),
(137, '', 25, '25642EAB42CFCC'),
(138, '', 6, '25642EAB42CFCC'),
(139, '', 26, '25642EAB42CFCC'),
(140, '', 0, '25642EAB42CFCC'),
(141, '', 24, '456446156F06EE'),
(142, '', 6, '456446156F06EE'),
(143, '', 0, '456446156F06EE'),
(144, '', 24, '3564AF11CA413C'),
(145, '', 6, '3564AF11CA413C'),
(146, '', 26, '3564AF11CA413C'),
(147, '', 0, '3564AF11CA413C'),
(148, '', 24, '2564AF254191D9'),
(149, '', 6, '2564AF254191D9'),
(150, '', 26, '2564AF254191D9'),
(151, '', 0, '2564AF254191D9'),
(152, '', 0, '4564B22F9C5E7D'),
(153, '', 0, '4564B22F9C5E7D'),
(154, '', 24, '4564D96AADB151'),
(155, '', 6, '4564D96AADB151'),
(156, '', 26, '4564D96AADB151'),
(157, '', 0, '4564D96AADB151'),
(158, '', 24, '556501DFFDC3D7'),
(159, '', 6, '556501DFFDC3D7'),
(160, '', 26, '556501DFFDC3D7'),
(161, '', 0, '556501DFFDC3D7'),
(162, '', 24, '556501FC29E84F'),
(163, '', 6, '556501FC29E84F'),
(164, '', 26, '556501FC29E84F'),
(165, '', 0, '556501FC29E84F'),
(166, '', 24, '456502100E4ACE'),
(167, '', 6, '456502100E4ACE'),
(168, '', 26, '456502100E4ACE'),
(169, '', 0, '456502100E4ACE'),
(170, '', 24, '15652D0AD0362E'),
(171, '', 6, '15652D0AD0362E'),
(172, '', 26, '15652D0AD0362E'),
(173, '', 0, '15652D0AD0362E'),
(174, '', 24, '35652D0FA71D7C'),
(175, '', 6, '35652D0FA71D7C'),
(176, '', 26, '35652D0FA71D7C'),
(177, '', 0, '35652D0FA71D7C'),
(178, '', 24, '55655BE48A15DC'),
(179, '', 6, '55655BE48A15DC'),
(180, '', 26, '55655BE48A15DC'),
(181, '', 0, '55655BE48A15DC'),
(182, '', 24, '15655BE5FB382C'),
(183, '', 6, '15655BE5FB382C'),
(184, '', 26, '15655BE5FB382C'),
(185, '', 0, '15655BE5FB382C'),
(186, '', 24, '55655BED7A0AD7'),
(187, '', 6, '55655BED7A0AD7'),
(188, '', 26, '55655BED7A0AD7'),
(189, '', 0, '55655BED7A0AD7'),
(190, '', 24, '25655BF4FA73C9'),
(191, '', 6, '25655BF4FA73C9'),
(192, '', 26, '25655BF4FA73C9'),
(193, '', 0, '25655BF4FA73C9'),
(194, '', 24, '55655BFD83CBEC'),
(195, '', 6, '55655BFD83CBEC'),
(196, '', 26, '55655BFD83CBEC'),
(197, '', 0, '55655BFD83CBEC'),
(198, '', 24, '25655C03068B37'),
(199, '', 6, '25655C03068B37'),
(200, '', 26, '25655C03068B37'),
(201, '', 0, '25655C03068B37'),
(202, '', 24, '1565D52DCD05C0'),
(203, '', 6, '1565D52DCD05C0'),
(204, '', 26, '1565D52DCD05C0'),
(205, '', 0, '1565D52DCD05C0'),
(206, '', 24, '1565D54EF23714'),
(207, '', 6, '1565D54EF23714'),
(208, '', 26, '1565D54EF23714'),
(209, '', 0, '1565D54EF23714'),
(210, '', 24, '2565D559D7BB36'),
(211, '', 6, '2565D559D7BB36'),
(212, '', 26, '2565D559D7BB36'),
(213, '', 0, '2565D559D7BB36');

-- --------------------------------------------------------

--
-- Table structure for table `cpv`
--

DROP TABLE IF EXISTS `cpv`;
CREATE TABLE `cpv` (
  `cpv_id` int(11) NOT NULL,
  `cpv_ref_no` varchar(30) NOT NULL,
  `site_id` int(11) NOT NULL,
  `cpv_date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `cpv_amount` double NOT NULL,
  `cpv_amount_words` varchar(300) NOT NULL,
  `cheque_no` varchar(30) NOT NULL,
  `cheque_date` date NOT NULL,
  `bank` varchar(30) NOT NULL,
  `lpo_no` varchar(80) NOT NULL,
  `invoice_no` varchar(80) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approved_user_id` int(11) NOT NULL,
  `cpb_status` enum('Approved','Cancelled','In-Process','Completed') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpv`
--

INSERT INTO `cpv` (`cpv_id`, `cpv_ref_no`, `site_id`, `cpv_date`, `supplier_id`, `cpv_amount`, `cpv_amount_words`, `cheque_no`, `cheque_date`, `bank`, `lpo_no`, `invoice_no`, `user_id`, `approved_user_id`, `cpb_status`) VALUES
(1, '4889', 1, '2015-11-23', 74, 5195.36, '', '', '0000-00-00', '', 'VV150639', '103374', 20, 0, 'Approved'),
(2, '4887', 1, '2015-11-23', 176, 540, '', '', '0000-00-00', '', 'VV150637', '156', 20, 0, 'Approved'),
(3, '4888', 1, '2015-11-23', 133, 126000, '', '', '0000-00-00', '', 'VV150640', 'CEM/124738', 20, 0, 'Approved'),
(4, '4890', 1, '2015-11-24', 125, 5200, '', '', '0000-00-00', '', 'VV150641', '522', 20, 0, 'Approved'),
(5, '4891', 1, '2015-11-24', 90, 10000, '', '', '0000-00-00', '', 'none', 'etr no 51726', 20, 0, 'Approved'),
(6, '#3774', 1, '2015-11-30', 178, 387080, '', '', '0000-00-00', '', 'NO LPO', '7430', 20, 0, 'Approved'),
(7, '#4850', 1, '2015-11-30', 177, 130890, '', '', '0000-00-00', '', 'NO LPO', '7611', 20, 0, 'Approved'),
(8, '4882', 1, '2015-12-02', 174, 83972.4, '', '', '0000-00-00', '', 'vv150567', '11008389, 11008384', 20, 0, 'Approved'),
(9, '4746', 1, '2015-12-02', 1, 86207.9, '', '', '0000-00-00', '', 'vv15628', '11248344', 20, 0, 'Approved'),
(10, '4748', 1, '2015-12-02', 1, 9690, '', '', '0000-00-00', '', 'vv15628', '11248424', 20, 0, 'Approved'),
(11, '4842', 1, '2015-12-02', 133, 63850, '', '', '0000-00-00', '', ' vv150616', 'CEM/123387', 20, 0, 'Approved'),
(12, '4822', 1, '2015-12-02', 133, 63000, '', '', '0000-00-00', '', ' vv150607', 'CEM/122515', 20, 0, 'Approved'),
(13, '4729', 1, '2015-12-02', 74, 14999.85, '', '', '0000-00-00', '', ' vv150609', '102639', 20, 0, 'Approved'),
(14, '4739', 1, '2015-12-02', 173, 21800, '', '', '0000-00-00', '', 'verbal', 'SIB01193764', 20, 0, 'Approved'),
(15, '4836', 1, '2015-12-02', 80, 392.3, '', '', '0000-00-00', '', 'vv150605', '22457', 20, 0, 'Approved'),
(16, '1702', 1, '2015-12-02', 1, 14600, '', '', '0000-00-00', '', 'vv150634', '11248650', 20, 0, 'Approved'),
(17, '4772', 1, '2015-12-02', 15, 18000, '', '', '0000-00-00', '', 'verbal', 'INV2096', 20, 0, 'Approved'),
(18, '4805', 1, '2015-12-02', 81, 10309.99, '', '', '0000-00-00', '', 'vv150585', '264103', 20, 0, 'Approved'),
(19, '4813', 1, '2015-12-02', 81, 5355, '', '', '0000-00-00', '', 'vv150594', '264641', 20, 0, 'Approved'),
(20, '4884', 1, '2015-12-02', 81, 4403.8, '', '', '0000-00-00', '', 'vv150625', '265869', 20, 0, 'Approved'),
(21, '1714', 1, '2015-12-02', 174, 40144.35, '', '', '0000-00-00', '', 'vv150635', '11010460, 11010461', 20, 0, 'Approved'),
(22, '917', 1, '2015-12-04', 81, 127489.4, '', '', '0000-00-00', '', 'vv150390', '259358, 259355,259360', 20, 0, 'Approved'),
(23, '4878', 1, '2015-12-04', 173, 968934.02, '', '', '0000-00-00', '', 'vv130329', 'SIBO1169331', 20, 0, 'Approved'),
(24, '4877', 1, '2015-12-04', 173, 136490.8, '', '', '0000-00-00', '', 'vv130329, vv150058', 'SIB01177292, SIB01177654', 20, 0, 'Approved'),
(25, '1730', 1, '2015-12-04', 174, 10616.32, '', '', '0000-00-00', '', 'vv150648', '11010594', 20, 0, 'Approved'),
(26, '1734', 1, '2015-12-04', 176, 18625, '', '', '0000-00-00', '', 'vv150655', '197', 20, 0, 'Approved'),
(27, '1735', 1, '2015-12-04', 8, 6280, '', '', '0000-00-00', '', 'vv150644', '519053', 20, 0, 'Approved'),
(28, '1739', 1, '2015-12-05', 81, 24591, '', '', '0000-00-00', '', 'vv150390', '259355', 20, 0, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_approvals`
--

DROP TABLE IF EXISTS `delivery_approvals`;
CREATE TABLE `delivery_approvals` (
  `del_approval_id` int(11) NOT NULL,
  `del_ref_no` varchar(100) NOT NULL,
  `del_user_id` int(11) NOT NULL,
  `del_approve_date` date NOT NULL,
  `del_approve_time` time NOT NULL,
  `del_approval_status` enum('New','In-Process','Approved','Pending') DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `delivery_approvals`
--

INSERT INTO `delivery_approvals` (`del_approval_id`, `del_ref_no`, `del_user_id`, `del_approve_date`, `del_approve_time`, `del_approval_status`) VALUES
(1, 'VAL-DEL-2', 7, '0000-00-00', '00:00:00', 'New'),
(2, 'VAL-DEL-2', 3, '0000-00-00', '00:00:00', 'New'),
(3, 'VAL-DEL-2', 8, '0000-00-00', '00:00:00', 'New'),
(4, 'VAL-DEL-2', 23, '0000-00-00', '00:00:00', 'New'),
(6, 'VAL-DEL-2', 6, '0000-00-00', '00:00:00', 'New'),
(7, 'VAL-DEL-2', 33, '0000-00-00', '00:00:00', 'New'),
(9, 'VAL-DEL-3', 6, '0000-00-00', '00:00:00', 'New'),
(11, 'VAL-DEL-3', 34, '0000-00-00', '00:00:00', 'New'),
(12, 'VAL-DEL-3', 6, '0000-00-00', '00:00:00', 'New'),
(14, 'VAL-DEL-5', 6, '0000-00-00', '00:00:00', 'New'),
(15, 'VAL-DEL-5', 26, '0000-00-00', '00:00:00', 'New'),
(17, 'VAL-DEL-6', 16, '0000-00-00', '00:00:00', 'New'),
(19, 'VAL-DEL-7', 16, '0000-00-00', '00:00:00', 'New'),
(21, 'VAL-DEL-7', 16, '0000-00-00', '00:00:00', 'New'),
(23, 'VAL-DEL-7', 16, '0000-00-00', '00:00:00', 'New'),
(25, 'VAL-DEL-10', 6, '0000-00-00', '00:00:00', 'New'),
(26, 'VAL-DEL-10', 26, '0000-00-00', '00:00:00', 'New'),
(28, 'VAL-DEL-10', 6, '0000-00-00', '00:00:00', 'New'),
(29, 'VAL-DEL-10', 26, '0000-00-00', '00:00:00', 'New'),
(31, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(32, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(34, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(35, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(37, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(38, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(40, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(41, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(43, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(44, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(46, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(47, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(49, 'VAL-DEL-12', 6, '0000-00-00', '00:00:00', 'New'),
(50, 'VAL-DEL-12', 26, '0000-00-00', '00:00:00', 'New'),
(52, 'VAL-DEL-19', 34, '0000-00-00', '00:00:00', 'New'),
(53, 'VAL-DEL-19', 6, '0000-00-00', '00:00:00', 'New'),
(55, 'VAL-DEL-19', 34, '0000-00-00', '00:00:00', 'New'),
(56, 'VAL-DEL-19', 6, '0000-00-00', '00:00:00', 'New'),
(58, 'VAL-DEL-21', 34, '0000-00-00', '00:00:00', 'New'),
(59, 'VAL-DEL-21', 6, '0000-00-00', '00:00:00', 'New'),
(60, 'VAL-DEL-21', 26, '0000-00-00', '00:00:00', 'New'),
(62, 'VAL-DEL-21', 34, '0000-00-00', '00:00:00', 'New'),
(63, 'VAL-DEL-21', 6, '0000-00-00', '00:00:00', 'New'),
(64, 'VAL-DEL-21', 26, '0000-00-00', '00:00:00', 'New'),
(66, 'VAL-DEL-21', 34, '0000-00-00', '00:00:00', 'New'),
(67, 'VAL-DEL-21', 6, '0000-00-00', '00:00:00', 'New'),
(68, 'VAL-DEL-21', 26, '0000-00-00', '00:00:00', 'New'),
(70, 'VAL-DEL-21', 34, '0000-00-00', '00:00:00', 'New'),
(71, 'VAL-DEL-21', 6, '0000-00-00', '00:00:00', 'New'),
(72, 'VAL-DEL-21', 26, '0000-00-00', '00:00:00', 'New'),
(74, 'VAL-DEL-25', 34, '0000-00-00', '00:00:00', 'New'),
(75, 'VAL-DEL-25', 6, '0000-00-00', '00:00:00', 'New'),
(76, 'VAL-DEL-25', 26, '0000-00-00', '00:00:00', 'New'),
(78, 'VAL-DEL-25', 34, '0000-00-00', '00:00:00', 'New'),
(79, 'VAL-DEL-25', 6, '0000-00-00', '00:00:00', 'New'),
(80, 'VAL-DEL-25', 26, '0000-00-00', '00:00:00', 'New'),
(82, 'VAL-DEL-25', 34, '0000-00-00', '00:00:00', 'New'),
(83, 'VAL-DEL-25', 6, '0000-00-00', '00:00:00', 'New'),
(84, 'VAL-DEL-25', 26, '0000-00-00', '00:00:00', 'New'),
(86, 'VAL-DEL-25', 34, '0000-00-00', '00:00:00', 'New'),
(87, 'VAL-DEL-25', 6, '0000-00-00', '00:00:00', 'New'),
(88, 'VAL-DEL-25', 26, '0000-00-00', '00:00:00', 'New'),
(90, 'VAL-DEL-25', 34, '0000-00-00', '00:00:00', 'New'),
(91, 'VAL-DEL-25', 6, '0000-00-00', '00:00:00', 'New'),
(92, 'VAL-DEL-25', 26, '0000-00-00', '00:00:00', 'New'),
(94, 'VAL-DEL-25', 34, '0000-00-00', '00:00:00', 'New'),
(95, 'VAL-DEL-25', 6, '0000-00-00', '00:00:00', 'New'),
(96, 'VAL-DEL-25', 26, '0000-00-00', '00:00:00', 'New'),
(98, 'VAL-DEL-31', 34, '0000-00-00', '00:00:00', 'New'),
(99, 'VAL-DEL-31', 6, '0000-00-00', '00:00:00', 'New'),
(100, 'VAL-DEL-31', 26, '0000-00-00', '00:00:00', 'New'),
(102, 'VAL-DEL-31', 34, '0000-00-00', '00:00:00', 'New'),
(103, 'VAL-DEL-31', 6, '0000-00-00', '00:00:00', 'New'),
(104, 'VAL-DEL-31', 26, '0000-00-00', '00:00:00', 'New'),
(106, 'VAL-DEL-31', 34, '0000-00-00', '00:00:00', 'New'),
(107, 'VAL-DEL-31', 6, '0000-00-00', '00:00:00', 'New'),
(108, 'VAL-DEL-31', 26, '0000-00-00', '00:00:00', 'New'),
(110, 'VAL-DEL-31', 34, '0000-00-00', '00:00:00', 'New'),
(111, 'VAL-DEL-31', 6, '0000-00-00', '00:00:00', 'New'),
(112, 'VAL-DEL-31', 26, '0000-00-00', '00:00:00', 'New'),
(114, 'VAL-DEL-31', 34, '0000-00-00', '00:00:00', 'New'),
(115, 'VAL-DEL-31', 6, '0000-00-00', '00:00:00', 'New'),
(116, 'VAL-DEL-31', 26, '0000-00-00', '00:00:00', 'New'),
(118, 'VAL-DEL-36', 34, '0000-00-00', '00:00:00', 'New'),
(119, 'VAL-DEL-36', 6, '0000-00-00', '00:00:00', 'New'),
(120, 'VAL-DEL-36', 26, '0000-00-00', '00:00:00', 'New'),
(122, 'VAL-DEL-36', 34, '0000-00-00', '00:00:00', 'New'),
(123, 'VAL-DEL-36', 6, '0000-00-00', '00:00:00', 'New'),
(124, 'VAL-DEL-36', 26, '0000-00-00', '00:00:00', 'New'),
(126, 'VAL-DEL-36', 34, '0000-00-00', '00:00:00', 'New'),
(127, 'VAL-DEL-36', 6, '0000-00-00', '00:00:00', 'New'),
(128, 'VAL-DEL-36', 26, '0000-00-00', '00:00:00', 'New'),
(130, 'VAL-DEL-39', 20, '0000-00-00', '00:00:00', 'New'),
(131, 'VAL-DEL-39', 45, '0000-00-00', '00:00:00', 'New'),
(133, 'VAL-DEL-39', 20, '0000-00-00', '00:00:00', 'New'),
(134, 'VAL-DEL-39', 45, '0000-00-00', '00:00:00', 'New'),
(136, 'VAL-DEL-39', 20, '0000-00-00', '00:00:00', 'New'),
(137, 'VAL-DEL-39', 45, '0000-00-00', '00:00:00', 'New'),
(138, 'VALDEL42', 20, '0000-00-00', '00:00:00', 'New'),
(139, 'VALDEL42', 45, '0000-00-00', '00:00:00', 'New'),
(141, 'VALDEL42', 20, '0000-00-00', '00:00:00', 'New'),
(142, 'VALDEL42', 45, '0000-00-00', '00:00:00', 'New'),
(144, 'VALDEL44', 20, '0000-00-00', '00:00:00', 'New'),
(145, 'VALDEL44', 45, '0000-00-00', '00:00:00', 'New'),
(147, 'VALDEL44', 20, '0000-00-00', '00:00:00', 'New'),
(148, 'VALDEL44', 45, '0000-00-00', '00:00:00', 'New'),
(150, 'VALDEL46', 20, '2018-08-10', '13:29:41', 'Approved'),
(151, 'VALDEL46', 45, '2018-08-11', '09:49:53', 'Approved'),
(153, 'VALDEL46', 20, '2018-08-10', '13:29:41', 'Approved'),
(154, 'VALDEL46', 45, '2018-08-11', '09:49:53', 'Approved'),
(156, 'VALDEL46', 20, '2018-08-10', '13:29:41', 'Approved'),
(157, 'VALDEL46', 45, '2018-08-11', '09:49:53', 'Approved'),
(159, 'VALDEL46', 20, '2018-08-10', '13:29:41', 'Approved'),
(160, 'VALDEL46', 45, '2018-08-11', '09:49:53', 'Approved'),
(161, 'VALDEL50', 20, '2018-08-10', '13:28:22', 'Approved'),
(162, 'VALDEL50', 45, '2018-08-10', '15:40:43', 'Approved'),
(164, 'VALDEL51', 20, '0000-00-00', '00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_confirmations`
--

DROP TABLE IF EXISTS `delivery_confirmations`;
CREATE TABLE `delivery_confirmations` (
  `del_con_id` int(11) NOT NULL,
  `del_no` varchar(50) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `site_supply_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `inward_no` varchar(100) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `confirm_code` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `conf_app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_received` date NOT NULL,
  `date_entered` date NOT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_confirmations`
--

INSERT INTO `delivery_confirmations` (`del_con_id`, `del_no`, `mat_id`, `site_supply_id`, `price`, `inward_no`, `pack_id`, `qty`, `balance`, `confirm_code`, `details`, `conf_app_id`, `user_id`, `date_received`, `date_entered`, `site_id`) VALUES
(2, '3615', 697, 6, 0, '5545', 10, 1, 1, '2562F65FC59A75', 'MCCB 2004', 0, 1, '2015-10-15', '2015-10-27', 1),
(3, '3607', 699, 6, 0, '5471', 10, 5, 5, '3562F67E3C4C2C', '150MM X 150MM', 0, 20, '2015-10-07', '2015-10-27', 1),
(4, '3605', 700, 6, 0, '5457', 10, 8, 8, '5562F6D580005B', '2000MM X 325MM', 0, 20, '2015-10-06', '2015-10-27', 1),
(5, '3609', 696, 6, 0, '5503', 10, 1, 1, '2562F6FCD8C398', 'Chinese Generator Model: 200GF S/No W121Y00004', 0, 20, '2015-10-09', '2015-10-27', 1),
(6, '3604', 678, 6, 50100, '5451', 10, 100, 100, '4562F71CC5D1B1', 'Adjustable base jack tubular L660 MM', 0, 20, '2015-10-06', '2015-10-27', 1),
(7, '3612', 682, 6, 10800, '5527', 10, 60, 60, '4562F72C83DD4F', 'Swivel Coupler (Electroplated)  Drop Forged (EN74)', 0, 20, '2015-10-13', '2015-10-27', 1),
(8, '1947', 683, 6, 37000, '5290', 10, 200, 200, '1562F757175772', 'Loose Spigot (Square)', 0, 20, '2015-10-01', '2015-10-27', 1),
(9, '1947', 688, 6, 388800, '5290', 10, 240, 240, '3562F77B7A1DEF', 'Cuplock Standard Vertical 2.5MM without spigot', 0, 20, '2015-10-01', '2015-10-27', 1),
(10, '1948', 691, 6, 243600, '5293', 10, 400, 400, '2562F78F07CB83', 'Cuplock Ledgers 1.6M Horizontal painted dia', 0, 20, '2015-10-01', '2015-10-27', 1),
(11, '1948', 694, 6, 382400, '5293', 10, 400, 400, '4562F79E834341', 'Cuplock Ledgers 2.5M Horizontal painted dia', 0, 20, '2015-10-01', '2015-10-27', 1),
(12, '3605', 659, 6, 0, '5457', 10, 10, 10, '5562F7ACE867D4', '1900MM X 560MM', 0, 20, '2015-10-06', '2015-10-27', 1),
(13, '3611', 701, 6, 0, '5526', 10, 2, 2, '3563336CF6E731', 'Global Calcium SMFN100 for 200KW G/Set', 0, 20, '2015-10-13', '2015-10-30', 1),
(14, '3619', 702, 6, 0, '5566', 10, 1, 1, '356333B9E2897D', 'Electric 10Kw', 0, 20, '2015-10-24', '2015-10-30', 1),
(15, '3619', 102, 6, 0, '5566', 10, 1, 2, '156333BD704F68', 'Manual Bar Cutter', 0, 20, '2015-10-24', '2015-10-30', 1),
(16, '3619', 704, 6, 0, '5566', 10, 1, 1, '356333DA0B5527', 'Chinese 3KW', 0, 20, '2015-10-24', '2015-10-30', 1),
(17, '0743', 696, 6, 0, '5288', 10, 1, 1, '456333EE254B18', 'Chinese Diesel generator 12kw Model 12GF SNO 726527', 0, 20, '2015-09-30', '2015-10-30', 1),
(18, '1946', 705, 6, 0, '5287', 10, 2, 2, '456334126C42EA', 'Gasoline Vibrator with Honda Engine', 0, 20, '2015-09-30', '2015-10-30', 1),
(19, '1946', 706, 6, 0, '5287', 10, 2, 2, '4563341C0E15B5', 'Poker wires 38mm', 0, 20, '2015-09-30', '2015-10-30', 1),
(20, '3617', 706, 6, 0, '5556', 10, 2, 4, '5563342A70E6DA', 'Poker wires 38mm', 0, 20, '2015-10-17', '2015-10-30', 1),
(21, '062', 665, 7, 0, '1021', 10, 1, 1, '1563B2D08CE3C5', 'Chinese Model', 0, 20, '2015-04-16', '2015-11-05', 1),
(22, '007', 77, 7, 0, '4122', 10, 1, 2, '4563B349AF1457', 'SIP Industrial  Model: BX1-315', 0, 20, '2015-06-29', '2015-11-05', 1),
(23, '3629', 659, 6, 0, '5599', 10, 5, 15, '5563C67E2AE92B', '1900 X 500MM', 0, 20, '2015-11-05', '2015-11-06', 1),
(24, '3629', 659, 6, 0, '5599', 10, 25, 40, '2563C731201950', '1230 X 600MM', 0, 20, '2015-11-05', '2015-11-06', 1),
(25, '1936', 92, 6, 0, '5255', 26, 1, 0, '5563C754C3563A', '2.5MM Welding Rods of 5kgs', 0, 20, '2015-10-17', '2015-11-06', 1),
(26, '3624', 740, 6, 0, '5580', 23, 1, 3, '5563C7630527DA', '3.25mm', 0, 20, '2015-10-29', '2015-11-06', 1),
(28, '1917', 183, 6, 0, '5022', 10, 3, 3, '5563C76D0140F3', 'Sururu', 0, 20, '2015-09-02', '2015-11-06', 1),
(29, '1918', 77, 6, 0, '5024', 10, 1, 1, '5563C773E2DB14', 'Heavy duty welding machine. Make: SIP Industrial Welding Mate', 0, 20, '2015-09-03', '2015-11-06', 1),
(30, '1917', 656, 6, 0, '5032', 10, 2, 18, '1563C779FA7CE0', 'No desc', 0, 20, '2015-10-02', '2015-11-06', 1),
(31, '9025', 145, 6, 0, '5037', 10, 1, 3, '5563C780F33BD4', 'Flat Chisel- TE-SP FM 50', 0, 20, '2015-09-09', '2015-11-06', 1),
(32, '1925', 650, 6, 0, '5036', 10, 1, 1, '1563C78A6BB0EE', 'CPU, Monitor and Keyboard', 0, 20, '2015-09-09', '2015-11-06', 1),
(33, '1924', 609, 6, 0, '5036', 10, 1, 1, '4563C7900D111C', 'Mercury Elite 650PPU', 0, 20, '2015-09-09', '2015-11-06', 1),
(34, '1924', 651, 6, 0, '5036', 10, 2, 2, '4563C7962D4B98', 'Samsung Laser Jet ML2850D', 0, 20, '2015-09-09', '2015-11-06', 1),
(35, '1920', 663, 6, 0, '5028', 10, 1, 1, '2563C79F53C269', 'TE 1500-AVR 230V', 0, 20, '2015-09-07', '2015-11-06', 1),
(36, '1920', 664, 6, 0, '5028', 10, 1, 1, '2563C7A47017E9', 'Pointed Chisel TE-SP SM36', 0, 20, '2015-09-07', '2015-11-06', 1),
(37, '1916', 570, 6, 0, '5021', 19, 2, 10, '3563C7B63C72CD', 'Ordinary Nails', 0, 20, '2015-09-07', '2015-11-06', 1),
(38, '3620', 570, 6, 0, '5567', 19, 10, 20, '3563C7BB2F0B68', 'Ordinary Nails', 0, 20, '2015-10-10', '2015-11-06', 1),
(39, '1936', 661, 6, 0, '5255', 10, 1, 1, '2563C7C396FDD4', 'Greaves Infra Complete Pump(New) Model: GCP 350D-DLX', 0, 20, '2015-09-17', '2015-11-06', 1),
(40, '1932', 190, 6, 0, '5251', 10, 1, 2, '1563C7C91DA720', 'Greaves Infra Complete Pump(New) Model: GCP 350D-DLX', 0, 20, '2015-09-15', '2015-11-06', 1),
(41, '3631', 681, 6, 112800, '5412', 10, 200, 200, '15642D6BF91A0F', 'Fork head jacks', 0, 20, '2015-11-07', '2015-11-11', 1),
(42, '3631', 678, 6, 50100, '5412', 10, 10, 200, '25642EAB42CFCC', 'Base Jack Tubular', 0, 20, '2015-11-07', '2015-11-11', 1),
(43, '3634', 675, 6, 0, '5436', 10, 1, 2, '456446156F06EE', 'Small Chinese Plate', 0, 20, '2015-11-11', '2015-11-12', 1),
(44, '3636', 706, 6, 0, '6256', 10, 2, 6, '3564AF11CA413C', 'Poker Wire 38mm', 0, 20, '2015-11-13', '2015-11-17', 1),
(45, '3635', 739, 6, 0, '5440', 10, 2, 2, '2564AF254191D9', ' 8&quot; X 4&quot; ', 0, 20, '2015-11-12', '2015-11-17', 1),
(46, '1918', 92, 6, 0, '5024', 26, 1, 1, '4564B22F9C5E7D', 'Welding Rods 2.5MM', 0, 20, '2015-09-02', '2015-11-17', 1),
(47, '3639', 701, 6, 0, '6273', 10, 2, 2, '4564D96AADB151', 'N70', 0, 20, '2015-11-17', '2015-11-19', 1),
(48, '3642', 118, 6, 0, '6281', 10, 1, 1, '556501DFFDC3D7', 'Small Size', 0, 20, '2015-11-20', '2015-11-21', 1),
(49, '3642', 122, 6, 0, '6281', 10, 1, 1, '556501FC29E84F', 'Big C/Hammers', 0, 20, '2015-11-20', '2015-11-21', 1),
(50, '3642', 765, 6, 0, '6281', 10, 1, 1, '456502100E4ACE', 'With Nozzles', 0, 20, '2015-11-20', '2015-11-21', 1),
(51, '3641', 706, 6, 0, '6282', 10, 1, 7, '15652D0AD0362E', 'Poker Wire 48mm', 0, 20, '2015-11-19', '2015-11-23', 1),
(52, '3641', 705, 6, 0, '6282', 10, 1, 1, '35652D0FA71D7C', 'CE-SPARTAN Vibrator 7.0 HP', 0, 20, '2015-11-19', '2015-11-23', 1),
(53, '3645', 701, 6, 0, '6296', 10, 1, 1, '55655BE48A15DC', 'N3 90', 0, 20, '2015-11-21', '2015-11-25', 1),
(54, '3646', 701, 6, 0, '6296', 10, 1, 1, '15655BE5FB382C', '12V CAMEL', 0, 20, '2015-11-21', '2015-11-25', 1),
(55, '3644', 681, 6, 0, '6295', 10, 200, 1, '55655BED7A0AD7', 'Fork head jacks', 0, 20, '2015-11-21', '2015-11-25', 1),
(56, '3647', 687, 6, 0, '6299', 10, 147, 147, '25655BF4FA73C9', '3m', 0, 20, '2015-11-23', '2015-11-25', 1),
(57, '3647', 688, 6, 0, '6299', 10, 398, 638, '55655BFD83CBEC', 'without spigots', 0, 20, '2015-11-23', '2015-11-25', 1),
(58, '3647', 689, 6, 0, '6299', 10, 140, 140, '25655C03068B37', '2m', 0, 20, '2015-11-23', '2015-11-25', 1),
(59, '3652', 702, 6, 0, '6506', 10, 1, 2, '1565D52DCD05C0', 'Electric Bar Cutter', 0, 20, '2015-12-28', '2015-12-01', 1),
(60, '3654', 659, 6, 0, '6518', 10, 6, 0, '1565D54EF23714', '265 X 3000mm', 0, 20, '2015-12-28', '2015-12-01', 1),
(61, '3654', 659, 6, 0, '6518', 10, 18, 1, '2565D559D7BB36', '200 X 3000mm', 0, 20, '2015-12-28', '2015-12-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_note`
--

DROP TABLE IF EXISTS `delivery_note`;
CREATE TABLE `delivery_note` (
  `delivery_id` int(11) NOT NULL,
  `delivery_no` varchar(200) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `qty` float NOT NULL,
  `pack_id` int(11) NOT NULL,
  `del_approval_id` int(11) NOT NULL,
  `del_details` varchar(300) NOT NULL,
  `vehicle_no` varchar(20) NOT NULL,
  `taken_by` varchar(100) NOT NULL,
  `from_site_id` int(11) NOT NULL,
  `to_site_id` int(11) NOT NULL,
  `attn_user_id` int(11) NOT NULL,
  `delivery_status` enum('New','Approved','In-Process','Completed') NOT NULL,
  `delivery_name` varchar(300) NOT NULL,
  `site_code` varchar(50) DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_time` time DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `delivery_note`
--

INSERT INTO `delivery_note` (`delivery_id`, `delivery_no`, `mat_id`, `qty`, `pack_id`, `del_approval_id`, `del_details`, `vehicle_no`, `taken_by`, `from_site_id`, `to_site_id`, `attn_user_id`, `delivery_status`, `delivery_name`, `site_code`, `del_date`, `del_time`, `user_id`) VALUES
(1, 'VAL-DEL-1', 116, 2, 10, 0, 'sds', 'sds', 'dds', 1, 4, 22, 'New', 'sdsd', 'VAL', '2015-10-06', '09:50:04', 1),
(2, 'VAL-DEL-2', 769, 14, 10, 0, '5&quot; X 2.5&quot; X 28.1m Long - For batching plant', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1939', 'VAL', '2015-11-24', '09:30:56', 20),
(3, 'VAL-DEL-3', 770, 21, 10, 0, 'no desc', 'None', 'Peter', 1, 6, 33, 'New', '#1940', 'VAL', '2015-11-24', '09:39:45', 20),
(4, 'VAL-DEL-3', 771, 1, 10, 0, 'Wooden Table', 'None', 'Peter', 1, 6, 33, 'New', '#1940', 'VAL', '2015-11-24', '09:39:45', 20),
(5, 'VAL-DEL-5', 772, 2, 10, 0, 'Single Ruled', 'none', 'MRS NASSIM', 1, 6, 33, 'New', '#1941', 'VAL', '2015-11-24', '09:45:27', 20),
(6, 'VAL-DEL-6', 773, 1, 10, 0, 'SIze: 650 X 340mm', 'KCE 780M', 'Evans', 1, 6, 35, 'New', '#1942', 'VAL', '2015-11-24', '09:54:02', 20),
(7, 'VAL-DEL-7', 740, 20, 10, 0, 'welding rods', 'KBJ 873R', 'Peter', 1, 6, 33, 'New', '#1943', 'VAL', '2015-11-24', '11:39:36', 20),
(8, 'VAL-DEL-7', 774, 1, 10, 0, 'black sheets', 'KBJ 873R', 'Peter', 1, 6, 33, 'New', '#1943', 'VAL', '2015-11-24', '11:39:36', 20),
(9, 'VAL-DEL-7', 776, 1, 10, 0, '2&quot; X 1&quot; X 20ft', 'KBJ 873R', 'Peter', 1, 6, 33, 'New', '#1943', 'VAL', '2015-11-24', '11:39:36', 20),
(10, 'VAL-DEL-10', 524, 5, 10, 0, 'White', 'KCE 780M', 'Evans', 1, 6, 33, 'New', '#1944', 'VAL', '2015-11-24', '11:53:09', 20),
(11, 'VAL-DEL-10', 92, 1, 26, 0, 'welding rods', 'KCE 780M', 'Evans', 1, 6, 33, 'New', '#1944', 'VAL', '2015-11-24', '11:53:09', 20),
(12, 'VAL-DEL-12', 500, 1, 24, 0, 'binding wire', 'KBJ 837R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(13, 'VAL-DEL-12', 165, 2, 19, 0, 'grease', 'KBJ 837R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(14, 'VAL-DEL-12', 778, 4, 10, 0, '40mm X 40mm X 25mm 30m ', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(15, 'VAL-DEL-12', 780, 2, 10, 0, 'industrial sockets', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(16, 'VAL-DEL-12', 705, 2, 10, 0, 'complete with engine and tool kit', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(17, 'VAL-DEL-12', 706, 2, 10, 0, 'for vibrator machines', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(18, 'VAL-DEL-12', 519, 5, 10, 0, 'hacksaw blades', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1946', 'VAL', '2015-11-24', '12:56:18', 20),
(19, 'VAL-DEL-19', 688, 240, 10, 0, 'cuplock without spigots', 'KAP 420J', 'Michael Nzuke', 1, 6, 33, 'New', '#1947', 'VAL', '2015-11-24', '13:09:29', 20),
(20, 'VAL-DEL-19', 683, 200, 10, 0, '30 X 30 X 300MM', 'KAP 420J', 'Michael Nzuke', 1, 6, 33, 'New', '#1947', 'VAL', '2015-11-24', '13:09:29', 20),
(21, 'VAL-DEL-21', 691, 400, 10, 0, 'cuplock ledgers', 'KAK 426D', 'Harun Matheka', 1, 6, 33, 'New', '#1948', 'VAL', '2015-11-24', '14:49:04', 20),
(22, 'VAL-DEL-21', 694, 400, 10, 0, 'cuplock ledgers 2.5m', 'KAK 426D', 'Harun Matheka', 1, 6, 33, 'New', '#1948', 'VAL', '2015-11-24', '14:49:04', 20),
(23, 'VAL-DEL-21', 784, 1, 4, 0, 'Assorted pieces', 'KAK 426D', 'Harun Matheka', 1, 6, 33, 'New', '#1948', 'VAL', '2015-11-24', '14:49:04', 20),
(24, 'VAL-DEL-21', 785, 11.7, 17, 0, 'Pipe for batching plant', 'KAK 426D', 'Harun Matheka', 1, 6, 33, 'New', '#1948', 'VAL', '2015-11-24', '14:49:04', 20),
(25, 'VAL-DEL-25', 786, 1, 10, 0, ' sizes 180mm to 50mm X 500mm', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:11:36', 20),
(26, 'VAL-DEL-25', 786, 1, 10, 0, ' sizes 150mm to 150mm X 500mm for links', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:11:36', 20),
(27, 'VAL-DEL-25', 787, 1, 10, 0, ' sizes 150mm x 125mm x 1650mm', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:11:36', 20),
(28, 'VAL-DEL-25', 789, 2, 10, 0, 'With 4 pins and 4 locks', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:11:36', 20),
(29, 'VAL-DEL-25', 788, 1, 10, 0, 'DN 180mm', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:11:36', 20),
(30, 'VAL-DEL-25', 788, 2, 10, 0, 'DN 150mm', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:11:36', 20),
(31, 'VAL-DEL-31', 639, 1, 24, 0, 'with 2pcs end clamps for cleaning', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:28:19', 20),
(32, 'VAL-DEL-31', 791, 1, 10, 0, 'Ball catcher', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:28:19', 20),
(33, 'VAL-DEL-31', 792, 1, 10, 0, 'with 2 gate valve 20mm and 40mm', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:28:19', 20),
(34, 'VAL-DEL-31', 793, 1, 10, 0, 'hard cleaning ball', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:28:19', 20),
(35, 'VAL-DEL-31', 794, 1, 10, 0, 'ignition keys', 'KBJ 873R', 'Ndungu', 1, 6, 33, 'New', '#1949', 'VAL', '2015-11-24', '15:28:19', 20),
(36, 'VAL-DEL-36', 795, 1, 10, 0, '25Amps multi 9 C45N', 'KMCZ 254J', 'Jackson Michiri', 1, 6, 33, 'New', '#1950', 'VAL', '2015-11-25', '13:01:36', 20),
(37, 'VAL-DEL-36', 606, 3, 24, 0, 'insulation tapes', 'KMCZ 254', 'Jackson Michira', 1, 6, 33, 'New', '#1950', 'VAL', '2015-11-25', '13:01:36', 20),
(38, 'VAL-DEL-36', 801, 1, 10, 0, 'Laminated copies 1 cover', 'KMCZ 254G', 'Jackson Machire', 1, 6, 33, 'New', '#1950', 'VAL', '2015-11-25', '13:01:36', 20),
(39, 'VAL-DEL-39', 735, 2, 10, 0, 'Aluminium Ladder', 'KBC 276L', 'Walter Omedo', 1, 6, 20, 'New', 'Delivery to woodlands site', 'VAL', '2017-10-11', '14:35:43', 20),
(40, 'VAL-DEL-39', 567, 3, 10, 0, 'Empty Buckets', 'KBC 276L', 'Walter Omedo', 1, 6, 20, 'New', 'Delivery to woodlands site', 'VAL', '2017-10-11', '14:35:43', 20),
(41, 'VAL-DEL-39', 609, 1, 10, 0, 'Power backup', 'KBC 276L', 'Walter Omedo', 1, 6, 20, 'New', 'Delivery to woodlands site', 'VAL', '2017-10-11', '14:35:43', 20),
(42, 'VALDEL42', 162, 2, 10, 0, 'Battery Water', 'KAC 678K', 'Walter Omedo', 1, 4, 20, 'New', 'Test Delivery', 'VAL', '2018-08-07', '11:55:16', 20),
(43, 'VALDEL42', 391, 5, 10, 0, 'GI Pipes 5 Inch', 'KAC 678K', 'Walter Omedo', 1, 4, 20, 'New', 'Test Delivery', 'VAL', '2018-08-07', '11:55:16', 20),
(44, 'VALDEL44', 415, 4, 10, 0, 'Circular Boxes', 'KBC 567P', 'Walter Omedo', 1, 8, 20, 'New', 'Test Delivery Items', 'VAL', '2018-08-07', '12:12:20', 20),
(45, 'VALDEL44', 67, 20, 16, 0, 'Eggshell Gon Metal', 'KBC 567P', 'Walter Omedo', 1, 8, 20, 'New', 'Test Delivery Items', 'VAL', '2018-08-07', '12:12:20', 20),
(46, 'VALDEL46', 653, 2, 10, 0, 'Demolition Hammers', 'KBC 7852P', 'Walter Omedo', 1, 8, 20, 'Completed', 'TEST Delivery 101', 'VAL', '2018-08-07', '12:35:39', 20),
(47, 'VALDEL46', 41, 2, 10, 0, 'Gate Valve', 'KBC 7852P', 'Walter Omedo', 1, 8, 20, 'Completed', 'TEST Delivery 101', 'VAL', '2018-08-07', '12:35:39', 20),
(48, 'VALDEL46', 497, 10, 4, 0, 'Nyumba Cement', 'KBC 7852P', 'Walter Omedo', 1, 8, 20, 'Completed', 'TEST Delivery 101', 'VAL', '2018-08-07', '12:35:39', 20),
(49, 'VALDEL46', 574, 1, 16, 0, 'Tangit Glue 1 Litre', 'KBC 7852P', 'Walter Omedo', 1, 8, 20, 'Completed', 'TEST Delivery 101', 'VAL', '2018-08-07', '12:35:39', 20),
(50, 'VALDEL50', 704, 2, 10, 0, 'Bar bending machine', 'KBC 267 L', 'Walter Omedo', 1, 4, 20, 'Completed', 'Test Delivery', 'VAL', '2018-08-10', '12:46:30', 20);

-- --------------------------------------------------------

--
-- Table structure for table `goods_inwards`
--

DROP TABLE IF EXISTS `goods_inwards`;
CREATE TABLE `goods_inwards` (
  `g_inward_id` int(11) NOT NULL,
  `g_mat_id` int(11) NOT NULL,
  `lpo_id` int(11) NOT NULL,
  `site_code` varchar(3) NOT NULL,
  `req_no` varchar(50) NOT NULL,
  `checked_by` varchar(200) NOT NULL,
  `confirmed_by` int(11) NOT NULL,
  `received_by` varchar(200) NOT NULL,
  `g_ref_no` varchar(30) NOT NULL,
  `g_user_id` int(11) NOT NULL,
  `g_date` date NOT NULL,
  `g_time` time NOT NULL,
  `delivery_note_no` varchar(40) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `g_desc` varchar(200) NOT NULL,
  `g_delivered_by` varchar(200) NOT NULL,
  `vehicle_no` varchar(40) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `in_status` enum('New','In-Process','Completed','Approved') DEFAULT 'New',
  `site_id` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_inwards`
--

INSERT INTO `goods_inwards` (`g_inward_id`, `g_mat_id`, `lpo_id`, `site_code`, `req_no`, `checked_by`, `confirmed_by`, `received_by`, `g_ref_no`, `g_user_id`, `g_date`, `g_time`, `delivery_note_no`, `g_qty`, `g_desc`, `g_delivered_by`, `vehicle_no`, `sup_id`, `pack_id`, `in_status`, `site_id`, `approved_by`) VALUES
(1, 566, 0, 'VAL', 'VALRQ19', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW1', 45, '2018-07-31', '09:18:10', '485752', 2, 'Â 1424(Eggshell White Paint)', 'Walter Omedo', 'KBC 456L', 71, 2, 'Approved', 1, NULL),
(2, 580, 0, 'VAL', 'VALRQ19', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW1', 45, '2018-07-31', '09:17:45', '485752', 0, 'Â 1424(Boss White Paint)', 'Walter Omedo', 'KBC 456L', 71, 2, 'Approved', 1, NULL),
(3, 77, 0, 'VAL', 'VALRQ26', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW3', 45, '2018-07-31', '12:32:57', '122563', 1, 'INW#4822', 'Walter Omedo', 'KAC 389L', 1, 10, 'Approved', 1, NULL),
(4, 385, 0, 'VAL', 'VALRQ32', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW4', 20, '2018-08-01', '06:15:13', '254220', 2, '&nbsp;&nbsp;&nbsp;INW4251 Items are not  correct', 'Walter Omedo', 'KCA 354P', 4, 10, 'Approved', 1, NULL),
(5, 557, 0, 'VAL', 'VALRQ6', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW5', 45, '2018-08-01', '13:24:08', '1025', 2, 'INW#1425', 'Walter Omedo', 'KBX 567T', 24, 24, 'Approved', 1, NULL),
(6, 557, 0, 'VAL', 'VALRQ1', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW6', 45, '2018-08-01', '13:29:34', '14050', 1, 'INW#4521', 'Walter Omedo', 'KBC 267L', 23, 24, 'Approved', 1, NULL),
(7, 795, 0, 'VAL', 'VALRQ1', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW6', 45, '2018-08-01', '13:29:08', '14050', 1, 'INW#4521', 'Walter Omedo', 'KBC 267L', 23, 24, 'Approved', 1, NULL),
(8, 29, 0, 'VAL', 'VALRQ1', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW6', 45, '2018-08-01', '13:29:13', '14050', 8, 'Inw#4521', 'Walter Omedo', 'KBC 267L', 23, 24, 'Approved', 1, NULL),
(9, 735, 0, 'VAL', 'VALRQ33', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW9', 20, '2018-08-04', '04:55:47', '10000056', 1, 'INW#3778', 'Walter Omedo', 'KBC 568X', 161, 10, 'Completed', 1, NULL),
(10, 645, 0, 'VAL', 'VALRQ33', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW9', 20, '2018-08-04', '04:56:57', '10000056', 1, 'INW#3778', 'Walter Omedo', 'KBC 568X', 24, 10, 'Completed', 1, NULL),
(11, 428, 0, 'VAL', 'VALRQ31', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW11', 20, '2018-08-04', '06:30:39', '420115', 1, 'INW7852', 'Walter Omedo', 'KBC 785H', 31, 4, 'In-Process', 1, NULL),
(12, 772, 0, 'VAL', 'VALRQ28', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW12', 20, '2018-08-04', '06:44:47', '62829', 4, 'INW688', 'Walter Omedo', 'KBX 578K', 28, 10, 'Approved', 1, NULL),
(13, 130, 0, 'VAL', 'VALRQ28', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW12', 20, '2018-08-04', '06:44:27', '62829', 2, 'INW688', 'Walter Omedo', 'KBX 578K', 28, 10, 'Approved', 1, NULL),
(14, 650, 0, 'VAL', 'VALRQ28', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW12', 20, '2018-08-04', '06:43:31', '62829', 1, 'INW688', 'Walter Omedo', 'KBX 578K', 28, 10, 'Approved', 1, NULL),
(15, 162, 0, 'VAL', 'VALRQ38', 'Walter Omedo', 20, 'Walter Omedo', 'VALINW15', 20, '2018-08-11', '09:15:27', '100786', 1, 'INW368#BATTERY WATER', 'Walter Omedo', 'KBC 567K', 46, 10, 'Approved', 1, NULL),
(16, 450, 0, 'VAL', 'VALRQ39', 'Walter Omedo', 20, 'Walter  Omedo', 'VALINW16', 20, '2018-08-11', '09:39:31', '78454', 2, 'INW994', 'hhb', 'ggggbh', 13, 21, 'In-Process', 1, NULL),
(17, 428, 0, 'VAL', 'VALRQ39', 'Walter Omedo', 20, 'Walter  Omedo', 'VALINW16', 20, '2018-08-11', '09:40:13', '78454', 15, 'INW994', 'hhb', 'ggggbh', 83, 4, 'In-Process', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inward_approvals`
--

DROP TABLE IF EXISTS `inward_approvals`;
CREATE TABLE `inward_approvals` (
  `inw_approval_id` int(11) NOT NULL,
  `inw_ref_no` varchar(100) NOT NULL,
  `inw_user_id` int(11) NOT NULL,
  `inw_approve_date` date NOT NULL,
  `inw_approve_time` time NOT NULL,
  `inw_approval_status` enum('New','In-Process','Approved','Pending') DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `inward_approvals`
--

INSERT INTO `inward_approvals` (`inw_approval_id`, `inw_ref_no`, `inw_user_id`, `inw_approve_date`, `inw_approve_time`, `inw_approval_status`) VALUES
(1, 'VAL-INW-1', 3, '2015-09-28', '14:52:20', 'Approved'),
(3, 'SAM-INW-1', 3, '2015-09-29', '11:17:51', 'Approved'),
(5, 'SAM-INW-1', 3, '2015-09-29', '11:17:51', 'Approved'),
(7, 'SAM-INW-1', 3, '2015-09-29', '11:17:51', 'Approved'),
(9, 'SAM-INW-1', 3, '2015-09-29', '11:17:51', 'Approved'),
(11, 'VAL-INW-2', 6, '0000-00-00', '00:00:00', 'Approved'),
(13, 'VAL-INW-2', 6, '0000-00-00', '00:00:00', 'Approved'),
(15, 'VAL-INW-2', 6, '0000-00-00', '00:00:00', 'Approved'),
(17, 'VAL-INW-7', 6, '0000-00-00', '00:00:00', 'Approved'),
(18, 'VAL-INW-7', 14, '0000-00-00', '00:00:00', 'Approved'),
(19, 'VAL-INW-8', 6, '0000-00-00', '00:00:00', 'Approved'),
(21, 'VAL-INW-9', 6, '0000-00-00', '00:00:00', 'Approved'),
(23, 'VAL-INW-10', 6, '0000-00-00', '00:00:00', 'Approved'),
(25, 'VAL-INW-11', 7, '0000-00-00', '00:00:00', 'Approved'),
(27, 'VAL-INW-11', 7, '0000-00-00', '00:00:00', 'Approved'),
(29, 'VAL-INW-13', 16, '0000-00-00', '00:00:00', 'Approved'),
(31, 'VAL-INW-13', 16, '0000-00-00', '00:00:00', 'Approved'),
(33, 'VAL-INW-13', 16, '0000-00-00', '00:00:00', 'Approved'),
(35, 'VAL-INW-16', 16, '0000-00-00', '00:00:00', 'Approved'),
(37, 'VAL-INW-17', 16, '0000-00-00', '00:00:00', 'Approved'),
(39, 'VAL-INW-18', 6, '0000-00-00', '00:00:00', 'Approved'),
(41, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(43, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(45, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(47, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(49, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(51, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(53, 'VAL-INW-19', 6, '0000-00-00', '00:00:00', 'Approved'),
(55, 'VAL-INW-26', 6, '0000-00-00', '00:00:00', 'Approved'),
(57, 'VAL-INW-26', 6, '0000-00-00', '00:00:00', 'Approved'),
(59, 'VAL-INW-28', 6, '0000-00-00', '00:00:00', 'Approved'),
(61, 'VAL-INW-28', 6, '0000-00-00', '00:00:00', 'Approved'),
(63, 'VAL-INW-28', 6, '0000-00-00', '00:00:00', 'Approved'),
(65, 'VAL-INW-31', 6, '0000-00-00', '00:00:00', 'Approved'),
(67, 'VAL-INW-32', 6, '0000-00-00', '00:00:00', 'Approved'),
(69, 'VAL-INW-33', 6, '0000-00-00', '00:00:00', 'Approved'),
(71, 'VAL-INW-34', 6, '0000-00-00', '00:00:00', 'Approved'),
(73, 'VAL-INW-34', 6, '0000-00-00', '00:00:00', 'New'),
(75, 'VAL-INW-36', 6, '0000-00-00', '00:00:00', 'New'),
(77, 'VAL-INW-36', 6, '0000-00-00', '00:00:00', 'New'),
(79, 'VAL-INW-38', 6, '0000-00-00', '00:00:00', 'New'),
(81, 'VALINW43', 20, '0000-00-00', '00:00:00', 'New'),
(83, 'VALINW43', 20, '0000-00-00', '00:00:00', 'New'),
(85, 'VALINW43', 20, '0000-00-00', '00:00:00', 'New'),
(87, 'VALINW1', 20, '2018-07-31', '11:15:33', 'Approved'),
(89, 'VALINW1', 20, '2018-07-31', '11:15:33', 'Approved'),
(91, 'VALINW3', 20, '2018-08-09', '10:56:01', 'Approved'),
(93, 'VALINW4', 20, '2018-08-01', '06:42:32', 'Approved'),
(94, 'VALINW4', 45, '2018-08-01', '06:45:33', 'Approved'),
(95, 'VALINW5', 20, '2018-08-01', '13:43:17', 'Approved'),
(96, 'VALINW5', 45, '2018-08-01', '13:52:52', 'Approved'),
(97, 'VALINW6', 20, '2018-08-01', '13:43:33', 'Approved'),
(98, 'VALINW6', 45, '2018-08-01', '13:53:17', 'Approved'),
(99, 'VALINW6', 20, '2018-08-01', '13:43:33', 'Approved'),
(100, 'VALINW6', 45, '2018-08-01', '13:53:17', 'Approved'),
(101, 'VALINW6', 20, '2018-08-01', '13:43:33', 'Approved'),
(102, 'VALINW6', 45, '2018-08-01', '13:53:17', 'Approved'),
(103, 'VALINW9', 20, '2018-08-04', '05:38:01', 'Approved'),
(104, 'VALINW9', 45, '2018-08-04', '05:39:26', 'Approved'),
(105, 'VALINW9', 20, '2018-08-04', '05:38:01', 'Approved'),
(106, 'VALINW9', 45, '2018-08-04', '05:39:26', 'Approved'),
(107, 'VALINW11', 20, '2018-08-04', '06:42:04', 'Approved'),
(108, 'VALINW11', 45, '0000-00-00', '00:00:00', 'New'),
(109, 'VALINW12', 20, '2018-08-04', '06:58:10', 'Approved'),
(110, 'VALINW12', 45, '2018-08-04', '06:59:09', 'Approved'),
(111, 'VALINW12', 20, '2018-08-04', '06:58:10', 'Approved'),
(112, 'VALINW12', 45, '2018-08-04', '06:59:09', 'Approved'),
(113, 'VALINW12', 20, '2018-08-04', '06:58:10', 'Approved'),
(114, 'VALINW12', 45, '2018-08-04', '06:59:09', 'Approved'),
(115, 'VALINW15', 20, '2018-08-11', '09:17:03', 'Approved'),
(116, 'VALINW15', 45, '2018-08-11', '09:16:04', 'Approved'),
(117, 'VALINW16', 20, '0000-00-00', '00:00:00', 'New'),
(118, 'VALINW16', 45, '2018-08-11', '09:41:43', 'Approved'),
(119, 'VALINW16', 20, '0000-00-00', '00:00:00', 'New'),
(120, 'VALINW16', 45, '2018-08-11', '09:41:43', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `lpos`
--

DROP TABLE IF EXISTS `lpos`;
CREATE TABLE `lpos` (
  `lpo_id` int(11) NOT NULL,
  `lpo_user_id` int(11) NOT NULL,
  `req_ref_no` varchar(50) NOT NULL,
  `req_id` int(11) NOT NULL,
  `exp_date` date NOT NULL,
  `lpo_details` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `lpo_ref_no` varchar(30) NOT NULL,
  `lpo_date` date NOT NULL,
  `lpo_time` time NOT NULL,
  `lpo_status` enum('In-Process','Approved','Cancelled','New','Completed') NOT NULL,
  `lpo_approve_id` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `total_lpo` decimal(10,2) DEFAULT NULL,
  `site_code` varchar(3) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lpos`
--

INSERT INTO `lpos` (`lpo_id`, `lpo_user_id`, `req_ref_no`, `req_id`, `exp_date`, `lpo_details`, `qty`, `mat_id`, `pack_id`, `site_id`, `lpo_ref_no`, `lpo_date`, `lpo_time`, `lpo_status`, `lpo_approve_id`, `sup_id`, `total_lpo`, `site_code`, `price`) VALUES
(1, 1, 'SAM-RQ-3', 0, '2015-09-30', 'Sledge Hammer 16 Pounds', 2, 610, 10, 1, 'VAL-LPO-1', '2015-09-28', '11:48:59', 'Completed', 3, 1, 2600.00, '', 1300),
(2, 1, 'SAM-RQ-3', 0, '2015-09-30', 'Stainless Steel Bolt 6 Inch', 20, 275, 10, 1, 'VAL-LPO-2', '2015-09-28', '11:54:57', 'Approved', 20, 61, 4000.00, '', 200),
(3, 1, 'SAM-RQ-3', 0, '2015-09-30', 'Brake Fluid 5 Ltrs', 5, 161, 10, 1, 'VAL-LPO-2', '2015-09-28', '11:54:57', 'Approved', 20, 61, 1250.00, '', 250),
(4, 3, 'SAM-RQ-1', 0, '2015-10-02', 'Empty Buckets', 10, 567, 16, 5, 'SAM-LPO-4', '2015-09-29', '11:00:35', 'Completed', 3, 2, 1200.00, '', 120),
(5, 3, 'SAM-RQ-1', 0, '2015-10-02', 'Mason Hammers 2 Pounds ', 2, 147, 10, 5, 'SAM-LPO-4', '2015-09-29', '11:00:35', 'Completed', 3, 2, 1560.00, '', 780),
(6, 3, 'SAM-RQ-1', 0, '2015-10-02', 'Hacksaw Blade', 15, 519, 10, 5, 'SAM-LPO-4', '2015-09-29', '11:00:35', 'Completed', 3, 2, 1200.00, '', 80),
(7, 3, 'SAM-RQ-1', 0, '2015-10-02', 'PPR Tee Female 90mm', 10, 335, 10, 5, 'SAM-LPO-4', '2015-09-29', '11:00:35', 'Completed', 3, 2, 1500.00, '', 150),
(8, 3, '', 0, '2015-10-07', 'No desc', 2, 61, 10, 5, 'SAM-LPO-8', '2015-10-02', '15:14:29', 'Approved', 20, 32, 3090.40, '', 1545.2);

-- --------------------------------------------------------

--
-- Table structure for table `lpo_approvals`
--

DROP TABLE IF EXISTS `lpo_approvals`;
CREATE TABLE `lpo_approvals` (
  `lpo_approval_id` int(11) NOT NULL,
  `lpo_ref_no` varchar(100) NOT NULL,
  `lpo_user_id` int(11) NOT NULL,
  `lpo_approve_date` date NOT NULL,
  `lpo_approve_time` time NOT NULL,
  `lpo_approval_status` enum('New','Approved','Pending') DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lpo_approvals`
--

INSERT INTO `lpo_approvals` (`lpo_approval_id`, `lpo_ref_no`, `lpo_user_id`, `lpo_approve_date`, `lpo_approve_time`, `lpo_approval_status`) VALUES
(1, 'VAL-LPO-1', 20, '2015-09-28', '12:45:31', 'Approved'),
(3, 'VAL-LPO-1', 3, '2015-09-28', '12:49:36', 'Approved'),
(4, 'VAL-LPO-1', 20, '2015-09-28', '12:45:31', 'Approved'),
(5, 'VAL-LPO-2', 20, '2015-09-28', '12:44:17', 'Approved'),
(7, 'VAL-LPO-2', 20, '2015-09-28', '12:44:17', 'Approved'),
(9, 'SAM-LPO-4', 3, '2015-09-29', '11:09:31', 'Approved'),
(11, 'SAM-LPO-4', 3, '2015-09-29', '11:09:31', 'Approved'),
(13, 'SAM-LPO-4', 3, '2015-09-29', '11:09:31', 'Approved'),
(15, 'SAM-LPO-4', 3, '2015-09-29', '11:09:31', 'Approved'),
(17, 'SIT-LPO-1', 20, '0000-00-00', '00:00:00', 'New'),
(19, 'SIT-LPO-1', 20, '0000-00-00', '00:00:00', 'New'),
(21, 'SIT-LPO-1', 20, '0000-00-00', '00:00:00', 'New'),
(23, 'SAM-LPO-8', 20, '2015-10-02', '15:45:55', 'Approved'),
(25, 'SAM-LPO-9', 20, '0000-00-00', '00:00:00', 'New'),
(27, 'SAM-LPO-9', 20, '0000-00-00', '00:00:00', 'New'),
(29, 'VAL-LPO-4', 20, '0000-00-00', '00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE `manufactures` (
  `man_id` int(11) NOT NULL,
  `man_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`man_id`, `man_name`) VALUES
(1, 'Hewlett Packard(HP)'),
(2, 'Sample Manufacturer'),
(3, 'No Manufacturer'),
(4, 'Mombasa Cement'),
(5, 'Savana Cement'),
(6, 'MAROO POLYMERS LTD'),
(7, 'TELWIN - IN ITALY'),
(8, 'METSEC CABLES LIMITED'),
(9, 'EAST AFRICA CABLE LTD'),
(10, 'Chloride Exide'),
(11, 'Total Limited'),
(12, 'DURAVIT'),
(13, 'GIBERIT');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `mat_id` int(11) NOT NULL,
  `mat_name` varchar(100) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `mat_cat_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `man_id` int(11) DEFAULT 0,
  `brand_id` int(11) DEFAULT 0,
  `size_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`mat_id`, `mat_name`, `sup_id`, `description`, `store_id`, `mat_cat_id`, `user_id`, `man_id`, `brand_id`, `size_id`) VALUES
(27, 'G.I SOCKET  4â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'G.I SOCKET  6â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'G.I SOCKET 1/1/4', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'G.I SOCKET  3â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'HEMP YAM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'G I BEND/ELBOW 1/4 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 46),
(17, 'G I BEND/ELBOW 1 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 1),
(18, 'G I BEND/ELBOW 1/2 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 47),
(19, 'G I BEND/ELBOW 3 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 66),
(20, 'G I BEND/ELBOW 2 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 65),
(21, 'G I BEND/ELBOW 4 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 49),
(22, 'G I BEND/ELBOW 5 INCH', 81, 'G I BEND/ELBOW', NULL, 1, NULL, 3, 3, 50),
(23, 'G.I NIPPLES 1/1/4 X2', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'G.I SOCKET 1â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'G.I SOCKET  2/1/2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'G.I SOCKET 2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'G.I PLUGS   1/1/4', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'G.I TEE 1/1/4', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'PVC 200SW PIPE GREEN 6M', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'THREAD SEAL TAPE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'BLACK PIPES CLASS C4', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'P.V.C PIPES 3â€ X4', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'THREAD RODS M6 X1MT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'ANCHORS M6', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'FIRE FIGHTING CLIPS HOLDERS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'GATE VALVE 3â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'GATE VALVE 4â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'GATE VALVE 2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'GATE VALVE 1/1/2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'GATE VALVE 1â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'WASTE SREWS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'PAINT BRUSH   6', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'PAINT BRUSH   4', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'PAINT BRUSH   3â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'PAINT BRUSH   2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'BOSSWHITE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'PAINT ROLLERSWEATHER GUARD WHITE UNDERCOAT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'S/ GREY DPS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'TURPENTINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'STANDARD THIWWER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'ROAD MARKING BLACK', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'SISWAL  RED', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'SIGNAL ED HIGH GLOSS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'SUER GROSS WHITE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'S/GLOSSDOVE GREY', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'ROAD MARKING PAINT YELLOW', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'VYNIC MATT EMULSIONM  BLACK', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'WHITE SPIRIT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'PINOTEX PWALLNOT( SAMPLE )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'CLEAR VANISH', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'GYPSUM FILLER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'WALTEX FILLER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'EGGSHELL GON METAL ( PAINT)', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'RED OXIDE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'RED OXIDE PRIMER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'WHITE YNDERCOAT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'SUPER FAST EMULSION BLACK', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'EMULSION SEALER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'PASTIC EMULSION WHITE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'SUPER GLOSS (SAFFLON YELLOW ) OIL BASED', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'PUTTY LIME', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'STUCCOPLASTIC FILLER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'WELDING MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'WATER PUMP          DISEAL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'VIBRATOR MACHINE GASOLINE ENGINE 5.5 HP1', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'VIBRATOR MACHINE GASOLINE ENGINE 5.5 HP2', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'VIBRATOR MACHINE GASOLINE ENGINE 5.5 HP3', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'SMALL VIBRATOR MACHINE AIR COOLED GASOLINE ENGINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'PRESSURE MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'SHOVELS / SPADES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'PICK AXES  MATTOCK(SURURU)', 155, 'No Desc', NULL, 18, NULL, 3, 6, 5),
(86, 'CLEAR BRAIDED COLOURED HORSE PIPE Â¾ X30HS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'PANGAS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'SLASHES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'JEMBES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'CONCRETE PUMP CLEANING BALLS', 156, 'Concrete cleaning balls', NULL, 24, NULL, 3, 3, 5),
(91, 'CHAIN BLOCK 5T', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'WELDING RODS 2.5MM', 156, '2.5MM Welding Rods', NULL, 3, NULL, 3, 3, 5),
(93, 'NITROGEN GAUGELINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'NITROGEN CYCLINDER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'COMPLETE GAS PIPES RED AND BLUE PLUS KEY AND SPANNER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'CUTTING TORCH', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'WELDING TORCH / BRAZING TORCH', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'TOTAL EMPTY DRUM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'ASSORTED WIRED ROPES', 156, 'Wire Cables', NULL, 18, NULL, 3, 3, 5),
(100, 'ASSORTED VEHICLE / LORRY SPRING', 156, 'Spring for vehicles', NULL, 35, NULL, 3, 3, 5),
(101, 'GREEN SAFETY BELTS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'MANUAL BAR CUTTER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'MOTOR SINGLE PHASE 2HP', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'BAR CUTTER MOTOR 3PHASE 3HP', 156, 'Bar Cutting machine', NULL, 24, NULL, 3, 3, 5),
(105, 'MIXER MACHINE CLEAR PIPE 1/1/2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'MIXER MACHINE AXES SHORT  (YELLOW)', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'MIXER MACHINE AXES LONG', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'HANLES 4 MIXER MACHINE ( YELLOW )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'STAND FOR MXER MACHINE (YELLOW )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'LADDERS WITH HOOKS RED', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'LADDER ALLUMINIUM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'CART TYRES COMPLETE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'CART RIMS WITHOUT TYRES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'RIMS BIG', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'CART TUPES WITHOUT RIMS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'CART TUBES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'MIXER MACHINE TYRES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'GREASE GUN', 156, 'Applying grease to machine and equipment', NULL, 24, NULL, 3, 3, 5),
(119, 'PUTZMEISER GREASE GUN', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'ELECTRICAL CONDUCT FLEX 25MM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'TANGANYIKA JERKCOMPRESSOR PIPES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'COMPRESSOR DRILLING  HAMMER WITH PRESSURE PIPES', 156, 'Compressor Drilling Hammer', NULL, 24, NULL, 3, 3, 5),
(123, 'SWIYE COUPLER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'RIGHT ANGLED COUPLERSPIGOT 2', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'WATER PUMP  PETROL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'WATER PUMP 3 PHASE  (  4 GREEN MITOR)', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'ELECTRICAL WATER PUMP SINGLE PHASE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'MIXER MACHINE GEAR BOXES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'AIR COMPRESSOR', 156, 'no desc', NULL, 18, NULL, 3, 3, 5),
(130, 'COMPUTER MONITOR', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'CONCRETE CUTTER MACHINES', 156, 'Concrete Cutter  Machine', NULL, 24, NULL, 3, 3, 5),
(132, 'PPR WELDNG MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'SPRING DIAL HOIST SCALE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'WEIGHING SCALE (ASHTON   )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'STEEL WIRED BRUSHES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'LIFTING SAFETY BOLTS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'WIRE ROPE 12MM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'HINGED PIPED VICE 1/8â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'HINGED PIPED VICE 2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'DYE BLADES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'DYE CUTTING MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'PIPE WRENCH 4FT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'PIPE WRENCH CHAIN TYPE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'BAR BENDING MACHINE ACCESSORIES', 156, 'Bar bending machine accessories', NULL, 24, NULL, 3, 3, 5),
(145, 'FLAT CHISELS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'POINTED CHISELS', 16, 'Pointed Chisel', NULL, 30, NULL, 3, 3, 5),
(147, 'MASON HAMMERS 2LB', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'SLEDGE HAMMER 8LB', 16, 'No Desc', NULL, 24, NULL, 3, 3, 99),
(149, 'BIG BLUE SCISSORS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'AUTOMATIC TRANSMISSION FLUID ( ATF)', 156, 'Transmission Fliud', NULL, 22, NULL, 3, 3, 5),
(151, 'BATTERY ACID', 156, 'Battery acid', NULL, 22, NULL, 3, 3, 92),
(152, 'SUPER GLUE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'SCAFFOLDING PHOTOS', 156, 'Photos of scaffolding photos', NULL, 18, 20, 3, 3, 5),
(154, 'HYDRALIC OIL', 156, 'no desc', NULL, 22, NULL, 3, 3, 5),
(155, 'ENGINE OIL sac40', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'CC OIL 90( GEAR OIL)', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'GEAR EX SDE  30', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'CC     (140 DIFT OIL )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'SPARKO- HIGHTECH (W40 )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'PETROL ENGINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'BRAKE FLUID', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'BATTERY WATER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'HYDRALIC OIL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'DISEAL ENGINE OIL 15W-40', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'GREASE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'DISEAL ENGINE OIL SAE40', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'CONTA GLUE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'MOTOR VEHICLE WIRE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(169, '150 KRPP CHLORIDE EXIDE BATTERIES', 156, 'Low maintenance chloride exide battery', NULL, 18, NULL, 10, 3, 5),
(170, 'ATLAS DYNAMIC POWER BATTERIES MF 65 D3K', 156, 'Atlas Battery', NULL, 18, NULL, 3, 3, 5),
(171, 'RUBIA S40', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'AZOLLA 26 68', 156, 'Azolla Hydraulic fliud', NULL, 22, NULL, 11, 3, 103),
(173, 'HYDRAULIC OIL TELLUS', 156, 'No Description', NULL, 22, NULL, 3, 3, 5),
(174, 'ORYX FLUID 68', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'WELDING MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'WATER PUMP          DISEAL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'VIBRATOR MACHINE GASOLINE ENGINE 5.5 HP1', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'VIBRATOR MACHINE GASOLINE ENGINE 5.5 HP2', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'VIBRATOR MACHINE GASOLINE ENGINE 5.5 HP3', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'SMALL VIBRATOR MACHINE AIR COOLED GASOLINE ENGINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'PRESSURE MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'SHOVELS / SPADES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'PICK AXES       MATTOCK', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'CLEAR BRAIDED COLOURED HORSE PIPE Â¾ X30HS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'PANGAS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'SLASHES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'JEMBES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'CONCREATE PUMP CLEANING BALLS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'CHAIN BLOCK 5T', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'SUBERSIBLE WATER PUMP', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'NITROGEN GAUGELINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'NITROGEN CYCLINDER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'COMPLETE GAS PIPES RED AND BLUE PLUS KEY AND SPANNER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'CUTTING TORCH', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'WELDING TORCH / BRAZING TORCH', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'TOTAL EMPTY DRUM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'ASSORTED WIRED ROPES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'ASSORTED VEHICLE / LORRY SPRING', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'GREEN SAFETY BELTS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'MANUAL BAR CUTTER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'MOTOR SINGLE PHASE 2HP', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'BAR CUTTER MOTOR 3PHASE 3HP', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'MIXER MACHINE CLEAR PIPE 1/1/2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'MIXER MACHINE AXES SHORT  (YELLOW)', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'MIXER MACHINE AXES LONG', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'HANLES 4 MIXER MACHINE ( YELLOW )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'STAND FOR MXER MACHINE (YELLOW )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'LADDERS WITH HOOKS RED', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'LADDER ALLUMINIUM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'CART TYRES COMPLETE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'CART RIMS WITHOUT TYRES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'RIMS BIG', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'CART TUPES WITHOUT RIMS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'CART TUBES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'MIXER MACHINE TYRES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'GREASE GUNS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'PUTZMEISER GREASE GUN', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'ELECTRICAL CONDUCT FLEX 25MM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'TANGANYIKA JERKCOMPRESSOR PIPES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'COMPRESSOR HAMMER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'SWIYE COUPLER', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'RIGHT ANGLED COUPLERSPIGOT 2', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'WATER PUMP  PETROL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'WATER PUMP 3 PHASE  (  4 GREEN MITOR)', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'ELECTRICAL WATER PUMP SINGLE PHASE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'MIXER MACHINE GEAR BOXES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'AIR COMPRESSOR', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'COMPUTER MONITOR', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'CONCREATE CUTTER MACHINES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'PPR WELDNG MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'SPRING DIAL HOIST SCALE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'WEIGHING SCALE (ASHTON   )', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'STEEL WIRED BRUSHES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'LIFTING SAFETY BOLTS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'WIRE ROPE 12MM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'HINGED PIPED VICE 1/8â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'HINGED PIPED VICE 2â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'DYE BLADES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'DYE CUTTING MACHINE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'PIPE WRENCH 4FT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'PIPE WRENCH CHAIN TYPE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'BAR BENDING MACHINE ACCESSORIES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'FLAT CHISELS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'PINTED CHISELS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'MASON HAMMERS 2LB', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'SLEDGE HAMMER 8LB', 156, 'sledge hammer 8lb', NULL, 24, NULL, 3, 3, 99),
(247, 'BIG BLUE SCISSORS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'TILE SPACERS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'TILE SPACERS          3MM', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'SOFT BROOMS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'HARD BROOMS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'SAND PAPER            P100', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'SAND PAPER            P80', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'TANGIT                    1L', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'MASKING TAPE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'HINGES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'DOOR HINGES AND SREWS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'WOODSREWS          1X10KG', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'WOODSREWS          1X6KG', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'SADDLES                 20mm', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'HANDLERS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'SIPPORT', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'ANGLE CLIPS', 156, 'no desc', NULL, 23, NULL, 3, 3, 5),
(264, 'DOOR LOCKS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'HINGES', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'COAT HOOK', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'THREAD TAPE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'WOODSCREWS       10X1/2', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'KICKING PLATE STEEL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'PUSH PLATE', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'UNION DOOR CLOSER POWER 2.3', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(273, '3LEVEL W/O HANDLE CLOCK', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'VALE CLIPBOARD LOCK KEYS', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'STAINLESS STEEL BOLT 6â€', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'MALE SIGN CRO STEEL', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'P/HANDLE B/FIX', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'FEMALE SIGN GRC', 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'Sample Material', 155, 'Sample Description', NULL, 28, 1, 2, 2, 2),
(282, 'Dummy Sample Material', 155, 'No Desc', NULL, 28, 1, 20, 6, 16),
(283, 'Steel Welding  Rods', 155, 'No Desc', NULL, 21, 1, 3, 3, 6),
(285, 'Material New Sample', 155, 'No Desc', NULL, 28, 1, 3, 2, 5),
(289, 'PPR PIPE 20MM', 81, 'PPR PIPES 25mm', NULL, 1, 1, 3, 3, 60),
(288, 'PPR PIPE 25MM', 81, 'PPR PIPES 25mm', NULL, 1, 1, 3, 3, 58),
(290, 'PPR PIPE 32MM', 81, 'PPR PIPES ', NULL, 1, 1, 3, 3, 59),
(291, 'PPR PIPE 40MM', 81, 'PPR PIPES ', NULL, 1, 1, 3, 3, 61),
(292, 'PPR PIPE 60MM', 81, 'PPR PIPES ', NULL, 1, 1, 3, 3, 62),
(293, 'PPR PIPE 50MM', 81, 'PPR PIPES ', NULL, 1, 1, 3, 3, 63),
(294, 'PPR PIPE 90MM', 81, 'PPR PIPES ', NULL, 1, 1, 3, 3, 64),
(295, 'PPR BEND/ELBOW 25MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 58),
(296, 'PPR BEND/ELBOW 20MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 60),
(297, 'PPR BEND/ELBOW 32MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 59),
(298, 'PPR BEND/ELBOW 40MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 61),
(299, 'PPR BEND/ELBOW 60MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 62),
(300, 'PPR BEND/ELBOW 50MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 63),
(301, 'PPR BEND/ELBOW 90MM', 81, 'PPR BEND/ELBOW ', NULL, 1, 1, 3, 3, 64),
(302, 'PPR FEMALE ELBOW 20MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 60),
(303, 'PPR FEMALE ELBOW 25MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 58),
(304, 'PPR FEMALE ELBOW 32MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 59),
(305, 'PPR FEMALE ELBOW  40MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 61),
(306, 'PPR FEMALE ELBOW 60MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 62),
(307, 'PPR FEMALE ELBOW 50MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 63),
(308, 'PPR FEMALE ELBOW 90MM', 81, 'PPR FEMALE ELBOW', NULL, 1, 1, 3, 3, 64),
(309, 'PPR MALE ELBOW 25MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 58),
(310, 'PPR MALE ELBOW 20MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 60),
(311, 'PPR MALE ELBOW 32MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 59),
(312, 'PPR MALE ELBOW 40MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 61),
(313, 'PPR MALE ELBOW 60MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 62),
(314, 'PPR MALE ELBOW 50MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 63),
(315, 'PPR MALE ELBOW 90MM', 81, 'PPR MALE ELBOW', NULL, 1, 1, 3, 3, 64),
(316, 'PPR TEE 25MM', 81, 'PPR TEE', NULL, 1, 1, 3, 3, 58),
(317, 'PPR TEE 20MM', 81, 'PPR TEE', NULL, 1, 1, 3, 3, 60),
(318, 'PPR TEE 40MM', 81, 'PPR TEE', NULL, 1, 1, 3, 3, 61),
(319, 'PPR TEE 60MM', 81, 'PPR TEE', NULL, 1, 1, 3, 3, 62),
(320, 'PPR TEE 50MM', 81, 'PPR TEE', NULL, 1, 1, 3, 3, 63),
(321, 'PPR TEE 90MM', 81, 'PPR TEE', NULL, 1, 1, 3, 3, 64),
(322, 'PPR MALE TEE 25MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 58),
(323, 'PPR MALE TEE 20MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 60),
(324, 'PPR MALE TEE 32MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 59),
(325, 'PPR MALE TEE 40MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 61),
(326, 'PPR MALE TEE 60MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 62),
(327, 'PPR MALE TEE 50MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 63),
(328, 'PPR MALE TEE 90MM', 81, 'PPR MALE TEE', NULL, 1, 1, 3, 3, 64),
(329, 'PPR FEMALE TEE 20MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 60),
(330, 'PPR FEMALE TEE 25MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 58),
(331, 'PPR FEMALE TEE 32MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 59),
(332, 'PPR FEMALE TEE 40MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 61),
(333, 'PPR FEMALE TEE 60MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 62),
(334, 'PPR FEMALE TEE 50MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 63),
(335, 'PPR FEMALE TEE 90MM', 81, 'PPR FEMALE TEE', NULL, 1, 1, 3, 3, 64),
(336, 'PPR SOCKET 20MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 60),
(337, 'PPR SOCKET 25MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 58),
(338, 'PPR SOCKET 32 MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 59),
(339, 'PPR SOCKET 40MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 61),
(340, 'PPR SOCKET 50 MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 63),
(341, 'PPR SOCKET 60MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 62),
(342, 'PPR SOCKET 90MM', 81, 'PPR SOCKET', NULL, 1, 1, 3, 3, 64),
(343, 'PVC PIPE 1/4 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 46),
(344, 'PVC PIPE 1/2 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 47),
(345, 'PVC PIPE 1 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 1),
(346, 'PVC PIPE 2 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 65),
(347, 'PVC PIPE 3 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 66),
(348, 'PVC PIPE 4 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 49),
(349, 'PVC PIPE 5 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 50),
(350, 'PVC BEND/ELBOW 1/4 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 46),
(351, 'PVC BEND/ELBOW 1/2 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 47),
(352, 'PVC BEND/ELBOW 1 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 48),
(353, 'PVC BEND/ELBOW 2 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 65),
(354, 'PVC BEND/ELBOW 3 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 66),
(355, 'PVC BEND/ELBOW 4 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 49),
(356, 'PVC BEND/ELBOW 5 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 50),
(357, 'PVC TEE 1/4 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 46),
(358, 'PVC TEE 1/2 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 47),
(359, 'PVC TEE 1 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 1),
(360, 'PVC TEE 2 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 65),
(361, 'PVC TEE 3 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 66),
(362, 'PVC TEE 4 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 49),
(363, 'PVC TEE 5 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 50),
(364, 'PVC TEE 6 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 51),
(365, 'PVC TEE 7 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 52),
(366, 'PVC TEE 8 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 53),
(367, 'PVC TEE 9 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 54),
(368, 'PVC TEE 10 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 55),
(369, 'PVC TEE 11 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 56),
(370, 'PVC TEE 12 INCH', 81, 'PVC TEE', NULL, 1, 1, 3, 3, 57),
(371, 'PVC PIPE 6 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 51),
(372, 'PVC PIPE 7 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 52),
(373, 'PVC PIPE 8 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 53),
(374, 'PVC PIPE 9 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 54),
(375, 'PVC PIPE 10 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 55),
(376, 'PVC PIPE 11 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 56),
(377, 'PVC PIPE 12 INCH', 81, 'PVC PIPE', NULL, 1, 1, 3, 3, 57),
(378, 'PVC BEND/ELBOW 6 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 51),
(379, 'PVC BEND/ELBOW 7 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 52),
(380, 'PVC BEND/ELBOW 8 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 53),
(381, 'PVC BEND/ELBOW 9 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 54),
(382, 'PVC BEND/ELBOW 10 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 55),
(383, 'PVC BEND/ELBOW 11 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 56),
(384, 'PVC BEND/ELBOW 12 INCH', 81, 'PVC BEND/ELBOW', NULL, 1, 1, 3, 3, 57),
(385, 'G I PIPE  1/2 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 47),
(386, 'G I PIPE 1/4 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 46),
(387, 'G I PIPE 1 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 1),
(388, 'G I PIPE 2 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 65),
(389, 'G I PIPE 3 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 66),
(390, 'G I PIPE 4 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 49),
(391, 'G I PIPE 5 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 50),
(392, 'G I PIPE 6 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 51),
(393, 'G I PIPE 7 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 52),
(394, 'G I PIPE 8 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 53),
(395, 'G I PIPE 9 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 54),
(396, 'G I PIPE 10 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 55),
(397, 'G I PIPE 11 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 56),
(398, 'G I PIPE 12 INCH', 81, 'G I PIPE', NULL, 1, 1, 3, 3, 57),
(399, 'G I BEND/ELBOW 6 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 51),
(400, 'G I BEND/ELBOW 7 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 52),
(401, 'G I BEND/ELBOW 8 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 53),
(402, 'G I BEND/ELBOW 9 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 54),
(403, 'G I BEND/ELBOW 10 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 55),
(404, 'G I BEND/ELBOW 11 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 56),
(405, 'G I BEND/ELBOW 12 INCH', 81, 'G I BEND/ELBOW', NULL, 1, 1, 3, 3, 57),
(406, 'CONDUITS 20MM', 81, 'Electrical Conduit Pipes', NULL, 2, 1, 3, 3, 60),
(407, 'CONDUITS 25MM', 81, 'Electrical Conduit Pipes', NULL, 2, 1, 3, 3, 58),
(408, 'CONDUITS 32MM', 81, 'Electrical Conduit Pipes', NULL, 2, 1, 3, 3, 59),
(409, 'COUPLERS 20MM', 81, 'Electrical Couplers', NULL, 2, 1, 3, 3, 60),
(410, 'COUPLERS 25MM', 81, 'Electrical Couplers', NULL, 2, 1, 3, 3, 58),
(411, 'COUPLERS 32MM', 81, 'Electrical Couplers', NULL, 2, 1, 3, 3, 59),
(412, 'BENDS 20 MM', 81, 'Electrical Conduit Bends', NULL, 2, 1, 3, 3, 13),
(413, 'BENDS 25MM', 81, 'Electrical Conduit Bends', NULL, 2, 1, 3, 3, 58),
(414, 'BENDS 32MM', 81, 'Electrical Conduit Bends', NULL, 2, 1, 3, 3, 59),
(415, 'CIRCULAR BOXES 2 WAY 20MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 60),
(416, 'CIRCULAR BOXES 3 WAY 25MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 58),
(417, 'CIRCULAR BOXES 4 WAY 32MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 59),
(418, 'CIRCULAR BOXES 2 WAY 25MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 58),
(419, 'CIRCULAR BOXES 2 WAY 32MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 59),
(420, 'CIRCULAR BOXES 3 WAY 32MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 59),
(421, 'CIRCULAR BOXES 3 WAY 20MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 60),
(422, 'CIRCULAR BOXES 4 WAY 20MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 60),
(423, 'CIRCULAR BOXES 4 WAY 25MM', 81, 'Electrical Circular Boxes', NULL, 2, 1, 3, 3, 58),
(424, 'JUNCTION BOXES 20MM', 81, 'Electrical Junction Boxes', NULL, 2, 1, 3, 3, 60),
(425, 'JUNCTION BOXES 25MM', 81, 'Electrical Junction Boxes', NULL, 2, 1, 3, 3, 58),
(426, 'JUNCTION BOXES 32MM', 81, 'Electrical Junction Boxes', NULL, 2, 1, 3, 3, 59),
(427, 'Cement  32.5', 133, 'Cement Class 32.5', NULL, 18, 1, 4, 3, 41),
(428, 'Cement 32.5', 132, 'Cement Class 32.5', NULL, 18, 1, 5, 3, 41),
(429, 'Cement 42.5', 133, 'Cement Class 42.5', NULL, 18, 1, 4, 3, 42),
(430, 'Cement 42.5', 132, 'Cement Class 42.5', NULL, 18, 1, 4, 3, 42),
(431, 'Ballast 3/8th', 99, 'Ballas Size 3/8th', NULL, 18, 1, 3, 3, 43),
(432, 'Ballast 3/8th', 42, 'Ballas Size 3/8th', NULL, 18, 1, 3, 3, 43),
(433, 'Ballast 3/8th', 21, 'Ballas Size 3/8th', NULL, 18, 1, 3, 3, 43),
(434, 'Ballast 3/8th', 31, 'Ballas Size 3/8th', NULL, 18, 1, 3, 3, 43),
(435, 'Ballast 1/2', 99, 'Ballas Size 1/2', NULL, 18, 1, 3, 3, 44),
(436, 'Ballast 1/2', 42, 'Ballas Size 1/2', NULL, 18, 1, 3, 3, 44),
(437, 'Ballast', 21, 'Ballas Size 1/2', NULL, 18, 1, 3, 3, 44),
(438, 'Ballast', 31, 'Ballas Size 1/2', NULL, 18, 1, 3, 3, 44),
(439, 'Ballast', 99, 'Ballas Size 3/4', NULL, 18, 1, 3, 3, 45),
(440, 'Ballast', 42, 'Ballas Size 3/4', NULL, 18, 1, 3, 3, 45),
(441, 'Ballast', 21, 'Ballas Size 3/4', NULL, 18, 1, 3, 3, 45),
(442, 'Ballast', 31, 'Ballas Size 3/4', NULL, 18, 1, 3, 3, 45),
(443, 'Washed Rock Sand', 156, 'Washed Rock Sand', NULL, 18, 1, 3, 3, 5),
(444, 'Washed Rock Sand', 148, 'Washed Rock Sand', NULL, 18, 1, 3, 3, 5),
(445, 'Washed Rock Sand', 95, 'Washed Rock Sand', NULL, 18, 1, 3, 3, 5),
(446, 'Washed Rock Sand', 21, 'Washed Rock Sand', NULL, 18, 1, 3, 3, 5),
(447, 'Quary Dust', 148, 'Quary Dust', NULL, 18, 1, 3, 3, 5),
(448, 'Quary Dust', 95, 'Quary Dust', NULL, 18, 1, 3, 3, 5),
(449, 'Quary Dust', 21, 'Quary Dust', NULL, 18, 1, 3, 3, 5),
(450, 'River Sand', 148, 'River Sand', NULL, 18, 1, 3, 3, 5),
(451, 'River Sand', 95, 'River Sand', NULL, 18, 1, 3, 3, 5),
(452, 'River Sand', 21, 'River Sand', NULL, 18, 1, 3, 3, 5),
(453, 'TWISTED STEEL BARS', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 67),
(454, 'TWISTED STEEL BARS', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 67),
(455, 'TWISTED STEEL BARS', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 67),
(456, 'TWISTED STEEL BARS', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 67),
(457, 'TWISTED STEEL BARS 6MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 68),
(458, 'TWISTED STEEL BARS 6MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 68),
(459, 'TWISTED STEEL BARS 6MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 68),
(460, 'TWISTED STEEL BARS 6MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 68),
(461, 'TWISTED STEEL BARS 8MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 69),
(462, 'TWISTED STEEL BARS 8MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 69),
(463, 'TWISTED STEEL BARS 8MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 69),
(464, 'TWISTED STEEL BARS 8MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 69),
(465, 'TWISTED STEEL BARS 10MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 10),
(466, 'TWISTED STEEL BARS 10MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 10),
(467, 'TWISTED STEEL BARS 10MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 10),
(468, 'TWISTED STEEL BARS 10MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 10),
(469, 'TWISTED STEEL BARS 12MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 11),
(470, 'TWISTED STEEL BARS 12MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 11),
(471, 'TWISTED STEEL BARS 12MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 11),
(472, 'TWISTED STEEL BARS 12MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 11),
(473, 'TWISTED STEEL BARS 16MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 12),
(474, 'TWISTED STEEL BARS 16MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 12),
(475, 'TWISTED STEEL BARS 16MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 12),
(476, 'TWISTED STEEL BARS 16MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 12),
(477, 'TWISTED STEEL BARS 20MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 60),
(478, 'TWISTED STEEL BARS 20MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 60),
(479, 'TWISTED STEEL BARS 20MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 60),
(480, 'TWISTED STEEL BARS 20MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 60),
(481, 'TWISTED STEEL BARS 25MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 58),
(482, 'TWISTED STEEL BARS 25MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 58),
(483, 'TWISTED STEEL BARS 25MM', 133, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 58),
(484, 'TWISTED STEEL BARS 25MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 58),
(485, 'TWISTED STEEL BARS 32MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 59),
(486, 'TWISTED STEEL BARS 32MM', 128, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 59),
(487, 'TWISTED STEEL BARS 32MM', 24, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 59),
(488, 'TWISTED STEEL BARS 40MM', 1, 'Twisted Steel Bars', NULL, 23, 1, 3, 3, 61),
(489, 'Hop Up Ladder(Metallic)', 156, 'Metallic Red', NULL, 18, 4, 3, 3, 5),
(490, 'Step Ladder(Alluminium)', 156, 'Alluminiun, Silver', NULL, 18, 4, 3, 3, 5),
(491, 'SILK VINLYK MATT EMULSION ( WHITE )', 74, '20LTS SILK VINLYK MATT EMULSION - WHITE', NULL, 29, 4, 6, 3, 5),
(492, 'CUTTING DISK - NORMAL -  ', 156, 'CUTTING DISK NORMAL 7\'\'', NULL, 24, 4, 3, 3, 52),
(493, 'CUTTING DISK NORMAL 7\'\'', 156, 'CUTTING DISK NORMAL 7\'\'', NULL, 24, 4, 3, 3, 52),
(494, 'CUTTING DISK - DIAMOND - 7\'\'', 156, 'CUTTING DISK - DIAMOND- 7\'\'', NULL, 24, 4, 3, 3, 52),
(741, 'STEEL NAIL 2\'\'', 156, 'STEEL NAIL 2\'\'', NULL, 18, 4, 3, 3, 5),
(496, 'BATTERY CHARGER 45AMPS  DYNAMIC 320', 157, 'BATTERY CHARGER 45AMPS  DYNAMIC 320', NULL, 2, 4, 7, 4, 71),
(497, 'NYUMBA CEMENT', 133, 'MOMBASA NYUMBA CEMENT 50KG BAG', NULL, 25, 4, 4, 5, 74),
(498, 'THINNER', 74, 'STARDAND THINNER OF 20LTS JERRY CAN', NULL, 18, 4, 6, 6, 75),
(499, 'LIME SLUDGE - CHOKA-', 158, 'LIME SLUDGE ( CHOKA ) 50KG BAG', NULL, 19, 4, 3, 3, 74),
(500, 'BINDING WIRE', 133, 'BINDING WIRE - SOFT/ EASY TYPE', NULL, 18, 4, 3, 8, 76),
(501, 'WATER SEAL / HARNER', 156, 'WATER SEAL / HARNER   - IN BLUE DRUM-', NULL, 30, 4, 3, 3, 77),
(502, 'RED OXIDE - PREMIER', 74, 'RED OXIDE - PREMIER - 4LITRES TIN', NULL, 29, 4, 6, 9, 78),
(503, 'GYPSUM FILLER', 74, 'GYPSUM FILLER - 25KG BAGS-', NULL, 30, 4, 3, 3, 79),
(504, 'TILE GRAUT ', 125, 'TILE GRAUNT - 3KG BAG', NULL, 30, 4, 3, 3, 80),
(505, 'WIRED BRUSH', 156, 'WIRED BRUSH', NULL, 23, 4, 3, 3, 5),
(506, 'OVERALL ', 156, 'OVERALL', NULL, 18, 4, 3, 3, 5),
(507, 'TROPIKAL AIR FRESHNER 300ML', 156, 'TROPIKAL AIR FRESHNER 300ML', NULL, 31, 4, 3, 10, 81),
(508, 'TOILET BALLS', 156, 'TOILET BALLS', NULL, 31, 4, 3, 3, 5),
(509, 'TRANSEAL', 156, 'TRANSEAL 20LTS JERRY CAN', NULL, 30, 4, 3, 3, 75),
(510, 'WHITE UNDERCOAT ', 74, 'WHITE UNDERCOAT - 20 LTS BUCKET', NULL, 29, 4, 3, 3, 75),
(511, 'ARABIC SHOWER', 156, 'ARABIC SHOWER - COBRA -', NULL, 1, 4, 3, 3, 5),
(512, 'ORBITA SAFE NO:2045', 156, 'ORBITA SAFE NO:2045', NULL, 18, 4, 3, 11, 5),
(513, 'ORBITA SAFE NO:2043', 156, 'ORBITA SAFE NO:2043', NULL, 18, 4, 3, 11, 5),
(514, 'ORBITA SAFE GSR008', 71, 'ORBITA SAFE GSR008', NULL, 18, 4, 3, 11, 5),
(515, 'DUST COAT', 156, 'DUST COATS', NULL, 18, 4, 3, 3, 5),
(516, 'WATER PROOF / HYSEAL', 156, 'WATER PROF / HYSEAL', NULL, 30, 4, 3, 3, 82),
(517, 'WOOD SCREW 8Gx2\'\'', 156, 'WOOD SCREW 8Gx2\'\'', NULL, 18, 4, 3, 3, 65),
(518, 'SCRAPPERS', 65, 'SCRAPPERS', NULL, 30, 4, 3, 3, 5),
(519, 'HACKSAW BLADE', 65, 'HACKSAW BLADE', NULL, 18, 4, 3, 3, 5),
(520, 'WATER PROOF / HYSEAL', 58, 'WATER PROOF / HYSEAL', NULL, 30, 4, 3, 3, 82),
(521, 'HELMET - PURPLE -', 156, 'HELMET - PURPLE -', NULL, 18, 4, 3, 3, 5),
(522, 'HELMET - GREY -', 156, 'HELMET - GREY -', NULL, 18, 4, 3, 3, 5),
(523, 'HELMET - ORANGE -', 156, 'HELMET - ORANGE -', NULL, 18, 4, 3, 3, 5),
(524, 'HELMET - WHITE -', 156, 'HELMET - WHITE -', NULL, 18, 4, 3, 3, 5),
(525, 'DIESEL ENGINE OIL 15W - 40', 15, 'DIESEL ENGINE OIL 15W - 40', NULL, 22, 4, 3, 3, 75),
(526, 'PPR PIPE 25MM X 4MTS- PN20', 57, 'PPR PIPE 25MM X 4MTS- PN20', NULL, 1, 4, 3, 3, 58),
(527, 'LED DOWN LIGHT  - WARM WHITE -', 156, 'LED DOWN LIGHT  - WARM WHITE -', NULL, 2, 4, 3, 12, 5),
(528, 'LED DOWN LIGHT - WARM WHITE -', 156, 'LED DOWN LIGHT - WARM WHITE -', NULL, 2, 4, 3, 12, 5),
(529, 'TILE 600X600MM DARK BROWN CODE:QG6118', 51, 'TILE 600X600MM DARK BROWN CODE:QG6118', NULL, 30, 4, 3, 3, 83),
(530, 'TILE 600X600MM WHITE CODE:P6028', 125, 'TILE 600X600MM WHITE CODE:P6028', NULL, 30, 4, 3, 13, 83),
(531, 'TOP PLUG (13A)', 156, 'TOP PLUG (13A)', NULL, 2, 4, 3, 3, 5),
(532, 'ODEX THICK LAVENDER DISINFECTANT', 8, 'ODEX THICK LAVENDER DISINFECTANT 5LTS JERY CAN', NULL, 31, 4, 3, 16, 84),
(533, 'ODEX LIMIT', 156, 'ODEX LIMIT 5LTS JERY CAN', NULL, 31, 4, 3, 15, 84),
(534, 'ODEX REACT', 156, 'ODEX REACT 5LTS JERY CAN', NULL, 31, 4, 3, 14, 84),
(535, 'HOT PLATE (ARMCO) MODEL:AEC-C10(5)', 172, 'HOT PLATE (ARMCO) MODEL:AEC-C10(5)', NULL, 32, 4, 3, 17, 5),
(536, 'KETTLE (ARMCO) AKT -172WD(B)', 172, 'KETTLE (ARMCO) AKT -172WD(B)', NULL, 32, 4, 3, 17, 5),
(537, 'MICROWAVE OVEN (SAMSUNG) MODEL:ME731K', 172, 'MICROWAVE OVEN (SAMSUNG) MODEL:ME731K', NULL, 32, 4, 3, 17, 5),
(538, 'TOASTER (ARMCO)  MODEL:APT-23520(W)', 172, 'TOASTER (ARMCO)  MODEL:APT-23520(W)', NULL, 32, 4, 3, 17, 5),
(539, 'ROPE LIGHT', 156, 'ROPE LIGHT', NULL, 2, 4, 3, 3, 76),
(540, 'CABLE TIES (WHITE , 24.5CM LONG )', 156, 'CABLE TIES (WHITE , 24.5CM LONG )', NULL, 18, 4, 3, 3, 5),
(541, 'REFLECTIVE JACKET - ORANGE', 156, 'REFLECTIVE JACKET - ORANGE', NULL, 18, 4, 3, 3, 5),
(542, 'METAL SPADE', 156, 'METAL SPADE -  COMPLETE WITH HANDLE  -', NULL, 30, 4, 3, 3, 5),
(543, 'SUPER GLOSS - GREY -  APS', 74, 'SUPER GLOSS - GREY -  APS  4LTS TIN', NULL, 29, 4, 6, 3, 78),
(544, 'PPR REDUCER 50X25MM', 57, 'PPR REDUCER 50X25MM', NULL, 1, 4, 3, 3, 85),
(545, 'G.I PLUG 1/2\'\'', 57, 'G.I PLUG 1/2\'\'', NULL, 1, 4, 3, 3, 47),
(546, 'PPR PIPE 50MMX4MTS PN20', 57, 'PPR PIPE 50MMX4MTS PN20', NULL, 1, 4, 3, 3, 86),
(547, 'PPR FIT ELBOW90 50MM', 57, 'PPR FIT ELBOW90 50MM', NULL, 1, 4, 3, 3, 63),
(548, 'PPR REDUCER 50X32MM', 57, 'PPR REDUCER 50X32MM', NULL, 1, 4, 3, 3, 88),
(549, 'PVC 4\'\' GREY', 57, 'PVC 4\'\' GREY', NULL, 1, 4, 3, 3, 5),
(550, '110 A/BEND', 81, '110 A/BEND', NULL, 1, 4, 3, 3, 5),
(551, 'PPR MALE ELBOW 25X1/2\'\'', 81, 'PPR MALE ELBOW 25X1/2\'\']', NULL, 1, 4, 3, 3, 47),
(552, 'TILE SPACERS 5MM', 156, 'TILE SPACERS 5MM', NULL, 18, 1, 3, 3, 89),
(553, 'URINAL FLUSH - STERN JUPITER 2030E', 173, 'URINAL FLUSH - STERN JUPITER 2030E', NULL, 1, 1, 3, 3, 5),
(554, 'GEBERIT CISTERN ', 173, 'GEBERIT CISTERN FOR WALL HUNG WC', NULL, 1, 1, 3, 3, 5),
(555, 'CORK SEAL 1/2\'\'', 65, 'CORK SEAL 1/2\'\'', NULL, 1, 1, 3, 3, 47),
(556, 'STEEL WOOL', 156, 'STEEL WOOL', NULL, 31, 1, 3, 3, 5),
(557, 'ARMOURED CABLE COPPER 10MM 4CORE', 174, 'ARMOURED CABLE COPPER 10MM 4CORE', NULL, 2, 1, 3, 3, 90),
(558, 'SINGLE CORE 1.5MM - RED', 27, 'SINGLE CORE 1.5MM - RED', NULL, 2, 1, 9, 3, 91),
(559, 'SINGLE CORE 1.5MM - BLACK', 27, 'SINGLE CORE 1.5MM - BLACK', NULL, 2, 1, 9, 3, 91),
(560, 'SINGLE CORE 1.5MM - GREEN/YELLOW', 27, 'SINGLE CORE 1.5MM - GREEN/YELLOW', NULL, 2, 1, 9, 3, 91),
(561, 'STEEL NAIL 4\'\'', 65, 'STEEL NAIL 4\'\'', NULL, 18, 4, 3, 3, 49),
(562, 'STEEL NAIL 3\'\'', 65, 'STEEL N AIL 3\'\'', NULL, 18, 4, 3, 3, 66),
(563, 'CUTTING DISK 9\'\'', 156, 'CUTTING DISK 9\'\'', NULL, 18, 4, 3, 3, 54),
(564, 'CUTTING DISK - NORMAL -  9\'\'', 156, 'CUTTING DISK - NORMAL -  9\'\'', NULL, 18, 4, 3, 3, 54),
(565, 'ANCHOR BOLT / RAWL BOLT 8MM', 156, 'ANCHOR BOLT / RAWL BOLT 8MM', NULL, 2, 4, 3, 3, 69),
(566, 'WHITE PAINT - EGG SHELL', 156, 'WHITE PAINT - EGG SHELL - 4LTS TIN', NULL, 29, 4, 3, 3, 78),
(567, 'EMPTY BUCKETS 20LTS', 156, 'EMPTY BUCKETS 20LTS', NULL, 18, 4, 3, 3, 82),
(568, 'EMPTY JERYCAN 2OLTS', 156, 'EMPTY JERYCAN 2OLTS', NULL, 18, 4, 3, 3, 75),
(569, 'STEEL NAIL 1\'\'', 156, 'STEEL NAIL 1\'\'', NULL, 18, 4, 3, 3, 1),
(570, 'ORDINARY NAILS 3\'\'', 156, 'ORDINARY NAILS 3\'\'', NULL, 18, 4, 3, 3, 66),
(571, 'ORDINARY NAILS 4\'\'', 156, 'ORDINARY NAILS 4\'\'', NULL, 18, 4, 3, 3, 49),
(572, 'ROOFING NAILS 3\'\'', 156, 'ROOFING NAILS 3\'\'', NULL, 18, 4, 3, 3, 66),
(573, 'SPRINKLER HEADS', 156, 'SPRINKLER HEADS', NULL, 1, 4, 3, 3, 5),
(574, 'TANGIT GLUE 1L', 81, 'TANGIT GLUE 1L', NULL, 18, 4, 3, 3, 92),
(575, 'TANGIT GLUE 1L', 156, 'TANGIT GLUE 1L', NULL, 18, 4, 3, 3, 92),
(576, 'CORNICE', 156, 'CORNICE', NULL, 18, 4, 3, 3, 5),
(577, 'DOOR FRAME', 156, 'DOOR FRAME', NULL, 18, 4, 3, 3, 5),
(578, 'DOOR - AFRICAN -', 156, 'DOOR - AFRICAN -', NULL, 18, 4, 3, 3, 5),
(579, 'TILE SPACER 3MMq', 125, 'TILE SPACER 3MMq', NULL, 18, 4, 3, 3, 93),
(580, 'BOSS WHITE', 156, 'BOSS WHITE', NULL, 1, 4, 3, 3, 5),
(581, 'WOOD SCREW 12X3\'\'', 156, 'WOOD SCREW 12X3\'\'', NULL, 18, 4, 3, 3, 94),
(582, 'OMO', 156, 'OMO ', NULL, 18, 4, 3, 3, 5),
(583, 'TILE ADHESIVE', 105, 'TILE ADHESIVE', NULL, 30, 4, 3, 3, 79),
(584, 'SAFETY BELT', 156, 'SAFETY BELT', NULL, 18, 4, 3, 3, 5),
(585, 'MAGNETIC CLUTCH', 162, 'MAGNETIC CLUTCH', NULL, 18, 4, 3, 3, 5),
(586, 'BOLT - MS BLOT 12MM -', 100, 'BOLT - MS BLOT 12MM -', NULL, 18, 4, 3, 3, 11),
(587, 'MASKING TAPE', 170, 'MASKING TAPE', NULL, 18, 4, 3, 3, 5),
(588, 'DUCT TAPE', 156, 'DUCT TAPE', NULL, 18, 4, 3, 3, 5),
(590, 'GRINDING DISK 7\'\'', 162, 'GRINDING DISK 7\'\'', NULL, 3, 4, 3, 3, 52),
(591, 'SLASHERS', 156, 'SLASHERS', NULL, 18, 4, 3, 3, 5),
(592, 'PAINT ROLLERS 9\'\'', 171, 'PAINT ROLLERS 9\'\'', NULL, 29, 4, 3, 3, 54),
(593, 'SCANNER - CANON -', 156, 'SCANNER - CANON -', NULL, 19, 4, 3, 20, 5),
(594, 'BOLT - MS BLOT 16MM -', 156, 'BOLT - MS BLOT 16MM -', NULL, 18, 4, 3, 20, 12),
(595, 'ANCHOR BOLT / RAWL BOLT M16', 156, 'ANCHOR BOLT / RAWL BOLT M16', NULL, 18, 4, 3, 3, 95),
(596, 'YALE CABIN BOARD LOCK', 3, 'YALE CABIN BOARD LOCK', NULL, 18, 4, 3, 3, 5),
(597, 'TOWER BOLT 4\'\' ', 166, 'TOWER BOLT 4\'\' ', NULL, 33, 4, 3, 3, 49),
(598, 'DOOR HANDLES ', 156, 'DOOR HANDLES - STAINLESS STEEL-', NULL, 33, 4, 3, 3, 5),
(599, 'SINGLE CORE 2.5MM  -RED', 27, 'SINGLE CORE 2.5MM  -RED', NULL, 2, 4, 3, 3, 5),
(600, 'SINGLE CORE 2.5MM  -GREEN /YELLOW', 27, 'SINGLE CORE 2.5MM  -GREEN /YELLOW', NULL, 2, 4, 3, 3, 5),
(601, 'SINGLE CORE 2.5MM  -BLACK', 27, 'SINGLE CORE 2.5MM  -BLACK', NULL, 2, 4, 3, 3, 5),
(602, 'HOLLOW BLOCKS', 156, 'HOLLOW BLOCKS', NULL, 30, 4, 3, 3, 5),
(603, 'BROOMS - SOFT', 156, 'BROOMS - SOFT', NULL, 31, 4, 3, 20, 5),
(604, 'INSULATING TAPE - RED', 156, 'INSULATING TAPE - RED', NULL, 2, 4, 3, 3, 5),
(605, 'INSULATING TAPE - YELLOW', 156, 'INSULATING TAPE - YELLOW', NULL, 2, 4, 3, 3, 5),
(606, 'INSULATING TAPE - BLACK', 156, 'INSULATING TAPE - BLACK', NULL, 2, 4, 3, 3, 5),
(607, 'HINGES 3\'\' ', 156, 'DOOR HINGES 3\'\'  -S/STEEL 304', NULL, 33, 4, 3, 3, 66),
(608, 'HAMMER - CLAW HAMMER -', 156, 'HAMMER - CLAW HAMMER ', NULL, 33, 4, 3, 3, 5),
(609, 'POWER BACK UP - UPS MERCURY 650VA -', 156, 'POWER BACK UP - UPS MERCURY 650VA -', NULL, 34, 4, 3, 3, 5),
(610, 'HAMMER - SLEDGE HAMMER 16LB -', 156, 'HAMMER - SLEDGE HAMMER 16LB -', NULL, 30, 4, 3, 3, 96),
(611, 'HEDGE SHEARS', 156, 'SHEAR - HEDGE SHEAR', NULL, 18, 4, 3, 3, 5),
(612, 'BROOM - STIFF -', 161, 'BROOM - STIFF -', NULL, 31, 4, 3, 3, 5),
(613, 'PAINT BRUSH 3\'\'', 156, 'PAINT BRUSH 3\'\'', NULL, 29, 4, 3, 3, 66),
(614, 'BOOSTER SET -  FOR WATER PUMP -', 71, 'BOOSTER SET -  FOR WATER PUMP -', NULL, 1, 4, 10, 3, 5),
(615, 'L-TRIM ALLUMINIUM CORNER STRIPS', 156, 'L-TRIM ALLUMINIUM CORNER STRIPS', NULL, 30, 4, 3, 3, 5),
(616, 'TILE 30X30  PINK CODE:9801', 173, 'TILE 30X30  PINK CODE:9801', NULL, 30, 4, 3, 3, 5),
(617, 'TILE SPACERS 2MM', 125, 'TILE SPACERS 2MM', NULL, 30, 4, 3, 3, 3),
(618, 'HOOP IRON', 133, 'HOOP IRON', NULL, 30, 4, 3, 3, 5),
(619, 'ORDINARY NAILS 2\'\'', 156, 'ORDINARY NAILS 2\'\'', NULL, 18, 4, 3, 3, 65),
(620, 'SIL / STRETCH', 156, 'SIL / STRETCH ( CLEAR POLYTHENE ROLL )', NULL, 18, 4, 3, 3, 5),
(621, 'BOTTLE TRAP', 81, 'BOTTLE TRAP', NULL, 1, 4, 3, 3, 5),
(622, 'G.I SOCKET 1/2\'\'', 156, 'G.I SOCKET 1/2\'\'', NULL, 1, 4, 3, 3, 47),
(623, 'WALL PLUG 8MM', 156, 'WALL PLUG 8MM', NULL, 18, 4, 3, 3, 65),
(624, 'PVC WALL PLUG 8MM', 156, 'PVC WALL PLUG 8MM', NULL, 18, 4, 3, 3, 65),
(625, 'GREASE -15KG BUCKET -', 15, 'GREASE -15KG BUCKET -', NULL, 30, 4, 3, 3, 100),
(626, 'ORYX FLUID 68', 15, 'ORYX FLUID 68', NULL, 22, 4, 3, 3, 75),
(627, 'CHAIN - CRANE/ CONTAINER - 3.7M', 156, 'CHAIN - CRANE/ CONTAINER - 3.7M WITH HOOK', NULL, 18, 4, 3, 3, 101),
(628, 'CHAIN - CRANE/ CONTAINER - 3.7M', 156, 'CHAIN - CRANE/ CONTAINER - 5.4M WITH HOOK', NULL, 18, 4, 3, 3, 102),
(629, 'CHAIN - CRANE/ CONTAINER - 5.4M', 156, 'CHAIN - CRANE/ CONTAINER - 5.4M COMPLETE WITH HOOK', NULL, 18, 4, 3, 3, 102),
(630, 'SUPER FAST EMULSION - BLACK - 20LTS BKT', 156, 'SUPER FAST EMULSION - BLACK - 20LTS BKT', NULL, 29, 4, 3, 3, 103),
(631, 'PVC CORNER STRIPS -YELLOW-', 156, 'PVC CORNER STRIPS -YELLOW-', NULL, 30, 4, 3, 3, 5),
(632, 'TAP 1/2 - DELAY CTION PILLAR PV-T100 -', 169, 'TAP 1/2 - DELAY CTION PILLAR PV-T100 -', NULL, 1, 4, 3, 3, 47),
(633, 'BATTERY ACID - 1LT BOTTLE -', 166, 'BATTERY ACID - 1LT BOTTLE -', NULL, 31, 4, 3, 3, 92),
(634, 'BATTERY WATER -1LT BOTTLE -', 156, 'BATTERY WATER -1LT BOTTLE -', NULL, 22, 4, 3, 3, 92),
(635, 'TWIN SOCKET - 13AMPS - PLASTIC', 174, 'TWIN SOCKET - 13AMPS  PLASTIC - DELTA', NULL, 2, 4, 8, 3, 5),
(636, 'LED DOWNLIGHTER - 7W COB-NW -', 175, 'LED DOWNLIGHTER - 7W COB-NW -', NULL, 2, 4, 3, 3, 5),
(637, 'DIAMOND CUTTING DISK 4 1/2\'\'', 159, 'DIAMOND CUTTING DISK 4 1/2\'\'', NULL, 18, 4, 3, 3, 104),
(638, 'G.I HEX NIPPLE 1/2\'\'', 159, 'G.I HEX NIPPLE 1/2\'\'', NULL, 18, 4, 3, 3, 47),
(639, 'PVC FLEXIBLE TUBE 1/2\'\' X 45CM', 156, 'PVC FLEXIBLE TUBE 1/2\'\' X 45CM', NULL, 1, 4, 3, 3, 106),
(640, 'ANGLE VALVE 1/2\'\' X1/2\'\' ', 156, 'ANGLE VALVE 1/2\'\' X1/2\'\'  WITH FLANGE', NULL, 1, 4, 3, 3, 107),
(641, 'BATTERY SMF -ENERGIZER EC2 N150 155AMPS', 156, 'BATTERY SMF -ENERGIZER EC2 N150 155AMPS', NULL, 18, 4, 3, 3, 5),
(642, 'TILE 600X600 CODE:YS6-11C', 173, 'TILE 600X600  CODE:YS6-11C', NULL, 30, 4, 3, 13, 83),
(643, 'WOOD SCREW 4\'\'', 156, 'WOOD SCREW 4\'\'', NULL, 18, 4, 3, 3, 49),
(644, 'HOLLOW BLOCKS - PARTITION BLOCKS', 21, 'HOLLOW BLOCKS - PARTITION BLOCKS', NULL, 30, 4, 3, 3, 5),
(645, 'BUS BAR', 156, 'BUS BAR (YELLOW,RED,BLUE AND BLACK )', NULL, 2, 4, 3, 3, 5),
(646, 'G.I REDUCER  2 X1.5\'\'', 80, 'G.I REDUCER  2 X1.5\'\'', NULL, 1, 4, 3, 3, 108),
(647, 'G.I UNION 1.5\'\'', 80, 'G.I UNION 1.5\'\'', NULL, 1, 4, 3, 3, 109),
(648, 'G.I  ELBOW 1.5\'\'', 80, 'G.I  ELBOW 1.5\'\'', NULL, 1, 4, 3, 3, 109),
(649, 'DIESEL FUEL', 129, 'DIESEL FUEL ( KEPT IN STORE )', NULL, 22, 4, 3, 3, 5),
(650, 'COMPUTER DESKTOP(COMPLETE)', 156, 'Computer Complete with Mouse, Keyboard and Monitor', NULL, 34, 1, 3, 3, 5),
(651, 'PRINTERS', 156, 'Printer', NULL, 34, 1, 3, 3, 5),
(652, 'OFFICE FURNITURE', 156, 'General Office Furniture', NULL, 26, 1, 3, 3, 5),
(653, 'DEMOLITION HAMMER', 156, 'Demolition Hammer', NULL, 30, 1, 3, 3, 5),
(654, 'DRILL MACHINE', 156, 'Drill Machine', NULL, 24, 1, 3, 3, 5),
(655, 'GRINDER', 156, 'Grinder', NULL, 24, 1, 3, 3, 5),
(656, 'WHEELBARROWS', 156, 'Wheel Barrows', NULL, 24, 1, 3, 3, 5),
(657, 'WOODSAWS', 156, 'Wood Saws', NULL, 24, 1, 3, 3, 5),
(658, 'CARS', 156, 'Cars', NULL, 35, 1, 3, 3, 5),
(659, 'TARAPA', 156, 'Tarapa', NULL, 30, 1, 3, 3, 5),
(660, 'KITCHEN HOME EQUIPMENT', 156, 'Kitchen  and Home Equipment', NULL, 32, 1, 3, 3, 5),
(661, 'CONCRETE PUMP', 156, 'Concreate Pump', NULL, 24, 1, 3, 3, 5),
(662, 'CLAW BAR', 156, 'Claw Bar', NULL, 30, 1, 3, 3, 5),
(663, 'HILTI BREAKER', 156, 'Hilti Breaker', NULL, 30, 1, 3, 3, 5),
(664, 'HILTI POINTED CHISEL', 156, 'Hilti Pointed Chisel', NULL, 30, 1, 3, 3, 5),
(665, 'CONCRETE MIXER', 156, 'Concrete Mixers', NULL, 24, 1, 3, 3, 5),
(666, 'STEEL LADDERS', 156, 'Steel Ladders', NULL, 18, 1, 3, 3, 5),
(667, 'TIMBER 4 X 2', 156, 'Timber', NULL, 26, 1, 3, 3, 5),
(668, 'GUMPOLES', 156, 'Gum Poles', NULL, 26, 1, 3, 3, 5),
(669, 'TIMBER 2 X 2', 156, 'Timber 2 X 2', NULL, 26, 1, 3, 3, 5),
(670, 'SILICON  - WHITE -', 156, 'SILICON  - WHITE - ( In white tube )', NULL, 18, 4, 3, 3, 5),
(671, 'SILICON -  CLEAR -', 156, 'SILICON  -  CLEAR  -  (black / orange tube )', NULL, 18, 4, 3, 3, 5),
(672, 'ANCHOR BOLT / RAWL BOLT M12', 156, 'ANCHOR BOLT / RAWL BOLT M12', NULL, 18, 4, 3, 3, 110),
(673, 'WELDING SHIELD', 156, 'Welding Shields For Welding', NULL, 3, 1, 3, 3, 5),
(674, 'GUMBOOTS', 156, 'Gum Boots', NULL, 18, 1, 3, 3, 5),
(675, 'COMPACTOR MACHINE', 156, 'Compactor Machine', NULL, 24, 1, 3, 3, 5),
(676, 'TUBULAR BLACK 48.3MM OD X 3.20 THICK X 3.5M LONG', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(677, 'TUBULAR BLACK 48.3MM OD X 3.20 THICK X 1.8M LONG', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(678, 'ADJUSTABLE BASEJACK TUBULAR(FORM WORK) L 660MM BLACK 38MM OD', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(679, 'ADJUSTABLE BASEJACK TUBULAR(ACCESS SCAFFOLDING) L 660MM BLACK 38MM OD', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(680, 'RIGHT ANGLE(DOUBLE) COUPLER ELECTROPLATED (1.5&quot; X 1.5&quot;) DROP FORGED EN74', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(681, 'ADJUSTABLE FORK HEAD JACK TUBULAR L-660MM BLACK 38MM O.D', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(682, 'SWIVEL COUPLER (ELECTROPLATED) 1.5&quot; X 1.5&quot; DROP FORGED(EN74)', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5);
INSERT INTO `materials` (`mat_id`, `mat_name`, `sup_id`, `description`, `store_id`, `mat_cat_id`, `user_id`, `man_id`, `brand_id`, `size_id`) VALUES
(683, 'LOOSE SPIGOT(SQUARE) WITH NUTS AND BOLTS-PAINTED', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(684, 'FIXED FORK HEAD PAINTED SIZE 150 X 162 X 100MM 6MM THICK(ORANGE)', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(685, 'PROPS 2.52M X 39 X 2MM THICK MAX H-3.9M MIN H-2.52M', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(686, '3.6M LADDER STRAIGHT TYPE ALUMINIUM ', 156, 'General Use Items', NULL, 18, 1, 3, 3, 5),
(687, 'SCAFFOLDING VERTICAL 3M WITHOUT SPIGOT', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(688, 'SCAFFOLDING VERTICAL 2.5M WITHOUT SPIGOT', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(689, 'SCAFFOLDING VERTICAL 2.0M WITHOUT SPIGOT', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(690, 'SCAFFOLDING HORIZONTAL 1.8M PAINTED DIA 48.3MM', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(691, 'SCAFFOLDING HORIZONTAL 1.6M PAINTED DIA 48.3MM', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(692, 'SCAFFOLDING HORIZONTAL 1.2M PAINTED DIA 48.3MM', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(693, 'SCAFFOLDING HORIZONTAL 1.3M PAINTED DIA 48.3MM', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(694, 'SCAFFOLDING HORIZONTAL 2.5M PAINTED DIA 48.3MM', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(695, 'INTERMEDIATE TRANSOM (HORIZONTAL) 1.3M PAINTED DIA 48.3MM', 156, 'Scaffolding Parts and Accessories', NULL, 36, 1, 3, 3, 5),
(696, 'GENERATOR', 156, 'Tools and Machinery', NULL, 24, 1, 3, 3, 5),
(697, 'MCCBS', 156, 'MCCBS', NULL, 2, 1, 3, 3, 5),
(698, 'VEHICLE BATTERY', 156, 'MCCBS', NULL, 2, 1, 3, 3, 5),
(699, 'CUBIC MOULDS', 156, 'Cubic moulds for making  blocks', NULL, 24, 20, 3, 3, 5),
(700, 'DRAINAGE GRILLS', 156, 'Drainage Grills', NULL, 1, 20, 3, 3, 5),
(701, 'BATTERY', 156, 'Car Battery', NULL, 18, 20, 3, 3, 5),
(702, 'ELECTRIC BAR CUTTER', 156, 'Electric Bar Cutter', NULL, 24, 20, 3, 3, 5),
(703, 'MANUAL BAR CUTTER', 156, 'Manual Bar Cutter', NULL, 24, 20, 3, 3, 5),
(704, 'BAR BENDING MACHINE', 156, 'Bar Bending Machine', NULL, 24, 20, 3, 3, 5),
(705, 'POKER VIBRATOR MACHINE', 156, 'Poker Vibrator Machine', NULL, 24, 20, 3, 3, 5),
(706, 'POKER WIRES', 156, 'Poker Wires for Vibrator Machine', NULL, 24, 20, 3, 3, 5),
(707, 'LIGHT FITTING -RECESSED 4X18W', 156, 'LIGHT FITTING -RECESSED 4X18W -', NULL, 2, 4, 3, 21, 5),
(708, 'MASTER TOP', 156, 'MASTER TOP', NULL, 30, 4, 3, 3, 79),
(710, 'BATTERIES - FREE MAINTANCE- 206AMPS', 0, '', NULL, NULL, NULL, 0, 0, 0),
(709, 'CAR WASH PUMP', 156, 'Car Wash Pump', NULL, 24, NULL, 3, 3, 5),
(711, 'SAND PAPER P80', 156, 'SAND PAPER P80', NULL, 18, 4, 3, 3, 5),
(712, 'FISCHER - ANCHOR CHEMICAL -', 156, 'FISCHER - ANCHOR CHEMICAL -', NULL, 23, 4, 3, 3, 5),
(713, 'M16 X 50MM', 156, 'M16 X 50MM', NULL, 23, 4, 3, 3, 5),
(714, 'M12 X 50MM', 156, 'M12 X 50MM', NULL, 23, 4, 3, 3, 5),
(715, 'SILICON GUN', 156, 'SILICON GUN', NULL, 18, 4, 3, 3, 5),
(716, 'BROOMS - MAKUTI -', 156, 'BROOMS - MAKUTI -', NULL, 31, 4, 3, 3, 5),
(717, 'FLOOR TILE - WHITE - GAYA MAGMA 60 BLANCO', 156, 'FLOOR TILE - WHITE - GAYA MAGMA 60 BLANCO', NULL, 30, 4, 3, 3, 83),
(718, 'PPR MALE SOCKET 25 X 1/2 ', 156, 'PPR MALE SOCKET 25 X 1/2 ', NULL, 1, 4, 3, 3, 111),
(719, 'PPR MALE SOCKET 32 X 1', 156, 'PPR MALE SOCKET 32 X 1', NULL, 1, 4, 3, 3, 112),
(720, 'PPR FEMALE SOCKET 25 X 1/2', 156, 'PPR FEMALE SOCKET 25 X 1/2', NULL, 1, 4, 3, 3, 111),
(721, 'PPR ELBOW 25MM', 156, 'PPR ELBOW 25MM', NULL, 1, 4, 3, 3, 58),
(722, 'PPR ELBOW 32MM', 156, 'PPR ELBOW 32MM', NULL, 1, 4, 3, 3, 59),
(723, '110 BEND 45', 156, '110 BEND 45', NULL, 1, 4, 3, 3, 114),
(724, 'PVC 110 BEND 90', 156, 'PVC 110 BEND 90', NULL, 1, 4, 3, 3, 5),
(725, 'PPR TEE 32MM', 156, 'PPR TEE 32MM', NULL, 1, 4, 3, 3, 59),
(726, 'PVC 160 TEE', 81, 'PVC 160 TEE', NULL, 1, 4, 3, 3, 115),
(727, 'PPR REDUCER TEE 32 X 25MM', 156, 'PPR REDUCER TEE 32 X 25MM', NULL, 1, 4, 3, 3, 116),
(728, 'FLOOR TRAP 110 X2 X1.5', 156, 'FLOOR TRAP 110 X2 X1.5', NULL, 1, 4, 3, 3, 117),
(729, '110 INLET', 156, '110 INLET', NULL, 1, 4, 3, 3, 114),
(730, 'PVC REDUCER BUSH 160 X 110', 81, 'PVC REDUCER BUSH 160 X 110', NULL, 1, 4, 3, 3, 118),
(731, 'PVC REDUCER 110 X 2', 81, 'PVC REDUCER 110 X 2', NULL, 1, 4, 3, 3, 119),
(732, 'TANGIT GLUE 500ML', 156, 'TANGIT GLUE 500ML', NULL, 1, 4, 3, 3, 120),
(733, 'WELDING RODS 3.2MM  - PACKETS -', 176, 'WELDING RODS 3.2MM  - PACKETS -', NULL, 3, 4, 3, 3, 6),
(734, 'ALUMINIUM LADDER - FOLDABLE -  SHORT', 156, 'ALUMINIUM LADDER - FOLDABLE -  SHORT', NULL, 18, 4, 3, 3, 5),
(735, 'ALUMINIUM LADDER - FOLDABLE -  LONG', 156, 'ALUMINIUM LADDER - FOLDABLE -  LONG', NULL, 18, 4, 3, 3, 5),
(736, 'OMO - IN MAIN STORE-', 156, 'OMO - IN MAIN STORE -', NULL, 31, 4, 3, 3, 5),
(737, 'DIESEL ENGINE OIL 15W - 40', 156, 'DIESEL ENGINE OIL 15W - 40', NULL, 22, 4, 3, 3, 75),
(738, 'CHALKS - SCHOOL CHALKS -', 156, 'CHALKS - SCHOOL CHALKS -', NULL, 18, 4, 3, 3, 5),
(739, 'MARINE PLY WOOD', 156, ' Marine Ply Wood 8&quot; X 4&quot;', NULL, 26, 20, 3, 3, 5),
(740, 'WELDING RODS 3.25MM', 156, 'WELDING RODS 3.25MM', NULL, 3, 20, 3, 3, 5),
(742, 'HOSE PIPE -BRAIDED NYLON  3/4 X 50MTS -', 156, 'HOSE PIPE -BRAIDED NYLON  3/4 X 50MTS -', NULL, 18, 4, 3, 3, 121),
(743, 'WELDING RODS  2.5 MM  - LOOSE -', 156, 'WELDING RODS  2.5 MM  - LOOSE -', NULL, 3, 4, 3, 3, 122),
(744, 'G.I PIPE 4\'\' X 6MTS - CLASS C -', 156, 'G.I PIPE 4\'\' X 6MTS - CLASS C -', NULL, 1, 4, 3, 3, 123),
(745, 'METAL PIPE 4\'\' X 6MTS - CLASS C -', 156, 'METAL PIPE 4\'\' X 6MTS - CLASS C -', NULL, 1, 4, 3, 3, 123),
(746, 'METAL PIPE 6\'\' X 6MTS - CLASS C -', 156, 'METAL PIPE 6\'\' X 6MTS - CLASS C -', NULL, 1, 4, 3, 3, 124),
(747, 'G.I PIPE 1 1/2 \'\' X 6MTS -CLASS C -', 156, 'G.I PIPE 1 1/2 \'\' X 6MTS -CLASS C -', NULL, 1, 4, 3, 3, 128),
(748, 'G.I PIPE 2\'\' X 6MTS -CLASS C -', 156, 'G.I PIPE 2\'\' X 6MTS -CLASS C -', NULL, 1, 4, 3, 3, 126),
(749, 'G.I PIPE 2 1/2 \'\' X 6MTS -CLASS C -', 156, 'G.I PIPE 2 1/2 \'\' X 6MTS -CLASS C -', NULL, 1, 4, 3, 3, 127),
(750, 'G.I PIPE 1\'\' X 3MTS -CLASS C -', 156, 'G.I PIPE 1\'\' X 3MTS -CLASS C -', NULL, 1, 4, 3, 3, 132),
(751, 'PVC PIPE 10\'\' X 6MTS -CLASS 41 -', 156, 'PVC PIPE 10\'\' X 6MTS -CLASS 41 -', NULL, 1, 4, 3, 3, 130),
(752, 'PVC PIPE 12\'\' X 6MTS -CLASS 41 -', 156, 'PVC PIPE 12\'\' X 6MTS -CLASS 41 -', NULL, 1, 4, 3, 3, 130),
(753, 'PVC PIPE 6\'\' X 6MTS -CLASS 41 -', 156, 'PVC PIPE 6\'\' X 6MTS -CLASS 41 -', NULL, 1, 4, 3, 3, 130),
(754, 'PVC TEE 8\'\'', 156, 'PVC TEE 8\'\'', NULL, 1, 4, 3, 3, 133),
(755, 'G.I PIPE 6\'\'X 6MTS - CLASS C -', 156, 'G.I PIPE 6\'\'X 6MTS - CLASS C -', NULL, 1, 4, 3, 3, 124),
(756, 'G.I PIPE 1\'\'X 6MTS - CLASS C -', 156, 'G.I PIPE 1\'\'X 6MTS - CLASS C -', NULL, 1, 4, 3, 3, 125),
(757, 'PVC PIPE 10\'\'X 6MTS - CLASS 41 -', 156, 'PVC PIPE 10\'\'X 6MTS - CLASS 41 -', NULL, 1, 4, 3, 3, 130),
(758, 'PVC PIPE 12\'\'X 6MTS - CLASS 41 -', 156, 'PVC PIPE 12\'\'X 6MTS - CLASS 41 -', NULL, 1, 4, 3, 3, 129),
(759, 'PVC PIPE 6\'\'X 6MTS - CLASS 41 -', 156, 'PVC PIPE 6\'\'X 6MTS - CLASS 41 -', NULL, 1, 4, 3, 3, 124),
(760, 'PVC PIPE 1 1/4\'\' X6MTS  - CLASS 41 -', 156, 'PVC PIPE 1 1/4\'\' X6MTS  - CLASS 41 -', NULL, 1, 4, 3, 3, 134),
(761, 'CONDUITS PIPE 25MM', 156, 'CONDUITS PIPE 25MM', NULL, 2, 4, 3, 3, 58),
(762, 'PETROL  FUEL', 156, 'PETROL  FUEL', NULL, 22, 4, 3, 3, 75),
(763, 'WATERPROOF / HYSEAL - 1KG PKT -', 156, 'WATERPROOF / HYSEAL - 1KG PKT -', NULL, 30, 4, 3, 3, 135),
(764, 'PVC PIPE 4\'\' - CLASS C - ORANGE', 156, 'PVC PIPE 4\'\' - CLASS C - ORANGE', NULL, 1, 4, 3, 3, 123),
(765, 'WASHING MACHINE', 156, 'Washing Mashine', NULL, 2, 20, 3, 3, 5),
(766, 'CUTTING DISK   NORMAL  14\'\'', 156, 'CUTTING DISK   NORMAL  14\'\'', NULL, 18, 4, 3, 3, 136),
(767, 'ALUMINIUM LADDER - LONG SCAFFOLDING ', 156, 'ALUMINIUM LADDER - LONG SCAFFOLDING ', NULL, 18, 4, 3, 3, 5),
(768, 'TAPS 1/2\'\' - DELAY ACTION PILLAR TAPS -', 156, 'TAPS 1/2\'\' - DELAY ACTION PILLAR TAPS -', NULL, 1, 4, 3, 3, 47),
(769, 'C CHANNELS', 156, 'No desc', NULL, 23, 20, 3, 3, 5),
(770, 'WOODEN PALLETS', 156, 'Wooden Pallets', NULL, 33, 20, 3, 3, 5),
(771, 'WOODEN TABLE', 156, 'Wooden Table', NULL, 26, 20, 3, 3, 5),
(772, '2 QUIRE A4 SINGLE RULED COUNTER BOOKS', 156, 'Two quire counter book', NULL, 19, 20, 3, 3, 5),
(773, 'GI IRON SHEETS', 156, ' Iron Sheets 650 X 340mm', NULL, 23, 20, 3, 3, 5),
(774, 'BLACK SHEETS', 156, '4 X 8 FT', NULL, 23, 20, 3, 3, 5),
(775, 'CIRCULAR HOLLOW SECTIONS(CHS)', 156, 'circular hollow sections', NULL, 23, 20, 3, 3, 5),
(776, 'RECTANGULAR HOLLOW SECTIONS(RHS)', 156, 'rectangular hollow sections', NULL, 23, 20, 3, 3, 5),
(777, 'SQUARE HOLLOW SECTIONS(RHS)', 156, 'square hollow sections', NULL, 23, 20, 3, 3, 5),
(778, 'ANGLE IRON', 156, 'Angle Iron', NULL, 23, 20, 3, 3, 5),
(779, 'WELDING RODS 3.2 MM - LOOSE  PKT -', 156, 'WELDING RODS 3.2 MM - LOOSE  PKT -', NULL, 3, 4, 3, 3, 6),
(780, 'INDUSTRIAL SOCKET TWIN 15AMPS', 156, 'Industrial sockets', NULL, 2, 20, 3, 3, 5),
(781, 'WELDING RODS 2.5MM - PACKETS -', 156, 'WELDING RODS 2.5MM - PACKETS -', NULL, 3, 4, 3, 3, 122),
(782, 'HYDRO DRIP / IRRIGATION PIPES - BLACK  -', 156, 'HYDRO DRIP / IRRIGATION PIPES - BLACK  -', NULL, 37, 4, 3, 3, 76),
(783, 'CUPLOCK STD VERTICAL 2.5M WITHOUT SPIGOT', 156, 'cuplock without spigot', NULL, 36, 20, 3, 3, 5),
(784, 'ASSORTED PIECES TWISTED BARS FOR SPIGOT LOCKING', 156, 'No Description', NULL, 23, 20, 3, 3, 5),
(785, 'PNEUMATIC PRESSURE PIPE', 156, 'Pressure pipe for batching plant', NULL, 1, 20, 3, 3, 5),
(786, 'REDUCING PIPE', 156, 'Reducing Pipe', NULL, 1, 20, 3, 3, 5),
(787, 'ADJUSTABLE LINK PIPE', 156, 'Adjustable link pipe', NULL, 1, 20, 3, 3, 5),
(788, 'CUP-TENSION COUPLING', 156, 'Cup Tension Coupling', NULL, 36, 20, 3, 3, 5),
(789, 'ADJUSTABLE LINKS', 156, 'Adjustable links', NULL, 36, 20, 3, 3, 5),
(790, 'GEAR OIL -   CC 90  -', 156, 'GEAR OIL -   CC 90  -', NULL, 22, 4, 3, 3, 75),
(791, 'BALL CATCHER', 156, 'Ball Catcher', NULL, 18, 20, 3, 3, 5),
(792, 'PIPE CLEANING VALVE', 156, 'Pipe cleaning valve', NULL, 18, 20, 3, 3, 5),
(793, 'HARD CLEANING BALL', 156, 'Hard cleaning ball', NULL, 18, 20, 3, 3, 5),
(794, 'IGNITION KEYS', 156, 'Ignition keys', NULL, 18, 20, 3, 3, 5),
(795, 'CIRCUIT BREAKER', 156, 'Circuit Breaker', NULL, 2, 20, 3, 3, 5),
(796, 'ARMOURED CABLE COPPER 2.5MM 4 CORE  BLACK', 174, 'ARMOURED CABLE COPPER 2.5MM 4 CORE  BLACK', NULL, 2, 4, 3, 3, 122),
(797, 'CABLE GLAND 300MM LARGE - WITH SHROUD', 174, 'CABLE GLAND 300MM LARGE - WITH SHROUD', NULL, 2, 4, 3, 3, 61),
(798, 'CABLE TIES 12\'\'   BLACK', 156, 'CABLE TIES 12\'\'   BLACK', NULL, 2, 4, 3, 3, 57),
(799, 'ARMOURED CABLE ALUMINIUM 120MM 4 CORE  -  BLACK  -', 156, 'ARMOURED CABLE ALUMINIUM 120MM 4 CORE  -  BLACK  -', NULL, 2, 4, 3, 3, 139),
(800, 'ARMOURED CABLE COPPER 25MM 4 CORE  BLACK', 156, 'ARMOURED CABLE COPPER 25MM 4 CORE  BLACK', NULL, 2, 4, 3, 3, 58),
(804, 'Sample Test Material', 156, 'Sample material for testing purpose', NULL, 18, 20, 3, 3, 5),
(805, 'SINGLE CORE ALUMINIUM 300 S.Q MM', 156, 'SINGLE CORE ALUMINIUM 300 S.Q MM', NULL, 2, 4, 3, 3, 140),
(806, 'BA SCREW', 156, 'BA SCREW', NULL, 2, 4, 3, 3, 5),
(807, 'MOTOR BIKE', 156, 'Motor Bike', NULL, 35, 20, 3, 3, 5),
(808, 'HOLLOW BLOCK CLOSED', 21, 'Hollow Blocks closed', NULL, 30, 20, 3, 3, 141),
(809, 'COLUMN MOLDS', 156, 'For mouding columns', NULL, 23, 20, 3, 3, 5),
(810, 'TILE 600MMX600MM CODE:YS6866C', 173, 'Tile Code:YS6866C', NULL, 18, 20, 3, 3, 83),
(811, 'PANGA / MACHETE', 156, 'PANGA / MACHETE', NULL, 37, 4, 3, 3, 5),
(812, 'BATTERY CHARGER TELWIN 420', 156, 'Battery Charger 420 Telwin', NULL, 24, 20, 7, 3, 5),
(813, 'DEWALT GRINDER 7&quot;', 156, 'Dewalt Grinder 7 Inch', NULL, 24, 20, 3, 3, 52),
(814, 'WEATHER GUARD  -  MAZERAS  -', 74, 'WEATHER GUARD  -  MAZERAS  -', NULL, 29, 4, 3, 3, 103),
(815, 'EXTENSION CABLE', 156, 'Extension Cable', NULL, 2, 20, 3, 3, 5),
(816, 'HYDRAULIC FLUID - SHELL TELLUS 46 -', 15, 'HYDRAULIC FLUID - SHELL TELLUS 46 -', NULL, 22, 4, 3, 3, 75),
(817, 'CABLE LUG 300MM    (300-16)', 174, 'CABLE LUG 300MM    (300-16)', NULL, 2, 4, 3, 3, 140),
(818, 'CABLE LUG 300MM    (300-14)', 174, 'CABLE LUG 300MM    (300-14)', NULL, 2, 4, 3, 3, 140),
(819, 'URINAL BOWL #082930', 173, 'Duravit Stock Code: BWHDRDCO19', NULL, 1, 20, 3, 3, 5),
(820, 'WC PAN: Wall Hung', 173, 'Code 25350900002', NULL, 1, 20, 12, 3, 143),
(821, 'VANITY BASIN #033754', 173, 'Code: BWHDRDCO07', NULL, 1, 20, 3, 3, 143),
(822, 'SEAT COVER #0067310', 173, 'Code: BWHDRDCO03', NULL, 1, 20, 12, 3, 5),
(823, 'GIBERIT ACTUATOR PLATE DELTA WHITE 115.125.11.1', 173, 'Code: BZZGEKOM15', NULL, 1, 20, 13, 3, 5),
(824, 'CISTERN FOR WALL HUNG WC 11015000', 173, 'Code: BZZGEKOM14', NULL, 1, 20, 13, 3, 5),
(825, 'CONTA GLUE - 4LTS TIN', 156, 'CONTA GLUE - 4LTS TIN', NULL, 18, 4, 3, 3, 5),
(826, 'TILE ADHESIVE - 25KG BAG -', 156, 'TILE ADHESIVE - 25KG BAG -', NULL, 30, 4, 3, 3, 79),
(827, 'POLYTHENE -  BLACK POLYTHENE -', 156, 'POLYTHENE -  BLACK POLYTHENE -', NULL, 18, 4, 3, 3, 76),
(828, 'CONC ELECTRICAL URINAL FLUSH VALVE #125200', 173, 'CODE: DFLUVAL72', NULL, 1, 20, 3, 3, 5),
(829, 'VELVEX WHITE JUMBO STD BATHROOM TISSUE', 8, 'Bathroom tissue', NULL, 38, 20, 3, 3, 5),
(830, 'LIQUID HAND WASHING CREAM SOAP PINK-5LITRE', 8, 'Hand washing soap', NULL, 38, 20, 3, 3, 5),
(831, 'EIKI BOARDROOM PROJECTOR', 179, 'Model no:LC-X100 Serial No: G24A1408 Chassis No: MA8-X110000', NULL, 34, 20, 3, 3, 5),
(832, 'GPRS PARTS', 179, 'Assorted GPRS Parts', NULL, 2, 20, 3, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `materials_categories`
--

DROP TABLE IF EXISTS `materials_categories`;
CREATE TABLE `materials_categories` (
  `mat_cat_id` int(11) NOT NULL,
  `mat_cat_name` varchar(40) NOT NULL,
  `mat_cat_desc` varchar(80) NOT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials_categories`
--

INSERT INTO `materials_categories` (`mat_cat_id`, `mat_cat_name`, `mat_cat_desc`, `store_id`) VALUES
(1, 'Plumbing Materials', 'Materials for all plumb works', 3),
(2, 'Electrical Materials', 'Materials for all electrical works', 3),
(3, 'Welding Materials', 'Materials for all welding works', 3),
(24, 'Tools and Machinery', 'No Desc', NULL),
(18, 'General Items', 'All purpose general items', 3),
(19, 'Office Stationery', 'Stationery for office use', 3),
(23, 'Steel Materials', 'No Desc', NULL),
(21, 'Rods and Disks', 'No Desc', NULL),
(22, 'Oils and Fluids', 'No Desc', NULL),
(25, 'Cement', 'No Desc', NULL),
(26, 'Furniture ', 'Furniture And Accessories', NULL),
(28, 'Sample Category', 'No Desc', NULL),
(29, 'PAINTS', 'PAINTS', NULL),
(30, 'MASON MATERIALS', 'MASON MATERIALS', NULL),
(31, 'CLEANING MATERIALS', 'CLEANING MATERIALS', NULL),
(32, 'KITCHEN ', 'KITCHEN', NULL),
(33, 'CARPENTRY', 'CARPENTRY', NULL),
(34, 'COMPUTERS AND ACCESSORIES', 'COMPUER ACCESSORIES', NULL),
(35, 'Vehicles And Automobiles', 'Vehicles, Trucks and Earth Movers', NULL),
(36, 'Scaffoldings and Accessories', 'Scaffolding and Accessories', NULL),
(37, 'LANDSCAPING / GARDENING', 'LANDSCAPING / GARDENING', NULL),
(38, 'TOILETRIES', 'Toilet Items', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materials_issuance`
--

DROP TABLE IF EXISTS `materials_issuance`;
CREATE TABLE `materials_issuance` (
  `mat_issue_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approve_user_id` int(11) NOT NULL,
  `request_by` varchar(100) NOT NULL DEFAULT 'Not Specified',
  `mat_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `issue_desc` varchar(200) NOT NULL,
  `issue_ref_no` varchar(40) NOT NULL,
  `date_issue` date NOT NULL,
  `time_issue` time NOT NULL,
  `site_id` int(11) NOT NULL DEFAULT 0,
  `pack_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials_issuance`
--

INSERT INTO `materials_issuance` (`mat_issue_id`, `store_id`, `user_id`, `approve_user_id`, `request_by`, `mat_id`, `qty`, `issue_desc`, `issue_ref_no`, `date_issue`, `time_issue`, `site_id`, `pack_id`) VALUES
(1, 2, 1, 1, '', 273, 10, 'No desc', '', '2015-08-13', '15:09:42', 0, NULL),
(2, 1, 1, 1, '', 279, 20, 'No Desc', '', '2015-08-13', '15:28:48', 0, NULL),
(3, 2, 1, 1, '', 129, 3, 'No desc', '', '2015-08-13', '15:29:44', 0, NULL),
(4, 2, 1, 1, '', 279, 20, 'No desc', '', '2015-08-13', '15:29:54', 0, NULL),
(5, 2, 1, 1, '', 38, 5, 'ghgh', '', '2015-08-13', '16:01:50', 0, NULL),
(6, 2, 1, 1, '', 38, 36, 'hjjhhbv', '', '2015-08-13', '16:03:23', 0, NULL),
(7, 2, 1, 1, 'Walter Omedo', 281, 10, 'No Desc', '', '2015-08-14', '14:36:29', 0, NULL),
(8, 2, 1, 1, 'gvhvh', 38, 3, 'jknm', '', '2015-08-14', '17:40:39', 0, NULL),
(9, 1, 1, 1, 'richard', 121, 1, 'No Desc', '', '2015-08-15', '10:39:15', 0, NULL),
(10, 1, 1, 1, 'Paul Waria', 130, 1, 'No Desc', '', '2015-08-15', '10:49:36', 0, NULL),
(11, 6, 4, 7, 'ROBERT', 252, 2, 'BLOCK - A - PAINTERS MATERIALS FOR TOILET WALL AND FIRE WALL', '', '2015-08-25', '12:30:10', 1, NULL),
(12, 6, 4, 7, 'ROBERT', 252, 2, 'BLOCK - A -  PAINTERS MATERIALS FOR 4TH AND 3RD FL', '', '2015-08-25', '12:31:11', 1, NULL),
(13, 6, 4, 7, 'ROBERT', 252, 2, 'BLOCK - B -  PAINTERS MATERIALS', '', '2015-08-25', '12:31:53', 1, NULL),
(14, 6, 4, 7, 'ROBERT', 491, 7, 'BLOCK A PAINTERS MATERIALS FOR TOILET WA AND FIRE WALL', '', '2015-08-25', '13:15:57', 1, NULL),
(15, 6, 4, 7, 'ROBERT', 491, 6, 'BLOCK B PAINTERS MATERIALS 3RD FL', '', '2015-08-25', '14:49:39', 1, NULL),
(16, 6, 4, 8, 'ROBERT', 493, 1, 'BLOCK B FOR CUTTING METAL AT 9TH FLOOR COLUMN', '', '2015-08-25', '15:11:15', 1, NULL),
(17, 6, 4, 9, 'YOGESH', 494, 1, 'BLOCK A  1ST FLOOR TO FIX DOOR', '', '2015-08-25', '15:19:06', 1, NULL),
(18, 6, 4, 7, 'ROBERT', 494, 1, 'BLOCK A  10TH FL FOR PLUMBERS DOING CHASING AT EXTRA TOILET', '', '2015-08-25', '15:20:07', 1, NULL),
(19, 6, 4, 7, 'ROBERT', 495, 15, 'BLOCK A FOR CARPENTERS AT 9TH FLOOR', '', '2015-08-26', '13:29:03', 1, NULL),
(20, 7, 4, 7, 'MOSES', 497, 1, 'FOR ROAD PITCHING DATE:27/8/2015', '', '2015-08-27', '11:31:26', 1, 4),
(21, 7, 4, 7, 'ROBERT', 497, 4, 'BLOCK A PLASTER OF PARTITION WALL AT 1ST FLOOR', '', '2015-08-28', '11:33:18', 1, 4),
(22, 7, 4, 7, 'ROBERT', 497, 3, 'BLOCK B MASION BUILDING COLUMNS AT 9TH FLOOR', '', '2015-08-28', '11:38:40', 1, 4),
(23, 7, 4, 7, 'ROBERT', 497, 6, 'BLOCK B PLASTERING OF PARTITION WALL AAT 3RD FLOOR', '', '2015-08-28', '11:39:28', 1, 4),
(24, 7, 4, 7, 'ROBERT', 497, 1, 'BLOCK B GENERAL PLASTER WORK AT MAIN STAIRS 1ST', '', '2015-08-28', '11:40:23', 1, 4),
(25, 7, 4, 7, 'ROBERT', 497, 1, 'BLOCK B GENERAL PLASTER WORK AT GROUND FLOOR', '', '2015-08-28', '11:41:19', 1, 4),
(26, 7, 4, 7, 'ROBERT', 497, 2, 'BLOCK B PLASTERING AND REPAIR OF FLOOR B3', '', '2015-08-28', '11:42:06', 1, 4),
(27, 7, 4, 7, 'ROBERT', 497, 1, 'ROAD PITCHING', '', '2015-08-28', '11:44:49', 1, 4),
(28, 7, 4, 7, 'ROBERT', 498, 2, 'BLOCK A FOR GLASSES CLEANING FROM 6TH TO 2ND FLOOR', '', '2015-08-28', '11:58:24', 1, 16),
(29, 7, 4, 7, 'ROBERT', 498, 2, 'BLOCK B FOR GLASSES CLEANING FROM 6TH TO 2ND FLOOR', '', '2015-08-28', '11:59:02', 1, 16),
(30, 6, 4, 7, 'ROBERT', 495, 20, 'BLOCK A FOR CARPENTERS AT 9TH FLOOR', '', '2015-08-28', '12:03:12', 1, 10),
(31, 6, 4, 7, 'ROBERT', 498, 2, 'BLOCK A FOR GLASSES CLEANING FROM 6TH TO 2ND FLOOR', '', '2015-08-28', '12:41:07', 1, 16),
(32, 6, 4, 7, 'ROBERT', 498, 2, 'BLOCK B FOR GLASSES CLEANING FROM 6TH TO 2ND FLOOR', '', '2015-08-28', '12:41:33', 1, 16),
(33, 7, 4, 7, 'ROBERT', 499, 2, 'BLOCK A 1ST ', '', '2015-08-28', '15:20:09', 1, 4),
(34, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '17:45:34', 1, 10),
(35, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '18:02:11', 1, 10),
(36, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '18:02:11', 1, 10),
(37, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '18:02:11', 1, 10),
(38, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '18:02:11', 1, 10),
(39, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '18:02:12', 1, 10),
(40, 8, 4, 7, 'ROBERT', 500, 1, 'BLOCK B FOR PULLING ROOFING IRON SHEETS', '', '2015-08-28', '18:02:12', 1, 10),
(41, 6, 4, 7, 'ROBERT', 494, 1, 'FOR PLUMBERS', '', '2015-08-31', '13:18:16', 1, 10),
(42, 6, 4, 7, 'ROBERT', 498, 2, 'BLOCK A FOR CLEANERS AT 2ND FLOOR -----FOR SATO', '', '2015-08-29', '16:01:17', 1, 16),
(43, 6, 4, 7, 'ROBERT', 498, 2, 'BLOCK B FOR CLEANERS  -----FOR SATO', '', '2015-08-29', '16:01:40', 1, 16),
(44, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A REPAIRING OF ATRIUM ENTRANCE AT 1ST FLOOR  ------FOR SATO', '', '2015-08-29', '16:07:04', 1, 4),
(45, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B MASION BUILDING COLUMNS AT 9TH  ------FOR SATO', '', '2015-08-29', '16:08:12', 1, 4),
(46, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTER WORK REPAIRAT 1ST FLOOR  ------FOR SATO', '', '2015-08-29', '16:10:47', 1, 4),
(47, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B BUILDING OF PARTITION WALL AT 3RD FLOOR  ------FOR SATO', '', '2015-08-29', '16:11:39', 1, 4),
(48, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTER CONDUIT PIPES AR G. F  ------FOR SATO', '', '2015-08-29', '16:13:56', 1, 4),
(49, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B COPING AT R.C WALL  ------FOR SATO', '', '2015-08-29', '16:14:37', 1, 4),
(50, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK B PLASTER OF TOILET WALL AT 9TH FL ------FOR SATO', '', '2015-08-29', '16:16:14', 1, 4),
(51, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B REPAIRING AND PLASTER OF B3 ------FOR SATO', '', '2015-08-29', '16:17:17', 1, 4),
(52, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTER OF TOILET WINDOW BEAM B2', '', '2015-08-31', '16:29:04', 1, 4),
(53, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A SCREAD OF TOILET FLOOR AT 1ST FLOOR', '', '2015-08-31', '16:29:39', 1, 4),
(54, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTER OF TOILET WINDOW BEAM B2', '', '2015-08-31', '17:05:51', 1, 5),
(55, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B MASION BUILDING COLUMN AT 9TH FLOOR', '', '2015-08-31', '17:06:44', 1, 5),
(56, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK B PLASTER OF COLUMN AT 9THY FLOOR', '', '2015-08-31', '17:07:32', 1, 5),
(57, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B MASON DOING PARTION WALL SETTING AT 4TH FLOOR', '', '2015-08-31', '17:08:11', 1, 5),
(58, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B PLASTER OF COPYING AT R.C MOSQUE SIDE', '', '2015-08-31', '17:08:50', 1, 5),
(59, 7, 4, 8, 'ROBERT', 497, 10, 'BLOCK A TOILET FLOOR SCREADING AT GROUND FLOOR (GENERAL DELIVERY NO 15)', '', '2015-08-31', '17:09:43', 1, 5),
(60, 8, 4, 8, 'ROBERT', 501, 2, 'BLOCK B  PLASTER OF B3', '', '2015-08-31', '17:43:37', 1, 16),
(61, 6, 4, 7, 'JAMES', 493, 1, 'BLOCK A GIVEN TO JAMES FOR JT\'S WORKS', '', '2015-09-01', '06:12:33', 1, 10),
(62, 6, 4, 6, 'JAMES', 502, 1, 'BLOCK A GIVEN TO JAMES FOR JT\'S WORK', '', '2015-09-01', '06:24:13', 1, 16),
(63, 7, 4, 8, 'ROBERT', 499, 1, 'BLOCK B PLASTER WORK ON 29TH', '', '2015-09-01', '07:27:43', 1, 4),
(64, 7, 4, 7, 'ROBERT', 499, 1, 'BLOCK B PLASTER WORK', '', '2015-09-01', '07:28:35', 1, 4),
(65, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A FOR TILE SKATING REPAIR ND FL AND REPAIR OF ENTRANCE 1ST FL', '', '2015-09-02', '15:01:55', 1, 4),
(66, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK A PLASTERING OF TOILET WINDOWS BEAM AT B2', '', '2015-09-02', '15:02:42', 1, 4),
(67, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B MASON BUILDING COLUMNS AT 9TH FL', '', '2015-09-02', '15:08:10', 1, 4),
(68, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B MASION BUILDING FIRE EXIST AT 4TH FL(1.9.15)', '', '2015-09-01', '15:10:05', 1, 4),
(69, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTER AND REPAIR OF RAMP AT G.F(1.9.15)', '', '2015-09-01', '15:10:39', 1, 4),
(70, 7, 4, 8, 'ROBERT', 497, 8, 'BLOCK B TOILET FLOOR SCREADING AT G.F  (1.9.15)', '', '2015-09-01', '15:11:11', 1, 4),
(71, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK A PLASTERING OF COLUMNA ST G.F  (1.9.15)', '', '2015-09-01', '15:12:03', 1, 4),
(72, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A  PLUMBERS AT 9TH FLOOR', '', '2015-09-02', '15:14:12', 1, 5),
(73, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK A  MAZERAS FIXING AT 1ST TERANCE FLLOR', '', '2015-09-02', '15:14:49', 1, 5),
(74, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK A  PLASTERING OF COPYING AT R.C  WALL', '', '2015-09-02', '15:15:33', 1, 5),
(75, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK B PLASTERING OF COPYING AT 9TH FL', '', '2015-09-02', '15:16:33', 1, 5),
(76, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF WINDOW FRAME AT 9TH FLOOR', '', '2015-09-02', '15:17:07', 1, 5),
(77, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK B MASION BUILDING FIRE EXIST CORRIDORS 3RD FLOOR', '', '2015-09-02', '15:17:54', 1, 5),
(78, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B REPAIR OF RAMP AT GROUND FLOOR', '', '2015-09-02', '15:18:24', 1, 5),
(79, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B REPAIR OF FLOOR AT B3', '', '2015-09-02', '15:18:40', 1, 5),
(80, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B TOILET FLOOR SCREADING AT GROUND FLLOR', '', '2015-09-02', '15:19:46', 1, 5),
(81, 6, 4, 7, 'ROBERT', 135, 4, 'BLOCK A FOR AMAZERAS CLEANING AT B1', '', '2015-09-02', '15:28:21', 1, 10),
(82, 7, 4, 10, 'JOSEPH', 506, 1, 'GIVEN TO JOSEPH', '', '2015-09-02', '15:53:33', 1, 10),
(83, 6, 4, 10, 'DUNCAN', 508, 1, 'GIVEN TO MR.DUNCAN', '', '2015-09-02', '16:03:21', 1, 10),
(84, 6, 4, 8, 'PARESH', 34, 5, 'BLOCK A PLUMBERS AT 9TH FLOOR', '', '2015-09-02', '16:06:17', 1, 10),
(85, 6, 4, 7, 'ROBERT', 46, 3, 'BOLCK A FOR AMAZERAS CLEANING', '', '2015-09-02', '16:08:40', 1, 10),
(86, 6, 4, 7, 'JOHN', 509, 10, 'BLOCK A FOR CLEANING MAZERAS', '', '2015-09-02', '16:31:53', 1, 16),
(87, 6, 4, 6, 'JAMES', 502, 1, 'GIVEN TO JAMES FOR JT\'S WORK', '', '2015-09-02', '16:33:52', 1, 16),
(88, 6, 4, 8, 'ROBERT', 510, 20, 'BLOCK A 2ND LOBBY CEILING , 3RD, 4TH CORRIDORS', '', '2015-09-02', '17:12:14', 1, 16),
(89, 6, 4, 6, 'JAMES', 502, 1, 'GIVEN TO JAMES FOR JT\'S WORK', '', '2015-09-02', '17:51:33', 1, 16),
(90, 6, 4, 9, 'JOHN', 504, 4, 'BOLCK B 2ND AND 3RD FLOOR', '', '2015-09-03', '11:20:38', 1, 10),
(91, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B CEILING AT 5TH FLOOR AND FIRE EXIST', '', '2015-09-03', '11:27:06', 1, 16),
(92, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B SINGLE LIFT WALL FROM 6TH TO 1ST FLOOR', '', '2015-09-03', '11:27:38', 1, 16),
(93, 6, 4, 7, 'PARESH', 511, 1, 'GIVEN TO PARESH', '', '2015-09-03', '12:10:08', 1, 10),
(94, 6, 4, 6, 'MECKY', 158, 5, 'GIVEN TO KAMONGO FOR SMALL CRANE', '', '2015-09-03', '13:09:01', 1, 16),
(95, 6, 4, 6, 'MACKEY', 161, 1, 'KAK 967Y', '', '2015-09-03', '13:11:22', 1, 10),
(96, 6, 4, 6, 'MACKEY', 161, 1, 'TAKEN TO ASHMAN', '', '2015-09-03', '13:11:53', 1, 10),
(97, 7, 4, 8, 'ROBERT', 497, 5, 'MAZERAS FIXING 1ST TERANCE FLOOR', '', '2015-09-03', '13:15:23', 1, 4),
(98, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK A PLASTERING OF COPYING AT RC WALL', '', '2015-09-03', '13:16:10', 1, 4),
(99, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTER OF COLUMNS AT 9TH ', '', '2015-09-03', '13:20:48', 1, 4),
(100, 7, 4, 8, 'ROBERT', 497, 4, 'BLOCK B  PLASTER OF COLUMNS AT 9TH', '', '2015-09-03', '13:21:21', 1, 4),
(101, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B  REPAIRING OF WINDOW FRAME AT 9TH FLOOR', '', '2015-09-03', '13:21:47', 1, 4),
(102, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK B  BUILDING OF FIRE EXIST WALL AT 3RD FLOOR', '', '2015-09-03', '13:22:26', 1, 4),
(103, 6, 4, 7, 'PARESH', 501, 5, 'PLMBERS AT 9TH FLOOR', '', '2015-09-03', '13:26:56', 1, 16),
(104, 6, 4, 6, 'JAMES', 502, 1, 'GIVEN TO JAMES FOR JT\'S WORK', '', '2015-09-03', '13:30:41', 1, 16),
(105, 8, 4, 6, 'MECKY', 512, 2, 'DISPATCHED TO MR.FIROZ 8TH', '', '2015-09-03', '14:12:51', 1, 10),
(106, 8, 4, 6, 'MECKY', 512, 1, 'DISPATCHED TO MAMA NASIM', '', '2015-09-03', '14:13:15', 1, 10),
(107, 8, 4, 6, 'MECKY', 513, 1, 'DISPATCHED TO SALMA OFFICE', '', '2015-09-03', '14:17:30', 1, 10),
(108, 8, 4, 6, 'MECKY', 513, 1, 'TO ELITE EARTHMOVERS LTD', '', '2015-09-03', '14:18:16', 1, 10),
(109, 8, 4, 6, 'MECKY', 514, 1, 'DISPATCHED TO SALMA OFFICE 8TH FLOR', '', '2015-09-03', '14:36:12', 1, 10),
(110, 6, 4, 6, 'PARESH', 519, 1, 'DISPATCHED TO PARESH', '', '2015-09-03', '17:20:20', 1, 10),
(111, 8, 4, 8, 'PARESH', 501, 5, 'BLOCK A PLUMBERS AT 9TH FLOOR', '', '2015-09-03', '17:22:56', 1, 16),
(112, 6, 4, 8, 'ROBERT', 516, 2, 'BLOCK B PLASTER WORK', '', '2015-09-03', '17:27:04', 1, 19),
(113, 8, 4, 6, 'MACKY', 521, 1, 'TO RAVINE PARK DELIVERY DN#006   (DATE 25/6/15)', '', '2015-06-15', '10:16:33', 4, 10),
(114, 8, 4, 6, 'MACKY', 521, 2, 'TO RAVINE PARK DELIVERY DN#006   (DATE 25/6/15)', '', '2015-06-25', '10:17:06', 4, 10),
(115, 8, 4, 6, 'MACKY', 521, 11, 'TO WOODLAND VIEW LTD DELIVERY DN#1916 ', '', '2015-09-04', '10:18:00', 4, 10),
(116, 8, 4, 6, 'MACKY', 522, 8, 'DISPATCHED TO WOODLAND VIEW LTD DELIVERY NO#1916', '', '2015-09-04', '10:52:58', 4, 10),
(117, 8, 4, 6, 'MACKY', 523, 1, 'TO WOODLAND VIEW LTD DELIVERY NO#1916', '', '2015-09-04', '10:59:10', 4, 10),
(118, 8, 4, 7, 'NADEEM', 524, 5, 'TO AJMAN  DELIVERY NO#039', '', '2015-09-04', '11:20:19', 4, 10),
(119, 6, 4, 7, 'NADEEN', 527, 4, 'TAKEN TO FORESTSCAPE LTD', '', '2015-09-04', '17:20:42', 1, 10),
(120, 6, 4, 7, 'NADEEM', 527, 4, 'TAKEN TO FORESTSCAPE LIMITED , DELIVERY DN:2057 , TAKEN BY:NADEEM', '', '2015-09-04', '17:36:51', 1, 10),
(121, 7, 4, 8, 'ROBERT', 499, 1, 'BLOCK B PLASTER WORK', '', '2015-09-04', '17:39:05', 1, 4),
(122, 7, 4, 8, 'ROBERT', 499, 1, 'BLOCK B PLASTER WORK', '', '2015-09-04', '17:39:19', 1, 4),
(123, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLUMBING WORK AT 9TH FLOOR', '', '2015-09-04', '17:42:07', 1, 4),
(124, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A MAZERAS FIXING AND REPAIR AT 1ST FLOOR', '', '2015-09-04', '17:42:44', 1, 4),
(125, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK A MASION BUILDING KITCHEN WALL 1ST FLOOR', '', '2015-09-04', '17:43:22', 1, 4),
(126, 7, 4, 8, 'ROBERT', 497, 6, 'BLOCK A PLASTERING OF COPYING WALL AT RC MOSQUE SIDE', '', '2015-09-04', '17:44:28', 1, 4),
(127, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTER OF TOILET WALL AT B2', '', '2015-09-04', '17:45:23', 1, 4),
(128, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A MAZERAS REPAIR', '', '2015-09-04', '17:45:43', 1, 4),
(129, 7, 4, 8, 'ROBERT', 497, 4, 'BLOCK B PLASTERING OF COLUMN AT 9TH FLOOR', '', '2015-09-04', '17:46:22', 1, 4),
(130, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B REPAIRING OF COURSE WALL AND WINDOW 9TH', '', '2015-09-04', '17:47:07', 1, 4),
(131, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B CABRO WORK', '', '2015-09-04', '17:47:25', 1, 4),
(132, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B RAMP ENTRANCE CASTING B2', '', '2015-09-04', '17:47:51', 1, 4),
(133, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B RAMP REPAIRING AT G.F MAIN ENTRANCE', '', '2015-09-04', '17:48:28', 1, 4),
(134, 6, 4, 8, 'ROBERT', 504, 8, 'BLOCK B 2ND AND 3RD FLOOR (4/ 9. 15)', '', '2015-09-04', '16:33:28', 1, 10),
(135, 7, 4, 7, 'JOHN', 529, 3, 'BLOCK B 3RD FLOOR CORRIDOR', '', '2015-09-07', '16:42:40', 1, 10),
(136, 7, 4, 7, 'JOHN', 530, 40, 'BLOCK B 3RD FLOOR CORRIDOR', '', '2015-09-07', '16:50:50', 1, 10),
(137, 7, 4, 6, 'MACKY', 531, 1, 'TO WOODLAND VIEW DELIVERY NO#1920', '', '2015-09-07', '16:58:32', 1, 10),
(138, 6, 4, 10, 'DUNCAN', 507, 1, 'GIVEN TO ROSEMARY BLOCK A8TH', '', '2015-09-07', '17:09:19', 1, 10),
(139, 6, 4, 7, 'DUNCAN', 533, 1, 'GIVEN TO ROSEMARY', '', '2015-09-07', '17:22:52', 1, 16),
(140, 6, 4, 10, 'DUNCAN', 534, 0.5, 'GIVEN TO ROSEMARY', '', '2015-09-07', '17:24:41', 1, 16),
(141, 6, 4, 10, 'DUNCAN', 532, 0.5, 'GIVEN TO ROSEMARY', '', '2015-09-07', '17:26:39', 1, 16),
(142, 6, 4, 8, 'PARESH', 44, 2, 'ANOTHER PLOT OUTSIDE TANK PLUMBERS CONNECTING TANK', '', '2015-09-07', '17:29:51', 1, 10),
(143, 6, 4, 8, 'ROBERT', 498, 2, 'BLOCK A CLEANERS AT 6TH FLOOR', '', '2015-09-07', '17:31:37', 1, 16),
(144, 6, 4, 8, 'ROBERT', 498, 2, 'BLOCK B CLEANERS AT 6TH FLOOR', '', '2015-09-07', '17:32:03', 1, 16),
(145, 6, 4, 7, 'FAZAL', 498, 0.5, 'BLOCK B TO FAZAL FOR CLEANERS', '', '2015-09-07', '17:32:39', 1, 16),
(146, 6, 4, 8, 'ROBERT', 65, 8, 'BLOCK A SKIMMING B1', '', '2015-09-07', '17:34:19', 1, 19),
(147, 6, 4, 8, 'ROBERT', 65, 5, 'BLOCK A SKIMMING B1  ( 4.9.2015)', '', '2015-09-04', '17:34:44', 1, 19),
(148, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B SINGLE LIFT WALL 5TH , 2ND FLOOR (4.9.15)', '', '2015-09-04', '17:36:29', 1, 16),
(149, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B CEILING CORRIDORS5TH FLOOR (4.9.15)', '', '2015-09-04', '17:37:01', 1, 16),
(150, 6, 4, 8, 'ROBERT', 510, 3, 'BLOCK A 4TH AND 5TH CEILING  (5.9.15)', '', '2015-09-05', '17:38:00', 1, 16),
(151, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK A 4TH AND 5TH CEILING  (5.9.15)', '', '2015-09-05', '17:38:18', 1, 16),
(152, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B LIFT LOBBY CEILING 2ND FLOOR ', '', '2015-09-07', '17:39:19', 1, 16),
(153, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK B B1 CEILING ', '', '2015-09-07', '17:39:45', 1, 16),
(154, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A WINDOW FRAME AT 9TH FLOOR   (SATURDAY 5/9)', '', '2015-09-05', '08:47:52', 1, 4),
(155, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A MAZERAS FIXING BRIDGE   (SATURDAY 5/9/2015)', '', '2015-09-05', '08:48:22', 1, 4),
(156, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B PLASTER OF WINDOWS FRAME   (SATURDAY 5/9/2015)', '', '2015-09-05', '09:15:02', 1, 4),
(157, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B CASTING OF RAMP   (SATURDAY 5/9/2015)', '', '2015-09-05', '09:15:24', 1, 4),
(158, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK B CARPENTERS CASTING COLVERTS B3  (SATURDAY 5/9/2015)', '', '2015-09-05', '09:15:56', 1, 4),
(159, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B CASTING AND PLASTER OF RAMP AT ENTRANCE B3  (SATURDAY 5/9/2015)', '', '2015-09-05', '09:17:26', 1, 4),
(160, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B REPAIRING OF MANHOLE AT B3  (SATURDAY 5/9/2015)', '', '2015-09-05', '09:18:07', 1, 4),
(161, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B BUILDING OF MANHOLE  (SATURDAY 5/9/2015)', '', '2015-09-05', '09:18:28', 1, 4),
(162, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF WINDOWS FRAME ( MONDAY 7.9.15)', '', '2015-09-07', '09:20:37', 1, 4),
(163, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A MASION BUILDING MANHOLE AT B1 ( MONDAY 7.9.15)', '', '2015-09-07', '09:21:26', 1, 4),
(164, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A MASION BUILDING MANHOLE AT B3 ( MONDAY 7.9.15)', '', '2015-09-07', '09:24:15', 1, 4),
(165, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A HELPERS CASTING DRAINAGE SYSTEM B3 ( MONDAY 7.9.15)', '', '2015-09-07', '09:24:58', 1, 4),
(166, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B PLUMBERS REPAIRING PVC AND PPR AT 10TH ( MONDAY 7.9.15)', '', '2015-09-07', '09:25:28', 1, 4),
(167, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK 0.5 PLASTERING AND REPAIRING OF WNDOWS FRAME 9TH ( MONDAY 7.9.15)', '', '2015-09-08', '09:26:17', 1, 4),
(168, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK MAZERAS FIXING THE BRIDGE  ( MONDAY 7.9.15)', '', '2015-09-07', '09:26:56', 1, 4),
(169, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B LASTERING OF COPYING MOSQUE SIDE  ( MONDAY 7.9.15)', '', '2015-09-07', '09:27:50', 1, 4),
(170, 7, 4, 8, 'ROBERT', 497, 4, 'BLOCK B MAZERAS FIXING AT THE BRIDGE  ( MONDAY 7.9.15)', '', '2015-09-07', '09:30:17', 1, 4),
(171, 7, 4, 8, 'ROBERT', 497, 4, 'BLOCK B TILE FIXING 3RD FLOOR  ( MONDAY 7.9.15)', '', '2015-09-07', '09:30:33', 1, 4),
(172, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK A PLASTERING AND REPAIR OF WINDOW FRAME AND WALL 9TH FLOOR', '', '2015-09-08', '10:36:40', 1, 5),
(173, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A PLASTERING OF COPING MOSQUE SIDE RC WALL', '', '2015-09-08', '10:37:17', 1, 5),
(174, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A MASION REPAIRING ONE COURSE WALL AT MAIN ENTRANCE', '', '2015-09-08', '10:39:03', 1, 5),
(175, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B REPAIRING OF WINDOW FRAME 9TH FLOOR', '', '2015-09-08', '10:39:57', 1, 5),
(176, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B TILE FIXING AT FIRE EXIST STAIRS CORRIDORS 3RD FLOOR', '', '2015-09-08', '10:40:37', 1, 5),
(177, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B MAZERAS FIXING AT THE BRIDGE', '', '2015-09-08', '10:40:59', 1, 5),
(178, 7, 4, 12, 'ROBERT', 497, 10, 'BLOCK B P.R FLOOR SCREADING 10TH', '', '2015-09-08', '10:43:58', 1, 4),
(179, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B MAZERAS FIXING AT THE RC WALL POST SIDE', '', '2015-09-08', '10:51:15', 1, 4),
(180, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B REPAIR OF WINDOW FRAME AND WALL 9TH', '', '2015-09-08', '10:52:50', 1, 4),
(181, 6, 4, 13, 'ROBERT', 510, 3, 'BLOCK A MAIN STREAM BEAM AND WALL B1', '', '2015-09-08', '11:07:43', 1, 16),
(182, 6, 4, 13, 'ROBERT', 510, 2, 'BLOCK B LIFT FROM 8TH - 2ND FLOOR', '', '2015-09-08', '11:08:15', 1, 16),
(183, 6, 4, 6, 'EDWIN', 498, 0.5, 'BLOCK A FOR CLEANING', '', '2015-09-08', '11:09:19', 1, 16),
(184, 6, 4, 12, 'ROBERT', 65, 3, 'BLOCK A B1 MAINSTAIRS ', '', '2015-09-08', '11:15:49', 1, 19),
(185, 6, 4, 12, 'ROBERT', 65, 5, 'BLOCK A B1 SKIMMING OF BEAMS AT MAINSTRAIRS', '', '2015-09-08', '11:16:30', 1, 19),
(186, 8, 4, 6, 'MACKY', 538, 1, 'TO BOSS 9TH FLOOR (24.8.15)', '', '2015-09-08', '11:48:29', 1, 10),
(187, 8, 4, 6, 'MACKY', 538, 1, 'TO ALDAMA RAVINE GENERAL DELIVERY#16', '', '2015-09-08', '11:49:15', 1, 10),
(188, 8, 4, 7, 'FRANK', 539, 0.5, 'BLOCK A RECEPTION AREA', '', '2015-09-08', '12:07:37', 1, 24),
(189, 8, 4, 6, 'MACKY', 537, 1, 'BLOCK A 8TH FLOOR TO BOSS', '', '2015-09-08', '12:09:57', 1, 10),
(190, 8, 4, 6, 'MACKY', 537, 1, 'YOGESH PRAVEEN  OLD HSE  GENERAL DELIVERY#16', '', '2015-09-08', '12:10:50', 1, 10),
(191, 8, 4, 6, 'MACKY', 536, 1, 'BLOCK A 8TH FLOOR TO BOSS (24/8/15)', '', '2015-09-15', '12:13:08', 1, 10),
(192, 8, 4, 6, 'MACKY', 536, 1, 'BLOCK A 8TH FLOOR TO BOSS /EDWIN  (28/8/15 )', '', '2015-09-15', '12:13:40', 1, 10),
(193, 8, 4, 6, 'MACKY', 536, 1, 'TO YOGESH PRAVEN / MAMA NASIM  (31/8/15 )', '', '2015-08-31', '12:14:16', 1, 10),
(194, 8, 4, 6, 'MACKY', 535, 1, 'BLOCK A TO BOSS 8TH FLOOR', '', '2015-09-08', '12:15:56', 1, 10),
(195, 8, 4, 6, 'MACKY', 535, 1, 'BLOCK A TO BOSS /EDWIN 8TH FLOOR  (28/8/15)', '', '2015-08-28', '12:16:25', 1, 10),
(196, 8, 4, 6, 'MACKY', 535, 1, 'TO MAMA NASIM / TO YOGESH [RAVEN GENERAL DELIVERY#16  (31/8/15)', '', '2015-09-08', '12:17:06', 1, 10),
(197, 8, 4, 6, 'MACKY', 496, 1, 'TO RAVINE PARK  DN#019', '', '2015-09-08', '12:21:30', 1, 10),
(198, 8, 4, 6, 'MACKY', 496, 1, 'TO EURECCA DN#035', '', '2015-09-08', '12:21:52', 1, 10),
(199, 8, 4, 6, 'MACKY', 496, 1, 'TO FORESCAPE LTD DN#2052', '', '2015-09-08', '12:22:22', 1, 10),
(200, 6, 4, 11, 'ROBERT', 498, 1, 'BLOCK B FOR SUPERGLOSS MIXING TO PAINT GENERATOR DOORS AND SWITCH ROOM DOORS', '', '2015-09-08', '12:39:03', 1, 16),
(201, 6, 4, 9, 'ROBERT', 53, 1, 'BLOCK B TO MIX WITH SUPERGLOSS GREY TO PAINT GENERATOR DOORS AND SWITCH ROOMS', '', '2015-09-08', '13:15:32', 1, 16),
(202, 6, 4, 7, 'ROBERT', 509, 2, 'BLOCK A CLEANING MAZERAS', '', '2015-09-08', '14:57:28', 1, 16),
(203, 6, 4, 11, 'ROBERT', 543, 2, 'BLOCK B FOR GENERATOR DOORS AND SWITCH ROOMS DOOR B2', '', '2015-09-08', '15:17:38', 1, 16),
(204, 6, 4, 7, 'ROBERT', 518, 3, 'BLOCK A AMAZERAS (4/9/15 )', '', '2015-09-15', '15:38:32', 1, 10),
(205, 6, 4, 7, 'EDWIN', 518, 1, 'BLOCK A CLEANING WINDOWS GIVEN TO EDWIN', '', '2015-09-08', '15:39:18', 1, 10),
(206, 6, 4, 14, 'PARESH', 526, 5, 'DISPATCHED TO PARESH', '', '2015-09-08', '16:08:43', 1, 10),
(207, 6, 4, 7, 'ROBERT', 519, 1, 'BLOCK A 9TH FLOOR PLUMBERS', '', '2015-09-08', '16:18:11', 1, 10),
(208, 7, 4, 14, 'PARESH', 544, 13, 'DISPATCHED TO PARESH', '', '2015-09-08', '16:26:49', 1, 10),
(209, 7, 4, 14, 'PARESH', 545, 10, 'DISPATCHED TO PARESH', '', '2015-09-08', '16:33:23', 1, 10),
(210, 7, 4, 14, 'PARESH', 546, 7, 'DISPATCHED TO PARESH', '', '2015-09-08', '16:46:20', 1, 10),
(211, 7, 4, 14, 'PARESH', 547, 40, 'DISPATCHED TO PARESH', '', '2015-09-08', '16:51:07', 1, 10),
(212, 7, 4, 14, 'PARESH', 548, 5, 'DISPATCHED TO PARESH', '', '2015-09-08', '17:27:03', 1, 10),
(213, 6, 4, 8, 'PARESH', 43, 2, 'PLUMBERS 9TH FLOOR', '', '2015-09-08', '17:33:54', 1, 10),
(214, 6, 4, 8, 'PARESH', 43, 3, 'BLOCK A PLUMBERS AT 9TH FLOOR', '', '2015-09-08', '17:34:23', 1, 10),
(215, 7, 4, 14, 'PARESH', 549, 6, 'DISPATCHED TO PARESH', '', '2015-09-08', '17:43:19', 1, 10),
(216, 7, 4, 14, 'PARESH', 550, 6, 'DISPATCHED TO PARESH', '', '2015-09-08', '18:00:23', 1, 10),
(217, 7, 4, 14, 'PARESH', 551, 4, 'DISPATCHED TO PARESH', '', '2015-09-08', '18:03:46', 1, 10),
(218, 6, 1, 7, 'JOHN', 552, 1, 'BLOCK A TILE CORRIDOR', '', '2015-09-09', '13:32:50', 1, 26),
(219, 6, 1, 14, 'PARESH', 553, 9, 'DISPATCHED TO PARESH', '', '2015-09-09', '13:46:05', 1, 10),
(220, 6, 1, 14, 'PARESH', 554, 8, 'DISPATHED TO PARESH', '', '2015-09-09', '13:53:05', 1, 10),
(221, 6, 1, 14, 'PARESH', 555, 2, 'DISPATCHED TO PARESH', '', '2015-09-09', '13:56:57', 1, 10),
(222, 6, 1, 6, 'MACKY', 515, 1, 'GIVEN TO JOHN NZURE (4/9/2015)', '', '2015-09-09', '14:00:33', 1, 10),
(223, 6, 1, 6, 'MACKY', 515, 1, 'GIVEN TO CLENER/ EDWIN', '', '2015-09-09', '14:00:54', 1, 10),
(224, 6, 1, 10, 'DUNCAN', 533, 0.5, 'BLOCK A 7TH AND 8TH FLOOR CLEANING', '', '2015-09-09', '14:02:09', 1, 16),
(225, 6, 1, 7, 'ROBERT', 556, 1, 'BLOCK A CLEANING GLASSES AT G.F', '', '2015-09-09', '14:05:10', 1, 10),
(226, 8, 1, 7, 'FRANK ', 558, 1, 'BLOCK A FOR WIRING LOBBY AREA', '', '2015-09-09', '14:35:31', 1, 24),
(227, 8, 1, 7, 'FRANK', 559, 1, 'BLOCK A FOR WIRING LOBBY AREA', '', '2015-09-09', '14:39:28', 1, 24),
(228, 8, 1, 7, 'FRANK', 560, 1, 'BLOCK A FOR WIRING LOBBY AREA', '', '2015-09-09', '14:41:28', 1, 24),
(229, 6, 1, 7, 'ROBERT', 543, 2, 'BLOCK A ', '', '2015-09-09', '14:45:13', 1, 16),
(230, 6, 1, 7, 'ROBERT', 498, 3, 'BLOCK A CLEANING GLASSES AT G.F', '', '2015-09-09', '14:47:13', 1, 16),
(231, 6, 1, 7, 'ROBERT', 498, 1, 'BLOCK A CLEANING GLASSES AT G.F', '', '2015-09-09', '14:47:22', 1, 16),
(232, 6, 1, 7, 'EDWIN', 498, 0.5, 'BLOCK A CLEANING CABLE TRAY', '', '2015-09-09', '14:47:52', 1, 16),
(233, 6, 1, 7, 'ROBERT', 65, 5, 'BLOCK A SKIMMING WINDOW FRAME BEAMS RC MOSQUE SIDE', '', '2015-09-09', '15:04:40', 1, 19),
(234, 6, 1, 9, 'ROBERT', 135, 5, 'BLOCK A MAZERAS CLEANING ', '', '2015-09-09', '15:06:35', 1, 10),
(235, 6, 1, 9, 'JOHN', 509, 2, 'BLOCK A CLEANING MAZERAS', '', '2015-09-09', '15:15:49', 1, 16),
(236, 7, 1, 13, 'ROBERT', 497, 10, 'BLOCK A SCREADING OF R.R FLOOR 10TH FLOOR', '', '2015-09-09', '15:17:47', 1, 4),
(237, 7, 1, 13, 'ROBERT', 497, 0.5, 'BLOCK A MASION BUILDING WALL AT 10TH FLOOR', '', '2015-09-09', '15:19:08', 1, 4),
(238, 7, 1, 13, 'ROBERT', 497, 3, 'BLOCK A PLASTER AND REPAIR OF COLUMN, WALL, BEAM 9TH FLOOR', '', '2015-09-09', '15:19:42', 1, 4),
(239, 7, 1, 13, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING AND REPAIR OF CABRO ROAD', '', '2015-09-09', '15:20:23', 1, 4),
(240, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLUMBERS MATERIAL', '', '2015-09-10', '13:01:09', 1, 4),
(241, 7, 4, 8, 'ROBERT', 497, 10, 'BLOCK A FLOOR SCREADING 9TH FLOOR', '', '2015-09-10', '13:01:30', 1, 4),
(242, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK A PLASTERING OF COLUMNS AND WALL 9TH FLOOR', '', '2015-09-10', '13:02:06', 1, 4),
(243, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR AT R.C WALL', '', '2015-09-10', '13:03:59', 1, 4),
(244, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF COLUMN AND WINDOW FRAME', '', '2015-09-10', '13:04:34', 1, 4),
(245, 6, 4, 6, 'MACKY', 166, 20, 'DOZER D8 T2   ( 13/8/15)', '', '2015-09-13', '13:18:13', 1, 16),
(246, 6, 4, 6, 'MACKY', 166, 20, 'FOR GENERATOR    ( 4/9/15)', '', '2015-09-04', '13:18:46', 1, 16),
(247, 6, 4, 6, 'MACKY', 166, 10, 'FOR GENERATOR    ( 4/9/15)', '', '2015-09-04', '13:19:03', 1, 16),
(248, 6, 4, 6, 'MACKY', 166, 3, 'FOR SMALL GENERATOR    ( 10/9/15)', '', '2015-09-10', '13:19:53', 1, 16),
(249, 6, 4, 6, 'MACKY', 166, 2, 'FOR SMALL GENERATOR    ( 10/9/15)', '', '2015-09-10', '13:20:08', 1, 16),
(250, 6, 4, 15, 'ROBERT', 562, 20, 'BLOCK A CARPENTERS DOING REPAIR OF DUCT MATERIALS', '', '2015-09-10', '13:44:14', 1, 10),
(251, 6, 4, 15, 'ROBERT', 562, 10, 'BLOCK A CARPENTERS DOING REPAIR OF DUCT MATERIALS', '', '2015-09-10', '13:44:40', 1, 10),
(252, 6, 4, 6, 'MACKY', 161, 2, 'kbj 873r', '', '2015-09-11', '16:28:00', 1, 10),
(253, 7, 4, 15, 'ROBERT', 497, 10, 'BLOCK A FLOOR SCREADING AT R.R FLOOR', '', '2015-09-11', '17:07:44', 1, 4),
(254, 7, 4, 15, 'ROBERT', 497, 3, 'BLOCK A PLASTERING OF COLUMNS AND WALL AT 9TH FLOOR', '', '2015-09-11', '17:08:15', 1, 4),
(255, 7, 4, 15, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIRING AT RC WALL', '', '2015-09-11', '17:08:41', 1, 4),
(256, 7, 4, 15, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF LIFT SHIFT AT B1 SINGLE LIFT', '', '2015-09-11', '17:09:48', 1, 4),
(257, 6, 4, 7, 'EDWIN', 498, 1, 'BLOCK A DOUBLE LIFT CLEANING AND MAIN STAIRS CLEANING', '', '2015-09-11', '17:24:19', 1, 16),
(258, 6, 4, 9, 'JOHN', 509, 6, 'BLOCK A AND B MAZERAS', '', '2015-09-11', '17:26:06', 1, 16),
(259, 6, 4, 9, 'ROBERT', 65, 25, 'BLOCK A CEILING AND BEAM B2', '', '2015-09-11', '17:27:47', 1, 19),
(260, 6, 4, 9, 'ROBERT', 65, 25, 'BLOCK B SKIMMING FLOWER BOX', '', '2015-09-11', '17:28:15', 1, 19),
(261, 6, 4, 9, 'ROBERT', 510, 10, 'BLOCK B EXTRA TOILET AND KITCHEN WALL AT 9TH FLOOR', '', '2015-09-11', '18:15:33', 1, 16),
(262, 6, 4, 9, 'ROBERT', 510, 2, 'BLOCK A FOR THE SILK 8TH FLOOR CONFERENCE ROOM LIFT LOBBY', '', '2015-09-11', '18:16:16', 1, 16),
(263, 6, 4, 9, 'ROBERT', 566, 8, 'BLOCK A CONFERENCE ROOM', '', '2015-09-11', '18:24:30', 1, 16),
(264, 6, 4, 6, 'DUNCAN', 515, 1, 'GIVEN TO OMONDI OLANG', '', '2015-09-15', '16:10:20', 1, 10),
(265, 6, 4, 6, 'MACKY', 570, 5, 'TO WOODLAND VIEW', '', '2015-09-15', '16:20:28', 1, 19),
(266, 6, 4, 6, 'MACKY', 562, 20, 'BLOCK A CARENTERS REPAIRING PLYWOOD', '', '2015-09-15', '16:22:44', 1, 10),
(267, 6, 4, 6, 'MACKY', 571, 5, 'TO WOODLAND VIEW LTD', '', '2015-09-15', '16:28:13', 1, 19),
(268, 6, 4, 6, 'MACKY', 572, 5, 'TO WOODLAND VIEW', '', '2015-09-15', '16:52:50', 1, 19),
(269, 6, 4, 15, 'ROBERT', 493, 1, 'BLOCK B CUTTING METAL 9TH FL', '', '2015-09-15', '16:55:34', 1, 10),
(270, 6, 4, 15, 'ROBERT', 493, 1, 'BLOCK A CUTTING LADDER AT 9TH FLOOR', '', '2015-09-15', '16:55:56', 1, 10),
(271, 6, 4, 15, 'ROBERT', 494, 1, 'BLOCK A MAZERAS REPAIR AND FIXING AT RC WALL', '', '2015-09-15', '16:58:00', 1, 10),
(272, 6, 4, 6, 'MACKY', 564, 2, 'TO RAVINE PARK DN#3552', '', '2015-09-15', '17:01:29', 1, 10),
(273, 6, 4, 11, 'FRANK', 565, 10, 'BLOCK B B1 FIXING CABLE TRAY', '', '2015-09-15', '17:03:00', 1, 10),
(274, 6, 4, 15, 'PARESH', 573, 50, 'BLOCK B FIRE FIGHTING PIPES B2', '', '2015-09-15', '17:06:30', 1, 10),
(275, 6, 4, 14, 'PARESH', 574, 7, 'DIPATCHED TO PARESH', '', '2015-09-15', '17:13:57', 1, 10),
(276, 6, 4, 14, 'PARESH', 574, 7, 'DIPATCHED TO PARESH', '', '2015-09-15', '17:13:59', 1, 10),
(277, 6, 4, 15, 'ROBERT', 574, 1, 'BLOCK B PLUMBERS REAPIRING SEWAGE SYSTEM AT 9THN FLOOR', '', '2015-09-15', '17:14:43', 1, 10),
(278, 6, 4, 16, 'FAZAL', 576, 2, 'BLOCK A 9TH FLOOR FIXING DOOR , LIFT', '', '2015-09-15', '17:21:24', 1, 10),
(279, 6, 4, 16, 'FAZAL', 577, 2, 'BLOCK 9TH FL FIXING DOOR', '', '2015-09-15', '17:23:55', 1, 10),
(280, 6, 4, 16, 'FAZAL', 578, 16, 'BLOCK B 6 AND 9 FLO FIXING DOOR', '', '2015-09-15', '17:27:45', 1, 10),
(281, 6, 4, 15, 'ROBERT', 53, 4, 'BLOCK AMIXING WITH SILK (12/9)', '', '2015-09-12', '17:29:50', 1, 16),
(282, 6, 4, 15, 'ROBERT', 53, 3, 'BLOCK APAINTERS AT B1', '', '2015-09-15', '17:30:08', 1, 16),
(283, 6, 4, 15, 'ROBERT', 53, 2, 'BLOCK B PAINTES AT B1', '', '2015-09-15', '17:30:27', 1, 16),
(284, 6, 4, 15, 'ROBERT', 65, 25, 'BLOCK A BEAM SKIMMINGB2', '', '2015-09-15', '17:31:40', 1, 19),
(285, 6, 4, 15, 'ROBERT', 65, 5, 'BLOCK ASKIMMING OF PLY WOOD DUCT', '', '2015-09-15', '17:32:18', 1, 19),
(286, 6, 4, 15, 'ROBERT', 65, 15, 'BLOCK ABEAM SKIMMING B2', '', '2015-09-15', '17:32:42', 1, 19),
(287, 6, 4, 15, 'ROBERT', 65, 3, 'BLOCK A B1 SKIMMING OF MACKY OFFICE', '', '2015-09-15', '17:33:19', 1, 19),
(288, 6, 4, 15, 'ROBERT', 65, 2, 'BLOCK A RECEPTION AREA', '', '2015-09-15', '17:33:53', 1, 19),
(289, 6, 4, 15, 'ROBERT', 65, 10, 'BLOCK AB2 CEILING BEAM', '', '2015-09-15', '17:34:11', 1, 19),
(290, 6, 4, 15, 'ROBERT', 65, 10, 'BLOCK B LIFT DUCT SINGLE LIFT', '', '2015-09-15', '17:34:30', 1, 19),
(291, 6, 4, 15, 'ROBERT', 562, 15, 'BLOCK A 9TH FLOOR CARPENTERS MATERIALS', '', '2015-09-16', '12:49:35', 1, 10),
(292, 6, 4, 15, 'ROBERT', 65, 10, 'BLOCK B LIFT DUCT SINGLE LIFT', '', '2015-09-16', '12:55:18', 1, 19),
(293, 6, 4, 13, 'ROBERT', 65, 15, 'BLOCK ABEAM SKIMMING ', '', '2015-09-16', '12:58:56', 1, 19),
(294, 6, 4, 15, 'ROBERT', 566, 2, 'BLOCK A CONFERENCE ROOM , LIFT LOBBY, TOILET CORRIDOR', '', '2015-09-16', '13:00:54', 1, 16),
(295, 6, 4, 15, 'ROBERT', 566, 10, 'BLOCK A 8TH FLOOR', '', '2015-09-16', '13:04:32', 1, 16),
(296, 6, 4, 15, 'ROBERT', 566, 8, 'BLOCK A FLOWER BOX B1', '', '2015-09-16', '13:05:06', 1, 16),
(297, 6, 4, 15, 'ROBERT', 510, 3, 'BLOCK  B SWITCH ROOM B2  (12/9)', '', '2015-09-12', '13:09:52', 1, 16),
(298, 6, 4, 15, 'ROBERT', 510, 5, 'BLOCK B FLOWER WALL B1', '', '2015-09-16', '13:10:22', 1, 16),
(299, 6, 4, 15, 'ROBERT', 510, 10, 'BLOCK A KITCHEN TOILET AND FIRE EXIST STAIRS WALL 15/9', '', '2015-09-15', '13:11:13', 1, 16),
(300, 6, 4, 15, 'ROBERT', 510, 5, 'BLOCK A 2ND AND 3RD FLOOR WALL 15/9', '', '2015-09-15', '13:11:45', 1, 16),
(301, 6, 4, 15, 'ROBERT', 510, 5, 'BLOCK  A B1 PAINTERS MATERIALS  15/9', '', '2015-09-15', '13:12:22', 1, 16),
(302, 6, 4, 15, 'ROBERT', 510, 5, 'BLOCK B PAINTERS B1 16/9', '', '2015-09-16', '13:12:57', 1, 16),
(303, 6, 4, 15, 'ROBERT', 510, 3, 'BLOCK A 2ND TOILET', '', '2015-09-16', '13:13:52', 1, 16),
(304, 6, 4, 15, 'ROBERT', 510, 1, 'BLOCK A MACKY OFFICE', '', '2015-09-16', '13:14:10', 1, 16),
(305, 6, 4, 6, 'MACKY', 568, 2, 'TO RAVINE PARK DN#3553', '', '2015-09-16', '13:16:50', 1, 10),
(306, 6, 4, 9, 'ROBERT', 65, 10, 'block b single lift wall skimming b2', '', '2015-09-16', '16:00:48', 1, 19),
(307, 6, 4, 13, 'PARESH', 34, 25, 'BLOCK B LUMBERS AT B1 B2', '', '2015-09-16', '16:03:19', 1, 10),
(308, 6, 4, 13, 'PARESH', 573, 100, 'BLOCK B PLUMBERS B1 B2 FIRE FIGHTING PIPE', '', '2015-09-16', '16:04:48', 1, 10),
(309, 6, 4, 7, 'JOHN', 249, 2, 'BLOCK A TILE FIXING', '', '2015-09-16', '16:15:37', 1, 26),
(310, 6, 4, 10, 'DUNCAN', 532, 0.5, 'CLEANING BLOCK A 8TH FLOOR', '', '2015-09-16', '16:17:55', 1, 16),
(311, 6, 4, 10, 'DUNCAN', 533, 0.5, 'CLEANING BLOCK A 8TH FLOOR', '', '2015-09-16', '16:18:55', 1, 16),
(312, 6, 4, 10, 'DUNCAN', 534, 0.5, 'CLEANING BLOCK A 8TH FLOOR', '', '2015-09-16', '16:19:04', 1, 16),
(313, 7, 4, 15, 'ROBERT', 497, 26, '14.9 .2015', '', '2015-09-16', '16:22:42', 1, 4),
(314, 7, 4, 15, 'ROBERT', 497, 6, '12.9.2015', '', '2015-09-16', '16:23:23', 1, 4),
(315, 7, 4, 15, 'ROBERT', 497, 25, '15.9.2015', '', '2015-09-16', '16:23:48', 1, 4),
(316, 7, 4, 15, 'ROBERT', 497, 10, 'SBLOCK ASCREADING OF R.R', '', '2015-09-16', '16:24:31', 1, 4),
(317, 7, 4, 15, 'ROBERT', 497, 10, 'BLOCK A TILE FIXING 9TH FLOOR', '', '2015-09-16', '16:24:49', 1, 4),
(318, 7, 4, 15, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF B2 B3 RAMP', '', '2015-09-16', '16:25:13', 1, 4),
(319, 7, 4, 15, 'ROBERT', 497, 3, 'BLOCK B PLASTERING OF WAL AND COLUMNS', '', '2015-09-16', '16:26:00', 1, 4),
(320, 7, 4, 15, 'ROBERT', 497, 1, 'BLOCKB CASTING AND BUILDING MAN HOLE', '', '2015-09-16', '16:26:31', 1, 4),
(321, 7, 4, 15, 'ROBERT', 497, 1, 'BLOCK B MASION BUILDING WALL BTW BLOCK A AND B', '', '2015-09-16', '16:27:01', 1, 4),
(322, 7, 4, 15, 'ROBERT', 497, 0.5, 'BLOCK B PLASTERING AND REPAIRING OF DRAINAGE', '', '2015-09-16', '16:27:33', 1, 4),
(323, 7, 4, 15, 'ROBERT', 497, 0.5, 'BLOCK B PLASTERING O FDRAINAGE SYSTEM', '', '2015-09-16', '16:29:45', 1, 4),
(324, 7, 4, 15, 'JOHN', 529, 12, 'BLOCK A FOR ATRIUM (12/9/15)', '', '2015-09-17', '12:48:56', 1, 10),
(325, 6, 4, 15, 'ROBERT', 574, 1, 'BLOCK B PLUMBERS MATERIALS', '', '2015-09-17', '12:55:41', 1, 10),
(326, 6, 4, 15, 'PARESH', 34, 30, 'BLOCK B B2 PLUMBERS', '', '2015-09-17', '12:57:10', 1, 10),
(327, 6, 4, 8, 'PARESH', 573, 100, 'BLOCK A AND B PLUMBERS B2', '', '2015-09-17', '13:01:37', 1, 10),
(328, 7, 4, 17, 'ROBERT', 497, 5, 'block ascreading of r.r floor 10th floor', '', '2015-09-17', '15:54:41', 1, 4),
(329, 7, 4, 17, 'ROBERT', 497, 1, 'CASTING FIRE FIGHTING DUCT AT 9TH FLOOR', '', '2015-09-17', '15:55:08', 1, 4),
(330, 7, 4, 17, 'ROBERT', 497, 2, 'BLOCK A PLASTERING OF RAMP AT B2 , B3', '', '2015-09-17', '15:55:45', 1, 4),
(331, 7, 4, 17, 'ROBERT', 497, 3, 'BLOCK B PLASTERING OF WALLS AND COLUMNS AT 9TH FLOOR', '', '2015-09-17', '15:56:28', 1, 4),
(332, 7, 4, 17, 'ROBERT', 497, 3, 'BLOCK A TILE FIXING AT EXTRA TOILET AT 9TH FLOOR', '', '2015-09-17', '15:56:56', 1, 4),
(333, 6, 4, 17, 'ROBERT', 252, 3, 'BLOCK B PAINTERS B2', '', '2015-09-17', '16:02:59', 1, 17),
(334, 6, 4, 18, 'JAMES', 493, 1, 'TO JAMES , TO CUT PINS FOR TONONOKA', '', '2015-09-17', '16:12:25', 1, 10),
(335, 6, 4, 17, 'ROBERT', 46, 3, 'BLOCK B PAINTERS B2', '', '2015-09-17', '16:14:37', 1, 10),
(336, 6, 4, 7, 'PARESH', 580, 1, 'BLOCK A B2 PLUMBERS', '', '2015-09-17', '16:19:29', 1, 10),
(337, 6, 4, 17, 'ROBERT', 53, 3, 'BLOCK B PAINTERS AT B2', '', '2015-09-17', '16:21:21', 1, 16),
(338, 6, 4, 17, 'ROBERT', 65, 15, 'BLOCK B PAINTERS B2', '', '2015-09-17', '16:23:45', 1, 19),
(339, 6, 4, 17, 'ROBERT', 65, 10, 'BLOCK B PAINTERS FLOWER BOX', '', '2015-09-17', '16:24:11', 1, 19),
(340, 6, 4, 17, 'ROBERT', 510, 10, 'BLOCK B , B2 PAINTERS', '', '2015-09-17', '16:26:13', 1, 16),
(341, 6, 4, 17, 'ROBERT', 581, 24, 'BLOCK B CARPENTERS MATERIAL FIXING FIRE EXIST DOOR', '', '2015-09-17', '16:35:07', 1, 10),
(342, 6, 4, 10, 'ROSEMARY', 582, 0.5, 'GIVEN TO ROSEMARY FOR CLEANING 8TH FLOOR', '', '2015-09-17', '16:39:56', 1, 19),
(343, 6, 4, 6, 'MACKY', 567, 20, 'TO WOODLAND VIEW LT', '', '2015-09-17', '16:50:49', 1, 10),
(344, 7, 4, 17, 'ROBERT', 497, 4, 'plaster of toilet wall 9th  floor', '', '2015-09-18', '17:00:07', 1, 5),
(345, 7, 4, 17, 'ROBERT', 497, 0.5, 'REPAIRING OF WINDOW 9TH FLOOR', '', '2015-09-18', '17:00:31', 1, 5),
(346, 7, 4, 17, 'ROBERT', 497, 0.5, 'MAZERAS REPAIRING AT 1ST FLOOR', '', '2015-09-18', '17:00:52', 1, 5),
(347, 7, 4, 17, 'ROBERT', 497, 2, 'BLOCK APLASTERING OF RAMP AT B2 B3 EXIST', '', '2015-09-18', '17:01:23', 1, 5),
(348, 7, 4, 17, 'ROBERT', 497, 3, 'BLOCK B PLASTERING OF COLUMNS AND WALL AT 9 TH FLOOR', '', '2015-09-18', '17:01:53', 1, 5),
(349, 7, 4, 4, 'STOR', 497, 1, 'ERROR IN RETUEN', '', '2015-09-18', '17:04:34', 1, 4),
(350, 6, 4, 17, 'ROBERT', 562, 25, 'BLOCK A CARPENTERS', '', '2015-09-18', '17:05:57', 1, 10),
(351, 6, 4, 17, 'ROBERT', 562, 15, 'BLOCK A CARPENTERS FIXING PLY WOOD', '', '2015-09-18', '17:07:27', 1, 10),
(352, 6, 4, 6, 'MACKY', 569, 2, 'TO MR.ABDUL', '', '2015-09-18', '17:08:20', 1, 10),
(353, 7, 4, 17, 'ROBERT', 499, 1, 'BLOCK A PLASTER WORK', '', '2015-09-18', '17:09:40', 1, 4),
(354, 6, 4, 17, 'ROBERT', 504, 8, 'BLOCK A9TH FLOOR TOILET AND KITCHEN', '', '2015-09-18', '17:10:55', 1, 10),
(355, 6, 4, 17, 'PARESH', 581, 16, 'BLOCK A STAFF TOILET AT B1', '', '2015-09-18', '17:12:10', 1, 10),
(356, 6, 4, 6, 'MACKY', 493, 1, 'TO MR.KIRIT', '', '2015-09-18', '17:12:58', 1, 10),
(357, 6, 4, 17, 'ROBERT', 510, 10, 'BLOCK B  PAINTERS AT 5YH FLOOR', '', '2015-09-18', '17:15:02', 1, 16),
(358, 6, 4, 17, 'ROBERT', 566, 12, 'BLOCK B FOR FLOWER BOX', '', '2015-09-18', '17:15:44', 1, 16),
(359, 6, 4, 17, 'ROBERT', 566, 8, 'BLOCK B PAINTERS B2( 17/9/15)', '', '2015-09-18', '17:16:27', 1, 16),
(360, 6, 4, 17, 'ROBERT', 65, 3, 'BLOCK B PAINTES AT 5TH FLOOR', '', '2015-09-18', '17:17:31', 1, 19),
(361, 6, 4, 17, 'ROBERT', 65, 3, 'BLOCK A EXTRA TOILET', '', '2015-09-18', '17:17:53', 1, 19),
(362, 6, 4, 17, 'ROBERT', 53, 5, 'BLOCK B PAINTERS AT 5TH FLOOR', '', '2015-09-18', '17:18:55', 1, 16),
(363, 6, 4, 6, 'HENRY', 255, 1, 'GIVEN TO HENRY / OFFICE (19/9/15)', '', '2015-09-15', '14:29:16', 1, 10),
(364, 6, 4, 19, 'ROBERT', 255, 4, 'BLOCK B PAINTERS MATERIALS ', '', '2015-09-21', '14:31:49', 1, 10),
(365, 6, 4, 6, 'MACKY', 588, 1, 'TO MACKY OFFICE', '', '2015-09-21', '15:06:15', 1, 10),
(366, 6, 4, 6, 'PARESH', 589, 2, 'BLOCK A B1 TOILET', '', '2015-09-21', '15:09:54', 1, 10),
(367, 6, 4, 19, 'ROBERT ', 493, 1, 'BLOCK B CUTTING LADDER AT 9TH FLOOR', '', '2015-09-21', '15:14:30', 1, 10),
(368, 6, 4, 12, 'ROBERT', 53, 3, 'BLOCK B B3 PAINTERS MATERIALS  (19/9/15)', '', '2015-09-15', '15:21:41', 1, 16),
(369, 6, 4, 19, 'ROBERT', 53, 5, 'BLOCK B B3 PAINTERS MTERIALS ', '', '2015-09-21', '15:22:14', 1, 16),
(370, 6, 4, 12, 'ROBERT', 566, 12, 'BLOCK B B3 PAINTERS MTERIALS ', '', '2015-09-21', '15:23:27', 1, 16),
(371, 6, 4, 19, 'ROBERT', 566, 8, 'BLOCK B B3 PAINTERS MTERIALS ', '', '2015-09-21', '15:23:43', 1, 16),
(372, 7, 4, 12, 'ROBERT', 497, 1, 'PLASTERING OF TOILET WALL 9TH FLOOR (19/9/15)', '', '2015-09-15', '15:26:12', 1, 4),
(373, 7, 4, 12, 'ROBERT', 497, 0.5, 'BLOCK A REPAIRING WINDOW FRAMES AT 9TH FLOOR  (19/9/15)', '', '2015-09-15', '15:27:06', 1, 4),
(374, 7, 4, 12, 'ROBERT', 497, 1, 'BLOCK B PLASTERING COLUMNS AND WALLS 9TH FLOOR  (19/9/15)', '', '2015-09-15', '15:28:19', 1, 4),
(375, 7, 4, 12, 'ROBERT', 497, 4, 'BLOCK A PLASERING OF CABRO ROAD WALL  (19/9/15)', '', '2015-09-15', '15:28:53', 1, 4),
(376, 7, 4, 19, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR AT 1ST BEAMS', '', '2015-09-21', '15:30:32', 1, 4),
(377, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF COLUMNS AT 10TH FLOOR', '', '2015-09-21', '15:31:14', 1, 4),
(378, 7, 4, 19, 'ROBERT', 497, 2, 'BLOCK A MASON BUILDING TOILET SYSTEM AT G.F ', '', '2015-09-21', '15:31:55', 1, 4),
(379, 6, 4, 15, 'ROBERT', 592, 2, 'BLOCK B B2 PAINTERS MATERIALS ', '', '2015-09-21', '15:59:52', 1, 10),
(380, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF TOILET WALL COLUMNS AT 10TH FLOOR', '', '2015-09-22', '09:29:25', 1, 4),
(381, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A MASION BUILDING KITCHEN WALL AT 1ST FLOOR', '', '2015-09-22', '09:29:59', 1, 4),
(382, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK B CARPENTERS CASTING TIOLET SINK TABLE ', '', '2015-09-22', '09:30:28', 1, 4),
(383, 7, 4, 19, 'ROBERT', 497, 2, 'BLOCK B CARPENTERS CASTING TIOLET SINK TABLE ', '', '2015-09-22', '09:30:37', 1, 4),
(384, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF TOILET COLUMNS AT 10TH FLOOR', '', '2015-09-22', '09:31:13', 1, 4),
(385, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK B MASION BUILDING FIRE EXIST CORRIDOR WALL 4TH FLOOR', '', '2015-09-22', '09:31:49', 1, 4),
(386, 6, 4, 19, 'ROBERT', 53, 5, 'BLOCK A B2 PAINTERS MATERIALS', '', '2015-09-22', '09:35:37', 1, 16),
(387, 6, 4, 19, 'ROBERT', 566, 12, 'BLOCK A B2 PAINTERS MATERIALS', '', '2015-09-22', '09:36:27', 1, 16),
(388, 6, 4, 19, 'ROBERT', 255, 4, 'BLOCK A B2 PAINTERS MATERIALS', '', '2015-09-22', '09:37:51', 1, 10),
(389, 6, 4, 6, 'MR.DUNCAN', 593, 4, 'TAKEN BY MR.DUNCAN TO STORAGE OFFICE', '', '2015-09-22', '11:14:44', 1, 10),
(390, 6, 4, 7, 'ROBERT ', 65, 10, 'BLOCK A B2 LIFT WALL SKIMMING', '', '2015-09-22', '16:51:59', 1, 19),
(391, 6, 4, 7, 'ROBERT ', 510, 11, 'BLOCK A B2 FLOWER BOX SKIMMING AND WALL', '', '2015-09-22', '16:53:55', 1, 16),
(392, 8, 4, 6, 'MRS.ABDUL', 512, 1, 'TO MRS.ABDUL OFFICE', '', '2015-09-22', '16:58:49', 1, 10),
(393, 8, 4, 7, 'FRANK', 558, 1, 'BLOCK B 9TH FLOOR WIRING COMMON AREA', '', '2015-09-22', '17:00:25', 1, 10),
(394, 8, 4, 7, 'FRANK', 558, 1, 'BLOCK A ATRIUM AT 9TH FLOOR (11/9/15)', '', '2015-09-11', '17:01:55', 1, 10),
(395, 8, 4, 7, 'FRANK', 558, 1, 'BLOCK A ATRIUM AT 9TH FLOOR (11/9/15)', '', '2015-09-11', '17:01:58', 1, 10),
(396, 8, 4, 7, 'FRANK', 558, 1, 'BLOCK A B1 TOILET', '', '2015-09-22', '17:02:13', 1, 10),
(397, 8, 4, 7, 'FRANK', 559, 1, 'BLOCK A FOR ATRIUM AT 9TH FLOOR (11/9/15)', '', '2015-09-22', '17:03:49', 1, 10),
(398, 8, 4, 7, 'FRANK', 560, 1, 'BLOCK A FOR ATRIUM AT 9TH FLOOR (11/9/15)', '', '2015-09-11', '17:04:03', 1, 10),
(399, 8, 4, 7, 'FRANK', 560, 1, 'BLOCK A TOILET  (14/9/15)', '', '2015-09-14', '17:04:30', 1, 10),
(400, 8, 4, 7, 'FRANK', 559, 1, 'BLOCK A TOILET  (14/9/15)', '', '2015-09-14', '17:05:01', 1, 10),
(401, 8, 4, 7, 'FRANK', 559, 1, 'BLOCK B WIRING OF COMMON AREA', '', '2015-09-22', '17:05:29', 1, 10),
(402, 8, 4, 7, 'FRANK', 560, 1, 'BLOCK B WIRING OF COMMON AREA', '', '2015-09-22', '17:05:42', 1, 10),
(403, 7, 4, 19, 'ROBERT', 497, 3, 'BLOCK A MASION BUILDING PARTITION WALL AT 9TH FLOOR', '', '2015-09-23', '10:32:15', 1, 4),
(404, 7, 4, 19, 'ROBERT', 497, 3, 'BLOCK B PLASTERING OF FIRE EXIST STAIRS  WALL PARTITION 4TH FLOOR', '', '2015-09-23', '10:33:16', 1, 4),
(405, 7, 4, 19, 'ROBERT', 497, 0.5, 'BLOCK B MAZERAS REPAIR AT 1ST COLUMN AT TERRANCE', '', '2015-09-23', '10:33:55', 1, 4),
(406, 6, 4, 8, 'ROBERT', 53, 2, 'BLOCK A PAINTERS MATERIALS', '', '2015-09-23', '10:35:42', 1, 16),
(407, 6, 4, 6, 'MR.MUNEER', 566, 2, 'TO MR. MUNEER', '', '2015-09-23', '10:36:57', 1, 16),
(408, 6, 4, 8, 'ROBERT', 566, 4, 'BLOCK A B2 PAINTERS MATERIALS ', '', '2015-09-23', '10:37:49', 1, 16),
(409, 6, 4, 10, 'ROSEMARY', 532, 0.5, 'GIVEN TO ROSEMARY FOR CLEANING BLOCK A 8TH FLOOR', '', '2015-09-23', '12:48:35', 1, 16),
(410, 6, 4, 10, 'ROSEMARY', 533, 0.5, 'GIVEN TO ROSEMARY FOR CLEANING BLOCK A 8TH FLOOR', '', '2015-09-23', '12:49:07', 1, 16),
(411, 6, 4, 10, 'ROSEMARY', 534, 0.5, 'GIVEN TO ROSEMARY FOR CLEANING BLOCK A 8TH FLOOR', '', '2015-09-23', '12:49:20', 1, 16),
(412, 6, 4, 10, 'CHRISTINE', 534, 0.5, 'GIVEN TO CHRISTINE FOR CLEANING BLOCK A 7TH AND 8TH FLOOR', '', '2015-09-23', '12:50:57', 1, 16),
(413, 6, 4, 10, 'CHRISTINE', 533, 0.5, 'GIVEN TO CHRISTINE FOR CLEANING BLOCK A 7TH AND 8TH FLOOR', '', '2015-09-23', '12:51:10', 1, 16),
(414, 6, 4, 10, 'CHRISTINE', 532, 0.3, 'GIVEN TO CHRISTINE FOR CLEANING BLOCK A 7TH AND 8TH FLOOR', '', '2015-09-23', '12:51:52', 1, 16),
(415, 6, 4, 10, 'ROSEMARY', 507, 1, 'GIVEN TO ROSEMARY FOR BLOCK A 8TH FLOOR FRESHENING', '', '2015-09-23', '12:56:43', 1, 10),
(416, 6, 4, 10, 'ROSEMARY', 582, 0.5, 'GIVEN TO ROSEMARY -TAKEN FROM PETER', '', '2015-09-23', '13:02:28', 1, 19),
(417, 8, 4, 7, 'ROBERT', 558, 1, 'BLOCK B 9TH FLOOR WIRING COMMON AREA', '', '2015-09-23', '14:51:49', 1, 24),
(418, 8, 4, 7, 'ROBERT', 559, 1, 'BLOCK B 9TH FLOOR WIRING COMMON AREA', '', '2015-09-23', '14:52:04', 1, 24),
(419, 8, 4, 7, 'ROBERT', 560, 1, 'BLOCK B 9TH FLOOR WIRING COMMON AREA', '', '2015-09-23', '14:52:20', 1, 24),
(420, 6, 4, 8, 'ROBERT', 570, 1, 'BLOCK B 10TH FLOOR CARPENTERS', '', '2015-09-23', '15:01:48', 1, 19),
(421, 6, 4, 8, 'ROBERT', 562, 7, 'BLOCK B 10TH FBLOCK B CARPENTERS FIXING PLYWOOD', '', '2015-09-23', '16:52:53', 1, 10),
(422, 6, 4, 8, 'ROBERT', 509, 10, 'BLOCK B CLEANING AMAZERAS', '', '2015-09-23', '16:55:03', 1, 16),
(423, 6, 4, 8, 'ROBERT', 255, 2, 'BLOCK A B1 PAINTERS MATERIALS', '', '2015-09-23', '16:58:10', 1, 10),
(424, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A TOILET SYSTEM GROUND FLOOR DN#2510', '', '2015-09-25', '10:56:07', 1, 4),
(425, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK A MASION BUILDING PARTITION WALL AT 9TH FLOOR (24/9/15)', '', '2015-09-24', '10:56:57', 1, 4),
(426, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B CARPENTERS CASTING TOILET SINK TABLE 10TH FLOOR  (24/9/15)', '', '2015-09-24', '10:57:39', 1, 4),
(427, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF TOILET BEAM AT 9TH FLOOR AND 10TH FLOOR (24/9/15)', '', '2015-09-24', '10:58:23', 1, 4),
(428, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B REPAIR AND PLASTER 4TH FLOOR FIRE EXIST STAIRS (24/9/15)', '', '2015-09-24', '10:59:11', 1, 4),
(429, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B TILE FIXING AT 4TH FLOOR  (24/9/15)', '', '2015-09-24', '10:59:45', 1, 4),
(430, 6, 4, 6, 'YOGESH', 608, 2, 'GIVEN TO YOGESH (26/8/2015)', '', '2015-09-25', '11:09:13', 1, 10),
(431, 6, 4, 16, 'MRS.NASIM', 608, 5, 'TO RAVINE PARK DN#43', '', '2015-09-25', '11:10:02', 1, 10),
(432, 8, 4, 20, 'VALENTINE', 609, 4, 'GIVEN TO VALENTINE ,FOR HESBON ,TONY, NDIRSNGU, MAU (23/9/2015)', '', '2015-09-23', '11:20:58', 1, 10),
(433, 8, 4, 20, 'NASIM', 610, 2, 'TO RAVINE PARK DN#44', '', '2015-09-25', '11:29:11', 1, 10),
(434, 8, 4, 20, 'NASIM', 610, 3, 'TO RAVINE PARK DN#46', '', '2015-09-25', '11:29:26', 1, 10),
(435, 6, 4, 20, 'MRS NASIM', 611, 1, 'TO RAVINE  DELIVERY NO#46', '', '2015-09-25', '11:33:34', 1, 10),
(436, 6, 4, 20, 'MRS NASIM', 611, 1, 'TO RAVINE  DELIVERY NO#46', '', '2015-09-25', '11:52:07', 1, 10),
(437, 7, 4, 7, 'ROBERT', 497, 1, 'BLOCK A MASION BUILDING PARTITION WALL AT 9TH FLOOR', '', '2015-09-25', '12:27:28', 1, 4),
(438, 7, 4, 7, 'ROBERT', 497, 2, 'BLOCK A PLASTERING OF GYM KITCHEN WALL AT 1ST FLOOR', '', '2015-09-25', '12:28:15', 1, 4),
(439, 7, 4, 7, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF TOILET SYSTEM AT 1ST FLOOR', '', '2015-09-25', '12:28:45', 1, 4),
(440, 7, 4, 7, 'ROBERT', 497, 3, 'MASION BUILDING PARTITION WALL 9TH FLOOR', '', '2015-09-25', '12:29:12', 1, 4),
(441, 6, 4, 7, 'MR.KIRIT', 493, 1, 'TO MR. KIRIT HOUSE GENERAL DELIVERY #42  (24/9/2015)', '', '2015-09-24', '12:46:12', 1, 10),
(442, 6, 4, 7, 'JAMES', 493, 1, 'TO HANDLES FOR SLEDGE HAMMERS 5PCS AND BE TAKEN TO RAVINE (24/9/2015)', '', '2015-09-24', '12:47:28', 1, 10),
(443, 6, 4, 7, 'VALENTINE', 565, 20, 'BLOCK B B1 FIXING CABLE TRAY', '', '2015-09-25', '13:01:41', 1, 10),
(444, 6, 4, 7, 'ROBERT', 65, 18, 'BLOCK B PAINTERS SKIMMING', '', '2015-09-25', '16:31:43', 1, 19),
(445, 6, 4, 7, 'ROBERT', 65, 10, 'BLOCK A B2 BEAM SKIMMING ', '', '2015-09-25', '16:32:08', 1, 19),
(446, 6, 4, 20, 'MRS. NASIM', 612, 10, 'TO FORESCAPE', '', '2015-09-25', '17:11:16', 1, 10),
(447, 6, 4, 10, 'MR.DUNCAN', 508, 1, 'GIVEN TO DUNCAN (24/9/2015)', '', '2015-09-24', '17:36:20', 1, 10),
(448, 8, 4, 6, 'MACKY', 524, 5, 'TO WOODLAND VIEW LTD DN#1944', '', '2015-09-28', '13:16:50', 1, 10),
(449, 7, 4, 7, 'ROBERT', 497, 3, 'BLOCK A PLASTERING PARTITION WALL 9TH FLOOR (26/9/2015)', '', '2015-09-26', '17:41:30', 1, 4),
(450, 7, 4, 7, 'ROBERT', 497, 1, 'BLOCK A CASTING OFFICE CENTER 9TH FLOOR (26/9/2015)', '', '2015-09-26', '17:42:28', 1, 4),
(451, 7, 4, 7, 'ROBERT', 497, 1, 'BLOCK A PLASTERING KITCHEN WALL GYM 1ST FLOOR (26/9/2015)', '', '2015-09-26', '17:43:08', 1, 4),
(452, 7, 4, 7, 'ROBERT', 497, 3, 'BLOCK B BUILDING PARTITION WALL 9TH FLOOR  (26/9/2015)', '', '2015-09-26', '17:43:39', 1, 4),
(453, 7, 4, 19, 'ROBERT', 497, 5, 'BLOCK A PLASTERING OF WALL PARTITION WALL 9TH FLOOR', '', '2015-09-28', '17:46:23', 1, 4),
(454, 7, 4, 19, 'ROBERT', 497, 3, 'BLOCK B MASION BUILDING PARTITION WALL 9TH FLOOR', '', '2015-09-28', '17:47:09', 1, 4),
(455, 7, 4, 19, 'ROBERT', 497, 0.5, 'BLOCK B MAZERAS REPAIR AT BEAM G.F MOSQUE', '', '2015-09-28', '17:47:47', 1, 4),
(456, 6, 4, 8, 'ROBERT', 570, 1, 'BLOCK B B1 CARPENTERS TOILET', '', '2015-09-28', '17:57:11', 1, 19),
(457, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK A PLASTERING OF PARTITION WALL 9TH FLOOR  (29/9/2015 )', '', '2015-09-29', '17:03:00', 1, 4),
(458, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK B MASION BUILDING PARTITION WALL 9TH FLOOR  (29/9/2015 )', '', '2015-09-29', '17:03:36', 1, 4),
(459, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF LIFE BEAM DOUBLE LIFT AT G.F', '', '2015-09-30', '17:04:48', 1, 4);
INSERT INTO `materials_issuance` (`mat_issue_id`, `store_id`, `user_id`, `approve_user_id`, `request_by`, `mat_id`, `qty`, `issue_desc`, `issue_ref_no`, `date_issue`, `time_issue`, `site_id`, `pack_id`) VALUES
(460, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B PLASTERING OF PARTITION WALL AT 9TH FLOOR', '', '2015-09-30', '17:05:26', 1, 4),
(461, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR AT MAIN EXIST', '', '2015-09-30', '17:06:04', 1, 4),
(462, 6, 4, 8, 'ROBERT', 48, 2, 'BLOCK A 1ST FLOOR TERRACE GENERAL DELIVERY #51', '', '2015-09-30', '17:12:28', 1, 10),
(463, 6, 4, 8, 'ROBERT', 543, 3, 'BLOCK A PAINTERS MATERIALS B2 (26/9/2015 )', '', '2015-09-30', '17:14:03', 1, 16),
(464, 6, 4, 8, 'ROBERT', 53, 2, 'BLOCK A B2 PAINTERS MATERIALS  (24/9/2015 )', '', '2015-09-30', '17:17:18', 1, 16),
(465, 6, 4, 8, 'ROBERT', 53, 3, 'BLOCK A B2 PAINTERS MATERIALS  (26/9/2015 )', '', '2015-09-30', '17:17:50', 1, 16),
(466, 6, 4, 8, 'ROBERT', 53, 2, 'BLOCK A 1ST FLOOR TERRACE (29/9/2015 )', '', '2015-09-30', '17:18:27', 1, 16),
(467, 6, 4, 8, 'ROBERT', 53, 0.5, 'BLOCK A B3 TO MIX RED OXIDE FOR ANGLE LINE COLUMN', '', '2015-09-30', '17:19:27', 1, 16),
(468, 6, 4, 8, 'ROBERT', 509, 3, 'BLOCK A AND B MAZERAS CLEANING', '', '2015-09-30', '17:20:34', 1, 4),
(469, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF WINDOWS AND DOOR AT 9TH FLOOR', '', '2015-10-01', '13:16:44', 1, 27),
(470, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A REPAIRING OF FLOOR NEXT TO BRIDGE G.F', '', '2015-10-01', '13:19:26', 1, 27),
(471, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B PLASTERING OF PARTITION WALL AT 9TH FLOOR', '', '2015-10-01', '13:20:27', 1, 27),
(472, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B MASION BUILDING PARITION WALL LENDER 9TH FLOOR', '', '2015-10-01', '13:21:20', 1, 27),
(473, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B MASION BUILDING PARITION WALL LENDER 9TH FLOOR', '', '2015-10-01', '13:23:06', 1, 27),
(474, 7, 4, 8, 'ROBERT', 497, 14, 'BLOCK A TILE FIXING AT G.F LIFT LOBBY', '', '2015-10-01', '13:23:41', 1, 27),
(475, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A G.F TOILET SYSTEM PLASTER', '', '2015-10-01', '13:24:33', 1, 27),
(476, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A G.F TOILET SYSTEM PLASTER', '', '2015-10-01', '13:52:36', 1, 27),
(477, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A G.F TOILET SYSTEM PLASTER', '', '2015-10-01', '13:52:36', 1, 27),
(478, 6, 4, 7, 'ROBERT', 495, 30, 'BLOCK A 5TH FLOOR MASION', '', '2015-10-01', '15:30:05', 1, 10),
(479, 6, 4, 6, 'MR.ABDUL', 495, 2, 'TO MR ABDUL', '', '2015-10-01', '15:30:55', 1, 10),
(480, 6, 4, 6, 'MR.ABDUL', 495, 2, 'TO MR ABDUL', '', '2015-10-01', '15:52:07', 1, 10),
(481, 6, 4, 8, 'JOHN', 249, 1, 'BLOCK A G.F LIFT LOBBY', '', '2015-10-02', '09:42:10', 1, 26),
(482, 6, 4, 8, 'JOHN', 249, 1, 'BLOCK A G.F LIFT LOBBY', '', '2015-10-02', '10:05:51', 1, 26),
(483, 6, 4, 7, 'PAUL KIOKO', 48, 1, 'BLOCK A 1ST FLOOR TERRACE GENERAL DN#55', '', '2015-10-02', '10:44:48', 1, 10),
(484, 6, 4, 7, 'PAUL KIOKO', 498, 1, 'BLOCK A1ST FLOOR TERRACE GENERAL DN#58', '', '2015-10-02', '10:47:41', 1, 16),
(485, 7, 4, 8, 'ROBERT', 499, 0.5, 'BLOCK A PLASTER WORK 9TH FLOOR', '', '2015-10-02', '12:24:39', 1, 4),
(486, 7, 4, 8, 'ROBERT', 499, 0.5, 'BLOCK A PLASTER WORK 9TH FLOOR (28/9/2015 )', '', '2015-09-28', '12:25:32', 1, 4),
(487, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK A PLASTER WORK 9TH FLOOR (30/9/2015 )', '', '2015-09-30', '12:27:59', 1, 4),
(488, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK B  PLASTER WORK 9TH FLOOR (210/2015 )', '', '2015-10-02', '12:28:31', 1, 4),
(489, 7, 4, 8, 'ROBERT', 499, 0.5, 'BLOCK B  PLASTER WORK 9TH FLOOR ', '', '2015-10-02', '12:28:58', 1, 4),
(490, 7, 4, 8, 'JOHN', 529, 12, 'BLOCK B TILE FIXING AT 9TH FLOOR (24/9/2015 )', '', '2015-09-24', '12:34:04', 1, 10),
(491, 7, 4, 8, 'JOHN', 529, 4, 'BLOCK B FIRE EXIST CORRIDOR  (24/9/2015 )', '', '2015-09-24', '12:34:39', 1, 10),
(492, 7, 4, 8, 'JOHN', 529, 4, 'BLOCK A TILE FIXING AT G.F LIFT LOBBY', '', '2015-10-02', '12:35:08', 1, 10),
(493, 6, 4, 8, 'ROBERT', 494, 1, 'BLOCK A FOR ELECTRICAIN', '', '2015-10-02', '14:56:47', 1, 10),
(494, 7, 4, 8, 'JOHN', 529, 28, 'BLOCK A TILE FIXING AT G.F LIFT LOBBY', '', '2015-10-02', '15:08:21', 1, 10),
(495, 7, 4, 8, 'JOHN', 530, 36, 'BLOCK B 4TH FLOOR FIRE CORIDOR  (24/9/2015 )', '', '2015-09-24', '15:27:32', 1, 10),
(496, 7, 4, 8, 'JOHN', 530, 116, 'BLOCK A TILE FIXING AT G.F LIFT LOBBY (1/10/2015 )', '', '2015-10-01', '15:28:21', 1, 10),
(497, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK A MASION BUILDING PARTITION WALL AT 5TH FLOOOR', '', '2015-10-02', '15:45:41', 1, 4),
(498, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B PLASTERING OF PARTITION WALL 9TH FLOOR', '', '2015-10-02', '15:46:21', 1, 4),
(499, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK A PLASTERING OF PARTITION WALL AT 9TH FLOOR DN#2512', '', '2015-10-02', '15:47:10', 1, 4),
(500, 7, 4, 8, 'JOHN', 497, 2, 'TILE FIXING AT G.F LIFT LOBBY AREA', '', '2015-10-02', '15:47:40', 1, 4),
(501, 6, 4, 7, 'KIOKO', 53, 0.5, 'BLOCK A 1ST FLOOR TERRACE', '', '2015-10-02', '16:12:57', 1, 16),
(502, 6, 4, 8, 'ROBERT', 65, 10, 'BLOBLOCK A B2 FLOWER BOX', '', '2015-10-02', '16:14:28', 1, 19),
(503, 6, 4, 8, 'ROBERT', 566, 3, 'BLOCK A PAINTERS B1', '', '2015-10-02', '16:15:34', 1, 16),
(504, 6, 4, 8, 'ROBERT', 510, 2, 'BBLOCK A B2 PAINTERS MATERIALS (26/ 9/2015 )', '', '0000-00-00', '16:17:37', 1, 16),
(505, 6, 4, 6, 'JAMES', 568, 5, 'GIVEN TO JAMES ', '', '2015-10-02', '16:21:03', 1, 10),
(506, 6, 4, 6, 'EDWIN', 567, 3, 'BLOCK A ENTRANCE  GATE FOR LITTER BIN', '', '2015-10-02', '16:26:02', 1, 10),
(507, 6, 4, 6, 'EDWIN', 567, 5, 'TO EURECCA LTD DN#3457', '', '2015-10-02', '16:26:42', 1, 10),
(508, 8, 4, 6, 'NAUREEN', 620, 1, 'TO NAUREEN BLOCK A 8TH FLOOR', '', '2015-10-02', '16:31:51', 1, 24),
(509, 6, 4, 7, 'KIOKO', 586, 198, 'TO JULIUS CO. GENERAL DN#58', '', '2015-10-02', '16:33:38', 1, 10),
(510, 6, 4, 7, 'KIOKO', 594, 30, 'TO JULIUS CO. GENERAL DN#49', '', '2015-10-02', '16:35:30', 1, 10),
(511, 6, 4, 7, 'KIOKO', 594, 70, 'TO JULIUS CO. GENERAL DN#58', '', '2015-10-02', '16:36:24', 1, 10),
(512, 6, 4, 7, 'VITALIS', 517, 100, 'BLOCK A B3 FIXING OF ANGLE LINE', '', '2015-10-02', '16:40:32', 1, 10),
(513, 6, 4, 7, 'KIOKO', 595, 30, 'BLOCK A 1ST FLOOR TERRACE', '', '2015-10-02', '16:43:15', 1, 10),
(514, 6, 4, 7, 'KIOKO', 595, 27, 'BLOCK A 1ST FLOOR TERRACE   GENERAL DN#58', '', '2015-10-02', '16:43:38', 1, 10),
(515, 6, 4, 6, 'MACKY', 519, 5, 'TO WOODLAND VIEW DN#1946', '', '2015-10-02', '16:44:55', 1, 10),
(516, 6, 4, 7, 'WINNIE', 603, 3, 'GIVEN TO WINNIE ', '', '2015-10-06', '13:59:30', 1, 10),
(517, 7, 4, 8, 'ROBERT', 497, 0.5, 'MAZERAS FIXING AT RECEPTION WINDOW (5/10/2015 )', '', '2015-10-06', '14:31:52', 1, 4),
(518, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B MASION BUILDING PARTITION WALL AT LENTER 9TH (5/10/2015 )', '', '2015-10-06', '14:32:49', 1, 4),
(519, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF DOOR FRAME TOILET 9TH FLOOR (5/10/2015 )', '', '2015-10-06', '14:33:44', 1, 4),
(520, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B MASION BUILDING PARTITION WALL 6TH FLOOR  (5/10/2015 )', '', '2015-10-06', '14:34:21', 1, 4),
(521, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A REPAIRING OF KITCHEN WINDOW FRAME 10TH FLOOR', '', '2015-10-06', '14:41:44', 1, 4),
(522, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B PLASTERING OF PARTITION WALL AT 10TH FLOOR', '', '2015-10-06', '14:42:22', 1, 4),
(523, 7, 4, 8, 'ROBERT', 497, 3, 'BLOCK B MASION BUILDING PARTITION WALL AT 6TH FLOOR', '', '2015-10-06', '14:42:55', 1, 4),
(524, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B TILE AT 1ST FLOOR', '', '2015-10-06', '14:43:15', 1, 4),
(525, 6, 4, 8, 'ROBERT', 252, 2, 'PAINTERS BLOCK B 5TH FLOOR (18/9/2015 )', '', '2015-10-06', '14:47:07', 1, 17),
(526, 6, 4, 8, 'ROBERT', 252, 2, 'BLOCK A PAINTERS MATERIALS (5/10/2015 )', '', '2015-10-06', '14:47:45', 1, 17),
(527, 6, 4, 8, 'ROBERT', 255, 3, 'BLOCK A PAINTERS MATERIALS', '', '2015-10-06', '14:48:58', 1, 10),
(528, 6, 4, 6, 'MACKY', 606, 3, 'TO WOOD LAND VIEW LTD (3/10/2015 )', '', '2015-10-06', '14:50:36', 1, 10),
(529, 6, 4, 7, 'VITALIS', 517, 100, 'FIXING ANGLE LINE BLOCK A B3 (3/10/2015 )', '', '2015-10-06', '14:52:41', 1, 10),
(530, 6, 4, 7, 'VITALIS', 517, 100, 'FIXING ANGLE LINE BLOCK A B3  GENERAL DN#63', '', '2015-10-06', '14:54:11', 1, 10),
(531, 6, 4, 4, 'NO ', 624, 2000, 'REPEAT ERROR', '', '2015-10-06', '15:01:55', 1, 10),
(532, 6, 4, 7, 'VITALIS', 624, 100, 'BLOCK A B3 FIXING ANGLE LINE (1/10/.2015 )', '', '2015-10-06', '15:02:41', 1, 10),
(533, 6, 4, 7, 'VITALIS', 624, 100, 'BLOCK A B3 FIXING ANGLE LINE (3/10/.2015 )', '', '2015-10-06', '15:02:48', 1, 10),
(534, 6, 4, 7, 'VITALIS', 624, 100, 'BLOCK A B3 FIXING ANGLE LINE (6/10/.2015 ) GENERAL DN#63', '', '2015-10-06', '15:03:23', 1, 10),
(535, 6, 4, 6, 'MACKY', 625, 2, 'TO WOODLAND VIEW LTD DN#1946', '', '2015-10-06', '15:14:13', 1, 19),
(536, 6, 4, 6, 'MACKY', 625, 15, 'TO WOODLAND VIEW LTD DN#3601', '', '2015-10-06', '15:16:24', 1, 19),
(537, 6, 4, 6, 'MACKY', 625, 2, 'FOR CRANE /HYDRA', '', '2015-10-06', '15:16:42', 1, 19),
(538, 6, 4, 6, 'MACKY', 625, 2, 'FOR CRANE /HYDRA', '', '2015-10-06', '15:54:25', 1, 19),
(539, 6, 4, 6, 'MACKY', 174, 40, 'TO WOODLAND DN#3601', '', '2015-10-06', '16:07:19', 1, 16),
(540, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK B AND B PLASTER WORK (5/10/2015)', '', '2015-10-07', '11:29:48', 1, 4),
(541, 7, 4, 8, 'ROBERT', 499, 0.5, 'BLOCK B PLASTER WORK (6/10/2015 )', '', '2015-10-07', '11:31:50', 1, 4),
(542, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK B PLASTER WORK 6TH FLOOR', '', '2015-10-07', '11:32:22', 1, 4),
(543, 6, 4, 8, 'ROBERT', 504, 6, 'BLOCK B 2ND FLOOR STAIRS AND LIFT TERRACE', '', '2015-10-07', '11:38:37', 1, 10),
(544, 6, 4, 8, 'ROBERT', 504, 2, 'BLOCK B 3RD FIRE EXIST CORRIDOR (26/9/2015)', '', '2015-10-07', '11:39:31', 1, 10),
(545, 6, 4, 8, 'ROBERT', 504, 3, 'BLOCK B 1ST FLOOR CORRIDOR', '', '2015-10-07', '11:40:06', 1, 10),
(546, 6, 4, 7, 'JOHN', 615, 6, 'BLOCK B 1ST FLOOR CORRIDOR', '', '2015-10-07', '11:42:06', 1, 10),
(547, 6, 4, 7, 'VITALIS', 624, 400, 'BLOCK A FIXING OF ANGLE LINE', '', '2015-10-07', '13:14:06', 1, 10),
(548, 6, 4, 7, 'VITALIS', 517, 400, 'BLOCK A FIXING OF ANGLE LINE GENERAL DN#66', '', '2015-10-07', '13:14:52', 1, 10),
(549, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B PLASTERING OF COLUMN AT 9TH FLOOR', '', '2015-10-07', '14:47:07', 1, 4),
(550, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B PLASTERING OF PARTITON WALL AT 6TH FLOOR', '', '2015-10-07', '14:47:43', 1, 4),
(551, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B PLASTERING OF LIFT SHUFT AT 1ST FLOOR', '', '2015-10-07', '14:48:17', 1, 4),
(552, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B B2 PLASTERING OF FLOOR AFTER HACKING', '', '2015-10-07', '14:48:55', 1, 4),
(553, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK A PAINTING 4TH FLOOR CLEANERS ROOM', '', '2015-10-08', '10:32:37', 1, 16),
(554, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK A B1 AND 9TH FLOOR TOILET PAINTERS (5/10/2015 )', '', '2015-10-08', '10:33:42', 1, 16),
(555, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK A AND B PARTTION WALL (6/10/2015 )', '', '2015-10-08', '10:34:15', 1, 16),
(556, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B 3RD FLOOR PARTITION WALL  (6/10/2015 )', '', '2015-10-08', '10:34:59', 1, 16),
(557, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK  A AND B PARTITION WALL  (7/10/2015 )', '', '2015-10-08', '10:35:33', 1, 16),
(558, 6, 4, 8, 'ROBERT', 510, 3, 'BLOCK  A AND B PARTITION WALL  (7/10/2015 )', '', '2015-10-08', '10:37:27', 1, 16),
(559, 6, 4, 8, 'ROBERT', 510, 1, 'BLOCK B 9TH FLOOR PAINTER TOILET  (8/10/2015 )', '', '2015-10-08', '10:37:59', 1, 16),
(560, 6, 4, 8, 'ROBERT', 566, 8, 'BLOCK A 9TH FLOOR AND B1 FLOOR KITCHEN WALL AND TOILET  (5/10/2015 )', '', '2015-10-08', '10:41:57', 1, 16),
(561, 6, 4, 8, 'ROBERT', 566, 4, 'BLOCK B 9TH FLOOR PAINTERS TOILET', '', '2015-10-08', '10:43:04', 1, 16),
(562, 6, 4, 8, 'ROBERT', 65, 5, 'BLOCK A 9TH FLOOR B1 KITCHEN WALL AND TOILET WALL', '', '2015-10-08', '10:45:13', 1, 19),
(563, 6, 4, 8, 'ROBERT', 65, 5, 'BLOCK A 9TH FLOOR B1 KITCHEN WALL AND TOILET WALL', '', '2015-10-08', '10:45:15', 1, 19),
(564, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF COLUMNS AFTER BOARD 9TH FLOOR', '', '2015-10-08', '11:06:19', 1, 4),
(565, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B PLASTERING OF PARTITION WALL AT 5TH FLOOR ', '', '2015-10-08', '11:07:15', 1, 4),
(566, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B PLASTERING OF COLUMNS AFTER ALCOBOARD', '', '2015-10-08', '11:08:02', 1, 4),
(567, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B SETTING OUT PARTITION WALL AT G.F', '', '2015-10-08', '11:08:29', 1, 4),
(568, 6, 4, 10, 'ROBERT', 532, 0.5, 'GIVEN TO ROSEMARY FOR CLEANING BLOCK A 8TH FLOOR', '', '2015-10-08', '14:17:08', 1, 16),
(569, 6, 4, 10, 'ROBERT', 532, 0.5, 'GIVEN TO ROSEMARY FOR CLEANING BLOCK A 8TH FLOOR', '', '2015-10-08', '14:17:34', 1, 16),
(570, 6, 4, 10, 'ROBERT', 532, 0.5, 'GIVEN TO CHRISTINE FOR CLEANING BLOCK A 8TH FLOOR', '', '2015-10-08', '14:17:51', 1, 16),
(571, 6, 4, 7, 'FRANK ', 636, 3, 'BLOCK A3,4,5 CLEANERS ROOM', '', '2015-10-09', '13:48:34', 1, 10),
(572, 6, 4, 7, 'FRANK ', 636, 8, 'BLOCK A 4TH FLOOR LIFT LOBBY AND COMMON AREA', '', '2015-10-09', '13:49:13', 1, 10),
(573, 6, 4, 7, 'FRANK ', 636, 2, 'BLOCK A 5TH FLOOR FIRE EXIST CORRIDOR', '', '2015-10-09', '13:49:42', 1, 10),
(574, 6, 4, 7, 'FRANK ', 636, 1, 'BLOCK A 6TH FLOOR URINAL AREA', '', '2015-10-09', '13:50:09', 1, 10),
(575, 6, 4, 7, 'FRANK ', 636, 1, 'BLOCK A 6TH FLOOR COMMON ATRE', '', '2015-10-09', '13:50:53', 1, 10),
(576, 6, 4, 7, 'FRANK ', 636, 2, 'BLOCK A LADIES WASHROOM (ABOVE MIRROR', '', '2015-10-09', '13:51:37', 1, 10),
(577, 6, 4, 7, 'FRANK ', 636, 2, 'BLOCK A GENT WASHROOM (ABOVE MIRROR', '', '2015-10-09', '13:51:52', 1, 10),
(578, 6, 4, 7, 'PAUL KIOKO', 498, 0.5, 'BLOCK A 1ST FLOOR TERRACE (5.10.2015)', '', '2015-10-09', '14:50:42', 1, 16),
(579, 6, 4, 7, 'ROBERT', 498, 2, 'BLOCK B CLEANING OF G.F GLASSES', '', '2015-10-09', '14:52:31', 1, 16),
(580, 6, 4, 8, 'ROBERT', 53, 4, 'FOR MIXING WITH SILK WHITE', '', '2015-10-09', '14:55:12', 1, 16),
(581, 6, 4, 7, 'KIOKO', 53, 2.5, 'BLOCK A 1ST FLOOR TERRACE GERAL DELIVERY#62', '', '2015-10-09', '14:56:09', 1, 16),
(582, 6, 4, 7, 'KIOKO', 53, 1, 'BLOCK A 1ST FLOOR TERRACE GERAL DELIVERY#62  (6.10.2015 )', '', '2015-10-09', '14:57:36', 1, 16),
(583, 6, 4, 7, 'KIOKO', 53, 2, 'BLOCK B 9TH FLOOR PAINTERS TOILET  (8.10.2015 )', '', '2015-10-09', '14:58:40', 1, 16),
(584, 6, 4, 8, 'ROBERT', 53, 2, 'BLOCK A PAINTERS AT MAIN STAIRS WALL FROM B1-1ST FLOOR  (9.10.2015 )', '', '2015-10-09', '14:59:46', 1, 16),
(585, 6, 4, 8, 'ROBERT', 566, 10, 'BLOCK A PAINTERS AT MAIN STAIRS WALLFROM B1- 1ST FLOOR', '', '2015-10-09', '15:01:26', 1, 16),
(586, 6, 4, 8, 'ROBERT', 510, 1, 'BLOCK A 3RD 2ND CLEANERS STORE', '', '2015-10-09', '15:03:42', 1, 16),
(587, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK B 8TH FLOOR LIFT DUCT (8.10.2015 )', '', '2015-10-09', '15:04:36', 1, 16),
(588, 6, 4, 8, 'ROBERT', 510, 1, 'BLOCK A PAINTERS AT MAIN STAIRS WALL FROM B1-1ST', '', '2015-10-09', '15:05:53', 1, 16),
(589, 6, 4, 6, 'MACKY', 568, 10, 'TO WOODLAND VIEW LTD DN#3601    USE TO CARRY DIESEL', '', '2015-10-09', '15:08:08', 1, 10),
(590, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B PLASTERING OF PARTITION WALL AT 6TH FLOOR', '', '2015-10-14', '09:48:38', 1, 4),
(591, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF KITCHEN WINDOW AND DOOR FRAME 10TH -9TH FLOOR', '', '2015-10-14', '09:49:24', 1, 4),
(592, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK AREPAIRING OF CLEANERS STORE AND DISABLE TOILET  (9/10/2015)', '', '2015-10-14', '09:50:21', 1, 4),
(593, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A CASTING OF RC WALL COLUMNS   (9/10/2015)', '', '2015-10-14', '09:50:58', 1, 4),
(594, 7, 4, 8, 'ROBERT', 497, 2.5, 'BLOCK A CASTING OF RC WALL COLUMNS   (9/10/2015)', '', '2015-10-14', '09:51:13', 1, 4),
(595, 7, 4, 8, 'ROBERT', 497, 0.5, 'PLASTER', '', '2015-10-14', '10:56:33', 1, 4),
(596, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A FILLER REPAIRING TILE (10/10/15  )', '', '2015-10-14', '10:57:34', 1, 4),
(597, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A CASTING RC WALL (10/10/15  )', '', '2015-10-14', '10:57:58', 1, 4),
(598, 7, 4, 8, 'ROBERT', 497, 1.5, 'BLOCK B PARTITION WALL DOOR FRAME (10/10/15  )', '', '2015-10-14', '10:58:43', 1, 4),
(599, 7, 4, 8, 'ROBERT', 497, 0.5, 'HACKED DOUBLE LIFT DUCT (10/10/15  )', '', '2015-10-14', '10:59:20', 1, 4),
(600, 7, 4, 8, 'ROBERT', 497, 2, 'FIXING 9TH FLOOR (10/10/15  )', '', '2015-10-14', '10:59:39', 1, 4),
(601, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A CASTING OF RC WALL COLUMNS FOR RALEES (9/10/15  )', '', '2015-10-14', '11:03:32', 1, 4),
(602, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF ELECTRICAL CHANNELS 9TH FLOOR (12/10/15  )', '', '2015-10-14', '11:05:52', 1, 4),
(603, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF BRIDGE WALL  (12/10/15  )', '', '2015-10-14', '11:06:52', 1, 4),
(604, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF BRIDGE WALL  (12/10/15  )', '', '2015-10-14', '11:07:46', 1, 4),
(605, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A TILE FIXING AT 9TH FLOOR TOILET  (12/10/15  )', '', '2015-10-14', '11:09:13', 1, 4),
(606, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF BEAM OF LIFT DOOR SINGLE LIFT  (12/10/15  )', '', '2015-10-14', '11:10:15', 1, 4),
(607, 7, 4, 8, 'ROBERT', 497, 2, 'BLOCK B MASION BUILDING PARTITION WALL G.F (12/10/15  )', '', '2015-10-14', '11:11:00', 1, 4),
(608, 7, 4, 8, 'ROBERT', 497, 7, 'BLOCK B PLASTERING OF PARTITION WALL AT G.F (13/10/15  )', '', '2015-10-14', '11:11:51', 1, 4),
(609, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A TILE REPAIR AND FIXING AT THE CLEANERS STORE  (13/10/15  )', '', '2015-10-14', '11:12:36', 1, 4),
(610, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A CARPENTERS CASTING RC WALL COLUMNS MOSQUE SIDE  (13/10/15  )', '', '2015-10-14', '11:14:08', 1, 4),
(611, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A SMOOTHING OF BRIDGE WALL AT 1ST FLOOR  (13/10/15  )', '', '2015-10-14', '11:14:49', 1, 4),
(612, 7, 4, 8, 'ROBERT', 497, 3, 'MASION BUILDING PARTITION WALL AT G.F   (13/10/15  )', '', '2015-10-14', '11:15:31', 1, 4),
(613, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B PLASTERING OF PARTITION WALL AT G.F   (13/10/15  )', '', '2015-10-14', '11:16:00', 1, 4),
(614, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A TILE REPAIR AT KITCHEN WALL 9TH FLOOR', '', '2015-10-14', '11:21:35', 1, 4),
(615, 7, 4, 8, 'ROBERT', 497, 7, 'BLOCK B PLASTERING OF PARTITION WALL AT G.F', '', '2015-10-14', '11:22:11', 1, 4),
(616, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK B TILE FIXING AT CLEANERS STORE FROM 8-2ND FLOOR', '', '2015-10-14', '11:22:48', 1, 4),
(617, 7, 4, 8, 'ROBERT', 497, 4, 'BLOCK B MASION BUILDING PARTITION WALL AT G.F', '', '2015-10-14', '11:23:28', 1, 4),
(618, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK B CARPENTER CASTING PARTITION WALL BEAM', '', '2015-10-14', '11:25:17', 1, 4),
(619, 6, 4, 8, 'ROBERT', 53, 2, 'BLOCK B 9TH FLOOR PAINTING TOILET', '', '2015-10-14', '13:47:20', 1, 16),
(620, 6, 4, 8, 'ROBERT', 53, 2.5, 'BLOCK A 1ST FL MIXING RED OXIDE', '', '2015-10-14', '13:49:58', 1, 16),
(621, 6, 4, 8, 'ROBERT', 53, 4, 'BLOCK B MIXING SILK WHITE FOR TOILET 8TH - 2ND FLOOR', '', '2015-10-14', '13:50:44', 1, 16),
(622, 6, 4, 4, 'MACKY', 566, 15, 'HESBONE', '', '2015-10-14', '13:54:09', 1, 16),
(623, 6, 4, 8, 'ROBERT', 566, 4, 'BLOCK B PAINTERS AT COMMON TOILET MATERIALS', '', '2015-10-14', '13:56:27', 1, 16),
(624, 6, 4, 7, 'PARESH', 34, 10, 'BLOCK A PLUMBING AT B1  #086', '', '2015-10-14', '14:39:38', 1, 10),
(625, 6, 4, 7, 'PARESH', 640, 4, 'BLOCK A PLUMBING AT B1', '', '2015-10-14', '14:58:38', 1, 10),
(626, 6, 4, 7, 'PARESH', 639, 8, 'BLOCK A PLUMBING AT B1  #086', '', '2015-10-14', '14:59:36', 1, 10),
(627, 6, 4, 8, 'PARESH', 638, 8, 'BLOCK A PLUMBERING AT B1  #086', '', '2015-10-14', '15:02:20', 1, 10),
(628, 6, 4, 6, 'MACKY', 519, 1, 'TO FATAJ LTD DN#3701', '', '2015-10-14', '15:04:58', 1, 10),
(629, 6, 4, 7, 'ROBERT', 519, 1, 'BLOCK A AND B FOR CUTTINGGYPSUMBOARD 9TH FLOOR 9TH FLOOR', '', '2015-10-14', '15:07:14', 1, 10),
(630, 8, 4, 6, 'MACKY', 496, 1, 'TO WOODLAND VIEW LTD DN#3601 (5/10/2015 )', '', '2015-10-14', '15:12:15', 1, 10),
(631, 8, 4, 6, 'MACKY', 641, 2, 'TO EURECCA LTD S/NO: C6C5180920198 ,C6C5180920193 ', '', '2015-10-14', '15:54:09', 1, 10),
(632, 6, 4, 8, 'ROBERT', 65, 5, 'BLOCK B FOR SKIMMING ATRIUM ENTRANCE', '', '2015-10-14', '16:46:30', 1, 19),
(633, 6, 4, 6, 'JAMES', 502, 0.5, 'TO PAINT WELDE TROLLEY (1/9/2015 )', '', '2015-10-14', '16:51:36', 1, 16),
(634, 6, 4, 6, 'JAMES', 502, 4, 'BLOCK A 1ST FLOOR TERRACE (29/9/2015 )', '', '2015-10-14', '16:52:11', 1, 16),
(635, 6, 4, 6, 'JAMES', 502, 2, 'BLOCK A B3 PAINT ANGLE LINE (30/9/2015 )', '', '2015-10-14', '16:53:31', 1, 16),
(636, 6, 4, 7, 'PAUL KIOKO', 502, 12, 'BLOCK A 1ST FLOOR TERRACE  GERAL DELIVERY#58 (2/10/2015 )', '', '2015-10-14', '16:54:42', 1, 16),
(637, 6, 4, 7, 'JAMES', 502, 1, 'BLOCK A B3 TO PAINT ANGLE LINE  (7/10/2015 )', '', '2015-10-14', '17:08:44', 1, 16),
(638, 6, 4, 7, 'PAUL KIOKO', 502, 4, 'BLOCK A 1ST FLOOR TERRACE  (0/10/2015 )', '', '2015-10-14', '17:10:18', 1, 16),
(639, 6, 4, 6, 'MACKY', 161, 1, 'KAP 420 J', '', '2015-10-14', '17:31:50', 1, 10),
(640, 7, 4, 8, 'ROBERT', 497, 1, 'REPAIRS OF LIFT DUCT 6TH FLOOR DOWN STAIRS', '', '2015-10-19', '11:48:15', 1, 4),
(641, 7, 4, 8, 'ROBERT', 497, 2, 'BUILDING PARTITION WALL 9TH FLOOR (15/10/15)', '', '2015-10-19', '11:48:59', 1, 4),
(642, 7, 4, 8, 'ROBERT', 497, 0.5, 'PLASTERING OF ELECTRICAL CONDUCT CHANNELS (15/10/15)', '', '2015-10-19', '11:49:30', 1, 4),
(643, 7, 4, 8, 'ROBERT', 497, 0.5, 'TILE REPAIR AT THE TOILET WINDOW AT 9TH FLOOR (15/10/15)', '', '2015-10-19', '11:50:13', 1, 4),
(644, 7, 4, 8, 'ROBERT', 497, 2, 'PLASTERING OF LIFT DUCT AT 4TH FLOOR (15/10/15)', '', '2015-10-19', '11:50:46', 1, 4),
(645, 7, 4, 8, 'ROBERT', 497, 6, 'PLASTERING OF PARTITION WALL AT G.F (15/10/15)', '', '2015-10-19', '11:51:13', 1, 4),
(646, 7, 4, 8, 'ROBERT', 497, 1.5, 'PLASTERING OF DOUBLE LIFT DUCT AT 4TH FLOOR (17/10/15)', '', '2015-10-19', '11:52:16', 1, 4),
(647, 7, 4, 8, 'ROBERT', 497, 5, 'BLOCK B PLASTERING OF PARTITION WALL AT G.F (17/10/15)', '', '2015-10-19', '11:53:02', 1, 4),
(648, 7, 4, 8, 'ROBERT', 497, 0.5, 'BLOCK A TILE FIXING AT 9TH FLOOR (19/10/15)', '', '2015-10-19', '11:55:28', 1, 4),
(649, 7, 4, 8, 'ROBERT', 497, 4, 'BLOCK A PLASTERING OF PARTITION WALL AT 5TH FLOOR (19/10/15)', '', '2015-10-19', '11:55:59', 1, 4),
(650, 7, 4, 8, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF ATRIUM BEAM AT G.F (19/10/15)', '', '2015-10-19', '11:56:30', 1, 4),
(651, 7, 4, 8, 'ROBERT', 497, 2, 'REPAIRING OF FLOOR AND MASION WORK AT 1ST FLOOR (19/10/15)', '', '2015-10-19', '11:57:03', 1, 4),
(652, 7, 4, 6, 'ROBERT', 497, 2, 'TO WESTLAND OFFICE   GENERAL DELIVERY #088 (19/10/15)', '', '2015-10-19', '11:57:42', 1, 4),
(653, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK B PLASTER WORK (12/10/2015)', '', '2015-10-19', '18:20:20', 1, 4),
(654, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK B PLASTER WORK (13/10/2015)', '', '2015-10-19', '18:20:41', 1, 4),
(655, 7, 4, 8, 'ROBERT', 499, 0.25, 'BLOCK B PLASTER WORK (16/10/2015)', '', '2015-10-19', '18:21:46', 1, 4),
(656, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A REPAIRING OF ATIUM ENTRANCE 4TH -2ND FLOOR', '', '2015-10-21', '10:23:13', 1, 4),
(657, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A BUILDING OF TOILET AT 1ST FLOOR', '', '2015-10-21', '10:24:13', 1, 4),
(658, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B REPAIRING OF DOOR FRAME 9TH FLOOR', '', '2015-10-21', '10:24:37', 1, 4),
(659, 7, 4, 13, 'ROBERT', 497, 15, 'BLOCK A COMMON AREA AND LIFT LOBBY 9TH FLOOR', '', '2015-10-21', '10:52:06', 1, 4),
(660, 7, 4, 15, 'ROBERT', 499, 0.25, 'BLOCK B PLASTER WORK', '', '2015-10-21', '10:56:01', 1, 4),
(661, 7, 4, 15, 'ROBERT', 499, 0.5, 'BLOC B PLASTER WORK  ORDER#091   (16/10/2015 )', '', '2015-10-21', '10:57:23', 1, 4),
(662, 7, 4, 15, 'ROBERT', 499, 0.25, 'BLOC A PLASTER WORK  ORDER#097   (19/10/2015 )', '', '2015-10-21', '10:58:20', 1, 4),
(663, 8, 4, 7, 'FRANK', 558, 3, 'BLOCK A AND B 9TH FLOOR FIRE ESCAPING STAIRS', '', '2015-10-21', '11:59:49', 1, 16),
(664, 8, 4, 7, 'FRANK', 559, 3, 'BLOCK A AND B 9TH FLOOR FIRE ESCAPING STAIRS', '', '2015-10-21', '12:00:10', 1, 16),
(665, 8, 4, 7, 'FRANK', 560, 3, 'BLOCK A AND B 9TH FLOOR FIRE ESCAPING STAIRS', '', '2015-10-21', '12:00:27', 1, 16),
(666, 8, 4, 7, 'FRANK', 599, 0.5, 'BLOCK B 9TH FLOOR WIRING OF COMMON AREA22/9/2015', '', '2015-10-21', '12:02:15', 1, 10),
(667, 8, 4, 7, 'FRANK', 601, 1.5, 'BLOCK B WIRING', '', '2015-10-21', '12:09:15', 1, 10),
(668, 8, 4, 7, 'FRANK', 600, 1.5, 'BLOCK B WIRING', '', '2015-10-21', '12:09:38', 1, 10),
(669, 6, 4, 13, 'JOHN', 249, 2, 'BLOCK A 9TH FLOOR LIFT LOBBY AND COMMON AREA', '', '2015-10-21', '13:01:05', 1, 10),
(670, 6, 4, 6, 'MACKY', 645, 4, 'TO MOMBASA (YELLOW, RED , BLUE AND BLACK )  (9/10/2015)', '', '2015-10-21', '14:47:22', 1, 10),
(671, 7, 4, 13, 'ROBERT', 497, 5, 'BLOCK A PLASTER TOILET WALL 1ST FLOOR', '', '2015-10-22', '14:50:08', 1, 4),
(672, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A MASION BUILDING PARTITION AND TOILET WALL 1ST FLOOR', '', '2015-10-22', '14:50:49', 1, 4),
(673, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A MASION BUILDING PARTITION AND TOILET WALL 1ST FLOOR', '', '2015-10-22', '14:50:52', 1, 4),
(674, 7, 4, 13, 'ROBERT', 497, 12, 'BLOCK A TILE FIXING 9TH FLOOR LIFT LOBBY', '', '2015-10-22', '14:51:25', 1, 4),
(675, 6, 4, 13, 'PARESH', 574, 1, 'BLOCK A 9TH FLOOR PLUMBERS', '', '2015-10-22', '14:58:51', 1, 10),
(676, 6, 4, 13, 'FRANK', 519, 1, 'BLOCK B 5TH FLOOR FOR CUTTING CONDUITS PIPES (15/10/2015)', '', '2015-10-22', '15:04:52', 1, 10),
(677, 6, 4, 13, 'PARESH', 519, 1, 'BLOCK A 9TH FLOOR PLUMBERS (22/10/2015)', '', '2015-10-22', '15:05:28', 1, 10),
(678, 7, 4, 13, 'ROBERT', 499, 0.25, 'BLOCK A 1ST FLOOR WORK', '', '2015-10-22', '15:18:01', 1, 4),
(679, 6, 4, 7, 'JOHN', 135, 5, 'FOR MAZERAS CLEANING (30/9/2015)', '', '2015-10-22', '15:21:28', 1, 10),
(680, 6, 4, 13, 'JOHN', 135, 4, 'FOR MAZERAS CLEANING (22/10/2015)', '', '2015-10-22', '15:22:17', 1, 10),
(681, 6, 4, 6, 'FRANK', 493, 1, 'BLOCK A  AND B CUTTING OF CABLE TRAY', '', '2015-10-23', '10:11:32', 1, 10),
(682, 6, 4, 15, 'ROBERT', 493, 1, 'BLOCK A CUTTING METAL AT 9TH FLOOR', '', '2015-10-23', '10:12:30', 1, 10),
(683, 7, 4, 13, 'ROBERT', 499, 0.25, 'BLOCK A PLASTER WORK', '', '2015-10-23', '10:17:51', 1, 4),
(684, 6, 4, 6, 'ERICK', 611, 1, 'TO GARDENERS (ERICK KARIBA ) WAITING ID NO#2401207094', '', '2015-10-23', '10:28:48', 1, 10),
(685, 7, 4, 13, 'ROBERT', 497, 12, 'BLOCK A TILE FIXING AT 9TH FLOOR LIFT LOBBY AND COMMON AREA', '', '2015-10-23', '11:47:43', 1, 4),
(686, 7, 4, 13, 'ROBERT', 497, 5, 'BLOCK A PLASTERING OF TOILET WALL AT 1ST FLOOR', '', '2015-10-23', '11:48:22', 1, 4),
(687, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A MASION BUILDING TOILET WALL AND PARTITION WALL', '', '2015-10-23', '11:49:01', 1, 4),
(688, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A CARPENTER CASTING TOILET LENDERS AT 1ST FLOOR', '', '2015-10-23', '11:49:52', 1, 4),
(689, 6, 4, 15, 'ROBERT', 561, 30, 'BLOCK B MASION G.F 8/10/15', '', '2015-10-26', '16:08:03', 1, 10),
(690, 6, 4, 15, 'ROBERT', 561, 20, 'BLOCK A CARPENTER FIXING DUCT  29/9/15', '', '2015-10-26', '16:09:50', 1, 10),
(691, 6, 4, 15, 'ROBERT', 561, 15, 'BLOCK B CARPENTERS FIXING BEAM  10/10/15', '', '2015-10-26', '16:10:35', 1, 10),
(692, 6, 4, 15, 'ROBERT', 561, 15, 'BLOCK A CARPENTERS AT RC WALL  12/10/15', '', '2015-10-26', '16:11:13', 1, 10),
(693, 6, 4, 15, 'ROBERT', 561, 16, 'BLOCK B MASION BUILDING  13/10/15', '', '2015-10-26', '16:11:42', 1, 10),
(694, 8, 4, 15, 'ROBERT', 618, 0.5, 'BLOCK B MASION WORK AT G.F    12/10/2015', '', '2015-10-26', '16:22:08', 1, 10),
(695, 8, 4, 15, 'ROBERT', 618, 0.5, 'BLOCK A MASION WORK AT 1ST FLOOR   2/10/2015', '', '2015-10-26', '16:22:43', 1, 10),
(696, 6, 4, 13, 'ROBERT', 252, 3, 'BLOCK A 9TH FLOOR PAINTING 4 COURSE WALL', '', '2015-10-27', '10:23:04', 1, 17),
(697, 6, 4, 13, 'PARESH', 574, 1, 'BLOCK A PLUMBERS FIXING OF DRAINAGE SYSTEM', '', '2015-10-27', '10:24:13', 1, 10),
(698, 6, 4, 15, 'ROBERT', 255, 2, 'BLOCK A 6-2 FLOOR PAINTERS', '', '2015-10-27', '10:25:52', 1, 26),
(699, 6, 4, 15, 'ROBERT', 255, 2, 'BLOCK A PAINTERS AT MAIN STAIRS WALL 9/10/2015', '', '2015-10-27', '10:26:51', 1, 26),
(700, 6, 4, 15, 'ROBERT', 255, 2, 'BLOCK A PAINTERS CLEANERS STORE', '', '2015-10-27', '10:27:18', 1, 26),
(701, 6, 4, 4, 'HESBONE', 255, 1, 'LABELLING ITEMS ', '', '2015-10-27', '10:28:09', 1, 26),
(702, 6, 4, 13, 'ROBERT', 255, 3, 'BLOCK B PAINTERS AT CLEANING ROOM  22/10/2015', '', '2015-10-27', '10:29:05', 1, 26),
(703, 6, 4, 13, 'ROBERT', 255, 4, 'BLOCK A 9TH FLOOR PAINTING 4 COURSE WALL 27/10/2015', '', '2015-10-27', '10:29:40', 1, 26),
(704, 6, 4, 16, 'WOODWAY', 598, 12, 'BLOCK A AND B 9TH FLOOR FIXING DUCT DOOR   ORDER#013', '', '2015-10-27', '10:34:33', 1, 10),
(705, 6, 4, 16, 'WOODWAY', 596, 2, 'BLOCK A ND B 9TH FLOOR FIXING OF DUCT DOOR ORDER#013', '', '2015-10-27', '10:42:14', 1, 10),
(706, 6, 4, 7, 'VITALIS', 624, 100, 'BLOCK A B3 FIXING ANGLE LINE GENERAL DN#75', '', '2015-10-27', '11:30:39', 1, 10),
(707, 6, 4, 7, 'VITALIS', 624, 100, 'BLOCK A B3 FIXING ANGLE LINE GENERAL DN#83', '', '2015-10-27', '11:30:48', 1, 10),
(708, 6, 4, 16, 'WOODWAY', 585, 12, 'BLOCK A AND B 9TH FLOOR FIXING DUCT DOOR AND FIRE WALL', '', '2015-10-27', '11:36:09', 1, 10),
(709, 6, 4, 13, 'ROBERT', 605, 2, 'BLOCK B 5TH FLOOR CONNECTING CABLE', '', '2015-10-27', '11:41:13', 1, 10),
(710, 6, 4, 13, 'ROBERT', 604, 3, 'BLOCK B 5TH FLOOR CONNECTING CABLE FRANK', '', '2015-10-27', '11:42:45', 1, 10),
(711, 6, 4, 13, 'ROBERT', 604, 1, 'BLOCK A WIRING B1', '', '2015-10-27', '11:43:29', 1, 10),
(712, 6, 4, 13, 'ROBERT', 597, 4, 'BLOCK A AND B 9TH FLOOR FIXING DUCT', '', '2015-10-27', '11:44:48', 1, 10),
(713, 6, 4, 13, 'ROBERT', 519, 1, 'BLOCK AA 9TH FLOOR PLUMBING FIXING DRAINAGE', '', '2015-10-27', '11:45:49', 1, 10),
(714, 6, 0, 10, 'ROSEMARY', 582, 0.5, 'GIVEN TO ROSEMARY', '', '2015-10-27', '13:55:40', 0, 19),
(715, 6, 4, 13, 'ROBERT', 46, 1, 'BLOCK A 9TH FLOOR PAINTERS MATERIALS', '', '2015-10-27', '14:58:15', 1, 10),
(716, 6, 4, 13, 'ROBERT', 53, 3, 'BLOCK A PAINTERS  21/10/15', '', '2015-10-27', '15:08:20', 1, 16),
(717, 6, 4, 13, 'ROBERT', 53, 2, 'BLOCK A B3 FLOOR MIX YELLOW FOR ANGLE LINE ORDER#92  22/10/15', '', '2015-10-27', '15:09:34', 1, 16),
(718, 6, 4, 13, 'ROBERT', 53, 5, 'BLOCK A CLEANERS ROOM ORDER#006  24/10/15', '', '2015-10-27', '15:10:36', 1, 16),
(719, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS G.F ( 15/10/15', '', '2015-10-27', '15:26:30', 1, 16),
(720, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS G.F 24/10/15', '', '2015-10-27', '15:26:46', 1, 16),
(721, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS G.F 26/10/15', '', '2015-10-27', '15:27:03', 1, 16),
(722, 6, 4, 13, 'ROBERT', 65, 3, 'BLOCK B 23456 CLEANERS ROOM  15/10/15', '', '2015-10-27', '15:29:19', 1, 19),
(723, 6, 4, 13, 'ROBERT', 65, 12, 'BLOCK A 9TH FLOOR 4 COURSE WALL  2710/15', '', '2015-10-27', '15:29:56', 1, 19),
(724, 6, 4, 13, 'ROBERT', 566, 5, 'BLOCK A CLEANERS STORE 8-2 FLOOR  15/10/15', '', '2015-10-27', '15:31:05', 1, 16),
(725, 6, 4, 13, 'ROBERT', 566, 10, 'BLOCK A CLEANERS 5-2ND FLOOR  24/10/15', '', '2015-10-27', '15:31:43', 1, 16),
(726, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK A PAINTERS AT MAIN STAIRS WALL FROM B1-1ST FLOOR', '', '2015-10-27', '15:34:53', 1, 16),
(727, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK A 9TH FLOOR COMMON AREA 12/10/15', '', '2015-10-27', '15:35:28', 1, 16),
(728, 6, 4, 8, 'ROBERT', 510, 2, 'BLOCK A MAIN STAIRS CEILING 13/10/15', '', '2015-10-27', '15:36:11', 1, 16),
(729, 6, 4, 8, 'ROBERT', 510, 5, 'BLOCK B CLEANERS ROOM 8TH -2ND FLOOR 15/10/15', '', '2015-10-27', '15:36:57', 1, 16),
(730, 6, 4, 8, 'ROBERT', 510, 10, 'BLOCK A9TH FLOOR CEILING 19/10/15', '', '2015-10-27', '15:37:30', 1, 16),
(731, 6, 4, 13, 'ROBERT', 510, 15, 'BLOCK A LIFT LOBBY CEILING AND TOILET   26/10/15', '', '2015-10-27', '15:38:44', 1, 16),
(732, 6, 4, 13, 'ROBERT', 510, 20, 'BLOCK A 9TH 4 COURSE WALL  27/10/15', '', '2015-10-27', '15:46:23', 1, 16),
(733, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A MASON PARTITION WALL 9TH FLOOR   24/10/15', '', '2015-10-28', '14:49:18', 1, 4),
(734, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A PLASTER TOILET WALL 1ST FLOOOR   24/10/15', '', '2015-10-28', '14:50:11', 1, 4),
(735, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A PLASTER B3 EXIT   24/10/15', '', '2015-10-28', '14:50:49', 1, 4),
(736, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A SPLIT 10TH FLOOR   26/10/15', '', '2015-10-28', '14:52:12', 1, 4),
(737, 7, 4, 13, 'ROBERT', 497, 15, 'TILE FIXING 9TH FLOOR  26/10/15', '', '2015-10-28', '14:52:32', 1, 4),
(738, 7, 4, 13, 'ROBERT', 497, 4, 'MASION BUILDING PARTTION WALL 1ST FLOOR  26/10/15', '', '2015-10-28', '14:52:56', 1, 4),
(739, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A PLASTER TOILET WALL 1ST FLOOR  26/10/15', '', '2015-10-28', '14:53:37', 1, 4),
(740, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A PLASTER OF RAMP B3  26/10/15', '', '2015-10-28', '14:54:09', 1, 4),
(741, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS AT G.F  27/10/15', '', '2015-10-28', '14:56:20', 1, 4),
(742, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A CAST SPLINT AT 10TH FLOOR  27/10/15', '', '2015-10-28', '14:57:04', 1, 4),
(743, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A MASION BUILDING PARTITION WALL AT 1ST FLOOR  27/10/15', '', '2015-10-28', '14:57:35', 1, 4),
(744, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A PLASTER OF FIRE EXIT 1ST FLOOR  27/10/15', '', '2015-10-28', '14:58:15', 1, 4),
(745, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A CASTT PLINT 1ST FLOOR   27/10/15', '', '2015-10-28', '14:58:41', 1, 4),
(746, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A PLASTER PARTITION WALL 1ST FLOOR ORDER#015', '', '2015-10-28', '15:00:14', 1, 4),
(747, 7, 4, 13, 'ROBERT', 497, 0.5, 'REPAIR OF WALL AT 9TH FLOOR ORDER#015', '', '2015-10-28', '15:10:17', 1, 4),
(748, 7, 4, 13, 'ROBERT', 497, 0.5, 'REPAIR OF CONDUCT CHANNEL FLOOR ORDER#015', '', '2015-10-28', '15:10:41', 1, 4),
(749, 7, 4, 13, 'ROBERT', 497, 7, 'TILING CORRIDOR 1ST FLOOR ORDER#016', '', '2015-10-28', '15:11:28', 1, 4),
(750, 7, 4, 13, 'ROBERT', 497, 5, 'BLOCK A CASTING PLINT GYM TERRACE ORDER#016', '', '2015-10-28', '15:11:57', 1, 4),
(751, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A TILING 9TH FLOOR KITCHEN AND TOILET ORDER#016', '', '2015-10-28', '15:13:00', 1, 4),
(752, 7, 4, 13, 'ROBERT', 499, 0.25, 'BLOCK A PLASTER WORK', '', '2015-10-28', '16:24:23', 1, 4),
(753, 7, 4, 13, 'ROBERT', 499, 0.25, 'BLOCK A PLASTER WORK 26/10/2015', '', '2015-10-28', '16:24:48', 1, 4),
(754, 7, 4, 13, 'ROBERT', 499, 0.25, 'BLOCK A PLASTER WORK 27/10/2015', '', '2015-10-28', '16:24:55', 1, 4),
(755, 6, 4, 13, 'ROBERT', 498, 3, 'BLOCK B CLEANING G.F MOSQUE SIDE  ORDER#099    21/10/15', '', '2015-10-28', '16:29:27', 1, 16),
(756, 6, 4, 13, 'ROBERT', 498, 3, 'BLOCK B CLEANING G.F  ORDER#015    28/10/15', '', '2015-10-28', '16:29:47', 1, 16),
(757, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK B MAZERAS CLEANING AT THE BEAM  ORDER#015    ', '', '2015-10-28', '16:32:09', 1, 16),
(758, 6, 4, 13, 'ROBERT', 65, 15, 'BLOCK A 9TH FLOOR PAINTERS', '', '2015-10-28', '16:34:12', 1, 19),
(759, 6, 4, 13, 'ROBERT', 44, 1, 'BLOCK A 9TH FLOOR PLUMBERS KITCHEN SINK ORDER#015', '', '2015-10-28', '16:38:16', 1, 10),
(760, 6, 4, 13, 'JOHN', 615, 15, 'BLOCK A 9TH FLOOR LIFT LOBBY AND COMMON AREA ORDER#009', '', '2015-10-28', '16:55:12', 1, 10),
(761, 6, 4, 13, 'JOHN', 615, 29, 'BLOCK  A 9TH FLOOR LOBBY AND COMMON ORDER#014', '', '2015-10-28', '16:56:13', 1, 10),
(762, 6, 4, 13, 'JOHN', 615, 7, 'BLOCK A 9TH FLOOR TILING ORDER#019', '', '2015-10-28', '16:56:52', 1, 10),
(763, 6, 4, 13, 'JOHN', 615, 14, 'BLOCK A SKATING ORDER#019', '', '2015-10-28', '16:57:06', 1, 10),
(764, 6, 4, 6, 'MACKY', 649, 1, 'FOR CUTTING BAR MACHINE ', '', '2015-10-28', '17:13:39', 1, 10),
(765, 6, 4, 6, 'MACKY', 649, 0.5, 'FOR COVERING TRACTOR NOZZLE', '', '2015-10-28', '17:14:03', 1, 10),
(766, 6, 4, 6, 'MACKY', 649, 100, 'BLOCK A GENERATOR 26/10/15', '', '2015-10-28', '17:14:36', 1, 10),
(767, 6, 4, 10, 'MR.DUNCAN', 508, 1, '7th and 8th floor urinal ', '', '2015-10-29', '11:41:02', 1, 10),
(768, 6, 4, 10, 'MR.DUNCAN', 508, 1, '7th and 8th floor urinal  29/10/15', '', '2015-10-29', '11:41:25', 1, 10),
(769, 6, 4, 10, 'MR.DUNCAN', 533, 1, '7TH AN 8TH FLOOR CLEANING 8/10/15', '', '2015-10-29', '11:46:27', 1, 16),
(770, 6, 4, 10, 'MR.DUNCAN', 533, 0.5, '7TH AN 8TH FLOOR CLEANING 8/10/15', '', '2015-10-29', '11:46:47', 1, 16),
(771, 6, 4, 10, 'MR.DUNCAN', 533, 0.5, '7TH FLOOR CLEANING 8/10/15', '', '2015-10-29', '11:47:47', 1, 16),
(772, 6, 4, 10, 'MR.DUNCAN', 533, 0.5, '5TH  7TH 8TH  FLOOR CLEANING 28/10/15', '', '2015-10-29', '11:48:24', 1, 16),
(773, 6, 4, 10, 'MR.DUNCAN', 533, 0.5, '8TH  FLOOR CLEANING 28/10/15', '', '2015-10-29', '11:48:42', 1, 16),
(774, 6, 4, 10, 'MR.DUNCAN', 534, 0.5, '8TH  FLOOR CLEANING 8/10/15', '', '2015-10-29', '11:58:58', 1, 16),
(775, 6, 4, 10, 'ROSEMARY', 534, 0.5, '7TH  8TH  FLOOR CLEANING 8/10/15', '', '2015-10-29', '11:59:22', 1, 16),
(776, 7, 4, 13, 'YOGESH', 499, 0.25, 'BLOCK A PLASTER WORK', '', '2015-10-30', '13:06:02', 1, 4),
(777, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A PLASTER PLINT 1ST FLOOR  29/10/15', '', '2015-10-30', '13:10:16', 1, 4),
(778, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A MASON TERRACE 1ST FLOOR  29/10/15', '', '2015-10-30', '13:10:34', 1, 4),
(779, 7, 4, 13, 'TONY', 497, 4, 'BLOCK A TILE FIXING  29/10/15', '', '2015-10-30', '13:11:12', 1, 4),
(780, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A WATE PROOFING STORAGE TANK  29/10/15', '', '2015-10-30', '13:14:51', 1, 4),
(781, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A CAST PLINT ATRIUM 10TH FLOOR 30/10/15', '', '2015-10-30', '13:15:46', 1, 4),
(782, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A MASON COLUMN AT 1ST FLOOR    30/10/15', '', '2015-10-30', '13:16:30', 1, 4),
(783, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A PLASTER PARTITION 1ST FLOOR    30/10/15', '', '2015-10-30', '13:16:56', 1, 4),
(784, 7, 4, 6, 'MACKY', 497, 2, 'TO FATEJ LTD DELIVERY#3703', '', '2015-10-30', '13:17:52', 1, 4),
(785, 6, 4, 6, 'ROBERT', 649, 3, 'FOR MIXTURE B3  ORDER#022    29/10/15', '', '2015-11-02', '11:37:04', 1, 16),
(786, 6, 4, 13, 'ROBERT', 649, 3, 'FOR MIXTURE B3  ORDER#030    2/11/15', '', '2015-11-02', '11:38:25', 1, 16),
(787, 7, 4, 4, 'HESBONE', 499, 4.75, 'CONVERTED FROM SINGLE BAG TO KG', '', '2015-11-02', '11:40:26', 1, 4),
(788, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK A PLASTER WORK', '', '2015-11-02', '11:41:50', 1, 4),
(789, 7, 4, 13, 'ROBERT', 529, 12, 'BLOCK B 1ST FLOOR LOBBY    ORDER#053', '', '2015-11-02', '11:44:13', 1, 10),
(790, 7, 4, 13, 'ROBERT', 529, 80, 'BLOCK A 9TH FLOOR COMMON AREA   ORDER#098 19/10/15', '', '2015-11-02', '11:45:16', 1, 10),
(791, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A TOILET PARTITION WALLS 31/10/15', '', '2015-11-02', '12:42:00', 1, 4),
(792, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B BUILDING PARTITION WALL 4TH FL 31/10/15', '', '2015-11-02', '12:42:54', 1, 4),
(793, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTER AT 10TH FLOOR  31/10/15', '', '2015-11-02', '12:43:36', 1, 4),
(794, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER PLINTH 10TH FLOOR', '', '2015-11-02', '12:45:12', 1, 4),
(795, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER ONE COURSE WALL 1ST FLOOR', '', '2015-11-02', '12:45:37', 1, 4),
(796, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A MASION COLUMNS 1ST FLOOR', '', '2015-11-02', '12:46:00', 1, 4),
(797, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS CLEANING ORDER#030', '', '2015-11-02', '15:33:20', 1, 16),
(798, 6, 4, 13, 'ROBERT', 509, 2, 'BLOCK A MAZERAS CLEANING ORDER#031', '', '2015-11-02', '15:33:28', 1, 16),
(799, 6, 4, 13, 'ROBERT', 65, 15, 'BLOCK A SKIMMING ONE COURSE WALL ORDER#030', '', '2015-11-02', '15:34:30', 1, 19),
(800, 6, 4, 11, 'YOGESH', 707, 2, 'TO BE RPLACED', '', '2015-11-02', '16:17:11', 1, 10),
(801, 6, 4, 13, 'ROBERT', 53, 2, 'FOR ROAD MARKING TO MIX WITH YELLOW ORDER#029', '', '2015-11-03', '10:57:36', 1, 16),
(802, 6, 4, 13, 'ROBERT', 60, 4, 'FOR ROAD MARKING   ORDER#029  31/10/15', '', '2015-11-03', '10:58:39', 1, 16),
(803, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK A COLUMNS  ORDER#030  2/11/15     ', '', '2015-11-03', '11:40:48', 1, 16),
(804, 6, 4, 13, 'ROBERT', 510, 3, 'BLOCK A LIFT LOBBY  ORDER#030  2/11/15     ', '', '2015-11-03', '11:41:22', 1, 16),
(805, 6, 4, 13, 'ROBERT', 510, 3, 'BLOCK A 9TH FLOOR PAINTERS  ORDER#030  3/11/15     ', '', '2015-11-03', '11:41:51', 1, 16),
(806, 6, 4, 13, 'ROBERT', 510, 2, 'BLOCK A 8TH FLOOR PAINTERS MAINSTAIRS ORDER#030  3/11/15     ', '', '2015-11-03', '11:42:28', 1, 16),
(807, 6, 4, 6, 'MR.MUNEER', 566, 2, 'TO MR.MUNEER  27/10/15     ', '', '2015-11-03', '11:43:35', 1, 16),
(808, 6, 4, 8, 'ROBERT', 708, 5, 'BLOCK A RAMP PLASTER 26/10/15', '', '2015-11-03', '12:08:27', 1, 27),
(809, 6, 4, 8, 'ROBERT', 708, 4, 'BLOCK A B1 SCREADING REPAIR  26/10/15', '', '2015-11-03', '12:09:00', 1, 27),
(810, 6, 4, 13, 'ROBERT', 708, 10, 'PLASTER DRAINAGE CHANNEL  ORDER #033  3/11/15', '', '2015-11-03', '12:10:02', 1, 27),
(811, 6, 4, 13, 'PARESH', 516, 5, 'BLOCK A PLUMBERS 4/9/15', '', '2015-11-03', '12:15:45', 1, 19),
(812, 6, 4, 15, 'ROBERT', 516, 2, 'BLOCK B B3 PLASTER WORK ', '', '2015-11-03', '12:16:28', 1, 19),
(813, 6, 4, 15, 'ROBERT', 516, 5, 'BLOCK A B3 RAMP PLASTER  23/10/15', '', '2015-11-03', '12:16:56', 1, 19),
(814, 6, 4, 15, 'ROBERT', 516, 5, 'BLOCK A B3 RAMP PLASTER  ORDER#006  24/10/15', '', '2015-11-03', '12:17:26', 1, 19),
(815, 6, 4, 13, 'YOGESH', 707, 10, 'BLOCK B 5TH FLOOR ', '', '2015-11-03', '12:21:04', 1, 10),
(816, 7, 4, 13, 'ROBERT', 497, 4, 'PLASTER OF GYM TERRACE  1ST FLOOR', '', '2015-11-03', '12:24:53', 1, 4),
(817, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B MASION PARTITION 4TH FLOOR', '', '2015-11-03', '12:25:21', 1, 4),
(818, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B CAST DRAINAGE CHANNEL', '', '2015-11-03', '12:25:46', 1, 4),
(819, 6, 4, 6, 'YOGESH', 597, 6, 'RETURNED BACK TO WORLD SOURCE GENERAL DN#02', '', '2015-11-03', '12:58:15', 1, 10),
(820, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A PLASTER PLINT 1ST FLOOR', '', '2015-11-04', '12:45:08', 1, 4),
(821, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A TILE SKATING MAIN STAIRS G.F', '', '2015-11-04', '12:46:07', 1, 4),
(822, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER DRAINAGE SYSTEM G.F', '', '2015-11-04', '12:46:46', 1, 4),
(823, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK B MASON PARTITION WALL 4TH FLOOR', '', '2015-11-04', '12:48:14', 1, 4),
(824, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A GRANITE FIXING AT THE EXTRA TOILET SINK TOP', '', '2015-11-04', '12:48:51', 1, 4),
(825, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A 1ST FLOOR JOINT SEALANT', '', '2015-11-04', '12:49:19', 1, 4),
(826, 6, 4, 13, 'ROBERT', 708, 6, 'BLOCK A DRAINAGE SYSTEM PLASTER ', '', '2015-11-04', '12:56:47', 1, 19),
(827, 8, 4, 6, 'STEVE', 709, 1, 'GIVEN TO STEVE TOTO FOR CLEANING GENERATOR ORDER#038', '', '2015-11-04', '13:01:04', 1, 26),
(828, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK A PLASTER OF PLINT AT 1ST FLOOR GYM', '', '2015-11-05', '10:48:29', 1, 4),
(829, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B MASION BUILDING PARTITION WALL 4TH FLOOR', '', '2015-11-05', '10:49:03', 1, 4),
(830, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B TILE REPAIRING AND SKATING MAIN STAIRS', '', '2015-11-05', '10:49:36', 1, 4),
(831, 6, 4, 13, 'ROBERT', 561, 20, 'BLOCK B MASON BUILDING ORDER#001   22/10/15', '', '2015-11-05', '10:53:35', 1, 10),
(832, 6, 4, 13, 'ROBERT', 561, 12, 'BLOCK A CARPENTER ORDER#030   2/11/15', '', '2015-11-05', '10:54:11', 1, 10),
(833, 6, 4, 6, 'PARESH', 44, 1, 'BLOCK A G.F ', '', '2015-11-05', '17:41:10', 1, 10),
(834, 6, 4, 6, 'PARESH', 519, 1, 'BLOCK A G.F  PLUMBERS', '', '2015-11-05', '17:41:35', 1, 10),
(835, 8, 4, 13, 'ROBERT', 618, 1, 'FOR MASION AT 4TH FLOOR', '', '2015-11-05', '17:44:49', 1, 10),
(836, 6, 4, 13, 'ROBERT', 571, 1, 'BLOCK A FLOOR CAEPENTERS MATERIALS 24/10/15', '', '2015-11-05', '18:01:02', 1, 19),
(837, 6, 4, 13, 'ROBERT', 571, 1, 'BLOCK A FLOOR CAEPENTERS MATERIALS 5/11/15  ORDER#041', '', '2015-11-05', '18:01:33', 1, 19),
(838, 7, 4, 6, 'MACKY', 531, 1, 'TO EURECCA LTD   FOR NEW BATTERY CHARGER ', '', '2015-11-05', '18:06:41', 1, 10),
(839, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTERING OF PARTITION WALL AT 1ST FLOOR  ORDER#043', '', '2015-11-06', '12:25:05', 1, 4),
(840, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTERING OF COLUMNS AT TERRACE AT 1ST FLOOR  ORDER#043', '', '2015-11-06', '12:25:37', 1, 4),
(841, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF BEAMS AT G.F  ORDER#043', '', '2015-11-06', '12:26:04', 1, 4),
(842, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK B MASION BUILDING PARTITION WALL   ORDER#043', '', '2015-11-06', '12:26:34', 1, 4),
(843, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B TILES SKATING AT MAIN STAIRS   ORDER#043', '', '2015-11-06', '12:27:04', 1, 4),
(844, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK A PLASTER WORK   ORDER#043', '', '2015-11-06', '12:27:56', 1, 19),
(845, 6, 4, 13, 'ROBERT', 603, 2, 'BLOCK A CLEANERS ORDER#043', '', '2015-11-06', '12:32:01', 1, 10),
(846, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS CLEANING ORDER#037  4/11/15', '', '2015-11-06', '12:33:50', 1, 16),
(847, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS CLEANING ORDER#043  4/11/15', '', '2015-11-06', '12:34:05', 1, 16),
(848, 6, 4, 6, 'VITALIS', 48, 1, 'BLOCK A PAINT ANGLE LINE VITALIS  GENERAL DN#92', '', '2015-11-06', '12:38:53', 1, 10),
(849, 6, 4, 6, 'VITALIS', 48, 1, 'BLOCK A MEZZANINE STRUCTURE    ORDER#045', '', '2015-11-06', '12:39:44', 1, 10),
(850, 6, 4, 16, 'BERNARD ', 53, 0.5, 'BLOCK A MEZZANNINE RED OXIDE MIX ORDER#045', '', '2015-11-06', '13:06:13', 1, 16),
(851, 6, 4, 13, 'robert', 561, 10, 'block b carpenter 10th floor', '', '2015-11-06', '16:53:52', 1, 10),
(852, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A TILING FIXING AAT B1  7/11/15   ORDER#046', '', '2015-11-10', '09:30:20', 1, 4),
(853, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A PLASTER ONE COURSE WALL 1 FLOOR  7/11/15   ORDER#046', '', '2015-11-10', '09:31:09', 1, 4),
(854, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A PLASTER GYM TERRACE COLUMN 1ST FLOOR  7/11/15   ORDER#046', '', '2015-11-10', '09:31:54', 1, 4),
(855, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A PLASTER BEAMS G.F   7/11/15   ORDER#046', '', '2015-11-10', '09:32:53', 1, 4),
(856, 7, 4, 19, 'ROBERT', 497, 2, 'BLOCK A MASON BUILDING PARTITION WALL 4TH FLOOOR   7/11/15   ORDER#046', '', '2015-11-10', '09:34:01', 1, 4),
(857, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A WATERPROOFING EXPANSION JOINT   7/11/15   ORDER#047', '', '2015-11-10', '09:34:54', 1, 4),
(858, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A PLASTER PARTITION WALL 1ST FLOOR   8/11/15   ', '', '2015-11-10', '09:36:59', 1, 4),
(859, 7, 4, 19, 'ROBERT', 497, 1, 'REPAIR  OF B1 FLOOOR   8/11/15   ', '', '2015-11-10', '09:37:23', 1, 4),
(860, 7, 4, 19, 'ROBERT', 497, 1, 'BLOCK A PLASTER B1 FLOOR   8/11/15   ', '', '2015-11-10', '09:37:56', 1, 4),
(861, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A REPAIR KITCHEN WINDOW FRAME AT 10TH FLOOR   9/11/15    ORDER#049', '', '2015-11-10', '09:39:33', 1, 4),
(862, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTER OF PARTITION WALL 1ST FLOOR   9/11/15    ORDER#049', '', '2015-11-10', '09:40:23', 1, 4),
(863, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B MASON BUILDING PARTITION WALL AT 4TH FLOOR   9/11/15    ORDER#049', '', '2015-11-10', '09:41:00', 1, 4),
(864, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B PLASTER AND REPAIR OF FLOOR AT B1   9/11/15    ORDER#049', '', '2015-11-10', '09:41:41', 1, 4),
(865, 7, 4, 4, 'ERROR', 497, 31, 'ERROR', '', '2015-11-10', '09:42:31', 1, 4),
(866, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A PLASTER ONE COURSE WALL 1ST FLOOR 10/11/15 ORDER#052', '', '2015-11-10', '12:07:28', 1, 4),
(867, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A PLASTERING OF ONE COURSE WALL 10/11/15 ORDER#052', '', '2015-11-10', '12:08:03', 1, 4),
(868, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B CAST PLINT 10/11/15 ORDER#052', '', '2015-11-10', '12:08:33', 1, 4),
(869, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTER OF BEAMS AND COLUMNS G.F 10/11/15 ORDER#052', '', '2015-11-10', '12:09:19', 1, 4),
(870, 7, 4, 13, 'ROBERT', 497, 0.5, 'REPAIR OF WINDOWS FRAME 10TH FLOOR 10/11/15 ORDER#052', '', '2015-11-10', '12:09:56', 1, 4),
(871, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B MASION BUILDING PARTITION WALL AT 4TH FLOOR  10/11/15 ORDER#052', '', '2015-11-10', '12:10:51', 1, 4),
(872, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B 1/2 PLAASTER AND REPAIR OF FLOOR AT B1  10/11/15 ORDER#052', '', '2015-11-10', '12:11:29', 1, 4),
(873, 6, 4, 13, 'ROBERT', 252, 3, 'BLOCK A 9TH FLOOR PAINTERS 3/11/15 ORDER#033', '', '2015-11-10', '12:24:39', 1, 17),
(874, 6, 4, 13, 'ROBERT', 516, 4, 'block b2nd floor  ORDER#041 5/11/15', '', '2015-11-10', '12:49:07', 1, 16),
(875, 6, 4, 13, 'ROBERT', 516, 4, 'BLOCK A B3 FLOOR REPAIR  ORDER#048  7/11/15', '', '2015-11-10', '12:49:43', 1, 16),
(876, 6, 4, 13, 'ROBERT', 255, 2, 'for work paint bump  ORDER#001  31/10/15', '', '2015-11-10', '13:14:58', 1, 10),
(877, 6, 4, 13, 'ROBERT', 255, 3, 'FOR PAINTERS ONE COURSE  ORDER#030  2/11/15', '', '2015-11-10', '13:16:18', 1, 10),
(878, 6, 4, 13, 'ROBERT', 255, 2, 'BLOCK A 9TH FLOOR PAINTERS ORDER#033  3/11/15', '', '2015-11-10', '13:16:55', 1, 10),
(879, 6, 4, 13, 'ROBERT', 255, 2, 'BLOCK 9TH FLOOR PAINTERS ORDER#037  4/11/15', '', '2015-11-10', '13:17:32', 1, 10),
(880, 6, 4, 13, 'ROBERT', 255, 1, 'BLOCK A PLASTER WORK G.F ORDER#053  10/11/15', '', '2015-11-10', '13:18:12', 1, 10),
(881, 6, 4, 13, 'ROBERT', 255, 1, 'BLOCK  A PAINTERS 9TH FLOOR ORDER#053  10/11/15', '', '2015-11-10', '13:18:32', 1, 10),
(882, 6, 4, 13, 'ROBERT', 252, 3, 'BLOCK A 9TH FLOOR MATERIALS ORDER#033  3/11/15', '', '2015-11-10', '13:20:08', 1, 17),
(883, 6, 4, 13, 'PARESH', 574, 1, 'BLOCK B PLUMBERS RAIN WATER PIPE ORDER#025  31/10/15', '', '2015-11-10', '13:25:07', 1, 10),
(884, 6, 4, 13, 'PARESH', 574, 1, 'BLOCK B PLUMBERS RAIN WATER PIPE 9TH FLOOR ORDER#030  2/11/15', '', '2015-11-10', '13:25:38', 1, 10),
(885, 6, 4, 13, 'PARESH', 574, 1, 'ROOFING RAIN WATER TRAP 9H FLOOR ORDER#042  5/11/15', '', '2015-11-10', '13:26:24', 1, 10),
(886, 6, 4, 13, 'PARESH', 574, 1, 'BLOCK AFOR THE PVCS PLUMBERS ORDER#048  7/11/15', '', '2015-11-10', '13:26:59', 1, 10),
(887, 6, 4, 13, 'PARESH', 574, 1, 'BLOCK A PLUMBERS RAIN WATER PIPE ORDER#050  9/11/15', '', '2015-11-10', '13:27:29', 1, 10),
(888, 6, 4, 6, 'BERNARD ', 712, 1, 'BLOCK A MEZZANINE DECK G.F   9/11/15', '', '2015-11-10', '13:34:46', 1, 10),
(889, 6, 4, 6, 'BERNARD', 713, 6, 'BLOCK A G.F MEZANINE DECKING', '', '2015-11-10', '13:38:19', 1, 10),
(890, 6, 4, 6, 'BERNARD ', 714, 16, 'BLOCK A G.F MEZZANINE DECKING', '', '2015-11-10', '13:41:25', 1, 10),
(891, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK A PLASTER WORK ORDER#049', '', '2015-11-10', '14:49:00', 1, 4),
(892, 8, 4, 6, 'macky', 535, 1, 'to ravine park ltd dn#3563', '', '2015-11-10', '17:36:35', 1, 10),
(893, 8, 4, 6, 'macky', 536, 1, 'to ravine park ltd dn#3563', '', '2015-11-10', '17:36:47', 1, 10),
(894, 8, 4, 6, 'MACKY', 536, 1, 'TO WESTLAND OFFICE DN#08', '', '2015-11-10', '17:40:29', 1, 10),
(895, 8, 4, 6, 'MACKY', 535, 1, 'TO WESTLAND OFFICE DN#08', '', '2015-11-10', '17:40:40', 1, 10),
(896, 7, 4, 13, 'ROBERT', 497, 2.5, 'BLOCK A PLASTER OF COLUMN AND BEAMS AT G.F', '', '2015-11-11', '11:03:44', 1, 4);
INSERT INTO `materials_issuance` (`mat_issue_id`, `store_id`, `user_id`, `approve_user_id`, `request_by`, `mat_id`, `qty`, `issue_desc`, `issue_ref_no`, `date_issue`, `time_issue`, `site_id`, `pack_id`) VALUES
(897, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A TILE SKATING REPAIR FROM 1FL TO 4FL ORDER#054', '', '2015-11-11', '11:04:34', 1, 4),
(898, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK B CAST PLINT 10TH FLOOR ORDER#054', '', '2015-11-11', '11:05:11', 1, 4),
(899, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B MASON BUILDING PARTITION WALL AT 4TH FLOOR ORDER#054', '', '2015-11-11', '11:05:43', 1, 4),
(900, 7, 4, 13, 'ROBERT', 497, 0.5, 'REPAIR OF FLOOR B1   ORDER#054', '', '2015-11-11', '11:06:07', 1, 4),
(901, 6, 4, 13, 'ROBERT', 590, 1, 'BLOCK A G.F MEZZANINE DECKING ORDER#045', '', '2015-11-11', '11:11:04', 1, 10),
(902, 6, 4, 13, 'PARESH', 43, 1, 'BLOCK A PLUMBER AT PUMP ROOM G ORDER#052', '', '2015-11-11', '11:19:11', 1, 10),
(903, 6, 4, 13, 'ROBERT', 48, 1, 'BLOCK B PAINTERS BRIDGE MATERIALS ORDER#054', '', '2015-11-11', '11:20:12', 1, 10),
(904, 6, 4, 13, 'ROBERT', 46, 2, 'BLOCK A B1 B2 CLEANING MAZERAS  ORDER#049', '', '2015-11-11', '11:21:29', 1, 10),
(905, 6, 4, 13, 'ROBERT', 53, 3, 'BLOCK B PAINTERS BRIDGE  ORDER#054', '', '2015-11-11', '11:23:26', 1, 16),
(906, 6, 4, 13, 'ROBERT', 498, 3, 'BLOCK A B1 GLASS CLEANING  ORDER#043', '', '2015-11-11', '11:26:42', 1, 16),
(907, 6, 4, 13, 'ROBERT', 498, 3, 'BLOCK A B1 - G.F GLASS CLEANING  ORDER#049', '', '2015-11-11', '11:27:25', 1, 16),
(908, 6, 4, 13, 'ROBERT', 498, 3, 'BLOCK A GLASS CLEANING  ORDER#054   11/11/15', '', '2015-11-11', '11:27:53', 1, 16),
(909, 6, 4, 13, 'ROBERT', 543, 3, 'BLOCK B PAINTERS BRIDGE MATERIALS  ORDER#054  ', '', '2015-11-11', '11:28:53', 1, 16),
(910, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A B1 B2 MAZERAS  ORDER#046', '', '2015-11-11', '11:31:21', 1, 16),
(911, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A B1  MAZERAS  ORDER#052     10/11/15', '', '2015-11-11', '11:31:50', 1, 16),
(912, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A B1  MAZERAS  ORDER#054    11/11/15', '', '2015-11-11', '11:32:04', 1, 16),
(913, 6, 4, 6, 'BERNARD', 502, 2, 'BLOCK A MEZZANINE STRUCTURE  ORDER#045    6/11/15', '', '2015-11-11', '11:33:38', 1, 16),
(914, 6, 4, 6, 'MACKY', 510, 0.25, 'TO PAINT FRAME BOARD    6/11/15', '', '2015-11-11', '11:35:24', 1, 16),
(915, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B FIRE EXIST CEILING CORRIDOR MATERIALS  ORDER#046  7/11/15', '', '2015-11-11', '11:37:08', 1, 16),
(916, 6, 4, 13, 'ROBERT', 510, 3, 'BLOCK B COMMON AREA CEILING 9TH FLOOR  ORDER#049  9/11/15', '', '2015-11-11', '11:39:00', 1, 16),
(917, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B FIRE EXIST CORRIDOR  ORDER#049  9/11/15', '', '2015-11-11', '11:39:29', 1, 16),
(918, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B 9TH FLOOR TOILET CEILING  ORDER#052  10/11/15', '', '2015-11-11', '11:40:00', 1, 16),
(919, 6, 4, 13, 'ROBERT', 510, 1, 'BLOCK B 9TH FLOOR TOILET CEILING  ORDER#052  10/11/15', '', '2015-11-11', '11:40:11', 1, 16),
(920, 6, 4, 13, 'ROBERT', 510, 10, 'BLOCK B 9TH FLOOR LIFT LOBBY  ORDER#052  10/11/15', '', '2015-11-11', '11:40:34', 1, 16),
(921, 6, 4, 6, 'MACKY', 568, 4, 'TO AJMAN', '', '2015-11-11', '11:58:47', 1, 16),
(922, 6, 4, 6, 'MACKY', 568, 5, 'TO FORESCAPE USED TO CARRY DISEAL DN#2064   10/11/15', '', '2015-11-11', '12:00:47', 1, 16),
(923, 6, 4, 6, 'WINNIE', 716, 3, 'GIVEN TO WINNIE BLOCK A B1 CLEANING  SAS GROUP', '', '2015-11-11', '13:06:23', 1, 26),
(924, 6, 4, 13, 'ROBERT', 716, 2, 'BLOCK A B2 CLEANING ORDER#054', '', '2015-11-11', '13:08:03', 1, 26),
(925, 6, 4, 6, 'MACKY', 612, 5, 'TO WOODLAND LTD DN#3625', '', '2015-11-11', '13:10:02', 1, 10),
(926, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK A PLASER WORK', '', '2015-11-11', '13:15:23', 1, 4),
(927, 7, 4, 13, 'ROBERT', 530, 716, 'BLOCK A 9TH FLOOR COMMON AREA LIFT LOBBY  ORDER#098   19/10/15', '', '2015-11-11', '13:20:59', 1, 10),
(928, 7, 4, 13, 'ROBERT', 530, 500, 'BLOCK A 9TH FLOOR COMMON AREA LIFT LOBBY  ORDER#098   19/10/15', '', '2015-11-11', '13:21:20', 1, 10),
(929, 7, 4, 13, 'ROBERT', 530, 20, 'BLOCK A 9TH FLOOR SKATING  ORDER#014   27/10/15', '', '2015-11-11', '13:24:21', 1, 10),
(930, 7, 4, 13, 'ROBERT', 530, 72, 'BLOCK A 1ST FLOOR TILE CORRIDOR  ORDER#016  28/10/15', '', '2015-11-11', '13:25:02', 1, 10),
(931, 7, 4, 13, 'ROBERT', 530, 40, 'BLOCK A 1ST FLOOR TILE CORRIDOR  ORDER#019  28/10/15', '', '2015-11-11', '13:25:20', 1, 10),
(932, 7, 4, 13, 'ROBERT', 616, 22, 'BLOCK B B1 TOILET WALL  ORDER#046  7/11/15', '', '2015-11-11', '13:31:13', 1, 10),
(933, 7, 4, 6, 'MACKY', 616, 264, 'TO AJMAN  DELIVERY#3507  7/11/15', '', '2015-11-11', '13:32:01', 1, 10),
(934, 10, 4, 6, 'MACKY', 717, 240, 'TO GOLDEN BEACH MOMBASA  3/8/15', '', '2015-11-11', '13:40:02', 1, 10),
(935, 10, 4, 6, 'MACKY', 717, 320, 'TO GOLDEN BEACH MOMBASA  4/9/15', '', '2015-11-11', '13:40:20', 1, 10),
(936, 6, 4, 13, 'ROBERT', 510, 20, 'BLOCK B 9TH FLOOR PAINTERS MATERIALS  ORDER#056', '', '2015-11-12', '10:44:14', 1, 16),
(937, 6, 4, 7, 'EDWIN', 603, 1, 'BLOCK A 9TH FLOOR REPLACEMENT FOR CLEANERS  ORDER#055', '', '2015-11-12', '11:12:38', 1, 10),
(938, 6, 4, 4, 'CORR', 722, 2, 'WRONG ENTRY', '', '2015-11-12', '14:12:08', 1, 10),
(939, 6, 4, 6, 'BERNARD', 733, 1, 'BLOCK A G.F MEZANINE DECKING BERNARD', '', '2015-11-12', '14:58:44', 1, 26),
(940, 6, 4, 6, 'BERNARD', 733, 1, 'BLOCK A G.F MEZANINE DECKING BERNARD', '', '2015-11-12', '15:01:32', 1, 26),
(941, 6, 4, 6, 'BERNARD', 733, 1, 'BLOCK A G.F MEZANINE DECKING BERNARD', '', '2015-11-12', '15:01:33', 1, 26),
(942, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR AT THE GYM COLUMNS', '', '2015-11-12', '16:44:33', 1, 4),
(943, 7, 4, 13, 'ROBERT', 497, 0.5, 'REPAIR OF WINDOW FRAME  AT 10TH FLOOR', '', '2015-11-12', '16:45:00', 1, 4),
(944, 7, 4, 13, 'ROBERT', 497, 5, 'BLOCK B PLASTERING OF PARTITION WALL AT 4TH FLOOR', '', '2015-11-12', '16:45:36', 1, 4),
(945, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A FLOOR SCREADING AT 9TH FLOOR', '', '2015-11-12', '16:45:58', 1, 4),
(946, 6, 4, 13, 'BERNARD', 564, 1, 'BLOCK A G.F MEZZANINE BERNARD', '', '2015-11-12', '17:20:18', 1, 10),
(947, 6, 4, 6, 'MACKY', 564, 2, 'TO RAVINE PARK LTD DN#3553  15/9/15', '', '2015-11-12', '17:21:53', 1, 10),
(948, 6, 4, 6, 'MACKY', 564, 2, 'TO WESTLAND GENERAL DN#088  19/9/15', '', '2015-11-12', '17:22:30', 1, 10),
(949, 6, 4, 6, 'MACKY', 564, 2, 'TO RAVINE PARK DN#3560  28/10/15', '', '2015-11-12', '17:23:02', 1, 10),
(950, 6, 4, 6, 'MACKY', 135, 10, 'TO WOODLAND VIEW LTD DN#3635', '', '2015-11-12', '17:40:53', 1, 10),
(951, 6, 4, 6, 'MACKY', 612, 5, 'TO FORESCAPE  LTD DN#2066', '', '2015-11-12', '17:46:06', 1, 10),
(952, 7, 4, 13, 'robert', 497, 3, 'block a screading of floor 9th floor', '', '2015-11-13', '10:02:26', 1, 4),
(953, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B PLASTER PARTITION WALL 4TH FLOOR', '', '2015-11-13', '10:03:28', 1, 4),
(954, 7, 4, 13, 'WORKER', 497, 1, 'BLOCK B WATER PROOFING RAMP TANK', '', '2015-11-13', '10:04:16', 1, 4),
(955, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK B PLASTER WORK  ORDER#060', '', '2015-11-13', '10:05:51', 1, 4),
(956, 6, 4, 13, 'ROBERT', 509, 12.5, 'BLOCK A MAZERAS CLEANING', '', '2015-11-13', '10:09:30', 1, 16),
(957, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK B B1 G.F MAZERAS ORDER#059', '', '2015-11-13', '10:11:11', 1, 16),
(958, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS ORDER#060', '', '2015-11-13', '10:11:29', 1, 16),
(959, 8, 4, 6, 'MACKY', 541, 1, 'GIVEN TO JOHN MAINA CONFIRMED BY MACKY', '', '2015-11-13', '10:14:06', 1, 10),
(960, 6, 4, 10, 'ROSEMARY', 534, 0.5, 'BLOCK A 8TH FLOOR CLEANING GIVEN TO ROSEMARY', '', '2015-11-13', '15:50:30', 1, 16),
(961, 6, 4, 10, 'ROSEMARY', 534, 0.5, 'BLOCK A 7TH FLOOR CLEANING GIVEN TO ROSEMARY 28/10/15', '', '2015-11-13', '15:50:54', 1, 16),
(962, 6, 4, 10, 'FATUMA', 534, 0.5, 'BLOCK A 7TH FLOOR CLEANING GIVEN TO FATUMA 13/11/15 ORDER#15', '', '2015-11-13', '15:51:42', 1, 16),
(963, 6, 4, 10, 'FATUMA', 534, 0.5, 'BLOCK A 8TH FLOOR CLEANING GIVEN TO ROSEMARY 13/11/15 ORDER#15', '', '2015-11-13', '15:54:03', 1, 16),
(964, 6, 4, 10, 'FATUMA', 534, 0.5, 'BLOCK A 8TH FLOOR CLEANING GIVEN TO ROSEMARY 13/11/15 ', '', '2015-11-13', '15:54:40', 1, 16),
(965, 6, 4, 10, 'FATUMA', 534, 1, 'BLOCK A 7TH FLOOR CLEANING GIVEN TO FATUMA 13/11/15  ORDER#15', '', '2015-11-13', '15:55:30', 1, 16),
(966, 6, 4, 32, 'ROSEMARY', 533, 1, 'BLOCK A 8TH FLOOR ROSEMARY CLEANING ORDER#15', '', '2015-11-13', '15:58:38', 1, 16),
(967, 6, 4, 32, 'ROSEMARY', 533, 0.5, 'BLOCK A 7TH FLOOR FATUMA CLEANING ORDER#15', '', '2015-11-13', '15:58:58', 1, 16),
(968, 6, 4, 6, 'OPERATOR', 625, 0.25, 'FOR CORE DRILLING MACHINE , ', '', '2015-11-16', '13:11:25', 1, 19),
(969, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A REPAIR AT G.F BOUNDARY', '', '2015-11-16', '13:25:53', 1, 4),
(970, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTER OF PLINT 10TH FLOOR 14/11/15', '', '2015-11-16', '13:26:46', 1, 4),
(971, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A REPAIR COLUMNS AND BEAMS 9TH FLOOR 14/11/15', '', '2015-11-16', '13:27:35', 1, 4),
(972, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A PLASTER OF DOUBLE LIFT DUCT 1ST FLOOR 14/11/15', '', '2015-11-16', '13:28:06', 1, 4),
(973, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A FLOOR SCREADING 9TH FLOOR 15/11/15', '', '2015-11-16', '13:28:40', 1, 4),
(974, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A MAZERAS FIXING AT G.F BOUNDARY WALL 4TH FLOOR 15/11/15', '', '2015-11-16', '13:29:09', 1, 4),
(975, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B PLASTER PARTITION WALL 4TH FLOOR 15/11/15', '', '2015-11-16', '13:33:02', 1, 4),
(976, 7, 4, 13, 'ROBERT', 497, 0.5, 'MAZERAS FIXING AT G.F BOUNDARY WALL 15/11/15', '', '2015-11-16', '13:33:45', 1, 4),
(977, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A BALCONY FLOOR SCREADING 9TH FLOOR', '', '2015-11-16', '14:26:28', 1, 4),
(978, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK A PLASTER WORK', '', '2015-11-16', '14:29:52', 1, 4),
(979, 6, 4, 6, 'PARESH', 573, 50, 'BLOCK B B1 PLUMBERS ORDER#066', '', '2015-11-16', '14:36:55', 1, 10),
(980, 6, 4, 4, 'SYSTEM', 494, 10, 'WRONG ENTRY OF 10PCS', '', '2015-11-16', '14:41:29', 1, 10),
(981, 6, 4, 13, 'ROBERT', 493, 1, 'BLOCK A 9TH FLOOR THE BEAM ORDER#009  26/11/15', '', '2015-11-16', '14:43:27', 1, 10),
(982, 6, 4, 6, 'BERNARD', 712, 1, 'BLOCK A G.F MEZZANINE ORDER#057', '', '2015-11-16', '15:26:12', 1, 10),
(983, 6, 4, 6, 'BERNARD', 712, 1, 'BLOCK A G.F MEZZANINE ORDER#061', '', '2015-11-16', '15:27:02', 1, 10),
(984, 6, 4, 6, 'BERNARD', 712, 1, 'BLOCK A G.F MEZZANINE ORDER#064', '', '2015-11-16', '15:27:10', 1, 10),
(985, 6, 4, 6, 'BERNARD', 713, 14, 'BLOCK A G.F MEZZANINE ORDER#064', '', '2015-11-16', '15:29:37', 1, 10),
(986, 6, 4, 6, 'BERNARD', 714, 24, 'BLOCK A G.F MEZZANINE ORDER#064', '', '2015-11-16', '15:31:54', 1, 10),
(987, 6, 4, 6, 'BERNARD', 738, 4, 'BLOCK A G.F MEZZANINE BERNARD ORDER#045  6/11/15', '', '2015-11-16', '16:12:32', 1, 10),
(988, 6, 4, 6, 'BERNARD', 738, 2, 'BLOCK A G.F MEZZANINE BERNARD ORDER#064  14/11/15', '', '2015-11-16', '16:12:49', 1, 10),
(989, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B 9TH FLOOR PAINTER MATERIALS ORDER#065', '', '2015-11-16', '17:11:19', 1, 16),
(990, 6, 4, 13, 'ROBERT', 65, 10, 'BLOCK A 9TH FLOOR ONE COURSE SKIMMING ORDER#037 4/11/15', '', '2015-11-16', '17:12:23', 1, 27),
(991, 6, 4, 13, 'ROBERT', 516, 5, 'BLOCK A FOR BALCONY SCREADING   ORDER#067', '', '2015-11-16', '17:30:13', 1, 19),
(992, 7, 4, 13, 'ROBERT', 497, 3, 'BALCONY FLOOR SCREADING 9TH FLOOR', '', '2015-11-17', '16:43:26', 1, 4),
(993, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A MASON PARTITION WALL 1ST FLOOR', '', '2015-11-17', '16:43:50', 1, 4),
(994, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B PLASTER PARTITION WALL 4TH FLOOR', '', '2015-11-17', '16:44:14', 1, 4),
(995, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B FLOOR REPAIR G.F', '', '2015-11-17', '16:44:41', 1, 4),
(996, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A AND B BALCONY FLOOR SCREADING', '', '2015-11-17', '16:46:07', 1, 4),
(997, 7, 4, 6, 'MACKY', 497, 15, 'TO WOODLAND VIEW LTD DELIVERY#3639', '', '2015-11-17', '16:46:43', 1, 4),
(998, 6, 4, 13, 'ROBERT', 516, 5, 'BLOCK A FLOOR SCREADING ORDER#068', '', '2015-11-17', '16:51:52', 1, 19),
(999, 6, 4, 13, 'ROBERT', 65, 20, 'BLOCK B SKIMMING MAINSTAIRS WALL FROM B1 T0 9TH FLOOR ORDER#070', '', '2015-11-17', '17:14:03', 1, 19),
(1000, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A MAZERAS CLEANING ORDER#068', '', '2015-11-17', '17:16:13', 1, 16),
(1001, 7, 4, 13, 'ROBERT', 497, 1, 'block a plaster of plint gym terrace 1st floor', '', '2015-11-18', '11:29:28', 1, 4),
(1002, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A MASON BUILDING PARTITION WALL', '', '2015-11-18', '11:34:00', 1, 4),
(1003, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR AT G.F BOUNDARY', '', '2015-11-18', '11:34:39', 1, 4),
(1004, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B SCREAD REVOLVING RESTRAURANT FLOOR', '', '2015-11-18', '11:35:28', 1, 4),
(1005, 7, 4, 6, 'JAPHETH MWANIKI', 642, 584, 'BLOCK A 6TH FLOOR ', '', '2015-11-18', '11:37:53', 1, 10),
(1006, 6, 4, 6, 'PARESH', 44, 2, 'BLOCK A 1 AND 2 ND FLOOR HOSTRIL', '', '2015-11-18', '11:42:35', 1, 10),
(1007, 6, 4, 6, 'PARESH', 580, 1, 'BLOCK A COMMON AREA TOILET BOTTLE TOP 8TH - 6TH FLOOR REPAIR ORDER#069', '', '2015-11-18', '11:44:12', 1, 10),
(1008, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK B MAZERAS CLEANING ORDER#073', '', '2015-11-18', '11:45:08', 1, 16),
(1009, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B TERRACE 1ST FLOOR MOSQUE SIDE', '', '2015-11-18', '16:25:24', 1, 4),
(1010, 6, 4, 13, 'ROBERT', 516, 10, 'BLOCK A FLOOR SCREADING 1ST FLOOR', '', '2015-11-18', '16:26:53', 1, 19),
(1011, 7, 4, 13, 'ROBERT', 497, 5, 'BLOCK A PLASTER PARTITION WALL 1ST FLOOR ', '', '2015-11-19', '11:34:30', 1, 4),
(1012, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR GYM TERRACE', '', '2015-11-19', '11:35:00', 1, 4),
(1013, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK A PLASTER WORK', '', '2015-11-19', '11:36:41', 1, 4),
(1014, 6, 4, 6, 'ROBERT', 493, 1, 'BLOCK A G.F MEZZANINE DECK BERNARD    9/11/15', '', '2015-11-19', '11:38:05', 1, 10),
(1015, 6, 4, 6, 'ROBERT', 493, 1, 'BLOCK A G.F MEZZANINE DECK BERNARD    14/11/15', '', '2015-11-19', '11:38:33', 1, 10),
(1016, 6, 4, 6, 'BERNARD', 493, 2, 'BLOCK A G.F MEZZANINE DECK BERNARD    18/11/15', '', '2015-11-19', '11:38:58', 1, 10),
(1017, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER OF TOILET DOOR LENDER 1ST FLOOR', '', '2015-11-20', '12:12:26', 1, 4),
(1018, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR GYM TERRACE 1ST FLOOR', '', '2015-11-20', '12:12:56', 1, 4),
(1019, 7, 4, 13, 'ROBERT', 497, 5, 'BLOCK B PLASTER PARTITON WALL AT 4TH FLOOR', '', '2015-11-20', '12:13:48', 1, 4),
(1020, 8, 4, 6, 'MACKY', 500, 1, 'TO WOOD LAND VIEW LTD DN#1946   30/9/15', '', '2015-11-20', '12:27:28', 1, 24),
(1021, 8, 4, 13, 'ROBERT', 500, 0.5, 'BLOCK A PULLING IRON SHEET ORDER#090', '', '2015-11-20', '12:28:15', 1, 24),
(1022, 8, 4, 13, 'ROBERT', 500, 0.5, 'BLOCK A TRANSPORT OF MATERIALS ORDER#008 26/10/15', '', '2015-11-20', '12:29:02', 1, 24),
(1023, 8, 4, 13, 'ROBERT', 500, 0.25, 'BLOCK A BRC FIXING ORDER#080   20/11/15', '', '2015-11-20', '12:30:25', 1, 24),
(1024, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B 9TH FLOOR PAINTERS MATERIALS ORDER#065 16/11/15', '', '2015-11-20', '12:48:05', 1, 16),
(1025, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B PAINTERS MAIN STAIRS FROM 8TH FLOOR - B1 ORDER#075 20/11/15', '', '2015-11-20', '12:49:23', 1, 16),
(1026, 8, 4, 6, 'OPERATOR', 742, 2, 'TO CORE DRILLING MACHINE - HENRY', '', '2015-11-20', '13:18:37', 1, 10),
(1027, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK A TRANSEAL FOR MAZERAS CLEANING', '', '2015-11-20', '14:26:49', 1, 16),
(1028, 6, 4, 13, 'PARESH', 519, 1, 'BLOCK A 3-4TH FLOOR HOSE REEL ORDER#072  18/11/15', '', '2015-11-20', '14:57:00', 1, 10),
(1029, 6, 4, 13, 'ROBERT', 519, 1, 'BLOCK A FOR CUTTING METAL ORDER#080 20/11/15', '', '2015-11-20', '14:57:49', 1, 10),
(1030, 7, 4, 6, 'PARESH', 549, 4, 'BLOCK A 1ST FLOOR TERRACE RAIN WATER ORDER#081', '', '2015-11-20', '16:31:47', 1, 10),
(1031, 6, 4, 6, 'PARESH', 44, 2, 'BLOCK A 3-4 TH FLOOR HOSE REEL ORDER#072 18/11/15', '', '2015-11-20', '16:33:34', 1, 10),
(1032, 6, 4, 6, 'PARESH', 44, 2, 'BLOCK A 5-6 TH FLOOR HOSE REEL  PLUMBERS  ORDER#072 19/11/15', '', '2015-11-20', '16:33:58', 1, 10),
(1033, 6, 4, 6, 'PARESH', 44, 2, 'BLOCK A 5-6 TH FLOOR HOSE REEL  PLUMBERS  ORDER#081  20/11/15', '', '2015-11-20', '16:34:20', 1, 10),
(1034, 6, 4, 6, 'MACKY', 733, 1, 'TO WOODLAND VIEW LTD DN#3643', '', '2015-11-20', '17:36:54', 1, 10),
(1035, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A MASON BUILDING PARTITION WALL AT G.F ORDER#083  21/11/15', '', '2015-11-23', '10:41:14', 1, 4),
(1036, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK B PARTITION WALL AT 4TH FLOOR   ORDER#083  21/11/15', '', '2015-11-23', '10:41:33', 1, 4),
(1037, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MAZERAS REPAIR AT 1SF FLOOR MOSQUE SIDE ORDER#085  23/11/15', '', '2015-11-23', '10:49:03', 1, 4),
(1038, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MASION BUILDING ONE COURSE WALL AT G.F ORDER#085  23/11/15', '', '2015-11-23', '10:49:26', 1, 4),
(1039, 6, 4, 13, 'ROBERT', 65, 25, 'BLOCK B SKIMMING OF 3RD TO B1  ORDER#085', '', '2015-11-23', '15:26:36', 1, 19),
(1040, 6, 4, 13, 'ROBERT', 494, 1, 'BLOCK A G.F TERRACE  ORDER#052 10/11/15', '', '2015-11-23', '15:30:04', 1, 10),
(1041, 6, 4, 13, 'ROBERT', 494, 1, 'BLOCK B ELECTRICIANS 10TH FLOOR KITCHEN  ORDER#085 23/11/15', '', '2015-11-23', '15:30:41', 1, 10),
(1042, 6, 4, 6, 'MUSYOKA', 743, 10, 'BLOCK A 1ST FLOOR WELDING SLAB REINFORCEMENT', '', '2015-11-23', '15:32:20', 1, 10),
(1043, 6, 4, 6, 'MUSYOKA', 743, 15, 'BLOCK A 1ST FLOOR WELDING SLAB REINFORCEMENT', '', '2015-11-23', '15:32:32', 1, 10),
(1044, 6, 4, 6, 'PARESH', 493, 1, 'BLOCK A 9TH FLOOR PLUMBERS MATERIALS', '', '2015-11-23', '15:35:20', 1, 10),
(1045, 6, 4, 13, 'ROBERT', 498, 3, 'BLOCK B CLEANING GLASSES ORDER#073  18/11/15', '', '2015-11-23', '15:40:53', 1, 16),
(1046, 7, 4, 13, 'ROBERT', 499, 12.5, 'BLOCK B PLASTER WORK ORDER#083  21/11/15', '', '2015-11-23', '15:45:18', 1, 4),
(1047, 6, 4, 6, 'PARESH', 519, 1, 'BLOCK A 9TH FLOOR PLUMBERS MATERIALS  ORDER#084  21/11/15', '', '2015-11-23', '15:51:40', 1, 10),
(1048, 6, 4, 13, 'ROBERT', 767, 1, 'BLOCK B B2 TO HELP REMOVE WATER FROM STORAGE TANK ', '', '2015-11-23', '17:00:32', 1, 10),
(1049, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A PLASTERING OF ONE COURSE WALL G.F', '', '2015-11-23', '17:26:43', 1, 4),
(1050, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF WINDOW FRAME 9TH FLOOR ORDER#085', '', '2015-11-23', '17:27:39', 1, 4),
(1051, 6, 4, 6, 'PARESH', 574, 1, 'BLOCK A 1ST FLOOR RAIN WATER ORDER#084 21/11/15', '', '2015-11-23', '17:30:41', 1, 10),
(1052, 6, 4, 6, 'PARESH', 44, 1, 'BLOCK A 9TH FLOOR PLUMBERS ORDER#084 21/11/15', '', '2015-11-23', '17:32:41', 1, 10),
(1053, 6, 4, 13, 'ROBERT', 504, 2, 'BLOCK B 10TH FLOOR PLINT', '', '2015-11-23', '17:45:35', 1, 26),
(1054, 6, 4, 13, 'ROBERT', 504, 1, 'BLOCK A 8TH -6TH FLOOR FLOW TRAPES  ORDER#069   17/11/15', '', '2015-11-23', '17:46:31', 1, 26),
(1055, 6, 4, 13, 'ROBERT ', 510, 4, 'BLOCK A  ONE COURSE WALL AND COLUMNS AT GYM ORDER#083', '', '2015-11-23', '17:59:49', 1, 16),
(1056, 6, 4, 13, 'ROBERT ', 592, 1, 'BLOCK A PAINTERS OF ONE COURSE WALL AND COLUMNS AT GYM ORDER#083', '', '2015-11-23', '18:02:01', 1, 10),
(1057, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A REPAIR ONE COURSE WALL AND WINDOW FRAME ', '', '2015-11-24', '10:08:37', 1, 4),
(1058, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A REPAIR OF MAZERAS AT 1ST FLOOR ORDER#087', '', '2015-11-24', '10:09:27', 1, 4),
(1059, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B PLASTERING OF WINDOW FRAME AND FLOOR REPAIR AT 9TH FLOOR ORDER#087', '', '2015-11-24', '10:10:57', 1, 4),
(1060, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK B CASTING OF WALL NEXT TO THE TOILET  ORDER#087', '', '2015-11-24', '10:11:29', 1, 4),
(1061, 6, 4, 13, 'ROBERT', 649, 3, 'FOR MIXTURE B3 ORDER#030    2/11/15', '', '2015-11-24', '10:31:33', 1, 16),
(1062, 6, 4, 6, 'OPERATOR', 649, 10, 'CORE DRILLING MAACHINE    7/11/15', '', '2015-11-24', '10:32:23', 1, 16),
(1063, 6, 4, 6, 'OPERATOR', 649, 5, 'CORE DRILLING MACHINE   9/11/15', '', '2015-11-24', '10:32:57', 1, 16),
(1064, 6, 4, 13, 'ROBERT', 649, 5, 'FOR MIXTURE ORDER#060   13/11/15', '', '2015-11-24', '10:33:27', 1, 16),
(1065, 7, 4, 4, 'HESBONE', 497, 2, '2 BAGS WRONGLY UPDATED', '', '2015-11-24', '11:36:39', 1, 4),
(1066, 6, 4, 6, 'OPERRATOR', 649, 10, 'CORE DRILLING MACHINE ', '', '2015-11-24', '11:38:29', 1, 16),
(1067, 6, 4, 6, 'MACKY', 649, 10, 'TRACTOR SMALL   17/11/15', '', '2015-11-24', '11:39:17', 1, 16),
(1068, 6, 4, 6, 'OPERATOR', 649, 10, 'CORE DRILLING MACHINE    19/11/15', '', '2015-11-24', '11:39:47', 1, 16),
(1069, 6, 4, 6, 'OPERATOR', 649, 10, 'CORE DRILLING MACHINE    19/11/15', '', '2015-11-24', '11:39:47', 1, 16),
(1070, 6, 4, 6, 'MACKY', 649, 100, 'BLOCK A GENERATOR    19/11/15', '', '2015-11-24', '11:42:13', 1, 16),
(1071, 6, 4, 6, 'OPERATOR', 649, 10, 'CORE DRILLING MACHINE   23/11/15', '', '2015-11-24', '11:43:15', 1, 16),
(1072, 6, 4, 6, 'OPERATOR', 649, 10, 'CORE DRILLING MACHINE   24/11/15', '', '2015-11-24', '11:43:24', 1, 16),
(1073, 7, 4, 6, 'MACKY', 497, 20, 'TO WOODLAND VIEW LTD ', '', '2015-11-24', '12:05:57', 1, 4),
(1074, 6, 4, 6, 'MUSYOKA', 743, 25, 'BLOCK A 1ST FLOOR WELDING SLAB MOSQUE SIDE', '', '2015-11-24', '12:46:25', 1, 10),
(1075, 6, 4, 6, 'OPERATOR', 568, 1, 'TO CORED DRILLING MACHINE WITH 10LTS OF DIESEL', '', '2015-11-24', '12:54:18', 1, 10),
(1076, 7, 4, 6, 'JAPHETH MWANIKI', 642, 584, 'BLOCK A 6TH FLOOR TILING OF ELITE SPACE  18/11/15', '', '2015-11-24', '13:08:46', 1, 10),
(1077, 7, 4, 6, 'JAPHETH MWANIKI', 642, 640, 'BLOCK A 6TH FLOOR TILING OF ELITE SPACE  21/11/15   ELITE DN#2455', '', '2015-11-24', '13:13:54', 1, 10),
(1078, 7, 4, 6, 'JAPHETH MWANIKI', 642, 640, 'BLOCK A 6TH FLOOR TILING OF ELITE SPACE  23/11/15   ELITE DN#2455', '', '2015-11-24', '13:14:07', 1, 10),
(1079, 7, 4, 13, 'JOHN', 529, 24, 'BLOCK A 10TH FLOOR ATRIUM ORDER#077', '', '2015-11-24', '13:19:18', 1, 10),
(1080, 6, 4, 6, 'MACKY ', 161, 1, 'KBJ 873R    19/10/15', '', '2015-11-24', '15:02:15', 1, 10),
(1081, 6, 4, 6, 'MACKY ', 161, 1, 'CLUTCH CYLINDER KAP420J  23/10/15', '', '2015-11-24', '15:03:08', 1, 10),
(1082, 6, 4, 13, 'ROBERT', 493, 1, 'BLOCK A 1ST FLOOR GYM TERRACE BRC CUTTING ORDER#089', '', '2015-11-24', '15:06:45', 1, 10),
(1083, 8, 4, 13, 'ROBERT', 500, 0.25, 'BLOCK A FOR BRC FIXING ORDER#088', '', '2015-11-24', '15:13:13', 1, 24),
(1084, 6, 4, 13, 'ROBERT', 570, 2, 'BLOCK B 9TH FLOOR CARPENTERS    30/9/15', '', '2015-11-24', '15:32:05', 1, 19),
(1085, 6, 4, 13, 'ROBERT', 570, 1, 'BLOCK B CARPENTERS FIXING BEAM AND LENDER AT G.F    10/11/15', '', '2015-11-24', '15:33:09', 1, 19),
(1086, 6, 4, 13, 'ROBERT', 570, 10, 'TO WOODLAND LTD DN#3620    24/11/15', '', '2015-11-24', '15:33:44', 1, 19),
(1087, 6, 4, 13, 'ROBERT', 570, 1, 'BLOCK A 10TH FLOOR CARPENTER     ORDER#006   24/11/15', '', '2015-11-24', '15:34:42', 1, 19),
(1088, 6, 4, 13, 'ROBERT', 570, 1, 'BLOCK B 10TH FLOOR CARPENTERS     ORDER#041  5/11/15', '', '2015-11-24', '15:36:17', 1, 19),
(1089, 6, 4, 13, 'ROBERT', 570, 1, 'BLOCK B 10TH FLOOR CARPENTERS     ORDER#080  20/11/15', '', '2015-11-24', '15:37:10', 1, 19),
(1090, 6, 4, 13, 'ROBERT', 570, 2, 'BLOCK A 1ST FLOOR CARPENTERS SLAB SIDE     ORDER#080  24/11/15', '', '2015-11-24', '15:37:41', 1, 19),
(1091, 6, 4, 13, 'ROBERT', 570, 1, 'BLOCK B CARPENTERS     ORDER#080  20/11/15', '', '2015-11-24', '15:38:13', 1, 19),
(1092, 8, 4, 6, 'MACKY', 512, 1, 'TO EURECCA LTD DN#3458   2/10/15', '', '2015-11-24', '17:38:33', 1, 10),
(1093, 8, 4, 6, 'MACKY', 512, 2, 'TO FISH PROCESSOR LTD KISUMU  19/11/15', '', '2015-11-24', '17:39:04', 1, 10),
(1094, 6, 4, 6, 'PARESH', 671, 2, 'BLOCK A PLUMBERS 9TH FLOOR PLUMBERS', '', '2015-11-25', '12:27:35', 1, 10),
(1095, 6, 4, 6, 'MUSYOKA JOSHUA', 590, 1, 'BLOCK A AND B REPAIR WATER PUMP PIPES ', '', '2015-11-25', '13:09:23', 1, 10),
(1096, 6, 4, 6, 'JAMES', 779, 50, 'FOR GENERATOR SHADE WELDING ', '', '2015-11-25', '13:11:31', 1, 10),
(1097, 6, 4, 6, 'MUSYOKA JOSHUA', 779, 50, 'REPAIR WATER PUMP PIPES MUSYOKA JOSHUA', '', '2015-11-25', '13:12:42', 1, 10),
(1098, 6, 4, 13, 'ROBERT', 255, 1, 'BLOCK B 9TH FLOOR PAINTERS ORDER#059   12/11/15', '', '2015-11-25', '13:18:30', 1, 10),
(1099, 6, 4, 13, 'ROBERT', 255, 1, 'BLOCK A FOR PAINTERS ORDER#090   25/11/15', '', '2015-11-25', '13:19:16', 1, 10),
(1100, 6, 4, 13, 'ROBERT', 255, 2, 'BLOCK B PAINTERS MATERIALS ORDER#090   25/11/15', '', '2015-11-25', '13:19:39', 1, 10),
(1101, 6, 4, 13, 'ROBERT', 65, 3, 'BLOCK A COLUMN OF GYM ORDER#090', '', '2015-11-25', '13:21:16', 1, 19),
(1102, 6, 4, 13, 'ROBERT', 65, 18, 'BLOCK B MAINSTAIRS SKIMMING ORDER#090', '', '2015-11-25', '13:22:30', 1, 19),
(1103, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B MAINSTAIRS WALL B1 TO 4TH FLOOR ORDER#087', '', '2015-11-25', '13:29:48', 1, 16),
(1104, 6, 4, 13, 'ROBERT', 510, 5, 'BLOCK B MAINSTAIRS ORDER#090  25/11/15', '', '2015-11-25', '13:30:29', 1, 16),
(1105, 6, 4, 13, 'ROBERT', 763, 5, 'BLOCK A GAP FILLING AT G.F   ORDER#090', '', '2015-11-25', '13:33:47', 1, 10),
(1106, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER OF GAP BTW WINDOW AND BEAM ORDER#090', '', '2015-11-25', '17:43:59', 1, 4),
(1107, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A BUILDING OF A WALL MAASAI MOSQUE   ORDER#090', '', '2015-11-25', '17:44:48', 1, 4),
(1108, 7, 4, 6, 'JAMES ', 497, 2, 'BUILDING GENERATOR SHADE   ORDER#090', '', '2015-11-25', '17:45:48', 1, 4),
(1109, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER OF WINDOW FRAME GAP AT G.F  27/11/15', '', '2015-11-30', '11:33:12', 1, 4),
(1110, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A MASION BUILDING MAASAI HOUSE WALL  27/11/15', '', '2015-11-30', '11:33:38', 1, 4),
(1111, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTERING OF ONE COURSE WALL WINDOW FRAME   28/11/15', '', '2015-11-30', '11:34:51', 1, 4),
(1112, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A MASON BUILDING WALL AT MAASAI HOUSE WALL   28/11/15', '', '2015-11-30', '11:35:45', 1, 4),
(1113, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B MAZERAS REPAIR AT G.F BEAM AND COLUMNS   28/11/15', '', '2015-11-30', '11:36:30', 1, 4),
(1114, 7, 4, 13, 'ROBERT', 497, 1, 'CASTING OF COLUMNS AT MAASAI HOUSE WALL   30/11/15', '', '2015-11-30', '11:37:15', 1, 4),
(1115, 7, 4, 13, 'ROBERT', 497, 0.5, 'REPAIR OF TOILET WINDOW AND DOOR FRAME   30/11/15', '', '2015-11-30', '11:37:44', 1, 4),
(1116, 7, 4, 13, 'ROBERT', 497, 3, 'FLOOR SCREADING AT BALCONY AT 9TH FLOOR   30/11/15', '', '2015-11-30', '11:38:21', 1, 4),
(1117, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B MAZERAS REPAIR AT G.F BEAMS AND COLUMNS   30/11/15', '', '2015-11-30', '11:38:50', 1, 4),
(1118, 7, 4, 6, 'MATHEW', 805, 36, 'BLOCK B FIXING GENERATOR MATHEW GENERAL DELIVERY#19  17/11/15', '', '2015-11-30', '12:34:10', 1, 17),
(1119, 7, 4, 6, 'MATHEW - POWER MANAGEMENT', 805, 9.2, 'BLOCK B CONNECTING GENERATOR BLOCK B GENERAL DELIVERY#25', '', '2015-11-30', '12:38:17', 1, 17),
(1120, 7, 4, 6, 'MATHEW', 796, 50, 'BLOCK B CONNECTING GENERATOR -GENERAL DELIVVERY#25-  TO POWER MANAGEMENT ', '', '2015-11-30', '12:43:22', 1, 17),
(1121, 6, 4, 6, 'MATHEW', 797, 4, 'BLOCK B CONNECTING GENERATOR - MATHEW POWER MANAGEMENT LTD- GENERAL DELIVERY#25', '', '2015-11-30', '12:48:30', 1, 10),
(1122, 6, 4, 6, 'MATHEW', 798, 100, 'BLOCK B CONNECTING GENERATOR - MATHEW POWER MANAGEMENT LTD- GENERAL DELIVERY#25', '', '2015-11-30', '12:49:02', 1, 10),
(1123, 6, 4, 6, 'FRANK', 636, 55, 'BLOCK A 9TH FLOOR COMMON AREA, LIFT LOBBY, FIRE EXIT AND COMMON TOILET  ORDER#094     27/11/15', '', '2015-11-30', '14:09:23', 1, 10),
(1124, 6, 4, 13, 'ROBERT', 252, 3, 'BLOCK A PAINTERS MATERIALS BRIDGE ORDER#054', '', '2015-11-30', '16:08:21', 1, 17),
(1125, 6, 4, 13, 'ROBERT', 252, 3, 'BLOCK A PAINTERS MATERIALS ORDER#093  27/11/15', '', '2015-11-30', '16:10:22', 1, 17),
(1126, 6, 4, 13, 'ROBERT', 252, 3, 'BLOCK A MAINSTAIRS WALL ORDER#093  27/11/15', '', '2015-11-30', '16:16:39', 1, 17),
(1127, 6, 4, 6, 'LERNARD', 568, 11, 'T0 WOODLAND VIEW LTD 25/11/15', '', '2015-11-30', '16:20:49', 1, 10),
(1128, 6, 4, 6, 'LERNARD', 568, 10, 'T0 WOODLAND VIEW LTD  CARRY DIESEL  27/11/15', '', '2015-11-30', '16:21:16', 1, 10),
(1129, 6, 4, 13, 'ROBERT', 566, 25, 'BLOCK A MAINSTAIRS WALL ORDER#093', '', '2015-11-30', '16:23:20', 1, 16),
(1130, 6, 4, 13, 'ROBERT', 566, 12, 'BLOCK B MAINSTAIRS 2ND - B1 ORDER#096', '', '2015-11-30', '16:23:56', 1, 16),
(1131, 6, 4, 13, 'ROBERT', 46, 1, 'BLOCK A PAINTERS AT GYM COLUMNS ORDER#093 27/11/15', '', '2015-11-30', '16:26:17', 1, 10),
(1132, 6, 4, 13, 'PARESH', 580, 1, 'BLOCK A 9TH FLOOR PLUMBERS ORDER#084 21/11/15', '', '2015-11-30', '16:32:26', 1, 16),
(1133, 6, 4, 13, 'PARESH', 580, 1, 'BLOCK A WATER PUMP B3 ORDER#018 28/10/15', '', '2015-11-30', '16:47:05', 1, 10),
(1134, 6, 4, 13, 'PARESH', 580, 1, 'BLOCK B 1ST FLOOR  TOILET PLUMBERS  ORDER#096 30/11/15', '', '2015-11-30', '16:49:08', 1, 10),
(1135, 6, 4, 13, 'FRANK', 604, 5, 'BLOCK  B 9TH FLOOR AND STREET LIGHT ORDER#028  31/10/15', '', '2015-11-30', '17:05:15', 1, 10),
(1136, 6, 4, 6, 'MACKY', 604, 6, 'TO WOODLAND VIEW LTD  7/11/15', '', '2015-11-30', '17:06:58', 1, 10),
(1137, 6, 4, 6, 'GARDENERS', 591, 1, 'GARDENERS CUTTING GRASS  21/11/15', '', '2015-11-30', '17:14:34', 1, 10),
(1138, 6, 4, 6, 'GARDENERS', 591, 2, 'GARDENERS CUTTING GRASS -  ERICK KIRIBA  -30/11/15', '', '2015-11-30', '17:15:19', 1, 10),
(1139, 6, 4, 6, 'JAMES', 779, 25, 'WELDING OF GENERATOR SHADE ', '', '2015-11-30', '17:38:39', 1, 10),
(1140, 6, 4, 6, 'JAMES', 564, 1, 'FOR GENERATOR SHADE   25/11/15', '', '2015-11-30', '17:39:30', 1, 10),
(1141, 6, 4, 6, 'JAMES', 733, 1, 'BROUGHT TO OFFICE FOR LOOSE RODS   24/11/15', '', '2015-11-30', '17:40:29', 1, 10),
(1142, 6, 4, 6, 'MACKY', 156, 2, 'FOR BAR CUTTING MACHINE - RED   -   ', '', '2015-11-30', '17:44:55', 1, 16),
(1143, 6, 4, 6, 'JOHN', 633, 2, 'FOR GENERATOR BATTERY GIVEN TO JOHN', '', '2015-12-01', '09:49:36', 1, 10),
(1144, 6, 4, 6, 'JOHN', 525, 2, 'FOR GENERATOR BATTERY (  MR.FIROZ ) GIVEN TO JOHN', '', '2015-12-01', '09:50:41', 1, 16),
(1145, 6, 4, 6, 'MACKY', 568, 20, 'TO WOODLAND VIEW LTD', '', '2015-12-01', '12:48:23', 1, 10),
(1146, 6, 4, 6, 'JAMES', 766, 1, 'FOR WORKSHOP  - CUTTING G.I PIPES 3\'\' 4\'\' 6\'\' - JAMES', '', '2015-12-01', '12:52:42', 1, 10),
(1147, 6, 4, 13, 'ROBERT', 566, 6, 'BLOCK B PAINTERS MATERIALS MAINSTAIRS  ORDER#098', '', '2015-12-01', '13:06:09', 1, 16),
(1148, 6, 4, 13, 'ROBERT', 619, 2, 'BLOCK A 1ST FLOOR SLAB EXTENSION  ORDER#096', '', '2015-12-01', '13:10:09', 1, 19),
(1149, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK A REPAIR OF WINDOW AND DOOR FRAME B1', '', '2015-12-01', '13:28:36', 1, 4),
(1150, 7, 4, 13, 'ROBERT', 497, 4, 'BLOCK B FLOOR SCREAD 9TH FLOOR', '', '2015-12-01', '13:29:44', 1, 4),
(1151, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B PLASTER OF ONE COURSE WALL AT 3RD FLOOR', '', '2015-12-01', '13:30:33', 1, 4),
(1152, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B REPAIR OF COLUMNS AT 9TH FLOOR', '', '2015-12-01', '13:31:01', 1, 4),
(1153, 7, 4, 6, 'MACKY', 497, 20, 'TO WOODLAND VIEW LTD DELIVERY NO#3659', '', '2015-12-01', '13:32:01', 1, 4),
(1154, 7, 4, 16, 'JOHN', 497, 3, 'BLOCK A TILE FIXING 1ST FLOOR ', '', '2015-12-01', '13:37:07', 1, 4),
(1155, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK B MAZERAS CLEANING  ORDER#094    27/11/15', '', '2015-12-01', '14:13:34', 1, 16),
(1156, 6, 4, 13, 'ROBERT', 509, 3, 'BLOCK B MAZERAS CLEANING G.F  ORDER#095    28/11/15', '', '2015-12-01', '14:14:53', 1, 16),
(1157, 6, 4, 12, 'PLUMBERS', 574, 1, 'BLOCK B 1ST FLOOR TOILET MATERIALS', '', '2015-12-01', '15:25:22', 1, 10),
(1158, 6, 4, 12, 'PLUMBERS', 580, 1, 'BLOCK B 1ST FLOOR TOILET MATERIALS ORDER#099', '', '2015-12-01', '15:28:20', 1, 10),
(1159, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B FLOOR SCREADING MOSQUE SIDE BALCONY 9TH FLOOR ORDER#100', '', '2015-12-01', '15:49:41', 1, 4),
(1160, 7, 4, 38, 'JOHN', 529, 3, 'FOR BLOCK A 1ST FLOOR', '', '2015-12-01', '17:48:11', 1, 10),
(1161, 7, 4, 38, 'JOHN', 530, 12, 'FOR BLOCK A 1ST FLOOR    ORDER#097', '', '2015-12-01', '17:48:51', 1, 10),
(1162, 6, 4, 6, 'OPERATOR', 156, 7, 'CORE DRILLING MACHINE SERVICE', '', '2015-12-02', '11:19:14', 1, 16),
(1163, 6, 4, 6, 'OPERATOR', 816, 30, 'CORE DRILLING MACHINE SERVICE         7/11/15', '', '2015-12-02', '13:29:42', 1, 16),
(1164, 6, 4, 6, 'OPERATOR', 816, 10, 'CORE DRILLING MACHINE SERVICE         2/12/15', '', '2015-12-02', '13:30:22', 1, 16),
(1165, 6, 4, 6, 'MECHANIC', 625, 2, 'FOR TESTING GREASE GUN  20/11/15', '', '2015-12-02', '13:32:53', 1, 19),
(1166, 6, 4, 6, 'MECHANIC', 625, 2, 'FOR TESTING GREASE GUN - ANOTHER REQUEST-  20/11/15', '', '2015-12-02', '13:33:37', 1, 19),
(1167, 6, 4, 6, 'OPERATOR', 625, 0.25, 'FOR CORE DRILLING MACHINE  20/11/15', '', '2015-12-02', '13:34:18', 1, 19),
(1168, 6, 4, 6, 'OPERATOR  / HENRY', 625, 2, 'FOR CORE DRILLING MACHINE SERVICE 2/12/15', '', '2015-12-02', '13:34:58', 1, 19),
(1169, 6, 4, 13, 'FRANK', 604, 3, 'BLOCK A G.F ELECTRICIANS  12//11/15', '', '2015-12-02', '14:29:55', 1, 10),
(1170, 6, 4, 13, 'FRANK', 604, 3, 'BLOCK A 9TH FLOOR FIXING DOWN LIGHTERS  27//11/15', '', '2015-12-02', '14:30:45', 1, 10),
(1171, 6, 4, 6, 'MACKY', 605, 6, 'TO WOODLAND VIEW LTD  7//11/15', '', '2015-12-02', '14:31:46', 1, 10),
(1172, 6, 4, 6, 'OMARE', 762, 2, 'BLOCK B LIFTING MACHINE -  OMARE  -', '', '2015-12-02', '16:21:37', 1, 10),
(1173, 8, 4, 6, 'MACKY', 641, 2, 'TO RAVINE PARK DELVERY NO#3559    S/NO C6C55180920194 , C6C55180920167           DATE 15/10/15 ', '', '2015-12-02', '17:00:24', 1, 10),
(1174, 7, 4, 13, 'ROBERT', 497, 1.5, 'BLOCK A PLASTER OF WINDOW FRAME GYM ', '', '2015-12-02', '17:41:26', 1, 4),
(1175, 7, 4, 13, 'ROBERT', 497, 0.5, 'BLOCK B PLASTER OF ONE COURSE WALL 3RD FLOOR', '', '2015-12-02', '17:42:23', 1, 4),
(1176, 7, 4, 13, 'ROBERT', 497, 1.5, 'MASION BUILDING PARTITION WALL AT G.F', '', '2015-12-02', '17:42:51', 1, 4),
(1177, 6, 4, 16, 'FRED', 825, 1, 'BLOCK A AND B FIXING DUCT DOOR - WOODWAY', '', '2015-12-03', '11:00:10', 1, 16),
(1178, 6, 4, 6, 'JOHN', 625, 0.5, 'FOR MIXTURE MACHINE - BLOCK A SLAB EXTENSION', '', '2015-12-03', '11:02:43', 1, 16),
(1179, 6, 4, 13, 'FRANK', 636, 1, 'BLOCK A 9TH FLOOR COMMON AREA TOILET ORDER#005', '', '2015-12-03', '11:05:54', 1, 10),
(1180, 6, 4, 6, 'ALIKHAN', 710, 2, 'TO MR.ALIKHAN TO BE FITTED INTO THE GENERATOR   5/11/15', '', '2015-12-03', '11:30:55', 1, 10),
(1181, 7, 4, 13, 'ROBERT', 497, 48, 'BLOCK A CASTING OF SLAP 1ST FLOOR GYM ORDER#003', '', '2015-12-03', '11:39:25', 1, 4),
(1182, 7, 4, 13, 'ROBERT', 497, 2, 'MASION MAASI HOUSE WALL  ORDER#003', '', '2015-12-03', '11:40:39', 1, 4),
(1183, 6, 4, 13, 'ROBERT', 762, 2, 'FOR MIXTURE MACHINE BLOCK A EXTENSION SLAB', '', '2015-12-03', '11:44:39', 1, 16),
(1184, 6, 4, 13, 'ROBERT', 762, 3, 'BLOCK A CRANE', '', '2015-12-03', '11:44:58', 1, 16),
(1185, 6, 4, 13, 'ROBERT', 762, 2, 'BLOCK A VIBRATOR MACHINE', '', '2015-12-03', '11:45:36', 1, 16),
(1186, 6, 4, 13, 'ROBERT', 649, 5, 'BLOCK A FOR MIXTURE MACHINE  SLAB EXTENSION', '', '2015-12-03', '11:47:40', 1, 16),
(1187, 6, 4, 16, 'RWOODWAY -FRED', 596, 2, 'BLOCK A AND B FIXING DUCT DOOR    ORDER#004', '', '2015-12-03', '11:50:24', 1, 10),
(1188, 6, 4, 13, 'ROBERT', 762, 2, 'BLOCK A 1ST FLOOR EXTENSION FOR CRANE    ORDER#005', '', '2015-12-03', '12:06:35', 1, 16),
(1189, 6, 4, 6, 'YOGESH', 762, 4, 'BLOCK A 1ST FLOOR SLAB EXTENSION - CRANE AND VIBRATOR', '', '2015-12-03', '13:54:39', 1, 16),
(1190, 8, 4, 6, 'SAMMY', 542, 2, 'BLOCK A 1ST FLOOR SLAB EXTENSION - RED AND GREEN', '', '2015-12-03', '14:10:02', 1, 10),
(1191, 8, 4, 6, 'MUTINDA BENJAMIN', 542, 2, 'TO BENJAMIN MUTINDA - RED AND GREEN', '', '2015-12-03', '14:11:48', 1, 10),
(1192, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A 1ST FLOOR CASTING SLAP ', '', '2015-12-03', '16:42:54', 1, 4),
(1193, 6, 4, 13, 'ROBERT', 510, 2, 'BLOCK B MAINSTAIRS  ORDER#098  1/12/15', '', '2015-12-03', '17:31:24', 1, 16),
(1194, 6, 4, 13, 'ROBERT', 510, 2, 'BLOCK B FOR 7TH FLOOR WALL AND ONE COURSE WALL  ORDER#001  2/12/15', '', '2015-12-03', '17:34:13', 1, 16),
(1195, 6, 4, 13, 'ROBERT', 510, 3, 'BLOCK B FOR 7TH FLOOR WALL AND ONE COURSE WALL  ORDER#003  3/12/15', '', '2015-12-03', '17:35:11', 1, 16),
(1196, 6, 4, 13, 'ROBERT', 65, 2, 'BLOCK B PAINTERS AT 7TH FLOOR ORDER#003   ', '', '2015-12-03', '17:45:32', 1, 19),
(1197, 6, 4, 13, 'PLUMBERS', 671, 4, 'BLOCK B PLUMBERS REPAIRING TOILET SYSTEMS AND TAPS ORDER#003   ', '', '2015-12-03', '17:48:41', 1, 10),
(1198, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A SCREAD OF 1ST FLOOR SLAB  ORDER#008', '', '2015-12-04', '10:14:55', 1, 4),
(1199, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK A PLASTER OF PLINT AT G.F  ORDER#008', '', '2015-12-04', '10:15:19', 1, 4),
(1200, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK A CAST OF PLINT AT SLAB  ORDER#008', '', '2015-12-04', '10:15:49', 1, 4),
(1201, 7, 4, 13, 'ROBERT', 497, 2, 'BLOCK B MASION PARTITION WALL AT G.F  ORDER#008', '', '2015-12-04', '10:16:18', 1, 4),
(1202, 7, 4, 13, 'ROBERT', 497, 3, 'BLOCK A CAST AND PLASTER OF PLINT 1ST FLOOR ORDER#011', '', '2015-12-04', '17:37:05', 1, 4),
(1203, 7, 4, 13, 'ROBERT', 497, 1, 'BLOCK B REPAIR OF FLOOR AT 1ST FLOOR  ORDER#011', '', '2015-12-04', '17:37:38', 1, 4),
(1204, 7, 4, 13, 'ROBERT', 497, 25, 'BLOCK A CASTING OF SLAP AT 1ST FLOOR MOSQUE SIDE  ORDER#012', '', '2015-12-04', '17:38:21', 1, 4),
(1205, 7, 4, 6, 'JAPHETH MWANIKI', 642, 820, 'BLOCK A 6TH FLOOR TILING  - JAPHETH MWANIKI  -', '', '2015-12-04', '17:41:40', 1, 10),
(1206, 6, 4, 13, 'ROBERT', 763, 6, 'BLOCK B WATERPROOFING OF FLOOR SCREAD ORDER#096   30/11/15', '', '2015-12-04', '17:47:08', 1, 26),
(1207, 6, 4, 13, 'ROBERT', 763, 4, 'BLOCK B WATERPROOFING OF FLOOR SCREAD ORDER#098   1/12/15', '', '2015-12-04', '17:48:28', 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `materials_request_form`
--

DROP TABLE IF EXISTS `materials_request_form`;
CREATE TABLE `materials_request_form` (
  `mat_req_id` int(11) NOT NULL,
  `mat_req_ref_no` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mat_req_status` enum('Approved','Pending','Cancelled','Completed') NOT NULL,
  `mat_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `mat_desc` varchar(200) NOT NULL,
  `mat_req_date` date NOT NULL,
  `mat_req_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materials_stock`
--

DROP TABLE IF EXISTS `materials_stock`;
CREATE TABLE `materials_stock` (
  `mat_stock_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `min_stock_level` int(11) NOT NULL,
  `max_stock_level` int(11) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `add_time` time DEFAULT NULL,
  `stock_desc` varchar(200) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials_stock`
--

INSERT INTO `materials_stock` (`mat_stock_id`, `store_id`, `min_stock_level`, `max_stock_level`, `mat_id`, `quantity`, `pack_id`, `user_id`, `add_date`, `add_time`, `stock_desc`, `site_id`) VALUES
(1, 2, 1, 1, 129, 10, 10, 1, '2015-08-13', '15:21:26', 'No Desc', 0),
(2, 2, 10, 80, 279, 90, 10, 1, '2015-08-13', '15:22:44', 'No desc', 0),
(3, 1, 40, 80, 279, 80, 10, 1, '2015-08-13', '15:28:18', 'No Desc', 0),
(4, 2, 10, 20, 38, 16, 10, 1, '2015-08-13', '15:59:20', 'no desc', 0),
(5, 2, 1, 2, 99, 2, 10, 1, '2015-08-13', '17:41:40', 'dgdfg', 0),
(6, 2, 12, 20, 281, 200, 10, 1, '2015-08-14', '14:29:41', 'No Desc', 0),
(7, 1, 20, 70, 281, 146, 10, 1, '2015-08-15', '10:16:44', 'No Desc', 0),
(8, 1, 5, 2, 150, 14, 10, 1, '2015-08-15', '10:34:41', 'no desc', 0),
(9, 1, 5, 2, 264, 12, 10, 1, '2015-08-15', '10:36:34', 'no desc', 0),
(10, 1, 10, 300, 121, 201, 10, 1, '2015-08-15', '10:38:01', 'No desc', 0),
(11, 1, 5, 20, 130, 15, 10, 1, '2015-08-15', '10:47:29', 'No Desc', 0),
(12, 2, 1, 2, 283, 1, 23, 1, '2015-08-15', '11:43:51', 'no desc', 0),
(13, 2, 1, 2, 285, 1, 23, 1, '2015-08-17', '10:06:44', 'No Desc', 0),
(14, 2, 10, 150, 465, 50, 10, 1, '2015-08-17', '15:51:48', 'No Desc', 0),
(15, 8, 1, 2, 489, 2, 10, 4, '2015-08-18', '09:42:09', ' 2 Red Metallic Ladders', 1),
(16, 6, 5, 100, 252, 3, 17, 4, '2015-08-25', '12:24:48', 'ROUGH SAND PAPER P#100', 1),
(17, 6, 5, 100, 491, 0, 16, 4, '2015-08-25', '13:13:00', 'SILK VINYL MATT EMULSION - WHITE', 1),
(18, 6, 2, 20, 493, 6, 18, 4, '2015-08-25', '15:09:12', 'CUTTING DISK NORMAL   7\'\'', 1),
(19, 6, 2, 20, 494, 2, 10, 4, '2015-08-25', '15:14:42', 'CUTTING DISK - DIAMOND - 7\'\'', 1),
(20, 6, 30, 300, 495, 311, 10, 4, '2015-08-26', '13:27:37', 'STEEL NAIL 2\'\'', 1),
(21, 7, 100, 400, 497, 233, 4, 4, '2015-08-28', '11:29:06', 'MOMBASA NYUMBA CEMENT', 1),
(23, 6, 5, 50, 498, 20, 16, 4, '2015-08-28', '12:39:22', 'STANDARD THINNER OF 20LTS JERRY CAN', 1),
(24, 7, 2, 20, 499, 137.5, 4, 4, '2015-08-28', '15:02:39', 'LIME SLUDGE - CHOKA - 50KG BAG', 1),
(25, 8, 2, 30, 500, 0.25, 10, 4, '2015-08-28', '17:43:28', 'BINDING WIRE - EASY/ SOFT TYPE', 1),
(26, 8, 10, 70, 501, 0, 16, 4, '2015-08-31', '17:42:26', 'WATER SEAL / HARNER - IN BLUE DRUM YARD STORE', 1),
(27, 6, 8, 50, 502, 15.5, 16, 4, '2015-09-01', '06:22:52', 'RED OXIDE - PREMIER - 4LITRES TINS', 1),
(28, 6, 50, 500, 65, 55, 19, 4, '2015-09-01', '06:31:12', 'GYPSUM FILLER - 25KG BAG', 1),
(29, 6, 10, 200, 504, 49, 10, 4, '2015-09-01', '06:46:42', 'TILE GROUT - 3KG BAG', 1),
(30, 6, 4, 50, 135, 5, 10, 4, '2015-09-02', '15:26:59', 'STEEL WIRED BRUSHES', 1),
(31, 7, 5, 100, 506, 0, 10, 4, '2015-09-02', '15:50:27', 'OVERALL', 1),
(32, 6, 5, 20, 507, 2, 10, 4, '2015-09-02', '15:59:41', 'RECEIVED FROM DUNCAN', 1),
(33, 6, 4, 50, 508, 2, 10, 4, '2015-09-02', '16:02:36', 'TOILET BALLS', 1),
(34, 6, 10, 300, 34, 420, 22, 4, '2015-09-02', '16:05:25', 'THREAD SEAL TAPE', 1),
(35, 6, 4, 40, 46, 2, 10, 4, '2015-09-02', '16:07:33', 'PAINT BRUSH 6\'\'', 1),
(36, 6, 40, 100, 509, 14, 16, 4, '2015-09-02', '16:30:52', 'TRANSEAL 20LTS JERRY CAN', 1),
(37, 6, 10, 100, 510, 62.75, 16, 4, '2015-09-02', '17:11:11', 'WHITE UNDERCOAT -20LTS BUCKET', 1),
(38, 6, 5, 70, 161, 7, 10, 4, '2015-09-02', '17:53:32', 'BRAKE FLUID - 300ML', 1),
(39, 6, 4, 50, 511, 0, 10, 4, '2015-09-03', '10:59:33', 'ARABIC SHOWER - COBRA -', 1),
(40, 6, 5, 50, 158, 6, 16, 4, '2015-09-03', '13:07:11', 'CC 140 DIFF OIL', 1),
(41, 6, 20, 100, 501, 0, 16, 4, '2015-09-03', '13:25:50', 'WATER SEAL  / HARDNER||', 1),
(42, 8, 2, 40, 512, 4, 10, 4, '2015-09-03', '14:11:55', 'ORBITA SAFE NO:2045', 1),
(43, 8, 3, 40, 513, 0, 10, 4, '2015-09-03', '14:16:20', 'ORBITA SAFE NO:2043', 1),
(44, 8, 1, 30, 514, 1, 10, 4, '2015-09-03', '14:35:32', 'ORBITA SAFE GSR008', 1),
(45, 6, 4, 50, 515, 10, 10, 4, '2015-09-03', '16:50:04', 'DUST COAT', 1),
(46, 6, 20, 3000, 517, 884, 10, 4, '2015-09-03', '17:13:56', 'WOOD SCREW 8Gx2\'\'', 1),
(47, 6, 3, 50, 518, 1, 10, 4, '2015-09-03', '17:16:15', 'SUPPLIED BY KUTCH DN:5475', 1),
(48, 6, 4, 50, 519, 8, 10, 4, '2015-09-03', '17:19:00', 'SUPPLIED BY KUTCH DN#5475', 1),
(49, 6, 5, 80, 516, 0, 19, 4, '2015-09-03', '17:26:09', 'WATER PROOF / HYSEAL', 1),
(50, 8, 4, 100, 521, 0, 10, 4, '2015-09-04', '10:14:51', 'HELMET - PURPLE', 1),
(51, 8, 5, 100, 522, 0, 10, 4, '2015-09-04', '10:51:44', 'HELMET - GREY -', 1),
(52, 8, 5, 100, 523, 0, 10, 4, '2015-09-04', '10:58:05', 'IN STORE', 1),
(53, 8, 5, 100, 524, 21, 10, 4, '2015-09-04', '11:19:24', 'IN STORE', 1),
(54, 6, 1, 50, 526, 0, 10, 4, '2015-09-04', '16:21:54', 'SUPPLIED BY KEN ALLUMINIUM RODUCTS LTD', 1),
(56, 6, 10, 50, 527, 0, 10, 4, '2015-09-04', '17:34:31', 'LED DOWN LIGHT - WARM WHITE -', 1),
(57, 7, 40, 500, 529, 60, 10, 4, '2015-09-07', '16:41:56', 'IN STORE', 1),
(58, 7, 50, 500, 530, 588, 10, 4, '2015-09-07', '16:49:55', 'IN STORE', 1),
(59, 7, 5, 100, 531, 5, 10, 4, '2015-09-07', '16:57:35', 'IN STORE', 1),
(60, 6, 5, 50, 533, 11, 16, 4, '2015-09-07', '17:22:02', 'IN STORE', 1),
(61, 6, 5, 50, 534, 11.5, 16, 4, '2015-09-07', '17:23:37', 'IN STORE', 1),
(62, 6, 5, 50, 532, 15.7, 16, 4, '2015-09-07', '17:25:40', 'IN STORE', 1),
(63, 6, 2, 20, 44, 13, 10, 4, '2015-09-07', '17:28:42', 'IN STORE', 1),
(64, 8, 2, 100, 538, 8, 10, 4, '2015-09-08', '11:47:24', 'RECEIVED FROM SHANKAR LTD DN#5215', 1),
(65, 8, 1, 50, 539, 0.5, 24, 4, '2015-09-08', '12:06:48', 'INSTORE INWARD NO:5090', 1),
(66, 8, 2, 50, 537, 8, 10, 4, '2015-09-08', '12:09:09', 'DELIVERED BY:SHANKAR  DN#5215', 1),
(67, 8, 1, 50, 536, 6, 10, 4, '2015-09-08', '12:11:51', 'DELIVERED BY SHANKAR DN#5215', 1),
(68, 8, 1, 50, 535, 6, 10, 4, '2015-09-08', '12:15:15', 'DELIVERED BY SHANKAR DN#5215', 1),
(69, 8, 1, 10, 496, 0, 10, 4, '2015-09-08', '12:20:41', 'DELIVERED BY UNITED ENGINEERING SUPPLIES LTD DN#294613', 1),
(70, 6, 5, 50, 53, 24.5, 16, 4, '2015-09-08', '13:14:07', 'DELIVERED BY MAROO LTD DN#101075', 1),
(71, 6, 5, 20, 540, 96, 10, 4, '2015-09-08', '13:42:03', 'INWARD #5103', 1),
(72, 8, 1, 50, 541, 0, 10, 4, '2015-09-08', '13:57:50', 'INWARD #5103 RECEIVED FROM VEHICLE NO: KCB 783E', 1),
(73, 8, 20, 100, 542, 2, 10, 4, '2015-09-08', '14:10:40', 'RECEIVED FROM MACKY OFFICE', 1),
(74, 6, 5, 50, 543, 46, 16, 4, '2015-09-08', '15:16:09', 'IN STORE', 1),
(75, 7, 3, 100, 544, 0, 10, 4, '2015-09-08', '16:25:42', 'DELIVERED  BY KEN ALLUMINIUM DN#1N128932', 1),
(76, 7, 2, 50, 545, 0, 10, 4, '2015-09-08', '16:32:22', 'KEN ALUMINIUM PRODUCT DELIVERY NO:1N128932', 1),
(77, 7, 2, 10, 546, 0, 10, 4, '2015-09-08', '16:44:35', 'DELIVERED BY KEN ALUMINIUM LTD DELIVERY NO#IN128932', 1),
(78, 7, 3, 50, 547, 0, 10, 4, '2015-09-08', '16:50:22', 'KEN ALUMINIUM LTD DN#IN128932', 1),
(79, 7, 5, 50, 548, 0, 10, 4, '2015-09-08', '17:26:15', 'KEN ALUMINIUM LTD DN#IN128932', 1),
(80, 6, 1, 10, 43, 1, 10, 4, '2015-09-08', '17:30:38', 'METRO  WATER DN#21918', 1),
(81, 7, 1, 30, 549, 2, 10, 4, '2015-09-08', '17:42:27', 'KEN ALUMINIUM DN#IN128932', 1),
(82, 7, 1, 50, 550, 0, 10, 4, '2015-09-08', '17:51:59', 'METRO PLASICSKENYA LTD DN#262743', 1),
(83, 7, 1, 20, 551, 0, 10, 4, '2015-09-08', '18:02:54', 'METRO PLASTIC DN#262744', 1),
(84, 6, 2, 50, 552, 0, 26, 1, '2015-09-09', '13:31:28', 'IN STORE', 1),
(85, 6, 2, 50, 553, 0, 10, 1, '2015-09-09', '13:44:16', 'TILE AND CARPET DELIVERY#SIBO1263204-1', 1),
(86, 6, 1, 50, 554, 0, 10, 1, '2015-09-09', '13:52:05', 'DELIVERY NO#SIBO1263206-2', 1),
(87, 6, 2, 50, 555, 0, 10, 1, '2015-09-09', '13:56:09', 'FROM KUTCH', 1),
(88, 6, 1, 30, 556, 0, 10, 1, '2015-09-09', '14:04:03', 'IN STORE', 1),
(89, 7, 10, 1000, 557, 640, 17, 1, '2015-09-09', '14:20:07', 'DELIVERED BY METSEC CABLE LTD DN#172097', 1),
(90, 8, 5, 50, 558, 3, 24, 1, '2015-09-09', '14:34:44', 'IN STORE', 1),
(91, 8, 3, 50, 559, 2, 24, 1, '2015-09-09', '14:38:24', 'IN STORE', 1),
(92, 8, 3, 50, 560, 3, 24, 1, '2015-09-09', '14:40:37', 'IN STORE', 1),
(93, 6, 3, 100, 166, 5, 16, 4, '2015-09-10', '11:56:01', 'CONCORD #2096', 1),
(94, 6, 10, 400, 561, 59, 10, 4, '2015-09-10', '13:35:51', 'KUTCH DELIVERY#5474', 1),
(95, 6, 10, 400, 562, 0, 10, 4, '2015-09-10', '13:38:05', 'KUTCH DELIVERY#5474', 1),
(96, 6, 2, 50, 564, 1, 10, 4, '2015-09-11', '16:45:42', 'WORLD SOURCE ENTERPRISE LTD DELIVERY#022', 1),
(97, 6, 20, 300, 565, 72, 10, 4, '2015-09-11', '17:18:43', 'IN STORE', 1),
(98, 6, 4, 100, 566, 0, 16, 4, '2015-09-11', '18:22:47', 'IN STORE', 1),
(99, 6, 5, 100, 567, 3, 10, 4, '2015-09-15', '09:36:31', 'EMPTY BUCKET 20LTS', 1),
(100, 6, 5, 100, 568, 19, 10, 4, '2015-09-15', '10:46:43', 'EMPTY JERYCAN 2OLTS', 1),
(101, 6, 40, 1000, 569, 849, 10, 4, '2015-09-15', '16:16:18', 'STEEL NAIL 1\'\'', 1),
(102, 6, 20, 100, 570, 9, 19, 4, '2015-09-15', '16:19:20', 'ORDINARY NAILS 3\'\'', 1),
(103, 6, 5, 100, 571, 48, 19, 4, '2015-09-15', '16:27:11', 'ORDINARY NAILS 4\'\'', 1),
(104, 6, 5, 50, 572, 0, 19, 4, '2015-09-15', '16:52:01', 'ROOFING NAILS 3\'\'', 1),
(105, 6, 50, 500, 573, 0, 10, 4, '2015-09-15', '17:05:36', 'SPRINKLER HEADS', 1),
(106, 6, 2, 100, 574, 1, 10, 4, '2015-09-15', '17:12:19', 'TANGIT GLUE 1L', 1),
(107, 6, 2, 100, 576, 0, 10, 4, '2015-09-15', '17:17:53', 'CORNICE', 1),
(108, 6, 2, 50, 577, 0, 10, 4, '2015-09-15', '17:23:13', 'DOOR FRAME', 1),
(109, 6, 2, 50, 578, 0, 10, 4, '2015-09-15', '17:26:40', 'DOOR - AFRICAN -', 1),
(110, 6, 1, 40, 249, 3, 26, 4, '2015-09-16', '16:14:44', 'TILE HARD DN#505', 1),
(111, 6, 1, 30, 580, 1, 10, 4, '2015-09-17', '16:17:33', 'IN STORE', 1),
(112, 6, 20, 1000, 581, 359, 10, 4, '2015-09-17', '16:33:50', 'IN STORE', 1),
(113, 6, 1, 20, 582, 1.5, 19, 4, '2015-09-17', '16:38:49', 'IN STORE', 1),
(114, 8, 25, 1000, 583, 275, 19, 4, '2015-09-17', '16:48:37', 'IN STORE', 1),
(115, 8, 1, 40, 101, 1, 10, 4, '2015-09-17', '16:54:39', 'IN STORE', 1),
(116, 6, 1, 10, 585, 19, 10, 4, '2015-09-17', '17:34:21', 'IN STORE', 1),
(117, 6, 2, 400, 586, 0, 10, 4, '2015-09-18', '17:23:15', 'PROFIX DN#2231', 1),
(118, 6, 5, 100, 255, 29, 10, 4, '2015-09-21', '14:11:13', 'STATPACK DN#CS035030', 1),
(119, 6, 2, 50, 588, 21, 10, 4, '2015-09-21', '15:05:09', 'DUCT TAPE', 1),
(120, 6, 2, 100, 589, 33, 10, 4, '2015-09-21', '15:08:49', 'SILICON - CLEAR -', 1),
(121, 6, 2, 10, 590, 2, 10, 4, '2015-09-21', '15:18:53', 'GRINDING DISK 7\'\'', 1),
(122, 6, 1, 10, 591, 3, 10, 4, '2015-09-21', '15:37:52', 'SLAHERS', 1),
(123, 6, 1, 20, 592, 5, 10, 4, '2015-09-21', '15:43:22', 'PAINT ROLLERS 9\'\'', 1),
(124, 6, 1, 10, 593, 0, 10, 4, '2015-09-22', '11:11:54', 'SCANNER - CANON -', 1),
(125, 6, 20, 300, 594, 0, 10, 4, '2015-09-22', '11:41:01', 'BOLT - MS BLOT 16MM -', 1),
(126, 6, 10, 100, 595, 0, 10, 4, '2015-09-22', '11:51:37', 'UPDATE SYSTEM', 1),
(127, 6, 2, 100, 596, 56, 10, 4, '2015-09-22', '11:59:09', 'YALE CABIN BOARD LOCK', 1),
(128, 6, 1, 100, 597, 5, 10, 4, '2015-09-22', '12:13:37', 'IN STORE', 1),
(129, 6, 2, 100, 598, 24, 10, 4, '2015-09-22', '12:32:26', 'DOOR HANDLES - STAINLESS STEEL -', 1),
(130, 8, 1, 50, 599, 3, 24, 4, '2015-09-22', '17:09:58', 'SINGLE CORE 2.5MM  -RED', 1),
(131, 8, 1, 50, 601, 4, 24, 4, '2015-09-22', '17:11:34', 'SINGLE CORE 2.5MM  -RED', 1),
(132, 8, 1, 50, 600, 3, 24, 4, '2015-09-22', '17:12:46', 'SINGLE CORE 2.5MM  -GREEN / YELLOW', 1),
(133, 7, 100, 1000, 602, 44518, 10, 4, '2015-09-22', '17:17:17', 'HOLLOW BLOCKS', 1),
(134, 6, 2, 20, 603, 12, 10, 4, '2015-09-22', '17:21:32', 'BROOMS - SOFT', 1),
(135, 6, 3, 50, 606, 0, 10, 4, '2015-09-23', '10:28:16', 'INSULATING TAPE - BLACK', 1),
(136, 6, 3, 50, 604, 12, 10, 4, '2015-09-23', '10:29:12', 'INSULATING TAPE - RED', 1),
(137, 6, 3, 50, 605, 5, 10, 4, '2015-09-23', '10:30:12', 'INSULATING TAPE - YELLOW', 1),
(138, 6, 5, 40, 607, 40, 10, 4, '2015-09-25', '10:52:32', 'DOOR HINGES 3\'\'  -S/STEEL 304', 1),
(139, 6, 1, 20, 608, 2, 10, 4, '2015-09-25', '11:06:44', 'HAMMER - CLAW HAMMER -', 1),
(140, 8, 1, 10, 609, 1, 10, 4, '2015-09-25', '11:14:35', 'POWER BACK UP - UPS MERCURY 650VA -', 1),
(141, 8, 1, 10, 610, 0, 10, 4, '2015-09-25', '11:26:05', 'HAMMER - SLEDGE HAMMER 16LB -', 1),
(142, 6, 1, 10, 611, 1, 10, 4, '2015-09-25', '11:31:51', 'SHEAR - HEDGE SHEAR -', 1),
(143, 6, 1, 20, 612, 4, 10, 4, '2015-09-25', '17:09:39', 'BROOM - STIFF -', 1),
(144, 6, 1, 20, 48, 5, 10, 4, '2015-09-30', '17:10:45', 'PAINT BRUSH 3\'\'', 1),
(145, 7, 1, 2, 614, 2, 10, 4, '2015-10-01', '13:11:55', 'BOOSTER SET -  FOR WATER PUMP -', 1),
(146, 6, 20, 300, 615, 60, 10, 4, '2015-10-02', '15:14:13', 'L-TRIM ALLUMINIUM CORNER STRIPS', 1),
(147, 7, 50, 4000, 616, 1859, 10, 4, '2015-10-02', '15:33:22', 'TILE 30X30  PINK CODE:9801', 1),
(148, 6, 1, 5, 617, 1, 26, 4, '2015-10-02', '15:37:27', 'TILE SPACERS 2MM', 1),
(149, 8, 1, 20, 618, 7, 24, 4, '2015-10-02', '15:59:17', 'HOOP IRON', 1),
(150, 6, 2, 50, 619, 1, 19, 4, '2015-10-02', '16:08:34', 'ORDINARY NAILS 2\'\'', 1),
(151, 8, 1, 10, 620, 2, 24, 4, '2015-10-02', '16:30:50', 'SIL / STRETCH', 1),
(152, 6, 1, 50, 621, 29, 10, 4, '2015-10-06', '14:04:41', 'BOTTLE TRAP', 1),
(153, 6, 3, 40, 622, 41, 10, 4, '2015-10-06', '14:13:10', 'G.I SOCKET 1/2\'\'', 1),
(154, 6, 100, 3000, 624, 1100, 10, 4, '2015-10-06', '15:00:01', 'PVC WALL PLUG 8MM', 1),
(155, 6, 10, 100, 625, 13, 19, 4, '2015-10-06', '15:12:29', 'GREASE -15KG BUCKET -', 1),
(156, 6, 10, 100, 174, 80, 16, 4, '2015-10-06', '16:06:09', 'ORYX FLUID 68', 1),
(157, 7, 1, 20, 627, 7, 10, 4, '2015-10-07', '10:36:26', 'CHAIN - CRANE/ CONTAINER - 3.7M', 1),
(158, 7, 1, 20, 629, 4, 10, 4, '2015-10-07', '10:38:56', 'CHAIN - CRANE/ CONTAINER - 5.4M', 1),
(159, 6, 10, 200, 630, 0, 16, 4, '2015-10-07', '12:45:08', 'SUPER FAST EMULSION - BLACK - 20LTS BKT', 1),
(160, 6, 20, 300, 631, 167, 10, 4, '2015-10-07', '14:53:20', 'PVC CORNER STRIPS -YELLOW-', 1),
(161, 6, 10, 50, 55, 16, 16, 4, '2015-10-08', '10:47:27', 'ROAD MARKING BLACK', 1),
(162, 6, 8, 100, 60, 37.5, 16, 4, '2015-10-08', '10:50:01', 'ROAD MARKING PAINT YELLOW', 1),
(163, 6, 1, 50, 632, 28, 10, 4, '2015-10-08', '14:48:34', 'TAP 1/2 - DELAY CTION PILLAR PV-T100 -', 1),
(164, 6, 5, 30, 633, 16, 16, 4, '2015-10-09', '11:01:10', 'BATTERY ACID - 1LT BOTTLE -', 1),
(165, 6, 5, 5, 634, 22, 16, 4, '2015-10-09', '11:20:51', 'BATTERY WATER -1LT BOTTLE -', 1),
(166, 6, 2, 10, 635, 5, 10, 4, '2015-10-09', '11:52:16', 'TWIN SOCKET - 13AMPS  PLASTIC - DELTA ', 1),
(167, 6, 5, 100, 636, 10, 10, 4, '2015-10-09', '13:25:03', 'LED DOWNLIGHTER - 7W COB-NW  -', 1),
(169, 6, 1, 100, 638, 63, 10, 4, '2015-10-14', '14:43:21', 'G.I HEX NIPPLE 1/2\'\'', 1),
(168, 6, 2, 20, 637, 3, 10, 4, '2015-10-12', '15:34:25', 'DIAMOND CUTTING DISK 4 1/2\'\'', 1),
(170, 6, 1, 100, 639, 42, 10, 4, '2015-10-14', '14:47:14', 'PVC FLEXIBLE TUBE 1/2\'\' X 45CM', 1),
(171, 6, 2, 50, 640, 16, 10, 4, '2015-10-14', '14:55:52', 'ANGLE VALVE 1/2\'\' X1/2\'\' ', 1),
(172, 8, 1, 5, 641, 0, 10, 4, '2015-10-14', '15:51:01', 'BATTERY SMF -ENERGIZER EC2 N150 155AMPS', 1),
(173, 7, 10, 2000, 642, 0, 10, 4, '2015-10-19', '17:47:03', 'TILE 600X600 CODE:YS6-11C', 1),
(174, 6, 10, 200, 643, 118, 10, 4, '2015-10-19', '18:01:46', 'WOOD SCREW 4\'\'', 1),
(175, 8, 100, 3000, 602, 900, 10, 4, '2015-10-21', '12:14:42', 'HOLLOW BLOCKS - PARTITION BLOCKS', 1),
(176, 8, 100, 4000, 644, 44540, 10, 4, '2015-10-21', '12:15:33', 'HOLLOW BLOCKS - PARTITION BLOCKS', 1),
(177, 6, 1, 10, 645, 0, 10, 4, '2015-10-21', '13:02:14', 'BUS BAR (YELLOW,RED,BLUE AND BLACK )', 1),
(178, 6, 1, 20, 646, 1, 10, 4, '2015-10-21', '17:17:02', 'G.I REDUCER  2 X1.5\'\'', 1),
(179, 6, 1, 20, 648, 1, 10, 4, '2015-10-21', '17:30:23', 'G.I  ELBOW 1.5\'\'', 1),
(180, 6, 1, 20, 647, 2, 10, 4, '2015-10-21', '17:32:11', 'G.I  UNION 1.5\'\'', 1),
(181, 6, 5, 300, 649, 18.5, 16, 4, '2015-10-23', '09:00:05', 'IN STORE', 1),
(182, 6, 1, 20, 670, 14, 10, 4, '2015-10-27', '10:38:11', 'SILICON CLEAR - WHITE -', 1),
(183, 6, 1, 20, 671, 22, 10, 4, '2015-10-27', '10:38:25', 'SILICON CLEAR - BLACK -', 1),
(184, 6, 1, 4, 672, 2, 10, 4, '2015-10-27', '11:25:11', 'INSTORE', 1),
(185, 6, 1, 20, 707, 2, 10, 4, '2015-11-02', '16:09:16', 'LIGHT FITTING -RECESSED 4X18W', 1),
(186, 6, 5, 100, 708, 0, 27, 4, '2015-11-03', '12:01:21', 'MASTER TOP', 1),
(187, 8, 1, 3, 709, 0, 26, 4, '2015-11-04', '12:59:24', 'CAR WASH PUMP', 1),
(188, 6, 1, 3, 710, 0, 26, 4, '2015-11-04', '17:20:06', 'BATTERIES - FREE MAINTANCE- 206AMPS', 1),
(189, 6, 5, 100, 253, 22.5, 17, 4, '2015-11-10', '13:22:55', 'STOCK ADDED', 1),
(190, 6, 1, 10, 712, 0, 10, 4, '2015-11-10', '13:33:02', 'FISCHER - ANCHOR CHEMICAL -', 1),
(191, 6, 5, 10, 713, 0, 10, 4, '2015-11-10', '13:36:53', 'M16 X 50MM', 1),
(192, 6, 5, 20, 714, 0, 10, 4, '2015-11-10', '13:39:34', 'M12 X 50MM', 1),
(193, 6, 1, 10, 715, 6, 10, 4, '2015-11-10', '13:43:14', 'SILICON GUN', 1),
(194, 6, 1, 5, 716, 0, 10, 4, '2015-11-11', '13:04:24', 'INPUT', 1),
(195, 10, 20, 100, 717, 379, 10, 4, '2015-11-11', '13:38:16', 'FLOOR TILE - WHITE - GAYA MAGMA 60 BLANCO', 1),
(196, 6, 1, 10, 718, 2, 10, 4, '2015-11-12', '13:12:13', 'PPR MALE SOCKET 25 X 1/2 ', 1),
(197, 6, 2, 10, 719, 2, 10, 4, '2015-11-12', '13:41:14', 'SYSTEM', 1),
(198, 6, 1, 20, 720, 7, 10, 4, '2015-11-12', '13:44:26', 'SYSTEM', 1),
(199, 6, 1, 20, 721, 3, 10, 4, '2015-11-12', '13:52:23', 'SYSTEM', 1),
(200, 6, 3, 10, 722, 17, 10, 4, '2015-11-12', '13:56:04', 'SYTEM', 1),
(201, 6, 3, 20, 723, 2, 10, 4, '2015-11-12', '13:59:44', 'SYSTEM', 1),
(202, 6, 3, 20, 724, 6, 10, 4, '2015-11-12', '14:06:49', 'SYSTEM', 1),
(203, 6, 3, 20, 725, 7, 10, 4, '2015-11-12', '14:09:14', 'SYSTEM', 1),
(204, 6, 3, 20, 726, 1, 10, 4, '2015-11-12', '14:16:31', 'SYSTEM', 1),
(205, 6, 2, 20, 727, 12, 10, 4, '2015-11-12', '14:43:38', 'PPR REDUCER TEE 32 X 25MM', 1),
(206, 6, 3, 20, 728, 2, 10, 4, '2015-11-12', '14:45:57', 'FLOOR TRAP 110 X2 X1.5', 1),
(207, 6, 2, 20, 729, 2, 10, 4, '2015-11-12', '14:47:44', '110 INLET', 1),
(208, 6, 3, 20, 730, 2, 10, 4, '2015-11-12', '14:49:45', 'PVC REDUCER BUSH 160 X 110', 1),
(209, 6, 4, 20, 731, 2, 10, 4, '2015-11-12', '14:52:12', 'PVC REDUCER 110 X 2', 1),
(210, 6, 4, 20, 732, 2, 10, 4, '2015-11-12', '14:54:11', 'TANGIT GLUE 500ML', 1),
(211, 6, 5, 20, 733, 0, 25, 4, '2015-11-12', '14:56:54', 'WELDING RODS - PACKETS -', 1),
(212, 6, 3, 20, 736, 0, 19, 4, '2015-11-13', '15:44:26', 'OMO - HESBONE STORE-', 1),
(213, 6, 5, 200, 525, 103, 16, 4, '2015-11-16', '13:05:43', 'SYSTEM', 1),
(214, 6, 30, 300, 738, 274, 10, 4, '2015-11-16', '16:10:18', 'CHALKS - SCHOOL CHALKS -', 1),
(215, 6, 20, 300, 741, 84, 10, 4, '2015-11-18', '11:54:06', 'STEEL NAIL 2\'\'', 1),
(216, 8, 2, 4, 742, 0, 10, 4, '2015-11-18', '13:10:34', 'HOSE PIPE -BRAIDED NYLON  3/4 X 50MTS -', 1),
(217, 6, 50, 300, 743, 134, 10, 4, '2015-11-19', '13:47:14', 'WELDING RODS  2.5 MM  - LOOSE -', 1),
(218, 7, 3, 100, 744, 43, 10, 4, '2015-11-19', '14:00:43', 'INSTORE', 1),
(219, 7, 3, 100, 745, 57, 10, 4, '2015-11-19', '14:02:07', 'INSTORE', 1),
(220, 7, 5, 100, 755, 4, 10, 4, '2015-11-19', '14:03:57', 'INSTORE', 1),
(221, 7, 5, 100, 746, 4, 10, 4, '2015-11-19', '14:04:15', 'INSTORE', 1),
(222, 7, 5, 100, 750, 43, 10, 4, '2015-11-19', '15:40:56', 'INSTORE', 1),
(223, 7, 5, 100, 747, 7, 10, 4, '2015-11-19', '15:41:10', 'INSTORE', 1),
(224, 7, 5, 100, 748, 19, 10, 4, '2015-11-19', '15:41:27', 'INSTORE', 1),
(225, 7, 5, 100, 749, 7, 10, 4, '2015-11-19', '15:41:49', 'INSTORE', 1),
(226, 7, 20, 300, 756, 160, 10, 4, '2015-11-19', '15:43:34', 'INSTORE', 1),
(227, 7, 3, 100, 751, 41, 10, 4, '2015-11-19', '15:48:03', 'INSTORE', 1),
(228, 7, 3, 100, 758, 1, 10, 4, '2015-11-19', '15:48:35', 'INSTORE', 1),
(229, 7, 3, 100, 753, 7, 10, 4, '2015-11-19', '15:49:09', 'INSTORE', 1),
(230, 7, 3, 100, 760, 20, 10, 4, '2015-11-19', '15:49:26', 'INSTORE', 1),
(231, 7, 3, 100, 754, 20, 10, 4, '2015-11-19', '15:49:51', 'INSTORE', 1),
(232, 7, 3, 300, 407, 100, 10, 4, '2015-11-19', '15:57:36', 'INSTORE', 1),
(233, 6, 5, 50, 762, 0, 16, 4, '2015-11-19', '16:41:23', 'INSTORE', 1),
(234, 6, 4, 100, 763, 25, 10, 4, '2015-11-20', '16:15:49', 'KENBRO INDUSTRIES DN#INVO6486', 1),
(235, 7, 10, 100, 764, 6, 10, 4, '2015-11-20', '16:30:11', 'INSTORE', 1),
(236, 6, 4, 20, 766, 5, 10, 4, '2015-11-23', '15:38:02', 'INSTORE', 1),
(237, 6, 2, 30, 767, 7, 10, 4, '2015-11-23', '16:59:17', 'INSTORE', 1),
(238, 6, 2, 50, 768, 28, 10, 4, '2015-11-23', '17:40:45', 'SAJ ENTERPRISES LTD DN#05394', 1),
(239, 6, 30, 200, 779, 35, 10, 4, '2015-11-24', '12:08:50', 'WELDING RODS 3.2 MM - LOOSE  PKT -', 1),
(240, 6, 2, 20, 781, 6, 26, 4, '2015-11-24', '12:33:37', 'WELDING RODS 2.5MM - PACKETS -', 1),
(241, 6, 20, 100, 782, 1, 17, 4, '2015-11-24', '12:51:32', 'HYDRO DRIP / IRRIGATION PIPES - BLACK  -', 1),
(242, 6, 5, 50, 156, 4, 16, 4, '2015-11-24', '15:10:40', 'CC 90 ( GEAR OIL )', 1),
(243, 7, 10, 400, 796, 75, 17, 4, '2015-11-24', '16:24:13', 'ARMOURED CABLE 2.5MM 4 CORE  BLACK', 1),
(244, 6, 10, 200, 797, 28, 10, 4, '2015-11-24', '16:34:16', 'CABLE GLAND 40MM LARGE - WITH SHROUD', 1),
(245, 6, 20, 300, 798, 100, 10, 4, '2015-11-24', '16:35:54', 'CABLE TIES 12\'\'   BLACK', 1),
(246, 7, 10, 300, 799, 52, 17, 4, '2015-11-24', '17:43:46', 'ARMOURED CABLE ALUMINIUM 120MM 4 CORE  -  BLACK  -', 1),
(247, 8, 10, 300, 800, 55, 17, 4, '2015-11-24', '18:06:41', 'ARMOURED CABLE COPPER 25MM 4 CORE  BLACK', 1),
(248, 7, 10, 500, 805, 35.599999999999994, 17, 4, '2015-11-30', '12:30:44', 'SINGLE CORE ALUMINIUM 300 S.Q MM', 1),
(249, 6, 10, 300, 806, 22, 10, 4, '2015-11-30', '14:13:47', 'INSTORE', 1),
(250, 6, 1, 20, 811, 1, 10, 4, '2015-12-02', '08:32:47', 'INSTORE', 1),
(251, 6, 5, 300, 814, 20, 16, 4, '2015-12-02', '12:56:48', 'INSTORE', 1),
(252, 6, 5, 200, 816, 0, 16, 4, '2015-12-02', '13:28:02', 'HYDRAULIC FLUID - SHELL TELLUS 46 -', 1),
(253, 6, 2, 300, 817, 6, 10, 4, '2015-12-02', '14:12:03', 'CABLE LUG 300MM    (300-14)', 1),
(254, 6, 2, 300, 818, 10, 10, 4, '2015-12-02', '14:12:29', 'CABLE LUG 300MM    (300-14)', 1),
(256, 7, 50, 300, 826, 535, 19, 4, '2015-12-03', '12:29:38', 'TILE ADHESIVE - 25KG BAG -', 1),
(255, 6, 1, 20, 825, 0.5, 16, 4, '2015-12-03', '10:59:05', 'CONTA GLUE - 4LTS TIN', 1),
(257, 6, 20, 500, 827, 0, 17, 4, '2015-12-03', '13:51:24', 'POLYTHENE -  BLACK POLYTHENE -', 1),
(258, 10, 0, 0, 608, 3, 0, 20, '2017-10-11', '15:36:28', '3 items added to stock for HAMMER - CLAW HAMMER - from APEX STEEL LTD (NAIROBI DIVISION). Inward No #VAL-INW-17', 1),
(264, 6, 0, 0, 645, 1, 0, 20, '2018-08-09', '10:58:45', '1 items added to stock for BUS BAR from APEX STEEL LTD (NAIROBI DIVISION). Inward No #VALINW9', 1),
(265, 6, 0, 0, 735, 1, 0, 20, '2018-08-09', '10:58:45', '1 items added to stock for ALUMINIUM LADDER - FOLDABLE -  LONG from APEX STEEL LTD (NAIROBI DIVISION). Inward No #VALINW9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_title` varchar(100) NOT NULL,
  `message_body` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recepient_id` int(11) NOT NULL,
  `message_date` date NOT NULL,
  `message_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `notification_title` varchar(200) NOT NULL,
  `notification_body` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recepient_id` int(11) NOT NULL,
  `notification_date` date NOT NULL,
  `notification_time` time NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `link_ref` varchar(200) DEFAULT NULL,
  `notif_status` enum('New','Approved') DEFAULT 'New'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_title`, `notification_body`, `sender_id`, `recepient_id`, `notification_date`, `notification_time`, `site_id`, `ref`, `link_ref`, `notif_status`) VALUES
(1, 'New Requisition -VALRQ1', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\r\n			<td>VALRQ1</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\r\n			<td>Electrical Materials</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\r\n			<td>Walter Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\r\n			<td>2018-07-26</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\r\n			<td>10:18:17</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ1&referrer=email\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 20, '2018-07-26', '10:18:40', 1, 'VALRQ1', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ1&referrer=email', 'Approved'),
(2, 'New Requisition -VALRQ4', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\r\n			<td>VALRQ4</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\r\n			<td>Gypsum  Materials</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\r\n			<td>Walter Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\r\n			<td>2018-07-26</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\r\n			<td>10:33:10</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ4&referrer=email\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 45, '2018-07-26', '10:33:19', 1, 'VALRQ4', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ4&referrer=email', 'Approved'),
(3, 'New Requisition -VALRQ6', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ6</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Electrical Materials</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-26</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>09:19:10</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ6&referrer=email\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-07-26', '09:19:21', 1, 'VALRQ6', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ6&referrer=email', 'Approved'),
(4, 'New Requisition -VALRQ7', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ7</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Welding Materials</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-26</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>10:26:19</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ7&referrer=email\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-07-26', '10:26:26', 1, 'VALRQ7', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ7&referrer=email', 'Approved'),
(5, 'New Requisition -VALRQ9', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ9</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Plumbing  Materials</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-27</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>07:26:51</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ9&referrer=email\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-07-27', '07:27:12', 1, 'VALRQ9', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ9&referrer=email', 'Approved'),
(6, 'New Requisition -VALRQ9', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ9</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ9&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-07-27', '07:46:03', 1, 'VALRQ9', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ9&referrer=email&user_id=20', 'Approved'),
(7, 'New Requisition -VALRQ14', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ14</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Test Plumbing Materials</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter </td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-28</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>09:43:22</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ14&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-07-28', '09:44:13', 1, 'VALRQ14', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ14&referrer=email&user_id=20', 'Approved'),
(8, 'New Requisition -VALRQ14', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ14</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ14&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-07-28', '09:45:26', 1, 'VALRQ14', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ14&referrer=email&user_id=20', 'Approved'),
(9, 'New Requisition -VALRQ16', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\r\n			<td>VALRQ16</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\r\n			<td>Electrical Materials</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\r\n			<td>Walter Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\r\n			<td>2018-07-30</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\r\n			<td>13:25:43</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=20\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 20, '2018-07-30', '13:27:44', 1, 'VALRQ16', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=20', 'Approved'),
(10, 'New Requisition -VALRQ16', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ16</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 41, '2018-07-30', '13:41:36', 1, 'VALRQ16', 'http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45', 'Approved'),
(11, 'New Requisition -VALRQ16', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ16</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 20, '2018-07-30', '13:41:48', 1, 'VALRQ16', 'http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45', 'Approved'),
(12, 'New Requisition -VALRQ16', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ16</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 20, '2018-07-30', '13:42:05', 1, 'VALRQ16', 'http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45', 'Approved'),
(13, 'New Requisition -VALRQ16', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ16</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 41, '2018-07-30', '13:42:16', 1, 'VALRQ16', 'http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45', 'Approved'),
(14, 'New Requisition -VALRQ7', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ7</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ7&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 20, '2018-07-31', '05:10:25', 1, 'VALRQ7', 'http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ7&referrer=email&user_id=45', 'Approved'),
(15, 'New Requisition -VALRQ7', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ7</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ7&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '05:10:45', 1, 'VALRQ7', 'http://elegant.nezakenya.com/compadm/?acc_type=SiteManager&site_id=1&sec=req&act=view_req&req_ref=VALRQ7&referrer=email&user_id=45', 'Approved'),
(16, 'New Requisition -VALRQ16', '<table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:##F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ16</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '07:26:11', 1, 'VALRQ16', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ16&referrer=email&user_id=45', 'Approved'),
(17, 'New Inward -VALINW43', '', 45, 20, '2018-07-31', '08:09:07', 1, 'VALINW43', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_inw&inw_ref=VALINW43&referrer=email&user_id=45', 'Approved'),
(18, 'New Requisition -VALRQ19', 'Hi, Walter Test Account you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ19</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ19&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '09:09:07', 1, 'VALRQ19', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ19&referrer=email&user_id=45', 'Approved'),
(19, 'New Inward -VALINW1', '', 45, 20, '2018-07-31', '09:18:37', 1, 'VALINW1', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW1&referrer=email&user_id=45', 'Approved'),
(20, 'New Requisition -VALRQ21', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ21</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ21&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-07-31', '11:40:24', 1, 'VALRQ21', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ21&referrer=email&user_id=20', 'Approved'),
(21, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ24</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Electrical Materials 5th Floor</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>11:52:28</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 20, '2018-07-31', '11:57:12', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(22, 'New Requisition -VALRQ26', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ26</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Welding Materials 7th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>12:07:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '12:25:23', 1, 'VALRQ26', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45', 'Approved'),
(23, 'New Requisition -VALRQ26', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ26</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Welding Materials 7th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>12:07:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 45, '2018-07-31', '12:25:26', 1, 'VALRQ26', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45', 'Approved'),
(24, 'New Requisition -VALRQ26', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ26</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Welding Materials 7th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>12:07:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '12:27:27', 1, 'VALRQ26', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45', 'Approved'),
(25, 'New Requisition -VALRQ26', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ26</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Welding Materials 7th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>12:07:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '12:28:23', 1, 'VALRQ26', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ26&referrer=email&user_id=45', 'Approved'),
(26, 'New Inward -VALINW3', '', 45, 20, '2018-07-31', '12:33:01', 1, 'VALINW3', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW3&referrer=email&user_id=45', 'Approved'),
(27, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:22:20', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(28, 'New Requisition -VALRQ24', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 45, '2018-07-31', '13:22:26', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(29, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:29:35', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(30, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '13:29:40', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(31, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:29:48', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved');
INSERT INTO `notifications` (`notification_id`, `notification_title`, `notification_body`, `sender_id`, `recepient_id`, `notification_date`, `notification_time`, `site_id`, `ref`, `link_ref`, `notif_status`) VALUES
(32, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:35:21', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(33, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:35:43', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(34, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '13:39:38', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(35, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:39:48', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(36, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '13:42:20', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(37, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:43:36', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(38, 'New Requisition -VALRQ24', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 45, '2018-07-31', '13:43:42', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(39, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '13:43:48', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(40, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '13:46:42', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(41, 'New Requisition -VALRQ24', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ24</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Electrical Materials 5th Floor</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>11:52:28</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '13:47:30', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(42, 'New Requisition -VALRQ24', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ24</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Electrical Materials 5th Floor</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>11:52:28</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '13:49:30', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(43, 'New Requisition -VALRQ24', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ24</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Electrical Materials 5th Floor</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>11:52:28</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '13:52:29', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(44, 'New Requisition -VALRQ24', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ24</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Electrical Materials 5th Floor</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-07-31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>11:52:28</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-07-31', '13:55:34', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(45, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '13:57:41', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(46, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '14:04:13', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(47, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '14:04:22', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(48, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '14:05:00', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(49, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '14:05:12', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(50, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '14:05:23', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(51, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '14:05:28', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(52, 'New Requisition -VALRQ24', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 20, '2018-07-31', '14:05:42', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(53, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '14:06:04', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(54, 'New Requisition -VALRQ24', 'Hi,   you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n        		<thead> \n        		  <tr>\n        			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n        		  </tr>\n        		  </thead>\n        		  <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n        			<td>VALRQ24</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n        			<td>Electrical Materials 5th Floor</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Site:</strong></div></td>\n        			<td>Valley View Office Park</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n        			<td>Walter Omedo</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n        			<td>2018-07-31</td>\n        		  </tr>\n        		  <tr>\n        			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n        			<td>11:52:28</td>\n        		  </tr>\n        		   <tr>\n        			<td><div align=\"right\"></div></td>\n        			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45\">Approve Request</a></td>\n        		  </tr>\n        		   <tr>\n        			<td>&nbsp;</td>\n        			<td>&nbsp;</td>\n        		  </tr>\n        		</table>', 45, 0, '2018-07-31', '14:06:20', 1, 'VALRQ24', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ24&referrer=email&user_id=45', 'Approved'),
(55, 'New Requisition -VALRQ28', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\r\n			<td>VALRQ28</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\r\n			<td>General Items</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\r\n			<td>Walter Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\r\n			<td>2018-08-01</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\r\n			<td>05:06:03</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ28&referrer=email&user_id=20\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 20, '2018-08-01', '05:06:21', 1, 'VALRQ28', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ28&referrer=email&user_id=20', 'Approved'),
(56, 'New Requisition -VALRQ28', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\r\n			<td>VALRQ28</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\r\n			<td></td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\r\n			<td></td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\r\n			<td></td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\r\n			<td></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ28&referrer=email&user_id=20\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 45, '2018-08-01', '05:06:21', 1, 'VALRQ28', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ28&referrer=email&user_id=20', 'Approved');
INSERT INTO `notifications` (`notification_id`, `notification_title`, `notification_body`, `sender_id`, `recepient_id`, `notification_date`, `notification_time`, `site_id`, `ref`, `link_ref`, `notif_status`) VALUES
(57, 'New Requisition -VALRQ31', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Plastering Materials Block A</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-01</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>05:22:54</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ31&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 20, '2018-08-01', '05:23:09', 1, 'VALRQ31', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ31&referrer=email&user_id=20', 'Approved'),
(58, 'New Requisition -VALRQ31', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ31</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ31&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 45, 45, '2018-08-01', '05:23:09', 1, 'VALRQ31', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ31&referrer=email&user_id=45', 'Approved'),
(59, 'New Requisition -VALRQ32', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ32</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Plumbing Items</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-01</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>06:04:35</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ32&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-01', '06:04:49', 1, 'VALRQ32', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ32&referrer=email&user_id=20', 'Approved'),
(60, 'New Requisition -VALRQ32', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ32</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ32&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-01', '06:04:50', 1, 'VALRQ32', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ32&referrer=email&user_id=45', 'Approved'),
(61, 'New Inward -VALINW4', '', 20, 20, '2018-08-01', '06:15:44', 1, 'VALINW4', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW4&referrer=email&user_id=20', 'Approved'),
(62, 'New Inward -VALINW4', 'Hi, Walter  Omedo you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; background-color:#F9B04E;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALINW4</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td>2018-08-01</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td>06:15:13</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW4&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-01', '06:15:44', 1, 'VALINW4', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW4&referrer=email&user_id=45', 'Approved'),
(76, 'New Delivery -VALDEL42', 'Hi, Walter  Omedo you have a new delivery requiring your approval. This delivery is for materials being sent to KILELESHWA  site from VALLEY VIEW OFFICE PARK\n		and has been prepared by Walter  at 06:08:16 on 2018-08-07 ', 20, 20, '2018-08-07', '11:55:16', 1, 'VALDEL42', NULL, 'New'),
(77, 'New Delivery -VALDEL46', 'Hi,   you have a new delivery requiring your approval. This delivery is for materials being sent to EURECCA DEVELOPERS LTD  site from VALLEY VIEW OFFICE PARK<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Delivery Note</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALDEL46</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL46&referrer=email&user_id=\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 0, '2018-08-07', '12:35:39', 1, '', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL46&referrer=email&user_id=', 'New'),
(80, 'New Delivery -VALDEL50', 'Hi,   you have a new delivery requiring your approval. This delivery is for materials being sent to KILELESHWA  site from VALLEY VIEW OFFICE PARK<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Delivery Note</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALDEL50</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL50&referrer=email&user_id=\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 0, '2018-08-10', '12:46:30', 1, '', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL50&referrer=email&user_id=', 'New'),
(79, 'New Delivery -VALDEL46', 'Hi, Walter Adamba you have a new delivery requiring your approval. This delivery is for materials being sent to EURECCA DEVELOPERS LTD  site from VALLEY VIEW OFFICE PARK<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Delivery Note</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALDEL46</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL46&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-07', '12:35:39', 1, '', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL46&referrer=email&user_id=45', 'New'),
(78, 'New Delivery -VALDEL46', 'Hi, Walter  Omedo you have a new delivery requiring your approval. This delivery is for materials being sent to EURECCA DEVELOPERS LTD  site from VALLEY VIEW OFFICE PARK<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Delivery Note</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALDEL46</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL46&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-07', '12:35:39', 1, '', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL46&referrer=email&user_id=20', 'New'),
(75, 'New Requisition -VALRQ35', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ35</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ35&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-04', '07:45:43', 1, 'VALRQ35', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ35&referrer=email&user_id=45', 'Approved'),
(74, 'New Requisition -VALRQ35', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ35</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Plumbing Items 5th Floor</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-04</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>07:44:34</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ35&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-04', '07:45:43', 1, 'VALRQ35', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ35&referrer=email&user_id=20', 'Approved'),
(72, 'New Inward -VALINW12', 'Hi, Walter  Omedo you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALINW12</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td>2018-08-04</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td>06:43:31</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW12&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-04', '06:45:19', 1, 'VALINW12', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW12&referrer=email&user_id=20', 'Approved'),
(73, 'New Inward -VALINW12', 'Hi, Walter Adamba you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALINW12</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td>2018-08-04</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td>06:43:31</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW12&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-04', '06:45:19', 1, 'VALINW12', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW12&referrer=email&user_id=45', 'Approved'),
(81, 'New Delivery -VALDEL50', 'Hi, Walter  Omedo you have a new delivery requiring your approval. This delivery is for materials being sent to KILELESHWA  site from VALLEY VIEW OFFICE PARK<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Delivery Note</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALDEL50</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL50&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-10', '12:46:30', 1, '', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL50&referrer=email&user_id=20', 'New'),
(82, 'New Delivery -VALDEL50', 'Hi, Walter Adamba you have a new delivery requiring your approval. This delivery is for materials being sent to KILELESHWA  site from VALLEY VIEW OFFICE PARK<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Delivery Note</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\n			<td>VALDEL50</td>\n		  </tr>\n	\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL50&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-10', '12:46:30', 1, '', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=del&act=view_del&del_ref=VALDEL50&referrer=email&user_id=45', 'New'),
(83, 'New Requisition -VALRQ38', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ38</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>New Requisition items august 2018</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-11</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>06:53:44</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ38&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-11', '07:29:03', 1, 'VALRQ38', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ38&referrer=email&user_id=20', 'Approved'),
(84, 'New Requisition -VALRQ38', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ38</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ38&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-11', '07:29:03', 1, 'VALRQ38', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ38&referrer=email&user_id=45', 'Approved'),
(85, 'New Inward -VALINW15', 'Hi, Walter  Omedo you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\r\n			<td>VALINW15</td>\r\n		  </tr>\r\n	\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\r\n			<td>Walter Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\r\n			<td>2018-08-11</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\r\n			<td>09:15:27</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW15&referrer=email&user_id=20\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 20, '2018-08-11', '09:15:34', 1, 'VALINW15', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW15&referrer=email&user_id=20', 'Approved'),
(86, 'New Inward -VALINW15', 'Hi, Walter Adamba you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\r\n			<td>VALINW15</td>\r\n		  </tr>\r\n	\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\r\n			<td>Walter Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\r\n			<td>2018-08-11</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\r\n			<td>09:15:27</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW15&referrer=email&user_id=45\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 45, '2018-08-11', '09:15:34', 1, 'VALINW15', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW15&referrer=email&user_id=45', 'Approved'),
(87, 'New Requisition -VALRQ39', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ39</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Cement Materilas</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-11</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>09:23:30</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ39&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-11', '09:23:50', 1, 'VALRQ39', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ39&referrer=email&user_id=20', 'Approved'),
(88, 'New Requisition -VALRQ39', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ39</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td></td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td></td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ39&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-11', '09:23:50', 1, 'VALRQ39', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ39&referrer=email&user_id=45', 'Approved'),
(89, 'New Inward -VALINW16', 'Hi, Walter  Omedo you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\r\n			<td>VALINW16</td>\r\n		  </tr>\r\n	\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\r\n			<td>Walter  Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\r\n			<td>2018-08-11</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\r\n			<td>09:40:13</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW16&referrer=email&user_id=20\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 20, '2018-08-11', '09:40:50', 1, 'VALINW16', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW16&referrer=email&user_id=20', 'New'),
(90, 'New Inward -VALINW16', 'Hi, Walter Adamba you have a new pending inward requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\r\n		<thead> \r\n		  <tr>\r\n			<td colspan=\"2\"><h3>Inward Form</h3></td>\r\n		  </tr>\r\n		  </thead>\r\n		  <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Inward No:</strong></div></td>\r\n			<td>VALINW16</td>\r\n		  </tr>\r\n	\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\r\n			<td>Valley View Office Park</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Recieved by:</strong></div></td>\r\n			<td>Walter  Omedo</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt  Date:</strong></div></td>\r\n			<td>2018-08-11</td>\r\n		  </tr>\r\n		  <tr>\r\n			<td><div align=\"right\"><strong>Receipt Time:</strong></div></td>\r\n			<td>09:40:13</td>\r\n		  </tr>\r\n		   <tr>\r\n			<td><div align=\"right\"></div></td>\r\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW16&referrer=email&user_id=45\">Approve Request</a></td>\r\n		  </tr>\r\n		   <tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		  </tr>\r\n		</table>', 20, 45, '2018-08-11', '09:40:51', 1, 'VALINW16', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=inw&act=view_inw&inw_ref=VALINW16&referrer=email&user_id=45', 'Approved'),
(91, 'New Requisition -VALRQ41', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ41</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Test 2</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-11</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>09:53:44</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ41&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-11', '09:54:23', 1, 'VALRQ41', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ41&referrer=email&user_id=20', 'Approved'),
(92, 'New Requisition -VALRQ41', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ41</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Test 2</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-11</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>09:53:44</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ41&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-11', '10:03:03', 1, 'VALRQ41', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ41&referrer=email&user_id=45', 'New'),
(93, 'New Requisition -VALRQ43', 'Hi, Walter  Omedo you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000; \">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ43</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Test Requisition Plumbing Items</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter Omedo</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-14</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>08:50:57</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ43&referrer=email&user_id=20\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 20, '2018-08-14', '08:51:03', 1, 'VALRQ43', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ43&referrer=email&user_id=20', 'Approved'),
(94, 'New Requisition -VALRQ41', 'Hi, Walter Adamba you have a new pending requisition requiring your approval.<br/><table width=\"100%\" border=\"0\" class=\"table table-striped\" style=\"font-size:16px; border:2px solid #000;\">\n		<thead> \n		  <tr>\n			<td colspan=\"2\"><h3>Requisition Form</h3></td>\n		  </tr>\n		  </thead>\n		  <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Req No:</strong></div></td>\n			<td>VALRQ41</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requisition Name:</strong></div></td>\n			<td>Test 2</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Site:</strong></div></td>\n			<td>Valley View Office Park</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Requested by:</strong></div></td>\n			<td>Walter</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Date:</strong></div></td>\n			<td>2018-08-11</td>\n		  </tr>\n		  <tr>\n			<td><div align=\"right\"><strong>Request Time:</strong></div></td>\n			<td>09:53:44</td>\n		  </tr>\n		   <tr>\n			<td><div align=\"right\"></div></td>\n			<td><a target=\"_blank\" class=\"alert alert-success\" href=\"http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ41&referrer=email&user_id=45\">Approve Request</a></td>\n		  </tr>\n		   <tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		  </tr>\n		</table>', 20, 45, '2018-08-14', '09:12:42', 1, 'VALRQ41', 'http://elegant.nezakenya.com/compadm/?acc_type=CompanyAdmin&site_id=1&sec=req&act=view_req&req_ref=VALRQ41&referrer=email&user_id=45', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `pack_id` int(11) NOT NULL,
  `pack_name` varchar(30) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `pack_size` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pack_id`, `pack_name`, `store_id`, `pack_size`) VALUES
(1, ' 1 Box(Welding Rods)', 3, 100),
(2, '1Bucket(20L)', 3, 20),
(3, '1Bucket(10L)', 3, 10),
(4, '1 Bag(50kg)', 3, 50),
(5, '1 Bag(100kg)', 3, 100),
(10, 'Piece(s)', 3, 1),
(16, 'Litre(1)', NULL, 1),
(17, 'Metre(1)', NULL, 1),
(18, 'Centimeter(1)', NULL, 1),
(19, 'Kilogram(1)', NULL, 1),
(20, 'Grammes(1)', NULL, 1),
(21, 'Tonnes(1)', NULL, 1),
(22, 'Ream(1)', NULL, 300),
(23, 'Welding Rods Pack', NULL, 40),
(24, 'ROLL', NULL, 0),
(25, 'SINGLE PKT', NULL, 0),
(26, 'SINGLE PACKET', NULL, 0),
(27, '1 BAG (25KG)', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

DROP TABLE IF EXISTS `product_photos`;
CREATE TABLE `product_photos` (
  `prod_photo_id` int(11) NOT NULL,
  `mat_id` int(11) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT 'xx'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='store photos or images of associated materials';

--
-- Dumping data for table `product_photos`
--

INSERT INTO `product_photos` (`prod_photo_id`, `mat_id`, `file_name`) VALUES
(1, 804, '1448871344-Sample_Request_Image_Logo.3080409_std.jpg'),
(2, 723, '1448882897-45 pipe bend.jpg'),
(3, 723, '1448883002-45 pipe bend 2.jpg'),
(4, 169, '1448883918-cexide.jpg'),
(5, 772, '1448883964-2quire.jpg'),
(6, 686, '1448884053-Straight-Type-Aluminium-Ladder.jpg'),
(7, 679, '1448884368-adjustable-base-jack-hollow-250x250.png'),
(8, 681, '1448884723-fork-head-jack-500x500.jpg'),
(9, 787, '1448885111-linkpipe.jpg'),
(10, 129, '1448885500-air-compressors.jpg'),
(11, 735, '1448885602-alluminium.jpg'),
(12, 734, '1448885718-alluminium_foldable_short.jpg'),
(13, 767, '1448885884-scaffold-ladders-section.jpg'),
(14, 565, '1448885958-anchor raw bolts.jpg'),
(15, 672, '1448886053-anchor raw bolts m12.jpg'),
(16, 595, '1448886219-anchor raw bolts m16.jpg'),
(17, 263, '1448886416-angle clips.jpg'),
(18, 778, '1448886512-angle_iron.jpg'),
(19, 640, '1448886608-angle_valve.jpg'),
(20, 511, '1448886728-Arabic-Shower.jpg'),
(21, 799, '1448886986-armoured alluminium cable 4 core.jpg'),
(22, 557, '1448887134-4_core_swa_4.jpg'),
(23, 796, '1448887296-2.5mm 4 core.jpg'),
(24, 100, '1448887522-lorry-springs.jpg'),
(25, 99, '1448887739-wire ropes.jpg'),
(26, 170, '1448887881-atlas_power_batteries.jpg'),
(27, 150, '1448888098-motul_multi_ATF_technosynthese_1_liter_1.jpg'),
(28, 172, '1448888377-total_azolla_zs_68_pail.png'),
(29, 791, '1448889166-brass-ball-catcher.jpg'),
(30, 438, '1448889434-Ballast.jpg'),
(31, 704, '1448889548-bar_bending_machine.jpg'),
(32, 144, '1448889664-bar_bending_machine.jpg'),
(33, 104, '1448889813-bar-cutting-machine-250x250.jpg'),
(34, 701, '1448889992-cexide.jpg'),
(35, 151, '1448890126-battery_acid.jpg'),
(36, 633, '1448890192-battery_acid.jpg'),
(37, 496, '1448890356-dynamic_battery_charger.jpg'),
(38, 807, '1448955570-big_Boxer.jpg'),
(39, 808, '1448963671-concrete hollow blocks closed.jpg'),
(40, 809, '1448968549-20150924_112627.jpg'),
(41, 809, '1448968655-20150923_105536.jpg'),
(42, 611, '1449036790-hedge_shears.jpg'),
(43, 610, '1449036874-slegde_hammer.jpg'),
(44, 148, '1449036912-slegde_hammer.jpg'),
(45, 246, '1449036992-slegde_hammer.jpg'),
(46, 608, '1449037526-claw_hammer.jpg'),
(47, 812, '1449040022-telwin_caricabatterie_dynamic420.jpg'),
(48, 813, '1449040220-dewalt_7inch_grinder.jpg'),
(49, 819, '1449063006-urinal_bowl.jpg'),
(50, 820, '1449063261-duravit_d-code_wall_mounted_wc_-_25350900002.jpg'),
(51, 821, '1449064127-vanity_basin_54cm.jpg'),
(52, 822, '1449064292-seat_cover_duravit.jpg'),
(53, 823, '1449064533-DELTA_21_WHITE_grande.jpg'),
(54, 824, '1449143533-cistern_wall_hung.jpg'),
(55, 828, '1449149297-Jupiter-2030-223x300.jpg'),
(56, 829, '1449149810-velvex_white_jumbo.png'),
(57, 830, '1449150361-velvex_handwashing_cream.png'),
(58, 831, '1449213680-1449213608999-1180890587.jpg'),
(59, 832, '1449214962-1449214937658404066493.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profile_photos`
--

DROP TABLE IF EXISTS `profile_photos`;
CREATE TABLE `profile_photos` (
  `photo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rejection_reasons`
--

DROP TABLE IF EXISTS `rejection_reasons`;
CREATE TABLE `rejection_reasons` (
  `id` int(11) NOT NULL,
  `req_ref_no` varchar(45) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reject_date` date DEFAULT NULL,
  `reject_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rejection_reasons`
--

INSERT INTO `rejection_reasons` (`id`, `req_ref_no`, `reason`, `user_id`, `reject_date`, `reject_time`) VALUES
(2, 'VALRQ14', 'Already ordered', 45, '2018-07-31', '07:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

DROP TABLE IF EXISTS `requisitions`;
CREATE TABLE `requisitions` (
  `req_id` int(11) NOT NULL,
  `req_ref_no` varchar(40) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `req_user_id` int(11) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `req_details` varchar(200) NOT NULL,
  `req_time` time NOT NULL,
  `req_date` date NOT NULL,
  `req_name` varchar(200) DEFAULT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `site_code` varchar(5) DEFAULT NULL,
  `pack_size` varchar(200) DEFAULT NULL,
  `req_status` enum('In-Process','New','Approved','Cancelled','Completed','Rejected','LPO Raised') DEFAULT 'New',
  `approved_by` int(11) DEFAULT 0,
  `requested_by` varchar(200) DEFAULT '0',
  `req_approve_id` int(11) DEFAULT NULL,
  `floor` varchar(300) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `lpo_status` enum('Pending','Completed','Rejected') NOT NULL,
  `lpo_file_name` varchar(200) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `locked` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`req_id`, `req_ref_no`, `site_id`, `user_id`, `req_user_id`, `mat_id`, `qty`, `req_details`, `req_time`, `req_date`, `req_name`, `file_name`, `pack_id`, `site_code`, `pack_size`, `req_status`, `approved_by`, `requested_by`, `req_approve_id`, `floor`, `section_id`, `lpo_status`, `lpo_file_name`, `supplier_id`, `locked`) VALUES
(1, 'VALRQ1', 1, 20, 0, 29, 10, 'GI Socket 2 1/2 &quot;', '10:16:45', '2018-07-26', 'Electrical Materials', '000c016d34ff41e245b69c67f22c83ff.jpg', 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '31', 5, '', '9b44bdb97728048da44401d906eebb92.pdf', 23, 0),
(2, 'VALRQ1', 1, 20, 0, 557, 1, 'Armoured Cable 1 Roll', '10:17:21', '2018-07-26', 'Electrical Materials', '000c016d34ff41e245b69c67f22c83ff.jpg', 24, 'VAL', '1 Roll', 'Completed', 0, 'Walter Omedo', 0, '31', 5, '', '9b44bdb97728048da44401d906eebb92.pdf', 24, 0),
(3, 'VALRQ1', 1, 20, 0, 795, 6, 'Circuit Breakers', '10:18:17', '2018-07-26', 'Electrical Materials', '000c016d34ff41e245b69c67f22c83ff.jpg', 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '31', 5, '', '9b44bdb97728048da44401d906eebb92.pdf', 24, 0),
(4, 'VALRQ4', 1, 20, 0, 65, 3, 'Gypsum Filler', '10:32:49', '2018-07-26', 'Gypsum  Materials', '10665de14261e416423e82f725bf6689.jpg', 27, 'VAL', '1 Bag 25 Kg', 'Approved', 0, 'Walter Omedo', 0, '31', 4, 'Pending', '', 0, 0),
(5, 'VALRQ4', 1, 20, 0, 427, 2, 'Cement', '10:33:10', '2018-07-26', 'Gypsum  Materials', '10665de14261e416423e82f725bf6689.jpg', 27, 'VAL', '1 Bag 25 Kg', 'Approved', 0, 'Walter Omedo', 0, '31', 4, 'Pending', '', 0, 0),
(6, 'VALRQ6', 1, 20, 0, 557, 2, 'Armoured Cable 10MM Copper', '09:19:10', '2018-07-26', 'Electrical Materials', NULL, 24, 'VAL', '1 Roll', 'Completed', 0, 'Walter Omedo', 0, '30', 5, '', '9b44bdb97728048da44401d906eebb92.pdf', 24, 0),
(7, 'VALRQ7', 1, 20, 0, 283, 30, 'Welding Rods', '10:25:48', '2018-07-26', 'Welding Materials', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '35', 5, 'Pending', '', 0, 0),
(8, 'VALRQ7', 1, 20, 0, 77, 1, 'Welding Machine', '10:26:19', '2018-07-26', 'Welding Materials', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '35', 5, 'Pending', '', 0, 0),
(9, 'VALRQ9', 1, 20, 0, 396, 5, 'GI Pipe 10 Inch', '07:25:28', '2018-07-27', 'Plumbing  Materials', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '37', 1, 'Pending', '', 0, 0),
(10, 'VALRQ9', 1, 20, 0, 574, 1, 'Tangit Glue', '07:24:36', '2018-07-27', 'Plumbing  Materials', NULL, 10, 'VAL', '1', 'Approved', 0, 'Walter Omedo', 0, '37', 1, 'Pending', '', 0, 0),
(11, 'VALRQ9', 1, 20, 0, 390, 5, 'GI Pipe 4 Inch', '07:25:44', '2018-07-27', 'Plumbing  Materials', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '37', 1, 'Pending', '', 0, 0),
(12, 'VALRQ9', 1, 20, 0, 545, 5, 'GI Plug  1/2 Inch', '07:26:11', '2018-07-27', 'Plumbing  Materials', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '37', 1, 'Pending', '', 0, 0),
(13, 'VALRQ9', 1, 20, 0, 334, 2, 'PPR female tee 50mm', '07:26:51', '2018-07-27', 'Plumbing  Materials', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '37', 1, 'Pending', '', 0, 0),
(14, 'VALRQ14', 1, 20, 0, 545, 12, 'GI plug ', '09:43:55', '2018-07-28', 'Test Plumbing Materials', 'a0be3f69b9219be0386afa42a8425220.pdf', 10, 'VAL', '1 Piece', 'Rejected', 0, 'Walter ', 0, '33', 1, 'Rejected', '', 0, 0),
(15, 'VALRQ14', 1, 20, 0, 723, 10, 'Gi 110  Bend', '09:43:22', '2018-07-28', 'Test Plumbing Materials', 'a0be3f69b9219be0386afa42a8425220.pdf', 10, 'VAL', '1 Piece', 'Rejected', 0, 'Walter ', 0, '33', 1, 'Rejected', '', 0, 0),
(16, 'VALRQ16', 1, 20, 0, 795, 1, '1 Piece circuit breaker', '13:27:22', '2018-07-30', 'Electrical Materials', NULL, 10, 'VAL', '1 Piece', 'LPO Raised', 0, 'Walter Omedo', 0, '33', 5, '', 'cfc06f8ca1f822163298f21ed2d93abe.pdf', 24, 0),
(17, 'VALRQ16', 1, 20, 0, 557, 3, '1 Roll 10MM 4 Core Black', '13:26:09', '2018-07-30', 'Electrical Materials', NULL, 24, 'VAL', '1 Roll', 'LPO Raised', 0, 'Walter Omedo', 0, '33', 5, '', 'cfc06f8ca1f822163298f21ed2d93abe.pdf', 24, 0),
(18, 'VALRQ16', 1, 20, 0, 800, 2, '1 Roll 12MM 4 Core Black', '13:25:43', '2018-07-30', 'Electrical Materials', NULL, 24, 'VAL', '1 Roll', 'LPO Raised', 0, 'Walter Omedo', 0, '33', 5, '', 'cfc06f8ca1f822163298f21ed2d93abe.pdf', 23, 0),
(19, 'VALRQ19', 1, 45, 0, 580, 1, 'Boss White Paint', '09:01:27', '2018-07-31', 'Test Requisition', NULL, 2, 'VAL', '1 Bucket', 'LPO Raised', 0, 'Walter Omedo', 0, '38', 6, '', 'c2f597020987da944051d62230a493af.pdf', 71, 0),
(20, 'VALRQ19', 1, 45, 0, 566, 1, 'Boss White Paint Eggshell', '09:01:58', '2018-07-31', 'Test Requisition', NULL, 2, 'VAL', '1 Bucket', 'LPO Raised', 0, 'Walter Omedo', 0, '38', 6, '', 'c2f597020987da944051d62230a493af.pdf', 71, 0),
(21, 'VALRQ21', 1, 20, 0, 22, 12, 'G I Bend/Elbow 5 Inch', '11:35:54', '2018-07-31', 'Plumbing Items 6th Floor', NULL, 10, 'VAL', '1 Piece', 'In-Process', 0, 'Walter Omedo', 0, '35', 1, 'Pending', '', 0, 0),
(22, 'VALRQ21', 1, 20, 0, 545, 10, 'G I Plug 1/2', '11:37:12', '2018-07-31', 'Plumbing Items 6th Floor', NULL, 10, 'VAL', '1 Piece', 'In-Process', 0, 'Walter Omedo', 0, '35', 1, 'Pending', '', 0, 0),
(23, 'VALRQ21', 1, 20, 0, 400, 8, 'G I Bend/Elbow 7 Inch', '11:36:19', '2018-07-31', 'Plumbing Items 6th Floor', NULL, 10, 'VAL', '1 Piece', 'In-Process', 0, 'Walter Omedo', 0, '35', 1, 'Pending', '', 0, 0),
(24, 'VALRQ24', 1, 45, 0, 796, 10, 'Armoured Cable Copper 2.5MM 4 Core ', '11:52:28', '2018-07-31', 'Electrical Materials 5th Floor', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '34', 5, 'Pending', '', 0, 0),
(25, 'VALRQ24', 1, 45, 0, 557, 15, 'Armoured Cable Copper 10MM 4 Core ', '11:52:47', '2018-07-31', 'Electrical Materials 5th Floor', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '34', 5, 'Pending', '', 0, 0),
(26, 'VALRQ26', 1, 45, 0, 283, 20, 'Welding Rods Steel', '12:07:28', '2018-07-31', 'Welding Materials 7th Floor', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '36', 7, '', 'c2f597020987da944051d62230a493af.pdf', 1, 0),
(27, 'VALRQ26', 1, 45, 0, 77, 1, 'Welding Machine', '12:07:44', '2018-07-31', 'Welding Materials 7th Floor', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '36', 7, '', 'c2f597020987da944051d62230a493af.pdf', 1, 0),
(28, 'VALRQ28', 1, 20, 0, 650, 1, 'Desktop complete', '05:06:03', '2018-08-01', 'General Items', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '48', 9, '', 'c2f597020987da944051d62230a493af.pdf', 28, 0),
(29, 'VALRQ28', 1, 20, 0, 772, 4, '2 Quire Books', '05:04:25', '2018-08-01', 'General Items', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '48', 9, '', 'c2f597020987da944051d62230a493af.pdf', 28, 0),
(30, 'VALRQ28', 1, 20, 0, 130, 1, 'Computer Monitor', '05:05:41', '2018-08-01', 'General Items', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '48', 9, '', 'd01504f90a38b3aff6a8fb5330ad2723.pdf', 175, 0),
(31, 'VALRQ31', 1, 45, 0, 428, 5, 'Cement for plastering', '05:22:54', '2018-08-01', 'Plastering Materials Block A', NULL, 4, 'VAL', '1 Bag', 'Completed', 0, 'Walter Omedo', 0, '33', 2, '', '12ec20ed79ede8dc938481ff9f0545a0.pdf', 31, 0),
(32, 'VALRQ32', 1, 20, 0, 385, 2, 'Gi Pipe', '06:04:35', '2018-08-01', 'Plumbing Items', '5523c88dd347d1b7cc617f632b7efdb7.jpg', 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '29', 1, '', 'c2f597020987da944051d62230a493af.pdf', 4, 0),
(33, 'VALRQ33', 1, 20, 0, 735, 2, 'Alluminium Ladder ', '13:53:42', '2018-08-02', 'General Items', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '34', 6, '', '9b44bdb97728048da44401d906eebb92.pdf', 24, 0),
(34, 'VALRQ33', 1, 20, 0, 645, 1, 'Bas Bar', '13:54:16', '2018-08-02', 'General Items', NULL, 10, 'VAL', '1 Piece', 'Completed', 0, 'Walter Omedo', 0, '34', 6, '', '9b44bdb97728048da44401d906eebb92.pdf', 161, 0),
(35, 'VALRQ35', 1, 20, 0, 167, 3, 'Conta Glue', '07:44:34', '2018-08-04', 'Plumbing Items 5th Floor', NULL, 10, 'VAL', '1 Piece', 'LPO Raised', 0, 'Walter Omedo', 0, '34', 1, 'Completed', '47fe31d595219f3a9f7302eadab604a3.pdf', 43, 0),
(36, 'VALRQ35', 1, 20, 0, 72, 1, 'Emulsion Sealer', '07:45:13', '2018-08-04', 'Plumbing Items 5th Floor', NULL, 10, 'VAL', '1 Piece', 'LPO Raised', 0, 'Walter Omedo', 0, '34', 1, 'Completed', '8a002cc131b970f9879776612a68cddd.pdf', 54, 0),
(37, 'VALRQ35', 1, 20, 0, 515, 2, 'Dust Coat', '07:44:07', '2018-08-04', 'Plumbing Items 5th Floor', NULL, 10, 'VAL', '1 Piece', 'Approved', 0, 'Walter Omedo', 0, '34', 1, 'Pending', '', 0, 0),
(38, 'VALRQ38', 1, 20, 0, 162, 2, 'Battery water', '06:53:44', '2018-08-11', 'New Requisition items august 2018', NULL, 10, 'VAL', 'undefined', 'Completed', 0, 'Walter Omedo', 0, '42', 9, '', '9b44bdb97728048da44401d906eebb92.pdf', 46, 0),
(39, 'VALRQ39', 1, 20, 0, 450, 1, ' Flooring', '09:23:30', '2018-08-11', 'Cement Materilas', NULL, 21, 'VAL', '1 tonne', 'Completed', 0, 'Walter Omedo', 0, '33', 2, '', 'a0be3f69b9219be0386afa42a8425220.pdf', 13, 0),
(40, 'VALRQ39', 1, 20, 0, 428, 15, 'Flooring', '09:22:32', '2018-08-11', 'Cement Materilas', NULL, 4, 'VAL', '1 Bag', 'Completed', 0, 'Walter Omedo', 0, '33', 2, '', 'a0be3f69b9219be0386afa42a8425220.pdf', 83, 0),
(41, 'VALRQ41', 1, 20, 0, 806, 10, 'Ba Screw', '09:53:44', '2018-08-11', 'Test 2', NULL, 10, 'VAL', '1 Piece', 'In-Process', 0, 'Walter', 0, '32', 9, 'Pending', '', 0, 0),
(42, 'VALRQ41', 1, 20, 0, 297, 5, 'ppr', '09:54:03', '2018-08-11', 'Test 2', NULL, 10, 'VAL', '1 Piece', 'In-Process', 0, 'Walter', 0, '32', 9, 'Pending', '', 0, 0),
(43, 'VALRQ43', 1, 20, 0, 648, 10, 'G.I Elbow', '08:50:57', '2018-08-14', 'Test Requisition Plumbing Items', NULL, 10, 'VAL', '1 Piece', 'New', 0, 'Walter Omedo', 0, '1st Floor', 1, 'Pending', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `requisition_approvals`
--

DROP TABLE IF EXISTS `requisition_approvals`;
CREATE TABLE `requisition_approvals` (
  `req_approval_id` int(11) NOT NULL,
  `req_ref_no` varchar(200) NOT NULL,
  `req_user_id` int(11) NOT NULL,
  `req_approve_date` date NOT NULL,
  `req_approve_time` time NOT NULL,
  `req_approval_status` enum('New','Pending','In-Process','Approved') DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requisition_approvals`
--

INSERT INTO `requisition_approvals` (`req_approval_id`, `req_ref_no`, `req_user_id`, `req_approve_date`, `req_approve_time`, `req_approval_status`) VALUES
(1, 'VALRQ1', 20, '2018-07-31', '18:22:14', 'Approved'),
(3, 'VALRQ1', 20, '2018-07-31', '18:22:14', 'Approved'),
(5, 'VALRQ1', 20, '2018-07-31', '18:22:14', 'Approved'),
(11, 'VALRQ6', 20, '2018-07-26', '09:20:43', 'Approved'),
(17, 'VALRQ9', 20, '2018-07-27', '07:56:32', 'Approved'),
(19, 'VALRQ9', 20, '2018-07-27', '07:56:32', 'Approved'),
(21, 'VALRQ9', 20, '2018-07-27', '07:56:32', 'Approved'),
(23, 'VALRQ9', 20, '2018-07-27', '07:56:32', 'Approved'),
(25, 'VALRQ9', 20, '2018-07-27', '07:56:32', 'Approved'),
(27, 'VALRQ9', 45, '2018-07-27', '08:29:03', 'Approved'),
(30, 'VALRQ14', 20, '2018-07-28', '09:51:03', 'Approved'),
(32, 'VALRQ14', 20, '2018-07-28', '09:51:03', 'Approved'),
(34, 'VALRQ14', 20, '2018-07-28', '09:51:03', 'Approved'),
(52, 'VALRQ7', 45, '2018-07-31', '07:14:21', 'Approved'),
(53, 'VALRQ16', 45, '2018-07-31', '07:43:01', 'Approved'),
(54, 'VALRQ19', 45, '2018-07-31', '09:10:43', 'Approved'),
(56, 'VALRQ19', 45, '2018-07-31', '09:10:43', 'Approved'),
(58, 'VALRQ21', 20, '2018-07-31', '11:44:53', 'Approved'),
(60, 'VALRQ21', 20, '2018-07-31', '11:44:53', 'Approved'),
(62, 'VALRQ21', 20, '2018-07-31', '11:44:53', 'Approved'),
(68, 'VALRQ24', 45, '2018-07-31', '14:08:21', 'Approved'),
(69, 'VALRQ24', 20, '2018-07-31', '14:18:18', 'Approved'),
(71, 'VALRQ26', 45, '2018-07-31', '12:29:56', 'Approved'),
(72, 'VALRQ26', 20, '2018-07-31', '14:18:30', 'Approved'),
(74, 'VALRQ26', 20, '2018-07-31', '14:18:30', 'Approved'),
(75, 'VALRQ26', 20, '2018-07-31', '14:18:30', 'Approved'),
(80, 'VALRQ24', 20, '2018-07-31', '14:18:18', 'Approved'),
(81, 'VALRQ28', 20, '2018-08-01', '05:08:50', 'Approved'),
(82, 'VALRQ28', 45, '2018-08-01', '05:19:51', 'Approved'),
(84, 'VALRQ28', 20, '2018-08-01', '05:08:50', 'Approved'),
(85, 'VALRQ28', 45, '2018-08-01', '05:19:51', 'Approved'),
(87, 'VALRQ28', 20, '2018-08-01', '05:08:50', 'Approved'),
(88, 'VALRQ28', 45, '2018-08-01', '05:19:51', 'Approved'),
(90, 'VALRQ31', 20, '2018-08-01', '05:44:23', 'Approved'),
(91, 'VALRQ31', 45, '2018-08-01', '05:23:41', 'Approved'),
(93, 'VALRQ32', 20, '2018-08-01', '06:07:18', 'Approved'),
(94, 'VALRQ32', 45, '2018-08-01', '06:06:38', 'Approved'),
(96, 'VALRQ33', 20, '2018-08-03', '08:46:28', 'Approved'),
(98, 'VALRQ33', 20, '2018-08-03', '08:46:28', 'Approved'),
(100, 'VALRQ33', 20, '2018-08-03', '08:46:28', 'Approved'),
(101, 'VALRQ35', 20, '2018-08-04', '07:46:37', 'Approved'),
(102, 'VALRQ35', 45, '2018-08-04', '07:56:40', 'Approved'),
(104, 'VALRQ35', 20, '2018-08-04', '07:46:37', 'Approved'),
(105, 'VALRQ35', 45, '2018-08-04', '07:56:40', 'Approved'),
(107, 'VALRQ35', 20, '2018-08-04', '07:46:37', 'Approved'),
(108, 'VALRQ35', 45, '2018-08-04', '07:56:40', 'Approved'),
(109, 'VALRQ38', 20, '2018-08-11', '09:12:16', 'Approved'),
(110, 'VALRQ38', 45, '2018-08-11', '09:11:32', 'Approved'),
(112, 'VALRQ39', 20, '2018-08-11', '09:24:55', 'Approved'),
(113, 'VALRQ39', 45, '2018-08-11', '09:25:40', 'Approved'),
(115, 'VALRQ39', 20, '2018-08-11', '09:24:55', 'Approved'),
(116, 'VALRQ39', 45, '2018-08-11', '09:25:40', 'Approved'),
(120, 'VALRQ41', 20, '2018-08-14', '09:10:06', 'Approved'),
(123, 'VALRQ43', 20, '0000-00-00', '00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(40) NOT NULL,
  `site_phone` varchar(15) NOT NULL,
  `site_email` varchar(80) NOT NULL,
  `site_postal` varchar(50) NOT NULL,
  `site_address` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `site_status` enum('Active','In-Active') DEFAULT 'Active',
  `site_code` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_phone`, `site_email`, `site_postal`, `site_address`, `date_created`, `site_status`, `site_code`) VALUES
(1, 'Valley View Office Park', '254721123456', 'valleyview.officepark@gmail.com', '1234-00200, Nairobi-Kenya', 'City Park Drive Off Limuru Road, Nairobi-Kenya', '0000-00-00', 'Active', 'VAL'),
(3, 'Ajman Investment  Kenya Limited', '2547200000000', 'ajman@elegantproperties.co.ke', '4569-00200 Nairobi-Kenya', 'Westlands', '0000-00-00', 'Active', 'AJM'),
(4, 'Kileleshwa', '254732890456', 'kilileshwa@gmail.com', '123-00300, Nairobi', 'Kileleshwa, Nairobi-Kenya', '0000-00-00', 'Active', 'SIT'),
(5, 'Sample Site', '254724785365', 'Sample@yahoo.com', '1111-00200, Nairobi-Kenya', 'Argwings Kodhek Rd-Kilimani', '0000-00-00', 'In-Active', 'SAM'),
(6, 'Woodland View Limited', '254706377778', 'woodland.view@gmail.com', 'No Address', 'No Physical', '2015-10-27', 'Active', 'WOO'),
(7, 'Ravine Park Limited', '254720000000', 'ravinepark@elegantproperties.co.ke', '0000', 'Westlands- Pilipili Rd', '2015-11-05', 'Active', 'RAV'),
(8, 'Eurecca Developers Ltd', '254720000000', 'eurecca@elegantproperties.co.ke', 'No Postal Address', 'Pilipili Way-Off Rhapta Rd', '2015-11-30', 'Active', 'EUR');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`size_id`, `size_name`) VALUES
(1, '1  INCH'),
(2, '1.0MM'),
(3, '2.0MM'),
(4, '2.5 INCH'),
(5, 'No Size'),
(6, '3.25 MM'),
(10, '10 MM'),
(11, '12 MM'),
(12, '16 MM'),
(17, 'Dimensions(50X50X3)'),
(18, 'Dimensions(75X75X3)'),
(19, 'Dimensions(100X100X3)'),
(20, 'Dimensions(50X50X4)'),
(21, 'Dimensions(75X75X4)'),
(22, 'Dimensions(100X100X4)'),
(23, 'Dimensions(150X100X3)'),
(24, 'Dimensions(100X75X3)'),
(25, 'Dimensions(75X50X3)'),
(26, 'Dimensions(150X100X4)'),
(27, 'Dimensions(100X75X4)'),
(28, 'Dimensions(75X50X4)'),
(29, 'Dimensions(25X25X1)'),
(30, 'Dimensions(50X50X1)'),
(31, 'Dimensions(40X40X1)'),
(32, 'Dimensions(25X25X1.5)'),
(33, 'Dimensions(50X50X1.5)'),
(34, 'Dimensions(40X40X1.5)'),
(35, 'Dimensions(50X50X2)'),
(36, 'Dimensions(2440X1220X2)'),
(37, 'Dimensions(2440X1220X4)'),
(38, 'Dimensions(2440X1220X6)'),
(39, 'Dimensions(2440X1220X8)'),
(40, 'Dimensions(2440X1220X10)'),
(41, 'Class 32.5'),
(42, 'Class 42.5'),
(43, '3/8th'),
(44, '1/2'),
(45, '3/4'),
(46, '1/4 INCH'),
(47, '1/2 INCH'),
(48, '1 INCH'),
(49, '4 INCH'),
(50, '5 INCH'),
(51, '6 INCH'),
(52, '7 INCH'),
(53, '8 INCH'),
(54, '9 INCH'),
(55, '10 INCH'),
(56, '11 INCH'),
(57, '12 INCH'),
(58, '25 MM'),
(59, '32 MM'),
(60, '20 MM'),
(61, '40 MM'),
(62, '60 MM'),
(63, '50 MM'),
(64, '90 MM'),
(65, '2 INCH'),
(66, '3 INCH'),
(67, '4 MM'),
(68, '6 MM'),
(69, '8 MM'),
(70, 'DYNAMIC 320'),
(71, 'DYNAMIC 320   45AMPS'),
(72, '50 BAG'),
(73, 'BAG'),
(74, '50KG BAG'),
(75, '20LTS JERRY CAN'),
(76, 'ROLL'),
(77, 'LITRES(L)'),
(78, '4 LITRES TIN'),
(79, '25KG BAG'),
(80, '3KG BAG'),
(81, '300ML'),
(82, '20KG BUCKET'),
(83, '600MM X 600MM'),
(84, '5 LTS JERY CAN'),
(85, '50X25MM'),
(86, '50MMX4MTS'),
(87, '50X32'),
(88, '50X32MM'),
(89, '5mm'),
(90, '640MTS'),
(91, '1.5MM'),
(92, '1 LITRE'),
(93, '3MM'),
(94, '12X 3\'\''),
(95, 'M16'),
(96, '16LB'),
(97, '20LB'),
(98, '2LB'),
(99, '8LB'),
(100, '15KG BUCKET'),
(101, '3.7m'),
(102, '5.4m'),
(103, '20LTS BUCKET'),
(104, '4/1/2 \'\''),
(105, '1/2\'\' X 45CN'),
(106, '1/2\'\' X 45CM'),
(107, '1/2\'\' X 1/2\'\''),
(108, '2 X 1.5\'\''),
(109, '1.5 INCH'),
(110, 'M12'),
(111, '25 x 1/2  '),
(112, '32 X 1'),
(113, '32'),
(114, '110'),
(115, '160'),
(116, '32 X 25'),
(117, '110 X 2 X 1.5'),
(118, '160  X 110'),
(119, '110 X 2'),
(120, '500ML'),
(121, '3/4 x 50mts'),
(122, '2.5mm'),
(123, '4\'\' X 6MTS'),
(124, '6\'\' X 6MTS'),
(125, '1\'\' X 6MTS'),
(126, '2\'\' X 6MTS'),
(127, '2 1/2 \'\' X 6MTS'),
(128, '1 1/2\'\' X 6MTS'),
(129, '12\'\' X 6MTS'),
(130, '10\'\' X 6MTS'),
(131, '8\'\' X 6MTS'),
(132, '1\'\' X 3MTS'),
(133, '8\'\''),
(134, '1 1/4 \'\''),
(135, '1KG PKT'),
(136, '14\'\''),
(137, '40MM'),
(138, '12\'\''),
(139, '120MM'),
(140, '300mm'),
(141, '390MM X 190MM X 120MM'),
(142, '60MM X 60MM'),
(143, '54CM'),
(144, '4LTS');

-- --------------------------------------------------------

--
-- Table structure for table `stock_log`
--

DROP TABLE IF EXISTS `stock_log`;
CREATE TABLE `stock_log` (
  `stock_log_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_details` varchar(200) NOT NULL,
  `log_date` date NOT NULL,
  `log_time` time NOT NULL,
  `site_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT 0,
  `pack_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_log`
--

INSERT INTO `stock_log` (`stock_log_id`, `store_id`, `mat_id`, `user_id`, `log_details`, `log_date`, `log_time`, `site_id`, `qty`, `sup_id`, `pack_id`) VALUES
(1, 1, 264, 1, 'Added new stock of 12 items for DOOR LOCKS', '2015-08-15', '10:36:34', 0, 12, NULL, NULL),
(2, 1, 150, 1, 'Updated stock from 12 to 14 items. Stock for AUTOMATIC TRANSMISSION FLUID ( AFT) is now at 14 ', '2015-08-15', '10:36:56', 0, 2, NULL, NULL),
(3, 1, 121, 1, 'Added new stock of 200 items for TANGANYIKA JERKCOMPRESSOR PIPES', '2015-08-15', '10:38:01', 0, 200, NULL, NULL),
(4, 1, 121, 1, 'Updated stock from 200 to 202 items. Stock for TANGANYIKA JERKCOMPRESSOR PIPES is now at 202 ', '2015-08-15', '10:38:13', 0, 2, NULL, NULL),
(5, 1, 130, 1, 'Added new stock of 12 items for COMPUTER MONITOR', '2015-08-15', '10:47:29', 0, 12, NULL, NULL),
(6, 1, 130, 1, 'Updated stock from 14 to 16 items. Stock for COMPUTER MONITOR is now at 16 ', '2015-08-15', '10:48:06', 0, 2, NULL, NULL),
(7, 2, 283, 1, 'Added new stock of 1 items for Steel Welding  Rods', '2015-08-15', '11:43:51', 0, 1, NULL, NULL),
(8, 2, 285, 1, 'Added new stock of 1 items for Material New Sample', '2015-08-17', '10:06:44', 0, 1, NULL, NULL),
(9, 2, 465, 1, 'Added new stock of 30 items for TWISTED STEEL BARS 10MM', '2015-08-17', '15:51:48', 0, 30, NULL, NULL),
(10, 2, 465, 1, 'Updated stock from 30 to 50 items. Stock for TWISTED STEEL BARS 10MM is now at 50 ', '2015-08-17', '16:02:14', 0, 20, 1, NULL),
(11, 8, 489, 4, 'Added new stock of 2 items for Hop Up Ladder(Metallic)', '2015-08-18', '09:42:09', 1, 2, 0, NULL),
(12, 6, 252, 4, 'Added new stock of 30 items for SAND PAPER            P100', '2015-08-25', '12:24:48', 1, 30, 0, NULL),
(13, 6, 491, 4, 'Added new stock of 13 items for SILK VINLYK MATT EMULSION ( WHITE )', '2015-08-25', '13:13:00', 1, 13, 0, NULL),
(14, 6, 493, 4, 'Added new stock of 4 items for CUTTING DISK NORMAL 7\'', '2015-08-25', '15:09:12', 1, 4, 0, NULL),
(15, 6, 494, 4, 'Added new stock of 6 items for CUTTING DISK - DIAMOND - 7\'', '2015-08-25', '15:14:42', 1, 6, 0, NULL),
(16, 6, 495, 4, 'Added new stock of 78 items for STEEL NAIL 2\'', '2015-08-26', '13:27:37', 1, 78, 0, NULL),
(17, 7, 497, 4, 'Added new stock of 200 items for NYUMBA CEMENT', '2015-08-28', '11:29:06', 1, 200, 0, 4),
(18, 7, 498, 4, 'Added new stock of 20 items for THINNER', '2015-08-28', '11:56:48', 1, 20, 0, 16),
(19, 6, 498, 4, 'Added new stock of 20 items for THINNER', '2015-08-28', '12:39:22', 1, 20, 0, 16),
(20, 7, 499, 4, 'Added new stock of 8 items for LIME SLUDGE - CHOKA-', '2015-08-28', '15:02:39', 1, 8, 0, 4),
(21, 8, 500, 4, 'Added new stock of 3 items for BINDING WIRE', '2015-08-28', '17:43:28', 1, 3, 0, 10),
(22, 6, 494, 4, 'Updated stock from 4 to 5 items. Stock for CUTTING DISK - DIAMOND - 7\' is now at 5 ', '2015-08-31', '13:16:36', 1, 1, 156, NULL),
(23, 7, 497, 4, 'Updated stock from 169 to 175 items. Stock for NYUMBA CEMENT is now at 175 ', '2015-08-31', '16:18:05', 1, 6, 133, NULL),
(24, 7, 497, 4, 'Updated stock from 150 to 153 items. Stock for NYUMBA CEMENT is now at 153 ', '2015-08-31', '17:15:12', 1, 3, 156, NULL),
(25, 8, 501, 4, 'Added new stock of 7 items for WATER SEAL / HARNER', '2015-08-31', '17:42:26', 1, 7, 0, 16),
(26, 6, 502, 4, 'Added new stock of 41 items for RED OXIDE - PREMIER', '2015-09-01', '06:22:52', 1, 41, 0, 16),
(27, 6, 65, 4, 'Added new stock of 0 items for GYPSUM FILLER', '2015-09-01', '06:31:12', 1, 0, 0, 19),
(28, 6, 65, 4, 'Updated stock from 0 to 250 items. Stock for GYPSUM FILLER is now at 250 ', '2015-09-01', '06:34:24', 1, 250, 125, NULL),
(29, 6, 504, 4, 'Added new stock of 0 items for TILE GROUT ', '2015-09-01', '06:46:42', 1, 0, 0, 10),
(30, 6, 504, 4, 'Updated stock from 0 to 83 items. Stock for TILE GROUT  is now at 83 ', '2015-09-01', '06:47:50', 1, 83, 125, NULL),
(31, 7, 497, 4, 'Updated stock from 153 to 154.5 items. Stock for NYUMBA CEMENT is now at 154.5 ', '2015-09-02', '14:59:50', 1, 2, 156, NULL),
(32, 7, 497, 4, 'Updated stock from 130 to 136 items. Stock for NYUMBA CEMENT is now at 136 ', '2015-09-02', '15:12:55', 1, 6, 156, NULL),
(33, 7, 497, 4, 'Updated stock from 112 to 113 items. Stock for NYUMBA CEMENT is now at 113 ', '2015-09-02', '15:20:18', 1, 1, 156, NULL),
(34, 6, 135, 4, 'Added new stock of 9 items for STEEL WIRED BRUSHES', '2015-09-02', '15:26:59', 1, 9, 0, 10),
(35, 7, 506, 4, 'Added new stock of 1 items for OVERALL ', '2015-09-02', '15:50:27', 1, 1, 0, 10),
(36, 6, 507, 4, 'Added new stock of 4 items for TROPIKAL AIR FRESHNER 300ML', '2015-09-02', '15:59:41', 1, 4, 0, 10),
(37, 6, 508, 4, 'Added new stock of 6 items for TOILET BALLS', '2015-09-02', '16:02:36', 1, 6, 0, 10),
(38, 6, 34, 4, 'Added new stock of 60 items for THREAD SEAL TAPE', '2015-09-02', '16:05:25', 1, 60, 0, 22),
(39, 6, 46, 4, 'Added new stock of 6 items for PAINT BRUSH   6', '2015-09-02', '16:07:33', 1, 6, 0, 10),
(40, 6, 509, 4, 'Added new stock of 20 items for TRANSEAL', '2015-09-02', '16:30:52', 1, 20, 0, 16),
(41, 6, 510, 4, 'Added new stock of 60 items for WHITE UNDERCOAT ', '2015-09-02', '17:11:11', 1, 60, 0, 16),
(42, 7, 497, 4, 'Updated stock from 113 to 115 items. Stock for NYUMBA CEMENT is now at 115 ', '2015-09-02', '17:18:06', 1, 2, 156, NULL),
(43, 6, 161, 4, 'Added new stock of 14 items for BRAKE FLUID', '2015-09-02', '17:53:32', 1, 14, 0, 10),
(44, 6, 511, 4, 'Added new stock of 1 items for ARABIC SHOWER', '2015-09-03', '10:59:33', 1, 1, 0, 10),
(45, 6, 158, 4, 'Added new stock of 11 items for CC     (140 DIFT OIL )', '2015-09-03', '13:07:11', 1, 11, 0, 16),
(46, 6, 501, 4, 'Added new stock of 5 items for WATER SEAL / HARNER', '2015-09-03', '13:25:50', 1, 5, 0, 16),
(47, 8, 512, 4, 'Added new stock of 10 items for ORBITA SAFE NO:2045', '2015-09-03', '14:11:55', 1, 10, 0, 10),
(48, 8, 513, 4, 'Added new stock of 2 items for ORBITA SAFE NO:2043', '2015-09-03', '14:16:20', 1, 2, 0, 10),
(49, 8, 514, 4, 'Added new stock of 2 items for ORBITA SAFE GSR008', '2015-09-03', '14:35:32', 1, 2, 0, 10),
(50, 8, 512, 4, 'Updated stock from 7 to 8 items. Stock for ORBITA SAFE NO:2045 is now at 8 ', '2015-09-03', '16:41:24', 1, 1, 156, NULL),
(51, 7, 497, 4, 'Updated stock from 95 to 99 items. Stock for NYUMBA CEMENT is now at 99 ', '2015-09-03', '16:43:01', 1, 4, 156, NULL),
(52, 6, 515, 4, 'Added new stock of 8 items for DUST COAT', '2015-09-03', '16:50:04', 1, 8, 0, 10),
(53, 6, 515, 4, 'Updated stock from 8 to 13 items. Stock for DUST COAT is now at 13 ', '2015-09-03', '16:50:38', 1, 5, 156, NULL),
(54, 6, 517, 4, 'Added new stock of 1584 items for WOOD SCREW 8Gx2\'', '2015-09-03', '17:13:56', 1, 1584, 0, 10),
(55, 6, 518, 4, 'Added new stock of 5 items for SCRAPPERS', '2015-09-03', '17:16:15', 1, 5, 0, 10),
(56, 6, 519, 4, 'Added new stock of 4 items for HACKSAW BLADE', '2015-09-03', '17:19:00', 1, 4, 0, 10),
(57, 6, 519, 4, 'Updated stock from 4 to 14 items. Stock for HACKSAW BLADE is now at 14 ', '2015-09-03', '17:19:47', 1, 10, 65, NULL),
(58, 6, 516, 4, 'Added new stock of 7 items for WATER PROOF / HYSEAL', '2015-09-03', '17:26:09', 1, 7, 0, 19),
(59, 8, 521, 4, 'Added new stock of 14 items for HELMET - PURPLE -', '2015-09-04', '10:14:51', 1, 14, 0, 10),
(60, 8, 522, 4, 'Added new stock of 8 items for HELMET - GREY -', '2015-09-04', '10:51:44', 1, 8, 0, 10),
(61, 8, 523, 4, 'Added new stock of 1 items for HELMET - ORANGE -', '2015-09-04', '10:58:05', 1, 1, 0, 10),
(62, 8, 524, 4, 'Added new stock of 30 items for HELMET - WHITE -', '2015-09-04', '11:19:24', 1, 30, 0, 10),
(63, 6, 526, 4, 'Added new stock of 5 items for PPR PIPE 25MM X 4MTS- PN20', '2015-09-04', '16:21:54', 1, 5, 0, 10),
(64, 6, 527, 4, 'Added new stock of 4 items for LED DOWN LIGHT  - WARM WHITE -', '2015-09-04', '17:19:46', 1, 4, 0, 10),
(65, 6, 527, 4, 'Added new stock of 4 items for LED DOWN LIGHT  - WARM WHITE -', '2015-09-04', '17:34:31', 1, 4, 0, 10),
(66, 7, 497, 4, 'Updated stock from 72 to 77 items. Stock for NYUMBA CEMENT is now at 77 ', '2015-09-04', '17:49:01', 1, 5, 156, NULL),
(67, 7, 529, 4, 'Added new stock of 192 items for TILE 600X600MM DARK BROWN CODE:QG6118', '2015-09-07', '16:41:56', 1, 192, 0, 10),
(68, 7, 530, 4, 'Added new stock of 832 items for TILE 600X600MM WHITE CODE:P6028', '2015-09-07', '16:49:55', 1, 832, 0, 10),
(69, 7, 531, 4, 'Added new stock of 2 items for TOP PLUG (13A)', '2015-09-07', '16:57:35', 1, 2, 0, 10),
(70, 6, 533, 4, 'Added new stock of 18.5 items for ODEX LIMIT', '2015-09-07', '17:22:02', 1, 19, 0, 16),
(71, 6, 534, 4, 'Added new stock of 18 items for ODEX REACT', '2015-09-07', '17:23:37', 1, 18, 0, 16),
(72, 6, 532, 4, 'Added new stock of 19 items for ODEX THICK LAVENDER DISINFECTANT', '2015-09-07', '17:25:40', 1, 19, 0, 16),
(73, 6, 44, 4, 'Added new stock of 2 items for GATE VALVE 1â€', '2015-09-07', '17:28:42', 1, 2, 0, 10),
(74, 7, 497, 4, 'Updated stock from 65 to 65.5 items. Stock for NYUMBA CEMENT is now at 65.5 ', '2015-09-08', '09:19:21', 1, 1, 156, NULL),
(75, 7, 497, 4, 'Updated stock from 47.5 to 49.5 items. Stock for NYUMBA CEMENT is now at 49.5 ', '2015-09-08', '09:31:22', 1, 2, 156, NULL),
(76, 8, 538, 4, 'Added new stock of 10 items for TOASTER (ARMCO)  MODEL:APT-23520(W)', '2015-09-08', '11:47:24', 1, 10, 0, 10),
(77, 8, 539, 4, 'Added new stock of 1 items for ROPE LIGHT', '2015-09-08', '12:06:48', 1, 1, 0, 24),
(78, 8, 537, 4, 'Added new stock of 10 items for MICROWAVE OVEN (SAMSUNG) MODEL:ME731K', '2015-09-08', '12:09:09', 1, 10, 0, 10),
(79, 8, 536, 4, 'Added new stock of 10 items for KETTLE (ARMCO) AKT -172WD(B)', '2015-09-08', '12:11:51', 1, 10, 0, 10),
(80, 8, 535, 4, 'Added new stock of 10 items for HOT PLATE (ARMCO) MODEL:AEC-C10(5)', '2015-09-08', '12:15:15', 1, 10, 0, 10),
(81, 8, 496, 4, 'Added new stock of 4 items for BATTERY CHARGER 45AMPS  DYNAMIC 320', '2015-09-08', '12:20:41', 1, 4, 0, 10),
(82, 6, 53, 4, 'Added new stock of 20 items for TURPENTINE', '2015-09-08', '13:14:07', 1, 20, 0, 16),
(83, 6, 540, 4, 'Added new stock of 96 items for CABLE TIES (WHITE , 24.5CM LONG )', '2015-09-08', '13:42:03', 1, 96, 0, 10),
(84, 8, 524, 4, 'Updated stock from 25 to 26 items. Stock for HELMET - WHITE - is now at 26 ', '2015-09-08', '13:50:53', 1, 1, 156, NULL),
(85, 8, 541, 4, 'Added new stock of 1 items for REFLECTIVE JACKET - ORANGE', '2015-09-08', '13:57:50', 1, 1, 0, 10),
(86, 8, 542, 4, 'Added new stock of 1 items for METAL SPADE - RED ', '2015-09-08', '14:10:40', 1, 1, 0, 10),
(87, 6, 543, 4, 'Added new stock of 56 items for SUPER GLOSS - GREY -  APS', '2015-09-08', '15:16:09', 1, 56, 0, 16),
(88, 6, 498, 4, 'Updated stock from 6 to 7 items. Stock for THINNER is now at 7 ', '2015-09-08', '15:42:14', 1, 1, 156, NULL),
(89, 7, 497, 4, 'Updated stock from 28.5 to 30.5 items. Stock for NYUMBA CEMENT is now at 30.5 ', '2015-09-08', '16:20:43', 1, 2, 156, NULL),
(90, 7, 497, 4, 'Updated stock from 30.5 to 32.5 items. Stock for NYUMBA CEMENT is now at 32.5 ', '2015-09-08', '16:21:37', 1, 2, 156, NULL),
(91, 7, 544, 4, 'Added new stock of 13 items for PPR REDUCER 50X25MM', '2015-09-08', '16:25:42', 1, 13, 0, 10),
(92, 7, 545, 4, 'Added new stock of 10 items for G.I PLUG 1/2\'', '2015-09-08', '16:32:22', 1, 10, 0, 10),
(93, 7, 546, 4, 'Added new stock of 7 items for PPR PIPE 50MMX4MTS PN20', '2015-09-08', '16:44:35', 1, 7, 0, 10),
(94, 7, 547, 4, 'Added new stock of 40 items for PPR FIT ELBOW90 50MM', '2015-09-08', '16:50:22', 1, 40, 0, 10),
(95, 7, 548, 4, 'Added new stock of 5 items for PPR REDUCER 50X32MM', '2015-09-08', '17:26:15', 1, 5, 0, 10),
(96, 6, 43, 4, 'Added new stock of 3 items for GATE VALVE 1/1/2â€', '2015-09-08', '17:30:39', 1, 3, 0, 10),
(97, 6, 43, 4, 'Updated stock from 3 to 5 items. Stock for GATE VALVE 1/1/2â€ is now at 5 ', '2015-09-08', '17:32:56', 1, 2, 57, NULL),
(98, 7, 549, 4, 'Added new stock of 6 items for PVC 4\' GREY', '2015-09-08', '17:42:27', 1, 6, 0, 10),
(99, 6, 43, 4, 'Updated stock from 0 to 2 items. Stock for GATE VALVE 1/1/2â€ is now at 2 ', '2015-09-08', '17:44:30', 1, 2, 156, NULL),
(100, 7, 550, 4, 'Added new stock of 6 items for 110 A/BEND', '2015-09-08', '17:51:59', 1, 6, 0, 10),
(101, 7, 551, 4, 'Added new stock of 4 items for PPR MALE ELBOW 25X1/2\'', '2015-09-08', '18:02:54', 1, 4, 0, 10),
(102, 6, 552, 1, 'Added new stock of 1 items for TILE SPACERS 5MM', '2015-09-09', '13:31:28', 1, 1, 0, 26),
(103, 6, 553, 1, 'Added new stock of 5 items for URINAL FLUSH - STERN JUPITER 2030E', '2015-09-09', '13:44:16', 1, 5, 0, 10),
(104, 6, 553, 1, 'Updated stock from 5 to 9 items. Stock for URINAL FLUSH - STERN JUPITER 2030E is now at 9 ', '2015-09-09', '13:45:24', 1, 4, 173, NULL),
(105, 6, 554, 1, 'Added new stock of 8 items for GEBERIT CISTERN ', '2015-09-09', '13:52:05', 1, 8, 0, 10),
(106, 6, 555, 1, 'Added new stock of 2 items for CORK SEAL 1/2\'', '2015-09-09', '13:56:09', 1, 2, 0, 10),
(107, 6, 556, 1, 'Added new stock of 1 items for STEEL WOOL', '2015-09-09', '14:04:03', 1, 1, 0, 10),
(108, 7, 557, 1, 'Added new stock of 640 items for ARMOURED CABLE COPPER 10MM 4CORE', '2015-09-09', '14:20:07', 1, 640, 0, 17),
(109, 8, 558, 1, 'Added new stock of 12 items for SINGLE CORE 1.5MM - RED', '2015-09-09', '14:34:44', 1, 12, 0, 24),
(110, 8, 559, 1, 'Added new stock of 10 items for SINGLE CORE 1.5MM - BLACK', '2015-09-09', '14:38:24', 1, 10, 0, 24),
(111, 8, 560, 1, 'Added new stock of 11 items for SINGLE CORE 1.5MM - GREEN/YELLOW', '2015-09-09', '14:40:37', 1, 11, 0, 24),
(112, 7, 497, 1, 'Updated stock from 18.5 to 19.5 items. Stock for NYUMBA CEMENT is now at 19.5 ', '2015-09-09', '15:21:28', 1, 1, 156, NULL),
(113, 6, 166, 4, 'Added new stock of 60 items for DISEAL ENGINE OIL SAE40', '2015-09-10', '11:56:01', 1, 60, 0, 16),
(114, 7, 497, 4, 'Updated stock from 19.5 to 20 items. Stock for NYUMBA CEMENT is now at 20 ', '2015-09-10', '13:00:17', 1, 1, 156, NULL),
(115, 6, 561, 4, 'Added new stock of 128 items for STEEL NAIL 4\'', '2015-09-10', '13:35:51', 1, 128, 0, 10),
(116, 6, 562, 4, 'Added new stock of 112 items for STEEL NAIL 3\'', '2015-09-10', '13:38:05', 1, 112, 0, 10),
(117, 6, 564, 4, 'Added new stock of 10 items for CUTTING DISK - NORMAL -  9\'', '2015-09-11', '16:45:42', 1, 10, 0, 10),
(118, 7, 497, 4, 'Updated stock from 5.5 to 205.5 items. Stock for NYUMBA CEMENT is now at 205.5 ', '2015-09-11', '17:06:38', 1, 200, 133, NULL),
(119, 7, 497, 4, 'Updated stock from 191.5 to 199.5 items. Stock for NYUMBA CEMENT is now at 199.5 ', '2015-09-11', '17:10:44', 1, 8, 156, NULL),
(120, 6, 565, 4, 'Added new stock of 1 items for ANCHOR BOLT / RAWL BOLT 8MM', '2015-09-11', '17:18:43', 1, 1, 0, 10),
(121, 6, 565, 4, 'Updated stock from 1 to 102 items. Stock for ANCHOR BOLT / RAWL BOLT 8MM is now at 102 ', '2015-09-11', '17:20:05', 1, 101, 156, NULL),
(122, 6, 510, 4, 'Updated stock from 0 to 60 items. Stock for WHITE UNDERCOAT  is now at 60 ', '2015-09-11', '18:13:48', 1, 60, 74, NULL),
(123, 6, 566, 4, 'Added new stock of 24 items for WHITE PAINT - EGG SHELL', '2015-09-11', '18:22:47', 1, 24, 0, 16),
(124, 6, 566, 4, 'Updated stock from 24 to 184 items. Stock for WHITE PAINT - EGG SHELL is now at 184 ', '2015-09-11', '18:23:39', 1, 160, 74, NULL),
(125, 6, 567, 4, 'Added new stock of 30 items for EMPTY BUCKETS 20LTS', '2015-09-15', '09:36:31', 1, 30, 0, 10),
(126, 6, 567, 4, 'Updated stock from 30 to 31 items. Stock for EMPTY BUCKETS 20LTS is now at 31 ', '2015-09-15', '10:43:36', 1, 1, 156, NULL),
(127, 6, 568, 4, 'Added new stock of 34 items for EMPTY JERYCAN 2OLTS', '2015-09-15', '10:46:43', 1, 34, 0, 10),
(128, 6, 568, 4, 'Updated stock from 34 to 35 items. Stock for EMPTY JERYCAN 2OLTS is now at 35 ', '2015-09-15', '10:47:48', 1, 1, 156, NULL),
(129, 6, 135, 4, 'Updated stock from 0 to 24 items. Stock for STEEL WIRED BRUSHES is now at 24 ', '2015-09-15', '16:07:05', 1, 24, 161, NULL),
(130, 6, 569, 4, 'Added new stock of 351 items for STEEL NAIL 1\'', '2015-09-15', '16:16:18', 1, 351, 0, 10),
(131, 6, 569, 4, 'Updated stock from 351 to 851 items. Stock for STEEL NAIL 1\' is now at 851 ', '2015-09-15', '16:16:58', 1, 500, 65, NULL),
(132, 6, 570, 4, 'Added new stock of 35 items for ORDINARY NAILS 3\'', '2015-09-15', '16:19:20', 1, 35, 0, 19),
(133, 6, 495, 4, 'Updated stock from 43 to 343 items. Stock for STEEL NAIL 2\' is now at 343 ', '2015-09-15', '16:24:11', 1, 300, 65, NULL),
(134, 6, 571, 4, 'Added new stock of 5 items for ORDINARY NAILS 4\'', '2015-09-15', '16:27:11', 1, 5, 0, 19),
(135, 6, 572, 4, 'Added new stock of 5 items for ROOFING NAILS 3\'', '2015-09-15', '16:52:01', 1, 5, 0, 19),
(136, 6, 493, 4, 'Updated stock from 0 to 10 items. Stock for CUTTING DISK NORMAL 7\' is now at 10 ', '2015-09-15', '16:56:42', 1, 10, 156, NULL),
(137, 6, 573, 4, 'Added new stock of 300 items for SPRINKLER HEADS', '2015-09-15', '17:05:36', 1, 300, 0, 10),
(138, 6, 574, 4, 'Added new stock of 2 items for TANGIT GLUE 1L', '2015-09-15', '17:12:19', 1, 2, 0, 10),
(139, 6, 574, 4, 'Updated stock from 2 to 9 items. Stock for TANGIT GLUE 1L is now at 9 ', '2015-09-15', '17:13:00', 1, 7, 81, NULL),
(140, 6, 574, 4, 'Updated stock from 9 to 16 items. Stock for TANGIT GLUE 1L is now at 16 ', '2015-09-15', '17:13:00', 1, 7, 81, NULL),
(141, 6, 576, 4, 'Added new stock of 0 items for CORNICE', '2015-09-15', '17:17:53', 1, 0, 0, 10),
(142, 6, 576, 4, 'Updated stock from 0 to 2 items. Stock for CORNICE is now at 2 ', '2015-09-15', '17:18:27', 1, 2, 156, NULL),
(143, 6, 577, 4, 'Added new stock of 2 items for DOOR FRAME', '2015-09-15', '17:23:13', 1, 2, 0, 10),
(144, 6, 578, 4, 'Added new stock of 16 items for DOOR - AFRICAN -', '2015-09-15', '17:26:40', 1, 16, 0, 10),
(145, 6, 53, 4, 'Updated stock from 19 to 39 items. Stock for TURPENTINE is now at 39 ', '2015-09-15', '17:28:52', 1, 20, 74, NULL),
(146, 6, 509, 4, 'Updated stock from 0 to 40 items. Stock for TRANSEAL is now at 40 ', '2015-09-16', '12:53:36', 1, 40, 74, NULL),
(147, 6, 34, 4, 'Updated stock from 55 to 485 items. Stock for THREAD SEAL TAPE is now at 485 ', '2015-09-16', '16:02:34', 1, 430, 156, NULL),
(148, 7, 530, 4, 'Updated stock from 792 to 1368 items. Stock for TILE 600X600MM WHITE CODE:P6028 is now at 1368 ', '2015-09-16', '16:08:58', 1, 576, 156, NULL),
(149, 6, 249, 4, 'Added new stock of 4 items for TILE SPACERS          3MM', '2015-09-16', '16:14:44', 1, 4, 0, 26),
(150, 7, 497, 4, 'Updated stock from 116 to 126 items. Stock for NYUMBA CEMENT is now at 126 ', '2015-09-16', '16:28:12', 1, 10, 156, NULL),
(151, 7, 497, 4, 'Updated stock from 126 to 132 items. Stock for NYUMBA CEMENT is now at 132 ', '2015-09-16', '16:28:24', 1, 6, 156, NULL),
(152, 7, 497, 4, 'Updated stock from 117.5 to 118.5 items. Stock for NYUMBA CEMENT is now at 118.5 ', '2015-09-17', '16:00:39', 1, 1, 156, NULL),
(153, 7, 497, 4, 'Updated stock from 118.5 to 119.5 items. Stock for NYUMBA CEMENT is now at 119.5 ', '2015-09-17', '16:00:49', 1, 1, 156, NULL),
(154, 6, 580, 4, 'Added new stock of 7 items for BOSS WHITE', '2015-09-17', '16:17:33', 1, 7, 0, 10),
(155, 6, 510, 4, 'Updated stock from 11 to 51 items. Stock for WHITE UNDERCOAT  is now at 51 ', '2015-09-17', '16:25:26', 1, 40, 74, NULL),
(156, 6, 581, 4, 'Added new stock of 399 items for WOOD SCREW 12X3\'', '2015-09-17', '16:33:50', 1, 399, 0, 10),
(157, 6, 582, 4, 'Added new stock of 3 items for OMO', '2015-09-17', '16:38:49', 1, 3, 0, 19),
(158, 8, 583, 4, 'Added new stock of 275 items for TILE ADHESIVE', '2015-09-17', '16:48:37', 1, 275, 0, 19),
(159, 6, 568, 4, 'Updated stock from 33 to 35 items. Stock for EMPTY JERYCAN 2OLTS is now at 35 ', '2015-09-17', '16:52:31', 1, 2, 156, NULL),
(160, 8, 101, 4, 'Added new stock of 1 items for GREEN SAFETY BELTS', '2015-09-17', '16:54:39', 1, 1, 0, 10),
(161, 6, 585, 4, 'Added new stock of 9 items for MAGNETIC CLUTCH', '2015-09-17', '17:34:21', 1, 9, 0, 10),
(162, 7, 497, 4, 'Updated stock from 109.5 to 112.5 items. Stock for NYUMBA CEMENT is now at 112.5 ', '2015-09-18', '17:02:55', 1, 3, 156, NULL),
(163, 7, 497, 4, 'Updated stock from 112.5 to 113 items. Stock for NYUMBA CEMENT is now at 113 ', '2015-09-18', '17:03:25', 1, 1, 156, NULL),
(164, 7, 497, 4, 'Updated stock from 113 to 113.5 items. Stock for NYUMBA CEMENT is now at 113.5 ', '2015-09-18', '17:03:25', 1, 1, 156, NULL),
(165, 7, 497, 4, 'Updated stock from 113.5 to 114 items. Stock for NYUMBA CEMENT is now at 114 ', '2015-09-18', '17:03:25', 1, 1, 156, NULL),
(166, 6, 586, 4, 'Added new stock of 198 items for BOLT - MS BLOT 12MM -', '2015-09-18', '17:23:15', 1, 198, 0, 10),
(167, 6, 255, 4, 'Added new stock of 72 items for MASKING TAPE', '2015-09-21', '14:11:13', 1, 72, 0, 10),
(168, 6, 588, 4, 'Added new stock of 0 items for DUCT TAPE', '2015-09-21', '15:05:09', 1, 0, 0, 10),
(169, 6, 588, 4, 'Updated stock from 0 to 21 items. Stock for DUCT TAPE is now at 21 ', '2015-09-21', '15:05:41', 1, 21, 156, NULL),
(170, 6, 589, 4, 'Added new stock of 0 items for SILICON - CLEAR -', '2015-09-21', '15:08:49', 1, 0, 0, 10),
(171, 6, 589, 4, 'Updated stock from 0 to 35 items. Stock for SILICON - CLEAR - is now at 35 ', '2015-09-21', '15:09:17', 1, 35, 156, NULL),
(172, 6, 590, 4, 'Added new stock of 0 items for GRINDING DISK 7\'', '2015-09-21', '15:18:53', 1, 0, 0, 10),
(173, 6, 590, 4, 'Updated stock from 0 to 1 items. Stock for GRINDING DISK 7\' is now at 1 ', '2015-09-21', '15:19:28', 1, 1, 156, NULL),
(174, 7, 497, 4, 'Updated stock from 106.5 to 108 items. Stock for NYUMBA CEMENT is now at 108 ', '2015-09-21', '15:29:30', 1, 2, 156, NULL),
(175, 7, 497, 4, 'Updated stock from 104.5 to 105 items. Stock for NYUMBA CEMENT is now at 105 ', '2015-09-21', '15:32:41', 1, 1, 156, NULL),
(176, 6, 591, 4, 'Added new stock of 0 items for SLAHERS', '2015-09-21', '15:37:52', 1, 0, 0, 10),
(177, 6, 591, 4, 'Updated stock from 0 to 4 items. Stock for SLAHERS is now at 4 ', '2015-09-21', '15:38:42', 1, 4, 156, NULL),
(178, 6, 592, 4, 'Added new stock of 0 items for PAINT ROLLERS 9\'', '2015-09-21', '15:43:22', 1, 0, 0, 10),
(179, 6, 592, 4, 'Updated stock from 0 to 2 items. Stock for PAINT ROLLERS 9\' is now at 2 ', '2015-09-21', '15:46:43', 1, 2, 156, NULL),
(180, 6, 53, 4, 'Updated stock from 14 to 15 items. Stock for TURPENTINE is now at 15 ', '2015-09-21', '16:37:12', 1, 1, 156, NULL),
(181, 6, 593, 4, 'Added new stock of 0 items for SCANNER - CANON -', '2015-09-22', '11:11:54', 1, 0, 0, 10),
(182, 6, 593, 4, 'Updated stock from 0 to 4 items. Stock for SCANNER - CANON - is now at 4 ', '2015-09-22', '11:13:31', 1, 4, 156, NULL),
(183, 6, 594, 4, 'Added new stock of 0 items for BOLT - MS BLOT 16MM -', '2015-09-22', '11:41:01', 1, 0, 0, 10),
(184, 6, 595, 4, 'Added new stock of 0 items for ANCHOR BOLT / RAWL BOLT M16', '2015-09-22', '11:51:37', 1, 0, 0, 10),
(185, 6, 596, 4, 'Added new stock of 60 items for YALE CABIN BOARD LOCK', '2015-09-22', '11:59:09', 1, 60, 0, 10),
(186, 6, 597, 4, 'Added new stock of 9 items for TOWER BOLT 4\' ', '2015-09-22', '12:13:37', 1, 9, 0, 10),
(187, 6, 598, 4, 'Added new stock of 36 items for DOOR HANDLES ', '2015-09-22', '12:32:26', 1, 36, 0, 10),
(188, 6, 594, 4, 'Updated stock from 0 to 100 items. Stock for BOLT - MS BLOT 16MM - is now at 100 ', '2015-09-22', '13:11:25', 1, 100, 175, NULL),
(189, 6, 595, 4, 'Updated stock from 0 to 50 items. Stock for ANCHOR BOLT / RAWL BOLT M16 is now at 50 ', '2015-09-22', '13:14:28', 1, 50, 175, NULL),
(190, 7, 497, 4, 'Updated stock from 98 to 101 items. Stock for NYUMBA CEMENT is now at 101 ', '2015-09-22', '14:31:57', 1, 3, 156, NULL),
(191, 8, 599, 4, 'Added new stock of 3.5 items for SINGLE CORE 2.5MM  -RED', '2015-09-22', '17:09:58', 1, 4, 0, 24),
(192, 8, 601, 4, 'Added new stock of 3.5 items for SINGLE CORE 2.5MM  -BLACK', '2015-09-22', '17:11:34', 1, 4, 0, 24),
(193, 8, 600, 4, 'Added new stock of 4.5 items for SINGLE CORE 2.5MM  -GREEN /YELLOW', '2015-09-22', '17:12:46', 1, 5, 0, 24),
(194, 8, 601, 4, 'Updated stock from 3.5 to 5.5 items. Stock for SINGLE CORE 2.5MM  -BLACK is now at 5.5 ', '2015-09-22', '17:13:45', 1, 2, 156, NULL),
(195, 7, 602, 4, 'Added new stock of 42904 items for HOLLOW BLOCKS', '2015-09-22', '17:17:17', 1, 42904, 0, 10),
(196, 6, 603, 4, 'Added new stock of 18 items for BROOMS - SOFT', '2015-09-22', '17:21:32', 1, 18, 0, 10),
(197, 6, 606, 4, 'Added new stock of 3 items for INSULATING TAPE - BLACK', '2015-09-23', '10:28:16', 1, 3, 0, 10),
(198, 6, 604, 4, 'Added new stock of 33 items for INSULATING TAPE - RED', '2015-09-23', '10:29:12', 1, 33, 0, 10),
(199, 6, 605, 4, 'Added new stock of 13 items for INSULATING TAPE - YELLOW', '2015-09-23', '10:30:12', 1, 13, 0, 10),
(200, 7, 497, 4, 'Updated stock from 94.5 to 95 items. Stock for NYUMBA CEMENT is now at 95 ', '2015-09-23', '16:51:24', 1, 1, 156, NULL),
(201, 6, 595, 4, 'Updated stock from 50 to 57 items. Stock for ANCHOR BOLT / RAWL BOLT M16 is now at 57 ', '2015-09-25', '10:48:43', 1, 7, 156, NULL),
(202, 6, 607, 4, 'Added new stock of 0 items for HINGES 3\' ', '2015-09-25', '10:52:32', 1, 0, 0, 10),
(203, 7, 497, 4, 'Updated stock from 82.5 to 83 items. Stock for NYUMBA CEMENT is now at 83 ', '2015-09-25', '11:00:59', 1, 1, 156, NULL),
(204, 6, 608, 4, 'Added new stock of 0 items for HAMMER - CLAW HAMMER -', '2015-09-25', '11:06:44', 1, 0, 0, 10),
(205, 6, 608, 4, 'Updated stock from 0 to 4 items. Stock for HAMMER - CLAW HAMMER - is now at 4 ', '2015-09-25', '11:07:43', 1, 4, 156, NULL),
(206, 6, 608, 4, 'Updated stock from 4 to 9 items. Stock for HAMMER - CLAW HAMMER - is now at 9 ', '2015-09-25', '11:08:21', 1, 5, 175, NULL),
(207, 8, 609, 4, 'Added new stock of 0 items for POWER BACK UP - UPS MERCURY 650VA -', '2015-09-25', '11:14:35', 1, 0, 0, 10),
(208, 8, 609, 4, 'Updated stock from 0 to 5 items. Stock for POWER BACK UP - UPS MERCURY 650VA - is now at 5 ', '2015-09-25', '11:15:52', 1, 5, 156, NULL),
(209, 8, 610, 4, 'Added new stock of 0 items for HAMMER - SLEDGE HAMMER 16LB -', '2015-09-25', '11:26:05', 1, 0, 0, 10),
(210, 8, 610, 4, 'Updated stock from 0 to 5 items. Stock for HAMMER - SLEDGE HAMMER 16LB - is now at 5 ', '2015-09-25', '11:27:35', 1, 5, 175, NULL),
(211, 6, 611, 4, 'Added new stock of 0 items for SHEAR - HEDGE SHEAR -', '2015-09-25', '11:31:51', 1, 0, 0, 10),
(212, 6, 611, 4, 'Updated stock from 0 to 2 items. Stock for SHEAR - HEDGE SHEAR - is now at 2 ', '2015-09-25', '11:32:41', 1, 2, 175, NULL),
(213, 6, 611, 4, 'Updated stock from 0 to 1 items. Stock for SHEAR - HEDGE SHEAR - is now at 1 ', '2015-09-25', '11:53:22', 1, 1, 156, NULL),
(214, 6, 612, 4, 'Added new stock of 0 items for BROOM - STIFF -', '2015-09-25', '17:09:39', 1, 0, 0, 10),
(215, 6, 612, 4, 'Updated stock from 0 to 24 items. Stock for BROOM - STIFF - is now at 24 ', '2015-09-25', '17:10:40', 1, 24, 161, NULL),
(216, 7, 497, 4, 'Updated stock from 76 to 76.5 items. Stock for NYUMBA CEMENT is now at 76.5 ', '2015-09-25', '17:30:40', 1, 1, 156, NULL),
(217, 7, 497, 4, 'Updated stock from 68.5 to 70.5 items. Stock for NYUMBA CEMENT is now at 70.5 ', '2015-09-28', '17:44:43', 1, 2, 156, NULL),
(218, 7, 497, 4, 'Updated stock from 47.5 to 48.5 items. Stock for NYUMBA CEMENT is now at 48.5 ', '2015-09-30', '17:06:50', 1, 1, 156, NULL),
(219, 7, 497, 4, 'Updated stock from 48.5 to 49 items. Stock for NYUMBA CEMENT is now at 49 ', '2015-09-30', '17:06:56', 1, 1, 156, NULL),
(220, 6, 48, 4, 'Added new stock of 5 items for PAINT BRUSH   3â€', '2015-09-30', '17:10:45', 1, 5, 0, 10),
(221, 6, 65, 4, 'Updated stock from 0 to 100 items. Stock for GYPSUM FILLER is now at 100 ', '2015-09-30', '17:22:17', 1, 100, 156, NULL),
(222, 7, 614, 4, 'Added new stock of 0 items for BOOSTER SET -  FOR WATER PUMP -', '2015-10-01', '13:11:55', 1, 0, 0, 10),
(223, 7, 614, 4, 'Updated stock from 0 to 2 items. Stock for BOOSTER SET -  FOR WATER PUMP - is now at 2 ', '2015-10-01', '13:12:53', 1, 2, 71, NULL),
(224, 7, 497, 4, 'Updated stock from 24 to 26 items. Stock for NYUMBA CEMENT is now at 26 ', '2015-10-01', '13:55:25', 1, 2, 156, NULL),
(225, 6, 495, 4, 'Updated stock from 309 to 311 items. Stock for STEEL NAIL 2\' is now at 311 ', '2015-10-01', '15:52:38', 1, 2, 156, NULL),
(226, 7, 497, 4, 'Updated stock from 26 to 28 items. Stock for NYUMBA CEMENT is now at 28 ', '2015-10-01', '17:03:34', 1, 2, 156, NULL),
(227, 6, 249, 4, 'Updated stock from 0 to 1 items. Stock for TILE SPACERS          3MM is now at 1 ', '2015-10-02', '10:40:25', 1, 1, 156, NULL),
(228, 7, 499, 4, 'Updated stock from 0 to 10 items. Stock for LIME SLUDGE - CHOKA- is now at 10 ', '2015-10-02', '12:26:51', 1, 10, 156, NULL),
(229, 7, 529, 4, 'Updated stock from 157 to 161 items. Stock for TILE 600X600MM DARK BROWN CODE:QG6118 is now at 161 ', '2015-10-02', '15:07:21', 1, 4, 156, NULL),
(230, 6, 615, 4, 'Added new stock of 131 items for L-TRIM ALLUMINIUM CORNER STRIPS', '2015-10-02', '15:14:13', 1, 131, 0, 10),
(231, 7, 616, 4, 'Added new stock of 2145 items for TILE 30X30  PINK CODE:9801', '2015-10-02', '15:33:22', 1, 2145, 0, 10),
(232, 6, 617, 4, 'Added new stock of 1 items for TILE SPACERS 2MM', '2015-10-02', '15:37:27', 1, 1, 0, 26),
(233, 8, 618, 4, 'Added new stock of 3 items for HOOP IRON', '2015-10-02', '15:59:17', 1, 3, 0, 24),
(234, 6, 619, 4, 'Added new stock of 3 items for ORDINARY NAILS 2\'', '2015-10-02', '16:08:34', 1, 3, 0, 19),
(235, 6, 510, 4, 'Updated stock from 18 to 118 items. Stock for WHITE UNDERCOAT  is now at 118 ', '2015-10-02', '16:18:41', 1, 100, 74, NULL),
(236, 8, 620, 4, 'Added new stock of 3 items for SIL / STRETCH', '2015-10-02', '16:30:50', 1, 3, 0, 24),
(237, 6, 621, 4, 'Added new stock of 0 items for BOTTLE TRAP', '2015-10-06', '14:04:41', 1, 0, 0, 10),
(238, 6, 621, 4, 'Updated stock from 0 to 29 items. Stock for BOTTLE TRAP is now at 29 ', '2015-10-06', '14:05:18', 1, 29, 81, NULL),
(239, 6, 574, 4, 'Updated stock from 0 to 5 items. Stock for TANGIT GLUE 1L is now at 5 ', '2015-10-06', '14:06:45', 1, 5, 81, NULL),
(240, 6, 622, 4, 'Added new stock of 0 items for G.I SOCKET 1/2\'', '2015-10-06', '14:13:10', 1, 0, 0, 10),
(241, 6, 622, 4, 'Updated stock from 0 to 41 items. Stock for G.I SOCKET 1/2\' is now at 41 ', '2015-10-06', '14:13:45', 1, 41, 81, NULL),
(242, 6, 571, 4, 'Updated stock from 0 to 50 items. Stock for ORDINARY NAILS 4\' is now at 50 ', '2015-10-06', '14:28:50', 1, 50, 133, NULL),
(243, 7, 497, 4, 'Updated stock from 12.5 to 13.5 items. Stock for NYUMBA CEMENT is now at 13.5 ', '2015-10-06', '14:34:57', 1, 1, 156, NULL),
(244, 7, 497, 4, 'Updated stock from 13.5 to 63.5 items. Stock for NYUMBA CEMENT is now at 63.5 ', '2015-10-06', '14:35:37', 1, 50, 133, NULL),
(245, 6, 624, 4, 'Added new stock of 2000 items for PVC WALL PLUG 8MM', '2015-10-06', '15:00:01', 1, 2000, 0, 10),
(246, 6, 624, 4, 'Updated stock from 2000 to 4000 items. Stock for PVC WALL PLUG 8MM is now at 4000 ', '2015-10-06', '15:00:33', 1, 2000, 156, NULL),
(247, 6, 625, 4, 'Added new stock of 24 items for GREASE -15KG BUCKET -', '2015-10-06', '15:12:29', 1, 24, 0, 19),
(248, 6, 625, 4, 'Updated stock from 22 to 37 items. Stock for GREASE -15KG BUCKET - is now at 37 ', '2015-10-06', '15:15:14', 1, 15, 15, NULL),
(249, 6, 625, 4, 'Updated stock from 18 to 20 items. Stock for GREASE -15KG BUCKET - is now at 20 ', '2015-10-06', '15:54:56', 1, 2, 156, NULL),
(250, 6, 174, 4, 'Added new stock of 20 items for ORYX FLUID 68', '2015-10-06', '16:06:09', 1, 20, 0, 16),
(251, 6, 174, 4, 'Updated stock from 20 to 120 items. Stock for ORYX FLUID 68 is now at 120 ', '2015-10-06', '16:06:39', 1, 100, 15, NULL),
(252, 7, 627, 4, 'Added new stock of 0 items for CHAIN - CRANE/ CONTAINER - 3.7M', '2015-10-07', '10:36:26', 1, 0, 0, 10),
(253, 7, 627, 4, 'Updated stock from 0 to 7 items. Stock for CHAIN - CRANE/ CONTAINER - 3.7M is now at 7 ', '2015-10-07', '10:37:12', 1, 7, 156, NULL),
(254, 7, 629, 4, 'Added new stock of 0 items for CHAIN - CRANE/ CONTAINER - 5.4M', '2015-10-07', '10:38:56', 1, 0, 0, 10),
(255, 7, 629, 4, 'Updated stock from 0 to 4 items. Stock for CHAIN - CRANE/ CONTAINER - 5.4M is now at 4 ', '2015-10-07', '10:39:47', 1, 4, 156, NULL),
(256, 6, 630, 4, 'Added new stock of 0 items for SUPER FAST EMULSION - BLACK - 20LTS BKT', '2015-10-07', '12:45:08', 1, 0, 0, 16),
(257, 7, 497, 4, 'Updated stock from 53 to 56.5 items. Stock for NYUMBA CEMENT is now at 56.5 ', '2015-10-07', '14:46:07', 1, 4, 156, NULL),
(258, 6, 631, 4, 'Added new stock of 167 items for PVC CORNER STRIPS -YELLOW-', '2015-10-07', '14:53:20', 1, 167, 0, 10),
(259, 6, 510, 4, 'Updated stock from 99 to 104 items. Stock for WHITE UNDERCOAT  is now at 104 ', '2015-10-08', '10:36:22', 1, 5, 156, NULL),
(260, 6, 55, 4, 'Added new stock of 16 items for ROAD MARKING BLACK', '2015-10-08', '10:47:27', 1, 16, 0, 16),
(261, 6, 60, 4, 'Added new stock of 40 items for ROAD MARKING PAINT YELLOW', '2015-10-08', '10:50:01', 1, 40, 0, 16),
(262, 7, 497, 4, 'Updated stock from 43.5 to 44 items. Stock for NYUMBA CEMENT is now at 44 ', '2015-10-08', '11:09:07', 1, 1, 156, NULL),
(263, 6, 632, 4, 'Added new stock of 0 items for TAP 1/2 - DELAY CTION PILLAR PV-T100 -', '2015-10-08', '14:48:34', 1, 0, 0, 10),
(264, 6, 632, 4, 'Updated stock from 0 to 28 items. Stock for TAP 1/2 - DELAY CTION PILLAR PV-T100 - is now at 28 ', '2015-10-08', '14:49:26', 1, 28, 169, NULL),
(265, 6, 633, 4, 'Added new stock of 0 items for BATTERY ACID - 1LT BOTTLE -', '2015-10-09', '11:01:10', 1, 0, 0, 16),
(266, 6, 633, 4, 'Updated stock from 0 to 18 items. Stock for BATTERY ACID - 1LT BOTTLE - is now at 18 ', '2015-10-09', '11:16:37', 1, 18, 156, NULL),
(267, 6, 634, 4, 'Added new stock of 0 items for BATTERY WATER -1LT BOTTLE -', '2015-10-09', '11:20:51', 1, 0, 0, 16),
(268, 6, 634, 4, 'Updated stock from 0 to 22 items. Stock for BATTERY WATER -1LT BOTTLE - is now at 22 ', '2015-10-09', '11:22:15', 1, 22, 156, NULL),
(269, 6, 635, 4, 'Added new stock of 0 items for TWIN SOCKET - 13AMPS - PLASTIC', '2015-10-09', '11:52:16', 1, 0, 0, 10),
(270, 6, 635, 4, 'Updated stock from 0 to 5 items. Stock for TWIN SOCKET - 13AMPS - PLASTIC is now at 5 ', '2015-10-09', '11:54:38', 1, 5, 174, NULL),
(271, 6, 636, 4, 'Added new stock of 0 items for LED DOWNLIGHTER - 7W COB-NW -', '2015-10-09', '13:25:03', 1, 0, 0, 10),
(272, 6, 636, 4, 'Updated stock from 0 to 83 items. Stock for LED DOWNLIGHTER - 7W COB-NW - is now at 83 ', '2015-10-09', '13:26:41', 1, 83, 175, NULL),
(273, 6, 498, 4, 'Updated stock from 0 to 20 items. Stock for THINNER is now at 20 ', '2015-10-09', '14:51:43', 1, 20, 74, NULL),
(274, 6, 53, 4, 'Updated stock from 0 to 20 items. Stock for TURPENTINE is now at 20 ', '2015-10-09', '14:54:07', 1, 20, 74, NULL),
(275, 6, 637, 4, 'Added new stock of 2 items for DIAMOND CUTTING DISK 4 1/2\'', '2015-10-12', '15:34:25', 1, 2, 0, 10),
(276, 6, 637, 4, 'Updated stock from 2 to 3 items. Stock for DIAMOND CUTTING DISK 4 1/2\' is now at 3 ', '2015-10-14', '09:45:23', 1, 1, 156, NULL),
(277, 7, 497, 4, 'Updated stock from 31 to 31.5 items. Stock for NYUMBA CEMENT is now at 31.5 ', '2015-10-14', '11:04:49', 1, 1, 156, NULL),
(278, 7, 497, 4, 'Updated stock from 12.5 to 14 items. Stock for NYUMBA CEMENT is now at 14 ', '2015-10-14', '11:17:47', 1, 2, 156, NULL),
(279, 6, 566, 4, 'Updated stock from 58 to 60 items. Stock for WHITE PAINT - EGG SHELL is now at 60 ', '2015-10-14', '13:55:17', 1, 2, 156, NULL),
(280, 6, 638, 4, 'Added new stock of 0 items for G.I HEX NIPPLE 1/2\'', '2015-10-14', '14:43:21', 1, 0, 0, 10),
(281, 6, 638, 4, 'Updated stock from 0 to 71 items. Stock for G.I HEX NIPPLE 1/2\' is now at 71 ', '2015-10-14', '14:44:13', 1, 71, 159, NULL),
(282, 6, 639, 4, 'Added new stock of 0 items for PVC FLEXIBLE TUBE 1/2\' X 45CM', '2015-10-14', '14:47:14', 1, 0, 0, 10),
(283, 6, 639, 4, 'Updated stock from 0 to 50 items. Stock for PVC FLEXIBLE TUBE 1/2\' X 45CM is now at 50 ', '2015-10-14', '14:48:08', 1, 50, 159, NULL),
(284, 6, 640, 4, 'Added new stock of 0 items for ANGLE VALVE 1/2\' X1/2\' ', '2015-10-14', '14:55:52', 1, 0, 0, 10),
(285, 6, 640, 4, 'Updated stock from 0 to 20 items. Stock for ANGLE VALVE 1/2\' X1/2\'  is now at 20 ', '2015-10-14', '14:56:39', 1, 20, 65, NULL),
(286, 8, 641, 4, 'Added new stock of 0 items for BATTERY SMF -ENERGIZER EC2 N150 155AMPS', '2015-10-14', '15:51:01', 1, 0, 0, 10),
(287, 8, 641, 4, 'Updated stock from 0 to 4 items. Stock for BATTERY SMF -ENERGIZER EC2 N150 155AMPS is now at 4 ', '2015-10-14', '15:53:16', 1, 4, 156, NULL),
(288, 7, 497, 4, 'Updated stock from 1 to 101 items. Stock for NYUMBA CEMENT is now at 101 ', '2015-10-19', '11:46:26', 1, 100, 133, NULL),
(289, 7, 497, 4, 'Updated stock from 82.5 to 83 items. Stock for NYUMBA CEMENT is now at 83 ', '2015-10-19', '11:53:54', 1, 1, 156, NULL),
(290, 7, 497, 4, 'Updated stock from 83 to 84 items. Stock for NYUMBA CEMENT is now at 84 ', '2015-10-19', '11:54:48', 1, 1, 156, NULL),
(291, 7, 642, 4, 'Added new stock of 0 items for TILE 600X600 CODE:YS6-11C', '2015-10-19', '17:47:03', 1, 0, 0, 10),
(292, 7, 642, 4, 'Updated stock from 0 to 1280 items. Stock for TILE 600X600 CODE:YS6-11C is now at 1280 ', '2015-10-19', '17:48:14', 1, 1280, 173, NULL),
(293, 7, 642, 4, 'Updated stock from 1280 to 1760 items. Stock for TILE 600X600 CODE:YS6-11C is now at 1760 ', '2015-10-19', '17:48:25', 1, 480, 173, NULL),
(294, 6, 46, 4, 'Updated stock from 0 to 6 items. Stock for PAINT BRUSH   6 is now at 6 ', '2015-10-19', '17:59:44', 1, 6, 176, NULL),
(295, 6, 643, 4, 'Added new stock of 0 items for WOOD SCREW 4\'', '2015-10-19', '18:01:46', 1, 0, 0, 10),
(296, 6, 643, 4, 'Updated stock from 0 to 118 items. Stock for WOOD SCREW 4\' is now at 118 ', '2015-10-19', '18:03:10', 1, 118, 176, NULL),
(297, 6, 249, 4, 'Updated stock from 1 to 5 items. Stock for TILE SPACERS          3MM is now at 5 ', '2015-10-19', '18:05:23', 1, 4, 125, NULL),
(298, 7, 497, 4, 'Updated stock from 74.5 to 75 items. Stock for NYUMBA CEMENT is now at 75 ', '2015-10-21', '10:22:06', 1, 1, 156, NULL),
(299, 6, 53, 4, 'Updated stock from 0 to 20 items. Stock for TURPENTINE is now at 20 ', '2015-10-21', '11:48:20', 1, 20, 74, NULL),
(300, 6, 48, 4, 'Updated stock from 2 to 8 items. Stock for PAINT BRUSH   3â€ is now at 8 ', '2015-10-21', '11:54:21', 1, 6, 176, NULL),
(301, 6, 597, 4, 'Updated stock from 9 to 15 items. Stock for TOWER BOLT 4\'  is now at 15 ', '2015-10-21', '11:55:11', 1, 6, 176, NULL),
(302, 6, 585, 4, 'Updated stock from 9 to 31 items. Stock for MAGNETIC CLUTCH is now at 31 ', '2015-10-21', '11:55:32', 1, 22, 176, NULL),
(303, 8, 602, 4, 'Added new stock of 0 items for HOLLOW BLOCKS', '2015-10-21', '12:14:42', 1, 0, 0, 10),
(304, 8, 644, 4, 'Added new stock of 0 items for HOLLOW BLOCKS - PARTITION BLOCKS', '2015-10-21', '12:15:33', 1, 0, 0, 10),
(305, 8, 644, 4, 'Updated stock from 0 to 42008 items. Stock for HOLLOW BLOCKS - PARTITION BLOCKS is now at 42008 ', '2015-10-21', '12:17:12', 1, 42008, 21, NULL),
(306, 8, 644, 4, 'Updated stock from 42008 to 42824 items. Stock for HOLLOW BLOCKS - PARTITION BLOCKS is now at 42824 ', '2015-10-21', '12:18:09', 1, 816, 21, NULL),
(307, 8, 644, 4, 'Updated stock from 42824 to 43724 items. Stock for HOLLOW BLOCKS - PARTITION BLOCKS is now at 43724 ', '2015-10-21', '12:19:03', 1, 900, 21, NULL),
(308, 8, 644, 4, 'Updated stock from 43724 to 44540 items. Stock for HOLLOW BLOCKS - PARTITION BLOCKS is now at 44540 ', '2015-10-21', '12:19:44', 1, 816, 21, NULL),
(309, 8, 602, 4, 'Updated stock from 0 to 900 items. Stock for HOLLOW BLOCKS is now at 900 ', '2015-10-21', '12:23:00', 1, 900, 21, NULL),
(310, 6, 645, 4, 'Added new stock of 0 items for BUS BAR', '2015-10-21', '13:02:14', 1, 0, 0, 10),
(311, 6, 645, 4, 'Updated stock from 0 to 4 items. Stock for BUS BAR is now at 4 ', '2015-10-21', '14:45:59', 1, 4, 156, NULL),
(312, 6, 646, 4, 'Added new stock of 0 items for G.I REDUCER  2 X1.5\'', '2015-10-21', '17:17:02', 1, 0, 0, 10),
(313, 6, 646, 4, 'Updated stock from 0 to 1 items. Stock for G.I REDUCER  2 X1.5\' is now at 1 ', '2015-10-21', '17:21:41', 1, 1, 80, NULL),
(314, 6, 648, 4, 'Added new stock of 0 items for G.I  ELBOW 1.5\'', '2015-10-21', '17:30:23', 1, 0, 0, 10),
(315, 6, 647, 4, 'Added new stock of 0 items for G.I UNION 1.5\'', '2015-10-21', '17:32:11', 1, 0, 0, 10),
(316, 6, 647, 4, 'Updated stock from 0 to 2 items. Stock for G.I UNION 1.5\' is now at 2 ', '2015-10-21', '17:33:09', 1, 2, 80, NULL),
(317, 6, 648, 4, 'Updated stock from 0 to 1 items. Stock for G.I  ELBOW 1.5\' is now at 1 ', '2015-10-21', '17:33:25', 1, 1, 80, NULL),
(318, 6, 574, 4, 'Updated stock from 5 to 10 items. Stock for TANGIT GLUE 1L is now at 10 ', '2015-10-22', '14:57:49', 1, 5, 81, NULL),
(319, 7, 642, 4, 'Updated stock from 1760 to 2344 items. Stock for TILE 600X600 CODE:YS6-11C is now at 2344 ', '2015-10-22', '17:31:01', 1, 584, 173, NULL),
(320, 6, 607, 4, 'Updated stock from 0 to 40 items. Stock for HINGES 3\'  is now at 40 ', '2015-10-22', '17:43:51', 1, 40, 156, NULL),
(321, 6, 649, 4, 'Added new stock of 202 items for DIESEL FUEL', '2015-10-23', '09:00:06', 1, 202, 0, 16),
(322, 8, 618, 4, 'Updated stock from 3 to 9 items. Stock for HOOP IRON is now at 9 ', '2015-10-26', '16:20:42', 1, 6, 133, NULL),
(323, 6, 670, 4, 'Added new stock of 0 items for SILICON CLEAR - WHITE -', '2015-10-27', '10:38:11', 1, 0, 0, 10),
(324, 6, 671, 4, 'Added new stock of 0 items for SILICON CLEAR - BLACK -', '2015-10-27', '10:38:25', 1, 0, 0, 10),
(325, 6, 670, 4, 'Updated stock from 0 to 14 items. Stock for SILICON CLEAR - WHITE - is now at 14 ', '2015-10-27', '10:38:59', 1, 14, 156, NULL),
(326, 6, 671, 4, 'Updated stock from 0 to 28 items. Stock for SILICON CLEAR - BLACK - is now at 28 ', '2015-10-27', '10:39:53', 1, 28, 156, NULL),
(327, 6, 672, 4, 'Added new stock of 2 items for ANCHOR BOLT / RAWL BOLT M12', '2015-10-27', '11:25:12', 1, 2, 0, 10),
(328, 6, 510, 4, 'Updated stock from 40 to 160 items. Stock for WHITE UNDERCOAT  is now at 160 ', '2015-10-27', '15:47:22', 1, 120, 74, NULL),
(329, 7, 497, 4, 'Updated stock from 12 to 112 items. Stock for NYUMBA CEMENT is now at 112 ', '2015-10-28', '14:48:00', 1, 100, 133, NULL),
(330, 7, 497, 4, 'Updated stock from 105 to 109 items. Stock for NYUMBA CEMENT is now at 109 ', '2015-10-28', '14:51:21', 1, 4, 156, NULL),
(331, 7, 497, 4, 'Updated stock from 84 to 84.25 items. Stock for NYUMBA CEMENT is now at 84.25 ', '2015-10-28', '14:54:40', 1, 0, 156, NULL),
(332, 7, 497, 4, 'Updated stock from 84.25 to 86.25 items. Stock for NYUMBA CEMENT is now at 86.25 ', '2015-10-28', '14:54:54', 1, 2, 156, NULL),
(333, 7, 497, 4, 'Updated stock from 86.25 to 86.5 items. Stock for NYUMBA CEMENT is now at 86.5 ', '2015-10-28', '14:55:07', 1, 0, 156, NULL),
(334, 7, 497, 4, 'Updated stock from 86.5 to 89.5 items. Stock for NYUMBA CEMENT is now at 89.5 ', '2015-10-28', '14:55:40', 1, 3, 156, NULL),
(335, 6, 44, 4, 'Updated stock from 0 to 1 items. Stock for GATE VALVE 1â€ is now at 1 ', '2015-10-28', '16:36:41', 1, 1, 65, NULL),
(336, 6, 44, 4, 'Updated stock from 1 to 2 items. Stock for GATE VALVE 1â€ is now at 2 ', '2015-10-28', '16:37:04', 1, 1, 65, NULL),
(337, 7, 497, 4, 'Updated stock from 58 to 59 items. Stock for NYUMBA CEMENT is now at 59 ', '2015-10-30', '13:08:55', 1, 1, 156, NULL),
(338, 7, 497, 4, 'Updated stock from 59 to 64 items. Stock for NYUMBA CEMENT is now at 64 ', '2015-10-30', '13:09:15', 1, 5, 156, NULL),
(339, 7, 497, 4, 'Updated stock from 53 to 56 items. Stock for NYUMBA CEMENT is now at 56 ', '2015-10-30', '13:15:09', 1, 3, 156, NULL),
(340, 6, 649, 4, 'Updated stock from 97.5 to 197.5 items. Stock for DIESEL FUEL is now at 197.5 ', '2015-11-02', '11:37:48', 1, 100, 156, NULL),
(341, 7, 499, 4, 'Updated stock from 0 to 237.5 items. Stock for LIME SLUDGE - CHOKA- is now at 237.5 ', '2015-11-02', '11:41:21', 1, 238, 156, NULL),
(342, 7, 529, 4, 'Updated stock from 41 to 87 items. Stock for TILE 600X600MM DARK BROWN CODE:QG6118 is now at 87 ', '2015-11-02', '11:45:58', 1, 46, 156, NULL),
(343, 6, 707, 4, 'Added new stock of 0 items for LIGHT FITTING -RECESSED 4X18W', '2015-11-02', '16:09:16', 1, 0, 0, 10),
(344, 6, 707, 4, 'Updated stock from 0 to 12 items. Stock for LIGHT FITTING -RECESSED 4X18W is now at 12 ', '2015-11-02', '16:10:12', 1, 12, 156, NULL),
(345, 6, 60, 4, 'Updated stock from 36 to 37.5 items. Stock for ROAD MARKING PAINT YELLOW is now at 37.5 ', '2015-11-03', '10:59:28', 1, 2, 156, NULL),
(346, 6, 708, 4, 'Added new stock of 0 items for MASTER TOP', '2015-11-03', '12:01:21', 1, 0, 0, 27),
(347, 6, 708, 4, 'Updated stock from 0 to 25 items. Stock for MASTER TOP is now at 25 ', '2015-11-03', '12:03:59', 1, 25, 156, NULL),
(348, 6, 516, 4, 'Updated stock from 5 to 25 items. Stock for WATER PROOF / HYSEAL is now at 25 ', '2015-11-03', '12:13:42', 1, 20, 58, NULL),
(349, 7, 497, 4, 'Updated stock from 35 to 36 items. Stock for NYUMBA CEMENT is now at 36 ', '2015-11-03', '12:23:52', 1, 1, 156, NULL),
(350, 6, 494, 4, 'Updated stock from 2 to 12 items. Stock for CUTTING DISK - DIAMOND - 7\' is now at 12 ', '2015-11-03', '12:59:14', 1, 10, 176, NULL),
(351, 6, 509, 4, 'Updated stock from 10 to 50 items. Stock for TRANSEAL is now at 50 ', '2015-11-03', '15:27:43', 1, 40, 74, NULL),
(352, 6, 707, 4, 'Updated stock from 0 to 2 items. Stock for LIGHT FITTING -RECESSED 4X18W is now at 2 ', '2015-11-03', '15:56:01', 1, 2, 156, NULL),
(353, 7, 497, 4, 'Updated stock from 28 to 30 items. Stock for NYUMBA CEMENT is now at 30 ', '2015-11-04', '12:44:14', 1, 2, 156, NULL),
(354, 8, 709, 4, 'Added new stock of 0 items for CAR WASH PUMP', '2015-11-04', '12:59:24', 1, 0, 0, 26),
(355, 8, 709, 4, 'Updated stock from 0 to 1 items. Stock for CAR WASH PUMP is now at 1 ', '2015-11-04', '12:59:51', 1, 1, 156, NULL),
(356, 7, 497, 4, 'Updated stock from 20.5 to 120.5 items. Stock for NYUMBA CEMENT is now at 120.5 ', '2015-11-04', '15:37:08', 1, 100, 133, NULL),
(357, 6, 519, 4, 'Updated stock from 2 to 12 items. Stock for HACKSAW BLADE is now at 12 ', '2015-11-04', '15:38:30', 1, 10, 133, NULL),
(358, 6, 710, 4, 'Added new stock of 0 items for BATTERIES - FREE MAINTANCE- 206AMPS', '2015-11-04', '17:20:06', 1, 0, 0, 26),
(359, 6, 710, 4, 'Updated stock from 0 to 2 items. Stock for BATTERIES - FREE MAINTANCE- 206AMPS is now at 2 ', '2015-11-04', '17:22:36', 1, 2, 156, NULL),
(360, 6, 561, 4, 'Updated stock from 32 to 101 items. Stock for STEEL NAIL 4\' is now at 101 ', '2015-11-05', '10:52:19', 1, 69, 65, NULL),
(361, 7, 531, 4, 'Updated stock from 1 to 6 items. Stock for TOP PLUG (13A) is now at 6 ', '2015-11-05', '18:05:36', 1, 5, 156, NULL),
(362, 7, 497, 4, 'Updated stock from 113 to 114 items. Stock for NYUMBA CEMENT is now at 114 ', '2015-11-06', '12:24:05', 1, 1, 156, NULL),
(363, 7, 497, 4, 'Updated stock from 107 to 110.5 items. Stock for NYUMBA CEMENT is now at 110.5 ', '2015-11-10', '09:27:27', 1, 4, 156, NULL),
(364, 7, 497, 4, 'Updated stock from 95.5 to 126.5 items. Stock for NYUMBA CEMENT is now at 126.5 ', '2015-11-10', '09:42:02', 1, 31, 156, NULL),
(365, 7, 497, 4, 'Updated stock from 95.5 to 96.5 items. Stock for NYUMBA CEMENT is now at 96.5 ', '2015-11-10', '09:42:43', 1, 1, 156, NULL),
(366, 6, 252, 4, 'Updated stock from 8 to 11 items. Stock for SAND PAPER            P100 is now at 11 ', '2015-11-10', '13:21:06', 1, 3, 156, NULL),
(367, 6, 253, 4, 'Added new stock of 0 items for SAND PAPER            P80', '2015-11-10', '13:22:55', 1, 0, 0, 17),
(368, 6, 253, 4, 'Updated stock from 0 to 22.5 items. Stock for SAND PAPER            P80 is now at 22.5 ', '2015-11-10', '13:23:37', 1, 23, 156, NULL),
(369, 6, 588, 4, 'Updated stock from 20 to 21 items. Stock for DUCT TAPE is now at 21 ', '2015-11-10', '13:28:52', 1, 1, 156, NULL),
(370, 6, 712, 4, 'Added new stock of 0 items for FISCHER - ANCHOR CHEMICAL -', '2015-11-10', '13:33:02', 1, 0, 0, 10),
(371, 6, 712, 4, 'Updated stock from 0 to 4 items. Stock for FISCHER - ANCHOR CHEMICAL - is now at 4 ', '2015-11-10', '13:33:55', 1, 4, 156, NULL),
(372, 6, 713, 4, 'Added new stock of 0 items for M16 X 50MM', '2015-11-10', '13:36:53', 1, 0, 0, 10),
(373, 6, 713, 4, 'Updated stock from 0 to 20 items. Stock for M16 X 50MM is now at 20 ', '2015-11-10', '13:37:42', 1, 20, 156, NULL),
(374, 6, 714, 4, 'Added new stock of 0 items for M12 X 50MM', '2015-11-10', '13:39:34', 1, 0, 0, 10),
(375, 6, 714, 4, 'Updated stock from 0 to 40 items. Stock for M12 X 50MM is now at 40 ', '2015-11-10', '13:40:37', 1, 40, 156, NULL),
(376, 6, 715, 4, 'Added new stock of 0 items for SILICON GUN', '2015-11-10', '13:43:14', 1, 0, 0, 10),
(377, 6, 715, 4, 'Updated stock from 0 to 6 items. Stock for SILICON GUN is now at 6 ', '2015-11-10', '13:44:15', 1, 6, 156, NULL),
(378, 7, 602, 4, 'Updated stock from 42904 to 43720 items. Stock for HOLLOW BLOCKS is now at 43720 ', '2015-11-10', '14:52:15', 1, 816, 21, NULL),
(379, 7, 602, 4, 'Updated stock from 43720 to 44518 items. Stock for HOLLOW BLOCKS is now at 44518 ', '2015-11-10', '14:53:03', 1, 798, 21, NULL),
(380, 8, 536, 4, 'Updated stock from 6 to 7 items. Stock for KETTLE (ARMCO) AKT -172WD(B) is now at 7 ', '2015-11-10', '17:39:31', 1, 1, 156, NULL),
(381, 8, 535, 4, 'Updated stock from 6 to 7 items. Stock for HOT PLATE (ARMCO) MODEL:AEC-C10(5) is now at 7 ', '2015-11-10', '17:39:41', 1, 1, 156, NULL),
(382, 7, 497, 4, 'Updated stock from 88 to 89 items. Stock for NYUMBA CEMENT is now at 89 ', '2015-11-11', '11:03:15', 1, 1, 156, NULL),
(383, 6, 568, 4, 'Updated stock from 11 to 16 items. Stock for EMPTY JERYCAN 2OLTS is now at 16 ', '2015-11-11', '12:01:51', 1, 5, 156, NULL),
(384, 6, 568, 4, 'Updated stock from 16 to 17 items. Stock for EMPTY JERYCAN 2OLTS is now at 17 ', '2015-11-11', '12:02:26', 1, 1, 156, NULL),
(385, 6, 716, 4, 'Added new stock of 0 items for BROOMS - MAKUTI -', '2015-11-11', '13:04:24', 1, 0, 0, 10),
(386, 6, 716, 4, 'Updated stock from 0 to 5 items. Stock for BROOMS - MAKUTI - is now at 5 ', '2015-11-11', '13:05:03', 1, 5, 156, NULL),
(387, 7, 530, 4, 'Updated stock from 0 to 716 items. Stock for TILE 600X600MM WHITE CODE:P6028 is now at 716 ', '2015-11-11', '13:23:38', 1, 716, 156, NULL),
(388, 10, 717, 4, 'Added new stock of 0 items for FLOOR TILE - WHITE - GAYA MAGMA 60 BLANCO', '2015-11-11', '13:38:16', 1, 0, 0, 10),
(389, 10, 717, 4, 'Updated stock from 0 to 939 items. Stock for FLOOR TILE - WHITE - GAYA MAGMA 60 BLANCO is now at 939 ', '2015-11-11', '13:39:02', 1, 939, 156, NULL),
(390, 6, 611, 4, 'Updated stock from 0 to 1 items. Stock for SHEAR - HEDGE SHEAR - is now at 1 ', '2015-11-12', '11:08:23', 1, 1, 156, NULL),
(391, 6, 718, 4, 'Added new stock of 0 items for PPR MALE SOCKET 25 X 1/2 ', '2015-11-12', '13:12:13', 1, 0, 0, 10),
(392, 6, 718, 4, 'Updated stock from 0 to 2 items. Stock for PPR MALE SOCKET 25 X 1/2  is now at 2 ', '2015-11-12', '13:12:53', 1, 2, 81, NULL),
(393, 6, 719, 4, 'Added new stock of 0 items for PPR MALE SOCKET 32 X 1', '2015-11-12', '13:41:14', 1, 0, 0, 10);
INSERT INTO `stock_log` (`stock_log_id`, `store_id`, `mat_id`, `user_id`, `log_details`, `log_date`, `log_time`, `site_id`, `qty`, `sup_id`, `pack_id`) VALUES
(394, 6, 719, 4, 'Updated stock from 0 to 2 items. Stock for PPR MALE SOCKET 32 X 1 is now at 2 ', '2015-11-12', '13:41:49', 1, 2, 81, NULL),
(395, 6, 720, 4, 'Added new stock of 0 items for PPR FEMALE SOCKET 25 X 1/2', '2015-11-12', '13:44:26', 1, 0, 0, 10),
(396, 6, 720, 4, 'Updated stock from 0 to 7 items. Stock for PPR FEMALE SOCKET 25 X 1/2 is now at 7 ', '2015-11-12', '13:44:58', 1, 7, 81, NULL),
(397, 6, 721, 4, 'Added new stock of 0 items for PPR ELBOW 25MM', '2015-11-12', '13:52:23', 1, 0, 0, 10),
(398, 6, 721, 4, 'Updated stock from 0 to 3 items. Stock for PPR ELBOW 25MM is now at 3 ', '2015-11-12', '13:53:01', 1, 3, 81, NULL),
(399, 6, 722, 4, 'Added new stock of 0 items for PPR ELBOW 32MM', '2015-11-12', '13:56:04', 1, 0, 0, 10),
(400, 6, 722, 4, 'Updated stock from 0 to 17 items. Stock for PPR ELBOW 32MM is now at 17 ', '2015-11-12', '13:56:51', 1, 17, 81, NULL),
(401, 6, 723, 4, 'Added new stock of 0 items for 110 BEND 45', '2015-11-12', '13:59:44', 1, 0, 0, 10),
(402, 6, 723, 4, 'Updated stock from 0 to 2 items. Stock for 110 BEND 45 is now at 2 ', '2015-11-12', '14:00:21', 1, 2, 81, NULL),
(403, 6, 724, 4, 'Added new stock of 0 items for PVC 110 BEND 90', '2015-11-12', '14:06:49', 1, 0, 0, 10),
(404, 6, 724, 4, 'Updated stock from 0 to 6 items. Stock for PVC 110 BEND 90 is now at 6 ', '2015-11-12', '14:07:29', 1, 6, 81, NULL),
(405, 6, 725, 4, 'Added new stock of 0 items for PPR TEE 32MM', '2015-11-12', '14:09:14', 1, 0, 0, 10),
(406, 6, 722, 4, 'Updated stock from 17 to 19 items. Stock for PPR ELBOW 32MM is now at 19 ', '2015-11-12', '14:10:28', 1, 2, 81, NULL),
(407, 6, 725, 4, 'Updated stock from 0 to 7 items. Stock for PPR TEE 32MM is now at 7 ', '2015-11-12', '14:13:07', 1, 7, 81, NULL),
(408, 6, 726, 4, 'Added new stock of 0 items for PVC 160 TEE', '2015-11-12', '14:16:31', 1, 0, 0, 10),
(409, 6, 726, 4, 'Updated stock from 0 to 1 items. Stock for PVC 160 TEE is now at 1 ', '2015-11-12', '14:17:12', 1, 1, 81, NULL),
(410, 6, 727, 4, 'Added new stock of 0 items for PPR REDUCER TEE 32 X 25MM', '2015-11-12', '14:43:38', 1, 0, 0, 10),
(411, 6, 727, 4, 'Updated stock from 0 to 12 items. Stock for PPR REDUCER TEE 32 X 25MM is now at 12 ', '2015-11-12', '14:44:13', 1, 12, 81, NULL),
(412, 6, 728, 4, 'Added new stock of 0 items for FLOOR TRAP 110 X2 X1.5', '2015-11-12', '14:45:57', 1, 0, 0, 10),
(413, 6, 728, 4, 'Updated stock from 0 to 2 items. Stock for FLOOR TRAP 110 X2 X1.5 is now at 2 ', '2015-11-12', '14:46:25', 1, 2, 81, NULL),
(414, 6, 729, 4, 'Added new stock of 0 items for 110 INLET', '2015-11-12', '14:47:44', 1, 0, 0, 10),
(415, 6, 729, 4, 'Updated stock from 0 to 2 items. Stock for 110 INLET is now at 2 ', '2015-11-12', '14:48:10', 1, 2, 81, NULL),
(416, 6, 730, 4, 'Added new stock of 0 items for PVC REDUCER BUSH 160 X 110', '2015-11-12', '14:49:45', 1, 0, 0, 10),
(417, 6, 730, 4, 'Updated stock from 0 to 2 items. Stock for PVC REDUCER BUSH 160 X 110 is now at 2 ', '2015-11-12', '14:50:12', 1, 2, 81, NULL),
(418, 6, 731, 4, 'Added new stock of 0 items for PVC REDUCER 110 X 2', '2015-11-12', '14:52:12', 1, 0, 0, 10),
(419, 6, 731, 4, 'Updated stock from 0 to 2 items. Stock for PVC REDUCER 110 X 2 is now at 2 ', '2015-11-12', '14:52:43', 1, 2, 81, NULL),
(420, 6, 732, 4, 'Added new stock of 0 items for TANGIT GLUE 500ML', '2015-11-12', '14:54:11', 1, 0, 0, 10),
(421, 6, 732, 4, 'Updated stock from 0 to 2 items. Stock for TANGIT GLUE 500ML is now at 2 ', '2015-11-12', '14:54:37', 1, 2, 81, NULL),
(422, 6, 733, 4, 'Added new stock of 0 items for WELDING RODS - PACKETS -', '2015-11-12', '14:56:54', 1, 0, 0, 25),
(423, 6, 733, 4, 'Updated stock from 0 to 3 items. Stock for WELDING RODS - PACKETS - is now at 3 ', '2015-11-12', '14:57:21', 1, 3, 176, NULL),
(424, 6, 44, 4, 'Updated stock from 0 to 2 items. Stock for GATE VALVE 1â€ is now at 2 ', '2015-11-12', '15:04:03', 1, 2, 176, NULL),
(425, 7, 497, 4, 'Updated stock from 82 to 83.5 items. Stock for NYUMBA CEMENT is now at 83.5 ', '2015-11-12', '16:43:52', 1, 2, 156, NULL),
(426, 6, 44, 4, 'Updated stock from 2 to 22 items. Stock for GATE VALVE 1â€ is now at 22 ', '2015-11-12', '17:48:26', 1, 20, 176, NULL),
(427, 6, 509, 4, 'Updated stock from 22.5 to 35 items. Stock for TRANSEAL is now at 35 ', '2015-11-13', '10:10:24', 1, 13, 156, NULL),
(428, 6, 736, 4, 'Added new stock of 0 items for OMO - HESBONE STORE-', '2015-11-13', '15:44:26', 1, 0, 0, 19),
(429, 6, 733, 4, 'Updated stock from 0 to 2 items. Stock for WELDING RODS - PACKETS - is now at 2 ', '2015-11-13', '16:23:24', 1, 2, 176, NULL),
(430, 6, 516, 4, 'Updated stock from 0 to 20 items. Stock for WATER PROOF / HYSEAL is now at 20 ', '2015-11-16', '13:01:52', 1, 20, 176, NULL),
(431, 6, 525, 4, 'Added new stock of 5 items for DIESEL ENGINE OIL 15W - 40', '2015-11-16', '13:05:43', 1, 5, 0, 16),
(432, 6, 525, 4, 'Updated stock from 5 to 105 items. Stock for DIESEL ENGINE OIL 15W - 40 is now at 105 ', '2015-11-16', '13:06:15', 1, 100, 15, NULL),
(433, 7, 497, 4, 'Updated stock from 67.5 to 69.5 items. Stock for NYUMBA CEMENT is now at 69.5 ', '2015-11-16', '13:25:05', 1, 2, 156, NULL),
(434, 7, 497, 4, 'Updated stock from 57.5 to 59.5 items. Stock for NYUMBA CEMENT is now at 59.5 ', '2015-11-16', '14:25:03', 1, 2, 156, NULL),
(435, 6, 493, 4, 'Updated stock from 2 to 12 items. Stock for CUTTING DISK NORMAL 7\' is now at 12 ', '2015-11-16', '14:44:43', 1, 10, 156, NULL),
(436, 6, 738, 4, 'Added new stock of 0 items for CHALKS - SCHOOL CHALKS -', '2015-11-16', '16:10:18', 1, 0, 0, 10),
(437, 6, 738, 4, 'Updated stock from 0 to 280 items. Stock for CHALKS - SCHOOL CHALKS - is now at 280 ', '2015-11-16', '16:11:07', 1, 280, 156, NULL),
(438, 7, 497, 4, 'Updated stock from 56.5 to 57 items. Stock for NYUMBA CEMENT is now at 57 ', '2015-11-16', '18:02:45', 1, 1, 156, NULL),
(439, 7, 497, 4, 'Updated stock from 31.5 to 32.5 items. Stock for NYUMBA CEMENT is now at 32.5 ', '2015-11-17', '17:25:34', 1, 1, 156, NULL),
(440, 7, 530, 4, 'Updated stock from 584 to 600 items. Stock for TILE 600X600MM WHITE CODE:P6028 is now at 600 ', '2015-11-18', '11:36:35', 1, 16, 156, NULL),
(441, 6, 741, 4, 'Added new stock of 0 items for STEEL NAIL 2\'', '2015-11-18', '11:54:06', 1, 0, 0, 10),
(442, 6, 741, 4, 'Updated stock from 0 to 84 items. Stock for STEEL NAIL 2\' is now at 84 ', '2015-11-18', '11:54:27', 1, 84, 156, NULL),
(443, 8, 742, 4, 'Added new stock of 0 items for HOSE PIPE -BRAIDED NYLON  3/4 X 50MTS -', '2015-11-18', '13:10:34', 1, 0, 0, 10),
(444, 8, 742, 4, 'Updated stock from 0 to 2 items. Stock for HOSE PIPE -BRAIDED NYLON  3/4 X 50MTS - is now at 2 ', '2015-11-18', '13:11:15', 1, 2, 176, NULL),
(445, 6, 743, 4, 'Added new stock of 0 items for WELDING RODS  2.5 MM  - LOOSE -', '2015-11-19', '13:47:14', 1, 0, 0, 10),
(446, 6, 743, 4, 'Updated stock from 0 to 184 items. Stock for WELDING RODS  2.5 MM  - LOOSE - is now at 184 ', '2015-11-19', '13:47:46', 1, 184, 156, NULL),
(447, 7, 744, 4, 'Added new stock of 43 items for G.I PIPE 4\' X 6MTS - CLASS C -', '2015-11-19', '14:00:43', 1, 43, 0, 10),
(448, 7, 745, 4, 'Added new stock of 4 items for METAL PIPE 4\' X 6MTS - CLASS C -', '2015-11-19', '14:02:07', 1, 4, 0, 10),
(449, 7, 755, 4, 'Added new stock of 4 items for G.I PIPE 6\'X 6MTS - CLASS C -', '2015-11-19', '14:03:57', 1, 4, 0, 10),
(450, 7, 746, 4, 'Added new stock of 4 items for METAL PIPE 6\' X 6MTS - CLASS C -', '2015-11-19', '14:04:15', 1, 4, 0, 10),
(451, 7, 745, 4, 'Updated stock from 4 to 57 items. Stock for METAL PIPE 4\' X 6MTS - CLASS C - is now at 57 ', '2015-11-19', '14:05:11', 1, 53, 156, NULL),
(452, 7, 750, 4, 'Added new stock of 43 items for G.I PIPE 1\' X 3MTS -CLASS C -', '2015-11-19', '15:40:56', 1, 43, 0, 10),
(453, 7, 747, 4, 'Added new stock of 7 items for G.I PIPE 1 1/2 \' X 6MTS -CLASS C -', '2015-11-19', '15:41:10', 1, 7, 0, 10),
(454, 7, 748, 4, 'Added new stock of 19 items for G.I PIPE 2\' X 6MTS -CLASS C -', '2015-11-19', '15:41:27', 1, 19, 0, 10),
(455, 7, 749, 4, 'Added new stock of 7 items for G.I PIPE 2 1/2 \' X 6MTS -CLASS C -', '2015-11-19', '15:41:49', 1, 7, 0, 10),
(456, 7, 756, 4, 'Added new stock of 160 items for G.I PIPE 1\'X 6MTS - CLASS C -', '2015-11-19', '15:43:34', 1, 160, 0, 10),
(457, 7, 751, 4, 'Added new stock of 41 items for PVC PIPE 10\' X 6MTS -CLASS 41 -', '2015-11-19', '15:48:03', 1, 41, 0, 10),
(458, 7, 758, 4, 'Added new stock of 1 items for PVC PIPE 12\'X 6MTS - CLASS 41 -', '2015-11-19', '15:48:35', 1, 1, 0, 10),
(459, 7, 753, 4, 'Added new stock of 7 items for PVC PIPE 6\' X 6MTS -CLASS 41 -', '2015-11-19', '15:49:09', 1, 7, 0, 10),
(460, 7, 760, 4, 'Added new stock of 20 items for PVC PIPE 1 1/4\' X6MTS  - CLASS 41 -', '2015-11-19', '15:49:26', 1, 20, 0, 10),
(461, 7, 754, 4, 'Added new stock of 20 items for PVC TEE 8\'', '2015-11-19', '15:49:51', 1, 20, 0, 10),
(462, 7, 407, 4, 'Added new stock of 100 items for CONDUITS 25MM', '2015-11-19', '15:57:36', 1, 100, 0, 10),
(463, 6, 762, 4, 'Added new stock of 0 items for PETROL  FUEL', '2015-11-19', '16:41:23', 1, 0, 0, 16),
(464, 7, 497, 4, 'Updated stock from 18.5 to 19 items. Stock for NYUMBA CEMENT is now at 19 ', '2015-11-20', '11:57:45', 1, 1, 156, NULL),
(465, 8, 500, 4, 'Updated stock from 0 to 0.75 items. Stock for BINDING WIRE is now at 0.75 ', '2015-11-20', '12:29:46', 1, 1, 156, NULL),
(466, 6, 763, 4, 'Added new stock of 40 items for WATERPROOF / HYSEAL - 1KG PKT -', '2015-11-20', '16:15:49', 1, 40, 0, 10),
(467, 7, 549, 4, 'Updated stock from 0 to 6 items. Stock for PVC 4\' GREY is now at 6 ', '2015-11-20', '16:27:31', 1, 6, 156, NULL),
(468, 7, 764, 4, 'Added new stock of 6 items for PVC PIPE 4\' - CLASS C - ORANGE', '2015-11-20', '16:30:11', 1, 6, 0, 10),
(469, 7, 497, 4, 'Updated stock from 12 to 16 items. Stock for NYUMBA CEMENT is now at 16 ', '2015-11-20', '17:38:18', 1, 4, 156, NULL),
(470, 6, 590, 4, 'Updated stock from 0 to 3 items. Stock for GRINDING DISK 7\' is now at 3 ', '2015-11-23', '09:31:46', 1, 3, 176, NULL),
(471, 6, 65, 4, 'Updated stock from 0 to 100 items. Stock for GYPSUM FILLER is now at 100 ', '2015-11-23', '09:32:38', 1, 100, 125, NULL),
(472, 7, 497, 4, 'Updated stock from 11 to 191 items. Stock for NYUMBA CEMENT is now at 191 ', '2015-11-23', '10:46:24', 1, 180, 133, NULL),
(473, 7, 497, 4, 'Updated stock from 191 to 194 items. Stock for NYUMBA CEMENT is now at 194 ', '2015-11-23', '10:47:51', 1, 3, 156, NULL),
(474, 6, 564, 4, 'Updated stock from 1 to 2 items. Stock for CUTTING DISK - NORMAL -  9\' is now at 2 ', '2015-11-23', '15:33:30', 1, 1, 156, NULL),
(475, 6, 766, 4, 'Added new stock of 6 items for CUTTING DISK   NORMAL  14\'', '2015-11-23', '15:38:02', 1, 6, 0, 10),
(476, 6, 498, 4, 'Updated stock from 0 to 20 items. Stock for THINNER is now at 20 ', '2015-11-23', '15:41:33', 1, 20, 74, NULL),
(477, 6, 53, 4, 'Updated stock from 4.5 to 24.5 items. Stock for TURPENTINE is now at 24.5 ', '2015-11-23', '15:41:51', 1, 20, 74, NULL),
(478, 6, 767, 4, 'Added new stock of 8 items for ALUMINIUM LADDER - LONG SCAFFOLDING ', '2015-11-23', '16:59:17', 1, 8, 0, 10),
(479, 6, 768, 4, 'Added new stock of 28 items for TAPS 1/2\' - DELAY ACTION PILLAR TAPS -', '2015-11-23', '17:40:45', 1, 28, 0, 10),
(480, 6, 510, 4, 'Updated stock from 78.75 to 79.75 items. Stock for WHITE UNDERCOAT  is now at 79.75 ', '2015-11-23', '18:00:08', 1, 1, 156, NULL),
(481, 6, 592, 4, 'Updated stock from 0 to 6 items. Stock for PAINT ROLLERS 9\' is now at 6 ', '2015-11-23', '18:01:29', 1, 6, 164, NULL),
(482, 7, 497, 4, 'Updated stock from 186 to 188 items. Stock for NYUMBA CEMENT is now at 188 ', '2015-11-24', '11:30:18', 1, 2, 156, NULL),
(483, 6, 649, 4, 'Updated stock from 171.5 to 173.5 items. Stock for DIESEL FUEL is now at 173.5 ', '2015-11-24', '11:37:25', 1, 2, 156, NULL),
(484, 6, 649, 4, 'Updated stock from 133.5 to 143.5 items. Stock for DIESEL FUEL is now at 143.5 ', '2015-11-24', '11:41:41', 1, 10, 156, NULL),
(485, 6, 779, 4, 'Added new stock of 0 items for WELDING RODS 3.2 MM - LOOSE  PKT -', '2015-11-24', '12:08:50', 1, 0, 0, 10),
(486, 6, 779, 4, 'Updated stock from 0 to 160 items. Stock for WELDING RODS 3.2 MM - LOOSE  PKT - is now at 160 ', '2015-11-24', '12:09:10', 1, 160, 156, NULL),
(487, 6, 781, 4, 'Added new stock of 0 items for WELDING RODS 2.5MM - PACKETS -', '2015-11-24', '12:33:37', 1, 0, 0, 26),
(488, 6, 781, 4, 'Updated stock from 0 to 6 items. Stock for WELDING RODS 2.5MM - PACKETS - is now at 6 ', '2015-11-24', '12:34:42', 1, 6, 156, NULL),
(489, 6, 782, 4, 'Added new stock of 0 items for HYDRO DRIP / IRRIGATION PIPES - BLACK  -', '2015-11-24', '12:51:32', 1, 0, 0, 17),
(490, 6, 782, 4, 'Updated stock from 0 to 1 items. Stock for HYDRO DRIP / IRRIGATION PIPES - BLACK  - is now at 1 ', '2015-11-24', '12:52:08', 1, 1, 156, NULL),
(491, 6, 568, 4, 'Updated stock from 16 to 27 items. Stock for EMPTY JERYCAN 2OLTS is now at 27 ', '2015-11-24', '12:55:22', 1, 11, 156, NULL),
(492, 7, 642, 4, 'Updated stock from 1176 to 1280 items. Stock for TILE 600X600 CODE:YS6-11C is now at 1280 ', '2015-11-24', '13:12:46', 1, 104, 156, NULL),
(493, 6, 156, 4, 'Added new stock of 13 items for CC OIL 90( GEAR OIL)', '2015-11-24', '15:10:40', 1, 13, 0, 16),
(494, 7, 796, 4, 'Added new stock of 0 items for ARMOURED CABLE 2.5MM 4 CORE  BLACK', '2015-11-24', '16:24:13', 1, 0, 0, 17),
(495, 7, 796, 4, 'Updated stock from 0 to 125 items. Stock for ARMOURED CABLE 2.5MM 4 CORE  BLACK is now at 125 ', '2015-11-24', '16:25:34', 1, 125, 174, NULL),
(496, 6, 797, 4, 'Added new stock of 0 items for CABLE GLAND 40MM LARGE - WITH SHROUD', '2015-11-24', '16:34:16', 1, 0, 0, 10),
(497, 6, 797, 4, 'Updated stock from 0 to 32 items. Stock for CABLE GLAND 40MM LARGE - WITH SHROUD is now at 32 ', '2015-11-24', '16:34:50', 1, 32, 174, NULL),
(498, 6, 798, 4, 'Added new stock of 0 items for CABLE TIES 12\'   BLACK', '2015-11-24', '16:35:54', 1, 0, 0, 10),
(499, 6, 798, 4, 'Updated stock from 0 to 200 items. Stock for CABLE TIES 12\'   BLACK is now at 200 ', '2015-11-24', '16:36:39', 1, 200, 174, NULL),
(500, 7, 799, 4, 'Added new stock of 0 items for ARMOURED CABLE ALUMINIUM 120MM 4 CORE  -  BLACK  -', '2015-11-24', '17:43:46', 1, 0, 0, 17),
(501, 7, 799, 4, 'Updated stock from 0 to 52 items. Stock for ARMOURED CABLE ALUMINIUM 120MM 4 CORE  -  BLACK  - is now at 52 ', '2015-11-24', '17:44:16', 1, 52, 156, NULL),
(502, 8, 800, 4, 'Added new stock of 0 items for ARMOURED CABLE COPPER 25MM 4 CORE  BLACK', '2015-11-24', '18:06:41', 1, 0, 0, 17),
(503, 8, 800, 4, 'Updated stock from 0 to 55 items. Stock for ARMOURED CABLE COPPER 25MM 4 CORE  BLACK is now at 55 ', '2015-11-24', '18:07:06', 1, 55, 156, NULL),
(504, 6, 65, 4, 'Updated stock from 54 to 57 items. Stock for GYPSUM FILLER is now at 57 ', '2015-11-25', '13:27:25', 1, 3, 156, NULL),
(505, 7, 497, 4, 'Updated stock from 161 to 162 items. Stock for NYUMBA CEMENT is now at 162 ', '2015-11-25', '18:02:47', 1, 1, 156, NULL),
(506, 7, 497, 4, 'Updated stock from 162 to 162.5 items. Stock for NYUMBA CEMENT is now at 162.5 ', '2015-11-25', '18:03:21', 1, 1, 156, NULL),
(507, 7, 497, 4, 'Updated stock from 162.5 to 163.5 items. Stock for NYUMBA CEMENT is now at 163.5 ', '2015-11-30', '11:32:17', 1, 1, 156, NULL),
(508, 7, 497, 4, 'Updated stock from 160.5 to 161.5 items. Stock for NYUMBA CEMENT is now at 161.5 ', '2015-11-30', '11:33:48', 1, 1, 156, NULL),
(509, 7, 497, 4, 'Updated stock from 159 to 160 items. Stock for NYUMBA CEMENT is now at 160 ', '2015-11-30', '11:36:43', 1, 1, 156, NULL),
(510, 7, 805, 4, 'Added new stock of 0 items for SINGLE CORE ALUMINIUM 300 S.Q MM', '2015-11-30', '12:30:44', 1, 0, 0, 17),
(511, 7, 805, 4, 'Updated stock from 0 to 74 items. Stock for SINGLE CORE ALUMINIUM 300 S.Q MM is now at 74 ', '2015-11-30', '12:32:13', 1, 74, 156, NULL),
(512, 7, 805, 4, 'Updated stock from 38 to 44.8 items. Stock for SINGLE CORE ALUMINIUM 300 S.Q MM is now at 44.8 ', '2015-11-30', '12:35:35', 1, 7, 156, NULL),
(513, 6, 636, 4, 'Updated stock from 9 to 11 items. Stock for LED DOWNLIGHTER - 7W COB-NW - is now at 11 ', '2015-11-30', '14:10:40', 1, 2, 156, NULL),
(514, 6, 806, 4, 'Added new stock of 22 items for BA SCREW', '2015-11-30', '14:13:47', 1, 22, 0, 10),
(515, 6, 252, 4, 'Updated stock from 5 to 6 items. Stock for SAND PAPER            P100 is now at 6 ', '2015-11-30', '16:12:31', 1, 1, 156, NULL),
(516, 6, 568, 4, 'Updated stock from 6 to 25 items. Stock for EMPTY JERYCAN 2OLTS is now at 25 ', '2015-11-30', '16:21:59', 1, 19, 156, NULL),
(517, 6, 591, 4, 'Updated stock from 1 to 3 items. Stock for SLAHERS is now at 3 ', '2015-11-30', '17:16:08', 1, 2, 156, NULL),
(518, 6, 568, 4, 'Updated stock from 5 to 14 items. Stock for EMPTY JERYCAN 2OLTS is now at 14 ', '2015-12-01', '12:49:39', 1, 9, 156, NULL),
(519, 6, 566, 4, 'Updated stock from 2 to 6 items. Stock for WHITE PAINT - EGG SHELL is now at 6 ', '2015-12-01', '13:05:08', 1, 4, 156, NULL),
(520, 6, 568, 4, 'Updated stock from 14 to 19 items. Stock for EMPTY JERYCAN 2OLTS is now at 19 ', '2015-12-01', '15:20:01', 1, 5, 156, NULL),
(521, 6, 494, 4, 'Updated stock from 0 to 2 items. Stock for CUTTING DISK - DIAMOND - 7\' is now at 2 ', '2015-12-01', '15:51:20', 1, 2, 23, NULL),
(522, 6, 811, 4, 'Added new stock of 1 items for PANGA / MACHETE', '2015-12-02', '08:32:47', 1, 1, 0, 10),
(523, 6, 814, 4, 'Added new stock of 20 items for WEATHER GUARD  -  MAZERAS  -', '2015-12-02', '12:56:48', 1, 20, 0, 16),
(524, 6, 816, 4, 'Added new stock of 0 items for HYDRAULIC FLUID - SHELL TELLUS 46 -', '2015-12-02', '13:28:02', 1, 0, 0, 16),
(525, 6, 816, 4, 'Updated stock from 0 to 40 items. Stock for HYDRAULIC FLUID - SHELL TELLUS 46 - is now at 40 ', '2015-12-02', '13:28:31', 1, 40, 15, NULL),
(526, 6, 817, 4, 'Added new stock of 0 items for CABLE LUG 300MM    (300-16)', '2015-12-02', '14:12:03', 1, 0, 0, 10),
(527, 6, 818, 4, 'Added new stock of 0 items for CABLE LUG 300MM    (300-14)', '2015-12-02', '14:12:29', 1, 0, 0, 10),
(528, 6, 818, 4, 'Updated stock from 0 to 10 items. Stock for CABLE LUG 300MM    (300-14) is now at 10 ', '2015-12-02', '14:13:22', 1, 10, 174, NULL),
(529, 6, 817, 4, 'Updated stock from 0 to 6 items. Stock for CABLE LUG 300MM    (300-16) is now at 6 ', '2015-12-02', '14:13:37', 1, 6, 174, NULL),
(530, 6, 762, 4, 'Updated stock from 0 to 11 items. Stock for PETROL  FUEL is now at 11 ', '2015-12-02', '16:20:46', 1, 11, 156, NULL),
(531, 7, 497, 4, 'Updated stock from 120 to 320 items. Stock for NYUMBA CEMENT is now at 320 ', '2015-12-02', '17:43:39', 1, 200, 133, NULL),
(532, 6, 825, 4, 'Added new stock of 0 items for CONTA GLUE - 4LTS TIN', '2015-12-03', '10:59:05', 1, 0, 0, 16),
(533, 6, 825, 4, 'Updated stock from 0 to 1.5 items. Stock for CONTA GLUE - 4LTS TIN is now at 1.5 ', '2015-12-03', '10:59:27', 1, 2, 156, NULL),
(534, 7, 826, 4, 'Added new stock of 0 items for TILE ADHESIVE - 25KG BAG -', '2015-12-03', '12:29:38', 1, 0, 0, 19),
(535, 7, 826, 4, 'Updated stock from 0 to 535 items. Stock for TILE ADHESIVE - 25KG BAG - is now at 535 ', '2015-12-03', '12:31:16', 1, 535, 156, NULL),
(536, 6, 827, 4, 'Added new stock of 0 items for POLYTHENE -  BLACK POLYTHENE -', '2015-12-03', '13:51:24', 1, 0, 0, 17),
(537, 6, 762, 4, 'Updated stock from 0 to 4 items. Stock for PETROL  FUEL is now at 4 ', '2015-12-03', '13:52:49', 1, 4, 156, NULL),
(538, 8, 542, 4, 'Updated stock from 1 to 2 items. Stock for METAL SPADE is now at 2 ', '2015-12-03', '14:08:49', 1, 1, 156, NULL),
(539, 8, 542, 4, 'Updated stock from 0 to 2 items. Stock for METAL SPADE is now at 2 ', '2015-12-03', '14:10:45', 1, 2, 156, NULL),
(540, 8, 542, 4, 'Updated stock from 0 to 2 items. Stock for METAL SPADE is now at 2 ', '2015-12-03', '17:10:05', 1, 2, 156, NULL),
(541, 7, 642, 4, 'Updated stock from 0 to 820 items. Stock for TILE 600X600 CODE:YS6-11C is now at 820 ', '2015-12-04', '17:40:31', 1, 820, 173, NULL),
(542, 10, 608, 20, '3 items added to stock for HAMMER - CLAW HAMMER - from APEX STEEL LTD (NAIROBI DIVISION). Inward No #VAL-INW-17', '2017-10-11', '15:36:28', 1, 3, 176, 0),
(543, 6, 645, 20, '1 items added to stock for BUS BAR from APEX STEEL LTD (NAIROBI DIVISION). Inward No #VALINW9', '2018-08-09', '10:58:45', 1, 1, 24, 0),
(544, 6, 735, 20, '1 items added to stock for ALUMINIUM LADDER - FOLDABLE -  LONG from APEX STEEL LTD (NAIROBI DIVISION). Inward No #VALINW9', '2018-08-09', '10:58:45', 1, 1, 161, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `store_name` varchar(40) NOT NULL,
  `store_desc` varchar(200) NOT NULL,
  `store_status` enum('Active','In-Active') DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `site_id`, `store_name`, `store_desc`, `store_status`) VALUES
(6, 1, 'Main Store(Block  B Basement 3)', 'Plumbing, Electrical, Paints, etc', 'Active'),
(7, 1, 'Cement Store(Block A Basement 3)', 'Cement, Tiles', 'Active'),
(8, 1, 'Yard  Store', 'General Items', 'Active'),
(9, 5, 'Sample Store', 'Sample Site', 'Active'),
(10, 1, 'BLOCK B GROUND FLOOR', 'BLOCK B GROUND FLOOR', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(80) NOT NULL,
  `sup_email` varchar(80) NOT NULL,
  `sup_alt_email` varchar(80) NOT NULL,
  `sup_postal` varchar(40) NOT NULL,
  `sup_physical` varchar(80) NOT NULL,
  `sup_phone` varchar(15) NOT NULL,
  `date_added` date DEFAULT NULL,
  `status` enum('Active','In-Active') DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_email`, `sup_alt_email`, `sup_postal`, `sup_physical`, `sup_phone`, `date_added`, `status`) VALUES
(1, 'APEX STEEL LTD (NAIROBI DIVISION)', 'm.ghaghda@apex-steel.com', '', '18441-00400', 'Nairobi-Kenya', '254732668020', '2015-08-13', 'Active'),
(2, 'AQUAMIST LIMITED', 'info@aquamistwater.com', '', '66856-00800', 'Nairobi-Kenya', '2540204447244', '2015-08-13', 'Active'),
(3, 'Assa Abloy', '', '', '', '', '', '2015-08-13', 'Active'),
(4, 'ATLAS HARDWARE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(5, 'BTB INSURANCE BROKERS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(6, 'CALEX HOLDING LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(7, 'CANTON DECORATORS ', 'jayeshbeej@gmail.com', '', 'No Address', 'Nairobi-Kenya', '254722720667', '2015-08-13', 'Active'),
(8, 'CHANDARIA INDUSTRIES LTD.', '', '', '', '', '', '2015-08-13', 'Active'),
(9, 'CHANGZHOU CAMINO BUILDING MATERIAL CO. LT', '', '', '', '', '', '2015-08-13', 'Active'),
(10, 'CHARLES M. TOLLO.', '', '', '', '', '', '2015-08-13', 'Active'),
(11, 'COMMERCIAL & INDUSTRIAL EQUIPMENT LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(12, 'COMMISSIONER OF CUSTOMS & EXCISE DEPARTME', '', '', '', '', '', '2015-08-13', 'Active'),
(13, 'Compact Freight Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(14, 'COMPLETE GRIP SOLUTIONS', '', '', '', '', '', '2015-08-13', 'Active'),
(15, 'CONCORD PETROLEUM LIMITED', 'dvarsani@concord.co.ke', '', '158-00623', 'Nairobi -Kenya', '254786765090', '2015-08-13', 'Active'),
(16, 'CONSTRUCTION SUPPORT LTD', 'sales@constructionsupport.co.ke', '', '17962-00500', 'Nairobi-Kenya ', '254720897184', '2015-08-13', 'Active'),
(17, 'CONTRACT CARPETING', '', '', '', '', '', '2015-08-13', 'Active'),
(18, 'DANIEL MUIRURI WANJIRU', '', '', '', '', '', '2015-08-13', 'Active'),
(19, 'DELCO AUTOMOTIVE', '', '', '', '', '', '2015-08-13', 'Active'),
(20, 'Detailing & General Craft Enterprises', '', '', '', '', '', '2015-08-13', 'Active'),
(21, 'DM CONCRETE(K)LIMITED', 'nd2684@yahoo.com', '', 'No postal', 'No physical', '254727861455', '2015-08-13', 'Active'),
(22, 'DNC SERVICES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(23, 'DOSHI ', 'electrical-sales@doshigroup.com', '', '40671-00100', 'Nairobi-Kenya', '254703030300', '2015-08-13', 'Active'),
(24, 'DOSHI ', 'hardware-sales@doshigroup.com', '', '40671-00100', 'Nairobi-Kenya', '254703030000', '2015-08-13', 'Active'),
(25, 'EAGLE PAPER ', 'eagle@africaonline.co.ke', '', 'No Address', 'Nairobi-Kenya', '254735888222', '2015-08-13', 'Active'),
(26, 'EAST AFRICA CONCRETE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(27, 'East African Cables Ltd', 'toyugi@eacables.com', '', '18243-00500', 'Nairobi-Kenya', '254722983055', '2015-08-13', 'Active'),
(28, 'ELECTRIC LINK INTERNATIONAL LTD', 'nairobi@electric-link.com', '', '58338-00200', 'Nairobi-Kenya', '254738606220', '2015-08-13', 'Active'),
(29, 'ELEGANT EXPO & TRADE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(30, 'ELEGANT FITTINGS LIMITED', 'noemail@noaddress.com', '', 'no postal', 'no  physical', '254710000000', '2015-08-13', 'Active'),
(31, 'ELITE TOOLS LIMITED.', '', '', '', '', '', '2015-08-13', 'Active'),
(32, 'EMIRATES SHIPPING', '', '', '', '', '', '2015-08-13', 'Active'),
(33, 'Engineering Supplies Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(34, 'EUROPA INFRASTRUCTURE TECHNOLOGIES (E.A)', 'info@europainfra.com', '', '31177-00600', 'Nairobi-Kenya', '254710000000', '2015-08-13', 'Active'),
(35, 'FAIRDEAL GLASS LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(36, 'FAIRDEAL UPVC ALUMINIUM & GLASS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(37, 'FURNITURE PALACE INTERNATIONAL (K) LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(38, 'Geotechnical & Allied Limited', '', '', '', '', '', '2015-08-13', 'Active'),
(39, 'GREAVES COTTON LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(40, 'Growing Commercial Services', '', '', '', '', '', '2015-08-13', 'Active'),
(41, 'HAJI ISSA ADAM & SONS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(42, 'HARSHIV AUTO SPARES HARDWARE AND SUPPLIER', 'harshivauto@yahoo.com', '', 'No postal', 'No physical', '254725650650', '2015-08-13', 'Active'),
(43, 'HCE KENYA LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(44, 'Heng Xing Office Furniture Limited', '', '', '', '', '', '2015-08-13', 'Active'),
(45, 'HI-TECH GRANITE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(46, 'HIGHWAY REGISRARS', '', '', '', '', '', '2015-08-13', 'Active'),
(47, 'HOMEZ DEVELOPMENT', '', '', '', '', '', '2015-08-13', 'Active'),
(48, 'HUZHOU SHANGYUAN WOOD PLASTICS COMPOSITES', '', '', '', '', '', '2015-08-13', 'Active'),
(49, 'HYDRAULIC HOES & PIPE LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(50, 'IDEAL CERAMICS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(51, 'IDRATA DEVELOPERS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(52, 'INSTALLATION SUPPORT LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(53, 'INSTYLE INTERIOR CONSULTANTS LTD.', '', '', '', '', '', '2015-08-13', 'Active'),
(54, 'JAY-RAJ ENTERPRISES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(55, 'Jelani Designs Limited', '', '', '', '', '', '2015-08-13', 'Active'),
(56, 'K.P.L.C A/C  4314671-01', '', '', '', '', '', '2015-08-13', 'Active'),
(57, 'KEN ALUMINIUM PRODUCTS LTD', 'y.wanjiru@kap-plastics.com', '', '78012-00507', 'Nairobi-Kenya ', '254733366003', '2015-08-13', 'Active'),
(58, 'KENBRO INDUSTRIES LTD', 'loretta@kenbro.co.ke', '', '41277-00100', 'Nairobi-Kenya', '254735633199', '2015-08-13', 'Active'),
(59, 'KENMICA AUTO & H/WARE 2009 LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(60, 'KENYA POWER & LIGHTING CO.LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(61, 'Kifaru Enterprises Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(62, 'KPLC', '', '', '', '', '', '2015-08-13', 'Active'),
(63, 'KRISHNA PARADISO AIR', '', '', '', '', '', '2015-08-13', 'Active'),
(64, 'KRISHNA PHARMACY LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(65, 'KUTCH INTERNATIONAL LTD', 'kutchltd@gmail.com', '', '38701-00600', 'No Address', '254788439544', '2015-08-13', 'Active'),
(66, 'Lalji Meghji Patel & Co. Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(67, 'LANDMARK AUTOSPARES &HARDWARE', '', '', '', '', '', '2015-08-13', 'Active'),
(68, 'Linyi Shengya Imports & Export Ltd.', '', '', '', '', '', '2015-08-13', 'Active'),
(69, 'MABATI ROLLING MILLS LTD', 'mumbow@mabati.com', '', '271-00204', 'Athi River', '254710000000', '2015-08-13', 'Active'),
(70, 'MAERSK KENYA LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(71, 'MAJITEC LTD', 'jt@majitec.co.ke', '', 'No Address', 'Nairobi-Kenya', '254721831684', '2015-08-13', 'Active'),
(72, 'MAKUPA TRANSIT SHADE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(73, 'MAQBOOL KHAN', '', '', '', '', '', '2015-08-13', 'Active'),
(74, 'MAROO POLYMERS LIMITED', 'maroo@maroopolymers.com', '', '32187 Nairobi-Kenya', 'Nairobi', '254724053822', '2015-08-13', 'Active'),
(75, 'MARVEL LEFESTYLE LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(76, 'MASUMALI MEGHJI INSURANCE BROKERS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(77, 'MBURU CONSULT ENGINEERING (K) LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(78, 'MEEZAN OIL ENTERPRISES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(79, 'MEGPREM LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(80, 'METRO WATER SERVICES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(81, 'METROPLASTICS KENYA LTD', 'sales@metrogroup.co.ke', '', '78485', 'Nairobi-Kenya', '254733608589', '2015-08-13', 'Active'),
(82, 'Midtop International Group Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(83, 'MOBILCASA', '', '', '', '', '', '2015-08-13', 'Active'),
(84, 'Mohammed Madhani & Co', '', '', '', '', '', '2015-08-13', 'Active'),
(85, 'MOSES OKOTH WANJERE', '', '', '', '', '', '2015-08-13', 'Active'),
(86, 'NAIROBI  CITY WATER & SEWERAGE CO. LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(87, 'Nairobi City County.', '', '', '', '', '', '2015-08-13', 'Active'),
(88, 'NASEER H MALIK', '', '', '', '', '', '2015-08-13', 'Active'),
(89, 'NATIONWIDE ELECTRICAL INDUSTRIES LIMITED', 'info@neiltd.com', '', '18525-00200', 'Nairobi-Kenya', '254710000000', '2015-08-13', 'Active'),
(90, 'Ngundo Investments & Contractors', '', '', '', '', '', '2015-08-13', 'Active'),
(91, 'NJOWA ELECTRICAL & NETWORKING SOLUTIONS', '', '', '', '', '', '2015-08-13', 'Active'),
(92, 'OIL SEALS & BEARINGS CENTRE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(93, 'PARADISO INTERNO', '', '', '', '', '', '2015-08-13', 'Active'),
(94, 'PAUL MWANGI', '', '', '', '', '', '2015-08-13', 'Active'),
(95, 'PHOENIX CONTRACTORS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(96, 'PINDORIA PRAKASH NARAN', '', '', '', '', '', '2015-08-13', 'Active'),
(97, 'PINTU BUILDERS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(98, 'POLYTHENE INDUSTRIES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(99, 'PRITAM ENTERPRISES', 'maggiemutisya@yahoo.com', '', 'No Address', 'Nairobi-Kenya ', '254734404342', '2015-08-13', 'Active'),
(100, 'PROFIX SYSTEMS LTD', 'info@profixsystem.co.ke', '', '9728-00200', 'Nairobi-Kenya', '254724732806', '2015-08-13', 'Active'),
(101, 'promax Industrial Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(102, 'REGISTER OF M/VEHICLE', '', '', '', '', '', '2015-08-13', 'Active'),
(103, 'RELIABLE ELECTRICAL ENGINEERS (NRB) LTD', 'admin@reenl.com', '', '41489-00100', 'Nairobi-Kenya', '254721359545', '2015-08-13', 'Active'),
(104, 'RENTOKIL INITIAL KENYA LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(105, 'Rhino Special Products Ltd', 'judy@rhinospecialproducts.co.ke', '', 'No Address', 'Nairobi-Kenya', '254722321791', '2015-08-13', 'Active'),
(106, 'RODS AND STEELS LIMITED', 'sales@rodsnsteel.co.ke', '', 'No Postal', 'Nairobi-Kenya', '254710000000', '2015-08-13', 'Active'),
(107, 'SAFAL MITEK LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(108, 'Safaricom Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(109, 'SECUREX AGENCIES (K) LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(110, 'SECURITY ALERT SERVICES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(111, 'SHANGHAI EAST BEST TRADING CO.', '', '', '', '', '', '2015-08-13', 'Active'),
(112, 'SHAZAD ENTERPRISES', 'noemail@noaddress.com', '', 'No postal', 'No physical', '254722678973', '2015-08-13', 'Active'),
(113, 'SHENYANG WHEIZONG REVOLVING MACHINERY CO.', '', '', '', '', '', '2015-08-13', 'Active'),
(114, 'SHIV SURGICAL LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(115, 'SHIVKAITASH', '', '', '', '', '', '2015-08-13', 'Active'),
(116, 'SIMAR CONCRETE WORKS', '', '', '', '', '', '2015-08-13', 'Active'),
(117, 'SLOPES AGENCIES LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(118, 'SOMOCHEM KENYA LTD', 'paul.mburu@somochem.com', '', '11100-00400', 'Nairobi-Kenya', '254731013971', '2015-08-13', 'Active'),
(119, 'Spans Ventures Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(120, 'STEPHEN JUMA ODHIAMBO', '', '', '', '', '', '2015-08-13', 'Active'),
(121, 'STUTEE ENTERPRISES', '', '', '', '', '', '2015-08-13', 'Active'),
(122, 'TECHNOCONSTRUCT KENYA LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(123, 'TECHNOPLAST LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(124, 'TILE ', 'sachin@tilecentre.com', '', '3115-00200', 'Nairobi-Kenya ', '254736723300', '2015-08-13', 'Active'),
(125, 'TILE HARD TRADERS LIMITED', 'tilehard@gmail.com', '', '175-00610', 'No address', '254707533149', '2015-08-13', 'Active'),
(126, 'TIMSALES LTD', 'kunal@timsales.com', '', '18080-00500', 'Nairobi-Kenya ', '254733861763', '2015-08-13', 'Active'),
(127, 'TONONOKA ROLLING MILLS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(128, 'TONONOKA STEELS LTD', 'mohan@tononokasteels.com', '', '44689-00100', 'Nairobi-Kenya ', '254727531117', '2015-08-13', 'Active'),
(129, 'TOTAL (K) LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(130, 'TOTAL OFFICE SOLUTIONS', '', '', '', '', '', '2015-08-13', 'Active'),
(131, 'TRANSAD ADVERTISING NETWORK', '', '', '', '', '', '2015-08-13', 'Active'),
(132, 'TRON ENTERPRISES', 'yvonnekatu@gmail.com', '', '66521-00800', 'Nairobi-Kenya', '254722751751', '2015-08-13', 'Active'),
(133, 'TUFFSTEEL LIMITED', 'cement@tuffsteel.co.ke', '', '10757-00200', 'Nairobi-Kenya', '254734855505', '2015-08-13', 'Active'),
(134, 'ULTIMATE FIRE SOLUTIONS', 'noemail@noaddress.com', '', '59770-00200', 'No physical', '254710000000', '2015-08-13', 'Active'),
(135, 'VALESCO  HOLDINGS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(136, 'VARIETY FLOORING WORKS LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(137, 'Varsiva Enterprises Ltd', '', '', '', '', '', '2015-08-13', 'Active'),
(138, 'Veting Power', '', '', '', '', '', '2015-08-13', 'Active'),
(139, 'VILLA CARE LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(140, 'VISHELECTRIC LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(141, 'VITALIS OWINO ONYANGO', '', '', '', '', '', '2015-08-13', 'Active'),
(142, 'VITALIS OWINO ONYANGO.', '', '', '', '', '', '2015-08-13', 'Active'),
(143, 'WALTER .O. OGADA', '', '', '', '', '', '2015-08-13', 'Active'),
(144, 'WANANCHI GROUP LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(145, 'WATER RESOURCES MGNT AUTHORITY', '', '', '', '', '', '2015-08-13', 'Active'),
(146, 'WATERWAYS AFRICA', '', '', '', '', '', '2015-08-13', 'Active'),
(147, 'WAYS ENTERPRISES', '', '', '', '', '', '2015-08-13', 'Active'),
(148, 'WEMA TRANSPORTERS LIMITED', 'nuruvasaya@yahoo.com', '', 'No postal', 'No physical', '254725957478', '2015-08-13', 'Active'),
(149, 'WILHELMSEN SHIPS SERVICE LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(150, 'WINCOMP SERVICES LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(151, 'YANTRA EQUIPMENT SOLUTIONS LTD', 'sales@yantra.co.ke', '', '25007-00603', 'Nairobi-Kenya ', '254721447844', '2015-08-13', 'Active'),
(152, 'YONGKANG BOHUANG', '', '', '', '', '', '2015-08-13', 'Active'),
(153, 'ZIZU INVESTMENTS LIMITED', '', '', '', '', '', '2015-08-13', 'Active'),
(154, 'ZOAZHUANG HONGAI IMPORT$ EXPORT CO. LTD', '', '', '', '', '', '2015-08-13', 'Active'),
(155, 'Sample Supplier', 'sample@yahoo.com', '', '1234-00200-GPO Nairobi', '123 St Mombasa Rd', '234728456789', '2015-08-14', 'Active'),
(156, 'No Supplier', 'unknown@unknown.co.k', '', '00000', 'Unknown Address', '254721000000', '2015-08-17', 'Active'),
(157, 'UNITED ENGINEERING SUPPLIERS LIMITED', 'UNITED@GMAI.COM', '', '18233-00500 NAIROBI', 'NAIROBI', '254733882288', '2015-08-26', 'Active'),
(158, 'CHOKA SUPPLIES LTD', 'chokasupplies@gmail.com', '', '38711-00600 Nairobi', 'Nairobi', '254723332932', '2015-08-28', 'Active'),
(159, 'ASL LIMITED', 'noemail@noaddress.com', '', '18833-00500', 'Nairobi', '254727852198', '2015-09-04', 'Active'),
(160, 'SIGHT AND SOUND COMPUTERS', 'zipporah@sightsoundke.com', '', '66711-00800', 'Nairobi', '254724462089', '2015-09-04', 'Active'),
(161, 'BRUSH MANUFACTURERS LIMITED', 'sales@brush.co.ke', '', '48865-00100', 'Nairobi-Kenya', '254720293181', '2015-09-07', 'Active'),
(162, 'HARDEX LIMITED', 'info@hardexky.com', '', '39937-00623', 'Nairobi-Kenya', '254719553375', '2015-09-07', 'Active'),
(163, 'ELITE EARTHMOVERS LTD', 'eliteearthmoversltd@yahoo.com', '', '1328-00206', 'Nairobi-Kenya ', '254752999012', '2015-09-07', 'Active'),
(164, 'RAGSONS KENYA LTD', 'noemail@noaddress.com', '', 'No Address', 'Nairobi-Kenya', '254721790666', '2015-09-07', 'Active'),
(165, 'TONLECT ENTERPRISES LTD', 'info@tonlect.co.ke', '', '80196-80100', 'Mombasa-Kenya', '254737532841', '2015-09-07', 'Active'),
(166, 'PATSONS(K) LTD', 'jayeshbeej@gmail.com', '', '47358-00100', 'Nairobi-Kenya', '254710000000', '2015-09-07', 'Active'),
(167, 'CLASSIC CERAMICS LTD', 'classicceramics2010@yahoo.com', '', '1497-00606', 'Nairobi-Kenya', '254726282042', '2015-09-07', 'Active'),
(168, 'GUZMANIA TRADERS LTD', 'infonbi@guzmaniatraders.co.ke', '', 'No Address', 'Nairobi-Kenya ', '254721496360', '2015-09-07', 'Active'),
(169, 'SAJ ENTERPRISES LTD', 'noemail@noaddress.com', '', '45244-00100', 'No Address', '254733245005', '2015-09-07', 'Active'),
(170, 'STATPACK INDUSTRIES LTD', 'info@statpack.co.ke', '', '22015-00400', 'Nairobi-Kenya ', '254723952837', '2015-09-07', 'Active'),
(171, 'BASCO PRODUCTS (K) LTD', 'nilesh@bascopaints.com', '', '78485', 'Nairobi-Kenya ', '254733430965', '2015-09-07', 'Active'),
(172, 'SHANKAR LTD', 'SHANKK@GMAIL.COM', '', '89 ', 'NAIROBI', '25477777777777', '2015-09-08', 'Active'),
(173, 'TILE AND CARPET CENTRE', 'MAIL@MSA.TILECENTRE.COM', '', '3115-00200 NAIROBI', 'NAIROBI', '254722657000', '2015-09-09', 'Active'),
(174, 'METSEC CABLES LIMITED', 'MET@GMAIL.COM', '', '75963-00200', 'NAIROBI', '254703030500', '2015-09-09', 'Active'),
(175, 'LED POWER TECHNOLOGIES E.A LTD', 'INFO@LPTECHNOLOGY.CO.KE ', '', '32705 - 00600', 'NAIROBI-KENYA', '254727747893', '2015-10-09', 'Active'),
(176, 'WORLD SOURCE ENTERPRISE LIMITED', 'WORLDSOURCE15@GMAIL.COM', '', '39942-00600', 'NAIROBI', '254722720667', '2015-10-19', 'Active'),
(177, 'WOODWAYS LTD', 'info@woodwayskenya.com', '', '56582-00200', 'Road C, Off Enterprise Rd, Industrial Area', '254733374022', '2015-11-30', 'Active'),
(178, 'KINGS KITCHEN LTD', 'info@kingskitchenltd.com', '', '56582-00200', 'Road C, Off Enterprise Rd, Industrial Area', '254733374022', '2015-11-30', 'Active'),
(179, 'Westlands Office(Eldama Ravine Rd)', 'info@elegantproperties.co.ke', '', '32705  00600', 'Eldama Ravine Rd', '254720000000', '2015-12-01', 'Active'),
(180, 'Woodland View Limited(Tonokona)', 'info@elegantproperties.co.ke', '', '32705  00600', 'Westlands', '254720000000', '2015-12-01', 'Active'),
(181, 'Ajman Investment Kenya', 'ajman@elegantproperties.co.ke', '', '32705  00600', 'Westlands', '254720000000', '2015-12-01', 'Active'),
(182, 'Eurecca Developers LTD', 'eurecca@elegantproperties.co.ke', '', '32705  00600', 'Westlands', '254720000000', '2015-12-01', 'Active'),
(183, 'Ravine Park Limited', 'ravinepark@elegantproperties.co.ke', '', '32705  00600', 'Westlands', '254720000000', '2015-12-01', 'Active'),
(184, 'Forestscape Limited', 'forestscape@elegantproperties.co.ke', '', '32705  00600', 'Lower Kabete Rd-Westlands', '254720000000', '2015-12-01', 'Active'),
(185, 'CORE B/SYSTEMS', 'noemail@noaddress.com', '', 'noaddress', 'noaddress', '254720000000', '2015-12-01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_contacts`
--

DROP TABLE IF EXISTS `suppliers_contacts`;
CREATE TABLE `suppliers_contacts` (
  `cont_id` int(11) NOT NULL,
  `cont_name` varchar(80) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `cont_email` varchar(80) NOT NULL,
  `cont_phone` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_delivery_note`
--

DROP TABLE IF EXISTS `temp_delivery_note`;
CREATE TABLE `temp_delivery_note` (
  `delivery_id` int(11) NOT NULL,
  `delivery_no` varchar(200) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `qty` float NOT NULL,
  `pack_id` int(11) NOT NULL,
  `del_approval_id` int(11) NOT NULL,
  `from_site_id` int(11) NOT NULL,
  `to_site_id` int(11) NOT NULL,
  `vehicle_no` varchar(20) NOT NULL,
  `taken_by` varchar(20) NOT NULL,
  `attn_user_id` int(11) NOT NULL,
  `delivery_status` enum('New','Approved','In-Process','Completed') NOT NULL DEFAULT 'New',
  `site_code` varchar(50) DEFAULT NULL,
  `del_details` varchar(300) DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_time` time DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `temp_delivery_note`
--

INSERT INTO `temp_delivery_note` (`delivery_id`, `delivery_no`, `mat_id`, `qty`, `pack_id`, `del_approval_id`, `from_site_id`, `to_site_id`, `vehicle_no`, `taken_by`, `attn_user_id`, `delivery_status`, `site_code`, `del_details`, `del_date`, `del_time`, `user_id`, `delivery_name`) VALUES
(9, 'VAL-DEL-2', 769, 14, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', '5&quot; X 2.5&quot; X 28.1m Long - For batching plant', '2015-11-24', '09:30:16', 20, '#1939'),
(10, 'VAL-DEL-3', 770, 21, 10, 0, 1, 6, 'None', 'Peter', 33, 'New', 'VAL', 'no desc', '2015-11-24', '09:35:05', 20, '#1940'),
(11, 'VAL-DEL-3', 771, 1, 10, 0, 1, 6, 'None', 'Peter', 33, 'New', 'VAL', 'Wooden Table', '2015-11-24', '09:37:54', 20, '#1940'),
(12, 'VAL-DEL-5', 772, 2, 10, 0, 1, 6, 'none', 'MRS NASSIM', 33, 'New', 'VAL', 'Single Ruled', '2015-11-24', '09:45:11', 20, '#1941'),
(13, 'VAL-DEL-6', 773, 1, 10, 0, 1, 6, 'KCE 780M', 'Evans', 35, 'New', 'VAL', 'SIze: 650 X 340mm', '2015-11-24', '09:53:50', 20, '#1942'),
(14, 'VAL-DEL-7', 740, 20, 10, 0, 1, 6, 'KBJ 873R', 'Peter', 33, 'New', 'VAL', 'welding rods', '2015-11-24', '11:09:22', 20, '#1943'),
(15, 'VAL-DEL-7', 774, 1, 10, 0, 1, 6, 'KBJ 873R', 'Peter', 33, 'New', 'VAL', 'black sheets', '2015-11-24', '11:12:27', 20, '#1943'),
(16, 'VAL-DEL-7', 776, 1, 10, 0, 1, 6, 'KBJ 873R', 'Peter', 33, 'New', 'VAL', '2&quot; X 1&quot; X 20ft', '2015-11-24', '11:39:11', 20, '#1943'),
(17, 'VAL-DEL-10', 524, 5, 10, 0, 1, 6, 'KCE 780M', 'Evans', 33, 'New', 'VAL', 'White', '2015-11-24', '11:51:14', 20, '#1944'),
(18, 'VAL-DEL-10', 92, 1, 26, 0, 1, 6, 'KCE 780M', 'Evans', 33, 'New', 'VAL', 'welding rods', '2015-11-24', '11:51:37', 20, '#1944'),
(19, 'VAL-DEL-12', 500, 1, 24, 0, 1, 6, 'KBJ 837R', 'Ndungu', 33, 'New', 'VAL', 'binding wire', '2015-11-24', '11:59:56', 20, '#1946'),
(20, 'VAL-DEL-12', 165, 2, 19, 0, 1, 6, 'KBJ 837R', 'Ndungu', 33, 'New', 'VAL', 'grease', '2015-11-24', '12:00:27', 20, '#1946'),
(21, 'VAL-DEL-12', 778, 4, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', '40mm X 40mm X 25mm 30m ', '2015-11-24', '12:05:30', 20, '#1946'),
(22, 'VAL-DEL-12', 780, 2, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'industrial sockets', '2015-11-24', '12:52:00', 20, '#1946'),
(23, 'VAL-DEL-12', 705, 2, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'complete with engine and tool kit', '2015-11-24', '12:53:58', 20, '#1946'),
(24, 'VAL-DEL-12', 706, 2, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'for vibrator machines', '2015-11-24', '12:54:53', 20, '#1946'),
(25, 'VAL-DEL-12', 519, 5, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'hacksaw blades', '2015-11-24', '12:55:32', 20, '#1946'),
(26, 'VAL-DEL-19', 688, 240, 10, 0, 1, 6, 'KAP 420J', 'Michael Nzuke', 33, 'New', 'VAL', 'cuplock without spigots', '2015-11-24', '13:07:45', 20, '#1947'),
(27, 'VAL-DEL-19', 683, 200, 10, 0, 1, 6, 'KAP 420J', 'Michael Nzuke', 33, 'New', 'VAL', '30 X 30 X 300MM', '2015-11-24', '13:09:16', 20, '#1947'),
(28, 'VAL-DEL-21', 691, 400, 10, 0, 1, 6, 'KAK 426D', 'Harun Matheka', 33, 'New', 'VAL', 'cuplock ledgers', '2015-11-24', '13:12:52', 20, '#1948'),
(29, 'VAL-DEL-21', 694, 400, 10, 0, 1, 6, 'KAK 426D', 'Harun Matheka', 33, 'New', 'VAL', 'cuplock ledgers 2.5m', '2015-11-24', '14:34:36', 20, '#1948'),
(30, 'VAL-DEL-21', 784, 1, 4, 0, 1, 6, 'KAK 426D', 'Harun Matheka', 33, 'New', 'VAL', 'Assorted pieces', '2015-11-24', '14:45:12', 20, '#1948'),
(31, 'VAL-DEL-21', 785, 11.7, 17, 0, 1, 6, 'KAK 426D', 'Harun Matheka', 33, 'New', 'VAL', 'Pipe for batching plant', '2015-11-24', '14:48:40', 20, '#1948'),
(32, 'VAL-DEL-25', 786, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', ' sizes 180mm to 50mm X 500mm', '2015-11-24', '14:57:50', 20, '#1949'),
(33, 'VAL-DEL-25', 786, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', ' sizes 150mm to 150mm X 500mm for links', '2015-11-24', '15:02:44', 20, '#1949'),
(34, 'VAL-DEL-25', 787, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', ' sizes 150mm x 125mm x 1650mm', '2015-11-24', '15:03:37', 20, '#1949'),
(35, 'VAL-DEL-25', 789, 2, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'With 4 pins and 4 locks', '2015-11-24', '15:09:50', 20, '#1949'),
(36, 'VAL-DEL-25', 788, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'DN 180mm', '2015-11-24', '15:10:28', 20, '#1949'),
(37, 'VAL-DEL-25', 788, 2, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'DN 150mm', '2015-11-24', '15:10:34', 20, '#1949'),
(38, 'VAL-DEL-31', 639, 1, 24, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'with 2pcs end clamps for cleaning', '2015-11-24', '15:17:12', 20, '#1949'),
(39, 'VAL-DEL-31', 791, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'Ball catcher', '2015-11-24', '15:24:39', 20, '#1949'),
(40, 'VAL-DEL-31', 792, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'with 2 gate valve 20mm and 40mm', '2015-11-24', '15:26:20', 20, '#1949'),
(41, 'VAL-DEL-31', 793, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'hard cleaning ball', '2015-11-24', '15:27:05', 20, '#1949'),
(42, 'VAL-DEL-31', 794, 1, 10, 0, 1, 6, 'KBJ 873R', 'Ndungu', 33, 'New', 'VAL', 'ignition keys', '2015-11-24', '15:27:45', 20, '#1949'),
(43, 'VAL-DEL-36', 795, 1, 10, 0, 1, 6, 'KMCZ 254J', 'Jackson Michiri', 33, 'New', 'VAL', '25Amps multi 9 C45N', '2015-11-24', '15:36:32', 20, '#1950'),
(44, 'VAL-DEL-36', 606, 3, 24, 0, 1, 6, 'KMCZ 254', 'Jackson Michira', 33, 'New', 'VAL', 'insulation tapes', '2015-11-25', '12:55:15', 20, '#1950'),
(45, 'VAL-DEL-36', 801, 1, 10, 0, 1, 6, 'KMCZ 254G', 'Jackson Machire', 33, 'New', 'VAL', 'Laminated copies 1 cover', '2015-11-25', '13:01:04', 20, '#1950'),
(46, 'VAL-DEL-39', 735, 2, 10, 0, 1, 6, 'KBC 276L', 'Walter Omedo', 20, 'New', 'VAL', 'Aluminium Ladder', '2017-10-11', '14:34:16', 20, 'Delivery to woodlands site'),
(47, 'VAL-DEL-39', 567, 3, 10, 0, 1, 6, 'KBC 276L', 'Walter Omedo', 20, 'New', 'VAL', 'Empty Buckets', '2017-10-11', '14:34:36', 20, 'Delivery to woodlands site'),
(48, 'VAL-DEL-39', 609, 1, 10, 0, 1, 6, 'KBC 276L', 'Walter Omedo', 20, 'New', 'VAL', 'Power backup', '2017-10-11', '14:34:56', 20, 'Delivery to woodlands site'),
(49, 'VALDEL42', 162, 2, 10, 0, 1, 4, 'KAC 678K', 'Walter Omedo', 20, 'New', 'VAL', 'Battery Water', '2018-08-07', '11:54:41', 20, 'Test Delivery'),
(50, 'VALDEL42', 391, 5, 10, 0, 1, 4, 'KAC 678K', 'Walter Omedo', 20, 'New', 'VAL', 'GI Pipes 5 Inch', '2018-08-07', '11:55:12', 20, 'Test Delivery'),
(51, 'VALDEL44', 415, 4, 10, 0, 1, 8, 'KBC 567P', 'Walter Omedo', 20, 'New', 'VAL', 'Circular Boxes', '2018-08-07', '12:06:51', 20, 'Test Delivery Items'),
(52, 'VALDEL44', 67, 20, 16, 0, 1, 8, 'KBC 567P', 'Walter Omedo', 20, 'New', 'VAL', 'Eggshell Gon Metal', '2018-08-07', '12:10:51', 20, 'Test Delivery Items'),
(58, 'VALDEL51', 91, 2, 10, 0, 1, 7, 'KBC 242L', 'Walter', 20, 'New', 'VAL', 'Test', '2018-08-11', '09:47:40', 20, 'Test Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `temp_inward`
--

DROP TABLE IF EXISTS `temp_inward`;
CREATE TABLE `temp_inward` (
  `g_inward_id` int(11) NOT NULL,
  `g_mat_id` int(11) NOT NULL,
  `lpo_id` int(11) NOT NULL,
  `site_code` varchar(3) NOT NULL,
  `req_no` varchar(50) NOT NULL,
  `checked_by` varchar(200) NOT NULL,
  `confirmed_by` int(11) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `g_ref_no` varchar(30) NOT NULL,
  `g_user_id` int(11) NOT NULL,
  `g_date` date NOT NULL,
  `g_time` time NOT NULL,
  `delivery_note_no` varchar(40) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `g_desc` varchar(200) NOT NULL,
  `g_delivered_by` varchar(200) NOT NULL,
  `vehicle_no` varchar(40) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `pack_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `temp_lpos`
--

DROP TABLE IF EXISTS `temp_lpos`;
CREATE TABLE `temp_lpos` (
  `lpo_id` int(11) NOT NULL,
  `lpo_user_id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `exp_date` date NOT NULL,
  `lpo_details` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `lpo_ref_no` varchar(30) NOT NULL,
  `lpo_date` date NOT NULL,
  `lpo_time` time NOT NULL,
  `lpo_status` enum('Approved','Cancelled','New') NOT NULL,
  `lpo_approve_id` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `req_ref_no` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `temp_lpos`
--

INSERT INTO `temp_lpos` (`lpo_id`, `lpo_user_id`, `req_id`, `exp_date`, `lpo_details`, `qty`, `mat_id`, `pack_id`, `site_id`, `lpo_ref_no`, `lpo_date`, `lpo_time`, `lpo_status`, `lpo_approve_id`, `sup_id`, `req_ref_no`, `price`) VALUES
(16, 20, 0, '2015-10-07', 'Np Desc', 3, 109, 10, 5, 'SAM-LPO-9', '2015-10-02', '00:00:00', 'Approved', 20, 0, 'SAM-RQ-5', 200),
(13, 3, 0, '2015-10-06', 'No Desc', 12, 27, 10, 4, 'SIT-LPO-1', '2015-10-02', '00:00:00', 'Approved', 20, 22, '', 150),
(12, 3, 0, '2015-10-06', 'No Desc', 12, 57, 10, 4, 'SIT-LPO-1', '2015-10-02', '00:00:00', 'Approved', 20, 22, '', 150),
(17, 20, 0, '2015-10-07', 'No Desc', 10, 167, 10, 5, 'SAM-LPO-9', '2015-10-02', '00:00:00', 'Approved', 20, 0, 'SAM-RQ-5', 350.45);

-- --------------------------------------------------------

--
-- Table structure for table `temp_requisitions`
--

DROP TABLE IF EXISTS `temp_requisitions`;
CREATE TABLE `temp_requisitions` (
  `req_id` int(11) NOT NULL,
  `req_ref_no` varchar(40) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `req_user_id` int(11) NOT NULL,
  `mat_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `floor` varchar(300) NOT NULL,
  `qty` int(11) NOT NULL,
  `req_details` varchar(200) NOT NULL,
  `pack_size` varchar(200) NOT NULL,
  `req_time` time NOT NULL,
  `req_date` date NOT NULL,
  `req_name` varchar(200) DEFAULT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `site_code` varchar(5) DEFAULT NULL,
  `req_status` enum('New','Approved','Cancelled','Completed','Waiting LPO Approval','Waiting Delivery') DEFAULT 'New',
  `requested_by` varchar(100) DEFAULT 'New',
  `approved_by` int(11) DEFAULT 0,
  `req_approve_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `temp_requisitions`
--

INSERT INTO `temp_requisitions` (`req_id`, `req_ref_no`, `site_id`, `user_id`, `req_user_id`, `mat_id`, `section_id`, `floor`, `qty`, `req_details`, `pack_size`, `req_time`, `req_date`, `req_name`, `pack_id`, `site_code`, `req_status`, `requested_by`, `approved_by`, `req_approve_id`) VALUES
(1, 'VALRQ4', 1, 20, 0, 65, 4, '31', 2, 'Gypsum Filler', '1 Bag 25 Kg', '10:32:49', '2018-07-26', 'Gypsum  Materials', 27, NULL, 'New', 'Walter Omedo', 0, 0),
(2, 'VALRQ4', 1, 20, 0, 427, 4, '31', 1, 'Cement', '1 Bag 25 Kg', '10:33:10', '2018-07-26', 'Gypsum  Materials', 27, NULL, 'New', 'Walter Omedo', 0, 0),
(25, 'VALRQ26', 1, 45, 0, 283, 7, '36', 20, 'Welding Rods Steel', '1 Piece', '12:07:28', '2018-07-31', 'Welding Materials 7th Floor', 10, NULL, 'New', 'Walter Omedo', 0, 0),
(26, 'VALRQ26', 1, 45, 0, 77, 7, '36', 1, 'Welding Machine', '1 Piece', '12:07:44', '2018-07-31', 'Welding Materials 7th Floor', 10, NULL, 'New', 'Walter Omedo', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_delivery_notes`
--

DROP TABLE IF EXISTS `uploaded_delivery_notes`;
CREATE TABLE `uploaded_delivery_notes` (
  `uploaded_del_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `del_file_name` varchar(200) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `g_ref_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `uploaded_delivery_notes`
--

INSERT INTO `uploaded_delivery_notes` (`uploaded_del_id`, `user_id`, `del_file_name`, `upload_date`, `g_ref_no`) VALUES
(4, 3, '1443439455-delivery_note.jpg', '2015-09-28 14:24:15', 'VAL-INW-1'),
(5, 3, '1443439539-vrtImg_PID65_PVID214.jpg', '2015-09-28 14:25:39', 'VAL-INW-1'),
(6, 3, '1443514654-Printed Delivery Note.jpg', '2015-09-29 11:17:34', 'SAM-INW-1');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_lpos`
--

DROP TABLE IF EXISTS `uploaded_lpos`;
CREATE TABLE `uploaded_lpos` (
  `uploaded_req_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `req_file_name` varchar(200) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `req_ref_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploaded_lpos`
--

INSERT INTO `uploaded_lpos` (`uploaded_req_id`, `user_id`, `req_file_name`, `upload_date`, `req_ref_no`) VALUES
(1, 1, '1439211395-VALLEY VIEW OFFICE PARK BAR QUOTE.pdf', '2015-08-10 15:56:35', 'VVOP343');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_reqs`
--

DROP TABLE IF EXISTS `uploaded_reqs`;
CREATE TABLE `uploaded_reqs` (
  `uploaded_lpo_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lpo_file_name` varchar(200) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `lpo_ref_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `lname` varchar(80) NOT NULL,
  `password` varbinary(80) NOT NULL,
  `ver_code` varchar(40) NOT NULL,
  `date_created` date NOT NULL,
  `last_login` datetime NOT NULL,
  `account_status` enum('Active','In-Active') NOT NULL,
  `user_role` enum('SiteManager','RegularUser','SiteAdmin','ContractorAdmin','CompanyAdmin','StoresManager','LPOManager') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `site_id`, `email`, `fname`, `lname`, `password`, `ver_code`, `date_created`, `last_login`, `account_status`, `user_role`) VALUES
(1, 5, 'admin@elegantproperties.co.ke', 'System', 'Admin', 0xc99aefbfbd5e1333efbfbd682cefbfbd1ed79eefbfbdefbfbdefbfbdefbfbdefbfbdefbfbd29efbfbd73222f79efbfbdefbfbdefbfbd7b323befbfbd, '255AF9C69D1CF3', '2015-07-22', '0000-00-00 00:00:00', 'Active', 'CompanyAdmin'),
(20, 1, 'info@nezasoft.net', 'Walter ', 'Omedo', 0x4aceb96aac0232ebfe6ebbf1c7dc2eb520dce6cc500066310b987ade59c58486, '555FABBF9E0504', '0000-00-00', '0000-00-00 00:00:00', 'Active', 'CompanyAdmin'),
(46, 1, 'nadeem@elegantproperties.co.ke', 'Nadeem', 'Jetha', '', '559DB6BD861E4A', '2017-10-09', '0000-00-00 00:00:00', 'In-Active', 'CompanyAdmin'),
(45, 1, 'walter.omedo@gmail.com', 'Walter', 'Adamba', 0x4aceb96aac0232ebfe6ebbf1c7dc2eb520dce6cc500066310b987ade59c58486, '559DB698105915', '2017-10-09', '0000-00-00 00:00:00', 'Active', 'CompanyAdmin'),
(48, 1, 'purchases@elegantproperties.co.ke', 'Dennis', 'Mbithi', 0x4c54222a8f659c78adac4811fa96236cf78d73ab7e17eb0103798f6600604f16, '45B714709A66B3', '2018-08-13', '0000-00-00 00:00:00', 'In-Active', 'CompanyAdmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `building_floors`
--
ALTER TABLE `building_floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `building_sections`
--
ALTER TABLE `building_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmation_approvals`
--
ALTER TABLE `confirmation_approvals`
  ADD PRIMARY KEY (`con_approval_id`);

--
-- Indexes for table `cpv`
--
ALTER TABLE `cpv`
  ADD PRIMARY KEY (`cpv_id`);

--
-- Indexes for table `delivery_approvals`
--
ALTER TABLE `delivery_approvals`
  ADD PRIMARY KEY (`del_approval_id`);

--
-- Indexes for table `delivery_confirmations`
--
ALTER TABLE `delivery_confirmations`
  ADD PRIMARY KEY (`del_con_id`);

--
-- Indexes for table `delivery_note`
--
ALTER TABLE `delivery_note`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `goods_inwards`
--
ALTER TABLE `goods_inwards`
  ADD PRIMARY KEY (`g_inward_id`);

--
-- Indexes for table `inward_approvals`
--
ALTER TABLE `inward_approvals`
  ADD PRIMARY KEY (`inw_approval_id`);

--
-- Indexes for table `lpos`
--
ALTER TABLE `lpos`
  ADD PRIMARY KEY (`lpo_id`);

--
-- Indexes for table `lpo_approvals`
--
ALTER TABLE `lpo_approvals`
  ADD PRIMARY KEY (`lpo_approval_id`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`man_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`mat_id`);

--
-- Indexes for table `materials_categories`
--
ALTER TABLE `materials_categories`
  ADD PRIMARY KEY (`mat_cat_id`);

--
-- Indexes for table `materials_issuance`
--
ALTER TABLE `materials_issuance`
  ADD PRIMARY KEY (`mat_issue_id`);

--
-- Indexes for table `materials_request_form`
--
ALTER TABLE `materials_request_form`
  ADD PRIMARY KEY (`mat_req_id`);

--
-- Indexes for table `materials_stock`
--
ALTER TABLE `materials_stock`
  ADD PRIMARY KEY (`mat_stock_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`prod_photo_id`);

--
-- Indexes for table `profile_photos`
--
ALTER TABLE `profile_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `rejection_reasons`
--
ALTER TABLE `rejection_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `requisition_approvals`
--
ALTER TABLE `requisition_approvals`
  ADD PRIMARY KEY (`req_approval_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `stock_log`
--
ALTER TABLE `stock_log`
  ADD PRIMARY KEY (`stock_log_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `suppliers_contacts`
--
ALTER TABLE `suppliers_contacts`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `temp_delivery_note`
--
ALTER TABLE `temp_delivery_note`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `temp_inward`
--
ALTER TABLE `temp_inward`
  ADD PRIMARY KEY (`g_inward_id`);

--
-- Indexes for table `temp_lpos`
--
ALTER TABLE `temp_lpos`
  ADD PRIMARY KEY (`lpo_id`);

--
-- Indexes for table `temp_requisitions`
--
ALTER TABLE `temp_requisitions`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `uploaded_delivery_notes`
--
ALTER TABLE `uploaded_delivery_notes`
  ADD PRIMARY KEY (`uploaded_del_id`);

--
-- Indexes for table `uploaded_lpos`
--
ALTER TABLE `uploaded_lpos`
  ADD PRIMARY KEY (`uploaded_req_id`);

--
-- Indexes for table `uploaded_reqs`
--
ALTER TABLE `uploaded_reqs`
  ADD PRIMARY KEY (`uploaded_lpo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `building_floors`
--
ALTER TABLE `building_floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `building_sections`
--
ALTER TABLE `building_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `confirmation_approvals`
--
ALTER TABLE `confirmation_approvals`
  MODIFY `con_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `cpv`
--
ALTER TABLE `cpv`
  MODIFY `cpv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `delivery_approvals`
--
ALTER TABLE `delivery_approvals`
  MODIFY `del_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `delivery_confirmations`
--
ALTER TABLE `delivery_confirmations`
  MODIFY `del_con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `delivery_note`
--
ALTER TABLE `delivery_note`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `goods_inwards`
--
ALTER TABLE `goods_inwards`
  MODIFY `g_inward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inward_approvals`
--
ALTER TABLE `inward_approvals`
  MODIFY `inw_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `lpos`
--
ALTER TABLE `lpos`
  MODIFY `lpo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lpo_approvals`
--
ALTER TABLE `lpo_approvals`
  MODIFY `lpo_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `man_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `mat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- AUTO_INCREMENT for table `materials_categories`
--
ALTER TABLE `materials_categories`
  MODIFY `mat_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `materials_issuance`
--
ALTER TABLE `materials_issuance`
  MODIFY `mat_issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1208;

--
-- AUTO_INCREMENT for table `materials_request_form`
--
ALTER TABLE `materials_request_form`
  MODIFY `mat_req_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials_stock`
--
ALTER TABLE `materials_stock`
  MODIFY `mat_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `pack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `prod_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `profile_photos`
--
ALTER TABLE `profile_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejection_reasons`
--
ALTER TABLE `rejection_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `requisition_approvals`
--
ALTER TABLE `requisition_approvals`
  MODIFY `req_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `stock_log`
--
ALTER TABLE `stock_log`
  MODIFY `stock_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `suppliers_contacts`
--
ALTER TABLE `suppliers_contacts`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_delivery_note`
--
ALTER TABLE `temp_delivery_note`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `temp_inward`
--
ALTER TABLE `temp_inward`
  MODIFY `g_inward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `temp_lpos`
--
ALTER TABLE `temp_lpos`
  MODIFY `lpo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `temp_requisitions`
--
ALTER TABLE `temp_requisitions`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `uploaded_delivery_notes`
--
ALTER TABLE `uploaded_delivery_notes`
  MODIFY `uploaded_del_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uploaded_lpos`
--
ALTER TABLE `uploaded_lpos`
  MODIFY `uploaded_req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploaded_reqs`
--
ALTER TABLE `uploaded_reqs`
  MODIFY `uploaded_lpo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
