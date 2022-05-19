-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 01:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com'),
(3, 'Prisha Das', 'prisha1463', 'Sweet0502', 'prishadas000@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(1, 'banner-11.jpg', 'Dark Town Cafe', 'Healthy Food Healthy Life :)', 'shop', 'Order Now', 1, '2020-06-23 03:00:05', 1),
(2, 'banner-10.jpg', 'Drink & Healthy Food', 'Productivity only comes from a full belly :)', 'shop', 'Order Now', 1, '2020-06-23 03:06:53', 1),
(3, 'istockphoto-1286692956-170667a.jpg', 'Drink & Healthy Food', 'Fresh Heathy and Organic', 'shop', 'Order Now', 1, '2022-05-05 01:01:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(1, 'Chaat & Snacks', 1, 1, '2020-06-16 12:06:33'),
(2, 'Chinese', 0, 1, '2020-06-16 12:06:41'),
(3, 'South Indian', 3, 1, '2020-06-16 12:06:59'),
(4, 'Desserts', 4, 1, '2020-06-16 12:07:18'),
(5, 'Murg', 2, 0, '2020-06-27 12:49:37'),
(6, 'Soup', 6, 1, '2022-04-26 10:09:36'),
(7, 'Pizza', 5, 1, '2022-04-26 11:30:10'),
(8, 'Burger', 7, 1, '2022-04-26 11:30:38'),
(9, 'Fast Food', 8, 0, '2022-04-26 11:30:50'),
(10, 'Shakes', 9, 1, '2022-04-30 10:09:55'),
(11, 'Coffee', 10, 1, '2022-04-30 12:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(1, 'Vishal', 'phpvishal@gmail.com', '9999999999', 'Test Subject', 'test message', '2020-06-23 03:21:43'),
(2, 'Yana Srivastava', 'yanusrivastava@gmail.com', '8957665527', 'Happy food ', 'fnjfnfnfmfmnfm', '2022-05-10 11:40:53'),
(3, 'Darshan Yadav', 'darshanrao526@gmail.com', '9306867037', 'dzfdgffgh', 'fdgfhjhjkj', '2022-05-16 09:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(1, 'FIRST50', 'P', 10, 50, '2022-04-30', 1, '2020-06-20 05:31:03'),
(2, 'FRIDAY', 'F', 200, 200, '2022-04-15', 1, '2020-07-10 10:38:43'),
(3, 'Sunday Special', 'F', 200, 525, '2022-05-01', 1, '2022-04-24 02:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'Vishal', '1234567890', 'vishal', 1, '2020-07-08 08:06:06'),
(2, 'Sunil', '9494333312', 'sunil', 1, '2020-07-08 08:06:21'),
(3, 'Darshan', '1234567891', '123', 1, '2022-05-17 02:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(1, 4, 'Gulab Jamun', 'Gulab Jamun', '977945963_862169053_gulab-jamun.jpg', 'veg', 1, '2020-06-17 10:43:59'),
(3, 2, 'Chow mein', 'Chow mein', '836724175_Chowmein.jpg', 'non-veg', 1, '2020-06-17 10:47:26'),
(4, 5, 'Butter Chicken', 'Butter chicken or murg makhani is a dish, originating in the Indian subcontinent, of chicken in a mildly spiced tomato sauce.', '348714192_30-Minute-Instant-Pot-Butter-Chicken-7.jpg', 'non-veg', 1, '2020-06-27 12:50:50'),
(5, 1, 'Raj Kachori', 'testing', '325195312_raj-kachori.jpeg', 'veg', 0, '2020-07-06 12:00:24'),
(6, 2, 'Momos', '', 'download.jpg', 'veg', 1, '2022-04-25 06:31:20'),
(7, 7, 'INDI TANDOORI PANEER', '', 'IndianTandooriPaneer.jpg', 'veg', 1, '2022-04-25 07:50:13'),
(8, 3, ' Dosa and Chutney', '', 'i6ilk74g_lauki-dosa_625x300_24_November_21.webp', 'veg', 1, '2022-04-25 07:55:50'),
(9, 3, 'Puliyodharai ', '', '3165588419_83ee7352a8.jpg', 'veg', 1, '2022-04-25 08:03:38'),
(10, 1, 'Sev Puri', '', 'Sev_Puri-2.jpg', 'veg', 1, '2022-04-25 08:46:38'),
(11, 1, 'Aloo Tikki Chaat', '', 'Aloo-Tikki-Chaat_DSC_3275.jpg', 'veg', 1, '2022-04-25 08:49:15'),
(12, 1, 'Pani Puri', '', 'Pani-Puri-(28).jpg', 'veg', 1, '2022-04-25 08:52:03'),
(13, 1, 'Mixed Sprouts Chaat', '', 'download (4).jpg', 'veg', 1, '2022-04-25 08:54:13'),
(14, 4, 'Jalebi', '', 'IMG20200526085049-01-scaled.webp', 'veg', 1, '2022-04-25 08:59:10'),
(15, 5, 'Kadhai Chicken', '', '348714192_30-Minute-Instant-Pot-Butter-Chicken-7.jpg', 'non-veg', 1, '2022-04-26 10:06:20'),
(16, 1, 'Hara Bhara Kabab', '', '84d9c070a0baf478b05205ce3246e27c.jpg', 'veg', 1, '2022-04-26 10:08:43'),
(17, 6, 'Manchow ', '', 'download (2).jpg', 'veg', 1, '2022-04-26 10:13:36'),
(18, 6, 'Manchow Soup', '', 'Vegetable_Manchow_Soup.jpg', 'veg', 1, '2022-04-26 10:14:42'),
(19, 6, 'Cream of Chicken ', '', 'cream-of-chicken-soup-109043-1.jpeg', 'non-veg', 1, '2022-04-26 10:19:26'),
(20, 6, 'Sweetcorn Soup', '', 'sweet-corn-soup-recipe.jpg', 'veg', 1, '2022-04-26 10:21:38'),
(21, 6, 'Sweetcorn ', '', 'download (1).jpg', 'non-veg', 1, '2022-04-26 10:23:27'),
(22, 7, 'Cheese Pizza', '', 'download (3).jpg', 'veg', 1, '2022-04-26 11:39:47'),
(23, 7, 'Corn Pizza', '', 'corn pizza.jpg', 'veg', 1, '2022-04-26 11:41:07'),
(24, 10, 'BEERY SHAKE', '', 'product-1.jpg', 'veg', 1, '2022-04-30 10:19:34'),
(25, 10, 'STRAWBERRY SHAKE', '', 'product-2.jpg', 'veg', 1, '2022-04-30 10:25:51'),
(26, 10, 'COKE', '', 'product-4.jpg', 'veg', 1, '2022-04-30 10:26:49'),
(27, 8, 'BURGER', '', 'product-3.jpg', 'veg', 1, '2022-04-30 10:28:06'),
(28, 6, 'Cream of tomato soup', '', 'Cream-Of-Tomato-Soup-(35).jpg', 'veg', 1, '2022-04-30 11:19:35'),
(29, 7, 'Onion Pizza', '', 'onion-3.jpg', 'veg', 1, '2022-04-30 11:49:34'),
(30, 7, ' Pepper Pizza', '', 'pepper-1.jpg', 'veg', 1, '2022-04-30 11:51:23'),
(31, 4, 'Sandesh', '', '2e24738e7ac843adbe7a1fa253449af7.jpg', 'veg', 1, '2022-04-30 12:01:33'),
(32, 4, 'Ras malai', '', 'b53ee1a62b704a36b63361822681ed47.jpg', 'veg', 1, '2022-04-30 12:03:24'),
(33, 4, 'Rasgulla', '', '728691b02df3490bbbecdea8422530d1.jpg', 'veg', 1, '2022-04-30 12:06:30'),
(34, 4, 'Kheer', '', 'bae67efebeaa47f9947a81c4c0f2fd91.jpg', 'veg', 1, '2022-04-30 12:09:10'),
(35, 1, 'Dahi Vada', '', 'Dahi-Vadas-1.jpg', 'veg', 1, '2022-04-30 12:19:42'),
(36, 10, 'Chocolate-Banana', '', '1371609102889.jpeg', 'veg', 1, '2022-04-30 12:36:05'),
(37, 10, 'Cookies and Cream', '', '1371609105490.jpeg', 'veg', 1, '2022-04-30 12:39:11'),
(38, 10, 'Black Raspberry', '', '1371607171901.jpeg', 'veg', 1, '2022-04-30 12:40:40'),
(39, 11, 'South Indian Filter Coffee', '', 'download (5).jpg', 'veg', 1, '2022-04-30 12:45:44'),
(40, 11, 'Bella Kaapi', '', 'download (6).jpg', 'veg', 1, '2022-04-30 12:47:38'),
(41, 11, 'Tandoori Coffee', '', 'Untitled-62.png', 'veg', 1, '2022-04-30 12:51:03'),
(42, 11, 'Cold Coffee', '', 'images.jpg', 'veg', 1, '2022-04-30 12:54:43'),
(43, 11, 'Latte', '', 'types-of-coffee-latte-1610641682.webp', 'veg', 1, '2022-04-30 12:58:45'),
(44, 11, 'Macchiato', '', 'salted-caramel-macchiato-featured-image-1.jpg', 'veg', 1, '2022-04-30 01:02:06'),
(45, 11, 'Americano', '', '848f93df53ebb12817346bea375c2e5a.jpg', 'veg', 1, '2022-04-30 01:03:30'),
(46, 11, 'Café au Lait', '', 'National-Cafe-au-Lait-Day-640x514.jpg', 'veg', 1, '2022-04-30 01:05:11'),
(47, 11, 'Cold Brew', '', 'types-of-coffee-iced-1610642172.webp', 'veg', 1, '2022-04-30 01:07:24'),
(48, 10, 'Aam Pora Shorbot', '', 'download111.jpg', 'veg', 1, '2022-05-10 12:02:02'),
(49, 4, 'Mishti Doi - Sweet Yogurt', '', 'Mishti-Doi-square-e1523890989103.jpg', 'veg', 1, '2022-05-10 12:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(3, 2, 6, 2, '2020-07-21 09:18:31'),
(21, 6, 21, 2, '2022-05-18 11:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 3, 'Full', 300, 1, '2020-06-19 10:25:47'),
(2, 3, 'Half', 170, 1, '2020-06-19 10:49:45'),
(6, 1, 'Per Piece', 40, 1, '2020-06-20 00:00:00'),
(8, 4, 'Half', 250, 0, '2020-06-27 12:50:50'),
(9, 4, 'Full', 410, 1, '2020-06-27 12:50:50'),
(11, 5, 'Test1', 100, 1, '2020-07-06 12:00:24'),
(12, 5, 'Test2', 200, 0, '2020-07-06 12:00:24'),
(13, 6, 'full plate', 250, 1, '2022-04-25 06:31:20'),
(14, 6, 'Half plate', 150, 1, '2022-04-25 06:31:20'),
(15, 7, 'Regular', 170, 1, '2022-04-25 07:50:13'),
(16, 7, 'Medium', 200, 1, '2022-04-25 07:50:13'),
(17, 8, 'full plate', 200, 1, '2022-04-25 07:55:50'),
(18, 9, 'full plate', 90, 1, '2022-04-25 08:03:38'),
(19, 9, 'Half plate', 50, 1, '2022-04-25 08:03:38'),
(20, 10, 'full plate', 80, 1, '2022-04-25 08:46:38'),
(21, 10, 'Half plate', 50, 1, '2022-04-25 08:46:38'),
(22, 11, 'Full plate', 150, 1, '2022-04-25 08:49:15'),
(23, 11, 'Half plate', 90, 1, '2022-04-25 08:49:15'),
(24, 12, 'full plate', 50, 1, '2022-04-25 08:52:03'),
(25, 13, 'Full plate', 200, 1, '2022-04-25 08:54:13'),
(26, 13, 'Half plate', 120, 1, '2022-04-25 08:54:13'),
(27, 14, 'Full plate', 110, 1, '2022-04-25 08:59:10'),
(28, 14, 'Half plate', 60, 1, '2022-04-25 08:59:10'),
(29, 15, 'Full plate', 400, 1, '2022-04-26 10:06:20'),
(30, 16, 'Full plate', 100, 1, '2022-04-26 10:08:43'),
(31, 17, '2 by 4 ', 150, 1, '2022-04-26 10:13:36'),
(32, 18, '2 by 4 ', 170, 1, '2022-04-26 10:14:42'),
(33, 19, '2 by 4 ', 200, 1, '2022-04-26 10:19:26'),
(34, 20, '2 by 4 ', 160, 1, '2022-04-26 10:21:38'),
(35, 21, '2 by 4 ', 165, 1, '2022-04-26 10:23:27'),
(36, 21, '1 by 2', 120, 0, '2022-04-26 11:26:08'),
(37, 22, 'Regular', 110, 1, '2022-04-26 11:39:47'),
(38, 22, 'Medium', 150, 1, '2022-04-26 11:39:47'),
(39, 22, 'Large', 180, 1, '2022-04-26 11:39:47'),
(40, 23, 'Regular', 150, 1, '2022-04-26 11:41:07'),
(41, 23, 'Medium', 180, 1, '2022-04-26 11:41:07'),
(42, 23, 'Large', 200, 1, '2022-04-26 11:41:07'),
(43, 7, 'Large', 230, 1, '2022-04-26 11:44:00'),
(44, 24, 'Regular', 100, 1, '2022-04-30 10:19:34'),
(45, 25, 'Regular', 100, 1, '2022-04-30 10:25:51'),
(46, 26, 'Regular', 40, 1, '2022-04-30 10:26:49'),
(47, 27, 'Regular', 80, 1, '2022-04-30 10:28:06'),
(48, 28, '2 by 4 ', 350, 1, '2022-04-30 11:19:35'),
(49, 29, 'Regular', 150, 1, '2022-04-30 11:49:34'),
(50, 30, 'Regular', 180, 1, '2022-04-30 11:51:23'),
(51, 31, 'full plate', 150, 1, '2022-04-30 12:01:33'),
(52, 31, 'Half plate', 90, 1, '2022-04-30 12:01:33'),
(53, 32, 'Full plate', 200, 1, '2022-04-30 12:03:24'),
(54, 32, 'Half plate', 110, 1, '2022-04-30 12:03:24'),
(55, 33, 'Full plate', 120, 1, '2022-04-30 12:06:30'),
(56, 33, 'Half plate', 70, 1, '2022-04-30 12:06:30'),
(57, 34, 'Full plate', 120, 1, '2022-04-30 12:09:10'),
(58, 34, 'Half plate', 70, 1, '2022-04-30 12:09:10'),
(59, 35, 'Full plate', 100, 1, '2022-04-30 12:19:42'),
(60, 35, 'Half plate', 60, 1, '2022-04-30 12:19:42'),
(61, 16, 'Half plate', 60, 1, '2022-04-30 12:23:17'),
(62, 36, 'Regular', 80, 1, '2022-04-30 12:36:05'),
(63, 37, 'Regular', 100, 1, '2022-04-30 12:39:11'),
(64, 38, 'Regular', 120, 1, '2022-04-30 12:40:40'),
(65, 39, 'Regular', 90, 1, '2022-04-30 12:45:44'),
(66, 40, 'Regular', 100, 1, '2022-04-30 12:47:38'),
(67, 41, 'Regular', 120, 1, '2022-04-30 12:51:03'),
(68, 42, 'Regular', 150, 1, '2022-04-30 12:54:43'),
(69, 43, 'Regular', 180, 1, '2022-04-30 12:58:45'),
(70, 44, 'Regular', 100, 1, '2022-04-30 01:02:06'),
(71, 45, 'Regular', 120, 1, '2022-04-30 01:03:30'),
(72, 46, 'Regular', 150, 1, '2022-04-30 01:05:11'),
(73, 47, 'Regular', 120, 1, '2022-04-30 01:07:24'),
(74, 48, 'Regular', 90, 1, '2022-05-10 12:02:02'),
(75, 49, 'Regular', 50, 1, '2022-05-10 12:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(1, 1, 6, 40, 6),
(2, 2, 6, 40, 4),
(3, 3, 6, 40, 3),
(4, 4, 45, 100, 2),
(5, 4, 67, 120, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_by` enum('user','admin') NOT NULL,
  `cancel_at` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `cancel_by`, `cancel_at`, `added_on`, `delivered_on`) VALUES
(1, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'Test', 240, '', 240, '110076', 0, 'pending', 'wallet', '', 5, 'admin', '2020-07-21 08:13:01', '2020-07-18 06:08:19', '0000-00-00 00:00:00'),
(2, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'test', 160, '', 160, '110076', 0, 'pending', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-07-20 06:09:59', '0000-00-00 00:00:00'),
(3, 5, 'Vishal', 'phpvishal@gmail.com', '9999999999', 'Test', 120, '', 120, '110076', 0, 'pending', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-07-23 09:09:41', '0000-00-00 00:00:00'),
(4, 6, 'Darshan', 'darshanrao526@gmail.com', '9306868037', 'Village Gunjar, Dis. Hisar, State Haryana, in India', 440, '', 440, '125006', 0, 'pending', 'paytm', '', 1, 'user', '0000-00-00 00:00:00', '2022-05-17 02:13:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(1, 1, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `wallet_amt` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL,
  `referral_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `wallet_amt`, `website_close_msg`, `referral_amt`) VALUES
(1, 40, 'Cart min price will be 50 rs', 0, 0, 'Website Closed for today', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `referral_code` varchar(20) NOT NULL,
  `from_referral_code` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `referral_code`, `from_referral_code`, `added_on`) VALUES
(2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', '$2y$10$cZ6sSDVYUINCnynmB3Tbuend7e7bRqgCPeD.RPmxdRucxKhbSo/52', 1, 1, 'lmkaetixyrzqoqy', 'lmkaetixyrzqoqds', '', '2020-07-18 05:11:37'),
(5, 'Vishal', 'phpvishal@gmail.com', '9999999999', '$2y$10$wWBWMJTK37jkyLujN8YQoOVfQQt/3.B9ruoaNkjruQEwz4ZVfvNJa', 1, 1, 'zdoxxhajyeqtgpp', 'lhqtkjofzevfdai', 'lmkaetixyrzqoqds', '2020-07-23 08:48:08'),
(6, 'Darshan', 'darshanrao526@gmail.com', '9306868037', '$2y$10$ajsZSFUB.Igjm.v3aKKbjuQXQ8ZGrHmk5bjYYi9TOF6/PyTm6bnH.', 1, 1, 'wtzfyhembgpmefi', 'fteusohivwtoadk', '', '2022-04-25 07:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `amt`, `msg`, `type`, `payment_id`, `added_on`) VALUES
(2, 2, 50, 'Registration', 'in', '', '2020-07-18 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 2, 100, 'Added', 'in', '', '2020-07-18 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2020-07-18 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2020-07-18 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2020-07-18 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2020-07-18 06:04:04'),
(13, 2, 160, 'Order Id-2', 'out', '', '2020-07-18 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2020-07-18 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2020-07-18 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2020-07-19 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2020-07-19 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2020-07-21 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2020-07-21 08:22:46'),
(22, 2, 50, 'Referral Amt from phpvishal@gmail.com', 'in', '', '2020-07-23 09:12:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
