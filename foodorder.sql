-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2022 at 09:08 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('lmao', 'annie', 'hehe@hehe.com', '2390284', 'lul', '1234'),
('test', 'test', 'test@gmail.com', '8903079750', 'XIM', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `F_ID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE',
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `images_path`, `options`) VALUES
(1, 'Fried lobster', 700, 'fresh and juicy lobster for 2.', 'css\\images\\lobster.png', 'ENABLE'),
(2, 'Cheese Lobster', 800, 'Melted cheese on fried lobster.', 'css\\images\\cheeselobster.jpg', 'ENABLE'),
(3, 'Grilled fish', 500, 'Sea fish grilled with bbq sauce.', 'css\\images\\grilledfish.jpg', 'ENABLE'),
(4, 'Prawn mac and cheese', 800, 'As the name suggests, prawn mac and cheese.', 'css\\images\\prawnmac.jpg', 'ENABLE'),
(5, 'Pizza', 200, 'Pure Vegetable and Tasty.', 'css\\images\\Pizza.jpg', 'ENABLE'),
(6, 'French Fries', 200, 'cripy fried potato fingers.', 'css\\images\\frenchfries.jpg', 'ENABLE'),
(7, 'Peri Peri Chicken', 600, 'Hot and spicy chicken tossed in red sauce.', 'css\\images\\ppchick.jpg', 'ENABLE'),
(9, 'Prawn scampy', 800, 'Prawn tossed in hot red sauce.', 'css\\images\\shrimpscam.jpg', 'ENABLE'),
(10, 'Fried prawn', 1000, 'Indian homemade style fried masala prawns.', 'css\\images\\prawnfry.jpg', 'ENABLE'),
(11, 'Maple Salmon', 400, 'Maple syrup and salmon sounds good doesn\'t it?', 'css\\images\\maplesalmon.jpg', 'ENABLE'),
(13, 'Chocolate truffle', 400, 'Hot brownie for the sweet tooths.', 'css\\images\\cek.jpg', 'ENABLE'),
(15, 'Cherry cheesecake', 400, 'Soft cheesecake topped with cheery cherries.', 'css\\images\\cek2.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_ID` int(30) NOT NULL AUTO_INCREMENT,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`order_ID`),
  KEY `F_ID` (`F_ID`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`) VALUES
(86, 72, 'Paneer Pakora', 45, 1, '2022-04-17', 'test'),
(87, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2022-04-17', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
