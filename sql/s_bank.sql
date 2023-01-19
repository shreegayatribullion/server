-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2023 at 07:33 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ROGER_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_bank`
--

CREATE TABLE `s_bank` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accname` varchar(255) NOT NULL,
  `accno` varchar(255) NOT NULL,
  `bcode` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_bank`
--

INSERT INTO `s_bank` (`id`, `name`, `accname`, `accno`, `bcode`, `bname`) VALUES
(4, 'Sbi', 'Shree mahalaxmi jewellers ', '61294909967', 'Sbin0031115 ', 'Merta city ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_bank`
--
ALTER TABLE `s_bank`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `s_bank`
--
ALTER TABLE `s_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
