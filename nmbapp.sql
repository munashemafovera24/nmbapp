-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 01:24 PM
-- Server version: 8.0.3-rc-log
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmbapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_Number` int(15) NOT NULL,
  `Creation_Date` date NOT NULL,
  `Currency` text NOT NULL,
  `Mobile_Number` int(12) NOT NULL,
  `Branch` text NOT NULL,
  `Initial_Balance` float NOT NULL,
  `Active_balance` float NOT NULL,
  `DB_Amount` float NOT NULL,
  `CR_Amount` float NOT NULL,
  `DB_Narration` text NOT NULL,
  `CR_Narration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_Name` text NOT NULL,
  `Branch_ID` text NOT NULL,
  `Branch_prefix` varchar(10) NOT NULL,
  `Physical_Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `First_Name` text NOT NULL,
  `Surname` text NOT NULL,
  `IDNumber` text NOT NULL,
  `Title` text NOT NULL,
  `Home_Owner` tinyint(1) NOT NULL,
  `Email` text NOT NULL,
  `Date` date NOT NULL,
  `Gender` tinyint(1) NOT NULL DEFAULT '0',
  `Username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_Id` text NOT NULL,
  `transaction_Date` date NOT NULL,
  `Account_CR` int(25) NOT NULL,
  `Account_DR` int(25) NOT NULL,
  `transaction_narration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_Number`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD UNIQUE KEY `prefix` (`Branch_prefix`),
  ADD UNIQUE KEY `branchName` (`Branch_Name`(25));

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`IDNumber`(25)),
  ADD UNIQUE KEY `Username` (`Username`(25));

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_Id`(255));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
