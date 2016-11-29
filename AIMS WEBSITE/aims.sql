-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2016 at 07:34 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aims`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `isVisible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `password`, `email`, `first_name`, `last_name`, `type`, `isVisible`) VALUES
(1, 'Bxu3vNZaJbHg8I/ctCUChrqH56linY0CVhEDcMAZ9dhxMI1hiyYBXAocD1goEpyuXg68QjC8We2BPFayJ6cLiA==', 'bryce27923@gmail.com', 'Bryce', 'Deyto', 1, 1),
(29, 'bBFiADxQW4TSmBReiyLZeFhI8C62nbmLf3GZ27MDo1Q2Q911sl1aAG3oSf1wfpCoUvrQkq0SG9u1ueT3f3+Clw==', 'brays_420@yahoo.com', 'Brays', 'Bryce', 2, 0),
(69, 'bBFiADxQW4TSmBReiyLZeFhI8C62nbmLf3GZ27MDo1Q2Q911sl1aAG3oSf1wfpCoUvrQkq0SG9u1ueT3f3+Clw==', 'ana.albano05@gmail.com', 'Mei', 'Albano', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`id`, `type`) VALUES
(1, 'Supervisor'),
(2, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id`, `action`) VALUES
(1, 'Added'),
(2, 'Edited'),
(3, 'Deleted'),
(4, 'Logged in'),
(5, 'Reset'),
(6, 'Generated'),
(7, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `target_account` int(11) DEFAULT NULL,
  `target_item` int(11) DEFAULT NULL,
  `action` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `deviceID` int(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user`, `target_account`, `target_item`, `action`, `type`, `deviceID`, `timestamp`) VALUES
