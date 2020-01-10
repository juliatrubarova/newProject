-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2019 at 02:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myShop`
--
CREATE DATABASE IF NOT EXISTS `myShop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `myShop`;

-- --------------------------------------------------------

--
-- Table structure for table `itemsMen`
--

CREATE TABLE `itemsMen` (
  `id` int(11) NOT NULL,
  `itemPic` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemPrice` varchar(255) NOT NULL,
  `itemDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemsMen`
--

INSERT INTO `itemsMen` (`id`, `itemPic`, `itemName`, `itemPrice`, `itemDescription`) VALUES
(1, '1.jpg', 'Куртка синяя', '5400', ''),
(2, '2.jpg', 'Куртка кожаная', '22500', ''),
(3, '3.png', 'Куртка с карманами', '9200', ''),
(4, '4.jpg', 'Куртка с капюшоном', '6100', ''),
(5, '5.jpg', 'Куртка Casual', '8800', ''),
(6, '6.jpg', 'Стильная кожаная куртка', '12800', ''),
(7, '7.jpg', 'Кеды серые', '2900', ''),
(8, '8.jpg', 'Кеды черные', '4500', ''),
(9, '9.jpg', 'Кеды casual', '5900', ''),
(10, '10.jpg', 'Кеды всепогодные', '9200', ''),
(11, '11.jpg', 'Джинсы', '4800', ''),
(12, '12.jpg', 'Джинсы голубые', '4200', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemsMen`
--
ALTER TABLE `itemsMen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemsMen`
--
ALTER TABLE `itemsMen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
