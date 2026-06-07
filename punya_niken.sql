-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2026 at 07:27 AM
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
-- Database: `punya_niken`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(2, 'K001', 'Obat'),
(3, 'K002', 'Skincare'),
(4, 'K003', 'Kendaraan'),
(5, 'K004', 'Elektronik'),
(6, 'K005', 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(1, 2, 'P001', 'Panadol', 57, 10, 10000, 'a7b3b29a99dc65568a3f31b96a43e7d9.jpg', '2026-05-26 04:57:02', NULL),
(2, 2, 'P002', 'Bodrek', 40, 8, 5000, '97f135d88e913da193ef3a5a1ebaadb7.jpg', '2026-05-26 04:59:21', NULL),
(3, 2, 'P003', 'Promag', 33, 7, 8000, '5436f6506e20bdc93b5cabc850707973.jpg', '2026-05-26 04:59:55', NULL),
(4, 2, 'P004', 'Tolak Angin', 30, 5, 4000, '5809c88c9944dda2dfd906f801332860.jpg', '2026-05-26 05:00:32', NULL),
(10, 3, 'P006', 'Wardah', 8, 30, 34999, 'e2b91a6fc81d6a70f412c8ac0bb0896a.jpg', '2026-05-26 05:27:28', NULL),
(11, 3, 'P007', 'Emina', 8, 25, 28000, 'e2c6b0711c269e607500f2649d47d427.jpg', '2026-05-26 05:28:28', NULL),
(12, 3, 'P008', 'Garnier', 4, 20, 45000, 'f8197578a57c7f1bbd68bd4db2a7e65b.jpg', '2026-05-26 05:29:23', NULL),
(13, 3, 'P009', 'Nivea', 3, 15, 49999, 'e3ca1c080561322225e6e519eca6f69d.jpg', '2026-05-26 05:29:55', NULL),
(15, 4, 'P011', 'Toyota', 10, 3, 250000000, 'dad15d590814ac9e70b35f4457792ccb.jpg', '2026-05-26 05:49:35', NULL),
(16, 4, 'P012', 'Honda', 10, 2, 220000000, '5d967b4548d66d7627481c568054fd89.jpg', '2026-05-26 05:50:28', NULL),
(17, 4, 'P013', 'Yamaha', 14, 5, 25000000, '150bc2d057a255ec2b7e2f7e26da0b21.jpg', '2026-05-26 05:51:04', NULL),
(18, 4, 'P014', 'Suzuki', 8, 2, 210000000, '8a5449f530359327a1ba2e6ae72221b4.jpg', '2026-05-26 05:51:47', NULL),
(19, 5, 'P015', 'Samsung', 5, 20, 2499999, '302edc7e48ed73b26dfa6032b6682234.jpg', '2026-05-26 05:55:43', NULL),
(20, 5, 'P016', 'LG', 4, 15, 3000000, '12aaa7e33372d1e13ce11384c1805e84.jpg', '2026-05-26 05:56:19', NULL),
(21, 5, 'P017', 'Sharp', 3, 12, 2800000, '06d68b709e611732940411693980a991.jpg', '2026-05-26 05:56:52', NULL),
(22, 5, 'P018', 'Polytron', 3, 10, 2200000, 'b293366252e6e7a01898bfcb0eb78d77.jpg', '2026-05-26 05:57:32', NULL),
(24, 6, 'P019', 'Zara', 25, 5, 350000, '233c88e16b9c312ee75d6d903bf7512c.jpg', '2026-05-26 06:02:35', NULL),
(25, 6, 'P020', 'Uniqlo', 33, 8, 250000, 'ae43fa666ac8fda03df5cab6a9798752.jpg', '2026-05-26 06:03:14', NULL),
(26, 6, 'P021', 'H&M', 20, 5, 300000, '4f4e084f059416a15f6f0a8e5aa054a6.jpg', '2026-05-26 06:03:49', NULL),
(27, 6, 'P022', 'Nevada', 18, 4, 200000, '16e2db2a2334d82a2a436a03158a0c84.jpg', '2026-05-26 06:04:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 1, 'ADD', 7, 50, 57, '', '2026-05-26 06:05:23', 4),
(2, 10, 'REDUCE', 2, 10, 8, '', '2026-05-26 06:05:35', 4),
(3, 4, 'ADD', 5, 25, 30, '', '2026-05-26 06:05:49', 4),
(4, 15, 'REDUCE', 1, 12, 11, '', '2026-05-26 06:06:05', 4),
(5, 25, 'ADD', 3, 30, 33, '', '2026-05-26 06:06:26', 4),
(6, 13, 'REDUCE', 2, 5, 3, '', '2026-05-26 06:06:43', 4),
(7, 12, 'REDUCE', 1, 5, 4, '', '2026-06-03 04:34:40', 5),
(8, 3, 'REDUCE', 2, 35, 33, '', '2026-06-03 04:35:25', 5),
(9, 17, 'REDUCE', 1, 15, 14, '', '2026-06-03 04:35:39', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(5, 'NIKEN AYU', 'niken0219@sma.belajar.id', '$2y$10$lUS/XBZa23os/YtzTv1y1eX3Hz/zUfMRbsquQuqL.XwuOVp2cunum', 'admin', 1, '2026-05-26 12:55:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
