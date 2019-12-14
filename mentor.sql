-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2018 at 05:53 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `password`) VALUES
(1, 'princi', '2F61FCFE7E627046B875E9C56BB54128');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

DROP TABLE IF EXISTS `mentors`;
CREATE TABLE IF NOT EXISTS `mentors` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`id`, `email`, `name`, `username`, `password`, `register_date`) VALUES
(1, 'arjun@gmail.com', 'Arjun', 'arjun', '7626d28b710e7f9e98d9dfbe9bf0d123', '2018-11-17 17:47:23'),
(2, 'vinaysk@gmail.com', 'Vinay S K', 'vinay', '5a8eaa3e637f51ba3f9df03355d7bc08', '2018-11-17 19:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

DROP TABLE IF EXISTS `stud_info`;
CREATE TABLE IF NOT EXISTS `stud_info` (
  `id` int(11) NOT NULL,
  `mid` int(2) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `Semester` varchar(2) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `SSLC` varchar(3) NOT NULL,
  `PUC` varchar(3) NOT NULL,
  `ia1_sub1` int(11) NOT NULL,
  `ia1_sub2` int(11) NOT NULL,
  `ia1_sub3` int(11) NOT NULL,
  `ia1_sub4` int(11) NOT NULL,
  `ia1_sub5` int(11) NOT NULL,
  `ia1_sub6` int(11) NOT NULL,
  `ia1_sub7` int(11) NOT NULL,
  `ia1_sub8` int(11) NOT NULL,
  `ia2_sub1` int(2) NOT NULL,
  `ia2_sub2` int(2) NOT NULL,
  `ia2_sub3` int(2) NOT NULL,
  `ia2_sub4` int(2) NOT NULL,
  `ia2_sub5` int(2) NOT NULL,
  `ia2_sub6` int(2) NOT NULL,
  `ia2_sub7` int(2) NOT NULL,
  `ia2_sub8` int(2) NOT NULL,
  `ia3_sub1` int(2) NOT NULL,
  `ia3_sub2` int(2) NOT NULL,
  `ia3_sub3` int(2) NOT NULL,
  `ia3_sub4` int(2) NOT NULL,
  `ia3_sub5` int(2) NOT NULL,
  `ia3_sub6` int(2) NOT NULL,
  `ia3_sub7` int(2) NOT NULL,
  `ia3_sub8` int(2) NOT NULL,
  `ach` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usn_fk` (`USN`),
  KEY `mid_fk` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_info`
--

INSERT INTO `stud_info` (`id`, `mid`, `USN`, `fname`, `lname`, `Semester`, `DOB`, `Gender`, `Phone`, `Address`, `SSLC`, `PUC`, `ia1_sub1`, `ia1_sub2`, `ia1_sub3`, `ia1_sub4`, `ia1_sub5`, `ia1_sub6`, `ia1_sub7`, `ia1_sub8`, `ia2_sub1`, `ia2_sub2`, `ia2_sub3`, `ia2_sub4`, `ia2_sub5`, `ia2_sub6`, `ia2_sub7`, `ia2_sub8`, `ia3_sub1`, `ia3_sub2`, `ia3_sub3`, `ia3_sub4`, `ia3_sub5`, `ia3_sub6`, `ia3_sub7`, `ia3_sub8`, `ach`) VALUES
(1, 2, '4PM15IS015', 'Siri', 'Sapthami', '7', '2010-08-29', 'female', 2147483647, 'Sagar', '93', '85', 10, 12, 14, 10, 51, 41, 78, 1, 20, 0, 14, 14, 42, 5, 12, 4, 30, 15, 12, 14, 51, 24, 54, 12, 'Yessssss'),
(2, 1, '4PM15IS100', 'Abc', 'builder', '1', '2000-11-17', 'male', 90358486, 'Shimoga', '78', '79', 15, 18, 12, 17, 16, 14, 13, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3, 1, '4PM15CS064', 'Ramakrishna', 'Vaidya', '7', '1998-12-19', 'male', 2147483647, 'Aradhya Nilaya', '92', '87', 15, 14, 12, 15, 18, 14, 14, 20, 14, 17, 13, 17, 18, 15, 15, 14, 12, 15, 14, 18, 17, 12, 12, 20, 'Good Coding Skills'),
(4, 0, '4PM15IS154', 'Meghana', '', '', '', 'female', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `USN` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `USN`, `email`, `username`, `password`, `register_date`) VALUES
(1, '4PM15IS015', 'sirisapthami406@gmail.com', 'siri', '91c731a8ad504c4dde932f79104f992c', '2018-11-17 07:42:48'),
(2, '4PM15IS100', 'ABC@gmail.com', 'abc', 'e99a18c428cb38d5f260853678922e03', '2018-11-17 08:13:05'),
(3, '4PM15CS064', 'kgrvaidya@gmail.com', 'kgrvaidya', 'b392a316d344f5c2901e9dff7af58f9e', '2018-11-17 20:08:49'),
(4, '4PM15IS154', 'meghu@gmail.com', 'meghu', 'c514e52592e1b24ebd727cd860536566', '2018-11-19 11:05:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
