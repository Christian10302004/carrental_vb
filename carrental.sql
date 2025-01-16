-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 02:30 AM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_info`
--

CREATE TABLE `accounts_info` (
  `accountid` int(150) NOT NULL,
  `employeeid` int(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(10) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars_info`
--

CREATE TABLE `cars_info` (
  `carid` int(20) NOT NULL,
  `regnumber` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `available` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `customerid` int(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contactno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees_info`
--

CREATE TABLE `employees_info` (
  `employeesid` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_info`
--

CREATE TABLE `rent_info` (
  `rentid` int(10) NOT NULL,
  `regnumber` varchar(255) NOT NULL,
  `customerid` int(10) NOT NULL,
  `customername` varchar(50) NOT NULL,
  `rentdate` date NOT NULL,
  `returndate` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `fees` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_info`
--

CREATE TABLE `return_info` (
  `returnid` int(10) NOT NULL,
  `regnumber` varchar(10) NOT NULL,
  `customername` varchar(20) NOT NULL,
  `returndate` date NOT NULL,
  `delay` varchar(20) NOT NULL,
  `fines` varchar(20) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_info`
--
ALTER TABLE `accounts_info`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars_info`
--
ALTER TABLE `cars_info`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees_info`
--
ALTER TABLE `employees_info`
  ADD PRIMARY KEY (`employeesid`);

--
-- Indexes for table `rent_info`
--
ALTER TABLE `rent_info`
  ADD PRIMARY KEY (`rentid`);

--
-- Indexes for table `return_info`
--
ALTER TABLE `return_info`
  ADD PRIMARY KEY (`returnid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_info`
--
ALTER TABLE `accounts_info`
  MODIFY `accountid` int(150) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars_info`
--
ALTER TABLE `cars_info`
  MODIFY `carid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `customerid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees_info`
--
ALTER TABLE `employees_info`
  MODIFY `employeesid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_info`
--
ALTER TABLE `rent_info`
  MODIFY `rentid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_info`
--
ALTER TABLE `return_info`
  MODIFY `returnid` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
