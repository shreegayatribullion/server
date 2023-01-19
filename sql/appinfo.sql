-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2023 at 07:24 AM
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
-- Table structure for table `appinfo`
--

CREATE TABLE `appinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appinfo`
--

INSERT INTO `appinfo` (`id`, `title`, `address`, `no`, `header`) VALUES
(1, 'श्री महालक्ष्मी ज्वैलर्स पर सोना पलटाई पर 20 टूकडी ओर सोने 99.25 का दिया जाता है  चाँदी पर 3 ग्राम ज्यादा दि जाती है  और चांदी 99.40 कि दि जाति है फूल गारंटी के साथ।  ', 'Merta', '7014697962', 'Shree mahalaxmi jewellers  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appinfo`
--
ALTER TABLE `appinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appinfo`
--
ALTER TABLE `appinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
