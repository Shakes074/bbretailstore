-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 10:28 AM
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
-- Database: `bbretailstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_in_stock` int(11) NOT NULL,
  `last_updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `product_id`, `quantity_in_stock`, `last_updated`) VALUES
(1, 1, 50, '2024-04-04 18:08:10'),
(2, 2, 30, '2024-04-04 18:08:10'),
(3, 3, 15, '2024-04-04 18:08:10'),
(4, 4, 25, '2024-04-04 18:08:10'),
(5, 5, 20, '2024-04-04 18:08:10'),
(6, 6, 40, '2024-04-04 18:08:10'),
(7, 7, 60, '2024-04-04 18:08:10'),
(8, 8, 35, '2024-04-04 18:08:10'),
(9, 9, 80, '2024-04-04 18:08:10'),
(10, 10, 30, '2024-04-04 18:08:10'),
(11, 11, 25, '2024-04-04 18:08:10'),
(12, 12, 20, '2024-04-04 18:08:10'),
(13, 13, 50, '2024-04-04 18:08:10'),
(14, 14, 45, '2024-04-04 18:08:10'),
(15, 15, 70, '2024-04-04 18:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `reorder_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_category`, `unit_price`, `reorder_level`, `reorder_quantity`) VALUES
(1, 'Dish Soap', 'Lemon-scented dish soap for hand washing dishes', 'Cleaning Supplies', 3.99, 20, 50),
(2, 'Bleach', 'Multi-purpose bleach for laundry and cleaning', 'Cleaning Supplies', 5.99, 15, 30),
(3, 'Mop', 'Microfiber mop for floor cleaning', 'Cleaning Equipment', 12.99, 10, 25),
(4, 'Broom', 'Angled broom for sweeping floors', 'Cleaning Equipment', 8.99, 8, 20),
(5, 'Bucket', 'Plastic bucket with handle for mopping', 'Cleaning Equipment', 6.99, 12, 30),
(6, 'Window Cleaner', 'Spray for cleaning windows and glass surfaces', 'Cleaning Supplies', 4.49, 18, 40),
(7, 'Toilet Cleaner', 'Thick toilet bowl cleaner with bleach', 'Cleaning Supplies', 3.29, 25, 60),
(8, 'Floor Cleaner', 'Concentrated floor cleaner for mopping', 'Cleaning Supplies', 6.79, 15, 35),
(9, 'Sponges', 'Pack of 6 multi-purpose sponges', 'Cleaning Supplies', 2.99, 30, 80),
(10, 'Scrub Brush', 'Stiff-bristled brush for tough cleaning', 'Cleaning Equipment', 5.49, 12, 30),
(11, 'Dustpan', 'Plastic dustpan for sweeping and cleaning', 'Cleaning Equipment', 3.99, 10, 25),
(12, 'Squeegee', 'Window squeegee for streak-free cleaning', 'Cleaning Equipment', 7.99, 8, 20),
(13, 'Glass Cleaner', 'Spray for cleaning mirrors and glass surfaces', 'Cleaning Supplies', 4.99, 20, 50),
(14, 'Bathroom Cleaner', 'Spray for cleaning bathroom surfaces', 'Cleaning Supplies', 5.49, 18, 45),
(15, 'Gloves', 'Rubber gloves for cleaning and protection', 'Cleaning Supplies', 2.99, 25, 70);

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE `sentitems` (
  `item_sent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` longblob DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `quantity_sent` int(11) NOT NULL,
  `sent_date` datetime DEFAULT current_timestamp(),
  `delivery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`item_sent_id`, `product_id`, `product_image`, `user_id`, `quantity_sent`, `sent_date`, `delivery_date`) VALUES
(1, 1, NULL, 2, 10, '2024-04-04 18:09:41', '2023-05-01 10:00:00'),
(2, 2, NULL, 3, 5, '2024-04-04 18:09:41', '2023-05-02 14:30:00'),
(3, 4, NULL, 2, 8, '2024-04-04 18:09:41', '2023-05-03 09:15:00'),
(4, 6, NULL, 5, 12, '2024-04-04 18:09:41', '2023-05-04 11:45:00'),
(5, 7, NULL, 3, 18, '2024-04-04 18:09:41', '2023-05-05 16:20:00'),
(6, 9, NULL, 2, 25, '2024-04-04 18:09:41', '2023-05-06 08:30:00'),
(7, 10, NULL, 5, 7, '2024-04-04 18:09:41', '2023-05-07 13:10:00'),
(8, 11, NULL, 3, 5, '2024-04-04 18:09:41', '2023-05-08 10:45:00'),
(9, 13, NULL, 2, 15, '2024-04-04 18:09:41', '2023-05-09 14:00:00'),
(10, 14, NULL, 5, 10, '2024-04-04 18:09:41', '2023-05-10 09:30:00'),
(11, 1, NULL, 3, 8, '2024-04-04 18:09:41', '2023-05-11 12:15:00'),
(12, 3, NULL, 2, 5, '2024-04-04 18:09:41', '2023-05-12 16:45:00'),
(13, 5, NULL, 5, 6, '2024-04-04 18:09:41', '2023-05-13 11:00:00'),
(14, 8, NULL, 3, 12, '2024-04-04 18:09:41', '2023-05-14 14:30:00'),
(15, 12, NULL, 2, 4, '2024-04-04 18:09:41', '2023-05-15 10:15:00'),
(16, 15, NULL, 5, 20, '2024-04-04 18:09:41', '2023-05-16 13:45:00'),
(17, 2, NULL, 2, 8, '2024-04-04 18:09:41', '2023-05-17 09:00:00'),
(18, 4, NULL, 3, 6, '2024-04-04 18:09:41', '2023-05-18 15:30:00'),
(19, 6, NULL, 5, 10, '2024-04-04 18:09:41', '2023-05-19 11:15:00'),
(20, 9, NULL, 2, 30, '2024-04-04 18:09:41', '2023-05-20 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'picker1', 'picker123', 'picker'),
(3, 'picker2', 'picker456', 'picker'),
(4, 'delivery1', 'delivery789', 'delivery'),
(5, 'picker3', 'picker321', 'picker'),
(6, 'delivery2', 'delivery987', 'delivery'),
(7, 'picker4', 'picker159', 'picker'),
(8, 'delivery3', 'delivery753', 'delivery'),
(9, 'picker5', 'picker963', 'picker'),
(10, 'delivery4', 'delivery456', 'delivery');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`item_sent_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sentitems`
--
ALTER TABLE `sentitems`
  MODIFY `item_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD CONSTRAINT `sentitems_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `sentitems_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
