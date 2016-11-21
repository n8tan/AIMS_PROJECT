-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2016 at 07:35 PM
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
(3, 'ickKuYvl5rbDzn7HRTuWInqnuTbudAJYiSXh/+bT/SG/7vLGfB09sQQdjJBFBOM74e5d3uYdRf5t6YDbeqmu5g==', 'brays_420@yahoo.com', 'Francis', 'Quintano', 2, 1);

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
(3, 1, 0, 0, 4, 2, 1, '2016-10-21 13:46:11'),
(4, 1, 0, 0, 4, 2, 1, '2016-10-21 13:50:33'),
(5, 1, 0, 0, 4, 2, 1, '2016-10-22 13:51:17'),
(6, 1, 0, 0, 4, 2, 1, '2016-10-22 13:52:19'),
(7, 1, 0, 0, 4, 2, 1, '2016-10-22 13:53:40'),
(8, 1, 0, 0, 4, 2, 1, '2016-10-22 13:54:23'),
(9, 1, 0, 0, 4, 2, 1, '2016-10-22 13:55:40'),
(10, 1, 0, 0, 4, 2, 1, '2016-10-24 13:56:05'),
(11, 1, 0, 0, 4, 2, 1, '2016-10-24 13:56:44'),
(12, 1, 0, 0, 4, 2, 1, '2016-10-24 14:01:24'),
(13, 1, 0, 0, 4, 2, 1, '2016-10-24 14:02:11'),
(14, 1, 0, 0, 4, 2, 1, '2016-10-24 14:02:46'),
(15, 1, 0, 0, 4, 2, 1, '2016-10-24 14:03:07'),
(16, 1, 0, 0, 4, 2, 1, '2016-10-27 14:03:31'),
(17, 1, 0, 0, 4, 2, 1, '2016-10-27 14:03:35'),
(18, 1, 0, 0, 4, 2, 1, '2016-10-27 14:03:52'),
(19, 1, 0, 0, 4, 2, 1, '2016-10-27 14:04:27'),
(20, 1, 0, 0, 4, 2, 1, '2016-10-27 14:05:20'),
(21, 1, 0, 0, 4, 2, 1, '2016-10-28 14:05:34'),
(22, 1, 0, 0, 4, 2, 1, '2016-10-28 14:14:36'),
(23, 1, 0, 0, 4, 2, 1, '2016-10-28 07:05:30'),
(24, 1, 0, 0, 4, 2, 1, '2016-11-04 07:26:15'),
(25, 1, 0, 0, 4, 2, 1, '2016-11-04 07:28:42'),
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
(68, 1, 3, 0, 1, 2, 1, '2016-11-16 17:46:51'),
(69, 1, 0, 0, 4, 2, 1, '2016-11-16 17:49:19'),
(70, 3, 0, 0, 4, 2, 1, '2016-11-17 14:59:27'),
(71, 1, 0, 0, 4, 2, 1, '2016-11-17 15:22:46'),
(72, 3, 0, 0, 4, 2, 1, '2016-11-17 16:22:46'),
(73, 3, 0, 0, 4, 2, 1, '2016-11-17 16:25:12'),
(74, 3, 0, 0, 4, 2, 1, '2016-11-17 16:26:06'),
(75, 3, 0, 0, 4, 2, 1, '2016-11-17 16:37:10'),
(76, 3, 0, 0, 4, 2, 1, '2016-11-17 16:46:12'),
(77, 3, 0, 0, 4, 2, 1, '2016-11-17 17:22:16'),
(78, 3, 0, 0, 4, 2, 1, '2016-11-17 17:29:27'),
(79, 1, 0, 0, 4, 2, 1, '2016-11-17 17:31:02'),
(80, 1, 0, 0, 4, 2, 1, '2016-11-17 17:32:27'),
(81, 1, 0, 0, 4, 2, 1, '2016-11-17 17:39:28'),
(82, 3, 0, 0, 4, 2, 1, '2016-11-17 17:42:39');

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
(1, 3, 'PLW5AYAFeFxSLER', '2016-11-16 17:46:51');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `log_type`
--
ALTER TABLE `log_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reset`
--
ALTER TABLE `reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
