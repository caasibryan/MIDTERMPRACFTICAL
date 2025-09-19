-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 09:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeestable`
--

CREATE TABLE `employeestable` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `employeeID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `position` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeestable`
--

INSERT INTO `employeestable` (`username`, `password`, `employeeID`, `name`, `lastname`, `department`, `position`, `email`) VALUES
('bry', 'bryan', '123', 'kyle', 'caasi', 'IT dept', 'student', 'caasibry@gmail.com'),
('say', 'saysay', '456', 'zyra', 'gregorio', 'IT dept', 'student', 'saysay@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeestable`
--
ALTER TABLE `employeestable`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
