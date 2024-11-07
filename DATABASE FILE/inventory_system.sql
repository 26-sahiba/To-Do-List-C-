-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 01:27 PM
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
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Demo Category'),
(3, 'Finished Goods'),
(5, 'Machinery'),
(4, 'Packing Materials'),
(2, 'Raw Materials'),
(8, 'Stationery Items'),
(6, 'Work in Progress');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(1, 'Aloo Gobi Masala', '50', 40.00, 80.00, 2, 0, '2024-11-04 10:00:00'),
(2, 'Basmati Rice', '100', 70.00, 150.00, 1, 0, '2024-11-04 10:05:00'),
(3, 'Saree', '30', 500.00, 1200.00, 4, 0, '2024-11-04 10:10:00'),
(4, 'Men\'s Kurta', '25', 300.00, 700.00, 4, 0, '2024-11-04 10:15:00'),
(5, 'Chai Masala', '100', 25.00, 60.00, 3, 0, '2024-11-04 10:20:00'),
(6, 'Diwali Diyas Set', '150', 15.00, 50.00, 5, 0, '2024-11-04 10:25:00'),
(7, 'Ayurvedic Hair Oil', '80', 150.00, 350.00, 3, 0, '2024-11-04 10:30:00'),
(8, 'Handcrafted Wooden Toys', '60', 200.00, 500.00, 2, 0, '2024-11-04 10:35:00'),
(9, 'Organic Turmeric Powder', '90', 30.00, 75.00, 1, 0, '2024-11-04 10:40:00'),
(10, 'Masala Chai Tea Bags', '200', 20.00, 45.00, 3, 0, '2024-11-04 10:45:00'),
(11, 'Traditional Indian Spices Set', '50', 150.00, 300.00, 1, 0, '2024-11-04 10:50:00'),
(12, 'Eco-friendly Jute Bags', '100', 40.00, 90.00, 5, 0, '2024-11-04 10:55:00'),
(14, 'dummy', '100', 1000.00, 2000.00, 1, 0, '2024-11-04 19:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `id` int(45) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitcost` double DEFAULT NULL,
  `datearray` date DEFAULT NULL,
  `timearray` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`id`, `product_id`, `quantity`, `unitcost`, `datearray`, `timearray`) VALUES
(2, 1, 4, 135, '2024-05-14', '07:56:10'),
(3, 5, 6, 299, '2024-05-14', '08:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(1, 1, 2, 80.00, '2024-11-04'),
(2, 2, 5, 350.00, '2024-11-04'),
(3, 3, 1, 1200.00, '2024-11-04'),
(4, 4, 3, 2100.00, '2024-11-04'),
(5, 5, 4, 240.00, '2024-11-04'),
(6, 6, 10, 500.00, '2024-11-04'),
(7, 7, 2, 700.00, '2024-11-04'),
(8, 8, 5, 2500.00, '2024-11-04'),
(9, 9, 6, 450.00, '2024-11-04'),
(10, 10, 15, 675.00, '2024-11-04'),
(11, 11, 8, 2400.00, '2024-11-04'),
(12, 12, 12, 1080.00, '2024-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Sahiba', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '52gvs69l1.png', 1, '2024-11-04 19:40:30'),
(2, 'John Walker', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.png', 1, '2024-05-14 08:35:40'),
(3, 'Christopher', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.png', 1, '2024-05-14 08:34:52'),
(4, 'Natie Williams', 'natie', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 3, 'no_image.png', 1, NULL),
(5, 'Kevin', 'kevin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 3, 'no_image.png', 1, '2021-04-04 19:54:29'),
(6, 'himanshi', 'himanshu', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, 'no_image.jpg', 1, '2024-11-04 19:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'special', 2, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
