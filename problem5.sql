-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2016 at 07:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dev_interview`
--

--
-- Truncate table before insert `customer`
--

TRUNCATE TABLE `customer`;
--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`) VALUES
(1, 'Jatan Bhatt', 'jatan.bhatt@gmail.com'),
(2, 'Kalpan bhatt', 'kalpan.bhatt@gmail.com'),
(3, 'minion banana', 'minion@gru.edu');

--
-- Truncate table before insert `order`
--

TRUNCATE TABLE `order`;
--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `c_id`, `date`) VALUES
(1, 1, '2016-03-01'),
(2, 2, '2016-03-02'),
(3, 3, '2016-03-03'),
(4, 2, '2016-03-04'),
(5, 1, '2016-03-05'),
(6, 1, '2016-03-01'),
(7, 2, '2016-03-02'),
(8, 3, '2016-03-03'),
(9, 2, '2016-03-04'),
(10, 1, '2016-03-05');

--
-- Truncate table before insert `order_details`
--

TRUNCATE TABLE `order_details`;
--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `o_id`, `p_id`, `quantity`) VALUES
(1, 1, 1, 12),
(2, 1, 1, 12),
(3, 1, 3, 2),
(4, 2, 4, 2),
(5, 2, 3, 12),
(6, 2, 2, 1),
(7, 3, 4, 2),
(8, 3, 5, 1),
(9, 3, 4, 2),
(10, 3, 5, 1),
(11, 4, 1, 6),
(12, 4, 2, 6),
(13, 4, 3, 6),
(14, 4, 1, 6),
(15, 4, 2, 6),
(16, 4, 3, 6),
(17, 5, 5, 15);

--
-- Truncate table before insert `product`
--

TRUNCATE TABLE `product`;
--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `sku`, `price`) VALUES
(1, 'Banana', 101, 12.25),
(2, 'Tomato', 102, 4.45),
(3, 'Potato', 103, 2.34),
(4, 'Pen', 104, 1.2),
(5, 'Mouse', 105, 23.35);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
