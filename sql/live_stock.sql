-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2023 at 07:10 AM
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
-- Table structure for table `live_stock`
--

CREATE TABLE `live_stock` (
  `name` varchar(255) NOT NULL,
  `buy` float NOT NULL,
  `sell` float NOT NULL,
  `id` int(11) NOT NULL,
  `defaultgold` float NOT NULL,
  `src` varchar(255) NOT NULL,
  `defaultsilver` float NOT NULL,
  `active` tinyint(1) NOT NULL,
  `sellactive` tinyint(1) NOT NULL DEFAULT '1',
  `buyactive` tinyint(1) NOT NULL DEFAULT '1',
  `fix` int(11) NOT NULL,
  `isfix` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_stock`
--

INSERT INTO `live_stock` (`name`, `buy`, `sell`, `id`, `defaultgold`, `src`, `defaultsilver`, `active`, `sellactive`, `buyactive`, `fix`, `isfix`) VALUES
('Gold ', 1, 350, 85, 50380, 'gold', 53050, 1, 1, 1, 110, 0),
('Silver ', 67200, 67700, 86, 50380, 'silver', 53050, 1, 1, 1, 0, 1),
('Gold 99.50', 150, 520, 91, 50661, 'gold', 54940, 1, 1, 1, 0, 0),
('Gold RTGS ', 141, 1900, 92, 49327, 'gold', 56720, 1, 1, 0, 0, 0),
('Silver RTGS ', 600, 1100, 93, 49327, 'silver', 56720, 1, 1, 0, 0, 0),
('Silver peti ', 64200, 66900, 94, 49327, 'silver', 56720, 0, 1, 0, 0, 1),
('Gold hajir', 54500, 55000, 95, 51463, 'gold', 61890, 0, 1, 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `live_stock`
--
ALTER TABLE `live_stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `live_stock`
--
ALTER TABLE `live_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
