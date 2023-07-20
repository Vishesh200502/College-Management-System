-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2021 at 06:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentacad`
--

CREATE TABLE `studentacad` (
  `rollno` int(11) NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `attendance` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentacad`
--

INSERT INTO `studentacad` (`rollno`, `marks`, `attendance`) VALUES
(1, 90, '95'),
(2, 86, '85');

-- --------------------------------------------------------

--
-- Table structure for table `studentcourses`
--

CREATE TABLE `studentcourses` (
  `rollno` int(11) NOT NULL,
  `coursecode` varchar(20) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentcourses`
--

INSERT INTO `studentcourses` (`rollno`, `coursecode`, `batch`) VALUES
(1, 'C1', 'F1'),
(2, 'C1', 'F1');

-- --------------------------------------------------------

--
-- Table structure for table `studentfeerecord`
--

CREATE TABLE `studentfeerecord` (
  `rollno` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentfeerecord`
--

INSERT INTO `studentfeerecord` (`rollno`, `amount`, `duedate`, `status`) VALUES
(1, 120000, '2021-12-22', 'PAID'),
(2, 120000, '2021-12-24', 'DUE');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `roll_no` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `father_name` varchar(35) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`roll_no`, `first_name`, `last_name`, `father_name`, `email`, `mobile_no`) VALUES
(1, 'Vasu', 'Singh', 'Ashu Singh', 'vasu@gmail.com', 999999),
(2, 'Yasir', 'Gaur', 'Deepak Gaur', 'yasir@gmail.com', 90909090),
(3, 'Ram', 'Sharma', 'Jatin Sharma', 'ram2@gmail.com', 876789);

-- --------------------------------------------------------

--
-- Table structure for table `teacherinfo`
--

CREATE TABLE `teacherinfo` (
  `teacherid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phoneno` int(11) DEFAULT NULL,
  `coursecode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherinfo`
--

INSERT INTO `teacherinfo` (`teacherid`, `name`, `email`, `phoneno`, `coursecode`) VALUES
(1, 'Ramesh', 'Ramesh21@gmail.com', 999000, 'C1'),
(2, 'Yash', 'yash22@gmail.com', 999, 'C2'),
(3, 'Rajeev', 'rajeev29@gmail.com', 789876, 'C3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentacad`
--
ALTER TABLE `studentacad`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `studentcourses`
--
ALTER TABLE `studentcourses`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `studentfeerecord`
--
ALTER TABLE `studentfeerecord`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacherinfo`
--
ALTER TABLE `teacherinfo`
  ADD PRIMARY KEY (`coursecode`,`teacherid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
