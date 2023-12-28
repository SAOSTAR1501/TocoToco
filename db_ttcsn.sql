-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 03:08 PM
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
-- Database: `asm_php1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trà sữa', '2021-07-07 11:50:15', '2021-11-07 08:07:44'),
(38, 'Cà phê', '2021-07-13 10:57:52', '2021-07-13 10:57:52'),
(49, 'Sữa chua béo', '2023-12-16 04:34:22', '2023-12-16 04:34:22'),
(50, 'Fresh Fruit Tea', '2023-12-16 04:06:23', '2023-12-16 04:06:23'),
(51, 'Instant Milk Tea', '2023-12-16 04:41:23', '2023-12-16 04:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone_number`, `email`, `address`, `note`, `order_date`) VALUES
(145, 'Mai Công Sao', '0337639719', 'saostar1501@gmail.com', 'An Tân, Thái Thụy, Thái Bình', 'Ít đá', '2023-12-27 05:53:30'),
(146, 'Nguyễn Văn Linh', '0337639719', '2021377@eaut.edu.vn', 'An Tân, Thái Thụy, Thái Bình', 'Nhiều dâu', '2023-12-27 14:48:25'),
(147, 'Nguyễn Duy Minh', '0337639719', 'a.alzaeem0@gmail.com', '7400 Beaufont Springs Dr', 'Ít đá, nhiều trân châu', '2023-12-27 14:50:39'),
(148, 'Nguyễn Văn Linh', '0337639719', '2021377@eaut.edu.vn', 'An Tân, Thái Thụy, Thái Bình', 'Giao gấp cho mình nhé', '2023-12-27 14:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `num`, `price`, `status`) VALUES
(154, 145, 43, 59, 11, 56000, 'Đang giao'),
(155, 146, 63, 59, 2, 25000, 'Đã hủy'),
(156, 147, 8, 59, 3, 50000, 'Đang chuẩn bị'),
(157, 148, 45, 61, 1, 120000, 'Đã nhận hàng'),
(158, 148, 46, 61, 1, 25000, 'Đã nhận hàng');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `number`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`) VALUES
(2, 'Trà Sen Vàng', 35000, 50, 'uploads/TRASENVANG.png', '<font color=\"#000000\">Thức uống chinh phục những thực khách khó tính! Sự kết hợp độc đáo giữa trà Ô long, hạt sen thơm bùi và củ năng giòn tan. Thêm vào chút sữa sẽ để vị thêm ngọt ngào.</font><br>', 1, '2021-07-07 17:41:08', '2021-08-15 16:53:50'),
(8, 'Trà sữa trân trâu đen', 50000, 10, 'uploads/Trà-sữa-Trân-châu-đen-1.png', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 20px;=\"\" font-weight:=\"\" 700;=\"\" text-align:=\"\" center;\"=\"\">Trà sữa trân trâu đường đen</span><br></p>', 1, '2021-07-11 16:07:58', '2021-08-15 16:44:51'),
(9, 'Trà sữa Matcha', 25000, 46, 'uploads/TRATHANHDAO.png', '<p>Trà sữa Matcha<br></p>', 1, '2021-07-11 16:38:58', '2021-08-15 16:02:52'),
(10, 'Cafe Phin Đen Nóng', 50000, 44, 'uploads/AMERICANO.png', '<p><font color=\"#53382c\">Dành cho những tín đồ cà phê đích thực! Hương vị cà phê truyền thống được phối trộn độc đáo tại Highlands. Cà phê đậm đà pha từ Phin, cho thêm 1 thìa đường, mang đến vị cà phê đậm đà chất Phin.</font><br></p>', 38, '2021-07-11 16:12:59', '2021-08-15 16:18:52'),
(12, 'Bạc Xỉu Đá', 30000, 15, 'uploads/Trà-sữa-Trân-châu-đen-1.png', '<p>Nếu Phin Sữa Đá dành cho các bạn đam mê vị đậm đà, thì Bạc Xỉu Đá là một sự lựa chọn nhẹ “đô\" cà phê nhưng vẫn thơm ngon, chất lừ không kém!<br></p>', 38, '2021-07-13 10:20:53', '2021-08-15 16:45:54'),
(18, 'Trà Thạch Đào', 50000, 10, 'uploads/TRATHANHDAO.png', '<p><span style=\"color: rgb(0, 0, 0); font-size: 1rem;\">Vị trà đậm đà kết hợp cùng những miếng đào thơm ngon mọng nước cùng thạch đào giòn dai. Thêm vào ít sữa để gia tăng vị béo</span><br></p><p><br></p>', 1, '2021-07-11 16:07:58', '2021-08-15 16:48:55'),
(19, 'Trà Thạch Vải', 50000, 46, 'uploads/TRATHACHVAI_1.png', '<p>Một sự kết hợp thú vị giữa trà đen, những quả vải thơm ngon và thạch giòn khó cưỡng, mang đến thức uống tuyệt hảo!<br></p>', 1, '2021-07-11 16:38:58', '2021-08-15 16:03:56'),
(20, 'Trà Đào', 50000, 44, 'uploads/TRATHANHDAO (1).png', '<p><span style=\"color: rgb(83, 56, 44); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Một sự kết hợp thú vị giữa trà đen, những quả vải thơm ngon và thạch giòn khó cưỡng, mang đến thức uống tuyệt hảo!</span><br></p>', 1, '2021-07-11 16:12:59', '2021-08-15 16:20:56'),
(21, 'Cà Phê Đá', 30000, 15, 'uploads/CFD.png', '<p>Dành cho những tín đồ cà phê đích thực! Hương vị cà phê truyền thống được phối trộn độc đáo tại Highlands. Cà phê đậm đà pha hoàn toàn từ Phin, cho thêm 1 thìa đường, một ít đá viên mát lạnh, tạo nên Phin Đen Đá mang vị cà phê đậm đà chất Phin.<br></p>', 38, '2021-07-13 10:20:53', '2021-08-15 16:42:56'),
(30, 'Cafe Phindi Hồng Trà', 35000, 100, 'uploads/270_crop_PHINDI_Hong_Tra.png', '<p>PhinDi Kem Sữa - Cà phê Phin thế hệ mới với chất Phin êm hơn, lần đầu tiên kết hợp cùng Hồng Trà mang đến hương vị quyện êm, phiên bản giới hạn chỉ trong mùa lễ hội 2020!<br></p>', 38, '2021-08-15 08:01:37', '2021-08-15 17:03:01'),
(31, 'Cafe Phindi Kem Sữa', 35000, 90, 'uploads/270_crop_phindi_kem_sua_new.png', '<p>PhinDi Kem Sữa - Cà phê Phin thế hệ mới với chất Phin êm hơn, kết hợp cùng Kem Sữa béo ngậy mang đến hương vị mới lạ, không thể hấp dẫn hơn!<br></p>', 38, '2021-08-15 08:51:37', '2021-08-15 17:28:01'),
(43, 'Combo trà sữa 14k', 56000, 50, 'uploads/Hong-Tra-2-copy.jpg', '', 1, '2023-12-15 18:19:46', '2023-12-15 18:19:46'),
(44, 'Instant Milk Tea - Strawberry - Set 6 Ly', 165000, 18, 'uploads/6ly_hong.png', '', 51, '2023-12-16 04:38:24', '2023-12-16 04:38:24'),
(45, ' Instant Milk Tea - Original - Set 6 Ly', 120000, 10, 'uploads/6ly_vang.png', '', 51, '2023-12-16 04:40:25', '2023-12-16 04:40:25'),
(46, ' Instant Milk Tea - Strawberry', 25000, 30, 'uploads/Stawberry-Milk-Tea.jpg', '', 51, '2023-12-16 04:18:26', '2023-12-16 04:18:26'),
(47, ' Instant Milk Tea - Original', 20000, 15, 'uploads/Original-Milk-Tea.jpg', '', 51, '2023-12-16 04:51:26', '2023-12-16 04:51:26'),
(48, ' Sữa Chua Mận Hạt Sen', 30000, 8, 'uploads/sua-chua-man-hat-sen-.png', '', 49, '2023-12-16 04:36:27', '2023-12-16 04:36:27'),
(49, ' Sữa Chua Dâu Tằm Hoàng Kim', 30000, 13, 'uploads/sua-chua-dau-tam-hoang-kim.png', '', 49, '2023-12-16 04:25:28', '2023-12-16 04:25:28'),
(50, ' Hồng Trà Ngũ Cốc Kem Cà Phê', 25000, 40, 'uploads/hồng-trà-ngũ-cốc-kem-cafe.png', '', 50, '2023-12-16 04:26:33', '2023-12-16 04:26:33'),
(51, ' Dâu Tằm Kem Phô Mai', 25000, 23, 'uploads/Dau-Tam-Kem-Pho-Mai-2-copy.jpg', '', 50, '2023-12-16 04:30:34', '2023-12-16 04:30:34'),
(52, ' Hồng Trà Kem Phô Mai', 25000, 50, 'uploads/Hong-Tra-Kem-Pho-Mai-2-copy.jpg', '', 50, '2023-12-16 04:05:35', '2023-12-16 04:05:35'),
(53, ' Trà Xanh Kem Phô Mai', 30000, 22, 'uploads/Tra-Xanh-Kem-Pho-Mai.jpg', '', 50, '2023-12-16 04:53:35', '2023-12-16 04:53:35'),
(54, ' Matcha Kem Phô Mai', 35000, 12, 'uploads/matcha-kem-pho-mai.png', '', 50, '2023-12-16 04:56:36', '2023-12-16 04:56:36'),
(55, ' Trà Đào Dâu Tây Kem Phô Mai', 25000, 34, 'uploads/Dau-Tam-Kem-Pho-Mai-2-copy.jpg', '', 1, '2023-12-16 11:27:58', '2023-12-16 11:27:58'),
(56, 'Trà Mận Hạt Sen', 25000, 12, 'uploads/tra-man-hat-sen.png', '', 1, '2023-12-16 11:45:59', '2023-12-16 11:45:59'),
(57, 'Ô Long Xoài Kem Cà Phê', 25000, 20, 'uploads/Oolong-tran-chau-baby-kem-cafe.jpg', '', 1, '2023-12-16 12:00:01', '2023-12-16 12:00:01'),
(58, ' Trà Đào Bưởi Hồng Trân Châu Baby', 30000, 10, 'uploads/Tra-dao-buoi-hong-tran-chau-baby.jpg', '', 1, '2023-12-16 12:45:01', '2023-12-16 12:45:01'),
(59, ' Trà Xoài Bưởi Hồng', 25000, 30, 'uploads/trà-xoài-bưởi-hồng.png', '', 1, '2023-12-16 12:50:02', '2023-12-16 12:50:02'),
(60, ' Probi Bưởi Trân Châu Sương Mai', 25000, 23, 'uploads/Probi-buoi-tran-chau-suong-mai.jpg', '', 1, '2023-12-16 12:39:07', '2023-12-16 12:39:07'),
(61, ' Probi Xoài Trân Châu Sương Mai', 25000, 10, 'uploads/probi_xoai_tran_chau_suong_mai.jpg', '', 1, '2023-12-16 12:42:08', '2023-12-16 12:42:08'),
(62, ' Trà Xoài Xanh', 25000, 10, 'uploads/tra_xanh_xoai.jpg', '', 1, '2023-12-16 12:48:09', '2023-12-16 12:48:09'),
(63, ' Trà Dâu Tằm Pha Lê Tuyết', 25000, 30, 'uploads/Tra-Dau-Tam-Pha-Le-Tuyet.jpg', '', 1, '2023-12-16 12:36:12', '2023-12-16 12:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `hoten`, `username`, `password`, `phone`, `email`) VALUES
(7, 'Nguyễn Đăng Thành', 'AdminThanh', 'thanh1010', '+84387578520', 'bossryo68@gmail.com'),
(8, 'thanh dang', 'thanhthanh', 'thanhthanh', '0387578520', 'bossryo6811@gmail.com'),
(55, 'thanh dang', 'thanh0990909', 'thanh10', '0387578520', 'bossryoa68@gmail.com'),
(57, 'thanh dang', 'thanh', 'thanh', '0387578520', 'bossryo681@gmail.com'),
(58, 'thanh dang', 'LoginLogin', 'thanh', '0387578520', 'bossryo6Login8@gmail.com'),
(59, 'Mai Công Sao', 'sao', '12345678', '0337639719', 'saostar1501@gmail.com'),
(60, 'Sao Mai', 'admin', '12345678', '0337639719', 'saostar0035@gmail.com'),
(61, 'Nguyễn Văn Linh', 'linh', '12345678', '0337639719', '2021377@eaut.edu.vn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
