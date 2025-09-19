-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 09:50 AM
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
-- Table structure for table `attendance table`
--

CREATE TABLE `attendance table` (
  `employeeID` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `timein` varchar(25) NOT NULL,
  `timeout` varchar(25) NOT NULL,
  `late` varchar(25) NOT NULL,
  `overtime` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance table`
--

INSERT INTO `attendance table` (`employeeID`, `date`, `timein`, `timeout`, `late`, `overtime`, `name`) VALUES
('123', '09/19/2025', '1pm', '5pm', '5mins', '5hours', 'bryan'),
('456', '09/19/2025', '5pm', '8pm', '10mins', '3hours', 'zyra');

-- --------------------------------------------------------

--
-- Table structure for table `departments table`
--

CREATE TABLE `departments table` (
  `departmentID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `Dept Head` varchar(25) NOT NULL,
  `Office Location` varchar(25) NOT NULL,
  `employeeID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments table`
--

INSERT INTO `departments table` (`departmentID`, `name`, `Dept Head`, `Office Location`, `employeeID`) VALUES
('789', 'bryan', '879', 'Rts', '123'),
('101', 'zyra', 'Jhodie Alyssa', 'Rts', '456');

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
('bry', 'bryan', '123', 'bryan', 'caasi', 'IT dept', 'student', 'caasibry@gmail.com'),
('say', 'saysay', '456', 'zyra', 'gregorio', 'IT dept', 'student', 'saysay@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payroll table`
--

CREATE TABLE `payroll table` (
  `payrollID` varchar(25) NOT NULL,
  `employeeID` varchar(25) NOT NULL,
  `salaryID` varchar(25) NOT NULL,
  `payPeriodStart` varchar(25) NOT NULL,
  `payPeriodEnd` varchar(25) NOT NULL,
  `netPay` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll table`
--

INSERT INTO `payroll table` (`payrollID`, `employeeID`, `salaryID`, `payPeriodStart`, `payPeriodEnd`, `netPay`, `name`) VALUES
('567', '123', '112', 'now', 'later', 'tommorow', 'bryan'),
('890', '456', '113', 'sunod', 'last week of sept', 'bayda', 'zyra');

-- --------------------------------------------------------

--
-- Table structure for table `salaries table`
--

CREATE TABLE `salaries table` (
  `salaryID` varchar(25) NOT NULL,
  `Salary` varchar(25) NOT NULL,
  `Amount incentives` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `employeeID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaries table`
--

INSERT INTO `salaries table` (`salaryID`, `Salary`, `Amount incentives`, `name`, `employeeID`) VALUES
('112', '100', '10', 'bryan', '123'),
('113', '200', '20', 'zyra', '456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance table`
--
ALTER TABLE `attendance table`
  ADD PRIMARY KEY (`name`),
  ADD KEY `employeeID` (`employeeID`) USING BTREE,
  ADD KEY `employeeID_2` (`employeeID`) USING BTREE;

--
-- Indexes for table `departments table`
--
ALTER TABLE `departments table`
  ADD KEY `name` (`name`,`employeeID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `employeestable`
--
ALTER TABLE `employeestable`
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `name` (`name`) USING BTREE,
  ADD KEY `employeeID` (`employeeID`,`name`) USING BTREE;

--
-- Indexes for table `payroll table`
--
ALTER TABLE `payroll table`
  ADD KEY `employeeID` (`employeeID`,`salaryID`,`name`),
  ADD KEY `salaryID` (`salaryID`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `salaries table`
--
ALTER TABLE `salaries table`
  ADD PRIMARY KEY (`salaryID`),
  ADD KEY `name` (`name`,`employeeID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance table`
--
ALTER TABLE `attendance table`
  ADD CONSTRAINT `attendance table_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employeestable` (`employeeID`);

--
-- Constraints for table `departments table`
--
ALTER TABLE `departments table`
  ADD CONSTRAINT `departments table_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employeestable` (`employeeID`),
  ADD CONSTRAINT `departments table_ibfk_2` FOREIGN KEY (`name`) REFERENCES `attendance table` (`name`);

--
-- Constraints for table `employeestable`
--
ALTER TABLE `employeestable`
  ADD CONSTRAINT `employeestable_ibfk_1` FOREIGN KEY (`name`) REFERENCES `attendance table` (`name`);

--
-- Constraints for table `payroll table`
--
ALTER TABLE `payroll table`
  ADD CONSTRAINT `payroll table_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employeestable` (`employeeID`),
  ADD CONSTRAINT `payroll table_ibfk_3` FOREIGN KEY (`salaryID`) REFERENCES `salaries table` (`salaryID`),
  ADD CONSTRAINT `payroll table_ibfk_4` FOREIGN KEY (`name`) REFERENCES `attendance table` (`name`);

--
-- Constraints for table `salaries table`
--
ALTER TABLE `salaries table`
  ADD CONSTRAINT `salaries table_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employeestable` (`employeeID`),
  ADD CONSTRAINT `salaries table_ibfk_2` FOREIGN KEY (`name`) REFERENCES `attendance table` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
