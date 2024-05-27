-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 11:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cudo`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(6) UNSIGNED NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street_address`, `city`, `state`, `postal_code`, `country`, `created_at`) VALUES
(1, '', '', '', '', '', '2024-05-27 07:08:03'),
(2, '', '', '', '', '', '2024-05-27 07:08:06'),
(3, 'dfgh', 'fj', 'fhj', 'fhj', 'fhj', '2024-05-27 09:28:52'),
(4, 'DGYYUJTY', 'TUITY', 'TYI', 'YIS', 'R56', '2024-05-27 09:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `product_name`, `price`, `payment_method`, `created_at`) VALUES
(1, 'croptop', '99.00', 'PayMaya', '2024-05-27 09:28:27'),
(2, '', '0.00', 'PayMaya', '2024-05-27 09:28:39'),
(3, '', '0.00', 'PayMaya', '2024-05-27 09:28:39'),
(4, '', '0.00', 'PayMaya', '2024-05-27 09:28:40'),
(5, '', '0.00', 'PayMaya', '2024-05-27 09:28:40'),
(6, '', '0.00', 'PayMaya', '2024-05-27 09:28:41'),
(7, '', '0.00', 'PayMaya', '2024-05-27 09:28:42'),
(8, '', '0.00', 'PayMaya', '2024-05-27 09:28:43'),
(9, 'YERY', '99.00', 'GCash', '2024-05-27 09:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'toplot croptop', 'sexy', '99', '199', 50, 'https://imgs.search.brave.com/ZSJ5bHzFiTE0aQ7eBK-5eEgzDQvqhBL5Pl4AaOCR4wA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzFnNTNmRzZkdEwu/anBn', '2024-05-08 00:00:00'),
(2, 'papillon croptop', 'tube sya', '99', '199', 30, 'https://imgs.search.brave.com/lJkIE4eSnIku6ha7MjP_9-X5FykArRA0XLnLZiHgch4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9ncnVu/Z2UtY2xvdGhpbmcu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIwLzA0L2Nyb3At/dG9wLWFlc3RoZXRp/Yy1wYXBpbGxvbi1m/b25kLWJsYW5jLmpw/Zw', '2024-05-08 00:00:00'),
(3, 'ceilo croptop', 'jacket sya', '99', '99', 40, 'https://imgs.search.brave.com/FaexxIuesstWjIhHehLcR0WasE_dP8xyVKDSSGHq7tk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tb2Rh/YWVzdGhldGljLm5l/dC93cC1jb250ZW50/L3VwbG9hZHMvQ1JP/UC1UT1AtQUVTVEhF/VElDLUNJRUxPLmpw/Zw', '2024-05-08 00:00:00'),
(4, 'round neck croptop', 'brown sya', '99', '199', 60, 'https://imgs.search.brave.com/krSlpu0v8tSx2WSxKT69siE9rDgSj1NANJ0zTY5i1rg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFlTnZ3Q0RHc0wu/anBn', '2024-05-08 00:00:00'),
(6, 'cami croptop', 'sleeveless sya', '99', '199', 50, 'https://imgs.search.brave.com/qDbZ_bUriMxhHbD8o6VjUMobKFDRygmdk02IegmOm6E/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFnKytHc2p1a0wu/anBn', '2024-05-27 17:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$kGp4g1TjBK4XwLIwRbBHSeZ4W5FpPbYoB1ap5NfFUjUPAcE3KR5QG', '2024-04-29 16:39:58'),
(2, 'renalou', '$2y$10$qwbKDxw6t5q1JDybNK7cK.EgdGUQRBKMug4DgCAjdO4GagYl56d1q', '2024-05-27 17:19:28'),
(3, 'maloy', '$2y$10$NgwrcnJ49Xy6M.0dMx0auOy/nuAM4mHMzfHeDIMcQxXoT0dY.qEmi', '2024-05-27 17:20:04'),
(4, 'malloy', '$2y$10$sM7Nx9dYW9eiPmugG5OAN.o6nduUPNPg2WTCuYFnef8TL0NJrkEg6', '2024-05-27 17:21:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
