-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 03:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountdetails`
--

CREATE TABLE `accountdetails` (
  `sno` int(11) NOT NULL,
  `accID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountdetails`
--

INSERT INTO `accountdetails` (`sno`, `accID`, `name`, `email`, `balance`) VALUES
(1, 3600, 'Rishabh', 'rishhjain999@gmail.com', 9999),
(2, 0045, 'Sidhanth', 'sids@gmail.com', 8965),
(3, 2600, 'Varun', 'var@gmail.com', 8754),
(4, 2612, 'Poojitha', 'pooja@gmail.com', 2600),
(5, 8976, 'Vaishnavi', 'vnav.r@gmail.com', 9865),
(6, 8563, 'Soujanya', 'sow.y@gmail.com', 2563),
(7, 1254, 'Reshma', 'reshma.9@gmail.com', 1452),
(8, 3256, 'Priyanka', 'piyanka.67@gmail.com', 7895),
(9, 8965, 'Magan', 'maddy@gmail.com', 1470),
(10, 7845, 'Vineeth', 'vin@gmail.com', 9870),
(11, 8752, 'Arjun', 'arjun99@gmail.com', 7896);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `sno` int(11) NOT NULL,
  `payer` text NOT NULL,
  `payerAcc` int(11) NOT NULL,
  `payee` text NOT NULL,
  `payeeAcc` int(11) NOT NULL,
  `amount` double NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`sno`, `payer`, `payerAcc`, `payee`, `payeeAcc`, `amount`, `time`) VALUES
(1, 'ramya', 4211, 'Vishal', 2600, 100, '2021-03-11 23:40:09'),
(2, 'Rishabh', 1234, 'Poojitha', 2612, 100, '2021-03-14 19:56:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdetails`
--
ALTER TABLE `accountdetails`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountdetails`
--
ALTER TABLE `accountdetails`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
