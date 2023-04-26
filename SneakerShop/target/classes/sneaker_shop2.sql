-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 03:25 AM
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
-- Database: `sneaker_shop2`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(14, 1, 22, 2, 40000),
(15, 2, 22, 1, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(16, 'sankawaii0410@gmail.com', '01234492949', 'Minh Nháº­t', 'aaaa', 0, 0, 'aaa'),
(17, 'sankawaii0410@gmail.com', '', 'Minh NhÃ¡ÂºÂ­t', '66/6 SÃÂ¡u sÃÂ¡u', 0, 0, 'a'),
(18, 'sankawaii0410@gmail.com', '', 'Minh NhÃ¡ÂºÂ­t', '66/6 SÃÂ¡u sÃÂ¡u', 0, 0, 'a'),
(19, 'sankawaii0410@gmail.com', '', 'Minh NhÃ¡ÂºÂ­t', '66/6 SÃÂ¡u sÃÂ¡u', 0, 0, 'a'),
(20, 'sankawaii0410@gmail.com', '', 'Minh NhÃ¡ÂºÂ­t', '66/6 SÃÂ¡u sÃÂ¡u', 0, 0, 'a'),
(21, 'sankawaii0410@gmail.com', '', 'Minh NhÃ¡ÂºÂ­t', '66/6 SÃÂ¡u sÃÂ¡u', 0, 0, 'a'),
(22, '123@gmail.com', '', 'Minh B', '66/6 SÃÂ¡u sÃÂ¡u', 0, 0, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'Converse', NULL),
(2, 'Adidas', NULL),
(3, 'Nike', NULL),
(4, 'Bitis Hunter', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'Trắng', '#FFFF00', 'a.jpg'),
(2, 1, 'Xanh', '#FFFF00', 'b.jpg'),
(3, 2, 'Xanh', '#FFFF00', 'c.jpg'),
(4, 2, 'Đen', '#FFFF00', 'd.jpg'),
(5, 5, 'Trắng Đen', '#FFFF00', 'e.jpg'),
(6, 6, 'Trắng', '#FFFF00', 'g.jpg'),
(7, 7, 'Đen đỏ', '#FFFF00', 'h.jpg'),
(8, 8, 'Đen', '#FFFF00', 'i.jpg'),
(9, 9, 'Trắng', '#FFFF00', 'j.jpg'),
(10, 10, 'Xanh', '#FFFF00', 'b.jpg'),
(11, 11, 'Xanh', '#FFFF00', 'b.jpg'),
(12, 12, 'Xanh', '#FFFF00', 'b.jpg'),
(13, 13, 'Xanh', '#FFFF00', 'b.jpg'),
(14, 14, 'Xanh', '#FFFF00', 'b.jpg'),
(15, 15, 'Xanh', '#FFFF00', 'b.jpg'),
(16, 16, 'Xanh', '#FFFF00', 'b.jpg'),
(17, 17, 'Xanh', '#FFFF00', 'b.jpg'),
(18, 18, 'Xanh', '#FFFF00', 'b.jpg'),
(19, 19, 'Xanh', '#FFFF00', 'b.jpg'),
(20, 20, 'Xanh', '#FFFF00', 'b.jpg'),
(21, 21, 'Xanh', '#FFFF00', 'b.jpg'),
(22, 22, 'Xanh', '#FFFF00', 'b.jpg'),
(23, 23, 'Xanh', '#FFFF00', 'b.jpg'),
(24, 24, 'Xanh', '#FFFF00', 'b.jpg'),
(25, 25, 'Xanh', '#FFFF00', 'b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`) VALUES
(1, 'Trang chủ', NULL),
(2, 'Sản phẩm', ''),
(3, 'So sánh', NULL),
(4, 'bài viết', NULL),
(5, 'liên hệ', NULL),
(6, 'Giỏ hàng', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'L,M,S', 'Converse', 20000, 0, 'Giày đẹp, bền', 1, 0, '<div class=\"tab-pane fade active in\" id=\"home\">\r\n			  <h4>Product Information</h4>\r\n                <table class=\"table table-striped\">\r\n				<tbody>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Color:</td><td class=\"techSpecTD2\">Black</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Style:</td><td class=\"techSpecTD2\">Apparel,Sports</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Season:</td><td class=\"techSpecTD2\">spring/summer</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Usage:</td><td class=\"techSpecTD2\">fitness</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Sport:</td><td class=\"techSpecTD2\">122855031</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Brand:</td><td class=\"techSpecTD2\">Shock Absorber</td></tr>\r\n				</tbody>\r\n				</table>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n\r\n			</div>', '2020-04-09 11:38:43', '2020-04-09 11:47:31'),
(2, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(3, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(4, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(5, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(6, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(7, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(8, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(9, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(10, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(11, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(12, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(13, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(14, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(15, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(16, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(17, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(18, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(19, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(20, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(21, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(22, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(23, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(24, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(25, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(26, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(27, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(28, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(1, 'carousel1.png', '', ''),
(2, 'bootstrap-templates.png', '', ''),
(3, 'carousel3.png', '', ''),
(4, 'bootstrap_free-ecommerce.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(12, 'sankawaii0410@gmail.com', '$2a$12$zA0It7lsTu9eV/qfeRT0VOXydQnoAYgHLNM7uH7Pix1PeLD6DfhYK', 'Minh Nháº­t', '66/6 SÃ¡u sÃ¡u'),
(13, '123@gmail.com', '$2a$12$alKplh8y2dGzym3fQcsr/eMWHPbbtTWdGZIo8TWrnmvcY1ZlJeC0q', 'Minh B', '66/6 SÃ¡u sÃ¡u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
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
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