(1, 1, 1, 0, 1, 2, 1, '2016-10-20 12:17:20'),
(2, 1, 0, 0, 4, 2, 1, '2016-10-21 13:04:44'),
(4, 1, 0, 0, 4, 2, 1, '2016-10-21 13:50:33'),
(5, 1, 0, 0, 4, 2, 1, '2016-10-22 13:51:17'),
(8, 1, 0, 0, 4, 2, 1, '2016-10-22 13:54:23'),
(9, 1, 0, 0, 4, 2, 1, '2016-10-22 13:55:40'),
(10, 1, 0, 0, 4, 2, 1, '2016-10-24 13:56:05'),
(11, 1, 0, 0, 4, 2, 1, '2016-10-24 13:56:44'),
(16, 1, 0, 0, 4, 2, 1, '2016-10-27 14:03:31'),
(17, 1, 0, 0, 4, 2, 1, '2016-10-27 14:03:35'),
(18, 1, 0, 0, 4, 2, 1, '2016-10-27 14:03:52'),
(19, 1, 0, 0, 4, 2, 1, '2016-10-27 14:04:27'),
(20, 1, 0, 0, 4, 2, 1, '2016-10-27 14:05:20'),
(21, 1, 0, 0, 4, 2, 1, '2016-10-28 14:05:34'),
(26, 1, 0, 0, 4, 2, 1, '2016-11-04 07:28:44'),
(27, 1, 0, 0, 4, 2, 1, '2016-11-04 07:28:54'),
(28, 1, 0, 0, 4, 2, 1, '2016-11-04 07:28:55'),
(29, 1, 0, 0, 4, 2, 1, '2016-11-04 07:28:56'),
(30, 1, 0, 0, 4, 2, 1, '2016-11-04 07:28:57'),
(31, 1, 0, 0, 4, 2, 1, '2016-11-06 23:07:54'),
(32, 1, 0, 0, 4, 2, 1, '2016-11-08 03:32:54'),
(33, 1, 0, 0, 4, 2, 1, '2016-11-08 04:47:55'),
(34, 1, 0, 0, 4, 2, 1, '2016-11-08 05:41:18'),
(35, 1, 0, 0, 4, 2, 1, '2016-11-08 06:02:49'),
(36, 1, 0, 0, 4, 2, 1, '2016-11-08 06:06:06'),
(37, 1, 0, 0, 4, 2, 1, '2016-11-08 06:07:57'),
(38, 1, 0, 0, 4, 2, 1, '2016-11-08 06:15:23'),
(39, 1, 0, 0, 4, 2, 1, '2016-11-15 03:27:08'),
(40, 1, 0, 0, 4, 2, 1, '2016-11-15 03:27:09'),
(41, 1, 0, 0, 4, 2, 1, '2016-11-15 03:40:47'),
(42, 1, 0, 0, 4, 2, 1, '2016-11-15 05:41:32'),
(43, 1, 0, 0, 4, 2, 1, '2016-11-15 06:20:40'),
(44, 1, 0, 0, 4, 2, 1, '2016-11-15 17:12:46'),
(45, 1, 0, 0, 4, 2, 1, '2016-11-16 05:36:06'),
(46, 1, 0, 0, 4, 2, 1, '2016-11-16 05:36:56'),
(47, 1, 0, 0, 4, 2, 1, '2016-11-16 05:56:45'),
(48, 1, 0, 0, 4, 2, 1, '2016-11-16 06:09:23'),
(49, 1, 0, 0, 4, 2, 2, '2016-11-16 06:09:43'),
(50, 1, 0, 0, 4, 2, 2, '2016-11-16 06:16:37'),
(51, 1, 0, 0, 4, 2, 1, '2016-11-16 06:16:42'),
(52, 1, 0, 0, 4, 2, 1, '2016-11-16 06:21:48'),
(53, 1, 0, 0, 4, 2, 2, '2016-11-16 06:22:09'),
(54, 1, 0, 0, 4, 2, 2, '2016-11-16 06:22:15'),
(55, 1, 0, 0, 4, 2, 1, '2016-11-16 10:42:54'),
(56, 1, 0, 0, 4, 2, 2, '2016-11-16 10:43:20'),
(57, 1, 0, 0, 4, 2, 2, '2016-11-16 10:46:47'),
(58, 1, 0, 0, 4, 2, 1, '2016-11-16 16:30:34'),
(59, 1, 0, 0, 4, 2, 1, '2016-11-16 16:50:43'),
(60, 1, 0, 0, 4, 2, 1, '2016-11-16 17:03:50'),
(61, 1, 0, 0, 4, 2, 1, '2016-11-16 17:10:58'),
(62, 1, 0, 0, 4, 2, 1, '2016-11-16 17:23:52'),
(63, 1, 0, 0, 4, 2, 1, '2016-11-16 17:29:15'),
(64, 1, 0, 0, 4, 2, 1, '2016-11-16 17:31:05'),
(65, 1, 0, 0, 4, 2, 1, '2016-11-16 17:33:54'),
(66, 1, 0, 0, 4, 2, 1, '2016-11-16 17:35:33'),
(67, 1, 0, 0, 4, 2, 1, '2016-11-16 17:46:12'),
(69, 1, 0, 0, 4, 2, 1, '2016-11-16 17:49:19'),
(71, 1, 0, 0, 4, 2, 1, '2016-11-17 15:22:46'),
(79, 1, 0, 0, 4, 2, 1, '2016-11-17 17:31:02'),
(80, 1, 0, 0, 4, 2, 1, '2016-11-17 17:32:27'),
(81, 1, 0, 0, 4, 2, 1, '2016-11-17 17:39:28'),
(85, 1, 0, 0, 4, 2, 1, '2016-11-21 15:19:03'),
(87, 1, 0, 0, 4, 2, 1, '2016-11-21 15:33:09'),
(88, 1, 0, 0, 4, 2, 1, '2016-11-21 16:25:23'),
(89, 1, 0, 0, 4, 2, 1, '2016-11-21 16:31:25'),
(90, 1, 0, 0, 4, 2, 1, '2016-11-22 03:17:09'),
(100, 1, 0, 0, 4, 2, 1, '2016-11-22 03:46:10'),
(102, 1, 0, 0, 4, 2, 1, '2016-11-22 03:52:48'),
(103, 1, 0, 0, 4, 2, 1, '2016-11-22 04:01:16'),
(104, 1, 0, 0, 4, 2, 1, '2016-11-22 04:08:23'),
(106, 1, 0, 0, 4, 2, 1, '2016-11-26 12:14:01'),
(108, 1, 0, 0, 4, 2, 1, '2016-11-26 12:26:34'),
(110, 1, 0, 0, 4, 2, 1, '2016-11-26 12:29:38'),
(111, 1, 0, 0, 4, 2, 1, '2016-11-26 12:32:14'),
(112, 1, 0, 0, 4, 2, 1, '2016-11-26 12:35:09'),
(114, 1, 0, 0, 4, 2, 1, '2016-11-26 12:37:53'),
(115, 1, 0, 0, 4, 2, 1, '2016-11-26 12:38:03'),
(116, 1, 0, 0, 4, 2, 1, '2016-11-26 12:40:03'),
(118, 1, 0, 0, 4, 2, 1, '2016-11-26 12:43:16'),
(120, 1, 0, 0, 4, 2, 1, '2016-11-26 12:59:03'),
(121, 1, 0, 0, 4, 2, 1, '2016-11-26 13:37:12'),
(122, 1, 0, 0, 4, 2, 1, '2016-11-26 13:55:13'),
(123, 1, 0, 0, 4, 2, 1, '2016-11-26 14:02:21'),
(124, 1, 69, 0, 1, 2, 1, '2016-11-28 13:55:22'),
(125, 1, 0, 0, 4, 2, 1, '2016-11-26 14:08:52'),
(126, 1, 0, 0, 4, 2, 1, '2016-11-26 14:15:50'),
(127, 1, 0, 0, 4, 2, 1, '2016-11-26 14:16:54'),
(128, 1, 0, 0, 4, 2, 1, '2016-11-26 14:20:41'),
(129, 1, 0, 0, 4, 2, 1, '2016-11-26 14:26:39'),
(132, 1, 0, 0, 4, 2, 1, '2016-11-26 14:30:17'),
(133, 1, 0, 0, 4, 2, 1, '2016-11-26 14:33:18'),
(135, 1, 0, 0, 4, 2, 1, '2016-11-26 14:34:45'),
(136, 1, 0, 0, 4, 2, 1, '2016-11-26 14:37:58'),
(138, 1, 0, 0, 4, 2, 1, '2016-11-26 14:41:33'),
(140, 1, 0, 0, 4, 2, 1, '2016-11-26 14:42:41'),
(150, 1, 0, 0, 4, 2, 1, '2016-11-26 14:51:54'),
(154, 1, 0, 0, 4, 2, 1, '2016-11-26 14:53:54'),
(156, 1, 0, 0, 4, 2, 1, '2016-11-26 15:08:18'),
(159, 1, 0, 0, 4, 2, 1, '2016-11-26 15:17:15'),
(160, 1, 0, 0, 4, 2, 1, '2016-11-26 15:17:19'),
(165, 1, 0, 0, 4, 2, 1, '2016-11-26 15:43:48'),
(167, 1, 0, 0, 4, 2, 1, '2016-11-26 16:54:33'),
(168, 1, 0, 0, 4, 2, 1, '2016-11-26 16:57:43'),
(169, 1, 0, 0, 4, 2, 1, '2016-11-26 16:59:36'),
(170, 1, 0, 0, 4, 2, 1, '2016-11-26 17:02:30'),
(171, 1, 0, 0, 4, 2, 1, '2016-11-26 17:11:31'),
(172, 1, 0, 0, 4, 2, 1, '2016-11-26 17:13:07'),
(173, 1, 0, 0, 4, 2, 1, '2016-11-26 17:13:19'),
(174, 1, 0, 0, 4, 2, 1, '2016-11-26 17:20:03'),
(175, 1, 0, 0, 4, 2, 1, '2016-11-26 17:23:07'),
(176, 1, 0, 0, 4, 2, 1, '2016-11-26 17:29:01'),
(177, 1, 0, 0, 4, 2, 1, '2016-11-26 17:30:37'),
(178, 1, 0, 0, 4, 2, 1, '2016-11-26 17:31:13'),
(179, 1, 0, 0, 4, 2, 1, '2016-11-26 17:32:34'),
(180, 1, 0, 0, 4, 2, 1, '2016-11-26 17:58:22'),
(181, 1, 0, 0, 4, 2, 1, '2016-11-26 18:15:40'),
(182, 1, 0, 0, 4, 2, 1, '2016-11-26 18:43:30'),
(183, 1, 0, 0, 4, 2, 1, '2016-11-26 18:46:09'),
(184, 1, 0, 0, 4, 2, 1, '2016-11-26 18:46:44'),
(185, 1, 0, 0, 4, 2, 1, '2016-11-27 17:36:46'),
(186, 1, 0, 0, 4, 2, 1, '2016-11-27 17:47:17'),
(187, 1, 0, 0, 4, 2, 1, '2016-11-27 17:48:22'),
(188, 1, 0, 0, 4, 2, 1, '2016-11-27 17:51:55'),
(189, 1, 0, 0, 4, 2, 1, '2016-11-27 17:57:05'),
(190, 1, 0, 0, 4, 2, 1, '2016-11-27 17:58:53'),
(191, 1, 0, 0, 4, 2, 1, '2016-11-27 18:05:53'),
(193, 1, 0, 0, 4, 2, 1, '2016-11-27 18:14:51'),
(196, 1, 0, 0, 4, 2, 1, '2016-11-27 18:19:51'),
(198, 1, 0, 0, 4, 2, 1, '2016-11-27 18:21:58'),
(200, 1, 0, 0, 4, 2, 1, '2016-11-27 18:25:37'),
(202, 1, 0, 0, 4, 2, 1, '2016-11-27 18:29:23'),
(204, 1, 0, 0, 4, 2, 1, '2016-11-27 18:32:07'),
(207, 1, 0, 0, 4, 2, 1, '2016-11-27 18:34:33'),
(208, 1, 0, 0, 4, 2, 1, '2016-11-28 10:23:12'),
(211, 1, 0, 0, 4, 2, 1, '2016-11-28 10:41:35'),
(214, 1, 0, 0, 4, 2, 1, '2016-11-28 13:01:42'),
(215, 1, 0, 0, 4, 2, 1, '2016-11-28 13:03:37'),
(216, 1, 0, 0, 4, 2, 1, '2016-11-28 13:14:40'),
(219, 1, 0, 0, 4, 2, 1, '2016-11-28 13:20:41'),
(221, 1, 0, 0, 4, 2, 1, '2016-11-28 13:26:57'),
(222, 1, 0, 0, 4, 2, 1, '2016-11-28 13:37:36'),
(225, 1, 0, 0, 4, 2, 1, '2016-11-28 13:38:52'),
(227, 1, 0, 0, 4, 2, 1, '2016-11-28 13:39:36'),
(230, 1, 0, 0, 4, 2, 1, '2016-11-28 13:41:51'),
(231, 1, 0, 0, 4, 2, 1, '2016-11-28 13:41:56'),
(238, 1, 0, 0, 4, 2, 1, '2016-11-28 13:46:12'),
(242, 1, 0, 0, 4, 2, 1, '2016-11-28 13:49:47'),
(246, 1, 0, 0, 4, 2, 1, '2016-11-28 13:57:44'),
(247, 69, 0, 0, 4, 2, 1, '2016-11-28 13:57:56'),
(251, 1, 0, 0, 4, 2, 1, '2016-11-28 14:00:39'),
(252, 69, 0, 0, 4, 2, 1, '2016-11-28 14:01:24'),
(253, 1, 29, 0, 1, 2, 1, '2016-11-28 14:01:35'),
(254, 69, 0, 0, 4, 2, 1, '2016-11-28 14:08:06'),
(255, 69, 0, 0, 4, 2, 1, '2016-11-28 14:21:15'),
(256, 29, 0, 0, 4, 2, 1, '2016-11-28 14:23:41'),
(257, 69, 0, 0, 4, 2, 1, '2016-11-28 14:25:31'),
(258, 69, 0, 0, 4, 2, 1, '2016-11-28 14:26:11'),
(259, 69, 0, 0, 4, 2, 1, '2016-11-28 14:26:39'),
(260, 69, 0, 0, 4, 2, 1, '2016-11-28 14:27:16'),
(261, 69, 0, 0, 4, 2, 1, '2016-11-28 14:27:51'),
(262, 29, 0, 0, 4, 2, 1, '2016-11-28 14:30:37'),
(263, 29, 0, 0, 4, 2, 1, '2016-11-28 14:33:13'),
(264, 69, 0, 0, 4, 2, 1, '2016-11-28 14:33:23'),
(265, 1, 0, 0, 4, 2, 1, '2016-11-28 17:17:17'),
(266, 1, 0, 0, 4, 2, 1, '2016-11-28 17:29:06'),
(267, 1, 0, 0, 4, 2, 1, '2016-11-28 17:32:23'),
(268, 1, 0, 0, 4, 2, 1, '2016-11-28 17:39:41'),
(269, 1, 0, 0, 4, 2, 1, '2016-11-28 17:41:03'),
(270, 1, 0, 0, 4, 2, 1, '2016-11-28 17:41:55'),
(271, 1, 0, 0, 4, 2, 1, '2016-11-28 17:43:57'),
(272, 1, 0, 0, 4, 2, 1, '2016-11-28 17:45:38'),
(273, 1, 0, 0, 4, 2, 1, '2016-11-28 17:52:52'),
(275, 1, 0, 0, 4, 2, 1, '2016-11-28 17:54:16'),
(277, 1, 0, 0, 4, 2, 1, '2016-11-28 17:56:25'),
(279, 1, 0, 0, 4, 2, 1, '2016-11-28 17:57:47'),
(281, 1, 0, 0, 4, 2, 1, '2016-11-28 17:59:30'),
(283, 1, 0, 0, 4, 2, 1, '2016-11-28 18:01:54'),
(284, 1, 29, 0, 3, 2, 1, '2016-11-28 18:06:19'),
(285, 1, 0, 0, 4, 2, 1, '2016-11-28 18:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `log_type`
--

CREATE TABLE `log_type` (
  `id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_type`
--

INSERT INTO `log_type` (`id`, `type`) VALUES
(1, 'Inventory'),
(2, 'Account');

-- --------------------------------------------------------

--
-- Table structure for table `reset`
--

CREATE TABLE `reset` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset`
--

INSERT INTO `reset` (`id`, `user`, `code`, `timestamp`) VALUES
(1, 3, 'PLW5AYAFeFxSLER', '2016-11-16 17:46:51'),
(3, 9, 's8AJ0yJe6Hq686M', '2016-11-22 03:47:03'),
(4, 11, 'qAcqrDXAED0Hzhw', '2016-11-26 12:35:28'),
(5, 13, 'bfNL85B0uXxfeqX', '2016-11-26 12:43:41'),
(6, 14, 'BwfGfH8oNeMLHTN', '2016-11-26 14:08:42'),
(10, 25, 'fpUWeJewrbkvfva', '2016-11-28 10:45:31'),
(11, 0, '7X2wBYH3GwtnhJa', '2016-11-28 13:26:37'),
(12, 26, 'EopdnsumsQimFPc', '2016-11-28 13:46:31'),
(13, 27, 'RCOaVwRutvwmQ8x', '2016-11-28 13:47:21'),
(14, 28, 'sdPIWA1BOLQQFP7', '2016-11-28 13:55:41'),
(15, 29, 'Xvd1FTpCRHpr7oZ', '2016-11-28 14:01:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_type`
--
ALTER TABLE `log_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `log_type`
--
ALTER TABLE `log_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reset`
--
ALTER TABLE `reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
